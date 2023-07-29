// DynamicThreshold.h/* ************************************************************************** */

#ifndef DynamicThreshold_h    /* Guard against multiple inclusion */
#define DynamicThreshold_h

#include "main.h" // has typedef for smp_type

void DynamicThresholdInit(void);    // Initialize LPF for dynamic threshold

smp_type DynamicThresholdGet(smp_type MarkLevel, smp_type SpaceLevel); // Returns a level half way between the average max of mark and space levels.


#endif