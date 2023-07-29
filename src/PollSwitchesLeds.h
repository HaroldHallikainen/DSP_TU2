

#ifndef PollSwitchesLeds_h    /* Guard against multiple inclusion */
#define PollSwitchesLeds_h

#include "definitions.h"                // SYS function prototypes



typedef struct{
  uint8_t S1:1;  // Last read S1 state. Active low (switch closed is low))
  uint8_t S2:1;
  uint8_t S3:1;
  uint8_t S4:1;
  uint8_t S5:1;
  uint8_t S6:1;
  uint8_t S7:1;
  uint8_t S8:1;
} SwitchStruct_t;

extern SwitchStruct_t Switches; // Current state of switches and 

void PollSwitchesLeds(void);    // Poll switches, set flags, and LEDs

#endif