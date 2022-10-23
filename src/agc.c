// agc.c

// Pass in a sample and get a normalized sample out

#include <math.h>
#include "biquad.h"
#include "main.h"   // typedef smp_type

smp_type gain=1.0;        // What to multiply the input sample by
smp_type MaxGain=200.0;// 50.0 ;    // Make no larger than this
smp_type TargetLevel=0.5; // Aim for this

smp_type AgcLpfF=1.0;     // Average level over 1 second
biquad *AgcLpf;    

void AgcInit(void){
  AgcLpf=BiQuad_new(LPF, 0.0, AgcLpfF, 8000.0, 0.707 );    
}

smp_type agc(smp_type sample){
// Pass in a sample and get a sample out normalized to TargetLevel.    
smp_type level;
level=(smp_type)fabs((double)sample);            // full wave rectified sample
level=BiQuad(level, AgcLpf);  // Filtered fw rect.
if(level==0.0) level=TargetLevel;   // Avoid divide by zero
gain=TargetLevel/level; 
if(gain>MaxGain) gain=MaxGain;  // limit gain
return(sample*gain);
}