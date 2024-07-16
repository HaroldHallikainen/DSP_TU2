// WifiPoll.c

// Stuff to do in the main loop

#include "winc1500_api.h"
// #include "wifi_event_stub.h"  // Declarations in wifi_event_stub.c
bool isScanComplete(void);
bool isScanResultReady(void);
extern uint8_t NumAps;
extern char SSID[33];


void WifiPoll(void){
  static int state=0;
  static uint8_t scan_request_index=0;
  m2m_wifi_task();        // Handle wifi
  switch(state){
    case 0:
      if(isScanComplete()) state=1; // Scan completed, go request results
      break;
    case 1:
      m2m_wifi_req_scan_result(scan_request_index); // Request it
      state=2;      // Go wait for results
      break;
    case 2:
      if(isScanResultReady()){
        printf("  %d - %s\r\n", scan_request_index, SSID);
//        PrintString(SSID);
//        PrintString("\r\n");
        scan_request_index++;
        if(scan_request_index>=NumAps){
          scan_request_index=0;     // Get ready for next time
          state=0;
          printf(">");  // Prompt for next command
        }else{
          state=1;
        }  
      }
      break;
  }
}

