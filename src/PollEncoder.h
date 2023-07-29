// PollEncoder.h

#ifndef PollEncoder_h    /* Guard against multiple inclusion */
#define PollEncoder_h

#include "definitions.h"                // SYS function prototypes
#include <stdio.h>                      // sprintf, etc.Used for debug
#include <string.h>                     // strlen for debug

#include "main.h"
void PollEncoder(void);     // Based on encoder rotation, increments or decrements EncoderCount.

extern int32_t EncoderCount;

#endif
