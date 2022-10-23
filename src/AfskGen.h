#ifndef AfskGen_h
#define AfskGen_h

void AfskGenInit(void); // Initialize a low pass filter between loop current sample and DDS.
void AfskGen(void);     // Check loop current sample and adjust DDS frequency as appropriate
#endif

