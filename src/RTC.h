/* 
 * File:   RTC.h
 * Author: Harold_Win7
 *
 * Created on May 19, 2026, 4:10 PM
 */

#ifndef RTC_H
#define	RTC_H
// #include <time.h>
#include "winc1500_api.h"

void CaptureTime(void); // Capture current time from WiFi module
void append_time_to_tx_fifo(void); // Append time to ASCII transmit FIFO

extern bool g_time_valid; // True if a new time is available after CaptureTime().)
extern tstrSystemTime g_last_validated_ntp_time; // Copy of time structure from WiFi module


#if 0
extern time_t unix_timestamp;   // The unix timestamp

void RtcAdvance(void); // Call this on each audio sample, 8,000 times per second. Advances the RtcTimStamp each second.
int WifiTimeEventToRtc(t_wifiEventData *p_eventData);  // Set the RTC timestamp from Wifi NTP event. Returns 0 on success
#endif

#endif	/* RTC_H */

