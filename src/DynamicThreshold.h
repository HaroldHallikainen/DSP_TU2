// DynamicThreshold.h/* ************************************************************************** */

#ifndef DynamicThreshold_h    /* Guard against multiple inclusion */
#define DynamicThreshold_h

void DynamicThresholdInit(void);    // Initialize LPF for dynamic threshold

double DynamicThresholdGet(double MarkLevel, double SpaceLevel); // Returns a level half way between the average max of mark and space levels.


#endif