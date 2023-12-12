#ifndef AfskGen_h
#define AfskGen_h

#include <stdbool.h>                    // Defines true

void AfskGenInit(void); // Initialize a low pass filter between loop current sample and DDS.
void AfskGen(bool MarkSpacen);     // Pass in 1 for mark, 0 for space, and adjust AFSK transmit frequency
void AdjustTxHfEq(void);        // Adjusts DdsTxGain based on equalization

extern double DdsTxGain;   // Multiply DDS output by this on way to PWM

#endif

