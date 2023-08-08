// Macro to print binary using printf
// https://stackoverflow.com/questions/111928/is-there-a-printf-converter-to-print-in-binary-format


#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  ((byte) & 0x80 ? '1' : '0'), \
  ((byte) & 0x40 ? '1' : '0'), \
  ((byte) & 0x20 ? '1' : '0'), \
  ((byte) & 0x10 ? '1' : '0'), \
  ((byte) & 0x08 ? '1' : '0'), \
  ((byte) & 0x04 ? '1' : '0'), \
  ((byte) & 0x02 ? '1' : '0'), \
  ((byte) & 0x01 ? '1' : '0') 


// printf("Leading text "BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(byte));


// For multi-byte types
// printf("m: "BYTE_TO_BINARY_PATTERN" "BYTE_TO_BINARY_PATTERN"\n",  BYTE_TO_BINARY(m>>8), BYTE_TO_BINARY(m));
// You need all the extra quotes, unfortunately. This approach has the efficiency risks of macros (don't pass a function as 
// the argument to BYTE_TO_BINARY) but avoids the memory issues and multiple invocations of strcat in some of the other proposals here.


