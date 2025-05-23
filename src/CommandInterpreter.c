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
#include "BaudotUart.h"             // Access receive error report
#include "ExtFlash.h"
#include "PowerLineNoise.h"
#include "biquad.h"
#include "wf_asic.h"                    // Access to wifi ChipId())
#include "winc1500_api.h"           // nmi_get_rfrevid()
#include "wf_hif.h"


//#define NumCommandBufs NumTcpSockets+3 // Separate command buffers for TCP connections (NumTcpSockets), RS232, ConfigFlash, and HTTPPOST
#define NumCommandBufs 1 // Separate command buffers for different possible sources
#define CommandBufSize 150 
#define MaxArgs 10 




// Function Prototypes
void CommandInterpreter(uint8_t stream, char data); // Call with a character as argument. The character is added

																
// Globals
uint8_t MaxCommandSize=0;  // used in debug. Figure out how large buffers need to be
char HelpString0[], HelpString1[];

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
uint8_t mac_addr[6];       // WiFi MAC address used in WfMac
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
      TokenArray[0]="";                   // Initialize it in case not initialized before hash generation
      NextToken=strtok(CommandBuf[stream],tokens);		// Pointer to start of CommandBuf with delimiter replaced with null
      while(NULL!=NextToken){             // Scan through string getting pointers to each field
        TokenArray[ArgNum++]=NextToken;   // Store pointers to argument and bump index. ArgNum ends up with argument count including command
        if(ArgNum>=MaxArgs) return;       // Get out on excess arguments instead of crashing
        NextToken=strtok(NULL,tokens);    // Point to next argument in string
      }
      Hash=HashGenerate(TokenArray[0]);  // Generate a hash of the command
      PrintString("\r\n");
      switch(Hash){  // Hash also available as a float64 in arg[0], but we'll use this UINT32 value for the switch
        default:
          sprintf(StringBuf,"Bad command. Hash=0x%x.\r\n>",Hash);
          break;
        case 0x3f:               // ? (help)
          PrintString(HelpString0);
          strcpy(StringBuf,"\r\n>");
          break;
        case 0x3f003f:            // ?? help2  
          PrintString(HelpString1);
          strcpy(StringBuf,"\r\n>");
          break;
        case 0xb6d27f3:            // NarrowShiftCenterFreq
          if(2==ArgNum){            // There is a parameter
            UserConfig.NarrowShiftCenterFreq = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.NarrowShiftCenterFreq);
          }
          break;
        case 0x6fbc1b5a:            // NarrowShiftHz
          if(2==ArgNum){            // There is a parameter
            UserConfig.NarrowShiftHz = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.NarrowShiftHz);
          }
          break;
        case 0x2f327f3:            // WideShiftCenterFreq
          if(2==ArgNum){            // There is a parameter
            UserConfig.WideShiftCenterFreq = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.WideShiftCenterFreq);
          }
          break;   
        case 0x7989b5a:            // WideShiftHz
          if(2==ArgNum){            // There is a parameter
            UserConfig.WideShiftHz = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.WideShiftHz);
          }
          break;   
        case 0x88b988a5:            // BaudRate
          if(2==ArgNum){            // There is a parameter
            UserConfig.BaudRate = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.BaudRate);
          }
          break;   
        case 0x17d4fa8:            // ToneFilterBwBrMult
          if(2==ArgNum){            // There is a parameter
            UserConfig.ToneFilterBwBrMult = atof(TokenArray[1]);
            UpdateDemodFilters();   // Update all filters and DDS M/S frequencies
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.ToneFilterBwBrMult);
          }
          break;             
        case 0xb9e21d04:            // MarkHoldThresh
          if(2==ArgNum){            // There is a parameter
            UserConfig.MarkHoldThresh = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.MarkHoldThresh);
          }
          break;  
        case 0x7d469d04:            // AutostartThresh
          if(2==ArgNum){            // There is a parameter
            UserConfig.AutostartThresh = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.AutostartThresh);
          }
          break;  
        case 0x5a35f9fb:            // AutostartShutdownSeconds
          if(2==ArgNum){            // There is a parameter
            UserConfig.AutostartShutdownSeconds = atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.AutostartShutdownSeconds);
          }
          break;  
        case 0xbe5a4ba3:            // KosDropSeconds
          if(2==ArgNum){            // There is a parameter
            UserConfig.KosDropSeconds = atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.KosDropSeconds);
          }
          break;  
        case 0x8b184ea0:            // AgcTargetLevel
          if(2==ArgNum){            // There is a parameter
            UserConfig.AgcTargetLevel = atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.AgcTargetLevel);
          }
          break;  
        case 0x47d836a6:              // AgcLpfF
          if(2==ArgNum){              // There is a parameter
            UserConfig.AgcLpfF=atof(TokenArray[1]);
            BiQuad_modify(AgcLpf, LPF, 0.0, UserConfig.AgcLpfF, 8000.0, 0.707 ); 
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.AgcLpfF);
          }
          break;
        case 0x79c7846:                // UseInputBpf
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseInputBpf=1 & atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>", UserConfig.UseInputBpf);
          }
          break;
        case 0x290c429a:                // UseLimiter
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseLimiter=1 & atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.UseLimiter);
          }
          break;
        case 0xb1639143:                // UseAgc
          if(2==ArgNum){                // There is a parameter
            UserConfig.UseAgc=atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.UseAgc);
          }
          break;
        case 0x7ccca9f6:              // AgcMaxGain
          if(2==ArgNum){              // There is a parameter
            UserConfig.AgcMaxGain=atof(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.AgcMaxGain);
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
            sprintf(StringBuf,"%d\r\n>",UserConfig.NoLoop);
          }
          break; 
        case 0x65e89de4:          // WideShift
          if(2==ArgNum){          // There is a parameter
            if(atoi(TokenArray[1])==0){   // Narrow shift wanted
              SHIFT_850_LED_Clear();      // Turn off the wide shift LED
            }else{
              SHIFT_850_LED_Set();        // Turn on the wide shift LED
            }
            UpdateDemodFilters();     // Update filters and DDS
            strcpy(StringBuf,"\r\n>");
          }else{                      // Read back
            sprintf(StringBuf,"%d\r\n>",SHIFT_850_LED_Get());
          }
          break;
        case 0x51afb444:        // Autostart
          if(2==ArgNum){          // There is a parameter
            if(atoi(TokenArray[1])==0){   // 
              AUTOSTART_LED_Clear();      // Turn off the autostart LED
            }else{
              AUTOSTART_LED_Set();        // Turn on the autostart LED
            }
            strcpy(StringBuf,"\r\n>");
          }else{                      // Read back
            sprintf(StringBuf,"%d\r\n>",AUTOSTART_LED_Get());
          }
          break;
        case 0x4b13c53:     // KOS
           if(2==ArgNum){          // There is a parameter
            if(atoi(TokenArray[1])==0){   // 
              KOS_LED_Clear();      // Turn off the KOS LED
            }else{
              KOS_LED_Set();        // Turn on the KOS LED
            }
            strcpy(StringBuf,"\r\n>");
          }else{                      // Read back
            sprintf(StringBuf,"%d\r\n>",KOS_LED_Get());
          }
          break;  
        case 0x539b49b4:    // Reset
          PrintString("\r\nResetting system\r\n");
          while(1);         // Loop 'til WDT times out
          break;
        case 0x7559d22c:    // PrintRxReport
          GenerateErrorCountReport();   // Put report in StringBuf and clear counters
          if(2==ArgNum){                // Parameter passed
            if(0==atoi(TokenArray[1])){ // If zero, clear counters
              CharCount=0;              // How many good start bits we got
              BadStopBitCount=0; // How many bad stop bits we got
            }
          }
          strcat(StringBuf,">");        // Prompt for next command
          break;            // Will print on exit
        case 0x5521bc1:     // AfskOutputContinuous
          if(2==ArgNum){
            UserConfig.AfskOutputContinuous = atoi(TokenArray[1]);
            UserConfig.AfskOutputContinuous&=1; // Force to 0|1
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf, "%d\r\n>", UserConfig.AfskOutputContinuous);
          }
          break;
        case 0xbe2dd4:        // TimeoutCounterMin
          sprintf(StringBuf,"%d\r\n>", TimeoutCounterMin);
          TimeoutCounterMin=0;
          break;
        case 0x168c90b:       // AutostartGoodChars
          if(2==ArgNum){      // How many good characters in row required for autostart
            UserConfig.AutostartSeqGoodChars=atoi(TokenArray[1]);
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.AutostartSeqGoodChars);
          }
          break;
        case 0x4415043:   //DTC
          if(2==ArgNum){
            UserConfig.DTC=atoi(TokenArray[1]); // Enable or disable dynamic threshold control
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%d\r\n>",UserConfig.DTC);
          }
          break;
        case 0x2dca0c8:       // InputBpfBwShiftMult
          if(2==ArgNum){
            UserConfig.InputBpfBwShiftMult=atof(TokenArray[1]);
            UpdateDemodFilters();       // Update filter as we adjust
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.InputBpfBwShiftMult);
          }
          break; 
        case 0x573f86b4:    // DataLpfBwBrMult
           if(2==ArgNum){
            UserConfig.DataLpfBwBrMult=atof(TokenArray[1]);
            UpdateDemodFilters();       // Update filter as we adjust
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.DataLpfBwBrMult);
          }
          break; 
        case 0xdfa9eac1:    // WideHfEq  
           if(2==ArgNum){
            UserConfig.WideTxHfEq=atof(TokenArray[1]);
            UpdateDemodFilters();       // Update filter as we adjust
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.WideTxHfEq);
          }
          break; 
        case 0xe1479c19:    // NarrowHfEq
          if(2==ArgNum){
            UserConfig.NarrowTxHfEq=atof(TokenArray[1]);
            UpdateDemodFilters();       // Update filter as we adjust
            strcpy(StringBuf,"\r\n>");
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.NarrowTxHfEq);
          }
          break; 
        case 0xabd9a73c:    // FreqAdjPercent - Adjust all frequencies by 
                            // adjusting PR2, changing sample rate to correct
                            // for CPU clock error
          if(2==ArgNum){    // Being set
            UserConfig.FreqAdjPercent=atof(TokenArray[1]);
            if(UserConfig.FreqAdjPercent>10.0) UserConfig.FreqAdjPercent=10.0; // Limit range
            if(UserConfig.FreqAdjPercent<-10.0) UserConfig.FreqAdjPercent=-10.0;
            PR2=(int)1249*(1.0-(UserConfig.FreqAdjPercent/100.0)); // Subtract percent/100 from 1.0
                                                  // from 1.0. Positive percent makes lower PR2 for higher freq.
            strcpy(StringBuf,"\r\n>");
         }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.FreqAdjPercent);
         }
         break;
        case 0x7556f944:    // PrintExtFlash starting at specified address
          if(2==ArgNum){    // Address specified
            PrintExtFlash(atol(TokenArray[1]));  
          }
          strcpy(StringBuf,"\r\n>");
          break;
        case 0x501304e:     // PLN (show power line noise
          if(2==ArgNum){
            PlnPrintCount=atoi(TokenArray[1]);  // Get how many times to print
            if(PlnPrintCount<0) PlnPrintCount=0;  // Disallow negative
          }else{              // No count specified, use 1
            PlnPrintCount=1;
          }  
          break;
        case 0x5482ccbc:     // MsLevel - Show average mark and space level.
          MsLevelSampleInterval=8000;     // Default to once per second
          MsLevelPrintCount=1;                 // Default to printing once
          switch(ArgNum){
            case 3:                       // Interval and count specified
              MsLevelSampleInterval=8*atoi(TokenArray[2]);  // Convert milliseconds to samples
              if (MsLevelSampleInterval<8) MsLevelSampleInterval=8; // Disallow really small intervals
                // No break. Drop into getting number of times to print
            case 2: 
              MsLevelPrintCount=atoi(TokenArray[1]);  // Get how many times to print
              if(MsLevelPrintCount<0) MsLevelPrintCount=0;  // Disallow negative
          }  
          break;          
        case 0x3049d8c1:      //LineFreq set line frequency for power line noise measurement
          if(2==ArgNum){
            UserConfig.LineFreq=atof(TokenArray[1]);
            if((UserConfig.LineFreq<30.0)||(UserConfig.LineFreq>100.0)){
              UserConfig.LineFreq=60.0;   // Force to be reasonable
            }
            BiQuad_modify(PowerLineBPF,BPF,0.0,2.0*UserConfig.LineFreq,8000, 10); // Update BPF to 2 * LineFreq
          }else{
            sprintf(StringBuf,"%f\r\n>",UserConfig.LineFreq);
          }
          break;
        case 0xda9f04f4:    // wfChipId - Read the WiFi Chip ID
          sprintf(StringBuf,"%x\r\n>",(unsigned int)GetChipId());
          break;
        case 0x5db8b8c6:    // WfRfRev - Get WiFi RF revision ID
          sprintf(StringBuf,"%x\r\n>",  (unsigned int)nmi_get_rfrevid());
          break;
        case 0x589ce8a3:    //WfMac - Get the MAC address
          m2m_wifi_get_mac_address(mac_addr);
          sprintf(StringBuf,"%02X:%02X:%02X:%02X:%02X:%02X\r\n>",
            mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
          break;
        case 0xb48b188e:    // WfScan - Look for access points
          sprintf(StringBuf,"\r\nIndex | RSSI | SSID\r\n");
          m2m_wifi_request_scan(M2M_WIFI_CH_ALL); // Request scan
          break;
        case 0x650b58cc:    // WfConnect - Connects to configured access point
          if(strlen(UserConfig.SSID)==0){
            sprintf(StringBuf,"SSID not set. Use WfSsid\r\n>");
          }else{
            if(strlen(UserConfig.WfPw)==0){
              sprintf(StringBuf,"WiFi password not set. Use WfPw\r\n>");
            }else{
              sprintf(StringBuf, "Connecting to %s, %s\r\n>",UserConfig.SSID, UserConfig.WfPw);
              m2m_wifi_connect(UserConfig.SSID, sizeof(UserConfig.SSID), M2M_WIFI_SEC_WPA_PSK, UserConfig.WfPw,M2M_WIFI_CH_ALL);
            }
          }
          break;
        case 0xb48b5984:    // WfSsid
          if(2==ArgNum){    // Setting SSID
            if(strlen(TokenArray[1])<sizeof(UserConfig.SSID)){
              strcpy(UserConfig.SSID,TokenArray[1]);
            }else{
              sprintf(StringBuf,"SSID too long");
            }  
          }else{
            sprintf(StringBuf,"%s\r\n>",UserConfig.SSID);
          }  
          break;
        case 0x57665077:    // WfPw
          if(2==ArgNum){    // Setting password
            if(strlen(TokenArray[1])<sizeof(UserConfig.WfPw)){
              strcpy(UserConfig.WfPw,TokenArray[1]);
            }else{
              sprintf(StringBuf,"Password too long");
            }  
          }else{
            sprintf(StringBuf,"%s\r\n>",UserConfig.WfPw);
          }  
          break;
          
        case 0x57fa6c54:    // RYcount - Show how many Rs and Ys received, then reset counters
          sprintf(StringBuf,"%u, %u\r\n>", Rcount, Ycount);
          Rcount=0;
          Ycount=0;
          break;
        case 0x66b1151:     // AudioSource - Defaults to analog. USB is option
          if(2==ArgNum){
            switch(HashGenerate(TokenArray[1])){
              case 0x751cc62:   // usb
                UartDest=audio; // Set uart destination to audio
                break;
              default:
              case 0x6119063:   // adc
                UartDest=CLI;   // Send uart back to command line interpreter
                break;   
            }
          }else{
            if(UartDest==audio) strcpy(StringBuf,"usb\r\n>");
            else strcpy(StringBuf,"adc\r\n>");
          }
          break;
      }
    }
  }

/*
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
*/
  
 
char HelpString0[]= "DSP TU Command Line Interface\r\n\n\
Each command consists of a command string, and zero or more parameters.\r\n\
Parameters are tab delimited, and the command is terminated with a carriage\r\n\
return. Commands take effect immediately. They can be saved to be reloaded on\r\n\
the next power cycle. If no parameter is given, the current value of the\r\n\
parameter is returned. If a command is not recognized, an error message is shown\r\n\
along with a hash of the command. Commands ARE case sensitive! In the list\r\n\
below, the default value of each parameter is shown along with a description of\r\n\
the command.\r\n\n\
AfskOutputContinuous      0        If nonzero, the AFSK output is active in both\r\n\
                                   transmit and receive. If zero, the output is\r\n\
                                   only active in transmit.\r\n\
AgcLpfF                   1.0      Set the frequency of the AGC control loop low\r\n\
                                   pass filter. A lower number makes the AGC\r\n\
                                   respond more slowly\r\n\
AgcMaxGain                15.0     The maximum gain the AGC will achieve with no\r\n\
                                   input signal\r\n\
AgcTargetLevel            0.6      The AGC adjusts its gain to yield this output\r\n\
                                   level to the remainder of the demodulator\r\n\
Autostart                 1        1 enables autostart. 0 disables autostart. If\r\n\
                                   autostart is enabled, loop will not be keyed\r\n\
                                   unless motor LED is lit due to presence of\r\n\
                                   qualified signal (above MarkHoldThresh and\r\n\
                                   AutostartGoodChars received).\r\n\
AutostartGoodChars        10       How many sequential good characters to trigger\r\n\
                                   autostart\r\n\
AutostartShutdownSeconds  30       Integer number of seconds after loss of mark\r\n\
                                   tone when motor is shut down\r\n\
AutostartThresh           0.5      Discriminator threshold (mark level minus\r\n\
                                   space level) that will start motor. Too low a\r\n\
                                   level can give false starts on noise. Too\r\n\
                                   high a level can keep the motor from starting\r\n\
                                   on a weak signal. If the Input BPF is enabled\r\n\
                                   this is typically set to 0.5. This level can\r\n\
                                   be set low if AutostartGoodChars is greater\r\n\
                                   than 5 or so since noise will cause a bad \r\n\
                                   character (bad stop bit) keeping the required\r\n\
                                   number of good sequential characters to not be\r\n\
                                   met.\r\n\
BaudRate                  45.45    The transmit baud rate in bits per second.\r\n\
                                   Used to set the speed of the Baudot UART and\r\n\
                                   tone filter bandwidths.\r\n\
DataLpfBwBrMult           1.0      Multiply this by Baud Rate to get the\r\n\
                                   bandwidth (cutoff frequency) of the data low\r\n\
                                   pass filters (one eacj for mark amd s[ace).\r\n\
DTC                       1        1 enables Dynamic Threshold Control; 0\r\n\
                                   disables. Enable for \"AM Demodulation\",\r\n\
                                   where the limiter is disabled.\r\n\
FreqAdjPercent            0.0      Make minor adjustment (+/- 5%) to sample\r\n\
                                   rate to correct for CPU clock error. Adjusts\r\n\
                                   all frequencies. For example, if 170 Hz Mark\r\n\
                                   frequency is 2138 Hz instead of 2125 Hz, set\r\n\
                                   FreqAdjPercent to -0.7.\r\n\
InputBpfBwShiftMult       1.0      Input BPF Bandwidth is shift times this.\r\n\
KOS                       1        1 enables Keyboard Operated Send. 0 disables.\r\n\
KosDropSeconds            3.0      How many seconds after the last typed\r\n\
                                   character until the transceiver is switched\r\n\
                                   from transmit to receive.\r\n"
"Use ?? for additional commands";
char HelpString1[]="\
LoadDefaultConfig                  No parameters. Loads default configuration.\r\n\
LoadSavedConfig                    No parameters. Loads the configuration saved\r\n\
                                   to external flash.\r\n\
MarkHoldThresh            0.3      Sustained discriminator levels below this\r\n\
                                   threshold put the demodulator in mark to\r\n\
                                   avoid printing on noise. If the Input LPF is\r\n\
                                   enabled, this is typically increased to 0.5\r\n\
modem                              No parameters. Switches USB terminal to the\r\n\
                                   Baudot UART to transmit and receive data. ESC\r\n\
                                   returns to the command interpreter.\r\n\
MsLevel                   1000 1   Prints the mark and space demodulator output\r\n\
                                   levels with a comma delimiter. The first\r\n\
                                   optional argument is the number of times to\r\b\
                                   print. The second is the number of\r\n\
                                   milliseconds between samples. If the second\r\n\
                                   argument is deleted, data is sample and\r\n\
                                   printed once a second. If the first argument\r\n\
                                   is deleted, the data is printed once.\r\n\
NarrowHfEq                0.0      How many dB to boost the high tone level over\r\n\
                                   the low tone level when running narrow shift.\r\n\
                                   Can be positive or negative.\r\n\
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
PLN                       100      Print relative power line noise every second\r\n\
                                   for the specified number of seconds. If no\r\n\
                                   number specified, print once.\r\n\
PrintConfig                        No parameters. Prints the current system\r\n\
                                   configuration.\r\n\
PrintRxReport                      Prints the number of received characters\r\n\
                                   (valid start bits), the number of bad\r\n\
                                   characters (bad stop bit), and the\r\n\
                                   percentage error. If a parameter of zero\r\n\
                                   is used, clears counters after printing\r\n\
                                   report. Also, report can be transmitted by\r\n\
                                   typing !ER on Teletype or on terminal when \r\n\
                                   in modem mode (terminal to Baudot AFSK). Note\r\n\
                                   also that a transmit to receive transition\r\n\
                                   resets the counters.\r\n\
PrintSavedConfig                   No parameters. Prints saved configuration.\r\n\
Reset                              No parameters. Loops until WDT times out\r\n\
                                   (1.024 seconds), resetting system. \r\n\
RYcount                            Prints the number of R characters received\r\n\
                                   followed by the number of Y characters. Both\r\n\
                                   counters are then reset.\r\n\
SaveConfig                         No parameters. Saves the current\r\n\
                                   configuration to external flash to be loaded\r\n\
                                   on next power up.\r\n\
TimeoutCounterMin                  No parameters. Used to determine if we are\r\n\
                                   getting to audio samples in time. Should be\r\n\
                                   zero.\r\n\
ToneFilterBwBrMult        1.7      The BaudRate is multiplied by this value to\r\n\
                                   yield the bandwidth of the tone filters. This\r\n\
                                   is set to the lowest value possible that\r\n\
                                   results in full discriminator swing in 1/2\r\n\
                                   bit time\r\n\
UseAgc                    1        0 disables AGC. 1 enables AGC sampling input\r\n\
                                   data to set gain. Users may choose to use the\r\n\
                                   limiter instead of the AGC. With either the\r\n\
                                   limiter or the AGC, the Input BPF should be\r\n\
                                   used to keep the limiter or AGC  from being\r\n\
                                   taken over by off-frequency signals.\r\n\
UseInputBpf               1        1 enables the input bandpass filter; 0\r\n\
                                   disables it. The input BPF may be useful on\r\n\
                                   narrow shift especially if the limiter is\r\n\
                                   used (instead of the AGC) to prevent other\r\n\
                                   signals from taking over the limiter.\r\n\
UseLimiter                0        1 enables the limiter; 0 disables it. Users\r\n\
                                   may choose to use the limiter (FM\r\n\
                                   demodulation) or the AGC (AM demodulation).\r\n\
wfChipId                           No parameters. Reads the Chip ID of the \r\n\
                                   WiFi module.\r\n\
WfConnect                          No parameters. Connects to the access point\r\n\
                                   with the SSID and password (see WfSsid and\r\n\
                                   WfPw). Runs DHCP to get IP address. Runs NTP\r\n\
                                   to get time.\r\n\
WfRfRev                            No parameters. Reads the RF revision of the\r\n\
                                   WiFi module.\r\n\
WfMac                              No parameters. Reads the MAC address of the\r\n\
                                   WiFi module.\r\n\
WfPw                               Set or read the password used to connect to\r\n\
                                   the WiFi access point (see WfConnect).\r\n\
WfScan                             No parameters. Scans for WiFi access points.\r\n\
                                   Prints index, RSSI, and SSID for each found\r\n\
                                   access point.\r\n\
WfSsid                             Set or read the SSID of the access point to\r\n\
                                   connect to (see WfConnect).\r\n\
WideHfEq                  0.0      How many dB to boost the high tone level over\r\n\
                                   the low tone level when running wide shift.\r\n\
                                   Can be positive or negative.\r\n\
WideShift                 0        1 selects wide shift (tyipcally 850 Hz). \r\n\
                                   0 selects narrow shift (typically 170 Hz).)\r\n\
WideShiftCenterFreq       2000.0   As described for NarrowShiftCenterFreq, this\r\n\
                                   sets the Mark/Space center frequency when\r\n\
                                   wide shift is selected.\r\n\
WideShiftHz               850.0    As described for NarrowShiftHz, this sets the\r\n\
                                   difference between the Mark and Space\r\n\
                                   frequencies.\r\n\
";
