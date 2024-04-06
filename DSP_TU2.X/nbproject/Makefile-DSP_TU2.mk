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

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c ../src/winc1500/src/wf_asic.c ../src/winc1500/src/wf_hif.c ../src/winc1500/src/wf_ota.c ../src/winc1500/src/wf_socket.c ../src/winc1500/src/wf_spi.c ../src/winc1500/src/wf_spi_flash.c ../src/winc1500/src/wf_utils.c ../src/winc1500/src/wf_wifi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o.d ${OBJECTDIR}/_ext/255064926/plib_clk.o.d ${OBJECTDIR}/_ext/682852657/plib_evic.o.d ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d ${OBJECTDIR}/_ext/1994557280/initialization.o.d ${OBJECTDIR}/_ext/1994557280/interrupts.o.d ${OBJECTDIR}/_ext/1994557280/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/agc.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d ${OBJECTDIR}/_ext/1360937237/display.o.d ${OBJECTDIR}/_ext/1360937237/fifo16.o.d ${OBJECTDIR}/_ext/1360937237/xyScope.o.d ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d ${OBJECTDIR}/_ext/1360937237/filters.o.d ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d ${OBJECTDIR}/_ext/1360937237/fifo8.o.d ${OBJECTDIR}/_ext/1360937237/Unifont.o.d ${OBJECTDIR}/_ext/1360937237/menu.o.d ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ${OBJECTDIR}/_ext/1360937237/fifo8.o ${OBJECTDIR}/_ext/1360937237/Unifont.o ${OBJECTDIR}/_ext/1360937237/menu.o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o

# Source Files
SOURCEFILES=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c ../src/UserConfig.c ../src/filters.c ../src/AutostartKos.c ../src/ExtFlash.c ../src/CommandInterpreter.c ../src/fifo8.c ../src/Unifont.c ../src/menu.c ../src/PowerLineNoise.c ../src/winc1500/src/wf_asic.c ../src/winc1500/src/wf_hif.c ../src/winc1500/src/wf_ota.c ../src/winc1500/src/wf_socket.c ../src/winc1500/src/wf_spi.c ../src/winc1500/src/wf_spi_flash.c ../src/winc1500/src/wf_utils.c ../src/winc1500/src/wf_wifi.c



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
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/def98150016e8b3638f7ac141b08063f89eefd66 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/b2062fa30d5713fc1c4e30a888f0950349f10b6b .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/5dc69baade65c8872cad3ff80d1a6b288842bb24 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/beabf1a76a88cf2bba341a9f0beb44183318a676 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/a4fac91e8d9c77fcfb141a64af2de6a547651557 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/4955d765c44f1f8f83dc4197c66cb63868b661f9 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/67a9c49fb065e86fe47e89ad5124a7b82292d311 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/d02a6203e40c2fe1d7b9b0cc6d52c40032fa6edf .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/d745ec1099b51194c5f1acb57aed990913469348 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/bfb01328b61174d8ca0942ea279efdbb628877ab .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/b5ad91ca9fbee2d149212a7c748c4ea550995374 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/f2b97f5a343911edd7e12bab0d5ded3dbcc626f7 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/476a4a013c05097ccd5a1fb72e2cd921f240b1d2 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/ac9c7fac0ca50ae37dff1f33d87b9bf8c97956c6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/e09b3b68567acb3ea5e285eff2b2743555b5a49d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/5c31228ff43bc94c93ef0ee0ddab83b866c65d05 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/49d7c192c7f8a2d5fc5e9ebf04b06e6e66d0c98f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/13b5230457fce6e565dfba96cc94c8b930440be4 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/44d4ce3482cc519e2c79848acaa41b9f75a4ab97 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/e4616ac2db29a840e4d9902875185af91f8d6930 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/8d7fdaba05f79e566be31c43bdc9db8e0cea448c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/c080d494c757d8ff6670ceca800f83e77a27cb9f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/105f9e48a94a6fe44eff9b1805f440c7c66e9832 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/493e27bfa7c425e2d898580843f71f9c778fd7fd .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/97721e7f67f176ccc8eda0c6aca3108baa51db87 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/afcdbe2c54b6cf8100c805b983e7c4d8970986e2 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/dcb7f65828c3ba6faf96e4f7d6dcd9dfa8737460 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/faea14548fc18ec13af66d949f2b20e14530d482 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/fc3dc37364ac3cb00996cbbc1ef19f88dfbd92e3 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/ea89565697d6e0aa0d5a6342521cec59b017e25d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/e960f3495ac4e36e70090f57f7331a35e6cc9031 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/6fab2779e88f4b435fa5caf621c39aec134fcb1c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/2198531aa926c16268ca6c647d1df722a38d672c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/3dd960da07e9f848bf877cb5a2be93263cb3f2a0 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/6834c86e6cdf1331e92ed2c47a97c2fb70ec9f0c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/986a0156f1a7be51be23d6c43098b2d8cdf2f7a3 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/49fd3e805a6f093a746857b8e01b3dd913e2d7ed .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/e6e4608a229c547bdf031aa855554e0b7297a59f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/e531a3720670b9b8d7e236b01667521fe4e834c2 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/6bc3a7ccc01cd5c09a98ac4842b9441b6dd08d44 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/6c0edcc1e2fa2deb4288e914e2b4ec4cd2cf568e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/414cff1ba6b5ba71d3a50908a770df8bf45e005e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/97dcc2cd45a41f8218243bf3ac1883e431911361 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/9ca5e4504544e1e00859e8dbdccb5b6f15fbd152 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/a75262fadf540ab3c232de1227b5d76ce5b1bfa4 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/bac09279a5e757546afd778227a56d9c2f73ec90 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/a2fd946a4467b94910e81632ff2fe8f79244a0fc .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/adc10d0d57aea8a0ca11c95d15edbd430e3a93a3 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/4d61c68f1f8db9a564d9401c80e7d0bf8da2a51a .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/ead9a68009286f803d6726a866fd146997a19ff6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/868e5c7dfe386252735585c45f8a346767ae98e4 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/38e607fd4733b81f71eadf48cbb344bc1db11f6d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/e6138007acc557821354182245785ea6053fda26 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/1c4eb9c329ed65f18559fe87f97363df5a33cc6d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart1.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c  .generated_files/flags/DSP_TU2/9b004a7d14020fefc8bc71661f3534e8478e8813 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart1.o ../src/config/DSP_TU2/peripheral/uart/plib_uart1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255083907/plib_wdt.o: ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c  .generated_files/flags/DSP_TU2/c1330c735ffdca875773fa936c76581f3dca87d9 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255083907" 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/255083907/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255083907/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/255083907/plib_wdt.o ../src/config/DSP_TU2/peripheral/wdt/plib_wdt.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/d1d02c92d1357e881215c60016154175d27d1625 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/28c36710ed990178decedeb5476c5c477600dc39 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/d054109a2654c7226f58b4178701c632ecc65924 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/4e0952f83b5ea3414dcdf024c1e4a4b4509fd7c7 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/a68b8e1035bfe6d55caf0b3d4aba4939c70ddadf .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/5c3e3512e0681e2349af9375e47ff971746eb8f6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/a2e123d7961e65f5e5f84081b3d7c4c3c0e9dcdd .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/75b35b18d6e75b94ed748a1dcaaea3fc07616554 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/aa225a73f5462c08a2a1a024c857beb2291d373f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/8626a30c927cad5b5e7e67387519c83ad00544af .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/c27a505642c51400477fcfc970194b5448cc8cc6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/14dd4aa8c0aebdab3f44c3e7f55cdab95840e04f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/f9d9f0a5aafb51b16bb692ae76a6fae72d95b811 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/b4bc260a966c19dc09806a533f957aa5b467ef8a .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/670440955582cf10d4087077e51648a9c92d7c0a .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/a74fe38cd664a1c328ac90c3821eb280f10d4213 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/7b607afb110888104734da0821a1eca91e8df604 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UserConfig.o: ../src/UserConfig.c  .generated_files/flags/DSP_TU2/cf4452ecaf0e0a6ccb9befc2e86c537caaf36732 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UserConfig.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UserConfig.o.d" -o ${OBJECTDIR}/_ext/1360937237/UserConfig.o ../src/UserConfig.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/DSP_TU2/51fc033c898cc0fc0ed4e231ee12b8d69e7a0149 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AutostartKos.o: ../src/AutostartKos.c  .generated_files/flags/DSP_TU2/f681c23ba6dd8f78fdabf0ea62dd30effef3de2e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AutostartKos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AutostartKos.o.d" -o ${OBJECTDIR}/_ext/1360937237/AutostartKos.o ../src/AutostartKos.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ExtFlash.o: ../src/ExtFlash.c  .generated_files/flags/DSP_TU2/4299d36e15d7249cace11bb025113c89c64cca58 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ExtFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ExtFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/ExtFlash.o ../src/ExtFlash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o: ../src/CommandInterpreter.c  .generated_files/flags/DSP_TU2/a488697f3a2730868ffb7cc209564b021b392f27 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o.d" -o ${OBJECTDIR}/_ext/1360937237/CommandInterpreter.o ../src/CommandInterpreter.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo8.o: ../src/fifo8.c  .generated_files/flags/DSP_TU2/af878a1d679f8c9d181c829a0c9eeeabd498e9a1 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo8.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo8.o ../src/fifo8.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Unifont.o: ../src/Unifont.c  .generated_files/flags/DSP_TU2/2e8313d51a85e270e9c9cde0c257ef9898b5c8c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Unifont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Unifont.o.d" -o ${OBJECTDIR}/_ext/1360937237/Unifont.o ../src/Unifont.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/menu.o: ../src/menu.c  .generated_files/flags/DSP_TU2/2304eae702e8fe2ada4a79c0f9a6617a83e7f918 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/menu.o.d" -o ${OBJECTDIR}/_ext/1360937237/menu.o ../src/menu.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o: ../src/PowerLineNoise.c  .generated_files/flags/DSP_TU2/d01582b543dcdaebaf0d36e5075e907c3635391f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o.d" -o ${OBJECTDIR}/_ext/1360937237/PowerLineNoise.o ../src/PowerLineNoise.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_asic.o: ../src/winc1500/src/wf_asic.c  .generated_files/flags/DSP_TU2/dbcbba36590a35064e1ea20da599c8ee12f1bec6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_asic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_asic.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_asic.o ../src/winc1500/src/wf_asic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_hif.o: ../src/winc1500/src/wf_hif.c  .generated_files/flags/DSP_TU2/63d592c4a71a1ca1078d5953dddf215f5ccf4a2e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_hif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_hif.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_hif.o ../src/winc1500/src/wf_hif.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_ota.o: ../src/winc1500/src/wf_ota.c  .generated_files/flags/DSP_TU2/556e073d3286ad2c882fdbb7c6e9d04f6a62d380 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_ota.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_ota.o ../src/winc1500/src/wf_ota.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_socket.o: ../src/winc1500/src/wf_socket.c  .generated_files/flags/DSP_TU2/fd08622aeaca740154bade6ce2d753e763a2895 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_socket.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_socket.o ../src/winc1500/src/wf_socket.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi.o: ../src/winc1500/src/wf_spi.c  .generated_files/flags/DSP_TU2/d07b0b8082d6c26d559a6e7ef78f7d2e362f86dc .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi.o ../src/winc1500/src/wf_spi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o: ../src/winc1500/src/wf_spi_flash.c  .generated_files/flags/DSP_TU2/b4b2d7d88fcc3c3e8333b5b3b8fafa33012e9c .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_spi_flash.o ../src/winc1500/src/wf_spi_flash.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_utils.o: ../src/winc1500/src/wf_utils.c  .generated_files/flags/DSP_TU2/44f81dcc2b9e26952009165e1847decd361ffa51 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_utils.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_utils.o ../src/winc1500/src/wf_utils.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360932806/wf_wifi.o: ../src/winc1500/src/wf_wifi.c  .generated_files/flags/DSP_TU2/cee9996be4a455c0d20f503dc9a0f20dd99adafd .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360932806" 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360932806/wf_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O2 -I"../src" -I"../src/config/DSP_TU2" -I"../src/winc1500" -I"../src/winc1500/src" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360932806/wf_wifi.o.d" -o ${OBJECTDIR}/_ext/1360932806/wf_wifi.o ../src/winc1500/src/wf_wifi.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/app_mz.ld ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=15000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.hex ../../../Bootloader/firmware/Bootloader.X/dist/Bootloader/production/Bootloader.X.production.hex -odist/${CND_CONF}/production/DSP_TU2.X.production.unified.hex

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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
