################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Generated_Code/Acc.c" \
"../Generated_Code/BitIoLdd1.c" \
"../Generated_Code/BitIoLdd2.c" \
"../Generated_Code/BitIoLdd3.c" \
"../Generated_Code/Cpu.c" \
"../Generated_Code/ExtIntLdd1.c" \
"../Generated_Code/LEDB.c" \
"../Generated_Code/LEDG.c" \
"../Generated_Code/LEDR.c" \
"../Generated_Code/LEDpin1.c" \
"../Generated_Code/LEDpin2.c" \
"../Generated_Code/LEDpin3.c" \
"../Generated_Code/MCUC1.c" \
"../Generated_Code/PE_LDD.c" \
"../Generated_Code/ST1.c" \
"../Generated_Code/TRIG.c" \
"../Generated_Code/TU1.c" \
"../Generated_Code/UTIL1.c" \
"../Generated_Code/Vectors.c" \
"../Generated_Code/WAIT1.c" \

C_SRCS += \
../Generated_Code/Acc.c \
../Generated_Code/BitIoLdd1.c \
../Generated_Code/BitIoLdd2.c \
../Generated_Code/BitIoLdd3.c \
../Generated_Code/Cpu.c \
../Generated_Code/ExtIntLdd1.c \
../Generated_Code/LEDB.c \
../Generated_Code/LEDG.c \
../Generated_Code/LEDR.c \
../Generated_Code/LEDpin1.c \
../Generated_Code/LEDpin2.c \
../Generated_Code/LEDpin3.c \
../Generated_Code/MCUC1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/ST1.c \
../Generated_Code/TRIG.c \
../Generated_Code/TU1.c \
../Generated_Code/UTIL1.c \
../Generated_Code/Vectors.c \
../Generated_Code/WAIT1.c \

OBJS += \
./Generated_Code/Acc.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/BitIoLdd3.o \
./Generated_Code/Cpu.o \
./Generated_Code/ExtIntLdd1.o \
./Generated_Code/LEDB.o \
./Generated_Code/LEDG.o \
./Generated_Code/LEDR.o \
./Generated_Code/LEDpin1.o \
./Generated_Code/LEDpin2.o \
./Generated_Code/LEDpin3.o \
./Generated_Code/MCUC1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/ST1.o \
./Generated_Code/TRIG.o \
./Generated_Code/TU1.o \
./Generated_Code/UTIL1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \

OBJS_QUOTED += \
"./Generated_Code/Acc.o" \
"./Generated_Code/BitIoLdd1.o" \
"./Generated_Code/BitIoLdd2.o" \
"./Generated_Code/BitIoLdd3.o" \
"./Generated_Code/Cpu.o" \
"./Generated_Code/ExtIntLdd1.o" \
"./Generated_Code/LEDB.o" \
"./Generated_Code/LEDG.o" \
"./Generated_Code/LEDR.o" \
"./Generated_Code/LEDpin1.o" \
"./Generated_Code/LEDpin2.o" \
"./Generated_Code/LEDpin3.o" \
"./Generated_Code/MCUC1.o" \
"./Generated_Code/PE_LDD.o" \
"./Generated_Code/ST1.o" \
"./Generated_Code/TRIG.o" \
"./Generated_Code/TU1.o" \
"./Generated_Code/UTIL1.o" \
"./Generated_Code/Vectors.o" \
"./Generated_Code/WAIT1.o" \

C_DEPS += \
./Generated_Code/Acc.d \
./Generated_Code/BitIoLdd1.d \
./Generated_Code/BitIoLdd2.d \
./Generated_Code/BitIoLdd3.d \
./Generated_Code/Cpu.d \
./Generated_Code/ExtIntLdd1.d \
./Generated_Code/LEDB.d \
./Generated_Code/LEDG.d \
./Generated_Code/LEDR.d \
./Generated_Code/LEDpin1.d \
./Generated_Code/LEDpin2.d \
./Generated_Code/LEDpin3.d \
./Generated_Code/MCUC1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/ST1.d \
./Generated_Code/TRIG.d \
./Generated_Code/TU1.d \
./Generated_Code/UTIL1.d \
./Generated_Code/Vectors.d \
./Generated_Code/WAIT1.d \

OBJS_OS_FORMAT += \
./Generated_Code/Acc.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/BitIoLdd3.o \
./Generated_Code/Cpu.o \
./Generated_Code/ExtIntLdd1.o \
./Generated_Code/LEDB.o \
./Generated_Code/LEDG.o \
./Generated_Code/LEDR.o \
./Generated_Code/LEDpin1.o \
./Generated_Code/LEDpin2.o \
./Generated_Code/LEDpin3.o \
./Generated_Code/MCUC1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/ST1.o \
./Generated_Code/TRIG.o \
./Generated_Code/TU1.o \
./Generated_Code/UTIL1.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o \

C_DEPS_QUOTED += \
"./Generated_Code/Acc.d" \
"./Generated_Code/BitIoLdd1.d" \
"./Generated_Code/BitIoLdd2.d" \
"./Generated_Code/BitIoLdd3.d" \
"./Generated_Code/Cpu.d" \
"./Generated_Code/ExtIntLdd1.d" \
"./Generated_Code/LEDB.d" \
"./Generated_Code/LEDG.d" \
"./Generated_Code/LEDR.d" \
"./Generated_Code/LEDpin1.d" \
"./Generated_Code/LEDpin2.d" \
"./Generated_Code/LEDpin3.d" \
"./Generated_Code/MCUC1.d" \
"./Generated_Code/PE_LDD.d" \
"./Generated_Code/ST1.d" \
"./Generated_Code/TRIG.d" \
"./Generated_Code/TU1.d" \
"./Generated_Code/UTIL1.d" \
"./Generated_Code/Vectors.d" \
"./Generated_Code/WAIT1.d" \


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/Acc.o: ../Generated_Code/Acc.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Acc.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Acc.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd1.o: ../Generated_Code/BitIoLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd2.o: ../Generated_Code/BitIoLdd2.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd2.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/BitIoLdd3.o: ../Generated_Code/BitIoLdd3.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/BitIoLdd3.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/BitIoLdd3.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Cpu.o: ../Generated_Code/Cpu.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Cpu.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Cpu.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/ExtIntLdd1.o: ../Generated_Code/ExtIntLdd1.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/ExtIntLdd1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/ExtIntLdd1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDB.o: ../Generated_Code/LEDB.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDB.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDB.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDG.o: ../Generated_Code/LEDG.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDG.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDG.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDR.o: ../Generated_Code/LEDR.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDR.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDR.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin1.o: ../Generated_Code/LEDpin1.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin2.o: ../Generated_Code/LEDpin2.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin2.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin2.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDpin3.o: ../Generated_Code/LEDpin3.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDpin3.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDpin3.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/MCUC1.o: ../Generated_Code/MCUC1.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/MCUC1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/MCUC1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/PE_LDD.o: ../Generated_Code/PE_LDD.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/PE_LDD.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/PE_LDD.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/ST1.o: ../Generated_Code/ST1.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/ST1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/ST1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TRIG.o: ../Generated_Code/TRIG.c
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TRIG.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TRIG.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TU1.o: ../Generated_Code/TU1.c
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TU1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TU1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/UTIL1.o: ../Generated_Code/UTIL1.c
	@echo 'Building file: $<'
	@echo 'Executing target #29 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/UTIL1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/UTIL1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Vectors.o: ../Generated_Code/Vectors.c
	@echo 'Building file: $<'
	@echo 'Executing target #30 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Vectors.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Vectors.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/WAIT1.o: ../Generated_Code/WAIT1.c
	@echo 'Building file: $<'
	@echo 'Executing target #31 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/WAIT1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/WAIT1.o"
	@echo 'Finished building: $<'
	@echo ' '


