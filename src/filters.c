// Setup filters and update based on button presses.


#include "filters.h"
#include "main.h"     
#include "UserConfig.h"// frequencies, shifts, etc.
#include <math.h>





// Globals 
// The Biquad Filters
biquad *MarkFilter[NumBpf]; // Audio BPF for mark (array of pointers for cascaded filters)
biquad *SpaceFilter[NumBpf]; // Audio BPF for space
biquad *MarkDataFilter;     // Mark LPF after absolute value "full wave rectification" 
biquad *SpaceDataFilter;
biquad *InputBpf;
double MarkFreq, SpaceFreq;

void FiltersInit(void){
  int n;
  double ToneFilterBW, MarkQ, SpaceQ, MarkQn, SpaceQn, InputBpfBW, InputBpfFreq;
  MarkFreq = UserConfig.NarrowShiftCenterFreq - (UserConfig.NarrowShiftHz/2); // Mark half shift below center
  SpaceFreq = UserConfig.NarrowShiftCenterFreq + (UserConfig.NarrowShiftHz/2);  // Space half shift above center
  InputBpfFreq=sqrt(MarkFreq*SpaceFreq);     // Input BPF center freq
  InputBpfBW=2*UserConfig.NarrowShiftHz;
  ToneFilterBW=UserConfig.ToneFilterBwBrMult*UserConfig.BaudRate;  // Tone filter wide enough for minimal attenuation of BR/2 sideband
                                            // demod signal reaches full amplitude at middle of bit time.
  MarkQ=MarkFreq/ToneFilterBW;              // Calculate Q for each filter. Could vary for wide shift
  SpaceQ=SpaceFreq/ToneFilterBW;
  MarkQn=MarkQ*sqrt(pow(2,1/(double)NumBpf)-1.0);   // Q of filter section with NumBpf cascaded sections
  SpaceQn=SpaceQ*sqrt(pow(2,1/(double)NumBpf)-1.0);
  for(n=0;n<NumBpf;n++){      // Initialize tone BPFs (array of pointers). 8000.0 is audio sample rate.
    MarkFilter[n] = BiQuad_new(BPF, 0.0, MarkFreq, 8000.0, MarkQn);    
    SpaceFilter[n] = BiQuad_new(BPF, 0.0, SpaceFreq, 8000.0, SpaceQn);
  }  
  MarkDataFilter=BiQuad_new(LPF, 0.0, UserConfig.BaudRate, 8000.0, 0.707 ); // After rectification data LPF. Cutoff same as baud rate
  SpaceDataFilter=BiQuad_new(LPF, 0.0, UserConfig.BaudRate, 8000.0, 0.707 );
  InputBpf=BiQuad_new(BPF,0.0,InputBpfFreq, 8000.0, InputBpfFreq/InputBpfBW);  // Calculate Q from freq/bw
}

void PollShiftMarkHi(void){
  // See if we need to reload filters due to a change in shift or MarkHi. Uses UserConfig for center frequency and shift
  // to determine mark and space frequencies. Multiplies half shift by ShiftFlipNot before subtracting or adding so
  // mark high flips frequencies. 
  static int OldMarkHi=0, OldShift=0;
  if((OldShift!=SHIFT_850_LED_Get()) || (OldMarkHi!=MARK_HI_LED_Get())){  // Shift LED changed
    OldShift=SHIFT_850_LED_Get();     // Remember new value
    OldMarkHi=MARK_HI_LED_Get(); 
    UpdateDemodFilters();
  }
}

void UpdateDemodFilters(){
// Update all filters and Mark/Space frequencies used by DDS
  double ToneFilterBW, MarkQ, SpaceQ, MarkQn, SpaceQn, InputBpfBW, InputBpfFreq, ShiftFlipNot;
  int n;
  if(1==MARK_HI_LED_Get()){
    ShiftFlipNot=-1.0;        // Mark high, so flip shift
  }else{
    ShiftFlipNot=1.0;         // Mark high LED not on, so multiply shift by 1.0
  }
  if(SHIFT_850_LED_Get()){          // LED is on, use wide shift
    MarkFreq = UserConfig.WideShiftCenterFreq - (ShiftFlipNot*(UserConfig.WideShiftHz/2)); // Mark half shift below center or above
    SpaceFreq = UserConfig.WideShiftCenterFreq + (ShiftFlipNot*(UserConfig.WideShiftHz/2));  // Space half shift above center
    InputBpfBW=2*UserConfig.WideShiftHz;
  }else{                              // Changed to narrow shift
    MarkFreq = UserConfig.NarrowShiftCenterFreq - (ShiftFlipNot*(UserConfig.NarrowShiftHz/2)); // Mark half shift below center
    SpaceFreq = UserConfig.NarrowShiftCenterFreq + (ShiftFlipNot*(UserConfig.NarrowShiftHz/2));  // Space half shift above center
    InputBpfBW=2*UserConfig.NarrowShiftHz;
  } // end else narrow shift
  ToneFilterBW=1.5*UserConfig.BaudRate;     // arrived at experimentally so fundamental is not attenauted so
  MarkQ=MarkFreq/ToneFilterBW;              // Calculate Q for each filter. Could vary for wide shift
  SpaceQ=SpaceFreq/ToneFilterBW;
  MarkQn=MarkQ*sqrt(pow(2,1/(double)NumBpf)-1.0);   // Q of filter section with NumBpf cascaded sections
  SpaceQn=SpaceQ*sqrt(pow(2,1/(double)NumBpf)-1.0);
  for(n=0;n<NumBpf;n++){      // Initialize tone BPFs (array of pointers). 8000.0 is audio sample rate.
    BiQuad_modify(MarkFilter[n], BPF, 0.0, MarkFreq, 8000.0, MarkQn);    
    BiQuad_modify(SpaceFilter[n], BPF, 0.0, SpaceFreq, 8000.0, SpaceQn);
  }// end for  
  BiQuad_modify(MarkDataFilter, LPF, 0.0, UserConfig.BaudRate, 8000.0, 0.707 ); // After rectification data LPF. Cutoff same as baud rate
  BiQuad_modify(SpaceDataFilter, LPF, 0.0, UserConfig.BaudRate, 8000.0, 0.707 );
  InputBpfFreq=sqrt(MarkFreq*SpaceFreq);     // Input BPF center freq
  BiQuad_modify(InputBpf, BPF,0.0,InputBpfFreq, 8000.0, InputBpfFreq/InputBpfBW);  // Calculate Q from freq/bw
}