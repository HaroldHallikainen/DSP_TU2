

#ifndef fifo8_h
#define fifo8_h

// fifo8.h

#include <stdint.h>
#include <stdlib.h>   
#include <string.h>




// Define the structure for an 8 bit wide fifo
typedef struct {
  size_t FifoSize;      // how big this fifo is
  uint32_t IndexIn;	// Put next byte at this index, then increment
  uint32_t IndexOut;	// take next byte from this index, then increment
  uint32_t BufFull;	// how many words we have in the fifo
  uint32_t BufFree;     // how many words we have left
  char buffer[];
}Fifo8_t;

// Function Prototypes
Fifo8_t *Fifo8Create(uint32_t size);	// create and initialize the 8 bit wide Fifo
uint16_t Fifo8Put(Fifo8_t *fifo, char data);	// Put data in the specified fifo. Return 0 on success. Nonzero on error.
char Fifo8Get(Fifo8_t *fifo);         // Get a character from the specified fifo. Returns 0 if nothing available. 
uint32_t Fifo8Full(Fifo8_t *fifo);          // How many words are in the fifo
uint32_t Fifo8Free(Fifo8_t *fifo);          // How many words are available in the fifo
void Fifo8Clear(Fifo8_t *fifo);            // Clear the fifo



#endif



        
