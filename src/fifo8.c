// fifo8.c
// Create and access 8 bit wide FIFOs.



#include "fifo8.h"



Fifo8_t *Fifo8Create(uint32_t size){
// Create a FIFO of the specified size. Return a pointer to it.
Fifo8_t *pResult;
  pResult=malloc((size)+20);    // fifo size plus space for size, indices, counters
  if(pResult){                // it was created ok
    pResult->FifoSize=size;   // remember size
    pResult->IndexIn=0;       // start at beginning
    pResult->IndexOut=0;
    pResult->BufFull=0;    // buf is empty
    pResult->BufFree=size;
  }
  return(pResult);
}

uint16_t Fifo8Put(Fifo8_t *fifo, char data){
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

uint16_t Fifo8PutString(Fifo8_t *fifo, char *string){
  // Put a string in the specified FIFO. Return non-zero if we did not have enough room
  uint16_t result=0;
  while(*string!=0){    // Loop until null end of string indicator
    result+=Fifo8Put(fifo, *string);  // Send a character to the fifo
    string++;                 // Point to next character
  }
  return result;  // Return sum of errors from Fifo8Put
}

char Fifo8Get(Fifo8_t *fifo){
	// Get a char from the specified fifo. Returns 0 if nothing available
  char result;	
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

void Fifo8Clear(Fifo8_t *fifo){
// dump fifo contents
  fifo->IndexIn=0;
  fifo->IndexOut=0;
  fifo->BufFull=0;
  fifo->BufFree=fifo->FifoSize;
}  
 
uint32_t Fifo8Full(Fifo8_t *fifo){
// How many words are in the fifo
  return(fifo->BufFull);
}

uint32_t Fifo8Free(Fifo8_t *fifo){
// How many bytes are available in the fifo
  return(fifo->BufFree);
} 


