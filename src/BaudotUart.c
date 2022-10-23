// BaudotUart

#include "BaudotUart.h"

uint32_t CharCount=0;   // How many good start bits we got
uint32_t BadStopBitCount=0; // How many bad stop bits we got

char BaudotLtrs[]="~E\nA SIU\rDRJNFCKTZLWHYPQOBG~MXV~";  // 0x03 to shift to figs, 0x0f to ltrs
char BaudotFigs[]="~3\n- \a87\r$4',!:(5\")2#6019?&~./;~"; // ~ characters not translated

char BaudotUartRx(void){
  // Receives Baudot and translate to ASCII. Returns ASCII character when available. Otherwise
  // returns null. Call at 8 kHz sample rate (every 125 us). Uses LOOP_SAMPLE_IN_Get()  to get a
  // sample of both transmit and receive data
  #define mark 0==LOOP_SAMPLE_IN_Get()  // State is mark if opto output low 
  #define space 1==LOOP_SAMPLE_IN_Get() // State is space if opto output high   
  static int state=0, CallCounter=0;
  static uint8_t RxChar=0;
  static bool FIGS=false;
  char result=0;
  if(CallCounter!=0){        // Not time yet
    CallCounter--;           // decrement and get out
  }else{                     // CallCounter==0, time to do something
    switch(state){
        default:
        case 0:             // Waiting for start bit
          if(space){     //  We have a space
            state++;        // Go to next state, checking mid-start bit
            CallCounter=88; // Come back in 11ms, middle of start bit
          }
          break;
        case 1:             // Check middle of start bit  
          if(space){     //  We have a space, so start bit is valid
            RxChar=0;       // Clear the character 
            CharCount++;    // Count the character
            state++;        // Go to next state, get lsb
            CallCounter=176; // Come back in 22ms, middle of lsb
          }else{
            state=0;         // false start bit. Go back to waiting for start of start bit  
          }
          break;
        case 2:             // Pick up the LSB
          if(mark){
            RxChar|=1;      // Set the lsb    
          }
          state++;        // Go to next state, get next bit
          CallCounter=176; // Come back in 22ms, middle of bit 1
          break;
        case 3:             // Pick up bit 1
          if(mark){
            RxChar|=2;      // Set bit 1    
          }
          state++;        // Go to next state, get next bit
          CallCounter=176; // Come back in 22ms, middle of bit 2
          break;
        case 4:             // Pick up bit 2
          if(mark){
            RxChar|=4;      // Set bit 2    
          }
          state++;        // Go to next state, get next bit
          CallCounter=176; // Come back in 22ms, middle of bit 3
          break;
        case 5:             // Pick up the bit 3
          if(mark){
            RxChar|=8;      // Set the bit 3    
          }
          state++;        // Go to next state, get next bit
          CallCounter=176; // Come back in 22ms, middle of bit 4
          break;
        case 6:             // Pick up the bit 4
          if(mark){
            RxChar|=0x10;      // Set bit 4    
          }
          state++;        // Go to next state, get next bit
          CallCounter=176; // Come back in 22ms, middle of stop bit
          break;
        case 7:             // Check stop bit
          if(space){
            BadStopBitCount++;  // Should be mark. Count error if not
            state=9;            // go wait for mark instead of running open
          }
          RxChar&=31;       // Mask to make sure we do not go off end of decode array
          switch(RxChar){
              case 27: FIGS=true; break;
              case 31: FIGS=false; break;
              case  0: break;        // do nothing with baudot blank key
              case  4: FIGS=false;   // Unshift on space. No break. Drop into decode
              default: 
                  if(FIGS){
                      result=BaudotFigs[RxChar];
                  }else{
                      result=BaudotLtrs[RxChar]; 
                  }    
                  break;
          }
          UART2_Write((uint8_t*)&result,1); // Send to uart for debug 
          state=0;          // Go back to waiting for start
          break;
        case 8:         // Got framing error. Wait here for mark
          if(mark) state=0; // Got mark after framing error. Go back to waitinf for start
          break;
      }    
  }
  return result;
}
