#include <xc.h>
#include "bus_wrapper/include/nm_bus_wrapper.h"
#include "bsp/include/nm_bsp.h"
#include <stdint.h>
#include <string.h>
#include "bus_wrapper/include/nm_bus_wrapper.h"


#define NM_BUS_MAX_TRX_SZ    256

// Define the global bus capabilities structure expected by nmbus.c
tstrNmBusCapabilities egstrNmBusCapabilities = {
    NM_BUS_MAX_TRX_SZ // Sets the maximum transfer size (defined as 256 in your file)
};


// Declare your existing working SPI function from your codebase
// (Ensure this name and prototype match your exact function signature)
extern void m2mStub_SpiTxRx(uint8_t *p_txBuf, uint8_t *p_rxBuf, uint16_t length);



sint8 nm_bus_init(void *pvinit)
{
    // Configure RE7 (WIFI_CSn) as a Digital Output
    TRISEbits.TRISE7 = 0; // RE7 direction = Output
    
    LATEbits.LATE7 = 1;   // Idle state = High (Deselected)
    return 0;
}

// 2. De-initialize the SPI bus
sint8 nm_bus_deinit(void)
{
    return 0;
}

// 3. Handle raw SPI read and write blocks
sint8 nm_bus_ioctl(uint8_t u8Cmd, void* pvParameter)
{
    tstrNmSpiRw *pstrParam = (tstrNmSpiRw *)pvParameter;
    
    switch(u8Cmd)
    {
        case NM_BUS_IOCTL_RW:
            // 1. Assert Chip Select (RE7 Low) before streaming data packets
            LATEbits.LATE7 = 0; 
            
            // 2. Execute full-duplex transmission over your SPI peripheral
            m2mStub_SpiTxRx(pstrParam->pu8InBuf, pstrParam->pu8OutBuf, pstrParam->u16Sz);
            
            // 3. De-assert Chip Select (RE7 High) the moment transmission completes
            LATEbits.LATE7 = 1; 
            break;
            
        default:
            break;
    }
    return 0;
}
