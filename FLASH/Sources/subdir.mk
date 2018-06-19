################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/ConsoleIO.c" \
"../Sources/Events.c" \
"../Sources/I2C.c" \
"../Sources/PID.c" \
"../Sources/ProcessorExpert.c" \
"../Sources/Ultrasonic.c" \
"../Sources/acc.c" \
"../Sources/pwm.c" \
"../Sources/sa_mtb.c" \

C_SRCS += \
../Sources/ConsoleIO.c \
../Sources/Events.c \
../Sources/I2C.c \
../Sources/PID.c \
../Sources/ProcessorExpert.c \
../Sources/Ultrasonic.c \
../Sources/acc.c \
../Sources/pwm.c \
../Sources/sa_mtb.c \

OBJS += \
./Sources/ConsoleIO.o \
./Sources/Events.o \
./Sources/I2C.o \
./Sources/PID.o \
./Sources/ProcessorExpert.o \
./Sources/Ultrasonic.o \
./Sources/acc.o \
./Sources/pwm.o \
./Sources/sa_mtb.o \

OBJS_QUOTED += \
"./Sources/ConsoleIO.o" \
"./Sources/Events.o" \
"./Sources/I2C.o" \
"./Sources/PID.o" \
"./Sources/ProcessorExpert.o" \
"./Sources/Ultrasonic.o" \
"./Sources/acc.o" \
"./Sources/pwm.o" \
"./Sources/sa_mtb.o" \

C_DEPS += \
./Sources/ConsoleIO.d \
./Sources/Events.d \
./Sources/I2C.d \
./Sources/PID.d \
./Sources/ProcessorExpert.d \
./Sources/Ultrasonic.d \
./Sources/acc.d \
./Sources/pwm.d \
./Sources/sa_mtb.d \

OBJS_OS_FORMAT += \
./Sources/ConsoleIO.o \
./Sources/Events.o \
./Sources/I2C.o \
./Sources/PID.o \
./Sources/ProcessorExpert.o \
./Sources/Ultrasonic.o \
./Sources/acc.o \
./Sources/pwm.o \
./Sources/sa_mtb.o \

C_DEPS_QUOTED += \
"./Sources/ConsoleIO.d" \
"./Sources/Events.d" \
"./Sources/I2C.d" \
"./Sources/PID.d" \
"./Sources/ProcessorExpert.d" \
"./Sources/Ultrasonic.d" \
"./Sources/acc.d" \
"./Sources/pwm.d" \
"./Sources/sa_mtb.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/ConsoleIO.o: ../Sources/ConsoleIO.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/ConsoleIO.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/ConsoleIO.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Events.o: ../Sources/Events.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/Events.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/Events.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/I2C.o: ../Sources/I2C.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/I2C.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/I2C.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/PID.o: ../Sources/PID.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/PID.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/PID.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/ProcessorExpert.o: ../Sources/ProcessorExpert.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/ProcessorExpert.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/ProcessorExpert.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/Ultrasonic.o: ../Sources/Ultrasonic.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/Ultrasonic.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/Ultrasonic.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/acc.o: ../Sources/acc.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/acc.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/acc.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/pwm.o: ../Sources/pwm.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/pwm.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/pwm.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/sa_mtb.o: ../Sources/sa_mtb.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/sa_mtb.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/sa_mtb.o"
	@echo 'Finished building: $<'
	@echo ' '


