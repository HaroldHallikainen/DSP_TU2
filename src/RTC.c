// RTC.C

#include <stdio.h>
#include <time.h>
#include "winc1500_api.h"
#include "fifo8.h"
#include "BaudotUart.h"   // pAsciiTxFifo

time_t unix_timestamp; // How many seconds since January 1, 1970

bool g_time_valid=false; // True if a new time is available after CaptureTime().)
tstrSystemTime g_last_validated_ntp_time; // Copy of time structure from WiFi module

#if 0
#define NtpPollMinutes 60 // How many minutes between polls

void RtcAdvance(void){
  // Call this on each audio sample, 8,000 times per second. Advances the RtcTimStamp each second.
  static int CallCount=8000;
  static int SecondsTilNtp=60*NtpPollMinutes; // Count down until next NTP poll
  CallCount--;
  if(0==CallCount){   // It has been one second
    CallCount=8000;   // Reset the timer
    unix_timestamp++;   // and increment the timestamp
    SecondsTilNtp--;
    if(0==SecondsTilNtp){
      SecondsTilNtp=60*NtpPollMinutes; // Reinitialize the counter
      // m2m_wifi_enable_sntp(0);        // Disable NTP
      // m2m_wifi_enable_sntp(1);        // and enable again to force NTP poll
      m2m_wifi_get_sytem_time();        // Get time from WiFi module. NTP updates it each day.
      //dprintf("Unix Timestamp: %ld\n", (long)unix_timestamp);
    }
  }
}

int WifiTimeEventToRtc(t_wifiEventData *p_eventData){
  // Set the RTC timestamp from Wifi NTP event. From https://share.google/aimode/33yqdwsUv0bsxCvHq
  struct tm tm_struct = {0}; // Initialize all members to 0
  // Load tm_struct with data from event_data
  tm_struct.tm_year = p_eventData->sysTime.u16Year -1900;  // tm_year is years since 1900
  tm_struct.tm_mon = (int)p_eventData->sysTime.u8Month -1; // tm_mon uses 0 for Jan
  tm_struct.tm_mday = (int) p_eventData->sysTime.u8Day;
  tm_struct.tm_hour = (int) p_eventData->sysTime.u8Hour;
  tm_struct.tm_min = (int) p_eventData->sysTime.u8Minute;
  tm_struct.tm_sec = (int) p_eventData->sysTime.u8Second;
  tm_struct.tm_isdst = -1; // ignore dst
  // 2. Convert struct tm to time_t (Unix timestamp)
  // Note: mktime assumes the input is in your local time zone
  time_t old_hardware_rtc = unix_timestamp; // Capture timestamp before update
  unix_timestamp = mktime(&tm_struct);
  if (unix_timestamp == -1) {
    dprintf("Error: Conversion failed.\n");
    return 1;
  }
  // Now calculate the clean delta (NTP New Time - Old local hardware time)
  dprintf("RTC Delta: %ld seconds\n", (long)(unix_timestamp - old_hardware_rtc));
  dprintf("Unix Timestamp: %ld\n", (long)unix_timestamp);
  return 0;
}

#endif


void CaptureTime(void) {
    g_time_valid = false; // Reset flag; current data is now stale
    
    // Request the fresh time asynchronously from the WINC1500
    m2m_wifi_get_sytem_time(); 
    
    // Proceed immediately with opening the radio link and sending the header/text...
}


/**
 * Rapidly breaks down a 2-digit integer and pushes the 
 * raw ASCII characters directly into the transmission FIFO.
 */
void fifo_push_u8_ascii(uint8_t value) {
    Fifo8Put(pAsciiTxFifo, (value / 10) + '0'); // Tens digit
    Fifo8Put(pAsciiTxFifo, (value % 10) + '0'); // Ones digit
}

/**
 * Call this inside your low-priority 3-second KOS timeout block.
 * It stages the text directly behind whatever the user typed.
 */
void append_time_to_tx_fifo(void) {
  // Only append if the WINC1500 callback successfully returned fresh data
  if (g_time_valid) {
    Fifo8PutString(pAsciiTxFifo,"\r\n\n");   
    // Format: HH:MM:SS
    fifo_push_u8_ascii(g_last_validated_ntp_time.u8Hour);
    Fifo8Put(pAsciiTxFifo,':');
    fifo_push_u8_ascii(g_last_validated_ntp_time.u8Minute);
    Fifo8Put(pAsciiTxFifo,':');
    fifo_push_u8_ascii(g_last_validated_ntp_time.u8Second);
    Fifo8PutString(pAsciiTxFifo,"Z\r\n\n\n"); // Trailing Z for zulu, then crcrlflf 
    // Clear flag so this specific time snapshot isn't sent twice
    g_time_valid = false; 
  }
}
