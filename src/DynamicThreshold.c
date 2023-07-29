// DynamicThreshold.c

// Determines mark/space threshold based on current mark/space levels.

#include "biquad.h"
#include "main.h"// typedef for smp_type

#define DynamicThresholdF 50.0     // LPF cutoff frequency

biquad *DynamicThresholdLpf;    

void DynamicThresholdInit(void){
  DynamicThresholdLpf=BiQuad_new(LPF, 0.0, DynamicThresholdF, 8000.0, 0.707 );    
}

smp_type DynamicThresholdGet(smp_type MarkLevel, smp_type SpaceLevel){
// Returns a level half way between the average max of mark and space levels.
  static smp_type LastThreshold=0.0;    // Threshold after LPF. Use to determine if currently mark or space
  static smp_type Max=0.0;          // Maximum mark or space received so far
  static smp_type MarkMax=0.0;      // Last peak level received for mark
  static smp_type SpaceMax=0.0;
  static enum{Mark, Space} PreviousState=Mark; // Remember last so we detect transitions
  if((MarkLevel-SpaceLevel)>0.0){   // Currently in mark condition
    if(PreviousState==Space){               // Space ended. Save max and reset
      SpaceMax=Max;
      Max=0;
      PreviousState=Mark;                     // Remember that we changed to mark
    }    
    if(MarkLevel>Max) Max=MarkLevel;        // If higher than max so far, save.
  }else{                              // Currently in space condition
    if(PreviousState==Mark){          // Mark ended. Save max and reset
      MarkMax=Max;
      Max=0;
      PreviousState=Space;            // Remember that we changed to space
    }    
    if(SpaceLevel>Max) Max=SpaceLevel;  // If higher than max so far, save
  }                                     // End currently in space
    // Pass center of mark-space max to LPF
  LastThreshold=BiQuad((MarkMax-SpaceMax)/2.0, DynamicThresholdLpf);
  return(LastThreshold);
}

