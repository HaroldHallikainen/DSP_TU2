// ExtFlash.h

// Read/Write flash on SPI3

#ifndef ExtFlash_h
#define ExtFlash_h

void PageProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata); // write a number of bytes to external flash.  
uint8_t ReadExtFlash(uint32_t addr);	  // read the external flash. 
uint8_t ReadExtFlashStatus(void);   // Write data to the external flash status register
void WriteExtFlashStatus(uint8_t data); // Write data to the external flash status register. 
uint32_t ReadExtFlashID(void);          // Read the ID of the external flash. For M25P16, should read 0x20201510.
void SectorEraseExtFlash(uint32_t addr);// Erase the sector containing addr. A sector is 4 k bytes. We can program a page (256 bytes)at a time, but erase a sector at a time
void ReadExtFlashArray(uint32_t addr, uint8_t *pdata, uint32_t NumBytes); // Read NumBytes starting at addr and put them in ram at address pointed to by pdata
uint32_t StreamProgramExtFlash(uint32_t addr, uint32_t NumBytes, uint8_t *pdata);// Program a stream of data to external flash. Breaks in to 256 byte pages and 65kByte sectors. Returns the next available address in external flash
void PrintExtFlash(uint32_t addr); // Print external flash from addr until erased byte read.
 

#endif