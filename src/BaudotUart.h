#ifndef BaudotUart_h
#define BaudotUart_h

#include <stdint.h>         // int_t types defined here
#include "definitions.h"    // SYS function prototypes like peripheral library
#include <stdbool.h>        // Defines true
#include "fifo8.h"      // Buffer locally generated ascii for transmission


extern uint32_t CharCount;   // How many good start bits we got
extern uint32_t BadStopBitCount; // How many bad stop bits we got
extern uint32_t SeqGoodChars; // Count how many good characters we got in sequence.
extern uint32_t Rcount;        // How many R characters we have received
extern uint32_t Ycount;        // and how many Y characters we have received
extern int BaudotUartTxOut;   // 0 for space, non-zero for mark
extern Fifo8_t  *pAsciiTxFifo;  // Fifo for stuff not coming in uart


void GenerateErrorCountReport(void);
  // Put receive error report in StringBuf and clear counters;

void BaudotCommandCheck(char c);    // Look for command sequences in data received over baudot uart

char BaudotUartRx(bool MS);// Call with MS being the state of the loop (mark=1). 
    // Receives Baudot and translate to ASCII. Returns ASCII character when available. Otherwise
  // returns null. Call at 8 kHz sample rate (every 125 us). 



void BaudotUartTx(void);    // If UartDest is modem, pull ASCII characters from the UART FIFO, convert to 
                             // Baudot, and make available to AFSK Generator. Call 8,000 times per second.

void BaudotUartInit(void);  // Actually initializes stuff to send error count report.


#endif