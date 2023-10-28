// agc.c

// Pass in a sample and get a normalized sample out

#include <math.h>
#include "biquad.h"
#include "main.h"   
#include "UserConfig.h"
#include <stdio.h>


biquad *AgcLpf;    

void AgcInit(void){
  AgcLpf=BiQuad_new(LPF, 0.0, UserConfig.AgcLpfF, 8000.0, 0.707 );    
}

double agc(double sample){
// Pass in a sample and get a sample out normalized to TargetLevel.
  static double gain=1.0;        // What to multiply the input sample by  
  double level=1.0;
  level=fabs(sample);            // full wave rectified sample
  level=BiQuad(level, AgcLpf);  // Filtered fw rect.
  if(level==0.0) level=UserConfig.AgcTargetLevel;   // Avoid divide by zero
  gain=UserConfig.AgcTargetLevel/level;
  if(gain<0.1) gain=0.1;
  if(gain>UserConfig.AgcMaxGain) gain=UserConfig.AgcMaxGain;  // limit gain
  #if 0   // Debug output
    static int n=8000;                   // Use for debug output
    if(n--==0){   // Debug stuff
      n=8000;
      sprintf(StringBuf,"\r\nLevel=%f\tGain=%f",level,gain);
      PrintString(StringBuf);
    }  
  #endif
  return(sample*gain);
}