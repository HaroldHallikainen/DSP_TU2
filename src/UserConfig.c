// User configurable system parameters

#include "UserConfig.h"
#include <string.h>

UserConfig_t UserConfig;

const UserConfig_t UserConfigDefault={
  .NarrowShiftCenterFreq=2210.0,    // Center frequency for 170 Hz shift
  .NarrowShiftHz=170,
  .WideShiftCenterFreq=2000.0,      // Center freq for 850 Hz shift
  .WideShiftHz=850.0,
  .BaudRate=45.45,                  // Used to determine filter bandwidth and in software uart
  .AutostartShutdownSeconds=30.0,
  .KosDropSeconds=5.0              // Drop transmitter 5 seconds after last character
};


void LoadDefaultConfig(void){ 
  // Copy default config to UserConfig
  memcpy(&UserConfig, &UserConfigDefault,sizeof(UserConfig));
} 