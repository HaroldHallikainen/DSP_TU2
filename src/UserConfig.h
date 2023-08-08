//UserConfig.h

#ifndef UserConfig_h
#define UserConfig_h

// Structure to hold various settings that might be changed by the user

typedef struct{
  double NarrowShiftCenterFreq;    // Center frequency in Hz for narrow shift. 
  double NarrowShiftHz;            // How many Hz shift (tyically 170)
  double WideShiftCenterFreq;      // Center frequency for wide shift
  double WideShiftHz;              // How many Hz shift (typically 850)
  double BaudRate;                 // Used to calculate tone filter bw and data filter cutoff
  double AutostartShutdownSeconds; // How many seconda after loss of mark to shut down motor
  double KosDropSeconds;            // How many seconds after last character to drop transmitter          
} UserConfig_t;

void LoadDefaultConfig(void);       // Load default user config (tone frequencies, etc.)

extern UserConfig_t UserConfig;     // User config to set tone frequencies, etc.

#endif
