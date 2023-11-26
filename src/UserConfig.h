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
  double DataLpfBwBrMult;           // Multiply baud rate by this to get data LPF bandwidth (cutoff freq))
  double MarkHoldThresh;            // Minimum discriminator level to reset mark hold timer.
  double MarkHoldDisableSecs;       // Seconds to hold off Mark Hold on valid mark
  double AutostartThresh;           // Minimum discriminator level to start motor
  uint32_t AutostartShutdownSeconds; // How many seconda after loss of mark to shut down motor
  uint32_t KosDropSeconds;            // How many seconds after last character to drop transmitter  
  double AgcTargetLevel;            // Desired AGC output level
  double AgcLpfF;                   // Cutoff frequency in AGC control.
  int UseInputBpf;                  // True if we want to use input bpf
  double InputBpfBwShiftMult;       // Input BPF bandwidth is shift times this number
  int UseLimiter;                   // True if we want to use the limiter
  int UseAgc;                       // True if we want to use the AGC
  int NoLoop;                       // Allows use of UART modem without a loop supply
  int AfskOutputContinuous;         // If non-zero, output AFSK continuously. Otherwise, only in transmit
  int AutostartSeqGoodChars;        // How many good characters before motor start
  int DTC;                          // 1= Enable Dynamic Threshold Control
  double TxRxHoldoff;               // How many seconds to disable demod on Tx to Rx transition
  double AgcMaxGain;                // Maximum gain of AGC in V/V
} UserConfig_t;

void LoadDefaultConfig(void);       // Load default user config (tone frequencies, etc.)
void PrintSavedConfig(void);        // Print config saved to external flash starting at address 0.
void SavePrintConfig(int print);     // Save or print current configuration. If print==1, print it. Otherwise save to flash
void LoadSavedConfig(void);            // Run config in flash thru command inteprperer


extern UserConfig_t UserConfig;     // User config to set tone frequencies, etc.

#endif
