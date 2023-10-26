// menu.c

// Handle display menus

#include  "PollEncoder.h"       // Get encoder count
#include  "Unifont.h"       // Draw text
#include  "PollSwitchesLeds.h"
#include  "display.h"
#include "UserConfig.h"

int MenuNumber=0;     // Menu to display. Zero is xyScope
int MenuSelection=0;  // Which line of menu currently selected.


char MenuText[][8][17]={
  // First index is menu number-1. Menu numbers start at 1 since 0 is no menu
  // which shows the xyScope. Second is line number with 0 being title,
  // Third being character in a line. The display can display 8 lines, each
  // including 16 characters, not counting control characters.
  { // MenuText[0]
    "  DSP TU Menu   ",
    "Mark Hold       ",
    "Autostart       ",
    "Shift           ",
    "Input BPF       ",        
    "AGC, Limiter    ",
    "More            ",
    "Exit            "        
  },
  { // MenuText[1] 
    "  DSP TU Menu   ",
    "Baud Rate       ",        
    "Tone Filters    ",
    "DTC             ",
    "Loop            ",
    "                ",
    "More            ",
    "Exit            "        
  },  
  { // MenuText[2] 
    " Mark Hold Menu ",
    "Threshold       ",        
    "Hold Time       ",
    "                ",
    "                ",
    "                ",
    "                ",
    "Exit            "        
  }    
};

void DrawMenu(void){
  // Draw each menu line making selected line black on white
  int LineNum;
  if(0==MenuNumber) return;   // Get out if no menu selected
  DisplayString("\f\017");    // Top of screen, white on black text
  DisplayString(MenuText[MenuNumber-1][0]); // Show title
  for(LineNum=1;LineNum<8;LineNum++){
    if(MenuSelection+1==LineNum){         // This line selected
      DisplayString("\016");              // Black on white
    }else{
      DisplayString("\017");              // White on black text
    }
    DisplayString("\r\n");                // Start new line
    DisplayString(MenuText[MenuNumber-1][LineNum]);  // Show the line
  }
}

void PollMenu(void){
  // Update and act on menu selections
  static int OldS7=1;     // Previous state of encoder switch
  static int adjusting=0; // Non-zero if we are adjusting the selected parameter
  switch(MenuNumber){
    case 0:         // Currently showing xy scope
      if(OldS7!=Switches.S7){     // Switch state changed
        OldS7=Switches.S7;        // Remember new value
        EncoderCount=0;           // Clear it so we can see changes
        if(0==OldS7) MenuNumber=1; // Advance to first menu
        DrawMenu();               // Display it
      }
      break;
    case 1:             // Showing menu 1
      if(EncoderCount!=0){
        MenuSelection+=EncoderCount;    // Change selected line
        if(MenuSelection<0) MenuSelection=6;  // Wrap around
        MenuSelection=MenuSelection%7;  // Wrap on overflow
        EncoderCount=0;
        DrawMenu();                     // Redraw the menu
      }
      if(OldS7!=Switches.S7){           // Switch changed
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                     // Mark Hold
              MenuNumber=3;             // Go to mark hold menu
              DrawMenu();
              break;
            case 5:                     // More
              MenuNumber=2;             // Go to next menu
              MenuSelection=0;          // First line
              DrawMenu();
              break;
            case 6:                     // Exit
              MenuNumber=0;             // Back to scope display
              MenuSelection=0;          // Start at top next time
              DisplayClear();
              break;
          }
        }
      }
      break;
    case 2:         // Showing menu 2
      if(EncoderCount!=0){
        MenuSelection+=EncoderCount;    // Change selected line
        if(MenuSelection<0) MenuSelection=6;  // Wrap around
        MenuSelection=MenuSelection%7;  // Wrap on overflow
        EncoderCount=0;
        DrawMenu();                     // Redraw the menu
      }
      if(OldS7!=Switches.S7){           // Switch changed
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 5:                     // More MAY CHANGE
              MenuNumber=2;             // Go to next menu
              MenuSelection=0;          // First line
              DrawMenu();
              break;
            case 6:                     // Exit
              MenuNumber=1;             // Back to first menu
              MenuSelection=6;          // Point to exit in case they want to exit all the way
              DrawMenu();
              break;
          }
        }
      }
      break; 
    case 3:         // Showing menu 3 (Mark Hold)
      if(EncoderCount!=0){
        if(adjusting==0){           // Not adjusting, change lines
          MenuSelection+=EncoderCount;    // Change selected line
          if(MenuSelection<0) MenuSelection=6;  // Wrap around
          MenuSelection=MenuSelection%7;  // Wrap on overflow
          EncoderCount=0;
          DrawMenu();                     // Redraw the menu
        }else{
          switch(MenuSelection){          // Adjust based on selected line
            case 0:                       // Adjusting mark hold threshold
              UserConfig.MarkHoldThresh+=.001*(double)EncoderCount; // Adjust it
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",UserConfig.MarkHoldThresh);
              DisplayString(StringBuf); // Send updated line
              break;
            case 1:                       // Adjusting hold time
              break;
          }
        }  
      }
      if(OldS7!=Switches.S7){           // Switch changed
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                       // Threshold. Rewrite line with portion highlighted. Use \f\n to get to second line
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",UserConfig.MarkHoldThresh);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\016Threshold  \017%.3f",UserConfig.MarkHoldThresh);           
              }
              DisplayString(StringBuf);
              break;              
            case 6:                     // Exit
              MenuNumber=1;             // Back to first menu
              MenuSelection=6;          // Point to exit in case they want to exit all the way
              DrawMenu();
              break;
          }
        }
      }
      break; 
       

    default:
      MenuNumber=0;
      break;
  }
}           

