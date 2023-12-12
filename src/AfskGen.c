// AfskGen.c

// Samples loop and switches DDS to proper frequency

#include <stdint.h>     // int_t types defined here
#include "main.h"
#include "dds.h"
#include "biquad.h"                     // biquad filters. 
#include "AfskGen.h"  
#include "definitions.h"                // SYS function prototypes like peripheral library
#include "filters.h"                    // Mark and space frequencies specified here
#include "UserConfig.h"
#include <math.h> 

double DdsTxGain=1.0;   // Multiply DDS output by this on way to PWM

double MarkGain=1.0;  // Calculated V/V gain for mark tone at wide shift
double SpaceGain=1.0;


void AfskGenInit(void){
  // Initialize a low pass filter between loop current sample and DDS.
   DdsFreqSet(MarkFreq);
}

void AdjustTxHfEq(void){
  // Based on shift, set HF cut or LF cut.
  if(SHIFT_850_LED_Get()){  // Set MarkGain and SpaceGain for wide shift
    if(MARK_HI_LED_Get()){  // Mark tone higher than space
      if(UserConfig.WideTxHfEq>0.0){     // Cut low frequency (space) instead of boosting high
        MarkGain=1.0;
        SpaceGain=pow(10,-UserConfig.WideTxHfEq/20.0);  // Negative dB to V/V gain
      }else{                // Cut the high frequency (mark) 
        SpaceGain=1.0;
        MarkGain=pow(10,UserConfig.WideTxHfEq/20.0);    // Convert dB to V/V gain
      }
    }else{                       // Space tone higher than mark
      if(UserConfig.WideTxHfEq>0.0){     // Cut low frequency (mark) instead of boosting high
        SpaceGain=1.0;
        MarkGain=pow(10,-UserConfig.WideTxHfEq/20.0);  // Negative dB to V/V gain
      }else{                // Cut the high frequency (space) 
        MarkGain=1.0;
        SpaceGain=pow(10,UserConfig.WideTxHfEq/20.0);    // Convert dB to V/V gain
      }  
    } // end space tone higher than mark  
  }else{                  // Narrow shift, not wide
    if(MARK_HI_LED_Get()){  // Mark tone higher than space
      if(UserConfig.NarrowTxHfEq>0.0){     // Cut low frequency (space) instead of boosting high
        MarkGain=1.0;
        SpaceGain=pow(10,-UserConfig.NarrowTxHfEq/20.0);  // Negative dB to V/V gain
      }else{                // Cut the high frequency (mark) 
        SpaceGain=1.0;
        MarkGain=pow(10,UserConfig.NarrowTxHfEq/20.0);    // Convert dB to V/V gain
      }
    }else{                       // Space tone higher than mark
      if(UserConfig.NarrowTxHfEq>0.0){     // Cut low frequency (mark) instead of boosting high
        SpaceGain=1.0;
        MarkGain=pow(10,-UserConfig.NarrowTxHfEq/20.0);  // Negative dB to V/V gain
      }else{                // Cut the high frequency (space) 
        MarkGain=1.0;
        SpaceGain=pow(10,UserConfig.NarrowTxHfEq/20.0);    // Convert dB to V/V gain
      }  
    } // end space tone higher than mark      
  }
}

void AfskGen(bool MarkSpacen){
  // Check loop current sample and adjust DDS frequency as appropriate. Pass thru 100 Hz LPF to reduce key clicks
  if(MarkSpacen){  // Loop is in mark condition
    DdsFreqSet(MarkFreq);
    DdsTxGain=MarkGain; 
  }else{
    DdsFreqSet(SpaceFreq);
    DdsTxGain=SpaceGain;
  }    
}

