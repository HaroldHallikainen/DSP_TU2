// PowerLineNoise.c

// Measures power line noise by doing envelope detection of incoming audio,
// then looking for 120 Hz. Power line noise is a 120 Hz modulated arc
// transmitter.

#include "biquad.h"     // Filters
#include <stdio.h>      // sprintf, etc.
#include "main.h"       // stringbuf
#include "ExtFlash.h"   // StreamProgramExtFlash for test
#include <string.h>

static biquad *PowerLineHPF;      
biquad *PowerLineBPF; // global so it can be modified
static biquad *WideNoiseLPF;   // LPF after envelope detector to determine wide band level
static biquad *NarrowNoiseLPF;

int PlnPrintCount=0;          // How many times to print the power line noise

void PowerLineNoiseInit(void){
  // Set up a 300 Hz HPF to get rid of DC. Also a 120 Hz BPF for demodulated signal.
  // BiQuad_new args are type, gain, frequency, sample rate, Q
  PowerLineHPF=BiQuad_new(HPF,0.0,300.0,8000, 0.7); // HPF with Q=0.7
  PowerLineBPF=BiQuad_new(BPF,0.0,120.0,8000, 10);  // 120 Hz BPF, Q=10
  WideNoiseLPF=BiQuad_new(LPF,0.0,1.0,8000, 0.707); // LPF for detected wide band noise
  NarrowNoiseLPF=BiQuad_new(LPF,0.0,1.0,8000, 0.707); // LPF for detected 120 Hz noise
}

void PowerLineSample(double sample){
  // Pass in a sample and check noise
  static int SampleCount=0;   // count calls
  double SampleLessDC, EnvelopeDetectorOutput, BpfOutput, WideNoise, NarrowNoise; 
  SampleLessDC=BiQuad(sample,PowerLineHPF);    // Get rid of DC
  EnvelopeDetectorOutput=fabs(SampleLessDC);            // demodulated
  WideNoise=BiQuad(EnvelopeDetectorOutput,WideNoiseLPF);
  BpfOutput=BiQuad(EnvelopeDetectorOutput,PowerLineBPF);
  NarrowNoise=BiQuad(fabs(BpfOutput),NarrowNoiseLPF);
  SampleCount++;
#if 1
  if(SampleCount>=8000){       // Output once per second
    SampleCount=0;
    if(PlnPrintCount>0){          // Still need to print more
      PlnPrintCount--;
      sprintf(StringBuf,"%f\r\n", NarrowNoise/WideNoise);
      PrintString(StringBuf);
      if(PlnPrintCount==0) PrintString(">"); // Prompt for next command
    }
  }  
#endif
#if 0 // For test, output several intermediate values. 
  if((count % 2)==0){
    sprintf(StringBuf,"%i,%3.3f,%3.3f,%3.3f,%3.3f,%3.3f,%3.3f\r\n",count,SampleLessDC,EnvelopeDetectorOutput,WideNoise,BpfOutput,NarrowNoise,NarrowNoise/WideNoise);
    PrintString(StringBuf);
  }  
#endif  
}
