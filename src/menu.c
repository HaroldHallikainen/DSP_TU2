// menu.c

// Handle display menus

#include  "PollEncoder.h"       // Get encoder count
#include  "Unifont.h"       // Draw text
#include  "PollSwitchesLeds.h"
#include  "display.h"
#include "UserConfig.h"
#include "filters.h"        // Allow filters to be adjusted in real time

int MenuNumber=0;     // Menu to display. Zero is xyScope
int MenuSelection=0;  // Which line of menu currently selected.


char MenuText[][8][17]={
  // First index is menu number-1. Menu numbers start at 1 since 0 is no menu
  // which shows the xyScope. Second is line number with 0 being title,
  // Third being character in a line. The display can display 8 lines, each
  // including 16 characters, not counting control characters.
  { // MenuText[0] - Menu 1
    "  DSP TU Menu   ",
    "Mark Hold       ",
    "Autostart       ",
    "Shift           ",
    "Input BPF       ",        
    "AGC, Limiter    ",
    "More            ",
    "Exit            "        
  },
  { // MenuText[1]  - Menu 2
    "  DSP TU Menu   ",
    "Baud Rate       ",        
    "Tone Filters    ",
    "DTC             ",
    "Loop            ",
    "                ",
    "More            ",
    "Exit            "        
  },  
  { // MenuText[2] - Menu 3 Mark Hold
    " Mark Hold Menu ",
    "Threshold       ",        
    "Disable Secs    ",
    "                ",
    "                ",
    "                ",
    "                ",
    "Exit            "        
  },
  { // MenuText[3] - Menu 4 Autostart
    " Autostart Menu ",
    "Threshold       ",        
    "Good Chars      ",
    "Hold Seconds    ",
    "                ",
    "                ",
    "                ",
    "Exit            " 
  },
 { // MenuText[4] - Menu 5 Shift
    "   Shift Menu   ",
    "Wide/Narrow     ",        
    "Center Hz       ",
    "Shift Hz        ",
    "                ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[5] - Menu 6 Input BPF
    " Input BPF Menu ",
    "Enable          ",        
    "                ",
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
  #define parameter      // We will be using this so we don't have to keep typing UserConfig stuff over and over 
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
            case 1:                     // Autostart
              MenuNumber=4;             // Go to autostart menu
              MenuSelection=0;          // Go to top line
              DrawMenu();
              break;
            case 2:                     // Shift
              MenuNumber=5;             // Select shift menu
              MenuSelection=0;          // Go to top of menu
              DrawMenu();
              break;
            case 3:                     // Input BPF
              MenuNumber=6;             // Go to input bpf menu
              MenuSelection=0;          // Select first line
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
          if(MenuSelection==2) MenuSelection=6;  // Skip blank lines
          if(MenuSelection==5) MenuSelection=1;
          MenuSelection=MenuSelection%7;  // Wrap on overflow
          EncoderCount=0;
          DrawMenu();                     // Redraw the menu
        }else{                            // Adjust value instead of changing menu lines
          switch(MenuSelection){          // Adjust based on selected line
            case 0:                       // Adjusting mark hold threshold
              #undef parameter
              #define parameter UserConfig.MarkHoldThresh
              parameter+=.001*(double)EncoderCount; // Adjust it
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",parameter);
              DisplayString(StringBuf); // Send updated line
              break;
            case 1:                       // Adjusting hold time
              #undef parameter 
              #define parameter UserConfig.MarkHoldDisableSecs
              parameter+=0.1*(double)EncoderCount; // Adjust it
              if(parameter<0.1) parameter=0.1; // Limit minimum
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\n\017Disable Secs \016%.1f",parameter);
              DisplayString(StringBuf); // Send updated line        
              break;
          }
        }  
      }
      if(OldS7!=Switches.S7){           // Switch changed
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                       // Threshold. Rewrite line with portion highlighted. Use \f\n to get to second line
              #undef parameter
              #define parameter UserConfig.MarkHoldThresh
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",parameter);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\016Threshold  \017%.3f",parameter);           
              }
              DisplayString(StringBuf);
              break;              
            case 1:                       // Release Time. Rewrite line with portion highlighted. Use \f\n\n to get to third line
              #undef parameter
              #define parameter UserConfig.MarkHoldDisableSecs
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\n\017Disable Secs \016%.1f",parameter);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\n\016Disable Secs \017%.1f",parameter);           
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
      break; // End menu 3
    case 4:         // Showing menu 4 (Autostart)
      if(EncoderCount!=0){
        if(adjusting==0){           // Not adjusting, change lines
          MenuSelection+=EncoderCount;    // Change selected line
          if(MenuSelection<0) MenuSelection=6;  // Wrap around
          if(MenuSelection==3) MenuSelection=6;  // Skip blank lines
          if(MenuSelection==5) MenuSelection=2;
          MenuSelection=MenuSelection%7;  // Wrap on overflow
          EncoderCount=0;
          DrawMenu();                     // Redraw the menu
        }else{                            // Adjust value instead of changing menu lines
          switch(MenuSelection){          // Adjust based on selected line
            case 0:                       // Adjusting autostart threshold
              #undef parameter
              #define parameter UserConfig.AutostartThresh
              parameter+=.001*(double)EncoderCount; // Adjust it
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",parameter);
              DisplayString(StringBuf); // Send updated line
              break;
            case 1:                       // Adjusting Good Characters
              #undef parameter
              #define parameter UserConfig.AutostartSeqGoodChars
              parameter+=EncoderCount; // Adjust it
              if(parameter<0) parameter=0; // Limit minimum
              if(parameter>99) parameter=99;  // Limit max
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\n\017Good Chars    \016%2d",parameter);
              DisplayString(StringBuf); // Send updated line        
              break;
          case 2:                       // Adjusting Hold Seconds
              #undef parameter
              #define parameter UserConfig.AutostartShutdownSeconds
              parameter+=EncoderCount; // Adjust it
              if(parameter<0) parameter=0; // Limit minimum
              if(parameter>99) parameter=99;  // Limit max
              EncoderCount=0;             // Reset for next call
              sprintf(StringBuf,"\f\n\n\n\017Hold Seconds  \016%2d",parameter);
              DisplayString(StringBuf); // Send updated line        
              break;              
          }
        }  
      }
      if(OldS7!=Switches.S7){           // Switch changed
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                       // Threshold. Rewrite line with portion highlighted. Use \f\n to get to second line
              #undef parameter
              #define parameter UserConfig.AutostartThresh
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",parameter);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\016Threshold  \017%.3f",parameter);
              }
              DisplayString(StringBuf);
              break;              
            case 1:                       // Sequential Good Characters Rewrite line with portion highlighted. Use \f\n\n to get to third line
              #undef parameter
              #define parameter UserConfig.AutostartSeqGoodChars
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\n\017Good Chars    \016%2d", parameter);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\n\016Good Chars    \017%2d",parameter);
              }
              DisplayString(StringBuf);
              break;     
            case 2:                      // Sequential Good Characters Rewrite line with portion highlighted. Use \f\n\n to get to third line
              #undef parameter
              #define parameter UserConfig.AutostartShutdownSeconds
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                sprintf(StringBuf,"\f\n\n\n\017Hold Seconds  \016%2d", parameter);
              }else{
                adjusting=0;            // Stop adjusting
                sprintf(StringBuf,"\f\n\n\n\016Hold Seconds  \017%2d",parameter);
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
      break; // End menu 4      
    case 5:         // Showing menu 5 (Shift)
      if(EncoderCount!=0){
        if(adjusting==0){           // Not adjusting, change lines
          MenuSelection+=EncoderCount;    // Change selected line
          if(MenuSelection<0) MenuSelection=6;  // Wrap around
          if(MenuSelection==3) MenuSelection=6;  // Skip blank lines
          if(MenuSelection==5) MenuSelection=2;
          MenuSelection=MenuSelection%7;  // Wrap on overflow
          EncoderCount=0;
          DrawMenu();                     // Redraw the menu
        }else{                            // Adjust value instead of changing menu lines
          switch(MenuSelection){          // Adjust based on selected line
            case 0:                       // Selecting wide or narrow
              if(0!=EncoderCount) SHIFT_850_LED_Toggle(); // Toggle the shift LED
              EncoderCount=0;             // Reset for next call
              DisplayString("\f\n\017Wide/Narrow    \016"); // Send updated line
              if(SHIFT_850_LED_Get()==0){
                DisplayString("N");
              }else{
                DisplayString("W");
              }
              break;
            case 1:                       // Adjusting center frequency
              if(SHIFT_850_LED_Get()==0){   // Stuff for narrow shift
                UserConfig.NarrowShiftCenterFreq+=(double)EncoderCount; // Adjust wide center
                EncoderCount=0;           // Clear for next time
                sprintf(StringBuf,"\f\n\n\017Center Hz   \016%.0f",UserConfig.NarrowShiftCenterFreq);
              }else{                      // stuff for wide shift
                UserConfig.WideShiftCenterFreq+=(double)EncoderCount; // Adjust wide center
                EncoderCount=0;           // Clear for next time
                sprintf(StringBuf,"\f\n\n\017Center Hz   \016%.0f",UserConfig.WideShiftCenterFreq);
              }
              DisplayString(StringBuf);
              UpdateDemodFilters();       // Adjust filters to new center frequency
              break;
          case 2:                       // Adjusting shift
             if(SHIFT_850_LED_Get()==0){   // Stuff for narrow shift
                UserConfig.NarrowShiftHz+=(double)EncoderCount; // Adjust narrow shift
                EncoderCount=0;           // Clear for next time
                sprintf(StringBuf,"\f\n\n\n\017Shift Hz     \016%.0f",UserConfig.NarrowShiftHz);
              }else{                      // stuff for wide shift
                UserConfig.WideShiftHz+=(double)EncoderCount; // Adjust wide shift
                EncoderCount=0;           // Clear for next time
                sprintf(StringBuf,"\f\n\n\n\017Shift Hz     \016%.0f",UserConfig.WideShiftHz);
              }
              DisplayString(StringBuf);               
              UpdateDemodFilters();       // Adjust filters to new shift frequency
              break;         
          }
        }  
      }
      if(OldS7!=Switches.S7){           // Switch changed im MENU 5 (shift))
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                       // Wide/Narrow Rewrite line with portion highlighted. Use \f\n to get to second line
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                DisplayString("\f\n\017Wide/Narrow    \016");
                if(SHIFT_850_LED_Get()==0){
                  DisplayString("N");
                }else{
                  DisplayString("W");
                }  
              }else{
                adjusting=0;            // Stop adjusting
                DisplayString("\f\n\016Wide/Narrow    \017");
                if(SHIFT_850_LED_Get()==0){
                  DisplayString("N");
                }else{
                  DisplayString("W");
                }   
              }
              break;              
            case 1:                       // Center Frequency
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                DisplayString("\f\n\n\017Center Hz   \016");
              }else{
                adjusting=0;            // Stop adjusting
                DisplayString("\f\n\n\016Center Hz   \017");
              }
              if(SHIFT_850_LED_Get()==0){
                sprintf(StringBuf,"%.0f",UserConfig.NarrowShiftCenterFreq);
                }else{
                sprintf(StringBuf,"%.0f",UserConfig.WideShiftCenterFreq);
                }   
              DisplayString(StringBuf);
              break;     
            case 2:                      // Shift Hz. Rewrite line with portion highlighted. Use \f\n\n to get to third line
             if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                DisplayString("\f\n\n\n\017Shift Hz     \016");
              }else{
                adjusting=0;            // Stop adjusting
                DisplayString("\f\n\n\n\016Shift Hz     \017");
              }
              if(SHIFT_850_LED_Get()==0){
                sprintf(StringBuf,"%.0f",UserConfig.NarrowShiftHz);
                }else{
                sprintf(StringBuf,"%.0f",UserConfig.WideShiftHz);
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
      break; // End menu 5      
     case 6:         // Showing menu 6 (Input BPF)
      if(EncoderCount!=0){
        if(adjusting==0){           // Not adjusting, change lines
          MenuSelection+=EncoderCount;    // Change selected line
          if(MenuSelection<0) MenuSelection=6;  // Wrap around
          if(MenuSelection==1) MenuSelection=6;  // Skip blank lines
          if(MenuSelection==5) MenuSelection=1;
          MenuSelection=MenuSelection%7;  // Wrap on overflow
          EncoderCount=0;
          DrawMenu();                     // Redraw the menu
        }else{                            // Adjust value instead of changing menu lines
          switch(MenuSelection){          // Adjust based on selected line
            case 0:                       // Selecting input BPF enabled or not
              if(0!=EncoderCount) UserConfig.UseInputBpf=!UserConfig.UseInputBpf; // Toggle the flag
              EncoderCount=0;             // Reset for next call
              DisplayString("\f\n\017Enable       \016"); // Send updated line
              if(UserConfig.UseInputBpf==0){
                DisplayString("No ");
              }else{
                DisplayString("Yes");
              }
              break;
          }  
        }  
      }
      if(OldS7!=Switches.S7){           // Switch changed im MENU 6 (Input BPF)
        OldS7=Switches.S7;              // Remember new value
        if(0==OldS7){
          switch(MenuSelection){
            case 0:                       // Enable/Disable BPF Rewrite line with portion highlighted. Use \f\n to get to second line
              if(adjusting==0){           // Not yet adjusting, start adjusting
                adjusting=1;
                DisplayString("\f\n\017Enable       \016");
                if(UserConfig.UseInputBpf==0){
                  DisplayString("No ");
                }else{
                  DisplayString("Yes");
                }  
              }else{
                adjusting=0;            // Stop adjusting
                DisplayString("\f\n\016Enable       \017");
                if(UserConfig.UseInputBpf==0){
                  DisplayString("No");
                }else{
                  DisplayString("Yes");
                }   
              }
              break;                            
            case 6:                     // Exit
              MenuNumber=1;             // Back to first menu
              MenuSelection=6;          // Point to exit in case they want to exit all the way
              DrawMenu();
              break;
          }
        }
      }
      break; // End menu 6      

    default:
      DisplayClear();
      MenuNumber=0;
      break;
  }
}           

