// xyScope.c

// Simulate an XY scope as a tuning indicator

#include "definitions.h"                // Defines types like uint8_t
#include "display.h"
#include "main.h"                   // typedef for smp_type

void xyScope(smp_type x, smp_type y){
#define OldArraySize 1024
    static uint8_t oldX[OldArraySize]={0};
    static uint8_t oldY[OldArraySize]={0};
    static uint16_t OldIndex=1;     // Circular buffer where we make oldes black and newest white
    static uint16_t NewIndex=0;
    static smp_type scale=64.0;    // How many pixels 1.0 represents. Would be 64 if peak input was 1.0
    uint8_t newX, newY;
    newX=64+(uint8_t)(scale*x);   // 0.0 gives 64, -1=0, +1=128
    newY=64+(uint8_t)(scale*y);
    if(newX>127) newX=127;
    if(newY>127) newY=127;
    if((oldX[OldIndex]!=newX)||(oldY[OldIndex]!=newY)){
      DisplayWritePixel(oldX[OldIndex], oldY[OldIndex], 0, 0, 0); // make previous pixel black
      DisplayWritePixel(newX, newY, 255,255,255); // Write white pixel at new location
      OldIndex++;
      OldIndex=OldIndex % OldArraySize;
      NewIndex++;
      NewIndex=NewIndex % OldArraySize;
      oldX[NewIndex]=newX;                                // Remember new values
      oldY[NewIndex]=newY;
    }  
}