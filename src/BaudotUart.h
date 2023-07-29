#ifndef BaudotUart_h
#define BaudotUart_h

#include <stdint.h>         // int_t types defined here
#include "definitions.h"    // SYS function prototypes like peripheral library
#include <stdbool.h>        // Defines true

extern uint32_t CharCount;   // How many good start bits we got
extern uint32_t BadStopBitCount; // How many bad stop bits we got

char BaudotUartRx(bool MS);// Call with MS being the state of the loop (mark=1). 
    // Receives Baudot and translate to ASCII. Returns ASCII character when available. Otherwise
  // returns null. Call at 8 kHz sample rate (every 125 us). 


#endif