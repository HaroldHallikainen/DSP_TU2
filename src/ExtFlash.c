// ExtFlash.c
#include <stdint.h>
#include "definitions.h"                // SYS function prototypes
#include "main.h"             // PrintString for error messages
#include "ExtFlash.h"

#if 0
void PageProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata); // write a number of bytes to external flash.  
uint8_t ReadExtFlash(uint32_t addr);	  // read the external flash. 
uint8_t ReadExtFlashStatus(void);   // Write data to the external flash status register
void WriteExtFlashStatus(uint8_t data); // Write data to the external flash status register. 
uint32_t ReadExtFlashID(void);          // Read the ID of the external flash. For M25P16, should read 0x20201510.
void SectorEraseExtFlash(uint32_t addr);// Erase the sector containing addr. A sector is 256 pages, and a page is 256 bytes. We can program a page at a time, but erase a sector at a time
void ExtFlashCs(uint8_t cs);// Set or clear the chip select line. We're using a function call so it's a little slower because the minimum
// CS disable time is 500ns.
void InitializeSpi(void);   // Initialize SPI for the external flash 
void ReadExtFlashArray(uint32_t addr, uint8_t *pdata, uint32_t NumBytes); // Read NumBytes starting at addr and put them in ram at address pointed to by pdata
uint8_t SwSpiExchange(uint8_t data);  // send and get spi from bitmap flash
uint32_t StreamProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata);// Program a stream of data to external flash. Breaks in to 256 byte pages and 65kByte sectors. Returns the next available address in external flash

#endif

uint8_t Spi3Exchange(uint8_t data){
  // Pass data to SPI3 and return result
  while(SPI3_IsTransmitterBusy());     // Loop 'til ready
  SPI3BUF=(data);                     // Pass om data
  while(SPI3_IsTransmitterBusy());     // Loop 'til transmission complete
  return(SPI3BUF);                    // Return what was shifted in as we shifted data out
}


void WaitForExtFlashReady(void){
uint32_t LoopCount=100000;  
  while(ReadExtFlashStatus() & 0x01){ // loop here until write completes
    if(0==(LoopCount--)){
      PrintString("WaitForExtFlashReady timed out\r\n");
      break;      // get out of while loop
    }
  }
}




void SectorEraseExtFlash(uint32_t addr){
// Erase the sector containing addr. A sector is 4 kB. 
// We can program a page (256 bytes) at a time, but erase a sector at a time. 
  union{
    uint32_t u32;
    uint8_t u8[4];
  }LocalAddr;
  int n;
  WaitForExtFlashReady();     // wait here while write in progress
  WriteExtFlashStatus(0b10);  // enable write and remove any block protection
  WaitForExtFlashReady();     // wait here while write in progress
  LocalAddr.u32=addr;         // local copy of address
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0x06);         // enable write
  FLASH_CSn_Set();            // chip select high
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0x20);         // 4 kB sector erase instruction
  for(n=1;n<4;n++){           // send the address (24 bits) big endian
    Spi3Exchange(LocalAddr.u8[3-n]);  // send byte. Byte sent as index 2, 1, 0 or msb to lsb
  }
  FLASH_CSn_Set();            // chip select high
}



void BulkEraseExtFlash(void){
// This erases the whole chip.
  WaitForExtFlashReady();     // wait here while write in progress
  WriteExtFlashStatus(0b10);  // enable write and remove any block protection
  WaitForExtFlashReady();     // wait here while write in progress
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0x06);       // enable write
  FLASH_CSn_Set();            // chip select high
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0xc7);       // bulk erase instruction
  FLASH_CSn_Set();            // chip select high
}



uint32_t StreamProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata){
// Program a stream of data to external flash. Breaks in to 256 byte pages and 4 kByte sectors. 
//  Returns the next available address in external flash
uint32_t BytesLeftOnPage;
    while(NumBytes){
    if((addr & 4095)==0){   // we're on a 4k boundary, erase the sector
      WaitForExtFlashReady();     // wait here while write in progress
      SectorEraseExtFlash(addr);
      WaitForExtFlashReady();     // wait here while write in progress
    }
    BytesLeftOnPage=(uint32_t)256-(addr&0xff); // 
    if(NumBytes>BytesLeftOnPage){         // more than will fit on this page 
      PageProgramExtFlash(addr,BytesLeftOnPage,pdata);     // program the rest of the page
      addr+=(uint32_t)BytesLeftOnPage;      // increment address to point to next one we'll program
      pdata+=BytesLeftOnPage;             // move data pointer that many bytes also
      NumBytes-=BytesLeftOnPage;
    }else{
      PageProgramExtFlash(addr,NumBytes,pdata);
      addr+=(uint32_t)NumBytes;             // advance the address
      pdata+=NumBytes;                    // advance data pointer (not really needed, but be constent)
      NumBytes=0;                         // we just sent the last of them
    }
  }//end while
  return(addr);     // send back the next available address
}



void PageProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata){
// Program NumBytes pointed to by pdata at addr
  union{
    uint32_t u32;
    uint8_t u8[4];
  }LocalAddr;
  uint32_t n;
  WaitForExtFlashReady();     // wait here while write in progress
  WriteExtFlashStatus(0b10);  // enable write and remove any block protection
  WaitForExtFlashReady();     // wait here while write in progress
  LocalAddr.u32=addr;         // local copy of address
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0x06);         // enable write
  FLASH_CSn_Set();            // chip select high
  FLASH_CSn_Clear();          // Chip select low
  Spi3Exchange(0x02);         // page program instruction
  for(n=1;n<4;n++){           // send the address (24 bits) big endian
    Spi3Exchange(LocalAddr.u8[3-n]);  // send byte. Byte sent as index 2, 1, 0 or msb to lsb
  }
  n=NumBytes;
  while(n--){                 // send n bytes
    Spi3Exchange(*pdata++);   // send the data and bump the pointer
  }
  FLASH_CSn_Set();            // chip select high
}





uint8_t ReadExtFlash(uint32_t addr){
// Read a byte from the external flash. 
  uint8_t result;
  union{
    uint32_t u32;
    uint8_t u8[4];
  }LocalAddr;
  uint8_t n;
  LocalAddr.u32=addr;         // make a local copy of the address
  WaitForExtFlashReady();     // wait here while write in progress
  FLASH_CSn_Clear();      // Chip select low
  Spi3Exchange(0x03);       // read instruction
  for(n=1;n<4;n++){           // send the address (24 bits) big endian
    Spi3Exchange(LocalAddr.u8[3-n]);  // send byte. Byte sent as index 2, 1, 0 or msb to lsb
  }
  result=Spi3Exchange(0);    // read the data we read
  FLASH_CSn_Set();     // chip select high
  return(result);
}



void ReadExtFlashArray(uint32_t addr, uint8_t *pdata, uint32_t NumBytes){
  // read the external flash. Read NumBytes starting at addr and put them in ram at address pointed to by pdata. 
  union{
    uint32_t u32;
    uint8_t u8[4];
  }LocalAddr;
  uint8_t *pDataLocal;
  uint8_t n;
  LocalAddr.u32=addr;         // make a local copy of the address
  pDataLocal=pdata;
  WaitForExtFlashReady();     // wait here while write in progress
  FLASH_CSn_Clear();      // Chip select low
  Spi3Exchange(0x03);         // read instruction
  for(n=1;n<4;n++){           // send the address (24 bits) big endian
    Spi3Exchange(LocalAddr.u8[3-n]);  // send byte. Byte sent as index 2, 1, 0 or msb to lsb
  }
  while(NumBytes--){
    *pDataLocal++=Spi3Exchange(0);   // get the data, save it to pdata and bump the pointer
  }
  FLASH_CSn_Set();     // chip select high
}



uint8_t ReadExtFlashStatus(){
// Read the status register of the external flash. 
  uint8_t result;
  FLASH_CSn_Clear();      // Chip select low
  Spi3Exchange(0x05);       // read status register instruction
  result=Spi3Exchange(0);   // get the result
  FLASH_CSn_Set();     // chip select high
  return(result);
}

void WriteExtFlashStatus(uint8_t data){
// Write data to the external flash status register. BaseAddr is the JSD100 decoded address we'll use to select the particular flash chip,
// as specified in Jsd100BaseAddr.h. For example, pass in Flash0 (0x5400) to select Flash0
  FLASH_CSn_Clear();      // Chip select low
  Spi3Exchange(0x01);       // write status register instruction
  Spi3Exchange(data);       // send what we want to write
  FLASH_CSn_Set();     // chip select high
}


uint32_t ReadExtFlashID(void){
// Read the ID of the external flash. . 
  union{
    uint32_t u32;
    uint8_t u8[4];
  }result;
  int n;
  result.u8[3]=0;         // msb is 0
  FLASH_CSn_Clear();      // Chip select low
  Spi3Exchange(0x9f);     // read ID instruction
  for(n=2;n>=0;n--){
    result.u8[n]=Spi3Exchange(0); // get the result and make first bye msb
  }
  FLASH_CSn_Set();     // chip select high
  return(result.u32);
}

