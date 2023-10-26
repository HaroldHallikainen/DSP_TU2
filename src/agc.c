// agc.c

// Pass in a sample and get a normalized sample out

#include <math.h>
#include "biquad.h"
#include "main.h"   
#include "UserConfig.h"


biquad *AgcLpf;    

void AgcInit(void){
  AgcLpf=BiQuad_new(LPF, 0.0, UserConfig.AgcLpfF, 8000.0, 0.707 );    
}

double agc(double sample){
// Pass in a sample and get a sample out normalized to TargetLevel.
static double gain=1.0;        // What to multiply the input sample by  
double level;
if(UserConfig.UseAgc==2){       // Use mark and space filters for level detection
  level=MarkDemodOut;
  if(SpaceDemodOut>level) level=SpaceDemodOut;  // Use higher of the two
}else{
  level=fabs(sample);            // full wave rectified sample
}  
level=BiQuad(level, AgcLpf);  // Filtered fw rect.
if(level==0.0) level=UserConfig.AgcTargetLevel;   // Avoid divide by zero
gain=UserConfig.AgcTargetLevel/level; 
if(gain>UserConfig.AgcMaxGain) gain=UserConfig.AgcMaxGain;  // limit gain
return(sample*gain);
}