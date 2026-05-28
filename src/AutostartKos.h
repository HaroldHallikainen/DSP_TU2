// AutostartKos

// Handle autostart and keyboard operated send. Call 8,000 times a second with discriminator value

#ifndef AutostartKos_h
#define AutostartKos_h
#include "definitions.h"                // SYS function prototypes


void AutostartKos(double discrim);    // Call 8,000 times a second with discriminator value
#define TimeStampInterval   15           // Print time stamp this number of seconds before autostart times out
extern uint32_t AutostartCounter;    // Used to time shutdown and startup  
  
#endif  
