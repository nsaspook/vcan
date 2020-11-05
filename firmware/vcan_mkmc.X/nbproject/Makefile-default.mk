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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/eeprom/plib_eeprom.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/qei/plib_qei2.c ../src/config/default/peripheral/qei/plib_qei3.c ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/default/peripheral/tmr/plib_tmr6.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/m35qei.c ../src/tests.c ../src/eadog.c ../src/dio.c ../src/adc_scan.c ../src/filters.c ../src/timers.c ../src/pid.c ../src/freqgen.c ../src/mc_picontrol.c ../src/mclib.c ../src/ChrFont0.c ../src/FillPat.c ../src/OledChar.c ../src/OledDriver.c ../src/OledGrph.c ../src/dogm-graphic.c ../src/main.c ../src/scdm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/m35qei.o ${OBJECTDIR}/_ext/1360937237/tests.o ${OBJECTDIR}/_ext/1360937237/eadog.o ${OBJECTDIR}/_ext/1360937237/dio.o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/pid.o ${OBJECTDIR}/_ext/1360937237/freqgen.o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ${OBJECTDIR}/_ext/1360937237/mclib.o ${OBJECTDIR}/_ext/1360937237/ChrFont0.o ${OBJECTDIR}/_ext/1360937237/FillPat.o ${OBJECTDIR}/_ext/1360937237/OledChar.o ${OBJECTDIR}/_ext/1360937237/OledDriver.o ${OBJECTDIR}/_ext/1360937237/OledGrph.o ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/scdm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/m35qei.o.d ${OBJECTDIR}/_ext/1360937237/tests.o.d ${OBJECTDIR}/_ext/1360937237/eadog.o.d ${OBJECTDIR}/_ext/1360937237/dio.o.d ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d ${OBJECTDIR}/_ext/1360937237/filters.o.d ${OBJECTDIR}/_ext/1360937237/timers.o.d ${OBJECTDIR}/_ext/1360937237/pid.o.d ${OBJECTDIR}/_ext/1360937237/freqgen.o.d ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d ${OBJECTDIR}/_ext/1360937237/mclib.o.d ${OBJECTDIR}/_ext/1360937237/ChrFont0.o.d ${OBJECTDIR}/_ext/1360937237/FillPat.o.d ${OBJECTDIR}/_ext/1360937237/OledChar.o.d ${OBJECTDIR}/_ext/1360937237/OledDriver.o.d ${OBJECTDIR}/_ext/1360937237/OledGrph.o.d ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/scdm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/m35qei.o ${OBJECTDIR}/_ext/1360937237/tests.o ${OBJECTDIR}/_ext/1360937237/eadog.o ${OBJECTDIR}/_ext/1360937237/dio.o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/pid.o ${OBJECTDIR}/_ext/1360937237/freqgen.o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ${OBJECTDIR}/_ext/1360937237/mclib.o ${OBJECTDIR}/_ext/1360937237/ChrFont0.o ${OBJECTDIR}/_ext/1360937237/FillPat.o ${OBJECTDIR}/_ext/1360937237/OledChar.o ${OBJECTDIR}/_ext/1360937237/OledDriver.o ${OBJECTDIR}/_ext/1360937237/OledGrph.o ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/scdm.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/eeprom/plib_eeprom.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/qei/plib_qei2.c ../src/config/default/peripheral/qei/plib_qei3.c ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/default/peripheral/tmr/plib_tmr6.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/m35qei.c ../src/tests.c ../src/eadog.c ../src/dio.c ../src/adc_scan.c ../src/filters.c ../src/timers.c ../src/pid.c ../src/freqgen.c ../src/mc_picontrol.c ../src/mclib.c ../src/ChrFont0.c ../src/FillPat.c ../src/OledChar.c ../src/OledDriver.c ../src/OledGrph.c ../src/dogm-graphic.c ../src/main.c ../src/scdm.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MK1024MCF100
MP_LINKER_FILE_OPTION=,--script="../src/config/default/p32MK1024MCF100.ld"
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
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/be5887cc87bc46629166c1a3f11336a6ff3d20ee.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/92b612dfd5aaffcb9f8c45df0ff270597fea1982.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1440699602/plib_eeprom.o: ../src/config/default/peripheral/eeprom/plib_eeprom.c  .generated_files/6647ec67e0174a2a8e7ec309539c2723b0f81162.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1440699602" 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d" -o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ../src/config/default/peripheral/eeprom/plib_eeprom.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/821142ded0049e6f1ef987b350998eac9aab0d4a.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/c11c8b1d1f7dff490f9debcc77f86e61bc9e01f5.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/777a1afc630a9498b3a46d5ae196370051fa9b81.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/596f97880e57ac4b21c8ffa3d851da10c1436cb7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ../src/config/default/peripheral/qei/plib_qei1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei2.o: ../src/config/default/peripheral/qei/plib_qei2.c  .generated_files/31a854795313e74293728a873142efd7ad771292.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei2.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ../src/config/default/peripheral/qei/plib_qei2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei3.o: ../src/config/default/peripheral/qei/plib_qei3.c  .generated_files/f88a8ea5bf1a036727f2d75d7ae7b7657e5c9e31.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei3.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ../src/config/default/peripheral/qei/plib_qei3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi3_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/8fd85b874f8d0193a0b1cc634ac0ad665977e8c2.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr6.o: ../src/config/default/peripheral/tmr/plib_tmr6.c  .generated_files/5963c7144f9aa60e2e8c08f32c43d32cf7cfadf7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ../src/config/default/peripheral/tmr/plib_tmr6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/8270079bbbcb71a92394a65b7dd30d558b27f3ac.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/5ecb6b844beb572ddb4f8fb02ff3f30ce916946d.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/9047e7a3bf419bc36d4f6b259d2ead7a2d0a4df0.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/555c0fc7e897ed9de283709b3cd0ed13a8cc941.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/164f16141d7dcb41533931d0feb27918c6fd76c2.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/7880af57ae5881d861f5f7e1130496fc2e416a99.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/4c0b064d2d8b728dadaa7e4ada9f24172600d88f.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/b931d50986dd0f420b6e69ce69b991edaee929a.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/608b244a362dcd840542a18d828540093ced56fe.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/c27515263f89d280721126c48822551e2357fe14.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/m35qei.o: ../src/m35qei.c  .generated_files/a70de859952daa31904c4328a8d5e35d3e938df8.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/m35qei.o.d" -o ${OBJECTDIR}/_ext/1360937237/m35qei.o ../src/m35qei.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/tests.o: ../src/tests.c  .generated_files/908b4f450d267ae35ec7952955d7a0f831a9ff6.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/tests.o.d" -o ${OBJECTDIR}/_ext/1360937237/tests.o ../src/tests.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/eadog.o: ../src/eadog.c  .generated_files/fddb5514ec10886c9d3cc094f68ba32bb71c0581.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eadog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eadog.o.d" -o ${OBJECTDIR}/_ext/1360937237/eadog.o ../src/eadog.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dio.o: ../src/dio.c  .generated_files/195a266a48d171921e5209d549be41a6c1fde5c2.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dio.o.d" -o ${OBJECTDIR}/_ext/1360937237/dio.o ../src/dio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/adc_scan.o: ../src/adc_scan.c  .generated_files/4e81b34ca4e0860d28ae44003e68cc60e35f9981.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc_scan.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ../src/adc_scan.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/957f2d533726d5730a78cf9da7d14b43ba6f4138.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/d8a2737dc114fe60853417257a374d22153847fe.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pid.o: ../src/pid.c  .generated_files/e85de1f4008ad821023d0cc9f685232655f5bf5b.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pid.o.d" -o ${OBJECTDIR}/_ext/1360937237/pid.o ../src/pid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/freqgen.o: ../src/freqgen.c  .generated_files/9cdf447e45ae0000a2dda359644309701bec243a.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/freqgen.o.d" -o ${OBJECTDIR}/_ext/1360937237/freqgen.o ../src/freqgen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mc_picontrol.o: ../src/mc_picontrol.c  .generated_files/394cdd9dc1b634a73c956e8683805d6c95544139.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ../src/mc_picontrol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mclib.o: ../src/mclib.c  .generated_files/c7aa9c4a3c687dbc58af24122b5023cca7246f80.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mclib.o.d" -o ${OBJECTDIR}/_ext/1360937237/mclib.o ../src/mclib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ChrFont0.o: ../src/ChrFont0.c  .generated_files/a871bff080ac90854604d12cba52a87bd850a593.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ChrFont0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ChrFont0.o.d" -o ${OBJECTDIR}/_ext/1360937237/ChrFont0.o ../src/ChrFont0.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/FillPat.o: ../src/FillPat.c  .generated_files/f713aa2500c72abacc630b36940ff7e77384227d.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FillPat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/FillPat.o.d" -o ${OBJECTDIR}/_ext/1360937237/FillPat.o ../src/FillPat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledChar.o: ../src/OledChar.c  .generated_files/932d6ecb776ddf46753c90cec97111d7925e6de7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledChar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledChar.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledChar.o ../src/OledChar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledDriver.o: ../src/OledDriver.c  .generated_files/7670d6727d80ea4773fa4c00cf56f9ed3f6e5fcc.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledDriver.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledDriver.o ../src/OledDriver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledGrph.o: ../src/OledGrph.c  .generated_files/8c71a75dbb92ebd594ecf9db97edc9cfe1468118.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledGrph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledGrph.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledGrph.o ../src/OledGrph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dogm-graphic.o: ../src/dogm-graphic.c  .generated_files/d1c7bbff3dbf9224dd381122c2e80aaa985f848.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dogm-graphic.o.d" -o ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o ../src/dogm-graphic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/79a728238f58837d81f70251e5689fa495c647b6.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/scdm.o: ../src/scdm.c  .generated_files/676a3cff3450aabf3739b2244bcebc9054bcabae.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/scdm.o.d" -o ${OBJECTDIR}/_ext/1360937237/scdm.o ../src/scdm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/bd25b30e89c376540be42bfea2c08d550ae55241.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/5b142350838cac6440cc4464d4d6e4298ac3e273.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1440699602/plib_eeprom.o: ../src/config/default/peripheral/eeprom/plib_eeprom.c  .generated_files/440ee691634409aafbdeb2787456f22d1bfc56d6.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1440699602" 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d" -o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ../src/config/default/peripheral/eeprom/plib_eeprom.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/faecbddf2614571085356a54296203a42b243d79.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/2d78d306b99a98004aa17c85cd3fa0751e2c2d9f.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/d70e3e8390b02e466dfce3369876128ccac77993.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/3a0309b762fb25f63b5b7789eba1c716995ab40c.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ../src/config/default/peripheral/qei/plib_qei1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei2.o: ../src/config/default/peripheral/qei/plib_qei2.c  .generated_files/4a190b8a050f76cbd700ff90fa963c8bc137d5b.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei2.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ../src/config/default/peripheral/qei/plib_qei2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei3.o: ../src/config/default/peripheral/qei/plib_qei3.c  .generated_files/537cd73685750d4734dfa26c25fd0b11cfda8fd8.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei3.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ../src/config/default/peripheral/qei/plib_qei3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi3_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/ebaee3e71b5d4cced9bc225d11fff478a6445d8e.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr6.o: ../src/config/default/peripheral/tmr/plib_tmr6.c  .generated_files/3ac390eb93d451274f598abb5560b6648060f8d8.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ../src/config/default/peripheral/tmr/plib_tmr6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/4f5542cbfd9e459a33bef57941c1c778d9a20119.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/a837bdf51ac3c3c8723b5b8d713f3b1410c7d283.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/974518da3981eb2ae7fb31bf598064552dc19bea.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/d05fc8e0d4432f948badbed7bae8090094dcb454.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/840a0504e0bd486c00c9c4f5163ad57f50348c11.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/a082e4867e1d4985b365749e2e6b30f1631b532.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/c9710fd1a337ebff5ebc4fbf32f362f95ea5e97f.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/fa97bcaefe7da076a5ad243f4e863cbfd09f60d9.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/bee1190fd474740911c2a961ee0105e876d352e7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/c055c4c053005d7e8abac1e516cde6dbdec5e124.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/m35qei.o: ../src/m35qei.c  .generated_files/336347c97c275a957629f752f2de94bab1778b8a.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/m35qei.o.d" -o ${OBJECTDIR}/_ext/1360937237/m35qei.o ../src/m35qei.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/tests.o: ../src/tests.c  .generated_files/db60aef22fc08588b5de76df5ddae530f17098da.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/tests.o.d" -o ${OBJECTDIR}/_ext/1360937237/tests.o ../src/tests.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/eadog.o: ../src/eadog.c  .generated_files/d70dceed1df0d7950abdaaf23fa8db571dcdef04.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eadog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/eadog.o.d" -o ${OBJECTDIR}/_ext/1360937237/eadog.o ../src/eadog.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dio.o: ../src/dio.c  .generated_files/2f730b20aebcddc972ffe66876b67db722a4556.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dio.o.d" -o ${OBJECTDIR}/_ext/1360937237/dio.o ../src/dio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/adc_scan.o: ../src/adc_scan.c  .generated_files/37666511d46cc385bf2e607605f10bbe69585091.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc_scan.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ../src/adc_scan.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/639f7e157ce7f1d5eea0a5347a28f01af1c564c7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/f8be419a5ab20c65af42dee9ccb1434c0c8b3ff8.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pid.o: ../src/pid.c  .generated_files/76394332c7c0a59747b50efb163b829414ca3920.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pid.o.d" -o ${OBJECTDIR}/_ext/1360937237/pid.o ../src/pid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/freqgen.o: ../src/freqgen.c  .generated_files/40773676b859419db4ee3d330adcf3b6849e2f64.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/freqgen.o.d" -o ${OBJECTDIR}/_ext/1360937237/freqgen.o ../src/freqgen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mc_picontrol.o: ../src/mc_picontrol.c  .generated_files/2f3b679a2c187bf86865be405f74e92a446f3273.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ../src/mc_picontrol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mclib.o: ../src/mclib.c  .generated_files/efe248b27e2f76ebc9ef7d6e163166fc4ec0ab19.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mclib.o.d" -o ${OBJECTDIR}/_ext/1360937237/mclib.o ../src/mclib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ChrFont0.o: ../src/ChrFont0.c  .generated_files/841f340b74bd78f0f4fd5a6fa0560a65646a93d6.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ChrFont0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ChrFont0.o.d" -o ${OBJECTDIR}/_ext/1360937237/ChrFont0.o ../src/ChrFont0.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/FillPat.o: ../src/FillPat.c  .generated_files/7610a56416636241af4db0f2f489b30999835bf7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FillPat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/FillPat.o.d" -o ${OBJECTDIR}/_ext/1360937237/FillPat.o ../src/FillPat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledChar.o: ../src/OledChar.c  .generated_files/1f268c21855474d5a91849823343e4653cb27f22.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledChar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledChar.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledChar.o ../src/OledChar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledDriver.o: ../src/OledDriver.c  .generated_files/d3b6ef29ccabc5d70f996719548abb3980e219e8.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledDriver.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledDriver.o ../src/OledDriver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OledGrph.o: ../src/OledGrph.c  .generated_files/c3ce6287ed19cfc633aa0396002d4e8b9bcc9dcf.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OledGrph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OledGrph.o.d" -o ${OBJECTDIR}/_ext/1360937237/OledGrph.o ../src/OledGrph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dogm-graphic.o: ../src/dogm-graphic.c  .generated_files/dee331657ca56f4c4ef666eed67912892c072492.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dogm-graphic.o.d" -o ${OBJECTDIR}/_ext/1360937237/dogm-graphic.o ../src/dogm-graphic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/91b66eda952b0baf57af566e5a6a80a4100d4ccf.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/scdm.o: ../src/scdm.c  .generated_files/1123cad1fc96cffb659da2039b463f5ee1a401a7.flag .generated_files/4fc10c05a921e842641095c219849f10056543dd.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MK1024MCF100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/scdm.o.d" -o ${OBJECTDIR}/_ext/1360937237/scdm.o ../src/scdm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MK1024MCF100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MK1024MCF100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/vcan_mkmc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
