// WiFiInit.c

// Based on DS70005304E section 7.4

#include "definitions.h"                // SYS function prototypes
#include "main.h"
#include "driver/include/m2m_wifi.h"   // Handles connection, scans, and status
#include "socket/include/socket.h"     // Handles TCP/UDP sockets and NTP
#include "UserConfig.h"
#include <string.h>

void m2m_wifi_asm_isr(void);

// This is the clean 19.4.4 function signature the new driver expects
void my_new_wifi_callback(uint8_t u8MsgType, void *pvMsg)
{
    // Declare the renamed application-side event handler
    extern void app_wifi_handle_events(uint8_t eventCode, void *p_eventData);
    
    // Forward the data to it
    app_wifi_handle_events(u8MsgType, pvMsg);
}

// This handles all DHCP, IP assignment, and socket configuration events
void my_new_ip_callback(uint8_t u8MsgType, void *pvMsg)
{
    // Simply route the IP layer notifications into your existing event stub engine!
    // This allows M2M_WIFI_RESP_IP_CONFIGURED and IP conflicts to trigger cleanly.
    // DIRECT FORCED CONSOLE DIAGNOSTIC
    dprintf("\r\n>>> RAW IP CALLBACK CAPTURED: MsgType = %u <<<\r\n", u8MsgType);

    extern void app_wifi_handle_events(uint8_t eventCode, void *p_eventData);
    app_wifi_handle_events(u8MsgType, pvMsg);
}


void WiFiInit(void){
    // 1. Ensure control pins are configured as outputs
  TRISEbits.TRISE3 = 0; // RE3 = Output (WIFI_RESETn)
  TRISEbits.TRISE4 = 0; // RE4 = Output (WIFI_EN)
  TRISEbits.TRISE7 = 0; // RE7 = Output (WIFI_CSn)

  // 2. FORCE COLD REBOOT: Kill power and hold reset low
  WIFI_EN_Clear();
  WIFI_RESETn_Clear();
  
  // 3. ANTI-PARASITIC ISOLATION: Explicitly drop Chip Select and SPI outputs low.
  // This stops the PIC32MZ from accidentally powering the module through communication pins.
  WIFI_CSn_Clear();     // Force CSn low (RE7)
  
  // 4. EXTEND THE DISCHARGE WINDOW: Wait 50ms instead of 6ms.
  // This gives the module's internal decoupling capacitors plenty of time to drain to 0V.
  MillisecondCounter = 0;
  while(MillisecondCounter < 50){
    Nop();
  }

  // 5. STEPPED POWER RAMP: Bring the main power rail up first
  WIFI_EN_Set();        // Turn on primary chip regulators
  
  // 6. CRYSTAL STABILIZATION WINDOW: Wait 20ms for the clock crystal to spin up cleanly
  MillisecondCounter = 0;
  while(MillisecondCounter < 20){
    Nop();
  }

  // 7. DRIVER RE-ASSERTION: Restore safe idle state to SPI pins before releasing reset
  WIFI_CSn_Set();       // Return Chip Select to high (Idle / Deselected)
  
  // 8. RELEASE RESET: Kick the WINC1500 internal microprocessor awake
  WIFI_RESETn_Set();    
  
  // 9. FINAL INTERFACE SETTLING WAIT: Give the internal bootloader 15ms to open its SPI gates
  MillisecondCounter = 0;
  while(MillisecondCounter < 15){
    Nop();
  }
// 2. FORCE RE-INITIALIZATION PARAMS
    tstrWifiInitParam param;
    memset(&param, 0, sizeof(tstrWifiInitParam));
    param.pfAppWifiCb = my_new_wifi_callback; 

    // 3. Clear your application's global tracking state variables manually
    extern int WiFiConnected;
    WiFiConnected = 0; 
 
  // 2. Clear the structure memory safely
  memset(&param, 0, sizeof(tstrWifiInitParam));
  // 3. Link your application's existing Wi-Fi callback routine 
  // (Replace "wifi_cb" with the actual name of the callback function defined in your code)
  param.pfAppWifiCb = my_new_wifi_callback;
  // 4. Pass the address of the structure to the new init function
  // 1. Initialize the baseline Wi-Fi engine
  int8_t ret = m2m_wifi_init(&param);
  if (ret != M2M_SUCCESS) {
    dprintf("M2M WiFi Init Failed: %d\r\n", ret);
    return;
  }
  // MANDATORY FOR NTP EVENTS: Enable the module's background SNTP engine
  m2m_wifi_enable_sntp(1); 
  // 2. MANDATORY FOR 19.4.4: Initialize the Socket Layer Interface
  // Pass your custom socket event loop, or NULL if your old code didn't use one
  socketInit(); 
   // 2. CORRECT 19.4.4 API: Register your adapter callback to catch IP/DHCP events.
    // The first argument is your socket data callback (can be NULL if you don't use it).
    // The second argument is your network resolution/IP layer callback handler.
  registerSocketCallback(NULL, (void *)my_new_ip_callback);
  dprintf("WINC1500 Engine Fully Initialized!\r\n");
  MillisecondCounter=0;       // Wait at least 5 ms
  while(MillisecondCounter<6);  // Loop here for 6 ms
  // Add an explicit (uint8_t *) or (sint8 *) cast to the first argument
  m2m_wifi_set_device_name((uint8_t *)UserConfig.WfName, strlen(UserConfig.WfName)); // Set net bios name
}
