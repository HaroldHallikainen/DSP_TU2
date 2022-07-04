/*******************************************************************************
  Main Source File
  Company:
    Microchip Technology Inc.
  File Name:
    main.c
  Summary:
    This file contains the "main" function for a project.
  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>                      // sprintf, etc.
#include <string.h>                     // strlen, etc.
#include "definitions.h"                // SYS function prototypes
#include "PwmAudioOut.h"                // Convert floating sample to PWM duty cycle
#include "dds.h"                        // Generate next sample via dds
#include "biquad.h"                     // biquad filters


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// Globals 
volatile uint16_t Timer2TimeoutCounter=0;
uint16_t DebugCounter=0;    // Run debug at lower frequency than audio samples
// double time=0;              // Used in debug to show current time in seconds
double AdcSamplef, LimiterIn, LimiterOut, MarkSample, SpaceSample, MarkDemodOut, SpaceDemodOut, DiscrimOut;  // These were originally in main but seemed to get corrupted
// System Configuration Variables
double MarkFreq=2125.0;
double SpaceFreq=2295.0;
#define NumBpf 2            // How many cascaded BPFs for mark or space - 3 for TU-170
double BpfQ=18.0;           // Q of individual BPF stage - 13 for TU-170
double LpfF=50.0;           // Data LPF cutoff frequency- 68 for TU-170
#define UsePreLimiterBpf       // Define to include a BPF in front of limiter
#ifdef UsePreLimiterBpf
  double PreLimiterBpfF = 2208.365;     // sqrt Fh*fl
  double PreLimiterBpfQ = 10;           // Looked ok on TU-170 spice
#endif
enum {none,adc, limiter, MarkFilterOut, SpaceFilterOut, MarkData, SpaceData, discrim, dds} AudioOut=discrim;


int main ( void ){
    biquad *MarkFilter[NumBpf]; // Audio BPF for mark
    biquad *SpaceFilter[NumBpf]; // Audio BPF for space
    biquad *MarkDataFilter; // Mark LPF after filtered data squaring
    biquad *SpaceDataFilter;
    #ifdef UsePreLimiterBpf
      biquad *PreLimiterBpf;
    #endif
    uint16_t AdcSample;
    // char StringBuf[128]="";  // Place to build debug info
    double DdsFreq=100.0;
    int n;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    TMR2_Start();
    OCMP1_Enable();
    AudioPwmSet(0.0);
    ADCHS_ChannelConversionStart(4);
    for(n=0;n<NumBpf;n++){  // Initialize BPFs (array of pointers)
      MarkFilter[n] = BiQuad_new(BPF, 0.0, MarkFreq, 8000.0, BpfQ);    
      SpaceFilter[n] = BiQuad_new(BPF, 0.0, SpaceFreq, 8000.0, BpfQ);
    }  
    MarkDataFilter=BiQuad_new(LPF, 0.0, LpfF, 8000.0, 0.707 );
    SpaceDataFilter=BiQuad_new(LPF, 0.0, LpfF, 8000.0, 0.707 );
    #ifdef UsePreLimiterBpf
      PreLimiterBpf=BiQuad_new(BPF,0.0,PreLimiterBpfF, 8000.0, PreLimiterBpfQ);
    #endif
     while ( true ){
      if(Timer2TimeoutCounter==0){        // We have timed out 10 times, so it has been 125 us
        CPU_IDLEn_Set();                    // CPU not idle, so set RE7 so we can time it  
        if(ADCHS_ChannelResultIsReady(4)){              // ADC has sample
          AdcSample=ADCHS_ChannelResultGet(4);          // Get as UINT16
          AdcSamplef=(double)(AdcSample-2048)/2048.0;   // Convert to double with mid-scale=0.0
          ADCHS_ChannelConversionStart(4);              // Start next ADC conversion
        }                                               // endif ADC ready
        // Tone Sweep
        DdsFreq*=1.00001;
        if(DdsFreq>2295.0) DdsFreq=2125.0;
        DdsFreqSet(DdsFreq); 
        // End tone sweep
        //sample=DdsNextSample();
        #ifdef UsePreLimiterBpf
          LimiterIn=BiQuad(AdcSamplef,PreLimiterBpf);
        #else
          LimiterIn=AdcSamplef;
        #endif
        LimiterOut=copysign(1.0,LimiterIn);            // Limiter. Returns 1.0 if sample positive, =1.0 if negative
        MarkSample=LimiterOut;                          // Start with limiter value so we can loop
        SpaceSample=LimiterOut;
        for(n=0;n<NumBpf;n++){
          MarkSample=BiQuad(MarkSample,MarkFilter[n]);       // Mark BPF
          SpaceSample=BiQuad(SpaceSample,SpaceFilter[n]);     // Space BPF
        }  
        MarkDemodOut=BiQuad(fabs(MarkSample), MarkDataFilter);  // Envelope detected and filtered mark
        SpaceDemodOut=BiQuad(fabs(SpaceSample), SpaceDataFilter);    // Same for space
               // DiscrimOut is difference between LPF of full wave rectified of mark and space BPFs
        DiscrimOut=MarkDemodOut-SpaceDemodOut;
        if(DiscrimOut>=0){      // Mark
          LOOP_KEY_OUT_Set();     // Loop switch on
          LATBbits.LATB1=0;     // light green LED
          LED_REDn_Set();     // red LED off
        }else{                  // Space
          LOOP_KEY_OUT_Clear();     // Loop switch off
          LATBbits.LATB1=1;     // green LED off
          LED_REDn_Clear();     // red LED on
        }
        switch(AudioOut){       // Provide analog output for debug
            case none:          AudioPwmSet(0.0); break;
            case adc:           AudioPwmSet(AdcSamplef); break;
            case limiter:       AudioPwmSet(LimiterOut); break;
            case MarkFilterOut:    AudioPwmSet(MarkSample); break;
            case SpaceFilterOut:   AudioPwmSet(SpaceSample); break;
            case MarkData:      AudioPwmSet(MarkDemodOut); break;
            case SpaceData:     AudioPwmSet(SpaceDemodOut); break;
            case discrim:    AudioPwmSet(DiscrimOut); break;
            case dds:           AudioPwmSet(DdsNextSample()); break;
        }
         Timer2TimeoutCounter=10;    // come back in 125 us. PWM frequency is 80 kHz, so change every 10 cycles
        // Debug output as CSV
//        if(0==DebugCounter--){       // output debug data  // To output every 1 ms, run this every 8 samples
//          sprintf(StringBuf,"%E, %E\r\n",MarkDemodOut,SpaceDemodOut);
//          UART2_Write((uint8_t*)StringBuf,strlen(StringBuf));   // Cast to uint_8. Sprintf outputs int8 while UART2_Write takes uint8
//          DebugCounter=16;              // Come back in 16 samples (2 ms)
//        }
        CPU_IDLEn_Clear();      // Exiting DSP code, so make RE7 low so we can see how much time spent there.   
      } // endif Timer2TimeoutCounter
      /* Maintain state machines of all polled MPLAB Harmony modules. */
      SYS_Tasks ( );
    }  // end while(true))
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
  }  // end main())


/*******************************************************************************
 End of File
*/
