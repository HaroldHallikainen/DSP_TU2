// WifiPoll.c

// Stuff to do in the main loop

#include "winc1500_api.h"
// #include "wifi_event_stub.h"  // Declarations in wifi_event_stub.c
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



void WifiPoll(void){
  static int state=0;
  static uint8_t scan_request_index=0;
  m2m_wifi_task();        // Handle wifi
  switch(state){
    default:
    case 0:
      if(isScanComplete()) state=1; // Scan completed, go request results
      if(isIpAddressAssigned()) state=10;  // Show new IP address
      if(isConnectionInfoReady()) state=20; // Show IP address
      break;
    case 1:
      // printf("\r\nIndex | RSSI | SSID\r\n");
      m2m_wifi_req_scan_result(scan_request_index); // Request it
      state=2;      // Go wait for results
      break;
    case 2:
      if(isScanResultReady()){
        printf("   %d | %d | %s\r\n", scan_request_index, RSSI,  SSID);
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
    case 10:          // IP Address assigned
      // inet_ntop4(IpAddress,StringBuf);
      // printf("\r\nIP Address %s\r\n",StringBuf);
      // inet_ntop4(DNS,StringBuf);
      // printf("\r\nDNS %s\r\n",StringBuf);
      // inet_ntop4(Gateway,StringBuf);
      // printf("\r\nGateway %s\r\n",StringBuf);
      // inet_ntop4(SubnetMask,StringBuf);
      // printf("\r\nSubnet Mask %s\r\n",StringBuf);  
      // Above stuff does not work. Do connection info request.
      m2m_wifi_get_connection_info();
      state=0;
      break;
    case 20:          // Connection info ready
      printf("\r\nConnected to %s . RSSI=%d\r\n",SSID,RSSI);
      inet_ntop4(IpAddress,StringBuf);
      printf("\r\nIP Address %s\r\n",StringBuf);
      state=0;
      break;
  }
}

