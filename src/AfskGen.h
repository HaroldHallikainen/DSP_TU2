#ifndef AfskGen_h
#define AfskGen_h

#include <stdbool.h>                    // Defines true

void AfskGenInit(void); // Initialize a low pass filter between loop current sample and DDS.
void AfskGen(bool MarkSpacen);     // Pass in 1 for mark, 0 for space, and adjust AFSK transmit frequency
#endif

