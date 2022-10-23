// AfskGen.c

// Samples loop and switches DDS to proper frequency

#include <stdint.h>     // int_t types defined here
#include "main.h"
#include "dds.h"
#include "biquad.h"                     // biquad filters. Includes typedef for smp_type
#include "AfskGen.h"  
#include "definitions.h"                // SYS function prototypes like peripheral library



void AfskGenInit(void){
  // Initialize a low pass filter between loop current sample and DDS.
   DdsFreqSet(MarkFreq);
}

void AfskGen(void){
  // Check loop current sample and adjust DDS frequency as appropriate. Pass thru 100 Hz LPF to reduce key clicks
  if(1==LOOP_SAMPLE_IN_Get()){  // No loop current, send space frequency
    DdsFreqSet(SpaceFreq);
  }else{
    DdsFreqSet(MarkFreq);
  }    
}

