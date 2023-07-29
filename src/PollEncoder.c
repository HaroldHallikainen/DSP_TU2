// PollEncoder.c

// Based on encoder rotation, increments or decrements EncoderCount.

#include "PollEncoder.h"

int32_t EncoderCount=0;

void PollEncoder(void){
  static uint8_t state=0x0f;
  state|=0b11;      // set the 2 lsb
  if(0==QAn_Get()) state&=0b1110;   // If QAn low, clear the lsb of state
  if(0==QBn_Get()) state&=0b1101;   // If QBn low, clear b1 of state
  state&=0x0f;                      // Mask to lower 4 bits.
  // 2 low bits hold current encoder. Next 2 hold old encoder
  sprintf(StringBuf,"0x%x, %d\r\n",state,EncoderCount);
  UART2_Write((uint8_t*)StringBuf,strlen(StringBuf));   // Cast to uint_8. Sprintf outputs int8 while UART2_Write takes uint8
  switch(state){
    case 0b1110:          // A and B were high, A is now low and B still high 
      EncoderCount++;
      break;
    case 0b1100:          // A and B were high, both now low
        EncoderCount--;
        break;
    default: break; // Do nothing        
  }
  state<<=2;    // Shift state left 2 putting old encoder in higher bits
}
