// AutostartKos.c

// Handle autostart and Keyboard Operated Send. Call this 8,000 times per second

#include <stdint.h>
#include "UserConfig.h"
#include "AutostartKos.h"
#include "main.h"     // UartDest
#include "BaudotUart.h"// Access to BaudotUartTxOut
#include <math.h>     // fabs





void AutostartKos(double discrim){
  // Pass in discriminator level. We will start motor if discrim is above threshold for
  // at least 2 bit times. For KOS, a lockout timer is set whenever the loop is
  // keyed by the demodulator. This prevents triggering KOS on loop current interruptions 
  // due to received data. A lockout timer is required instead of just ignoring loop current
  // interruptions when the demodulator keys the loop since there is a slight delay between
  // the loop being keyed and it being sensed (probably mostly due to the opto isolator).
  static uint32_t AutostartCounter=8000;    // Used to time shutdown and startup
  static uint32_t KosCounter=8000;
  static uint32_t KosLockout=8000;       // Ignore loop sensor for a period of time after loop keyer sends space
  static int OldLoopSense=0;          // Watch for changes in loop sense to trigger KOS
  if(1==TX_LED_Get()){                // We're transmitting. Turn on motor and reload autostart counter
    MOTOR_LED_Set();                  // Front panel motor LED on
    AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;
  }else{                              // Not transmitting        
    if(1==AUTOSTART_LED_Get()){         // Autostart is enabled
      if((discrim>UserConfig.AutostartThresh)&&(SeqGoodChars>=UserConfig.AutostartSeqGoodChars)){ // above threshold and good characters, reload counter
        AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;
      }else{
        if(0!=AutostartCounter){
          AutostartCounter--;       // Decrement the counter
        }
      }
      if(AutostartCounter>0){
        MOTOR_LED_Set();
      }else{
        MOTOR_LED_Clear();
      }  // Not timed out yet
    }  // endif autostart
  }
  if(1==MOTOR_LED_Get()){           // LED is on
    AUTOSTARTn_Clear();             // turn on autostart output
  }else{
    AUTOSTARTn_Set();               // Turn off autostart output
  }
  if(1==KOS_LED_Get()){                // Keyboard operated send enabled
    if(0==LOOP_KEY_Get()){
      KosLockout=800;               // Lock out KOS for 100 ms if rx data keyed loop
    }else{
      if(0!=KosLockout)KosLockout--;  // Decrement lockout if not keyed by receive data
    }
    if(0==KosLockout){                 // KOS not locked out by receive data
      if(OldLoopSense!=LOOP_SENSE_Get()){ // Loop changed, so key up or stay keyed up - Don't need to check NoLoop since looking for change instead of space. 
        OldLoopSense=LOOP_SENSE_Get();    // Remember new value
        KosCounter=8000*UserConfig.KosDropSeconds;  // Reset counter to drop out later
      }
      if(0==BaudotUartTxOut){       // Set KOS counter on BaudotUart space
        KosCounter=8000*UserConfig.KosDropSeconds;  // Reset counter to drop out later 
      }
      if(0!=KosCounter) KosCounter--;   // Decrement towards zero
      if(KosCounter!=0){              // Transmit if not timed out
        TX_LED_Set();
      }else{
        TX_LED_Clear();               // or stop transmitting if timed out
      }
    }
  }
  if(1==TX_LED_Get()){               // Transmit LED lit
    PTT_Set();                      // Close PTT
  }else{
    PTT_Clear();                    // Open PTT
  }  
}



 