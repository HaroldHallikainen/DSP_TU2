// fifo16.c

// Create and interface to a 16 bit wide fifo. NOT INTERRUPT SAFE!

// fifo16.c 

// Simple circular buffer fifo

#include "fifo16.h"



Fifo16_t *Fifo16Create(uint32_t size){
// Create a FIFO of the specified size. Return a pointer to it.
Fifo16_t *pResult;
  pResult=malloc((2*size)+20);    // fifo size plus space for size, indices, counters
  if(pResult){                // it was created ok
    pResult->FifoSize=size;   // remember size
    pResult->IndexIn=0;       // start at beginning
    pResult->IndexOut=0;
    pResult->BufFull=0;    // buf is empty
    pResult->BufFree=size;
  }
  return(pResult);
}

uint16_t Fifo16Put(Fifo16_t *fifo, uint16_t data){
	uint16_t result;
	// Put data in the specified fifo. Return 0 on success. Nonzero on error.
	if(fifo->BufFree){						// we have room

          fifo->buffer[fifo->IndexIn++]=data;     // save data 
        fifo->IndexIn=fifo->IndexIn % fifo->FifoSize;
		fifo->BufFull++;						// add one to buffer contents
		fifo->BufFree--;						// and subtract one from how many are free
		result=0;											// exit error free
	}else{														// no room
	  result=1;
    } 
  	return(result);  
}

uint16_t Fifo16Get(Fifo16_t *fifo){
	// Get a word from the specified fifo. Returns 0 if nothing available
  uint16_t result;	
  if(fifo->BufFull){
    result=fifo->buffer[fifo->IndexOut++];	// return the character
    fifo->IndexOut=fifo->IndexOut % fifo->FifoSize;
    fifo->BufFull--;						// subtract one from contents

    fifo->BufFree++;							// add one to how many are free
  }else{													// fifo is empty
    result=0;   // give back nothing and change nothing
  }
  return(result);
}		    	  	   

void Fifo16Clear(Fifo16_t *fifo){
// dump fifo contents
  fifo->IndexIn=0;
  fifo->IndexOut=0;
  fifo->BufFull=0;
  fifo->BufFree=fifo->FifoSize;
}  
 
uint32_t Fifo16Full(Fifo16_t *fifo){
// How many words are in the fifo
  return(fifo->BufFull);
}

uint32_t Fifo16Free(Fifo16_t *fifo){
// How many words are available in the fifo
  return(fifo->BufFree);
} 

