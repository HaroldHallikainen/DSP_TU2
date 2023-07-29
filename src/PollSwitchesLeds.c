// Called from the main loop. Reads switches and toggles LEDs if down.

#include "PollSwitchesLeds.h"

SwitchStruct_t Switches;        // Generally holds old value of switch for comparison but can also be read for 
                                // individual switch state like the encoder switch

void PollSwitchesLeds(void){
  if(MARK_HI_TOGGLEn_Get()!=Switches.S1){  // Switch state changed
    Switches.S1=MARK_HI_TOGGLEn_Get();   // Remember the new state
    if(0==Switches.S1){                 // S1 closed, toggle LED
      MARK_HI_LED_Toggle();
    }  
  }
  if(SHIFT_TOGGLEn_Get()!=Switches.S2){
    Switches.S2=SHIFT_TOGGLEn_Get();
    if(0==Switches.S2){
      SHIFT_850_LED_Toggle();    
    }    
  }
  if(AUTOSTART_TOGGLEn_Get()!=Switches.S3){
    Switches.S3=AUTOSTART_TOGGLEn_Get();
    if(0==Switches.S3){
      AUTOSTART_LED_Toggle();    
    }    
  }
  if(MOTOR_TOGGLEn_Get()!=Switches.S4){
    Switches.S4=MOTOR_TOGGLEn_Get();
    if(0==Switches.S4){
      MOTOR_LED_Toggle();    
    }    
  }
  if(KOS_TOGGLEn_Get()!=Switches.S5){
    Switches.S5=KOS_TOGGLEn_Get();
    if(0==Switches.S5){
      KOS_LED_Toggle();    
    }    
  }
  if(TX_TOGGLEn_Get()!=Switches.S6){
    Switches.S6=TX_TOGGLEn_Get();
    if(0==Switches.S6){
      TX_LED_Toggle();    
    }    
  }
  Switches.S7=ENCODER_SWn_Get();      // Just copy over encoder push switch to read without bounce
}