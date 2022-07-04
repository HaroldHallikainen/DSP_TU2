// Pass in audio sample as float between -1 and +1 to set PWM duty cycle to 0 to 100%


#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

void AudioPwmSet(double sample){
    // Pass in audio sample as -1.0 to +1.0 to set duty cycle to 0% to 100%
    OCMP1_CompareSecondaryValueSet((int)(((1.0+sample)/2)*(double)PR2));
}