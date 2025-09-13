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

// NOTE - Harmony seems to reset the heap size. Set heap size to 15 kB.


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <xc.h>
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>                      // sprintf, etc.
#include <string.h>                     // strlen, etc.
#include <stdint.h>
#include "definitions.h"                // SYS function prototypes
#include "PwmAudioOut.h"                // Convert floating sample to PWM duty cycle
#include "dds.h"                        // Generate next sample via Direct Digital Synthesis
#include "biquad.h"                     // biquad filters. 
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
#include "menu.h"                       // Handle display menus
#include "PowerLineNoise.h"             // Measure received power line noise
#include "winc1500_api.h"               // Wifi API
#include "wf_asic.h"                    // Wifi chip id
#include "WiFiInit.h"                   // Wifi module enable and reset
#include "wf_hif.h"
#include "WifiPoll.h"                   // Handle the wifi module

static void MyTimer2Isr(uint32_t intCause, uintptr_t context);


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// Globals 
volatile int Timer2TimeoutCounter=0; // Derive 8 kHz from timer 2 80 kHz - Decremented by MyTimer2Isr.
volatile uint32_t MillisecondCounter=0; // Advances every 1 ms. Used by WiFi
int TimeoutCounterMin=0;              // Minimum timeout value to see if we are servicing audio on time
int MsLevelPrintCount=0;              // How many mark/space levels to print
int MsLevelSampleInterval=8000;            // How many samples between printing mark/space levels
int16_t FpPollCounter=0;                // Decrements at 8 kHz telling us when to poll switches and LEDs.
// Audio samples at various stages
uint16_t AdcSample;         // Raw sample from ADC. Converted to AdcSamplef for calculations.
char StringBuf[100];        // Build strings here
double samplef, TestSamplef, MarkSample, SpaceSample, MarkDemodOut, SpaceDemodOut, DiscrimOut, DdsOut, Threshold, MsLevel;  // These were originally in main but seemed to get corrupted
// What drives the audio output. Usually dds (AFSK tone), but others for debug.  
// enum {NONE,ADC, AGC, INPUT_BPF, LIMITER, MARK_FILTER_OUT, SPACE_FILTER_OUT, MARK_DEMOD_OUT, SPACE_DEMOD_OUT, DISCRIM, DDS, THRESHOLD, DISCRIM_LESS_THRESHOLD} AudioOut=DDS;
AudioOut_t AudioOut=DDS;
char AudioOutString[][17]={ // Each string is 16 bytes long plus null terminator
  "NONE            ",
  "ADC             ",
  "AGC             ",
  "INPUT_BPF       ",
  "LIMITER         ",
  "MARK_FILTER_OUT ",
  "SPACE_FILTER_OUT",
  "MARK_DEMOD_OUT  ",
  "SPACE_DEMOD_OUT ", 
  "DISCRIM         ",
  "DDS             ", 
  "THRESHOLD       ",
  "DISCRIM - THRESH"
};
UartDest_t UartDest=CLI;   // Where to send UART1 data


int main ( void ){
  int n;
  int WifiGood=0;               // Disable polling of wifi module if we did not get chip ID
  int MsLevelSampleCount=0;
  int OldTx=0;                // Watch for TX/RX change
  char LastHandshakeSent=0;   // Keep track of XON/XOFF transmission for USB audio
  uint8_t RxChar;
  WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
  /* Initialize all modules */
  SYS_Initialize ( NULL );    // Run init code generated by Harmony
  // U1BRG = 12;                 // Harmony sets to 26 for 921,600 bps. Use 12 for 2 Mbps. Comment out for normal
  LATBbits.LATB0=1;             // Make direct drive to transmitter FSK input high (mark)
  TRISBbits.TRISB0=0;           // Make sure it is an output. hh 9/13/25
  TMR2_CallbackRegister(MyTimer2Isr,0);  // Function to call on timer 2 overflow
  TMR2_Start();               // Timer for 80 kHz PWM output
  OCMP1_Enable();             // PWM generator for audio  
  PrintString("\x11\r\n\nPWM AFSK output initialized\r\n"); // Added XON at start so ensure terminal can send
  BaudotUartInit();
  PrintString("Baudot UART initialized\r\n");
  DynamicThresholdInit();     // Set up LPF used in dynamic threshold
  PrintString("Dynamic threshold initialized\r\n");
  LoadDefaultConfig();        // Load default user config (tone freuqncies, etc.))
  PrintString("Default config loaded\r\n");
  FiltersInit();              // Initialize all biquads
  PowerLineNoiseInit();       // Initialize stuff to measure line noise
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
  WiFiInit();                 // Enable and reset wifi module
  // m2m_wifi_init();            // Initialize the wifi driver
  // hif_chip_wake();  //Wake the chip
  sprintf(StringBuf,"WIFI Chip ID: %x. Should be 1503a0\r\n",(unsigned int)GetChipId());
  PrintString(StringBuf);
  if((unsigned int)GetChipId()==0x1503a0){      // Good chip ID, poll wifi in main loop
    WifiGood=1;
  }else{
    WifiGood=0;
  }
  PrintString("\nDSP TU\r\nhttps://w6iwi.org/rttu/DspTU2\r\n");
  PrintString("Build Date: ");
  PrintString(__DATE__);
  PrintString("\r\n\r\n");
  DisplayClear();     // Clear display
  DisplayString("\fW6IWI DSP TU\r\n");
  DisplayString("Build\r\n");
  DisplayString(__DATE__);
  DisplayString("\r\nw6iwi.org/\r\n");
  DisplayString("rtty/DspTU2\r\n");
  if(WifiGood) PrintString("WiFi Module Info\r\n");
    MillisecondCounter=0;             // Use the WiFi millisecond counter to time the flash display
    while(MillisecondCounter<5000){ // Loop updating the display for 5 seconds
      WDT_Clear();
      DisplayPoll();
      if(WifiGood){
        WifiPoll();         // Go handle wifi module while waiting
    }  
  }
  PrintString("\r\n>");
  DisplayClear();               // Clear display 
  TimeoutCounterMin=0;          // Set to zero so we ignore excessive time in above stuff
  while ( true ){
    if(Timer2TimeoutCounter<1){        // We have timed out 10 times, so it has been 125 us
      IDLEn_Set();                  // CPU not idle, so set RE7 so we can time it
      if(Timer2TimeoutCounter<TimeoutCounterMin) TimeoutCounterMin = Timer2TimeoutCounter;  // Remember for test
      WDT_Clear();           // Clear WDT. Prescale is 1024 for timeout in 1.024 seconds
      FpPollCounter--;                // Decrement at 8 kHz so we can poll front panel now and then
      Timer2TimeoutCounter+=10;    // come back in 125 us. PWM frequency is 80 kHz, so change every 10 cycles
      if(UartDest==audio){
        if(UART1_ReadCountGet()<UART1_ReadBufferSizeGet()/4){ // OK to send if buffer N25%
          if(LastHandshakeSent!=XON){  // Not already sent
            PrintChar(XON);         // XON/XOFF handshake. ok to send now
            LastHandshakeSent=XON;  // Remember it
          }
        }else{
          if(UART1_ReadCountGet()>3*UART1_ReadBufferSizeGet()/4){  // Stop send if buffer>75%
            if(LastHandshakeSent!=XOFF){    // Not already sent
              PrintChar(XOFF);        // Not ok to send now
              LastHandshakeSent=XOFF; // Remember that we sent it
            }
          }  
        }
        if(UART1_ReadCountGet()>0){
          UART1_Read(&RxChar,1);  // Get one character from uart fifo) and put in RxChar
          samplef=((double)(RxChar-127))/128.0; // remove 127 bias (8 bit wav is unsigned) and convert to double)
        }else{
          samplef=0.0;      // Silence if no data
        }  
      }else{
        AdcSample=ADCHS_ChannelResultGet(2);      // Get sample as uint16_t
        samplef=(double)(AdcSample-2048)/2048.0;   // Convert to double with mid-scale=0.0
        PowerLineSample(samplef);                 // Send ADC to power line noise measurrement
        ADCHS_ChannelConversionStart(2);              // Start next ADC conversion 
      }  
      if((1==UserConfig.NoLoop)||Fifo8Full(pAsciiTxFifo)){ // If NoLoop or transmittting error report, ignore lack of loop current
        AfskGen(BaudotUartTxOut);
        LATBbits.LATB0=BaudotUartTxOut;                   // Send software uart data out RB0. hh 9/13/25
      }else{
        AfskGen(LoopSenseMark && BaudotUartTxOut);     // Adjust DDS frequency based on loop condition and software uart
        LATBbits.LATB0=(LoopSenseMark && BaudotUartTxOut); // Send both software uart and loop sense to LATB0 to directly key transmtter. hh 9/13/25
      }
      TestSamplef=0.0;                // Output silence if nothing selected
      if(AudioOut==ADC) TestSamplef=samplef;
      if(UserConfig.UseInputBpf==TRUE){
        samplef=BiQuad(samplef,InputBpf);
      }
      if(AudioOut==INPUT_BPF) TestSamplef=samplef;
      if(UserConfig.UseAgc!=0){
        samplef=agc(samplef);
      }
      if(AudioOut==AGC) TestSamplef=samplef;
      if(UserConfig.UseLimiter==TRUE){                            // Use limiter or pass input to output
        samplef=copysign(1.0,samplef);            // Limiter. Returns 1.0 if sample positive, =1.0 if negative
      }
      if(AudioOut==LIMITER) TestSamplef=samplef;
      MarkSample=samplef;                         
      SpaceSample=samplef;
      for(n=0;n<NumBpf;n++){
        MarkSample=BiQuad(MarkSample,MarkFilter[n]);       // Mark BPF
        SpaceSample=BiQuad(SpaceSample,SpaceFilter[n]);     // Space BPF
      }
      if(MenuNumber==0){      // No menu selected, show XY scope
        xyScope(MarkSample,SpaceSample);
      }  
      if(AudioOut==MARK_FILTER_OUT) TestSamplef=MarkSample;
      if(AudioOut==SPACE_FILTER_OUT) TestSamplef=SpaceSample;
      MarkDemodOut=BiQuad(fabs(MarkSample), MarkDataFilter);  // Envelope detected and filtered mark
      SpaceDemodOut=BiQuad(fabs(SpaceSample), SpaceDataFilter);    // Same for space
      if(0==UserConfig.DTC){    // Disable DTC
        Threshold=0.0;
      }else{                    // Enable it
        Threshold=DynamicThresholdGet(MarkDemodOut, SpaceDemodOut);
      }  
      if(AudioOut==MARK_DEMOD_OUT) TestSamplef=MarkDemodOut;
      if(AudioOut==SPACE_DEMOD_OUT) TestSamplef=SpaceDemodOut;
             // DiscrimOut is difference between LPF of full wave rectified of mark and space BPFs
      DiscrimOut=MarkDemodOut-SpaceDemodOut;
      MsLevel=BiQuad(max(MarkDemodOut,SpaceDemodOut),MsLevelLpf);
      if(MsLevelPrintCount>0){          // Command interpreter telling us to print level used in mark hold
        if(MsLevelSampleCount>=MsLevelSampleInterval){
          sprintf(StringBuf,"%f, %f\r\n",MarkDemodOut,SpaceDemodOut);
          PrintString(StringBuf);
          MsLevelSampleCount=0;
          MsLevelPrintCount--;
          if(MsLevelPrintCount==0) PrintString("\r\n>"); // Prompt for next command
        }else{
          MsLevelSampleCount++;
        }
      }  
      if(AudioOut==DISCRIM) TestSamplef=DiscrimOut;
      if(AudioOut==THRESHOLD) TestSamplef=Threshold;
      if(AudioOut==DISCRIM_LESS_THRESHOLD) TestSamplef=DiscrimOut-Threshold;
      if((TX_LED_Get()||UserConfig.AfskOutputContinuous)||(AudioOut!=DDS)){
        DdsOut=DdsNextSample(); // Run DDS tone generator in transmit or continuous or in debug (AudioOut!=DDS)
        AFSK_OUT_EN_Set();  // Enable AFSK output
      }else{
        AFSK_OUT_EN_Clear();  // Disable AFSK output
      }
      if(TX_LED_Get()){     // Transmit selected
        if(Fifo8Full(pAsciiTxFifo)>0){       // Don't send locally generated stuff to swuart (like error report))
          if(BaudotUartTxOut){
            LOOP_KEY_Set();
          }else{
            LOOP_KEY_Clear();
          }
        }else{
          BaudotUartRx(!LOOP_SENSE_Get()); //Send tty keyboard data to uart to detect !ER command
        }  
        PTT_Set();          // Close PTT relay
      }else{                  // Not in tx, let received data key loop
        PTT_Clear();          // Release PTT relay
        if(MsLevel>UserConfig.MarkHoldThresh){     // Not in mark hold, key loop
          if((DiscrimOut-Threshold)>=0){      // Mark
            LOOP_KEY_Set();     // Loop switch on
            BaudotUartRx(1);
          }else{                  // Space      
            LOOP_KEY_Clear();
            BaudotUartRx(0);
          } 
        }else{
          LOOP_KEY_Set();     // Signal below threshold Mark Hold.
        }
      }       // end else not in transmit 

      BaudotUartTx();     // UART data to baudot to BaudotUartTxOut. Run in both
                          // tx and rx so KOS works.
      AutostartKos(MsLevel);       // Handle autostart and Keyboard Operated Send
      if(AudioOut==DDS) TestSamplef=DdsOut*DdsTxGain; // Output DDS with equalization by DdsTxGain
      AudioPwmSet(TestSamplef);   // Output selected test signal or DDS
    } // endif Timer2TimeoutCounter
    if(Timer2TimeoutCounter>2){   // Don't need to handle audio for a while
                      // Use TimeoutCounterMin to see if this needs to be larger
      DisplayPoll();            // If something in display fifo, send it
      if(FpPollCounter<1){      // Time to poll front panel switches, LEDs, etc.
        PollSwitchesLeds();   // Go poll the switches and LEDs.
        PollShiftMarkHi();    // Change filters if shift or MarkHi changed
        PollEncoder();        // Poll the quadrature encoder updating EncoderCount
        PollMenu();           // Update and act on menu selections
        if(TX_LED_Get()!=OldTx){  // TX/RX mode changed
          OldTx=TX_LED_Get();     // Remember the new value
          if(0==MenuNumber){      // Showing xy scope
            DisplayClear();     // Clear display of garbage or perhaps mark hold threshold
          }
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
      if(WifiGood){
        WifiPoll();                   // Go handle wifi module
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
    static   int CountToMillisecond=0;   //counts 80 timeouts of the 80 kHz timer2 for 1 millisecond
    Timer2TimeoutCounter--;
    if(CountToMillisecond==0){
      CountToMillisecond=80;     // Come back in a millisecond
      MillisecondCounter++;     // Advance the counter for wifi
    }else{
      CountToMillisecond--;     // Not a milliseond yet, drop counter
    }
}


void PrintString(char *string){
  // Send the string to UART1 to USB.
  UART1_Write((uint8_t*)string,strlen(string));   
}



void PrintChar(char data){
  // Print a character
  UART1_Write((uint8_t*)&data,1); // Send to uart fofp
}

double max(double x, double y){
  // Return the maximum value
  if(x>y){
    return(x);
  }else{
    return(y);
  }
}

