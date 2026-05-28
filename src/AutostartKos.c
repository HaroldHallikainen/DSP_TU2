// AutostartKos.c

// Handle autostart and Keyboard Operated Send. Call this 8,000 times per second

#include <stdint.h>
#include "UserConfig.h"
#include "AutostartKos.h"
#include "main.h"     // UartDest
#include "BaudotUart.h"// Access to BaudotUartTxOut
#include <math.h>     // fabs
#include "RTC.h"      // Stuff to capture autostart time and print it.


uint32_t AutostartCounter=8000;    // Used to time shutdown and startup



void AutostartKos(double MsLevel){
  // Pass in net mark space level. We will start motor if discrim is above 
  // the Mark Hold threshold.
  // For KOS, a lockout timer is set whenever the loop is
  // keyed by the demodulator. This prevents triggering KOS on loop current interruptions 
  // due to received data. A lockout timer is required instead of just ignoring loop current
  // interruptions when the demodulator keys the loop since there is a slight delay between
  // the loop being keyed and it being sensed (probably mostly due to the opto isolator).
  static uint32_t KosCounter=8000;          // Counts down Kos dropout
  static uint32_t LoopMismatchCounter=0;  // How long loop sense is not same as loop key
  // static uint32_t KosLockout=8000;       // Ignore loop sensor for a period of time after loop keyer sends space
  // static int OldLoopSense=0;          // Watch for changes in loop sense to trigger KOS
  if(1==TX_LED_Get()){                // We're transmitting. Turn on motor and reload autostart counter
    MOTOR_LED_Set();                  // Front panel motor LED on
    AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;
  }else{                              // Not transmitting        
    if(1==AUTOSTART_LED_Get()){         // Autostart is enabled
      if((MsLevel>UserConfig.AutostartThresh)&&(SeqGoodChars>=UserConfig.AutostartSeqGoodChars)){ // above threshold and good characters, reload counter
        if((0==AutostartCounter)&&(g_time_valid==false)){  // Newly started and Time not yet captured
          CaptureTime();          // Capture the time we detected autostart        
        }
        AutostartCounter=8000*UserConfig.AutostartShutdownSeconds;  // Set the timer on each qualification
      }else{
        if(0!=AutostartCounter){
          AutostartCounter--;       // Decrement the counter
        }
      }
      if(AutostartCounter<TimeStampInterval*8000){  // Less than TimeStampInterval (typ 5 seconds) til we time out
        if(g_time_valid==true){     // We have a vlid time not yet printed
          append_time_to_tx_fifo(); // Print it. Should not hit KOS since loop key and sense will match.
          g_time_valid=false;       // Prevent reprinting.
        }  
      }
      if(AutostartCounter>0){
        MOTOR_LED_Set();
        // CaptureTime();          // Get th time autostart turned on the motor
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
    if(UserConfig.NoLoop==0){           // User oes not have loop disabled, check for key/sense mismatch
      // Check for mismatch between loop keyer and loop sense that is longer than 19 ms. If so, go to tx
      if(LOOP_KEY_Get()==LOOP_SENSE_Get()){   // Loop mismatch such as keyer wants loop current but sense is not seeing any
        if(LoopMismatchCounter<=8000){    // Stop counting after 1 second
          LoopMismatchCounter++;          // Incrementing on mismatch
        }  
      }else{            // They match
        LoopMismatchCounter=0;          // Clear the counter
      }
      if(LoopMismatchCounter>=1600){     // Mismatch longer than 200 ms, loop probably open. Don't transmit
        KosCounter=0;
      }else{   // Mismatch not due to open loop
        if(LoopMismatchCounter>80){       // Mismatch greater than 10 ms
          KosCounter=(uint32_t)(8000.0*UserConfig.KosDropSeconds);  // Reset counter to drop out later   
        }
      }  
    } // endif NoLoop==0
    if((AutostartCounter==0)||(AutostartCounter>TimeStampInterval*8000)){  // Disallow KOS on BaudotUartOut during last few seconds
      // of autostart so we can print the timestamp without transmitting it
      if(0==BaudotUartTxOut){       // Set KOS counter on BaudotUart space. This is for data coming in usb.
        KosCounter=(uint32_t)(8000.0*UserConfig.KosDropSeconds);  // Reset counter to drop out later 
      }
    }// End of KOS lockout based on Autostart timer  
    if(0!=KosCounter) KosCounter--;   // Decrement towards zero
    if(KosCounter!=0){              // Transmit if not timed out
      TX_LED_Set();
    }else{
      TX_LED_Clear();               // or stop transmitting if timed out
    }    
  }
  if(1==TX_LED_Get()){               // Transmit LED lit
    PTT_Set();                      // Close PTT
  }else{
    PTT_Clear();                    // Open PTT
  }  
}



 