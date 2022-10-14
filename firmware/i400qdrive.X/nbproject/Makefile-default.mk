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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../lcd_drv/ChrFont0.c ../lcd_drv/OledChar.c ../lcd_drv/OledDriver.c ../lcd_drv/OledGrph.c ../lcd_drv/eadog.c ../lcd_drv/dogm-graphic.c ../lcd_drv/lcd_drv.c ../lcd_drv/foo.c ../lcd_drv/FillPat.c ../src/PetitModbus/PetitRegConstant.c ../src/PetitModbus/PetitModbusPort.c ../src/PetitModbus/PetitModbus.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/peripheral/dmt/plib_dmt.c ../src/config/default/peripheral/eeprom/plib_eeprom.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/qei/plib_qei2.c ../src/config/default/peripheral/qei/plib_qei3.c ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/default/peripheral/tmr/plib_tmr6.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/m35qei.c ../src/tests.c ../src/dio.c ../src/adc_scan.c ../src/filters.c ../src/timers.c ../src/pid.c ../src/freqgen.c ../src/mc_picontrol.c ../src/mclib.c ../src/main.c ../src/scdm.c ../src/gfx.c ../src/faults.c ../src/config/default/peripheral/canfd/plib_canfd1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1684788505/ChrFont0.o ${OBJECTDIR}/_ext/1684788505/OledChar.o ${OBJECTDIR}/_ext/1684788505/OledDriver.o ${OBJECTDIR}/_ext/1684788505/OledGrph.o ${OBJECTDIR}/_ext/1684788505/eadog.o ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o ${OBJECTDIR}/_ext/1684788505/lcd_drv.o ${OBJECTDIR}/_ext/1684788505/foo.o ${OBJECTDIR}/_ext/1684788505/FillPat.o ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o ${OBJECTDIR}/_ext/133430606/PetitModbus.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/60166521/plib_dmt.o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/m35qei.o ${OBJECTDIR}/_ext/1360937237/tests.o ${OBJECTDIR}/_ext/1360937237/dio.o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/pid.o ${OBJECTDIR}/_ext/1360937237/freqgen.o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ${OBJECTDIR}/_ext/1360937237/mclib.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/scdm.o ${OBJECTDIR}/_ext/1360937237/gfx.o ${OBJECTDIR}/_ext/1360937237/faults.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1684788505/ChrFont0.o.d ${OBJECTDIR}/_ext/1684788505/OledChar.o.d ${OBJECTDIR}/_ext/1684788505/OledDriver.o.d ${OBJECTDIR}/_ext/1684788505/OledGrph.o.d ${OBJECTDIR}/_ext/1684788505/eadog.o.d ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o.d ${OBJECTDIR}/_ext/1684788505/lcd_drv.o.d ${OBJECTDIR}/_ext/1684788505/foo.o.d ${OBJECTDIR}/_ext/1684788505/FillPat.o.d ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o.d ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o.d ${OBJECTDIR}/_ext/133430606/PetitModbus.o.d ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d ${OBJECTDIR}/_ext/60166521/plib_dmt.o.d ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/m35qei.o.d ${OBJECTDIR}/_ext/1360937237/tests.o.d ${OBJECTDIR}/_ext/1360937237/dio.o.d ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d ${OBJECTDIR}/_ext/1360937237/filters.o.d ${OBJECTDIR}/_ext/1360937237/timers.o.d ${OBJECTDIR}/_ext/1360937237/pid.o.d ${OBJECTDIR}/_ext/1360937237/freqgen.o.d ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d ${OBJECTDIR}/_ext/1360937237/mclib.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/scdm.o.d ${OBJECTDIR}/_ext/1360937237/gfx.o.d ${OBJECTDIR}/_ext/1360937237/faults.o.d ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1684788505/ChrFont0.o ${OBJECTDIR}/_ext/1684788505/OledChar.o ${OBJECTDIR}/_ext/1684788505/OledDriver.o ${OBJECTDIR}/_ext/1684788505/OledGrph.o ${OBJECTDIR}/_ext/1684788505/eadog.o ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o ${OBJECTDIR}/_ext/1684788505/lcd_drv.o ${OBJECTDIR}/_ext/1684788505/foo.o ${OBJECTDIR}/_ext/1684788505/FillPat.o ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o ${OBJECTDIR}/_ext/133430606/PetitModbus.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/60166521/plib_dmt.o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1360937237/m35qei.o ${OBJECTDIR}/_ext/1360937237/tests.o ${OBJECTDIR}/_ext/1360937237/dio.o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ${OBJECTDIR}/_ext/1360937237/filters.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/pid.o ${OBJECTDIR}/_ext/1360937237/freqgen.o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ${OBJECTDIR}/_ext/1360937237/mclib.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/scdm.o ${OBJECTDIR}/_ext/1360937237/gfx.o ${OBJECTDIR}/_ext/1360937237/faults.o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o

# Source Files
SOURCEFILES=../lcd_drv/ChrFont0.c ../lcd_drv/OledChar.c ../lcd_drv/OledDriver.c ../lcd_drv/OledGrph.c ../lcd_drv/eadog.c ../lcd_drv/dogm-graphic.c ../lcd_drv/lcd_drv.c ../lcd_drv/foo.c ../lcd_drv/FillPat.c ../src/PetitModbus/PetitRegConstant.c ../src/PetitModbus/PetitModbusPort.c ../src/PetitModbus/PetitModbus.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/peripheral/dmt/plib_dmt.c ../src/config/default/peripheral/eeprom/plib_eeprom.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/mcpwm/plib_mcpwm.c ../src/config/default/peripheral/qei/plib_qei1.c ../src/config/default/peripheral/qei/plib_qei2.c ../src/config/default/peripheral/qei/plib_qei3.c ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/default/peripheral/tmr/plib_tmr6.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/m35qei.c ../src/tests.c ../src/dio.c ../src/adc_scan.c ../src/filters.c ../src/timers.c ../src/pid.c ../src/freqgen.c ../src/mc_picontrol.c ../src/mclib.c ../src/main.c ../src/scdm.c ../src/gfx.c ../src/faults.c ../src/config/default/peripheral/canfd/plib_canfd1.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MK1024MCM100
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MK1024MCM100.ld"
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
${OBJECTDIR}/_ext/1684788505/ChrFont0.o: ../lcd_drv/ChrFont0.c  .generated_files/flags/default/80598b6630ea43f20aecb42cc72bc5c11a6c874 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/ChrFont0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/ChrFont0.o.d" -o ${OBJECTDIR}/_ext/1684788505/ChrFont0.o ../lcd_drv/ChrFont0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledChar.o: ../lcd_drv/OledChar.c  .generated_files/flags/default/3dd630563503ad1c7687e0d904ea3ae3d9b1d365 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledChar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledChar.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledChar.o ../lcd_drv/OledChar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledDriver.o: ../lcd_drv/OledDriver.c  .generated_files/flags/default/cc22e3ea061b4243807a382b27c42c72488406ba .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledDriver.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledDriver.o ../lcd_drv/OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledGrph.o: ../lcd_drv/OledGrph.c  .generated_files/flags/default/6f87199106f293e3b79f41a6cb98a30205ec4ade .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledGrph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledGrph.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledGrph.o ../lcd_drv/OledGrph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/eadog.o: ../lcd_drv/eadog.c  .generated_files/flags/default/6b315b843e56aca85715a80f8f4efb1884ee91a5 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/eadog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/eadog.o.d" -o ${OBJECTDIR}/_ext/1684788505/eadog.o ../lcd_drv/eadog.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/dogm-graphic.o: ../lcd_drv/dogm-graphic.c  .generated_files/flags/default/b6de1fe8c28004db2366a36f8cd1e42ab0254f97 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/dogm-graphic.o.d" -o ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o ../lcd_drv/dogm-graphic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/lcd_drv.o: ../lcd_drv/lcd_drv.c  .generated_files/flags/default/72c62c6d75734429d53f082c315ba95fb898dba0 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/lcd_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/lcd_drv.o.d" -o ${OBJECTDIR}/_ext/1684788505/lcd_drv.o ../lcd_drv/lcd_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/foo.o: ../lcd_drv/foo.c  .generated_files/flags/default/903ed4c599784e515fa7456c993d69bbb88b602d .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/foo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/foo.o.d" -o ${OBJECTDIR}/_ext/1684788505/foo.o ../lcd_drv/foo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/FillPat.o: ../lcd_drv/FillPat.c  .generated_files/flags/default/402eb987a3f23eaefde91e918c7dc965a236f7e1 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/FillPat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/FillPat.o.d" -o ${OBJECTDIR}/_ext/1684788505/FillPat.o ../lcd_drv/FillPat.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitRegConstant.o: ../src/PetitModbus/PetitRegConstant.c  .generated_files/flags/default/3d723da2a6499506d38c8461ef0d30bcd7cfec92 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitRegConstant.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o ../src/PetitModbus/PetitRegConstant.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitModbusPort.o: ../src/PetitModbus/PetitModbusPort.c  .generated_files/flags/default/67a29243c8ddb2fb8c331700fdb708052be40a36 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitModbusPort.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o ../src/PetitModbus/PetitModbusPort.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitModbus.o: ../src/PetitModbus/PetitModbus.c  .generated_files/flags/default/6a5a5c04d6ec4e5316f5b2798efae3c4524d55a6 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitModbus.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitModbus.o ../src/PetitModbus/PetitModbus.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/cf31126e74b8a0e56c5983ae8d81d269725c14f6 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/d171643f5df4fac66be1f9ef5911486c3be75df5 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/e81ef7f048ff3286649cec7b9629846e7450563c .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/87d62a0725131b6d25f0f3366045c19f995c8fdb .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60166521/plib_dmt.o: ../src/config/default/peripheral/dmt/plib_dmt.c  .generated_files/flags/default/b61d7cd0e9173c23e33e98e65b9d779bc6451ea4 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60166521" 
	@${RM} ${OBJECTDIR}/_ext/60166521/plib_dmt.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166521/plib_dmt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60166521/plib_dmt.o.d" -o ${OBJECTDIR}/_ext/60166521/plib_dmt.o ../src/config/default/peripheral/dmt/plib_dmt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1440699602/plib_eeprom.o: ../src/config/default/peripheral/eeprom/plib_eeprom.c  .generated_files/flags/default/3bda149eb51a06f5c197e216e9baf15f277284 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1440699602" 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d" -o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ../src/config/default/peripheral/eeprom/plib_eeprom.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/d42e413c1df7e16d384fec1bdd957dc36ef03d0b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/b0e7810dc547f9e398cb824b61c54625a24ea16a .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/d11e4de8cdd7d16f0fdcc827cbafee2ed6736e1c .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/flags/default/c966c52f027a02c7201e1b6ff24d1bed277f9620 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ../src/config/default/peripheral/qei/plib_qei1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei2.o: ../src/config/default/peripheral/qei/plib_qei2.c  .generated_files/flags/default/5555d910717e35e0b5c9ed5b74bfa6c95a42482f .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei2.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ../src/config/default/peripheral/qei/plib_qei2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei3.o: ../src/config/default/peripheral/qei/plib_qei3.c  .generated_files/flags/default/fa3f1f20b708b9573565e0cb9ba7a30555ef8d31 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei3.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ../src/config/default/peripheral/qei/plib_qei3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi3_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/default/f2877404b145a4d0c384f16f43f34866d0a164a4 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr6.o: ../src/config/default/peripheral/tmr/plib_tmr6.c  .generated_files/flags/default/caa59383def7dabbd6ed0b9e1009687784888721 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ../src/config/default/peripheral/tmr/plib_tmr6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/5f9edec1cc205ef8cfcb996f5e7d4fc10801be74 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/flags/default/1b479006bb5edb6f6c992f017adee0c7031383df .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/be2ee19fea1ad5c56f1b7409b14c4fbe2d4fcd2d .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/6c20e6ea954ff8bd2973b0aabfaec3e84dce97d3 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/72c54e868b5e643e1f0b19a831c86e014bd3cab0 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/610cb2b823b3880bda9791c9566af19197c0194 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/abe4d4b9b53460f8afbd4c2192662f3f0e5016e2 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/64c0966129edc7e7d0dbc4840e2d5b0608a14ad9 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/a7e962e923145025c9242e212f1b2f2d755cea1a .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f8139d4fc02732b4513248e7882ef870bf561406 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/m35qei.o: ../src/m35qei.c  .generated_files/flags/default/ce20f22b65e46adbc3eaf6a9080087ad951a304b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/m35qei.o.d" -o ${OBJECTDIR}/_ext/1360937237/m35qei.o ../src/m35qei.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/tests.o: ../src/tests.c  .generated_files/flags/default/70cadf2973382a3fc07294b86e23f004f381921 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/tests.o.d" -o ${OBJECTDIR}/_ext/1360937237/tests.o ../src/tests.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dio.o: ../src/dio.c  .generated_files/flags/default/68419eff76f950c4743e4674671e895018a6c1bf .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dio.o.d" -o ${OBJECTDIR}/_ext/1360937237/dio.o ../src/dio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/adc_scan.o: ../src/adc_scan.c  .generated_files/flags/default/a93ac535f4413b511265b9717b2ddd8c40240fb8 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc_scan.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ../src/adc_scan.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/default/a99ad56a0dd339cbe1b047590a4ba0cb22bf33b3 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/flags/default/1f01b4a2b056e526fdf272a20cab01deee364ee3 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pid.o: ../src/pid.c  .generated_files/flags/default/b264aac4a7f7ab75505d9a2761fe6fb1d45fe10f .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pid.o.d" -o ${OBJECTDIR}/_ext/1360937237/pid.o ../src/pid.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/freqgen.o: ../src/freqgen.c  .generated_files/flags/default/53f29c725676719d1c159bf2ddb061b28244263b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/freqgen.o.d" -o ${OBJECTDIR}/_ext/1360937237/freqgen.o ../src/freqgen.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mc_picontrol.o: ../src/mc_picontrol.c  .generated_files/flags/default/98afc819b1d5b512cf481eb195581cfa13f785bd .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ../src/mc_picontrol.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mclib.o: ../src/mclib.c  .generated_files/flags/default/9fd2860f8644062a2e5dcac8f61a34971cec00ac .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mclib.o.d" -o ${OBJECTDIR}/_ext/1360937237/mclib.o ../src/mclib.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/436899505b7f6e1f0d23d125c7be5061aa47c350 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/scdm.o: ../src/scdm.c  .generated_files/flags/default/d045b9d1ec3a3b2d4cf1b60f81ff16c66223b47e .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/scdm.o.d" -o ${OBJECTDIR}/_ext/1360937237/scdm.o ../src/scdm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  .generated_files/flags/default/e32f25ac9dab4ffb33a00b79597736eaa4797f2d .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d" -o ${OBJECTDIR}/_ext/1360937237/gfx.o ../src/gfx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/faults.o: ../src/faults.c  .generated_files/flags/default/40c615e432819160f995c636dd836f9841b0720b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/faults.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/faults.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/faults.o.d" -o ${OBJECTDIR}/_ext/1360937237/faults.o ../src/faults.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/dc4c0b1d3fe2070f2a2a2df82407cc809ed52f96 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1684788505/ChrFont0.o: ../lcd_drv/ChrFont0.c  .generated_files/flags/default/3e569f66451026262999d9c9fa0170c51f88a13a .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/ChrFont0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/ChrFont0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/ChrFont0.o.d" -o ${OBJECTDIR}/_ext/1684788505/ChrFont0.o ../lcd_drv/ChrFont0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledChar.o: ../lcd_drv/OledChar.c  .generated_files/flags/default/28ac4dbb04a64ecb9611e45bee09588c28282c44 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledChar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledChar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledChar.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledChar.o ../lcd_drv/OledChar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledDriver.o: ../lcd_drv/OledDriver.c  .generated_files/flags/default/6687a026daf1000cf1fe5f15a73f307128b3cc90 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledDriver.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledDriver.o ../lcd_drv/OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/OledGrph.o: ../lcd_drv/OledGrph.c  .generated_files/flags/default/f6e7321f9ccbf012abea43bcc68c15423acdb462 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledGrph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/OledGrph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/OledGrph.o.d" -o ${OBJECTDIR}/_ext/1684788505/OledGrph.o ../lcd_drv/OledGrph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/eadog.o: ../lcd_drv/eadog.c  .generated_files/flags/default/87fbcf9fa5ad171e1e0395c4305fa40bbeac49a3 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/eadog.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/eadog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/eadog.o.d" -o ${OBJECTDIR}/_ext/1684788505/eadog.o ../lcd_drv/eadog.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/dogm-graphic.o: ../lcd_drv/dogm-graphic.c  .generated_files/flags/default/1d2a41521b5afc4fdd9b05885406166d386a41d8 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/dogm-graphic.o.d" -o ${OBJECTDIR}/_ext/1684788505/dogm-graphic.o ../lcd_drv/dogm-graphic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/lcd_drv.o: ../lcd_drv/lcd_drv.c  .generated_files/flags/default/86428b7d849ec06a0e01972926ba53bf7d447c44 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/lcd_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/lcd_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/lcd_drv.o.d" -o ${OBJECTDIR}/_ext/1684788505/lcd_drv.o ../lcd_drv/lcd_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/foo.o: ../lcd_drv/foo.c  .generated_files/flags/default/e0e418abfb7fcdc37465bfa518d88bf23e11572d .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/foo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/foo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/foo.o.d" -o ${OBJECTDIR}/_ext/1684788505/foo.o ../lcd_drv/foo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1684788505/FillPat.o: ../lcd_drv/FillPat.c  .generated_files/flags/default/e1f521f5d921100ff1de6bf47896a0a6262040a4 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1684788505" 
	@${RM} ${OBJECTDIR}/_ext/1684788505/FillPat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684788505/FillPat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684788505/FillPat.o.d" -o ${OBJECTDIR}/_ext/1684788505/FillPat.o ../lcd_drv/FillPat.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitRegConstant.o: ../src/PetitModbus/PetitRegConstant.c  .generated_files/flags/default/49d7d2a259f01b8eb53a69860df114bd42cdf3f0 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitRegConstant.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitRegConstant.o ../src/PetitModbus/PetitRegConstant.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitModbusPort.o: ../src/PetitModbus/PetitModbusPort.c  .generated_files/flags/default/9057c8065b8cf8aae483c538b481559ac8edf515 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitModbusPort.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitModbusPort.o ../src/PetitModbus/PetitModbusPort.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/133430606/PetitModbus.o: ../src/PetitModbus/PetitModbus.c  .generated_files/flags/default/443a53488d8d34a33527ac9a0bf210d6213154a5 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/133430606" 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/133430606/PetitModbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/133430606/PetitModbus.o.d" -o ${OBJECTDIR}/_ext/133430606/PetitModbus.o ../src/PetitModbus/PetitModbus.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/89e107e8d6c359d7a59a5949ce1805173b742ada .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/b24bba5f65555557927187119e9617293084a7de .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/986968bc36587149a6b737d3dfb9e1e4cb8ac07e .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/3bede3c5ecc3d1a87fbda0552d20762c345a2bc9 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60166521/plib_dmt.o: ../src/config/default/peripheral/dmt/plib_dmt.c  .generated_files/flags/default/8d1c4f8127425040bd9da604fc427c09c5eb4d9c .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60166521" 
	@${RM} ${OBJECTDIR}/_ext/60166521/plib_dmt.o.d 
	@${RM} ${OBJECTDIR}/_ext/60166521/plib_dmt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60166521/plib_dmt.o.d" -o ${OBJECTDIR}/_ext/60166521/plib_dmt.o ../src/config/default/peripheral/dmt/plib_dmt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1440699602/plib_eeprom.o: ../src/config/default/peripheral/eeprom/plib_eeprom.c  .generated_files/flags/default/ccf9c40c2a1c67cf109ba0d2d4ac9ec259797c25 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1440699602" 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1440699602/plib_eeprom.o.d" -o ${OBJECTDIR}/_ext/1440699602/plib_eeprom.o ../src/config/default/peripheral/eeprom/plib_eeprom.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/74f01f0404e5f1e0f341443ab8b08f8c317b39e4 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/2a44738138804052919450bd9c4562d5d0e753a6 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o: ../src/config/default/peripheral/mcpwm/plib_mcpwm.c  .generated_files/flags/default/727ab2411865da4d8cfea8ddfe71e36f9c33975c .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1993465566" 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o.d" -o ${OBJECTDIR}/_ext/1993465566/plib_mcpwm.o ../src/config/default/peripheral/mcpwm/plib_mcpwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei1.o: ../src/config/default/peripheral/qei/plib_qei1.c  .generated_files/flags/default/fccf2dceb0deb30cc5483cab45f6299da38739fb .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei1.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei1.o ../src/config/default/peripheral/qei/plib_qei1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei2.o: ../src/config/default/peripheral/qei/plib_qei2.c  .generated_files/flags/default/84d9730ee09037d510dc8292266cc89fc5fc1cd1 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei2.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei2.o ../src/config/default/peripheral/qei/plib_qei2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60178755/plib_qei3.o: ../src/config/default/peripheral/qei/plib_qei3.c  .generated_files/flags/default/85728d9e55b055aab937499a4c08cc6a346747b1 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60178755" 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60178755/plib_qei3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60178755/plib_qei3.o.d" -o ${OBJECTDIR}/_ext/60178755/plib_qei3.o ../src/config/default/peripheral/qei/plib_qei3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi3_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/default/75cf0608e562b9f7e8ffa215ec84aba8800c398d .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi3_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr6.o: ../src/config/default/peripheral/tmr/plib_tmr6.c  .generated_files/flags/default/f13a778cc9b507c878647f02ce29a449ade98fbd .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr6.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr6.o ../src/config/default/peripheral/tmr/plib_tmr6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/35c035c124d7360aa6c411a1a8d3fa179dc1f846 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/flags/default/445b7782dfef8d013ac08ad36886ab10ec5f6eb1 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/731295eff4c4ae110a4ebca29096787765c57d75 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/34eb8f821b89b249d44129a9807ce719da9591fa .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/4e2a6d1b7efb345eb24e0ce521808b08a311e5d2 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/4c9d14b1d0fec6f7ab3c38ab4a41ec59d62d5b73 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/bd8311c765009998496ee746d4e75f925310fae6 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/f19ee17928a1fac461713405f762a46d3a5738ea .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/854993e3e9c0c6ae2cad146c32fd76c36d14399e .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/c480dfa2b2cac8e848a7beb6443d3ba33aed0142 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/m35qei.o: ../src/m35qei.c  .generated_files/flags/default/eb8d0131a495884fee3b7e7db49e53b7df8e4d89 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/m35qei.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/m35qei.o.d" -o ${OBJECTDIR}/_ext/1360937237/m35qei.o ../src/m35qei.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/tests.o: ../src/tests.c  .generated_files/flags/default/a8c89e01885a463fd958faf4d2534590ed80f26e .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tests.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/tests.o.d" -o ${OBJECTDIR}/_ext/1360937237/tests.o ../src/tests.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/dio.o: ../src/dio.c  .generated_files/flags/default/713d3e47f6064738131522c27f69ca108dfb24c2 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/dio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/dio.o.d" -o ${OBJECTDIR}/_ext/1360937237/dio.o ../src/dio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/adc_scan.o: ../src/adc_scan.c  .generated_files/flags/default/ef0f1aa34b3b9e8bca195b86d3e5d0bae8f73d5f .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc_scan.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc_scan.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc_scan.o ../src/adc_scan.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/filters.o: ../src/filters.c  .generated_files/flags/default/13399e604c1f789aa1dcd4dc149a674cecfa79a3 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/filters.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/filters.o.d" -o ${OBJECTDIR}/_ext/1360937237/filters.o ../src/filters.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  .generated_files/flags/default/21b885fc5439720d608404995f7187b7faa218b7 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pid.o: ../src/pid.c  .generated_files/flags/default/170b4cfb123159965871e087f58b35b90d9a396b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pid.o.d" -o ${OBJECTDIR}/_ext/1360937237/pid.o ../src/pid.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/freqgen.o: ../src/freqgen.c  .generated_files/flags/default/f3ffe888d7b60cb9aa00d7b2e73d54d499e43829 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/freqgen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/freqgen.o.d" -o ${OBJECTDIR}/_ext/1360937237/freqgen.o ../src/freqgen.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mc_picontrol.o: ../src/mc_picontrol.c  .generated_files/flags/default/9bf53935a30970b098348883ae0fb611702ba210 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mc_picontrol.o.d" -o ${OBJECTDIR}/_ext/1360937237/mc_picontrol.o ../src/mc_picontrol.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mclib.o: ../src/mclib.c  .generated_files/flags/default/e8fc64ba2da0217f298956b3d56d97201b556b6b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mclib.o.d" -o ${OBJECTDIR}/_ext/1360937237/mclib.o ../src/mclib.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4487bfe90354001185a6d5f1d2fe62c7e8944421 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/scdm.o: ../src/scdm.c  .generated_files/flags/default/953720025fceb1d69d44b7706430329be4480492 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/scdm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/scdm.o.d" -o ${OBJECTDIR}/_ext/1360937237/scdm.o ../src/scdm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/gfx.o: ../src/gfx.c  .generated_files/flags/default/89fbb1dbc7178ba3b82dee3d3960d416dfa7657b .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/gfx.o.d" -o ${OBJECTDIR}/_ext/1360937237/gfx.o ../src/gfx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/faults.o: ../src/faults.c  .generated_files/flags/default/8c3a9d9e4ae53ebe49c3f674ae9e810b5700e02f .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/faults.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/faults.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/faults.o.d" -o ${OBJECTDIR}/_ext/1360937237/faults.o ../src/faults.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984168316/plib_canfd1.o: ../src/config/default/peripheral/canfd/plib_canfd1.c  .generated_files/flags/default/ed3a358ac09fe04f57b33bbe1da2a8ca71b41db5 .generated_files/flags/default/ca756b808c26af2af69c4ba5fd32b16ef38ccff9
	@${MKDIR} "${OBJECTDIR}/_ext/1984168316" 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984168316/plib_canfd1.o.d" -o ${OBJECTDIR}/_ext/1984168316/plib_canfd1.o ../src/config/default/peripheral/canfd/plib_canfd1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MK1024MCM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x36F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MK1024MCM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O2 -o ${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/i400qdrive.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
