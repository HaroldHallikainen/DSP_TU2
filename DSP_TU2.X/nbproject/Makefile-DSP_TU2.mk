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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart2.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o.d ${OBJECTDIR}/_ext/255064926/plib_clk.o.d ${OBJECTDIR}/_ext/682852657/plib_evic.o.d ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d ${OBJECTDIR}/_ext/682395886/plib_uart2.o.d ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d ${OBJECTDIR}/_ext/1994557280/initialization.o.d ${OBJECTDIR}/_ext/1994557280/interrupts.o.d ${OBJECTDIR}/_ext/1994557280/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d ${OBJECTDIR}/_ext/1360937237/agc.o.d ${OBJECTDIR}/_ext/1360937237/biquad.o.d ${OBJECTDIR}/_ext/1360937237/dds.o.d ${OBJECTDIR}/_ext/1360937237/display.o.d ${OBJECTDIR}/_ext/1360937237/fifo16.o.d ${OBJECTDIR}/_ext/1360937237/xyScope.o.d ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/302168295/plib_adchs.o ${OBJECTDIR}/_ext/255064926/plib_clk.o ${OBJECTDIR}/_ext/682852657/plib_evic.o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ${OBJECTDIR}/_ext/682395886/plib_uart2.o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ${OBJECTDIR}/_ext/1994557280/initialization.o ${OBJECTDIR}/_ext/1994557280/interrupts.o ${OBJECTDIR}/_ext/1994557280/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ${OBJECTDIR}/_ext/1360937237/agc.o ${OBJECTDIR}/_ext/1360937237/biquad.o ${OBJECTDIR}/_ext/1360937237/dds.o ${OBJECTDIR}/_ext/1360937237/display.o ${OBJECTDIR}/_ext/1360937237/fifo16.o ${OBJECTDIR}/_ext/1360937237/xyScope.o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o

# Source Files
SOURCEFILES=../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c ../src/config/DSP_TU2/peripheral/clk/plib_clk.c ../src/config/DSP_TU2/peripheral/evic/plib_evic.c ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c ../src/config/DSP_TU2/stdio/xc32_monitor.c ../src/config/DSP_TU2/initialization.c ../src/config/DSP_TU2/interrupts.c ../src/config/DSP_TU2/exceptions.c ../src/main.c ../src/AfskGen.c ../src/BaudotUart.c ../src/DynamicThreshold.c ../src/PwmAudioOut.c ../src/agc.c ../src/biquad.c ../src/dds.c ../src/display.c ../src/fifo16.c ../src/xyScope.c ../src/PollSwitchesLeds.c ../src/PollEncoder.c



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
MP_LINKER_FILE_OPTION=,--script="..\src\config\DSP_TU2\p32MZ0512EFE064.ld"
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
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/8673c6bacfc56b4df5f4018c59cb08cba010a3a4 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/be58060fa95b7b84e4bda94dbe51bb3a193768b3 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/b53019dcedf1eed2682700c590e0748974905f3a .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/69c9195cdfc2d7211b138a9f09655148e5215a43 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/41220686a547d9ae885c775a7485133bdf9834ee .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/d8215eef3ef71ac1c156b51565adbb677349271d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/322282e27667a82c8cb23c70fb50e5df02d8f526 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/33ba86d4db90b29924d1fcc7959f0dac4e2dcb16 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/9452310e83c986112708a2ae5ab1a8ba70c77830 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart2.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU2/3f563663432a029115b3d59a8446f1bbacfff568 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart2.o ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/df572f1aaef22fef5e95322a1b6e2fef56abbbdf .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/e15420916ad3743b4bb9b9c0728a0fbac4c61602 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/e59b3176c685c14517418f80d13b5a2ef0622ed6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/dfa1215ab32ae8369510f68c0b1527312a6aacb6 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/4705f2062a0cfe3b41fedcb180cb12f6faa41b79 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/d29f695799b7ca97930665e7b1ad2b5e8f953904 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/bae43e61765037d9027de58fdc7a01abc5916dde .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/d1afce640fb61e300311be8234b97ae7ec6c68c5 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/35288f54af4572a943ae8b620451018832fb4d81 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/e0138c76c130baea61239ffb1e46ead676c589f0 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/dca3eb68827ffef2345771671285ac76fbb7f3e7 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/587b98e58bd3ee425612313f6301b585ce82fc78 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/b8584b4afcc31b9a05cc6a7cd937d519cdff02d5 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/a52111422f824455bd1abbfd4f01dc35f9f5112e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/99d9065db1ab2bd7309bd17669ff282d84d3f0f5 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/de4a0b0b23303caa5b3143c86876773e1846ffeb .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/f43a3d614d5f4cb84b355f14e3a1e23d9bda8237 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/302168295/plib_adchs.o: ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c  .generated_files/flags/DSP_TU2/94567a8dd0728b669dd62c6c07397a6389c315ac .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/302168295" 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/302168295/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302168295/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/302168295/plib_adchs.o ../src/config/DSP_TU2/peripheral/adchs/plib_adchs.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255064926/plib_clk.o: ../src/config/DSP_TU2/peripheral/clk/plib_clk.c  .generated_files/flags/DSP_TU2/807c15293ed783e8d0a37b34c75d566a1c1f6767 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255064926" 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/255064926/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255064926/plib_clk.o.d" -o ${OBJECTDIR}/_ext/255064926/plib_clk.o ../src/config/DSP_TU2/peripheral/clk/plib_clk.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682852657/plib_evic.o: ../src/config/DSP_TU2/peripheral/evic/plib_evic.c  .generated_files/flags/DSP_TU2/e00c1d1355fe73e5675abd7c85eb894e3d12578e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682852657" 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/682852657/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682852657/plib_evic.o.d" -o ${OBJECTDIR}/_ext/682852657/plib_evic.o ../src/config/DSP_TU2/peripheral/evic/plib_evic.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682798829/plib_gpio.o: ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c  .generated_files/flags/DSP_TU2/27458a8888e8b7c98e85e5453204d5c946521ef8 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682798829" 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/682798829/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682798829/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/682798829/plib_gpio.o ../src/config/DSP_TU2/peripheral/gpio/plib_gpio.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682572869/plib_ocmp1.o: ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c  .generated_files/flags/DSP_TU2/7544d45a2bb56c7bcc3552ff139abed52cf25707 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682572869" 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682572869/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/682572869/plib_ocmp1.o ../src/config/DSP_TU2/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi1_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/DSP_TU2/66eb3ae6093f9c07b10d1d42a5cac0d19b060ce8 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi1_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi3_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/DSP_TU2/18848a1c87570201f9aa0fddf71b7c594e8ada17 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi3_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/957679836/plib_spi2_master.o: ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/DSP_TU2/1c186d331a1d03233ec91a5077d726167467b572 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/957679836" 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/957679836/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/957679836/plib_spi2_master.o ../src/config/DSP_TU2/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/255081301/plib_tmr2.o: ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/DSP_TU2/2537ba6bcf020934d8a272b6dfd949ab17b9ce47 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/255081301" 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/255081301/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/255081301/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/255081301/plib_tmr2.o ../src/config/DSP_TU2/peripheral/tmr/plib_tmr2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682395886/plib_uart2.o: ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c  .generated_files/flags/DSP_TU2/103fbfae0a4bc5115ff45cc5fd26530126bf04e9 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/682395886" 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/682395886/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682395886/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/682395886/plib_uart2.o ../src/config/DSP_TU2/peripheral/uart/plib_uart2.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/775482278/xc32_monitor.o: ../src/config/DSP_TU2/stdio/xc32_monitor.c  .generated_files/flags/DSP_TU2/b72316e9d492da4acd3d01fe7beb56af0de3c2b9 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/775482278" 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/775482278/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/775482278/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/775482278/xc32_monitor.o ../src/config/DSP_TU2/stdio/xc32_monitor.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/initialization.o: ../src/config/DSP_TU2/initialization.c  .generated_files/flags/DSP_TU2/db9208b69e915b5b8d959b5c3d0f1067eafe6a5f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/initialization.o.d" -o ${OBJECTDIR}/_ext/1994557280/initialization.o ../src/config/DSP_TU2/initialization.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/interrupts.o: ../src/config/DSP_TU2/interrupts.c  .generated_files/flags/DSP_TU2/30f5870fe68c60c0bdc611c26e561c162896102 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/interrupts.o.d" -o ${OBJECTDIR}/_ext/1994557280/interrupts.o ../src/config/DSP_TU2/interrupts.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994557280/exceptions.o: ../src/config/DSP_TU2/exceptions.c  .generated_files/flags/DSP_TU2/c6a05017de43c690844c528fa3f3f25844b62f7e .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1994557280" 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994557280/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1994557280/exceptions.o.d" -o ${OBJECTDIR}/_ext/1994557280/exceptions.o ../src/config/DSP_TU2/exceptions.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DSP_TU2/25b8c1ae584d3b0e542651e56831a66b77fa1f84 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/AfskGen.o: ../src/AfskGen.c  .generated_files/flags/DSP_TU2/32fe0cee6c4565daa142bc1079dbb4dd77fa5493 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AfskGen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AfskGen.o.d" -o ${OBJECTDIR}/_ext/1360937237/AfskGen.o ../src/AfskGen.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/BaudotUart.o: ../src/BaudotUart.c  .generated_files/flags/DSP_TU2/af1e43c044e05739bc1d5ad8465ad9b8f8299f2d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/BaudotUart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/BaudotUart.o.d" -o ${OBJECTDIR}/_ext/1360937237/BaudotUart.o ../src/BaudotUart.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o: ../src/DynamicThreshold.c  .generated_files/flags/DSP_TU2/ab0b0ce9a5d783c6e97d8cc349cf5b136116e16d .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o.d" -o ${OBJECTDIR}/_ext/1360937237/DynamicThreshold.o ../src/DynamicThreshold.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o: ../src/PwmAudioOut.c  .generated_files/flags/DSP_TU2/25b2896ce8cbd1abae139687cd1acb2ddd7f6a33 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o.d" -o ${OBJECTDIR}/_ext/1360937237/PwmAudioOut.o ../src/PwmAudioOut.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/agc.o: ../src/agc.c  .generated_files/flags/DSP_TU2/caf280ef6ff82833fe22df79ab5cad40ba423c00 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/agc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/agc.o.d" -o ${OBJECTDIR}/_ext/1360937237/agc.o ../src/agc.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/biquad.o: ../src/biquad.c  .generated_files/flags/DSP_TU2/8a9c9fd155fb0542cc49a22abe85583f856d47c2 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/biquad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/biquad.o.d" -o ${OBJECTDIR}/_ext/1360937237/biquad.o ../src/biquad.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dds.o: ../src/dds.c  .generated_files/flags/DSP_TU2/4b2c7069ad6f03c5204890acaabd2d74d31dee9f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dds.o.d" -o ${OBJECTDIR}/_ext/1360937237/dds.o ../src/dds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/display.o: ../src/display.c  .generated_files/flags/DSP_TU2/bb9daa57b75cf38d9d02df9e0f9af2751755922f .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/display.o.d" -o ${OBJECTDIR}/_ext/1360937237/display.o ../src/display.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/fifo16.o: ../src/fifo16.c  .generated_files/flags/DSP_TU2/bfa4093c7c6ff5a568eda1f82eb720e3c05622e3 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fifo16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/fifo16.o.d" -o ${OBJECTDIR}/_ext/1360937237/fifo16.o ../src/fifo16.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/xyScope.o: ../src/xyScope.c  .generated_files/flags/DSP_TU2/558001c9c7f0378920c3d22d71cafc99d8a86554 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/xyScope.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/xyScope.o.d" -o ${OBJECTDIR}/_ext/1360937237/xyScope.o ../src/xyScope.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o: ../src/PollSwitchesLeds.c  .generated_files/flags/DSP_TU2/fc7147cd3d53b2a926d17b76cd131ab52e9ca41b .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollSwitchesLeds.o ../src/PollSwitchesLeds.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/PollEncoder.o: ../src/PollEncoder.c  .generated_files/flags/DSP_TU2/bfed643418878f32fb1bd3102d6c1f88d9bef073 .generated_files/flags/DSP_TU2/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/PollEncoder.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/DSP_TU2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/PollEncoder.o.d" -o ${OBJECTDIR}/_ext/1360937237/PollEncoder.o ../src/PollEncoder.c    -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/DSP_TU2/p32MZ0512EFE064.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=10000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DSP_TU2/p32MZ0512EFE064.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DSP_TU2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/DSP_TU2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

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
