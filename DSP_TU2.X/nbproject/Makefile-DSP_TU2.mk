#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-DSP_TU2.mk)" "nbproject/Makefile-local-DSP_TU2.mk"
include nbproject/Makefile-local-DSP_TU2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DSP_TU2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/WINC1500/driver/source/m2m_hif.c ../src/WINC1500/driver/source/m2m_periph.c ../src/WINC1500/driver/source/m2m_wifi.c ../src/WINC1500/driver/source/nmasic.c ../src/WINC1500/driver/source/nmbus.c ../src/WINC1500/driver/source/nmdrv.c ../src/WINC1500/driver/source/nmi2c.c ../src/WINC1500/driver/source/nmspi.c ../src/WINC1500/driver/source/nmuart.c ../src/WINC1500/spi_flash/source/spi_flash.c ../src/WINC1500/common/source/nm_common.c ../src/WINC1500/bsp/source/nm_bsp.c ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c ../src/WINC1500/socket/source/socket.c ../src/winc1500/wf_mcu_driver_stub.c ../src/WiFiInit.c ../src/WifiPoll.c ../src/WINC1500/wifi_event_stub.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c ../src/RTC.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/687164088/m2m_hif.o ${OBJECTDIR}/_ext/687164088/m2m_periph.o ${OBJECTDIR}/_ext/687164088/m2m_wifi.o ${OBJECTDIR}/_ext/687164088/nmasic.o ${OBJECTDIR}/_ext/687164088/nmbus.o ${OBJECTDIR}/_ext/687164088/nmdrv.o ${OBJECTDIR}/_ext/687164088/nmi2c.o ${OBJECTDIR}/_ext/687164088/nmspi.o ${OBJECTDIR}/_ext/687164088/nmuart.o ${OBJECTDIR}/_ext/1676263479/spi_flash.o ${OBJECTDIR}/_ext/193120149/nm_common.o ${OBJECTDIR}/_ext/320921301/nm_bsp.o ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o ${OBJECTDIR}/_ext/557053683/socket.o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ${OBJECTDIR}/_ext/1360937237/RTC.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o.d ${OBJECTDIR}/_ext/255064926/plib_clk.o.d ${OBJECTDIR}/_ext/682852657/plib_evic.o.d ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d ${OBJECTDIR}/_ext/1994557280/initialization.o.d ${OBJECTDIR}/_ext/1994557280/interrupts.o.d ${OBJECTDIR}/_ext/1994557280/exceptions.o.d ${OBJECTDIR}/_ext/687164088/m2m_hif.o.d ${OBJECTDIR}/_ext/687164088/m2m_periph.o.d ${OBJECTDIR}/_ext/687164088/m2m_wifi.o.d ${OBJECTDIR}/_ext/687164088/nmasic.o.d ${OBJECTDIR}/_ext/687164088/nmbus.o.d ${OBJECTDIR}/_ext/687164088/nmdrv.o.d ${OBJECTDIR}/_ext/687164088/nmi2c.o.d ${OBJECTDIR}/_ext/687164088/nmspi.o.d ${OBJECTDIR}/_ext/687164088/nmuart.o.d ${OBJECTDIR}/_ext/1676263479/spi_flash.o.d ${OBJECTDIR}/_ext/193120149/nm_common.o.d ${OBJECTDIR}/_ext/320921301/nm_bsp.o.d ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o.d ${OBJECTDIR}/_ext/557053683/socket.o.d ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/agc.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d ${OBJECTDIR}/_ext/1360937237/display.o.d ${OBJECTDIR}/_ext/1360937237/fifo16.o.d ${OBJECTDIR}/_ext/1360937237/xyScope.o.d ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d ${OBJECTDIR}/_ext/1360937237/filters.o.d ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d ${OBJECTDIR}/_ext/1360937237/fifo8.o.d ${OBJECTDIR}/_ext/1360937237/Unifont.o.d ${OBJECTDIR}/_ext/1360937237/menu.o.d ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d ${OBJECTDIR}/_ext/1360937237/RTC.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/687164088/m2m_hif.o ${OBJECTDIR}/_ext/687164088/m2m_periph.o ${OBJECTDIR}/_ext/687164088/m2m_wifi.o ${OBJECTDIR}/_ext/687164088/nmasic.o ${OBJECTDIR}/_ext/687164088/nmbus.o ${OBJECTDIR}/_ext/687164088/nmdrv.o ${OBJECTDIR}/_ext/687164088/nmi2c.o ${OBJECTDIR}/_ext/687164088/nmspi.o ${OBJECTDIR}/_ext/687164088/nmuart.o ${OBJECTDIR}/_ext/1676263479/spi_flash.o ${OBJECTDIR}/_ext/193120149/nm_common.o ${OBJECTDIR}/_ext/320921301/nm_bsp.o ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o ${OBJECTDIR}/_ext/557053683/socket.o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ${OBJECTDIR}/_ext/1360937237/RTC.o

# Source Files
SOURCEFILES=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/WINC1500/driver/source/m2m_hif.c ../src/WINC1500/driver/source/m2m_periph.c ../src/WINC1500/driver/source/m2m_wifi.c ../src/WINC1500/driver/source/nmasic.c ../src/WINC1500/driver/source/nmbus.c ../src/WINC1500/driver/source/nmdrv.c ../src/WINC1500/driver/source/nmi2c.c ../src/WINC1500/driver/source/nmspi.c ../src/WINC1500/driver/source/nmuart.c ../src/WINC1500/spi_flash/source/spi_flash.c ../src/WINC1500/common/source/nm_common.c ../src/WINC1500/bsp/source/nm_bsp.c ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c ../src/WINC1500/socket/source/socket.c ../src/winc1500/wf_mcu_driver_stub.c ../src/WiFiInit.c ../src/WifiPoll.c ../src/WINC1500/wifi_event_stub.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c ../src/RTC.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-DSP_TU2.mk ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ0512EFE064
MP_LINKER_FILE_OPTION=,--script="..\src\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/faec220b941d7c4bb9d5b839b805ca4abfc71810 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/8336c3b7d32c568edbd08323da170df43b07a7b6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/d0f678269467ceefc11d6d8a80a1c7bb99882fa7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/4b01a47491cacb5cee4c8ef802e8de135247336 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/522a70212411b9efa445f901b4fd6c37c49222fc .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/1d442855307221954688b2756ae8712bac1e4b89 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/9ea1e6e1f15eabc9d547d66a11a43a3c857a575a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/dc4f0125fda9c1e96f534f5681364e0eaf76bede .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/7246649cc44184cfae4a0f455a9f86ba52a750fe .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/e6f667dbc0f9229f7c735ff27880b09a584c2d19 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/86b9d71b7b5f1fb27fc7f91c45d310aafa88cb7c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/7530fd0593ee4add8d7ab19afb3c2cfefdab1f5a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/d3e3570bc2094fc8803a9f359be54e7d35d8c018 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/ec38ab3bafa29603a4eafa2d5955a83240b53227 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/9f513b03f30bba6c8243b585764a06e22d1bd5e5 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_hif.o: ../src/WINC1500/driver/source/m2m_hif.c  .generated_files/flags/DSP_TU2/41d8d2ded2e7de5c1201391dcba4221c5c08b862 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_hif.o ../src/WINC1500/driver/source/m2m_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_periph.o: ../src/WINC1500/driver/source/m2m_periph.c  .generated_files/flags/DSP_TU2/577c65965ad82ea07d0cd266def7c53abd055dee .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_periph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_periph.o ../src/WINC1500/driver/source/m2m_periph.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_wifi.o: ../src/WINC1500/driver/source/m2m_wifi.c  .generated_files/flags/DSP_TU2/9f96153dbfcb5c99b9a2d59c204af4616d33bf53 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_wifi.o ../src/WINC1500/driver/source/m2m_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmasic.o: ../src/WINC1500/driver/source/nmasic.c  .generated_files/flags/DSP_TU2/89873deaab71d84b34a81b99d889fdc3af6b0cc8 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmasic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmasic.o.d" -o ${OBJECTDIR}/_ext/687164088/nmasic.o ../src/WINC1500/driver/source/nmasic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmbus.o: ../src/WINC1500/driver/source/nmbus.c  .generated_files/flags/DSP_TU2/599772ae7a522a07930129fbc88c0f4f4a94b6d7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmbus.o.d" -o ${OBJECTDIR}/_ext/687164088/nmbus.o ../src/WINC1500/driver/source/nmbus.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmdrv.o: ../src/WINC1500/driver/source/nmdrv.c  .generated_files/flags/DSP_TU2/6138d30bf91b2b064814c7064fea3d5d5fe3f682 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmdrv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmdrv.o.d" -o ${OBJECTDIR}/_ext/687164088/nmdrv.o ../src/WINC1500/driver/source/nmdrv.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmi2c.o: ../src/WINC1500/driver/source/nmi2c.c  .generated_files/flags/DSP_TU2/a376532f474af3f8b3f0be1aef6cccc883e584fe .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmi2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmi2c.o.d" -o ${OBJECTDIR}/_ext/687164088/nmi2c.o ../src/WINC1500/driver/source/nmi2c.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmspi.o: ../src/WINC1500/driver/source/nmspi.c  .generated_files/flags/DSP_TU2/9e2e15a591313d2fc4bd8d9b69254246411f4582 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmspi.o.d" -o ${OBJECTDIR}/_ext/687164088/nmspi.o ../src/WINC1500/driver/source/nmspi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmuart.o: ../src/WINC1500/driver/source/nmuart.c  .generated_files/flags/DSP_TU2/a7ab6cea752d7b1ebf9e5bf6a829acf5cc028122 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmuart.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmuart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmuart.o.d" -o ${OBJECTDIR}/_ext/687164088/nmuart.o ../src/WINC1500/driver/source/nmuart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1676263479/spi_flash.o: ../src/WINC1500/spi_flash/source/spi_flash.c  .generated_files/flags/DSP_TU2/bd2e2f80f63b1501d872595deb6cc9fbaf9ef26f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1676263479" 
	@${RM} ${OBJECTDIR}/_ext/1676263479/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676263479/spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676263479/spi_flash.o.d" -o ${OBJECTDIR}/_ext/1676263479/spi_flash.o ../src/WINC1500/spi_flash/source/spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/193120149/nm_common.o: ../src/WINC1500/common/source/nm_common.c  .generated_files/flags/DSP_TU2/d9d535b169c7089095a75e82601f3e443143b43f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/193120149" 
	@${RM} ${OBJECTDIR}/_ext/193120149/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/193120149/nm_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/193120149/nm_common.o.d" -o ${OBJECTDIR}/_ext/193120149/nm_common.o ../src/WINC1500/common/source/nm_common.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/320921301/nm_bsp.o: ../src/WINC1500/bsp/source/nm_bsp.c  .generated_files/flags/DSP_TU2/8d6c51f22a76baa5fd034379247abf107db09864 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/320921301" 
	@${RM} ${OBJECTDIR}/_ext/320921301/nm_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/320921301/nm_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/320921301/nm_bsp.o.d" -o ${OBJECTDIR}/_ext/320921301/nm_bsp.o ../src/WINC1500/bsp/source/nm_bsp.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o: ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c  .generated_files/flags/DSP_TU2/eca903227f81b8835def9f22c535b12d53862798 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2119407712" 
	@${RM} ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o.d" -o ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/557053683/socket.o: ../src/WINC1500/socket/source/socket.c  .generated_files/flags/DSP_TU2/3454ca7249e9e4c3dae97160d1a38619bf29e79b .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/557053683" 
	@${RM} ${OBJECTDIR}/_ext/557053683/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/557053683/socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/557053683/socket.o.d" -o ${OBJECTDIR}/_ext/557053683/socket.o ../src/WINC1500/socket/source/socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/d978d5ba0fa4dba51908f7537698c35c1dc7e5ac .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/ce87673ca178584ea461eb0ed872f797e0fed63d .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/d09c6fceb2d98339c06232bfc0c6eeab6cc62f35 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/452991131/wifi_event_stub.o: ../src/WINC1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/8bdb3ebd7e46cfc8c197052ff923d9422a3e027f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/452991131" 
	@${RM} ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/452991131/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o ../src/WINC1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/ad2d3bcc07df1405efba638071462367ada725f0 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/76df21d3c317028e23d7cbbe041abbc6648f2967 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/f9335530eff88155631cd29149760ead2351f057 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/72383ec01d55c39e5c24964937a288d6afd11bfd .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/f2f330267ad8af6706061820331d02e685acf62b .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/522bf180821cb8b7cba170b6548e4d507932eead .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/ad22f1fd7ee73a77dbcee6089b1a4d1cb319fbdd .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/4904c79b22a39940b34b0af69701b12bc6d0f6f9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/c0ee980e679100eb971149119f2d4db4f254a286 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/51e590ea93114f9043a78640161439fb995fe670 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/af0fd1b78fe7159f5f8657168c9802692220fdf9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/9cce8e927adda73d0d91e4040e0b3410ab37dc59 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/951ce6d413a662e693ffe443c532166503c713e4 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/8450ca9b8d22c746395af3e3366f28eea5281e2 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/b451262040797c4d420ae9256f118d3d9b5291ce .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/39102a1ab4af2a8209b41361f8f00a1decd93239 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/3d425bc7e8393b3bf50b8a7293e276c4e8005f7c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/5d0e4e583d3cfc00be7209eabd2b4bd18aaec73d .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/788d4bfc55aad43042e66fce063cc21b1ee582c9 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/6b3a40e85d4d73083eaef65cc7e191a213748889 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/59140143b0a523a203da18c16d89b24da305ce06 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/46da88047dd0e0c708e9e418f314a9380640289 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/RTC.o: ../src/RTC.c  .generated_files/flags/DSP_TU2/bce27b773c6ca3de12087d718ba2a3bfcfed0779 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/RTC.o.d" -o ${OBJECTDIR}/_ext/1360937237/RTC.o ../src/RTC.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/cebac228bb6e79298059ed25b3e98d401d33ff5e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/60c63174e3f2244173cd9b9538bca86988f1d742 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/d9f4f6fa629f2dcc92f08421d9f88cf04832f69c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/fa483e5caa0b9c6211275772ac7ebb5aba3b5eea .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/790284e82b97931d991a090a1b503c11aa5dbd72 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/4acf328d968af6e3673aaf832e0fab050a76e0b8 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/3fa653c6ffdaf1663251ab9cde91d22f69c13f20 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/e3a4804f440196142afe20728c0ed4e7cce5e77 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/cbb553fb41556ac44bfc8d9184b1c98e2dfa2283 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/62ab1756228169817cc96f13ae8f9b133dac6604 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/56fe189871e0372882561b1bb4359ca474d37d09 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/c75c5e6e71a436beeb58ab1bcfa0b4368ddea9b7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/d790eeafad8e711005d0400e381d3e615f2ed281 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/a56ccf27ee3fafe064e3cbd1110d4eb94d06a266 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/609a67a52dd52507ef6636682431fe84cc57df44 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_hif.o: ../src/WINC1500/driver/source/m2m_hif.c  .generated_files/flags/DSP_TU2/1ff7745a6f3b6c13dde2e0792e78e74e91965af0 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_hif.o ../src/WINC1500/driver/source/m2m_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_periph.o: ../src/WINC1500/driver/source/m2m_periph.c  .generated_files/flags/DSP_TU2/189b5603d6a46a0b2a3d293bee982f75b6f6383a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_periph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_periph.o ../src/WINC1500/driver/source/m2m_periph.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/m2m_wifi.o: ../src/WINC1500/driver/source/m2m_wifi.c  .generated_files/flags/DSP_TU2/35aeab09dd9eee94f88495798bb0592a3894c902 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/m2m_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/687164088/m2m_wifi.o ../src/WINC1500/driver/source/m2m_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmasic.o: ../src/WINC1500/driver/source/nmasic.c  .generated_files/flags/DSP_TU2/12dbe7db90ce680a01b07b154893a8b629c4d465 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmasic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmasic.o.d" -o ${OBJECTDIR}/_ext/687164088/nmasic.o ../src/WINC1500/driver/source/nmasic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmbus.o: ../src/WINC1500/driver/source/nmbus.c  .generated_files/flags/DSP_TU2/cd825ad945d46d9d89c3ea73348707557ef2be3f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmbus.o.d" -o ${OBJECTDIR}/_ext/687164088/nmbus.o ../src/WINC1500/driver/source/nmbus.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmdrv.o: ../src/WINC1500/driver/source/nmdrv.c  .generated_files/flags/DSP_TU2/8956e0daa87d93ac80b67fcf7db01bdff95186fe .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmdrv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmdrv.o.d" -o ${OBJECTDIR}/_ext/687164088/nmdrv.o ../src/WINC1500/driver/source/nmdrv.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmi2c.o: ../src/WINC1500/driver/source/nmi2c.c  .generated_files/flags/DSP_TU2/42412b7dbb16fde3c0e6ea46ffd57a97d499b890 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmi2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmi2c.o.d" -o ${OBJECTDIR}/_ext/687164088/nmi2c.o ../src/WINC1500/driver/source/nmi2c.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmspi.o: ../src/WINC1500/driver/source/nmspi.c  .generated_files/flags/DSP_TU2/f1666ecb23ef4e4a9eb2dea0718bf412e4fc0fee .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmspi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmspi.o.d" -o ${OBJECTDIR}/_ext/687164088/nmspi.o ../src/WINC1500/driver/source/nmspi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687164088/nmuart.o: ../src/WINC1500/driver/source/nmuart.c  .generated_files/flags/DSP_TU2/ba3608b0fb304e72e8a331a3f01e9d7aa8525dd7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/687164088" 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmuart.o.d 
	@${RM} ${OBJECTDIR}/_ext/687164088/nmuart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687164088/nmuart.o.d" -o ${OBJECTDIR}/_ext/687164088/nmuart.o ../src/WINC1500/driver/source/nmuart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1676263479/spi_flash.o: ../src/WINC1500/spi_flash/source/spi_flash.c  .generated_files/flags/DSP_TU2/1b3703dec56b2411f22f879c7e0195e3de43fe2a .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1676263479" 
	@${RM} ${OBJECTDIR}/_ext/1676263479/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1676263479/spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1676263479/spi_flash.o.d" -o ${OBJECTDIR}/_ext/1676263479/spi_flash.o ../src/WINC1500/spi_flash/source/spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/193120149/nm_common.o: ../src/WINC1500/common/source/nm_common.c  .generated_files/flags/DSP_TU2/85b44b6f17f3db8ab0fe1bec2135afc5f0d18331 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/193120149" 
	@${RM} ${OBJECTDIR}/_ext/193120149/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/193120149/nm_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/193120149/nm_common.o.d" -o ${OBJECTDIR}/_ext/193120149/nm_common.o ../src/WINC1500/common/source/nm_common.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/320921301/nm_bsp.o: ../src/WINC1500/bsp/source/nm_bsp.c  .generated_files/flags/DSP_TU2/556949cb2dabea47a9ee9668c88c120d08a96c97 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/320921301" 
	@${RM} ${OBJECTDIR}/_ext/320921301/nm_bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/320921301/nm_bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/320921301/nm_bsp.o.d" -o ${OBJECTDIR}/_ext/320921301/nm_bsp.o ../src/WINC1500/bsp/source/nm_bsp.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o: ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c  .generated_files/flags/DSP_TU2/758768165a447cb579a0ffdf375e2fec25a51a21 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2119407712" 
	@${RM} ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o.d" -o ${OBJECTDIR}/_ext/2119407712/nm_bus_wrapper.o ../src/WINC1500/bus_wrapper/source/nm_bus_wrapper.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/557053683/socket.o: ../src/WINC1500/socket/source/socket.c  .generated_files/flags/DSP_TU2/427e01bee1108ffc188743a1f40f17ef7bfc25e .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/557053683" 
	@${RM} ${OBJECTDIR}/_ext/557053683/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/557053683/socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/557053683/socket.o.d" -o ${OBJECTDIR}/_ext/557053683/socket.o ../src/WINC1500/socket/source/socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o: ../src/winc1500/wf_mcu_driver_stub.c  .generated_files/flags/DSP_TU2/b0b7371642d9ef14226ebe9393f3e60eb1acb282 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1236603035" 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o.d" -o ${OBJECTDIR}/_ext/1236603035/wf_mcu_driver_stub.o ../src/winc1500/wf_mcu_driver_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WiFiInit.o: ../src/WiFiInit.c  .generated_files/flags/DSP_TU2/af5012c380d21d2a7b28f086e8d0fece883ce945 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WiFiInit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WiFiInit.o.d" -o ${OBJECTDIR}/_ext/1360937237/WiFiInit.o ../src/WiFiInit.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/WifiPoll.o: ../src/WifiPoll.c  .generated_files/flags/DSP_TU2/fe2f0b772333a8446b7069e71eeedfdf95eddb7b .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/WifiPoll.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/WifiPoll.o.d" -o ${OBJECTDIR}/_ext/1360937237/WifiPoll.o ../src/WifiPoll.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/452991131/wifi_event_stub.o: ../src/WINC1500/wifi_event_stub.c  .generated_files/flags/DSP_TU2/bfc4a3984fa1833592a74357f38149f20ded5f7d .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/452991131" 
	@${RM} ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o.d 
	@${RM} ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/452991131/wifi_event_stub.o.d" -o ${OBJECTDIR}/_ext/452991131/wifi_event_stub.o ../src/WINC1500/wifi_event_stub.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/d136d1ec055a7c8c5af59b45e8c6eb058bfe2cd3 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/cf7494d53c9d5ba686931c3058f16987b830b716 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/8b22cd047e03b93798aedf3e4f517bbf14bf9280 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/7d5dffd59eebc312c1e1a56cc45440171566aae7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/f26f848c0fc88962c73c9df9bf63f56f4ef53396 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/f12508263d19f34e6f18d9ee10819e72d8434bb6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/502c59ffc44a2a59efbe2e30ca2eae69be89d69c .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/10d177bead76f72f463d72b824b55a18d119aee .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/900a4a6cc36b08a603cdc1a6c0ea95ed5f49b6ec .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/7daf188e5fa49fd7af62683cae2c540d5c915304 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/5b6ca0e1fd46e59c49801be116334195b27d27b0 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/2044ff29245ceabe5cda135158df195c6e99cde7 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/343c0538263e644982fa58f16f2525bd1d111d08 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/4feed4e0c7f48df49977262100a2c94227aa1377 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/871d76198f12f3a7b2493449abc720adf3b02d60 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/e4bcbf3c2124c12c40359f9af8c1ad77fa9ffde6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/5320afad79502fbcca5aacde4a8d415854925e64 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/edb5d389225006f8be06f35398afc5d92dc91f04 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/5cf80db713b8776862b32aee33f9a58d1411e7b6 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/b9f1f807d7e070c67bcddf544f3612f72f34f300 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/9e2c9351d3dbc803d6e42bca35f9eb7475ec59f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/5c18a7bbacebd81e7488dff4ba65eeb24e03cc5f .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/RTC.o: ../src/RTC.c  .generated_files/flags/DSP_TU2/88da186b9e35a9b7e027584ef32ad6e4e6a4f4b8 .generated_files/flags/DSP_TU2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/WINC1500/source" -I"../src/WINC1500/include" -I"../src/WINC1500" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/RTC.o.d" -o ${OBJECTDIR}/_ext/1360937237/RTC.o ../src/RTC.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/app_mz.ld ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.20/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.hex ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex -odist/${CND_CONF}/production/DSP_TU2.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../../Bootloader/firmware/Bootloader.X && ${MAKE}  -f Makefile CONF=Bootloader TYPE_IMAGE=DEBUG_RUN
else
	cd ../../../Bootloader/firmware/Bootloader.X && ${MAKE}  -f Makefile CONF=Bootloader
endif


# Subprojects
.clean-subprojects:
	cd ../../../Bootloader/firmware/Bootloader.X && rm -rf "build/Bootloader" "dist/Bootloader"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
