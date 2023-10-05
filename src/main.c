/*******************************************************************************
  Main Source File

  Company:
   W6IWI.ORG
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
#include <stdint.h>
#include "definitions.h"                // SYS function prototypes
#include "PwmAudioOut.h"                // Convert floating sample to PWM duty cycle
#include "dds.h"                        // Generate next sample via Direct Digital Synthesis
#include "biquad.h"                     // biquad filters. Includes typedef for smp_type
#include "DynamicThreshold.h"           // Calculates threshold based on max mark and space levels
#include "agc.h"                        // Input automatic gain control
#include "main.h"
#include "display.h"
#include "xyScope.h"
#include "AfskGen.h" 
#include "BaudotUart.h"
#include "PollSwitchesLeds.h"           // Go poll the front panel
#include "PollEncoder.h"                // Poll the quadrature encoder
#include "UserConfig.h"                 // Tone frequencies, etc.
#include "filters.h"                    // Set up filters and modify based on button presses
#include "AutostartKos.h"               // Handle autostart and KOS
#include "ExtFlash.h"
#include "CommandInterpreter.h"
#include "Unifont.h"                    // Send text to display

static void MyTimer2Isr(uint32_t intCause, uintptr_t context);

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// Globals 
volatile int16_t Timer2TimeoutCounter=0; // Derive 8 kHz from timer 2 80 kHz - Decremented by MyTimer2Isr.
int16_t FpPollCounter=0;                // Decrements at 8 kHz telling us when to poll switches and LEDs.
// Audio samples at various stages
uint16_t AdcSample;         // Raw sample from ADC. Converted to AdcSamplef for calculations.
char StringBuf[100];        // Build strings here
double samplef, TestSamplef, MarkSample, SpaceSample, MarkDemodOut, SpaceDemodOut, DiscrimOut, DdsOut, Threshold;  // These were originally in main but seemed to get corrupted
// What drives the audio output. Usually dds (AFSK tone), but others for debug.  
enum {NONE,ADC, AGC, INPUT_BPF, LIMITER, MARK_FILTER_OUT, SPACE_FILTER_OUT, MARK_DEMOD_OUT, SPACE_DEMOD_OUT, DISCRIM, DDS, THRESHOLD, DISCRIM_LESS_THRESHOLD} AudioOut=DDS;
UartDest_t UartDest=CLI;   // Where to send UART1 data


int main ( void ){
  int n;
  int MarkHoldTimer=0;        // How long 'til we mark hold
  int OldTx=0;                // Watch for TX/RX change
  uint8_t RxChar;
  WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
  /* Initialize all modules */
  SYS_Initialize ( NULL );    // Run init code generated by Harmony
  TMR2_CallbackRegister(MyTimer2Isr,0);  // Function to call on timer 2 overflow
  TMR2_Start();               // Timer for 80 kHz PWM output
  OCMP1_Enable();             // PWM generator for audio  
  PrintString("\r\n\nPWM AFSK output initialized\r\n");
  BaudotUartInit();
  PrintString("Baudot UART initialized\r\n");
  DynamicThresholdInit();     // Set up LPF used in dynamic threshold
  PrintString("Dynamic threshold initialized\r\n");
  LoadDefaultConfig();        // Load default user config (tone freuqncies, etc.))
  PrintString("Default config loaded\r\n");
  FiltersInit();              // Initialize all biquads
  PrintString("Filters initialized\r\n");
  AgcInit();                  // Set up automatic gain control
  PrintString("AGC initialized\r\n");
  WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
  DisplayInit();         // Initialize display and related fifo
  WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
  PrintString("Display initialized\r\n");
  AudioPwmSet(0.0);           // Initialize PWM to 50% duty cycle representing 0.0.
  ADCHS_ChannelConversionStart(2); // Start a first ADC conversion
  AfskGenInit();      // Initialize a low pass filter between loop current sample and DDS
  PrintString("AFSK generator initialized\r\n");
  sprintf(StringBuf,"External flash ID = %x. Should be ef3013\r\n",ReadExtFlashID());
  PrintString(StringBuf);
  LoadSavedConfig();          // Load config from flash
  PrintString("\nDSP TU\r\nhttps://w6iwi.org/rttu/DspTU2\r\n");
  PrintString("Build Date: ");
  PrintString(__DATE__);
  PrintString("\r\n\r\n>");
  DisplayClear();
  DisplayCharacter('A');  // TEST
  while ( true ){
    if(Timer2TimeoutCounter<1){        // We have timed out 10 times, so it has been 125 us
      IDLEn_Set();                  // CPU not idle, so set RE7 so we can time it 
      WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
      FpPollCounter--;                // Decrement at 8 kHz so we can poll front panel now and then
      Timer2TimeoutCounter+=10;    // come back in 125 us. PWM frequency is 80 kHz, so change every 10 cycles
      AdcSample=ADCHS_ChannelResultGet(2);      // Get sample as uint16_t
      samplef=(double)(AdcSample-2048)/2048.0;   // Convert to smp_type with mid-scale=0.0
      ADCHS_ChannelConversionStart(2);              // Start next ADC conversion 
      if((1==UserConfig.NoLoop)||Fifo8Full(pAsciiTxFifo)){ // If NoLoop or transmittting error report, ignore lack of loop current
        AfskGen(BaudotUartTxOut);
      }else{
        AfskGen(LoopSenseMark && BaudotUartTxOut);     // Adjust DDS frequency based on loop condition and software uart
      }
      if(0==Fifo8Full(pAsciiTxFifo)){       // Don't send locally generated stuff to swuart (like error report))
        BaudotUartRx(LoopSenseMark);        // Send sensed loop condition (true is mark) to softwaree uart)
      }  
      TestSamplef=0.0;                // Output silence if nothing selected
      if(AudioOut==ADC) TestSamplef=samplef;
      if(UserConfig.UseInputBpf==TRUE){
        samplef=BiQuad(samplef,InputBpf);
      }
      if(AudioOut==INPUT_BPF) TestSamplef=samplef;
      if(UserConfig.UseAgc==TRUE){
        samplef=agc(samplef);
      }
      if(AudioOut==AGC) TestSamplef=samplef;
      if(UserConfig.UseLimiter==TRUE){                            // Use limiter or pass input to output
        samplef=(smp_type)copysign(1.0,(double)samplef);            // Limiter. Returns 1.0 if sample positive, =1.0 if negative
      }
      if(AudioOut==LIMITER) TestSamplef=samplef;
      MarkSample=samplef;                         
      SpaceSample=samplef;
      for(n=0;n<NumBpf;n++){
        MarkSample=BiQuad(MarkSample,MarkFilter[n]);       // Mark BPF
        SpaceSample=BiQuad(SpaceSample,SpaceFilter[n]);     // Space BPF
      }
      xyScope(MarkSample,SpaceSample);
      if(AudioOut==MARK_FILTER_OUT) TestSamplef=MarkSample;
      if(AudioOut==SPACE_FILTER_OUT) TestSamplef=SpaceSample;
      MarkDemodOut=BiQuad(fabs(MarkSample), MarkDataFilter);  // Envelope detected and filtered mark
      SpaceDemodOut=BiQuad(fabs(SpaceSample), SpaceDataFilter);    // Same for space
      Threshold=DynamicThresholdGet(MarkDemodOut, SpaceDemodOut);
      if(AudioOut==MARK_DEMOD_OUT) TestSamplef=MarkDemodOut;
      if(AudioOut==SPACE_DEMOD_OUT) TestSamplef=SpaceDemodOut;
             // DiscrimOut is difference between LPF of full wave rectified of mark and space BPFs
      DiscrimOut=MarkDemodOut-SpaceDemodOut;
      if(DiscrimOut-Threshold>UserConfig.MarkHoldThresh){  // we have mark instead of space or noise
        MarkHoldTimer=2400;         // Allow loop key for another 300ms. One character is 163ms long
      }else{
        if(MarkHoldTimer>0) MarkHoldTimer--;
      } 
      if(AudioOut==DISCRIM) TestSamplef=DiscrimOut;
      if(AudioOut==THRESHOLD) TestSamplef=Threshold;
      if(AudioOut==DISCRIM_LESS_THRESHOLD) TestSamplef=DiscrimOut-Threshold;
      if(TX_LED_Get()||UserConfig.AfskOutputContinuous){
        DdsOut=DdsNextSample(); // Run DDS tone generator in transmit or continuous
        AFSK_OUT_EN_Set();  // Enable AFSK output
      }else{
        AFSK_OUT_EN_Clear();  // Disable AFSK output
      }
      if(TX_LED_Get()){     // Transmit selected
        if(0==Fifo8Full(pAsciiTxFifo)){       // Don't send locally generated stuff to swuart (like error report))
          LOOP_KEY_Set();     // Loop switch on if not sending error report
        }else{                // Provide local output of generated Error Report
          if(BaudotUartTxOut){
            LOOP_KEY_Set();
          }else{
            LOOP_KEY_Clear();
          }
        }  
        PTT_Set();          // Close PTT relay
        MarkHoldTimer=0;    // Go into mark hold when dropping out of transmit
      }else{                  // Not in tx, let received data key loop
        PTT_Clear();          // Release PTT relay                                        
        if(MarkHoldTimer>0){     // Not in mark hold, key loop
          if((DiscrimOut-Threshold)>=0){      // Mark
            LOOP_KEY_Set();     // Loop switch on
          }else{                  // Space
            LOOP_KEY_Clear();     // Loop switch off
          } 
        }else{
          LOOP_KEY_Set();     // Mark hold timed out, so hold mark
        }
      }       // end else not in transmit 
      BaudotUartTx();     // UART data to baudot to BaudotUartTxOut. Run in both
                          // tx and rx so KOS works.
      AutostartKos(DiscrimOut);       // Handle autostart and Keyboard Operated Send only in mark
      if(AudioOut==DDS) TestSamplef=DdsOut;
      AudioPwmSet(TestSamplef);   // Output selected test signal or DDS
    } // endif Timer2TimeoutCounter
    if(Timer2TimeoutCounter>5){   // Don't need to handle audio for a while
      DisplayPoll();            // If something in display fifo, send it
      if(FpPollCounter<1){      // Time to poll front panel switches, LEDs, etc.
        PollSwitchesLeds();   // Go poll the switches and LEDs.
        PollShiftMarkHi();    // Change filters if shift or MarkHi changed
        PollEncoder();        // Poll the quadrature encoder updating EncoderCount
        if(TX_LED_Get()!=OldTx){  // TX/RX mode changed
          OldTx=TX_LED_Get();     // Remember the new value
          if(0==OldTx){           // We changed from transmit to receive
            CharCount=0;
            BadStopBitCount=0;    // Reset counters in BaudotUart.
          }
        }
        FpPollCounter+=10;  // Each pass is 125us. Come back in 1.25ms
      }
      if(UartDest==CLI){    // UART/USB for command line interface
        if(UART1_ReadCountGet()>0){   // There is a character waiting from UART1
          UART1_Read(&RxChar,1);      // Get one character from uart fifo
          CommandInterpreter(0,(char)RxChar); // Send to command interpreter
          PrintString(StringBuf);     // Print any results
        }
      }  
    }  
    IDLEn_Clear();      // Exiting DSP code, so make RE7 low so we can see how much time spent there.  
    /* Maintain state machines of all polled MPLAB Harmony modules. */
    SYS_Tasks ( );
  }  // end while(true))
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
  }  // end main())


static void MyTimer2Isr(uint32_t intCause, uintptr_t context){
    // Decrement a counter. Used to count 10 PWM cycles of 80 kHz to update duty cycle at 8 kHz
    // See https://microchipdeveloper.com/harmony3:pic32mzef-getting-started-training-module-step5
    // for info on interrupt callbacks.
    Timer2TimeoutCounter--;
}
/*******************************************************************************
 End of File
*/

void PrintString(char *string){
  // Send the string to UART1 to USB.
  UART1_Write((uint8_t*)string,strlen(string));   
}

void PrintChar(char data){
  // Print a character
  UART1_Write((uint8_t*)&data,1); // Send to uart fofp
}

