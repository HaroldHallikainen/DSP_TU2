// menu.c

// Handle display menus

// This got really complicated with a fair amount of duplicated code. It could
// use a rewrite. Perhaps when a menu item is selected, it could go to a
// general adjustment screen that shows what is being adjusted and its
// value. The adjustment could be made there, then the encoder switch hit to
// go back to the menu. This could save having to rewrite individual menu lines.
// Some day!


#include  "PollEncoder.h"       // Get encoder count
#include  "Unifont.h"       // Draw text
#include  "PollSwitchesLeds.h"
#include  "display.h"
#include "UserConfig.h"
#include "filters.h"        // Allow filters to be adjusted in real time

int MenuNumber=0;     // Menu to display. Zero is xyScope
static int MenuSelection=0;  // Which line of menu currently selected.
static int OldS7=1;     // Previous state of encoder switch
static int adjusting=0; // Non-zero if we are adjusting the selected parameter

#define BoW "\016"      // Control code for Black text on White
#define WoB "\017"      // Control code for White text on Black

// Handlers for each menu
void menu01(void);
void menu02(void);
void menu03(void);
void menu04(void);
void menu05(void);
void menu06(void);
void menu07(void);
void menu08(void);
void menu09(void);
void menu10(void);
void menu11(void);


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
    "Limiter Enable  ",
    "More            ",
    "Exit            "        
  },
  { // MenuText[1]  - Menu 2
    "  DSP TU Menu   ",
    "AGC             ",        
    "Baud Rate       ",        
    "Filters BW/Baud ",
    "DTC             ",
    "Loop            ",
    "More            ",
    "Exit            "        
  },  
  { // MenuText[2] - Menu 3 Mark Hold
    " Mark Hold Menu ",
    "Threshold       ",        
    "                ",
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
    "HF Boost        ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[5] - Menu 6 Input BPF
    " Input BPF Menu ",
    "Enable          ",        
    "BW/Shift        ",
    "                ",
    "                ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[6] - Menu 7 AGC
    "      AGC       ",
    "Enable          ",        
    "Target Level    ",
    "Max Gain        ",
    "Filter Hz       ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[7] - Menu 8 Filters
    "Filter BW/Baud  ",
    "Tone BPF        ",        
    "Data LPF        ",
    "                ",
    "                ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[8] - Menu 9 More Stuff
    "  DSP TU Menu   ",
    "Save/Load       ",        
    "                ",
    "                ",
    "                ",
    "                ", 
    "Debug           ",
    "Exit            " 
  },
  { // MenuText[9] - Menu 10 Save/Load
    " Configuration  ",
    "Save Current    ",        
    "Load Saved      ",
    "Load Default    ",
    "                ",
    "                ", 
    "                ",
    "Exit            " 
  },
  { // MenuText[10] - Menu 11 Debug
    "     Debug      ",
    "Audio out       ",        
    "Sample Rate Trim",
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
  #define parameter      // We will be using this so we don't have to keep typing UserConfig stuff over and over 
  switch(MenuNumber){
    case 0:         // Currently showing xy scope
      if(OldS7!=Switches.S7){     // Switch state changed
        OldS7=Switches.S7;        // Remember new value
        EncoderCount=0;           // Clear it so we can see changes
        if(0==OldS7) MenuNumber=1; // Advance to first menu
        DrawMenu();               // Display it
      }else{                      // Encoder switch not closed. See if encoder count changed
        if(EncoderCount!=0){      // If no menu up, let encoder adjust mark hold threshold. hh 5/15/25
          #undef parameter        // Get ready to redefine 
          #define parameter UserConfig.MarkHoldThresh
          parameter+=.001*(double)EncoderCount; // Adjust it
          EncoderCount=0;             // Reset for next call
          sprintf(StringBuf,"\f\017Mark Hold\r\nThreshold  \016%.3f",parameter);
          DisplayString(StringBuf); // Send updated line
        }  
      }
      break;
    case 1:             // Showing menu 1 - Autostart through limiter
      menu01();         // Go handle it
      break;
    case 2:         // Showing menu 2 - AGC, baud rate, etc thru Loop
      menu02();
      break; 
    case 3:         // Showing menu 3 (Mark Hold) 
      menu03();
      break; 
    case 4:         // Showing menu 4 (Autostart)
      menu04();
      break;       
    case 5:         // Showing menu 5 (Shift)
      menu05();
      break; // End menu 5      
     case 6:         // Showing menu 6 (Input BPF) 
      menu06();
      break; // End menu 6      
    case 7:         // Showing menu 7 (AGC) 
      menu07();
      break; // End menu 7      
    case 8:         // Showing menu 8 (Filters)
      menu08();
      break;
    case 9:
      menu09();
      break;
    case 10:
      menu10();
      break;
    case 11:
      menu11();
      break;
    default:
      DisplayClear();
      MenuNumber=0;
      break;
  }
}           



// Handlers for each menu. Keeps PollMenu() smaller.

void menu01(void){
  // Handle menu 1. Autostart through limiter
  if(EncoderCount!=0){      // Handle encoder change
    if(adjusting==0){
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
    }else{                            // Adjusting instead of changing lines
      if(MenuSelection==4){           // Turning limiter on and off
        UserConfig.UseLimiter=!UserConfig.UseLimiter; // Toggle it
        EncoderCount=0;
        DisplayString("\f\n\n\n\n\n\017Limiter Enable \016");
        if(UserConfig.UseLimiter==0){
          DisplayString("N");
        }else{
          DisplayString("Y");
        }
        DisplayString("\017");
      }
    }  
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
        case 4:                     // Limiter
          if(adjusting==0){         // Not currently adjusting
            adjusting=1;            // Start adjusting and show current setting
            DisplayString("\f\n\n\n\n\n\017Limiter Enable \016");
            if(UserConfig.UseLimiter==0){
              DisplayString("N");
            }else{
              DisplayString("Y");
            }
            DisplayString("\017");
          }else{                    // They hit switch at end of adjustment
            adjusting=0;            // Flag that we are no longer adjusting and redraw line
            DisplayString("\f\n\n\n\n\n\016Limiter Enable \017");
            if(UserConfig.UseLimiter==0){
              DisplayString("N");
            }else{
              DisplayString("Y");
            }
          } // end else adjusting  
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
}


void menu02(void){
  // Handle menu 2. AGC, baud rate, etc thru Loop
  if(EncoderCount!=0){
    if(adjusting==0){
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      DrawMenu();                     // Redraw the menu
    }else{                            // Adjusting something
      switch(MenuSelection){          // Depending on line
        case 1:                       // Adjusting baud rate
          #undef parameter
          #define parameter UserConfig.BaudRate
          parameter=parameter + (double) EncoderCount*0.1;
          if(parameter<1.0) parameter=1;    // Limit range
          if(parameter>999.9) parameter=999.9;
          UpdateDemodFilters();         // Update filters since tone filters based on baud rate
          sprintf(StringBuf,"\f\n\n\017Baud Rate  \016%5.1f",parameter);
          DisplayString(StringBuf); // Send updated line
          break;
        case 3:                     // DTC enable/disable  
          if(0!=EncoderCount) UserConfig.DTC=!UserConfig.DTC;    // Toggle it
          DisplayString("\f\n\n\n\n\017DTC          \016"); // Send updated line
          if(UserConfig.DTC==0){
            DisplayString("Off");
          }else{
            DisplayString(" ON");
          }
          break;
        case 4:                     // Loop yes/no. 
          if(0!=EncoderCount) UserConfig.NoLoop=!UserConfig.NoLoop;    // Toggle it
          DisplayString("\f\n\n\n\n\n\017Loop         \016"); // Send updated line
          if(UserConfig.NoLoop==0){     // If noloop zero, we have a loop
            DisplayString("YES");
          }else{
            DisplayString(" No");
          }
          break;
 
      }
    }
    EncoderCount=0;                 // Clear for next time
  }
  if(OldS7!=Switches.S7){           // Switch changed
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                      // AGC
          MenuNumber=7;               // Go to AGC menu
          DrawMenu();
          break;
        case 1:                     // Baud rate
          #undef parameter
          #define parameter UserConfig.BaudRate
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\n\017Baud Rate  \016%5.1f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\n\016Baud Rate  \017%5.1f",parameter);
          }
          DisplayString(StringBuf);
          break;              
        case 2:                       // Filters BW/Baud
          MenuNumber=8;               // Go to filter menu
          MenuSelection=0;            // Start at first line
          DrawMenu();
          break;
        case 3:                     // DTC on/off
          if(adjusting==0){         // not yet adjusting
            adjusting=1;            // start adjusting
            DisplayString("\f\n\n\n\n\017DTC          \016");
            if(UserConfig.DTC==0){
              DisplayString("Off");
            }else{
              DisplayString(" ON");
            }
          }else{      // adjusting
            adjusting=0;            // Stop adjusting
              DisplayString("\f\n\n\n\n\016DTC          \017");
            if(UserConfig.DTC==0){
              DisplayString("Off");
            }else{
              DisplayString(" ON");
            }
          }
          break; 
        case 4:                     // Loop
          if(adjusting==0){         // not yet adjusting
            adjusting=1;            // start adjusting
            DisplayString("\f\n\n\n\n\n\017Loop         \016");
            if(UserConfig.NoLoop==0){   // If noloop zero, we have a loop
              DisplayString("YES");
            }else{
              DisplayString(" No");
            }
          }else{      // adjusting
            adjusting=0;            // Stop adjusting
              DisplayString("\f\n\n\n\n\n\016Loop         \017");
            if(UserConfig.NoLoop==0){ // If noloop zero, we have a loop
              DisplayString("YES");
            }else{
              DisplayString(" No");
            }
          }
          break;            
        case 5:                     // More MAY CHANGE
          MenuNumber=9;             // Go to next menu
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
}
void menu03(void){  // (Mark Hold)
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
        case 0:                       // Adjusting mark hold threshold
          #undef parameter
          #define parameter UserConfig.MarkHoldThresh
          parameter+=.001*(double)EncoderCount; // Adjust it
          EncoderCount=0;             // Reset for next call
          sprintf(StringBuf,"\f\n\017Threshold  \016%.3f",parameter);
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
#if 0
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
#endif          
        case 6:                     // Exit
          MenuNumber=1;             // Back to first menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }
}
void menu04(void){    // (Autostart)
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
}
void menu05(void){    // (Shift)
  if(EncoderCount!=0){
    if(adjusting==0){           // Not adjusting, change lines
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      if(MenuSelection==4) MenuSelection=6;  // Skip blank lines
      if(MenuSelection==5) MenuSelection=4;
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
    }else{                            // Adjust value instead of changing menu lines
      switch(MenuSelection){          // Adjust based on selected line
        case 0:                       // Selecting wide or narrow
          if(0!=EncoderCount) SHIFT_850_LED_Toggle(); // Toggle the shift LED
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
            sprintf(StringBuf,"\f\n\n\017Center Hz   \016%.0f",UserConfig.NarrowShiftCenterFreq);
          }else{                      // stuff for wide shift
            UserConfig.WideShiftCenterFreq+=(double)EncoderCount; // Adjust wide center
            sprintf(StringBuf,"\f\n\n\017Center Hz   \016%.0f",UserConfig.WideShiftCenterFreq);
          }
          DisplayString(StringBuf);
          UpdateDemodFilters();       // Adjust filters to new center frequency
          break;
      case 2:                       // Adjusting shift
         if(SHIFT_850_LED_Get()==0){   // Stuff for narrow shift
            UserConfig.NarrowShiftHz+=(double)EncoderCount; // Adjust narrow shift
            sprintf(StringBuf,"\f\n\n\n\017Shift Hz     \016%.0f",UserConfig.NarrowShiftHz);
          }else{                      // stuff for wide shift
            UserConfig.WideShiftHz+=(double)EncoderCount; // Adjust wide shift
            sprintf(StringBuf,"\f\n\n\n\017Shift Hz     \016%.0f",UserConfig.WideShiftHz);
          }
          DisplayString(StringBuf);               
          UpdateDemodFilters();       // Adjust filters to new shift frequency
          break; 
      case 3:                       // Adjusting high tone boost
         if(SHIFT_850_LED_Get()==0){   // Stuff for narrow shift
            UserConfig.NarrowTxHfEq+=0.1*(double)EncoderCount; // Adjust high tone boost
            if(UserConfig.NarrowTxHfEq<-9.9) UserConfig.NarrowTxHfEq=-9.9; // Limit range
            if(UserConfig.NarrowTxHfEq>9.9) UserConfig.NarrowTxHfEq=9.9;
            sprintf(StringBuf,"\f\n\n\n\n\017HF Boost \016% .1f dB",UserConfig.NarrowTxHfEq);
          }else{                      // stuff for wide shift
            UserConfig.WideTxHfEq+=0.1*(double)EncoderCount; // Adjust wide shift
            if(UserConfig.WideTxHfEq<-9.9) UserConfig.WideTxHfEq=-9.9; // Limit range
            if(UserConfig.WideTxHfEq>9.9) UserConfig.WideTxHfEq=9.9;
            sprintf(StringBuf,"\f\n\n\n\n\017HF Boost \016% .1f dB",UserConfig.WideTxHfEq);
          }
          DisplayString(StringBuf);               
          UpdateDemodFilters();       // Adjust filters to new shift frequency
          break;         
          
      }
    }
    EncoderCount=0;             // Reset for next call
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
        case 3:                      // High tone boost. Rewrite line with portion highlighted. Use \f\n\n to get to third line
         if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            DisplayString("\f\n\n\n\n\017HF Boost \016");
          }else{
            adjusting=0;            // Stop adjusting
            DisplayString("\f\n\n\n\n\016HF Boost \017");
          }
          if(SHIFT_850_LED_Get()==0){
            sprintf(StringBuf,"% .1f dB",UserConfig.NarrowTxHfEq);
          }else{
            sprintf(StringBuf,"% .1f dB",UserConfig.WideTxHfEq);
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
}
void menu06(void){      // Input BPF
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
        case 0:                       // Selecting input BPF enabled or not
          UserConfig.UseInputBpf=!UserConfig.UseInputBpf; // Toggle the flag
          EncoderCount=0;             // Reset for next call
          DisplayString("\f\n\017Enable       \016"); // Send updated line
          if(UserConfig.UseInputBpf==0){
            DisplayString("No ");
          }else{
            DisplayString("Yes");
          }
          break;
        case 1:                       // Input BPF BW/Shift
          UserConfig.InputBpfBwShiftMult+=0.1* (double)EncoderCount;
          if(UserConfig.InputBpfBwShiftMult<0.1) UserConfig.InputBpfBwShiftMult=0.1; // Limit range
          if(UserConfig.InputBpfBwShiftMult>9.9) UserConfig.InputBpfBwShiftMult=9.9;
          UpdateDemodFilters();       // Update filter as we adjust
          EncoderCount=0;
          sprintf(StringBuf,"\f\n\n\017BW/Shift     \016%3.1f",UserConfig.InputBpfBwShiftMult);
          DisplayString(StringBuf);
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
            DisplayString("\f\n\016Enable       "); //\017");
            if(UserConfig.UseInputBpf==0){
              DisplayString("No");
            }else{
              DisplayString("Yes");
            }   
          }
          break; 
        case 1:                     // BW/Shift
          if(adjusting==0){          // Was not adjusting
            adjusting=1;              // Start adjusting
            sprintf(StringBuf,"\f\n\n\017BW/Shift     \016%3.1f",UserConfig.InputBpfBwShiftMult);
          }else{
            adjusting=0;
            sprintf(StringBuf,"\f\n\n\016BW/Shift     \017%3.1f",UserConfig.InputBpfBwShiftMult);
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
}

void menu07(void){    // AGC
  if(EncoderCount!=0){
    if(adjusting==0){           // Not adjusting, change lines
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      if(MenuSelection==4) MenuSelection=6;  // Skip blank lines
      if(MenuSelection==5) MenuSelection=3;
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
    }else{                            // Adjust value instead of changing menu lines
      switch(MenuSelection){          // Adjust based on selected line
        case 0:                       // Selecting input BPF enabled or not
          if(0!=EncoderCount) UserConfig.UseAgc=!UserConfig.UseAgc; // Toggle the flag
          EncoderCount=0;             // Reset for next call
          DisplayString("\f\n\017Enable       \016"); // Send updated line
          if(UserConfig.UseAgc==0){
            DisplayString("No ");
          }else{
            DisplayString("Yes");
          }
          break;
        case 1:                 // AGC target ;eve;  
          #undef parameter
          #define parameter UserConfig.AgcTargetLevel
          parameter+=.001*(double)EncoderCount;       // Change the parameter
          EncoderCount=0;             // Clear for next poll
          sprintf(StringBuf,"\f\n\n\017Target Lvl \016%.3f", parameter);
          DisplayString(StringBuf);
          break;              
        case 2:                // AGC Max Gain
          #undef parameter
          #define parameter UserConfig.AgcMaxGain
          parameter+=.1*(double)EncoderCount;       // Change the parameter
          EncoderCount=0;             // Clear for next poll
          sprintf(StringBuf,"\f\n\n\n\017Max Gain   \016%5.1f", parameter);
          DisplayString(StringBuf);
          break; 
        case 3:                // AGC Filter Hz
          #undef parameter
          #define parameter UserConfig.AgcLpfF
          parameter+=.1*(double)EncoderCount;       // Change the parameter
          EncoderCount=0;             // Clear for next poll
          sprintf(StringBuf,"\f\n\n\n\n\017Filter Hz  \016%5.1f", parameter);
          DisplayString(StringBuf);
          break;          
   
      }  
    }  
  }
  if(OldS7!=Switches.S7){           // Switch changed im MENU 6 (Input BPF)
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                       // Enable/Disable AGC Rewrite line with portion highlighted. Use \f\n to get to second line
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            DisplayString("\f\n\017Enable       \016");
            if(UserConfig.UseAgc==0){
              DisplayString("No ");
            }else{
              DisplayString("Yes");
            }  
          }else{
            adjusting=0;            // Stop adjusting
            DisplayString("\f\n\016Enable       "); //\017");
            if(UserConfig.UseAgc==0){
              DisplayString("No");
            }else{
              DisplayString("Yes");
            }   
          }
          break;  
        case 1:                     // Set AGC target level  
          #undef parameter
          #define parameter UserConfig.AgcTargetLevel
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\n\017Target Lvl \016%.3f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\n\016Target Lvl \017%.3f",parameter);
          }
          DisplayString(StringBuf);
          break;  
        case 2:                     // Set AGC max gain  
          #undef parameter
          #define parameter UserConfig.AgcMaxGain
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\n\n\017Max Gain   \016%5.1f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\n\n\016Max Gain   \017%5.1f",parameter);
          }
          DisplayString(StringBuf);
          break;  
        case 3:                    // Set AGC LPF
          #undef parameter
          #define parameter UserConfig.AgcLpfF
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\n\n\n\017Filter Hz  \016%5.1f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\n\n\n\016Filter Hz  \017%5.1f",parameter);
          }
          DisplayString(StringBuf);
          break;                      
          
        case 6:                     // Exit
          MenuNumber=2;             // Back to previous menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }
}
void menu08(void){              // Filter BW/Baud
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
        case 0:                       // Setting Tone Filter BW/Baud
          #undef parameter
          #define parameter UserConfig.ToneFilterBwBrMult
          parameter+=.1*(double)EncoderCount;       // Change the parameter
          if(parameter<0.1) parameter=0.1;          // limit range
          if(parameter>9.9) parameter=9.9;
          UpdateDemodFilters();                     // Update filters on the fly
          sprintf(StringBuf,"\f\n\017Tone BPF     \016%3.1f", parameter);
          DisplayString(StringBuf);
          break; 
        case 1:                 // Adjust DataLPF cutoff as baud rate * user value  
          #undef parameter
          #define parameter UserConfig.DataLpfBwBrMult
          parameter+=.1*(double)EncoderCount;       // Change the parameter
          if(parameter<0.1) parameter=0.1;          // limit range
          if(parameter>9.9) parameter=9.9;
          UpdateDemodFilters();                     // Update filters on the fly
          sprintf(StringBuf,"\f\n\n\017Data LPF     \016%3.1f", parameter);
          DisplayString(StringBuf);  
      }  
    }
    EncoderCount=0;             // Clear for next poll
  }
  if(OldS7!=Switches.S7){           // Switch changed im MENU 6 (Input BPF)
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                       // Enable/Disable AGC Rewrite line with portion highlighted. Use \f\n to get to second line
          #undef parameter
          #define parameter UserConfig.ToneFilterBwBrMult
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\017Tone BPF     \016%3.1f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\016Tone BPF     \017%3.1f",parameter);
          }
          DisplayString(StringBuf);
          break;
        case 1:                     // Data filter cutoff frequency  
          #undef parameter
          #define parameter UserConfig.DataLpfBwBrMult
          if(adjusting==0){           // Not yet adjusting, start adjusting
            adjusting=1;
            sprintf(StringBuf,"\f\n\n\017Data LPF     \016%3.1f",parameter);
          }else{
            adjusting=0;            // Stop adjusting
            sprintf(StringBuf,"\f\n\n\016Data LPF     \017%3.1f",parameter);
          }
          DisplayString(StringBuf);
          break;
        case 6:                     // Exit
          MenuNumber=2;             // Back to previous menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }
}

void menu09(void){              // Save, Load, Debug. No adjustments on this menu
  if(EncoderCount!=0){
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      if(MenuSelection==1) MenuSelection=5;  // Skip blank lines
      if(MenuSelection==4) MenuSelection=0;
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
     EncoderCount=0;             // Clear for next poll
  }
  if(OldS7!=Switches.S7){           // Switch changed im MENU 9 Save/Load/Debug
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                       
          MenuNumber=10;            // Go to Save/Load menu
          DrawMenu();
          break;
        case 5:                     // Go to debug menu
          MenuNumber=11;
          MenuSelection=0;
          DrawMenu();
          break;
        case 6:                     // Exit
          MenuNumber=2;             // Back to previous menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }  
}


void menu10(void){      // Save/Load Configuration
  if(EncoderCount!=0){
    MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      if(MenuSelection==3) MenuSelection=6;  // Skip blank lines
      if(MenuSelection==5) MenuSelection=2;
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
     EncoderCount=0;             // Clear for next poll
  }
  if(OldS7!=Switches.S7){           // Switch changed im MENU 9 Save/Load/Debug
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                       
          SavePrintConfig(0);       // Save current config to external flash
          DisplayString("\f\n\n\n\n\nConfig Saved");
          break;
        case 1:                     // Load saved config
          LoadSavedConfig();
          DisplayString("\f\n\n\n\n\nConfig Loaded");
          break;
        case 2:                     // Load default
          LoadDefaultConfig();
          DisplayString("\f\n\n\n\n\nDefault Loaded");
          break;
        case 6:                     // Exit
          MenuNumber=9;             // Back to previous menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }  
}


void menu11(void){      // Debug Audio Output
  if(EncoderCount!=0){
    if(adjusting==0){   // Not adjusting, just change lines
      MenuSelection+=EncoderCount;    // Change selected line
      if(MenuSelection<0) MenuSelection=6;  // Wrap around
      if(MenuSelection==2) MenuSelection=6;  // Skip blank lines
      if(MenuSelection==5) MenuSelection=1;
      MenuSelection=MenuSelection%7;  // Wrap on overflow
      EncoderCount=0;
      DrawMenu();                     // Redraw the menu
    }else{                            // Adjusting
      switch(MenuSelection){
        case 0:                       // Change audio out selection
          if((AudioOut==0)&&(EncoderCount<0)){  // enum does not go negative
            AudioOut=13;
          }else{                          // Deal with positive values  
            AudioOut+=EncoderCount;
            if(AudioOut>13)AudioOut=0;      // Limit selection range
            DisplayString("\f\n\n\n\n");
            DisplayString(AudioOutString[AudioOut]);
          }
          break;
        case 1:                       // Sample Rate Trim
          UserConfig.FreqAdjPercent+= 0.1 * (double)EncoderCount;
          if(UserConfig.FreqAdjPercent>5.0) UserConfig.FreqAdjPercent=5.0; // Limit range
          if(UserConfig.FreqAdjPercent<-5.0) UserConfig.FreqAdjPercent=-5.0; // Limit range 
          DisplayString("\f\n\n\n\n");  // Move to blank line
          sprintf(StringBuf,"%3.1f%% ",UserConfig.FreqAdjPercent);
          DisplayString(StringBuf);   // Show the percentage
      } // end switch menu selection    
    }
    EncoderCount=0;                 // clear for next time
  }
  if(OldS7!=Switches.S7){           // Switch changed im MENU 11 - Debug
    OldS7=Switches.S7;              // Remember new value
    if(0==OldS7){
      switch(MenuSelection){
        case 0:                       
          if(adjusting==0){         // Not yet adjusting
            adjusting=1;            // Start it
            DisplayString("\f\n\017Audio Out       ");
            DisplayString("\n\n\n\016");  // black text on white
            DisplayString(AudioOutString[AudioOut]);
          }else{
            adjusting=0;            // Stop adjusting
            DisplayString("\f\n\016Audio Out       ");
            DisplayString("\n\n\n\017");  // black text on white
            DisplayString(AudioOutString[AudioOut]);
          }
          break;
        case 1:                     // Sample rate trim
          if(adjusting==0){         // Not yet adjusting
            adjusting=1;            // Start adjusting and show current value
            DisplayString(WoB);     // Go to white on black and rewrite menu line
            DisplayString("\f\n\nSample Rate Trim\n\n"); // Menu line and move to next for value
            DisplayString(BoW);     // Black text on white
            sprintf(StringBuf,"%3.1f%%",UserConfig.FreqAdjPercent);
            DisplayString(StringBuf);   // Show the percentage
          }else{
            adjusting=0;            // Stop adjusting
            DisplayString("\f\n\n");  // Go to second line
            DisplayString(BoW);     // Black on white on selected line
            DisplayString("Sample Rate Trim");  // Rewrite the menu line
            DisplayString(WoB);     // White on black on value
            DisplayString("\n\n");
            sprintf(StringBuf,"%3.1f%% ",UserConfig.FreqAdjPercent);
            DisplayString(StringBuf); // Rewrite the current setting
          }
          break;
        case 6:                     // Exit
          MenuNumber=9;             // Back to previous menu
          MenuSelection=6;          // Point to exit in case they want to exit all the way
          DrawMenu();
          break;
      }
    }
  }  
}
