// fifo16.h

#ifndef fifo16_h
#define fifo16_h

#include <stdint.h>
#include <stdlib.h>   
#include <string.h>




// Define the structure for a 16 bit wide fifo
typedef struct {
    size_t FifoSize;          // how big this fifo is
	uint32_t IndexIn;			// Put next byte at this index, then increment
	uint32_t IndexOut;		// take next byte from this index, then increment
	uint32_t BufFull;			// how many words we have in the fifo
	uint32_t BufFree;     // how many words we have left
	uint16_t buffer[];
}Fifo16_t;

// Function Prototypes
Fifo16_t *Fifo16Create(uint32_t size);	// create and initialize the 15 bit wide Fifo
uint16_t Fifo16Put(Fifo16_t *fifo, uint16_t data);	// Put data in the specified fifo. Return 0 on success. Nonzero on error.
uint16_t Fifo16Get(Fifo16_t *fifo);         // Get a word from the specified fifo. Returns 0 if nothing available. 
uint32_t Fifo16Full(Fifo16_t *fifo);          // How many words are in the fifo
uint32_t Fifo16Free(Fifo16_t *fifo);          // How many words are available in the fifo
void Fifo16Clear(Fifo16_t *fifo);            // Clear the fifo



#endif
