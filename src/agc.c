// agc.c

// Pass in a sample and get a normalized sample out

#include <math.h>
#include "biquad.h"

double gain=1.0;        // What to multiply the input sample by
double MaxGain=50.0 ;    // Make no larger than this
double TargetLevel=0.5; // Aim for this

double AgcLpfF=1.0;     // Average level over 1 second
biquad *AgcLpf;    

void AgcInit(void){
  AgcLpf=BiQuad_new(LPF, 0.0, AgcLpfF, 8000.0, 0.707 );    
}

double agc(double sample){
// Pass in a sample and get a sample out normalized to TargetLevel.    
double level;
level=fabs(sample);            // full wave rectified sample
level=BiQuad(level, AgcLpf);  // Filtered fw rect.
if(level==0.0) level=TargetLevel;   // Avoid divide by zero
gain=TargetLevel/level; 
if(gain>MaxGain) gain=MaxGain;  // limit gain
return(sample*gain);
}