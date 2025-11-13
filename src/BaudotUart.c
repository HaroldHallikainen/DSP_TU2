// BaudotUart

#include "BaudotUart.h"
#include "main.h"
#include "UserConfig.h"
#include <stdio.h>
#include "fifo8.h"      // Buffer locally generated ascii for transmission
#include <string.h>
#include <ctype.h>

uint32_t CharCount=0;   // How many good start bits we got
uint32_t BadStopBitCount=0; // How many bad stop bits we got
uint32_t Rcount=0;        // How many R characters we have received
uint32_t Ycount=0;        // and how many Y characters we have received
uint32_t SeqGoodChars=0; // Count how many good characters we got in sequence.
Fifo8_t  *pAsciiTxFifo;  // Fifo for stuff not coming in uart

void BaudotUartInit(void){
  // Actually initializes stuff to send error count report.
  pAsciiTxFifo=Fifo8Create(400);  // Create a 400 byte fifo
}

void TxW6iwiCQ(void){
  char CqLine[]="\r\x07\x07\x07\x07\x07 CQ CQ CQ CQ CQ CQ CQ CQ CQ CQ CQ CQ CQ CQ DE w6iwi W6IWI W6IWI TUCSON AZ";
  int LineCount=0;
  for(LineCount=0;LineCount<5;LineCount++){
    Fifo8PutString(pAsciiTxFifo,CqLine);
  }
  Fifo8PutString(pAsciiTxFifo,"\r\r");
}

void TxErrorReport(void){
  // Send error report if enabled on new transmission
//  char *pStringBuf = StringBuf;  // Point to StringBuf
  GenerateErrorCountReport();    // Makes report in StringBuf
  Fifo8PutString(pAsciiTxFifo,StringBuf);   // Send to ASCII TX buffer to convert to Baudot and send.
}

void GenerateErrorCountReport(void){
  // Put receive error report in StringBuf and clear counters;
  sprintf(StringBuf,"\r\n\r\nReceive Error Report\r\nCharacters: %d\r\nBad Characters: %d\r\nError Percentage: %.0f\r\n\r\n",
          CharCount,BadStopBitCount,100.0*(double)BadStopBitCount/(double)CharCount);
}

char BaudotLtrs[]="~E\nA SIU\rDRJNFCKTZLWHYPQOBG~MXV~";  // 0x03 to shift to figs, 0x0f to ltrs
char BaudotFigs[]="~3\n- \a87\r$4',!:(5\")2#6019?&~./;~"; // ~ characters not translated

void BaudotCommandCheck(char c){
  // Pass in a character. Move each character in buffer down 1, then append c.
  // Run substring check for command sequence, then run command if found.
  // static char buf[5]={0,0,0,0,0};
  int n;
  static char bcbuf[6]={1,1,1,1,1,0}; // Initialize string with non-null so strstr searches whole string. Null at end to stop search
  // char *found;    // Non-null if we found the command substring in bcbuf
  for(n=1;n<5;n++){
    bcbuf[n-1]=bcbuf[n]; // Delete oldest and move all down.
  }
  bcbuf[4]=(char)toupper(c);         // Insert latest character converted to upper case
  if(NULL!=strstr(bcbuf,"!ER")){
    TxErrorReport();
    bcbuf[4]=1;         // Make sure we don't find it again
  }  
  if(NULL!=strstr(bcbuf,"!Q")){
    TxW6iwiCQ();
    bcbuf[4]=1; // Get rid of last character of string so we don't find it again
  }  
}

//TODO: Change timing to use BaudRate
char BaudotUartRx(bool MS){
  // Receives Baudot and translate to ASCII. Returns ASCII character when available. Otherwise
  // returns null. Call at 8 kHz sample rate (every 125 us). Uses LOOP_SAMPLE_IN_Get()  to get a
  // sample of both transmit and receive data
  #define mark 1==MS // 
  #define space 0==MS //   
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
          if(0==TX_LED_Get()){
            CharCount++;    // Count the character if not transmitting
            if(space){
              BadStopBitCount++;  // Should be mark. Count error if not
              SeqGoodChars=0;     // Reset sequential good character counter
              state=8;            // go wait for mark instead of running open
            }else{
              SeqGoodChars++;      // Increment it
            }                     // end stop bit check]
          }                       // End receive check
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
          if(UartDest==modem){          // Send received data to UART/USN
            PrintChar(result);          // Print it
          }
          if(result!=0){                // Throw out nulls
            if(1==TX_LED_Get()){        // Only send error report if we are transmitting
              BaudotCommandCheck(result);     // Check for baudot commands
            }                           // Endif we are transmitting  
          } // endif not null
          if(result=='R') Rcount++;     // Count R characters
          if(result=='Y') Ycount++;     // and count Y characters
          state=0;          // Go back to waiting for start
          break;
        case 8:         // Got framing error. Wait here for mark
          if(mark) state=0; // Got mark after framing error. Go back to waitinf for start
          break;
      }    
  }
  return result;
}

const uint8_t AsciiToBaudotTable[]={
// Index is ASCII code (0..127). 5 LSB of data is Baudot code, transmitted
// LSB first. MSB is set if FIGS is required.
  0x00,       // ASCII null. Send blank key
  0x00,       // ASCII SOH, send blank key 
  0x1f,       // ASCII STX, send blank key - Send LTRS
  0x00,       // ASCII ETX, send blank key
  0x00,       // ASCII EOT
  0x00,       // ASCII ENQ. semd blank key
  0x00,       // ASCII ACK, send blank key
  0x85,       // ASCII Bell.FIGS S
  0x00,       // ASCII BS, send blank key
  0x00,       // ASCII HT, send blank key
  0x00,       // Line feed. Ignore LF. Send CRLF on receiving CR
  0x00,       // ASCII VT, send blank key
  0x00,       // ASCII FF, send blank key
  0x08,       // Carriage return
  0x00,       // ASCII SO, send blank key
  0x00,       // ASCII SI, send blank key
  0x00,       // ASCII DLE, send blank key
  0x00,       // ASCII DC1, send blank key
  0x00,       // ASCII DC2, send blank key
  0x00,       // ASCII DC3, send blank key
  0x00,       // ASCII DC4, send blank key
  0x00,       // ASCII NAK, send blank key
  0x00,       // ASCII SYN, send blank key
  0x00,       // ASCII ETB, send blank key
  0x00,       // ASCII CAN, send blank key
  0x00,       // ASCII EM, send blank key
  0x00,       // ASCII SUB, send blank key
  0x00,       // ASCII ESC, send blank key, but will be trapped to change UartDest back to CLI
  0x00,       // ASCII FS, send blank key
  0x00,       // ASCII GS, send blank key
  0x00,       // ASCII RS, send blank key
  0x00,       // ASCII US, send blank key
  0x04,       // Space
  0x8d,       // Exclamation point, FIGS 0x0d
  0x91,       // Quote, FIGS 0x81
  0x94,       // #, FIGS 0x84
  0x89,       // $, FIGS 0x09
  0x00,       // ASCII percent sign, send blank key
  0x9a,       // &, FIGS 0x8a
  0x8b,       // Apostrophe, FIGS 0x0b
  0x8f,       // Open paren
  0x92,       // Close paren
  0x00,       // ASCII *, send blank key
  0x00,       // ASCII plus, send blank key
  0x8c,       // comma, FIGS 0x0c
  0x83,       // hyphen
  0x9c,       // period
  0x9d,       // slash
  0x96,       // zero
  0x97,       // one
  0x93,       // two
  0x81,       // three
  0x8a,       // four
  0x90,       // five
  0x95,       // six
  0x87,       // seven
  0x86,       // eight
  0x98,       // nine
  0x8e,       // colon
  0x9e,       // semicolon
  0x00,       // < Send blank key
  0x00,       // = Send blank key
  0x00,       // > Send blank key
  0x99,       // ? FIGS 0x18
  0x00,       // @ Send blank key
  0x03,       // A
  0x19,       // B
  0x0e,       // C
  0x09,       // D
  0x01,       // E
  0x0d,       // F
  0x1a,       // G
  0x14,       // H
  0x06,       // I
  0x0b,       // J
  0x0f,       // K
  0x12,       // L
  0x1c,       // M
  0x0c,       // N
  0x18,       // O
  0x16,       // P
  0x17,       // Q
  0x0a,       // R
  0x05,       // S
  0x10,       // T
  0x07,       // U
  0x1e,       // V
  0x13,       // W
  0x1d,       // X
  0x15,       // Y
  0x11        // Z
};        
        
       
int BaudotUartTxOut=1;

void BaudotUartTx(void){
  // If UartDest is modem, pull ASCII characters from the UART FIFO, convert to 
  // Baudot, and make available to AFSK Generator. Call 8,000 times per second.
  static int state=0;
  uint8_t AsciiChar;
  static uint8_t BaudotChar;
  static uint32_t CallCount=0;
  static uint32_t BitTimeCallCount;
  static int Figs=0;          // non-zero if we are in FIGS
 // const char ER[]="!ER";     // Sequence to request error report
 // static int ErIndex=0;      // Next position to check
  if((UartDest==modem)||(Fifo8Full(pAsciiTxFifo))){ // Use UART RX data here instead of command interp
                              // or we have some locally generated stuff to transmit
    if(CallCount>0){
      CallCount--;            // Count down at 8,000 per second
    }else{                    // Time to do something!
      switch(state){
        default:
        case 0:                 // See if there is a character to send
          AsciiChar=0;          // Use non-null as flag that we have something
          if(0!=UART1_ReadCountGet()){  // There is something to transmit
            UART1_Read(&AsciiChar,1);    // Get 1 character to AsciiChar
            if(UserConfig.UsbEcho!=0) PrintChar(AsciiChar);  // If echo enabled, send back to uart
          }else{  
            if(0!=Fifo8Full(pAsciiTxFifo)){ // Fifo has data
              AsciiChar=Fifo8Get(pAsciiTxFifo);
            }
          }  
          if(0!=AsciiChar){       // We got something!
            LOOP_KEY_Set();     // Make sure loop keyer not holding us in space.
            BaudotCommandCheck(AsciiChar);  // See if it is part of a command    
            BitTimeCallCount=(uint32_t)(8000.0/UserConfig.BaudRate);    // How many calls for one bit time
            if(AsciiChar>0x60) AsciiChar-=0x20; // Shift lower case to upper case
            if(AsciiChar<sizeof(AsciiToBaudotTable)){    // Prevent running off end of array
              if(AsciiChar==0x1b){                      // Escape
                UartDest=CLI;                           // Go back to command interpreter
                while(0!=UART1_ReadCountGet()){         // Dump buffer with data from usb uart
                  UART1_Read(&AsciiChar,1);    // Get 1 character to AsciiChar
                }
                PrintString("\r\n\nReturning to CLI\r\n\n>");
              }else{
                BaudotChar=AsciiToBaudotTable[AsciiChar]; // Get baudot code
                if(BaudotChar!=0){        // Valid character
                  if((0x80==(0x80 & BaudotChar))  && (Figs==0)){
                    state=200;      // Go send FIGS
                  }else{
                    if((0== (0x80 & BaudotChar)) && (Figs==1)){
                      state=300;      // Go send LTRS
                    }else{
                      state=100;       // Go send character
                    }  
                  }
                } // end char!=0  
              } // end else not escape
            }
          }// end if have character
          break;
        case 100:                 // Send BaudotChar
          if(BaudotChar==4){      // Space character
            Figs=0;               // Assume printer does unshift on space
          }
          BaudotUartTxOut=0;      // Begin start bit
          state++;                // Come to send D0
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 101:                 // Send D0
          BaudotUartTxOut = (1 & BaudotChar); // Output non-zero if D0 high
          state++;
          CallCount=BitTimeCallCount;
          break;
        case 102:                 // Send D1
          BaudotUartTxOut = (2 & BaudotChar);
          state++;
          CallCount=BitTimeCallCount;
          break;
        case 103:                 // Send D2
          BaudotUartTxOut = (4 & BaudotChar);
          state++;
          CallCount=BitTimeCallCount;
          break;
        case 104:                 // Send D3
          BaudotUartTxOut = (8 & BaudotChar);
          state++;
          CallCount=BitTimeCallCount;
          break;
        case 105:                 // Send D4
          BaudotUartTxOut = (0x10 & BaudotChar);
          state++;
          CallCount=BitTimeCallCount;
          break;
        case 106:                // Send stop bit
          BaudotUartTxOut = 1;
          if((BaudotChar==0x08)&&(UserConfig.UsbToBaudotAppendLf!=0)){   // It was CR, append LF if user wants it.
            if(UserConfig.UsbEcho!=0) PrintChar('\n');      // Send newline to terminalif we are echoing
            BaudotChar=2;         // Baudot line feed
            state=100;            // Go send it
            CallCount=10*BitTimeCallCount; // Give CR extra time
            break;                // Get out here before setting CallCount for normal stop bit
          }else{
            state=0;              // Go back to waiting for next character
          }  
          CallCount = 3 * BitTimeCallCount / 2; // 1.5 stop bits
          break;
        case 200:               // Send FIGS
          BaudotUartTxOut=0;      // Begin start bit
          state++;                // Come to send D0
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 201:  
          BaudotUartTxOut=1;      // D0
          state++;                // Come to send D1
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 202:  
          BaudotUartTxOut=1;      // D1
          state++;                // Come to send D2
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 203:  
          BaudotUartTxOut=0;      // D2
          state++;                // Come to send D3
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 204:  
          BaudotUartTxOut=1;      // D3
          state++;                // Come to send D4
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 205:  
          BaudotUartTxOut=1;      // D4
          state++;                // Come to send stop bit
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 206:               // Send stop bit
          BaudotUartTxOut = 1;
          Figs=1;               // Flag that we are in figs
          state=100;              // Go send the character needing FIGS
          CallCount = 13 * BitTimeCallCount / 2; // 5 data, 1.5 stop  = 3/2 bit times
          break;     
        case 300:               // Send LTRS  
          BaudotUartTxOut=0;      // Begin start bit
          state++;                // Come to send D0
          CallCount=BitTimeCallCount; // Come back in one bit time
          break;
        case 301:  
          BaudotUartTxOut=1;      // D0 through D4 and stop, all mark
          state=100;              // Bo send character that needed LTRS
          Figs=0;                 // Flag that we are in LTRS
          CallCount=13*BitTimeCallCount/2; // Come back in one bit time
          break;
      } // end switch
    } // End else CallCount timeout
  }  // End destination check
}  
  
  
  