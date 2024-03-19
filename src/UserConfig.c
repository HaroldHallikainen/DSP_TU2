// User configurable system parameters

#include "UserConfig.h"
#include <string.h>
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include "ExtFlash.h"
#include "main.h"
#include "CommandInterpreter.h"

UserConfig_t UserConfig;

const UserConfig_t UserConfigDefault={
  .NarrowShiftCenterFreq=2210.0,    // Center frequency for 170 Hz shift
  .NarrowShiftHz=170.0,
  .WideShiftCenterFreq=2000.0,      // Center freq for 850 Hz shift
  .WideShiftHz=850.0,
  .BaudRate=45.45,                  // Used to determine filter bandwidth and in software uart
  .ToneFilterBwBrMult=1.7,          // Tone filter bandwidth is the baud rate times this number. Make wide enough for minimal attenuation of BR/2 sideband
  .DataLpfBwBrMult=1.0,            // Multiply baud rate by this to get data LPF bandwidth (cutoff freq))
  .MarkHoldThresh=0.3,              // Minimum discriminator - threshold level to reset mark hold timer.
  .MarkHoldDisableSecs=2.0,      // Disable mark hold for 2 seconds after valid mark
  .AutostartThresh=0.5,             // Minimum discriminator - threshold level to start motor
  .AutostartShutdownSeconds=30.0,   // Keep motor running this may seconds after signal drop
  .AutostartSeqGoodChars=10,        // How many sequential good characters before motor start
  .KosDropSeconds=3.0,              // Drop transmitter 5 seconds after last character
  .AgcTargetLevel=0.6,               // AGC adjusts to this level
  .AgcLpfF=1.0,                     // Cutoff frequency of the LPF in the AGC gain control 
  .UseInputBpf=1,
  .InputBpfBwShiftMult=1.0,         // Multiply shift by this number to get input BPF bandwidth
  .UseLimiter=0,
  .UseAgc=1,                        // Use AGC using M/S demod samples
  .AgcMaxGain=15,                  // Max gain of AGC in V/V 
  .NoLoop=0,                        // Assume there is a loop supply
  .DTC=1,                           // Enable dynamic threshold control
  .AfskOutputContinuous=0,           // By default, only output AFSK in transmit
  .TxRxHoldoff=1.0,               // How many seconds to disable demod on Tx to Rx transition
  .NarrowTxHfEq=0.0,              // High tone boost in dB
  .WideTxHfEq=0.0,                 // High tone boost in dB
  .FreqAdjPercent=0.0             // Adjust PR2 for CPU clock error
};


void LoadDefaultConfig(void){ 
  // Copy default config to UserConfig
  memcpy(&UserConfig, &UserConfigDefault,sizeof(UserConfig));
} 

void PrintSavedConfig(void){
  // Print config saved to external flash starting at address 0.
  uint8_t data=0;
  uint32_t NextAddr=0;
  PrintString("\r\n");
  while(0xff!=data){
    data=ReadExtFlash(NextAddr++);    // Get a byte from flash and bump address
    if(0xff!=data) PrintChar((char)data); // Print what we read
  };
  PrintString("\r\n>");
} 

void LoadSavedConfig(void){
  // Run config in flash thru command inteprperer
  uint8_t data=0;
  uint32_t NextAddr=0;
  PrintString("\r\n");
  while(0xff!=data){
    data=ReadExtFlash(NextAddr++);    // Get a byte from flash and bump address

    if(0xff!=data) CommandInterpreter(0,(char)data); // Send to stream 0 of command interpreter
  };
  PrintString("\r\nSaved configuration loaded\r\n"); 
}


void SavePrintConfig(int print){
  // Save or print current configuration. If print==1, print it. Otherwise save to flash
  uint32_t NextAddr=0;        // Start saving in external flash at address 0
  sprintf(StringBuf,"NarrowShiftCenterFreq\t%f\r\n",UserConfig.NarrowShiftCenterFreq);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"NarrowShiftHz\t%f\r\n",UserConfig.NarrowShiftHz);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"WideShiftCenterFreq\t%f\r\n",UserConfig.WideShiftCenterFreq);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"WideShiftHz\t%f\r\n",UserConfig.WideShiftHz);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"BaudRate\t%f\r\n",UserConfig.BaudRate);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"ToneFilterBwBrMult\t%f\r\n",UserConfig.ToneFilterBwBrMult);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"MarkHoldThresh\t%f\r\n",UserConfig.MarkHoldThresh);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AutostartThresh\t%f\r\n",UserConfig.AutostartThresh);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AutostartShutdownSeconds\t%d\r\n",UserConfig.AutostartShutdownSeconds);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"KosDropSeconds\t%d\r\n",UserConfig.KosDropSeconds);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AgcTargetLevel\t%f\r\n",UserConfig.AgcTargetLevel);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AgcLpfF\t%f\r\n",UserConfig.AgcLpfF);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"UseInputBpf\t%d\r\n",UserConfig.UseInputBpf);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"UseLimiter\t%d\r\n",UserConfig.UseLimiter);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"UseAgc\t%d\r\n",UserConfig.UseAgc);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AgcMaxGain\t%f\r\n",UserConfig.AgcMaxGain);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"NoLoop\t%d\r\n",UserConfig.NoLoop);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"WideShift\t%d\r\n",SHIFT_850_LED_Get());
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"Autostart\t%d\r\n",AUTOSTART_LED_Get());
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"KOS\t%d\r\n",KOS_LED_Get());
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AfskOutputContinuous\t%d\r\n",UserConfig.AfskOutputContinuous);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"AutostartGoodChars\t%d\r\n",UserConfig.AutostartSeqGoodChars);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"MarkHoldDisableSecs\t%f\r\n",UserConfig.MarkHoldDisableSecs);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }
  sprintf(StringBuf,"DTC\t%d\r\n",UserConfig.DTC);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  } 
  sprintf(StringBuf,"InputBpfBwShiftMult\t%f\r\n",UserConfig.InputBpfBwShiftMult);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  } 
  sprintf(StringBuf,"DataLpfBwBrMult\t%f\r\n",UserConfig.DataLpfBwBrMult);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }  
  sprintf(StringBuf,"NarrowHfEq\t%f\r\n",UserConfig.NarrowTxHfEq);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }   
  sprintf(StringBuf,"WideHfEq\t%f\r\n",UserConfig.WideTxHfEq);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }   
  sprintf(StringBuf,"FreqAdjPercent\t%f\r\n",UserConfig.FreqAdjPercent);
  if(1==print){
    PrintString(StringBuf);
  }else{
    NextAddr=StreamProgramExtFlash(NextAddr,strlen(StringBuf),(uint8_t*)StringBuf); // Write to external flash and get next address
  }   
  
}

  
   
  
 
  
  
  
  
  
   
  
   