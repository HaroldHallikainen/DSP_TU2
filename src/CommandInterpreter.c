// CommandInterpreter.c

// CommandInterpreter.c
#include <stdint.h>
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#include "main.h"
#include "UserConfig.h"             // PrintString for error messages
#include "biquad.h"                 // Modify filters
#include "agc.h"                    // Access to AGC filter
#include "filters.h"                // Set up demod filters based on UserConfig


//#define NumCommandBufs NumTcpSockets+3 // Separate command buffers for TCP connections (NumTcpSockets), RS232, ConfigFlash, and HTTPPOST
#define NumCommandBufs 1 // Separate command buffers for different possible sources
#define CommandBufSize 150 
#define MaxArgs 10 




// Function Prototypes
void CommandInterpreter(uint8_t stream, char data); // Call with a character as argument. The character is added

																
// Globals
uint8_t MaxCommandSize=0;  // used in debug. Figure out how large buffers need to be
char HelpString[];

uint32_t HashGenerate(char *pString){
// generate a 32 bit hash of the string. 
uint8_t HashShiftSize;
uint32_t Hash;
  HashShiftSize=32/strlen(pString); // vary shift size so hash always uses all 32 bits
  Hash=0;          // start with null hash
  while(*pString){		          // stop on null terminator
	  Hash<<=HashShiftSize;	      // shift over HashShiftSize bits on each character
    Hash+=(uint32_t)*pString++;   // add in next character and bump the pointer
  }                       // done hashing the command
  return(Hash);
}


static char CommandBuf[NumCommandBufs][CommandBufSize]; // create a linear buffer for each stream

void CommandInterpreter(uint8_t stream, char data){
// Pass in a character from the specified stream. It is added to the buffer unless it's a cr. If so, the command is executed. Any output is sent to stream.
static uint8_t NextCharIndex[NumCommandBufs];     // where the next character goes
uint32_t Hash=0;
char *TokenArray[MaxArgs];
char tokens[4] = "\t\r|"; // tokens for strtok (tab, return) - Don't break on space. Allow it to be in a string arg. Pipe (|) added 6/21/13. hh
char *NextToken;	// Pointer to next token in command buffer
int ArgNum=0;                 // Argument number currently storing
  StringBuf[0]=0;         // Will return stuff in StringBuf
  switch(data){
    default:                   // it was not backspace, escape, or cr
      if((data>0)&&(data<128)){  // valid ascii
        if(NextCharIndex[stream]<CommandBufSize+2){   // we have room for character
          CommandBuf[stream][NextCharIndex[stream]++]=data;  // add to buffer
        }
      }
      break;
    case 0x0a:              // newline
      break;                // do nothing, throwing it out
    case 0x08:              // back space
      if(NextCharIndex[stream]){
         NextCharIndex[stream]--;            // back up on a back space if we're not already at the beginning
      }
      break;
    case 0x1b:              // escape
      NextCharIndex[stream]=0;              // go back to start
      break;
    case '\r':              // it's a carriage return. Hash the command and accumulate the arguments and execute it
      CommandBuf[stream][NextCharIndex[stream]]=0;   // terminate the string we've built
      if(strlen(CommandBuf[stream])==0){
        strcpy(StringBuf,"\r\n>");
        return;                           // rempromt and get out on null string
      }  
      if(NextCharIndex[stream]>MaxCommandSize) MaxCommandSize=NextCharIndex[stream]; // remember max command size
      NextCharIndex[stream]=0;      // next time, start building string at start of buffer
      if(CommandBuf[stream][0]=='#') return;			// get out before doing anything. This is a comment.
      NextToken=strtok(CommandBuf[stream],tokens);		// Pointer to start of CommandBuf with delimiter replaced with null
      while(NULL!=NextToken){             // Scan through string getting pointers to each field
        TokenArray[ArgNum++]=NextToken;   // Store pointers to argument and bump index. ArgNum ends up with argument count including command
        if(ArgNum>=MaxArgs) return;       // Get out on excess arguments instead of crashing
        NextToken=strtok(NULL,tokens);    // Point to next argument in string
      }
      Hash=HashGenerate(TokenArray[0]);  // Generate a hash of the command
      switch(Hash){  // Hash also available as a float64 in arg[0], but we'll use this UINT32 value for the switch
        default:
          sprintf(StringBuf,"Bad command. Hash=0x%x.\r\n>",Hash);
          break;
        case 0x3f:               // ? (help)
          PrintString(HelpString);
          strcpy(StringBuf,"\r\n>");
          break;
        case 0xb6d27f3:            // NarrowShiftCenterFreq
          if(2==ArgNum){            // There is a parameter
            UserConfig.NarrowShiftCenterFreq = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.NarrowShiftCenterFreq);
          }
          break;
        case 0x6fbc1b5a:            // NarrowShiftHz
          if(2==ArgNum){            // There is a parameter
            UserConfig.NarrowShiftHz = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.NarrowShiftHz);
          }
          break;
        case 0x2f327f3:            // WideShiftCenterFreq
          if(2==ArgNum){            // There is a parameter
            UserConfig.WideShiftCenterFreq = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.WideShiftCenterFreq);
          }
          break;   
        case 0x7989b5a:            // WideShiftHz
          if(2==ArgNum){            // There is a parameter
            UserConfig.WideShiftHz = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.WideShiftHz);
          }
          break;   
        case 0x88b988a5:            // BaudRate
          if(2==ArgNum){            // There is a parameter
            UserConfig.BaudRate = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.BaudRate);
          }
          break;   
        case 0x17d4fa8:            // ToneFilterBwBrMult
          if(2==ArgNum){            // There is a parameter
            UserConfig.ToneFilterBwBrMult = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.ToneFilterBwBrMult);
          }
          break;             
        case 0xb9e21d04:            // MarkHoldThresh
          if(2==ArgNum){            // There is a parameter
            UserConfig.MarkHoldThresh = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.MarkHoldThresh);
          }
          break;  
        case 0x7d469d04:            // AutostartThresh
          if(2==ArgNum){            // There is a parameter
            UserConfig.AutostartThresh = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.AutostartThresh);
          }
          break;  
        case 0x5a35f9fb:            // AutostartShutdownSeconds
          if(2==ArgNum){            // There is a parameter
            UserConfig.AutostartShutdownSeconds = atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%d\r\n>",UserConfig.AutostartShutdownSeconds);
          }
          break;  
        case 0xbe5a4ba3:            // KosDropSeconds
          if(2==ArgNum){            // There is a parameter
            UserConfig.KosDropSeconds = atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%d\r\n>",UserConfig.KosDropSeconds);
          }
          break;  
        case 0x8b184ea0:            // AgcTargetLevel
          if(2==ArgNum){            // There is a parameter
            UserConfig.AgcTargetLevel = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.AgcTargetLevel);
          }
          break;  
        case 0x47d836a6:              // AgcLpfF
          if(2==ArgNum){              // There is a parameter
            UserConfig.AgcLpfF=atof(TokenArray[1]);
            BiQuad_modify(AgcLpf, LPF, 0.0, UserConfig.AgcLpfF, 8000.0, 0.707 ); 
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.AgcLpfF);
          }
          break;
        case 0x79c7846:                // UseInputBpf
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseInputBpf=1 & atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            if(1==UserConfig.UseInputBpf){
              strcpy(StringBuf,"\r\n1\r\n>");
            }else{
              strcpy(StringBuf,"\r\n0\r\n>");
            }
          }
          break;
        case 0x290c429a:                // UseLimiter
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseLimiter=1 & atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            if(1==UserConfig.UseLimiter){
              strcpy(StringBuf,"\r\n1\r\n>");
            }else{
              strcpy(StringBuf,"\r\n0\r\n>");
            }
          }
          break;
        case 0xb1639143:                // UseAgc
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseAgc=1 & atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            if(1==UserConfig.UseAgc){
              strcpy(StringBuf,"\r\n1\r\n>");
            }else{
              strcpy(StringBuf,"\r\n0\r\n>");
            }
          }
          break;
        case 0x7ccca9f6:              // AgcMaxGain
          if(2==ArgNum){              // There is a parameter
            UserConfig.AgcMaxGain=atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%f\r\n>",UserConfig.AgcMaxGain);
          }
          break; 
        case 0x6ec259ad:            // modem
          PrintString("\r\nSwitching terminal to modem. Use ESC to return to command interpreter.\r\n");
          UartDest=modem;
          break;
        case 0xb2df91:              // LoadDefaultConfig
          LoadDefaultConfig();
          PrintString("Default configuration loaded\r\n>");
          break;
        case 0x564b1eeb:            // PrintSavedConfig
          PrintSavedConfig();
          break;
        case 0x7555eeb:             //PrintConfig
          SavePrintConfig(1);       // Send to console
          strcpy(StringBuf,"\r\n\nCurrent configuration printed\r\n>");
          break;
        case 0x97d692f:             // SaveConfig  
          SavePrintConfig(0);       // Send to external flash
          strcpy(StringBuf,"\r\n\nCurrent configuration saved\r\n>");
          break;
        case 0xfd4b1eeb:           // LoadSavedConfig
          LoadSavedConfig();
          break;
        case 0xa317ca50:           //NoLoop - 
          if(2==ArgNum){              // There is a parameter
            UserConfig.NoLoop=atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"\r\n%d\r\n>",UserConfig.NoLoop);
          }
          break; 
      }
    }
  }

/*
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
*/
  
 
char HelpString[]= "DSP TU Command Line Interface\r\n\n\
Each command consists of a command string, and zero or more parameters.\r\n\
Parameters are tab delimited, and the command is terminated with a carriage\r\n\
return. Commands take effect immediately. They can be saved to be reloaded on\
the next power cycle. If no parameter is given, the current value of the\r\n\
parameter is returned. If a command is not recognized, an error message is shown\r\n\
along with a hash of the command. Commands ARE case sensitive! In the list\r\n\
below, the default value of each parameter is shown along with a description of\r\n\
the command.\r\n\n\
AgcLpfF                   1.0      Set the frequency of the AGC control loop low\r\n\
                                   pass filter. A lower number makes the AGC\r\n\
                                   respond more slowly\r\n\
AgcMaxGain                100.0    The maximum gain the AGC will achieve with no\r\n\
                                   input signal\r\n\
AgcTargetLevel            0.5      The AGC adjusts its gain to yield this output\r\n\
                                   level to the remainder of the demodulator\r\n\
AutostartShutdownSeconds  30       Integer number of seconds after loss of mark\r\n\
                                   tone when motor is shut down\r\n\
AutostartThresh           0.3      Discriminator threshold (mark level minus\r\n\
                                   space level) that will start motor. Too low a\r\n\
                                   level can give false starts on noise. Too\r\n\
                                   high a level can keep the motor from starting\r\n\
                                   on a weak signal.\r\n\
BaudRate                  45.45    The transmit baud rate in bits per second.\r\n\
                                   Used to set the speed of the Baudot UART and\r\n\
                                   tone filter bandwidths.\r\n\
KosDropSeconds            5        How many seconds after the last typed\r\n\
                                   character until the transceiver is switched\r\n\
                                   from transmit to receive.\r\n\
LoadDefaultConfig                  No parameters. Loads default configuration.\r\n\
LoadSavedConfig                    No parameters. Loads the configuration saved\r\n\
                                   to external flash.\r\n\
MarkHoldThresh            0.2      Sustained discriminator levels below this\r\n\
                                   threshold put the demodulator in mark to\r\n\
                                   avoid printing on noise.\r\n\
modem                              No parameters. Switches USB terminal to the\r\n\
                                   Baudot UART to transmit and receive data. ESC\r\n\
                                   returns to the command interpreter.\r\n\
NarrowShiftCenterFreq     2210.0   Mean of Mark and Space frequencies for tone\r\n\
                                   filters and tone generator.\r\n\
NarrowShiftHz             170.0    Difference between Mark and Space\r\n\
                                   frequencies. System sets Mark frequency to\r\n\
                                   Center-(Shift/2) and Space to\r\n\
                                   Center+(Shift/2) unless MarkHi is enabled,\r\n\
                                   reversing these tones.\r\n\
NoLoop                    0        Allows operation without a loop supply,\r\n\
                                   instead using the software uart and USB.\r\n\
                                   If NoLoop = 1, KOS and AFSK generation will\r\n\
                                   ignore the lack of loop current.\r\n\
PrintConfig                        No parameters. Prints the current system\r\n\
                                   configuration.\r\n\
PrintSavedConfig                   No parameters. Prints saved configuration.\r\n\
SaveConfig                         No parameters. Saves the current\r\n\
                                   configuration to external flash to be loaded\r\n\
                                   on next power up.\r\n\
ToneFilterBwBrMult        2.0      The BaudRate is multiplied by this value to\r\n\
                                   yield the bandwidth of the tone filters. This\r\n\
                                   is set to the lowest value possible that\r\n\
                                   results in full discriminator swing in 1/2\r\n\
                                   bit time\r\n\
UseAgc                    1        1 enables the AGC, while 0 disables it. Users\r\n\
                                   may choose to use the limiter instead of the\r\n\
                                   AGC\r\n\
UseInputBpf               0        1 enables the input bandpass filter; 0\r\n\
                                   disables it. The input BPF may be useful on\r\n\
                                   narrow shift especially if the limiter is\r\n\
                                   used (instead of the AGC) to prevent other\r\n\
                                   signals from taking over the limiter.\r\n\
UseLimiter                0        1 enables the limiter; 0 disables it. Users\r\n\
                                   may choose to use the limiter (FM\r\n\
                                   demodulation) or the AGC (AM demodulation).\r\n\
WideShiftCenterFreq       2000.0   As described for NarrowShiftCenterFreq, this\r\n\
                                   sets the Mark/Space center frequency when\r\n\
                                   wide shift is selected.\r\n\
WideShiftHz               850.0    As described for NarrowShiftHz, this sets the\r\n\
                                   difference between the Mark and Space\r\n\
                                   frequencies.\r\n\
";
