/*==============================================================================
Copyright 2016 Microchip Technology Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "winc1500_api.h"
#include "main.h"         // access to dprintf
// #include "demo_config.h"

// #if defined(USING_AP_SCAN)
#if 1

// event flags for demo applications
static bool g_driverInitComplete;
static bool g_scanComplete;
static bool g_scanResultReady;
static bool g_connectionStateChanged;
static bool g_ipAddressAssigned;
static bool g_rssiReady;
static bool g_provisionInfoReady;
static bool g_wpsReady;
static bool g_prngReady;
static bool g_connectionInfoReady;
uint8_t NumAps;
char SSID[33];
int WiFiConnected=0;
int8_t RSSI;
uint32_t IpAddress;
uint32_t DNS;
uint32_t Gateway;
uint32_t SubnetMask;

void m2m_wifi_handle_events(t_m2mWifiEventType eventCode, t_wifiEventData *p_eventData)
{
    switch (eventCode)
    {
        case M2M_WIFI_DRIVER_INIT_EVENT:
            g_driverInitComplete = true;
            break;
            
        case M2M_WIFI_CONN_STATE_CHANGED_EVENT:
            // event data in p_eventData->connState
            WiFiConnected=(int)p_eventData->connState.u8CurrState;
            g_connectionStateChanged = true;
            break;
            
        case M2M_WIFI_SYS_TIME_EVENT:
            // event data in p_eventData->sysTime
            dprintf("   EVENT: M2M_WIFI_SYS_TIME_EVENT\r\n");
            dprintf("WiFi System Time: ");
            dprintf("%u-%02hi-%02huT%02hu:%02hu:%02hu\r\n>",p_eventData->sysTime.u16Year, 
              p_eventData->sysTime.u8Month, p_eventData->sysTime.u8Day,
              p_eventData->sysTime.u8Hour, p_eventData->sysTime.u8Minute,
              p_eventData->sysTime.u8Second);
            break;
            
        case M2M_WIFI_CONN_INFO_RESPONSE_EVENT:
            // event data in p_eventData->connInfo
            // dprintf("   EVENT: M2M_WIFI_CONN_INFO_RESPONSE_EVENT\r\n");
            IpAddress=(uint32_t)p_eventData->connInfo.au8IPAddr[3];
            IpAddress=IpAddress<<8;
            IpAddress+=(uint32_t)p_eventData->connInfo.au8IPAddr[2];
            IpAddress=IpAddress<<8;
            IpAddress+=(uint32_t)p_eventData->connInfo.au8IPAddr[1];
            IpAddress=IpAddress<<8;
            IpAddress+=(uint32_t)p_eventData->connInfo.au8IPAddr[0];
            strcpy(SSID,p_eventData->connInfo.acSSID);
            RSSI=p_eventData->connInfo.s8RSSI;
            g_connectionInfoReady=true;
             break;
            
        case M2M_WIFI_IP_ADDRESS_ASSIGNED_EVENT:
            // Occurs in STA mode when an IP address is assigned to the host MCU
            // Occurs in SoftAP mode when a client joins the AP network
            
            // event data in p_eventData->ipConfig
            // dprintf("   EVENT: M2M_WIFI_IP_ADDRESS_ASSIGNED_EVENT. IP Address = %x\r\n", p_eventData->ipConfig.u32StaticIp);
            IpAddress=p_eventData->ipConfig.u32StaticIp;
            DNS=p_eventData->ipConfig.u32DNS;
            Gateway=p_eventData->ipConfig.u32Gateway;
            SubnetMask=p_eventData->ipConfig.u32SubnetMask;
            g_ipAddressAssigned = true;
            break;
            
        case M2M_WIFI_WPS_EVENT:
            // event data in p_eventData->wpsInfo
            dprintf("   EVENT: M2M_WIFI_WPS_EVENT\r\n");
            g_wpsReady = true;
            break;
            
        case M2M_WIFI_IP_CONFLICT_EVENT:
            // event data in p_eventData->conflictedIpAddress
            dprintf("   EVENT: M2M_WIFI_IP_CONFLICT_EVENT\r\n");
            break;
            
        case M2M_WIFI_SCAN_DONE_EVENT:
            // event data in p_eventData->scanDone
            NumAps=p_eventData->scanDone.u8NumofCh;
            // dprintf("   EVENT: M2M_WIFI_SCAN_DONE_EVENT\r\n");
            g_scanComplete = true;
            break;
            
        case M2M_WIFI_SCAN_RESULT_EVENT:
            // event data in p_eventData->scanResult
            strcpy(SSID,p_eventData->scanResult.au8SSID);
            RSSI=p_eventData->scanResult.s8Rssi;
            // dprintf("   EVENT: M2M_WIFI_SCAN_RESULT_EVENT\r\n");
            g_scanResultReady = true;
            break;
            
        case M2M_WIFI_RSSI_EVENT:
            // event data in p_eventData->rssi
            g_rssiReady = true;
            break;
            
        case M2M_WIFI_PROVISION_INFO_EVENT:
            // event data in p_eventData->provisionInfo
            dprintf("   EVENT: M2M_WIFI_PROVISION_INFO_EVENT\r\n");
            g_provisionInfoReady = true;
            break;
            
        case M2M_WIFI_DEFAULT_CONNNECT_EVENT:
            // event data in p_eventData->defaultConnInfo
            dprintf("   EVENT: M2M_WIFI_DEFAULT_CONNNECT_EVENT\r\n");
            break;
            
        case M2M_WIFI_PRNG_EVENT:
            dprintf("   EVENT: M2M_WIFI_PRNG_EVENT\r\n");
            // event data in p_eventData->prng
            g_prngReady = true;
            break;
            
        default:
            dprintf("!!!! Unknown Wi-Fi event (%d)\r\r\n", eventCode);
            break;
    }
}

void m2m_error_handle_events(uint32_t errorCode)  // See t_m2mWifiErrorCodes
{
    dprintf("   \nERROR EVENT: %lu\r\n", (long unsigned int)errorCode);
}

void ClearWiFiEventStates(void)
{
    g_driverInitComplete        = false;
    g_scanComplete              = false;
    g_scanResultReady           = false;
    g_connectionStateChanged    = false; 
    g_ipAddressAssigned         = false;
    g_rssiReady                 = false;
    g_provisionInfoReady        = false;
    g_wpsReady                  = false;
    g_prngReady                 = false;
}

bool isDriverInitComplete(void)
{
    bool res = g_driverInitComplete;
    g_driverInitComplete = false;
    return res;
}

bool isScanComplete(void)
{
    bool res = g_scanComplete;
    g_scanComplete = false;
    return res;
}

bool isScanResultReady(void)
{
    bool res = g_scanResultReady;
    g_scanResultReady = false;
    return res;
}

bool isConnectionStateChanged(void)
{
    bool res = g_connectionStateChanged;
    g_connectionStateChanged = false;
    return res;
}

bool isIpAddressAssigned(void)
{
    bool res = g_ipAddressAssigned;
    g_ipAddressAssigned = false;
    return res;
}

bool isRssiReady(void)
{
    bool res = g_rssiReady;
    g_rssiReady = false;
    return res;
}

bool isProvisionInfoReady(void)
{
    bool res = g_provisionInfoReady;
    g_provisionInfoReady = false;
    return res;
}



bool isConnectionInfoReady(void)
{
    bool res = g_connectionInfoReady;
    g_connectionInfoReady = false;
    return res;
}


bool isWpsReady(void)
{
    bool res = g_wpsReady;
    g_wpsReady = false;
    return res;
}

bool isPrngReady(void)
{
    bool res = g_prngReady;
    g_prngReady = false;
    return res;
}

#endif // USING_AP_SCAN
