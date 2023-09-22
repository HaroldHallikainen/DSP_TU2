// AutostartKos.c

// Handle autostart and Keyboard Operated Send. Call this 8,000 times per second

#include <stdint.h>
#include "UserConfig.h"
#include "AutostartKos.h"
#include "main.h"     // UartDest
#include "BaudotUart.h"// Access to BaudotUartTxOut





void AutostartKos(double discrim){
  // Pass in discriminator level. We will start motor if discrim is above threshold for
  // at least 80% of a bit time. For KOS, a lockout timer is set whenever the loop is
  // keyed by the demodulator. This prevents triggering KOS on loop current interruptions 
  // due to received data. A lockout timer is required instead of just ignoring loop current
  // interruptions when the demodulator keys the loop since there is a slight delay between
  // the loop being keyed and it being sensed (probably mostly due to the opto isolator).
  static uint32_t AutostartCounter=8000;
  static uint32_t KosCounter=8000;
  static uint32_t KosLockout=8000;       // Ignore loop sensor for a period of time after loop keyer sends space
  if(1==TX_LED_Get()){                // We're transmitting. Turn on motor and reload autostart counter
    MOTOR_LED_Set();                  // Front panel motor LED on
    AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;
  }else{                              // Not transmitting        
    if(1==AUTOSTART_LED_Get()){         // Autostart is enabled
      if(1==MOTOR_LED_Get()){           // Motor is on. Figure out when to drop out
        if(discrim>UserConfig.AutostartThresh){ // above threshold, reload counter
          AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;
        }else{
          if(0!=AutostartCounter){
            AutostartCounter--;       // Decrement the counter
          }else{  
            MOTOR_LED_Clear();      // Turn off the front panel LED
          }
        }
      }else{                        // Motor LED off. See if we should start motor
        if(discrim>UserConfig.AutostartThresh){   // Mark present, let counter drop
          if(0==AutostartCounter){  // Mark has been present for 80% of bit time, start motor
            MOTOR_LED_Set();
          }else{                    // Not timed out yet
            AutostartCounter--;
          }
        }else{                      // Mark not present, reload counter with 80% of a bit time
          AutostartCounter=8000*(uint32_t)(0.8/UserConfig.BaudRate); // Require continuous space for 80% of bit time   
        }
      }  
    }
  }
  if(1==MOTOR_LED_Get()){           // LED is on
    AUTOSTARTn_Clear();             // turn on autostart output
  }else{
    AUTOSTARTn_Set();               // Turn off autostart output
  }
  if(1==KOS_LED_Get()){                // Keyboard operated send enabled
    if(1==TX_LED_Get()){              // We are transmitting
      if(((0==UserConfig.NoLoop) && (1==LOOP_SENSE_Get())) || (0==BaudotUartTxOut)){  // Space detected on loop or sw buart
                                      // Ignore loop sense if NoLoop nonzero
        KosCounter=8000*UserConfig.KosDropSeconds;  // Reset counter to drop out later
      }else{                        // mark detected
        if(0==KosCounter){          // We timed out
          TX_LED_Clear();             // Stop transmitting
        }else{                      // have not timed out
          KosCounter--;             // Decrement towards zero
        }
      }  
    }else{                          // Not transmitting, look for space not from keying SSR for 80% of bit time
      if(0==LOOP_KEY_Get()){        // Loop keyed by demod, ignore loop sense for a while
        KosLockout=800;            // Lockout for 100 ms
      }else{
        if(0!=KosLockout) KosLockout--; // Decrement if loop key is mark
      }  
      if(0==KosLockout){            // Loop not keyed by demod recently
        if(0==UserConfig.NoLoop){   // Don't check for space on loop if NoLoop
          if(1==LOOP_SENSE_Get()){  // Got a space  
            TX_LED_Set();         // Start transmitting
          }
        }  
        if(0==BaudotUartTxOut){ // Start transmitting based on data from UART
          TX_LED_Set();
        }
      }  
    }
  }
  if(1==TX_LED_Get()){               // Transmit LED lit
    PTT_Set();                      // Close PTT
  }else{
    PTT_Clear();                    // Open PTT
  }  
}



 
/*
  if(discrim<UserConfig.AutostartThresh){
    AutostartCounter=SamplesRequired;   // Below threshold, reload counter
  }else{
    AutostartCounter--;           // Above threshold, decrement counter
    if(0==AutostartCounter){      // We have had a good mark for 80% of a bit time
      MOTOR_LED_Set();            // Turn on the motor front panel LED
    }
  }
  
}



     if(1==AUTOSTART_LED_Get()){   // Autostart is enabled
        if(DiscrimOut>UserConfig.AutostartThresh){
          AutostartTimer=8000*UserConfig.AutostartShutdownSeconds;
          MOTOR_LED_Set();          // Light the front panel LED
        }else{
          if(AutostartTimer>0){
            AutostartTimer--;   // Decrement towards zero
          }else{
            MOTOR_LED_Clear();  // autostart timed out. Turn off the motor front panel LED
          }
        }
      }
      if(1==MOTOR_LED_Get()){   // The motor LED is on
        AUTOSTARTn_Clear();       // Turn on the motor
      }else{
        AUTOSTARTn_Set();     // Turn off the motor
      }
      if(1==KOS_LED_Get()){     // Keyboard operated send enabled
        if((1==LOOP_KEY_Get()) && (1==LOOP_SENSE_Get()) && (0==TX_LED_Get())){ // Loop key SSR closed, but opto not sensing current
          KosTimer=8000*UserConfig.KosDropSeconds;      // Set dropout timer
          TX_LED_Set();         // Turn on the TX led
          PTT_Set();            // Turn on the PTT LED
        }else{                  // No external device (keyboard) keying loop
          if(KosTimer>0){
            KosTimer--;         // Decrement the timer
          }else{                // It timed out, drop out of tx
            TX_LED_Clear();     // Turn off the LED
            PTT_Clear();        // Turn off PTT
          }
        }
      }
*/
