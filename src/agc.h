// agc.h

// Pass in a sample and get back normalized sample (multiplied by agc gain).

#ifndef agc_h    /* Guard against multiple inclusion */
#define agc_h

void AgcInit(void); // Initialize the AGC (especially create the LPF)
double agc(double sample); // Pass in a sample and get a sample out normalized to TargetLevel.    


#endif 

/** *****************************************************************************
 End of File
 */
