// WifiPoll.c

// Stuff to do in the main loop
#include <xc.h>  
#include "driver/include/m2m_wifi.h"  // For connection, scanning, and events
#include "socket/include/socket.h"    // For TCP/UDP netconn network sockets
#include <stdint.h>    // Defines standard types like uint8_t, uint16_t, uint32_t
#include <stdbool.h>   // Defines standard bool, true, and false
#include <stdio.h>
#include "main.h" // StringBuf

bool isScanComplete(void);
bool isScanResultReady(void);
bool isIpAddressAssigned(void);
bool isConnectionInfoReady(void);
extern uint8_t NumAps;
extern char SSID[33];
extern uint32_t IpAddress;
extern uint32_t DNS;
extern uint32_t Gateway;
extern uint32_t SubnetMask;
extern int8_t RSSI;



void WifiPoll(void)
{
   // Read the raw physical digital logic level on pin RF1 (WIFI_IRQn)
    // 0 = The WINC1500 has pulled the line low and is requesting attention

    if (PORTFbits.RF1 == 0) 
    {
        extern void m2m_wifi_asm_isr(void);
        m2m_wifi_asm_isr(); // Manually fire the driver processing logic
    }
  
      // Now execute the native 19.4.4 execution pump line safely
    m2m_wifi_handle_events(NULL); 
}
