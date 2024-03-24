

#ifndef PowerLineNoise_H    /* Guard against multiple inclusion */
#define PowerLineNoise_H
#include "biquad.h"

void PowerLineNoiseInit(void);  // Mostly initialize filters
void PowerLineSample(double sample);    // Pass in a sample for noise calculations

extern int PlnPrintCount;          // How many times to print the power line noise
biquad *PowerLineBPF; // global so it can be modified




#endif /* PowerLineNoise_H */

/* *****************************************************************************
 End of File
 */
