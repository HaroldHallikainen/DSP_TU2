// PollEncoder.c

// Based on encoder rotation, increments or decrements EncoderCount.

#include "PollEncoder.h"
#include "ByteToBinary.h"  // for degug
#include <stdbool.h>                    // Defines true


int32_t EncoderCount=0;


void PollEncoder(void){
  // Get current and previous encoder bits and look for specific patterns
  // indicating clockwise or counterclockwise rotation. Discard all other
  // values, most likely due to contact bounce.
  
  static uint32_t OldNew=0x0f;  // 2 lsb are current BnAn. Nest 2 bits are previous value  
  OldNew=OldNew<<2;                  // Shift old
  OldNew&=0b1100;             // Clear to 2 lsb
  if(1==QAn_Get()) OldNew|=1; // If A high, set the lsb
  if(1==QBn_Get()) OldNew|=2; // If B high, set the D1
  switch(OldNew){
    case 0b1011:         // A was low, now both high
      EncoderCount--;   // Moving counterclockwise, decrease count
      break;
    case 0b0111:        // B was low, now both high
      EncoderCount++;   // Moving clockwise, increase count
    default:            // Glitch or other error, do nothing
      break;
  }
  // Debug
#if 1
  static int32_t OldEncoderCount=0;   // Here for debut
  if(OldEncoderCount!=EncoderCount){
    OldEncoderCount=EncoderCount;
    sprintf(StringBuf,"%d\r\n", EncoderCount);
    UART1_Write((uint8_t*)StringBuf,strlen(StringBuf));   // Cast to uint_8. Sprintf outputs int8 while UAR12_Write takes uint8
  }// End debug
#endif   
}

