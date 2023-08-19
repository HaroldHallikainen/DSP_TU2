// User configurable system parameters

#include "UserConfig.h"
#include <string.h>

UserConfig_t UserConfig;

const UserConfig_t UserConfigDefault={
  .NarrowShiftCenterFreq=2210.0,    // Center frequency for 170 Hz shift
  .NarrowShiftHz=170.0,
  .WideShiftCenterFreq=2000.0,      // Center freq for 850 Hz shift
  .WideShiftHz=850.0,
  .BaudRate=45.45,                  // Used to determine filter bandwidth and in software uart
  .ToneFilterBwBrMult=2.0,          // Tone filter bandwidth is the baud rate times this number. Make wide enough for minimal attenuation of BR/2 sideband
  .MarkHoldThresh=0.3,              // Minimum discriminator - threshold level to reset mark hold timer.
  .AutostartThresh=0.3,             // Minimum discriminator - threshold level to start motor
  .AutostartShutdownSeconds=30.0,   // Keep motor running this may seconds after signal drop
  .KosDropSeconds=5.0,              // Drop transmitter 5 seconds after last character
  .AgcTargetLevel=0.5,               // AGC adjusts to this level
  .AgcLpfF=0.1,                   // Cutoff frequency of the LPF in the AGC gain control 
  .UseInputBpf=0,
  .UseLimiter=0,
  .UseAgc=1,
  .AgcMaxGain=50                  // Max gain of AGC in V/V          
};


void LoadDefaultConfig(void){ 
  // Copy default config to UserConfig
  memcpy(&UserConfig, &UserConfigDefault,sizeof(UserConfig));
} 