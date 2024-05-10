// MarkHold.c

// Pass in discriminator. Compare level at a frequency below baud rate to that
// above. With lack of signal, the higher frequency signal (noise) will be 
// higher compared to lower frequency signal.

#include "filters.h"
#include "main.h"     
#include "UserConfig.h"// frequencies, shifts, etc.
#include <math.h>
#include <stdio.h>


// Globals 
// The Biquad Filters
biquad *MarkHoldDiscrimLpf;   // Discriminator output to LPF
biquad *MarkHoldDiscrimHpf;   // and HPF
biquad *MarkHoldLfLpf;        // Measure level of each
biquad *MarkHoldHfLpf;


void MarkHoldInit(void){
  MarkHoldDiscrimLpf=BiQuad_new(LPF, 0.0, 2.0*UserConfig.BaudRate, 8000.0, 0.707);
  MarkHoldDiscrimHpf=BiQuad_new(HPF, 0.0, 2.0*UserConfig.BaudRate, 8000.0, 0.707);
  MarkHoldLfLpf=BiQuad_new(LPF, 0.0, 0.5, 8000.0, 0.707);
  MarkHoldHfLpf=BiQuad_new(LPF, 0.0, 0.5, 8000.0, 0.707);
}

double MarkHold(double discrim){
  // Pass in discriminator. Compare HF noise to LF noise. If HF noise above 
  // threshold, return 1.0 (mark). Otherwise, return discrim.
  double temp;
  double HfLevel;
  double LfLevel;
  static int count=0;
  double result;
  temp=BiQuad(discrim,MarkHoldDiscrimLpf);  // Get low frequency signal
  LfLevel=BiQuad(fabs(temp),MarkHoldLfLpf); // full wave rectify and filter
  temp=BiQuad(discrim,MarkHoldDiscrimHpf);  // Get high frequency signal
  HfLevel=BiQuad(fabs(temp),MarkHoldHfLpf); // full wave rectify and filter
  if(count>=8000){
    if(HfLevel!=0.0){
      sprintf(StringBuf,"%f\r\n",LfLevel/HfLevel);
      PrintString(StringBuf);
    }
    count=0;
  }else count++;
  if(LfLevel==0.0)LfLevel=1.0;    // avoid divide by zero
  if((LfLevel/HfLevel)>10){ //UserConfig.MarkHoldThresh){
    result=discrim;
  }else{
    result=1.0;        // Mark hold
  }  
  return(result);
}
