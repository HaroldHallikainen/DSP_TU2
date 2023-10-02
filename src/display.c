// display.c

#include "fifo16.h"        // FIFO to old SPI data going to display
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "main.h"                       // access to Timer2TimeoutCounter for delays
#include "display.h"


/*
 * This code drives a 128x128 RGB pixel display with an SSD1351 controller.
 * The display is https://www.aliexpress.com/item/2255799949791867.html which
 * comes with NO documentation. It appears to be very similar to the display
 * at https://www.buydisplay.com/full-color-1-5-inch-arduino-raspberry-pi-oled-display-module-128x128
 * which does include sample code. The 8051 code at 
 * https://www.buydisplay.com/8051/ER-OLEDM015-1C_8051_Tutorial.zip proved most
 * useful. Even that has skimpy documentation.
 * 
 * Both the BuyDisplay and my code use the 8 bit SPI interface since the PIC
 * does not support 9 bit transmission. 8 bit mode makes use of the Data/Commandn
 * line. 
 * 
 * To avoid having the code wait around for SPI transmissions, data is put
 * in a 16 bit wide FIFO for transmission when the SPI is available. The
 * FIFO is 16 bits wide to carry the 8 bit data, the state of Data/Commandn ,
 * and the chip select. It is interesting that the SSD1351D shows chip select
 * being held low for the command and the following parameters while the 
 * BuyDisplay code drives chip select high after each byte. The code here
 * follows the SSD1351 method of leaving chip select low through the whole
 * command and data.
 * 
 * Not documented anywhere is the coding of color. The display uses 16 bits
 * per pixel for color with the following bit fields:
 * b15..b11 - Red
 * b10..b5  - Green
 * b4..0    - Blue
 */

#define DisplayFifoSize 1024 //3000

union DisplayWord{
    uint16_t word;
    struct{
      uint8_t data;
      uint8_t ChipSelect:7;   // binary coded chip select. Display is 1. 0 is deselect
      uint8_t CommandBit:1;   // 1=command, 0=data (backwards from pin)
    };  
};

static Fifo16_t *DisplayFifo;

void DisplayFifoWrite(uint8_t chip, uint8_t CommandFlag, uint8_t data){
  union DisplayWord FifoData;
  FifoData.ChipSelect=chip;      // Which chip we are talking to (display=1)
  FifoData.CommandBit=CommandFlag;   // True if command (DataCmdn will be low)
  FifoData.data=data;                // 8 bit data to send
  while(Fifo16Free(DisplayFifo)<5) DisplayPoll(); // Let Fifo drain catch up. Typically on display clear
  Fifo16Put(DisplayFifo,FifoData.word);  // Put result in fifo
}

void ComWrite(uint8_t command){
// Put a byte in the fifo with CommandFlag true and chip=1 (display)
  DisplayFifoWrite(0,0,0);      // Drive CSn high before each command  
  DisplayFifoWrite(1,1,command);    
}

void DataWrite(uint8_t data){
// Put a byte in the fifo with CommandFlag false and chip=1 (display)
  DisplayFifoWrite(1,0,data);    
}

void DisplayCSN(void){
// Put a dummy byte in the fifo with chip=0 to disable chip select
  DisplayFifoWrite(0,0,0);    
}

void DisplayInit(void){
  DisplayFifo=Fifo16Create(DisplayFifoSize);    // Create a FIFO 16 bits wide
  if(NULL==DisplayFifo){
    PrintString("Insufficient heap for DisplayFifo\r\n");
  }
  DISPLAY_CSn_Set();
  DisplayCSN();                      // Chip select high. Put in fifo
  Timer2TimeoutCounter=800;          // Counts down at 80 kHz, 12.5 us per click
  while(Timer2TimeoutCounter>0);       // Delay 1ms - changed to 10ms
  DISPLAY_RESETn_Clear();            // Display reset line low
  Timer2TimeoutCounter=2;           // Delay 12.5 to 25us, 2us min
  while(Timer2TimeoutCounter>0);       // Delay 1ms
  DISPLAY_RESETn_Set();              // Display reset line high
  Timer2TimeoutCounter=16000;            // Wait about 200ms - was 212us
  while(Timer2TimeoutCounter>0);
  // Below code from https://www.buydisplay.com/8051/ER-OLEDM015-1C_8051_Tutorial.zip
  // Note that that code has CSn go high between each byte while the datasheet at
  // https://www.buydisplay.com/download/ic/SSD1351.pdf has CSn stay low through the entire 
  // command and data byte sequence. ComWrite() puts a code in the FIFO to drive CSn high.
  // This is then followed by the command which drives CSn low.
  ComWrite(0xfd); // Set Command Lock
  DataWrite(0xb1);
  ComWrite(0xae); // Display off
  ComWrite(0x15); //set column
  DataWrite(0x00);
  DataWrite(0x7f);
  ComWrite(0x75); //set row
  DataWrite(0x00);
  DataWrite(0x7f);
  ComWrite(0xa0); // Set Re-map / Color Depth 
  DataWrite(0x65);				//   Color sequence is swapped: C .. B .. A
  ComWrite(0xa2); // Set display offset
  DataWrite(0x00);
  ComWrite(0xa6); // Normal display
  ComWrite(0xab); // Set Function selection
  DataWrite(0x01);
  ComWrite(0xaf); // Set Sleep mode
  ComWrite(0xb1); // Set pre & dis_charge
  DataWrite(0x32);
  ComWrite(0xb3); // clock & frequency
  DataWrite(0xf1);
  ComWrite(0xb4); // Set Segment LOW Voltage
  DataWrite(0xa0);
  DataWrite(0xb5);
  DataWrite(0x55);
  ComWrite(0xb5); // Set GPIO 0 to 1  turn on DC/DC
  DataWrite(0x0b);
  ComWrite(0xb6); // Set Second Pre-charge Period
  DataWrite(0x01);
  /* - Try without gamma table
  ComWrite(0xb8); //Set Gray Table
  DataWrite(0); //0
  DataWrite(2); //1
  DataWrite(3); //2
  DataWrite(4); //3
  DataWrite(5); //4
  DataWrite(6); //5
  DataWrite(7); //6
  DataWrite(8); //7
  DataWrite(9); //8
  DataWrite(10); //9
  DataWrite(11); //10
  DataWrite(12); //11
  DataWrite(13); //12
  DataWrite(14); //13
  DataWrite(15); //14
  DataWrite(16); //15
  DataWrite(17); //16
  DataWrite(18); //17
  DataWrite(19); //18
  DataWrite(21); //19
  DataWrite(23); //20
  DataWrite(25); //21
  DataWrite(27); //22
  DataWrite(29); //23
  DataWrite(31); //24
  DataWrite(33); //25
  DataWrite(35); //26
  DataWrite(37); //27
  DataWrite(39); //28
  DataWrite(42); //29
  DataWrite(45); //30
  DataWrite(48); //31
  DataWrite(51); //32
  DataWrite(54); //33
  DataWrite(57); //34
  DataWrite(60); //35
  DataWrite(63); //36
  DataWrite(66); //37
  DataWrite(69); //38
  DataWrite(72); //39
  DataWrite(76); //40
  DataWrite(80); //41
  DataWrite(84); //42
  DataWrite(88); //43
  DataWrite(92); //44
  DataWrite(96); //45
  DataWrite(100); //46
  DataWrite(104); //47
  DataWrite(108); //48
  DataWrite(112); //49
  DataWrite(116); //50
  DataWrite(120); //51
  DataWrite(125); //52
  DataWrite(130); //53
  DataWrite(135); //54
  DataWrite(140); //55
  DataWrite(145); //56
  DataWrite(150); //57
  DataWrite(155); //58
  DataWrite(160); //59
  DataWrite(165); //60
  DataWrite(170); //61
  DataWrite(175); //62
  DataWrite(180); //63
  */
  ComWrite(0xbb); // Set pre-charge voltage of color A B C
  DataWrite(0x17);
  ComWrite(0xbe); // Set VcomH
  DataWrite(0x05);
  ComWrite(0xc1); // Set contrast current for A B C
  DataWrite(0x88);
  DataWrite(0x70);
  DataWrite(0x88);
  ComWrite(0xc7); // Set master contrast
  DataWrite(0x0f);
  ComWrite(0xca); // Duty
  DataWrite(0x7f);
  ComWrite(0xaf); // Display on
  DisplayCSN();   // CSn high
}

void DisplayPoll(void){
    // If display SPI ready, and something in fifo, send it
    union DisplayWord FifoData;    // Parse fifo data here
    if(0==SPI1_IsTransmitterBusy()){ // SPI transmitter not busy
      if(Fifo16Full(DisplayFifo)){    // We have data to send
        FifoData.word=Fifo16Get(DisplayFifo); // Get a word from the fifo
        switch(FifoData.ChipSelect){        // allow for a bunch of chip selects
          case 1:                         // talking to display
            DISPLAY_CSn_Clear();             // Make chip select low
            if(FifoData.CommandBit){        // This is a command
              DISPLAY_DATA_CMDn_Clear();      // Pin low for command
            }else{ 
              DISPLAY_DATA_CMDn_Set();       // and high for data
            }
            SPI1BUF=(uint32_t)FifoData.data;    // Send the byte
           break;
          case 0:
            DISPLAY_CSn_Set();               // chip select high
        }    
      }  
    }
}
uint8_t ColorHi=0x40, ColorLo=0;
void DisplayWriteNextPixel(uint8_t r, uint8_t g, uint8_t b){
    // Write next pixel in display RAM.
    union{
        uint8_t byte[2];
        struct{
            uint8_t blue:5;
            uint8_t green:6;
            uint8_t red:5;
        };
    }color;
    color.byte[0]=0;
    color.byte[1]=0;
    color.red=r>>3;     // Align msb
    color.green=g>>2;
    color.red=b>>3;
    ComWrite(0x5c);     // write to RAM command
    DataWrite(color.byte[1]);       // Write high byte of color
    DataWrite(color.byte[0]);       // and low byte
    DisplayCSN();       // put chip deselect in fifo
}

void DisplaySetXY(uint8_t x, uint8_t y){
    ComWrite(0x15);
    DataWrite(x);       // Set column address
    DataWrite(127);     // End column. Use default. Wraps around on this column
    ComWrite(0x75);     // Note ComWrite sets CSN high before setting low to start command
    DataWrite(y);       // Set row address
    DataWrite(127);
    DisplayCSN();
}

void DisplayWritePixel(uint8_t x, uint8_t y, uint8_t r, uint8_t g, uint8_t b){
    DisplaySetXY(x,y);
    DisplayWriteNextPixel(r,g,b);
    DisplayCSN();
}

void DisplayClear(void){
    // Write black pixels to entire display
    int n;
    DisplaySetXY(0,0);
    for(n=0;n<128*128;n++){
         DisplayWriteNextPixel(0,0,0);
    }    
    DisplayCSN();
}
