// display.h

#ifndef display_h
#define display_h


void DisplayInit(void); // Initialize display and related fifo.
void DisplayPoll(void); // If display SPI ready, and something in fifo, send it
void DisplayWriteNextPixel(uint8_t r, uint8_t g, uint8_t b);    // Write next pixel in display RAM.
void DisplaySetXY(uint8_t x, uint8_t y);
void DisplayWritePixel(uint8_t x, uint8_t, uint8_t r, uint8_t g, uint8_t b);
void DisplayClear(void); // Write black pixels to entire display
 


#endif