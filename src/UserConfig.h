//UserConfig.h

#ifndef UserConfig_h
#define UserConfig_h

#include <stdint.h>     // uint32_t


// Structure to hold various settings that might be changed by the user

typedef struct{
  double NarrowShiftCenterFreq;    // Center frequency in Hz for narrow shift. 
  double NarrowShiftHz;            // How many Hz shift (tyically 170)
  double WideShiftCenterFreq;      // Center frequency for wide shift
  double WideShiftHz;              // How many Hz shift (typically 850)
  double BaudRate;                 // Used to calculate tone filter bw and data filter cutoff
  double ToneFilterBwBrMult;        // Tone filter bandwidth is the baud rate times this number
  double MarkHoldThresh;            // Minimum discriminator level to reset mark hold timer.
  double AutostartThresh;           // Minimum discriminator level to start motor
  uint32_t AutostartShutdownSeconds; // How many seconda after loss of mark to shut down motor
  uint32_t KosDropSeconds;            // How many seconds after last character to drop transmitter  
  double AgcTargetLevel;            // Desired AGC output level
  double AgcLpfF;                   // Cutoff frequency in AGC control.
  int UseInputBpf;                  // True if we want to use input bpf
  int UseLimiter;                   // True if we want to use the limiter
  int UseAgc;                       // True if we want to use the AGC
  double AgcMaxGain;                // Maximum gain of AGC in V/V
} UserConfig_t;

void LoadDefaultConfig(void);       // Load default user config (tone frequencies, etc.)

extern UserConfig_t UserConfig;     // User config to set tone frequencies, etc.

#endif
