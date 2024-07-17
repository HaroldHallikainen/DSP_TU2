// WiFiInit.c

// Based on DS70005304E section 7.4

#include "definitions.h"                // SYS function prototypes
#include "main.h"
#include "winc1500_api.h"
#include "UserConfig.h"


void WiFiInit(void){
  TRISEbits.TRISE3=0;         // Make sure wifi resetn is an output
  MillisecondCounter=0;
  WIFI_EN_Clear();
  WIFI_RESETn_Clear();
  while(MillisecondCounter<6);
  WIFI_EN_Set();              // Enable wifi module
  MillisecondCounter=0;       // Wait at least 5 ms
  while(MillisecondCounter<6);  // Loop here for 6 ms
  WIFI_RESETn_Set();          // Resetn high
  EVIC_ExternalInterruptCallbackRegister(EXTERNAL_INT_3,(const EXTERNAL_INT_PIN_CALLBACK)m2m_EintHandler,0); // Register INT3 handler for wifi
  MillisecondCounter=0;       // Wait at least 5 ms
  while(MillisecondCounter<6);  // Loop here for 6 ms
  m2m_wifi_init();            // Initialize the wifi driver
  MillisecondCounter=0;       // Wait at least 5 ms
  while(MillisecondCounter<6);  // Loop here for 6 ms
  m2m_wifi_set_device_name(UserConfig.WfName, strlen(UserConfig.WfName)); // Set net bios name
}
