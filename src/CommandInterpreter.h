// CommandInterpreter.h

#ifndef CommandInterpreter_h
#define CommandInterpreter_h


void CommandInterpreter(uint8_t stream, char data);   // Pass in stream (command buffer number) and character.)
void StringToCommandInterpreter(char *pString);  // Send a string to the command interpreter.
void WiFiConnect(void);     // Put connect sequence here so it can be called directly by command interprerer
                            // and elsewhere.
#endif
