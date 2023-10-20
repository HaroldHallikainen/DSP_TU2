// Unifont.h

#ifndef Unifont_h
#define Unifont_h

void DisplayCharacter(char c);   // Get bitmap for character and send to display.
void DisplayString(char* string); // Send null terminated string to display
void UnifontInit(void); // Initializes a fifo for text to send to display

#endif
