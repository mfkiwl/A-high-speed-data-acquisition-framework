################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/AXI_DMA.c \
../src/COMMON.c \
../src/ISR.c \
../src/SCU_GIC.c \
../src/SCU_TIMER.c \
../src/clk_wiz.c \
../src/gpio.c \
../src/main.c \
../src/uart.c 

OBJS += \
./src/AXI_DMA.o \
./src/COMMON.o \
./src/ISR.o \
./src/SCU_GIC.o \
./src/SCU_TIMER.o \
./src/clk_wiz.o \
./src/gpio.o \
./src/main.o \
./src/uart.o 

C_DEPS += \
./src/AXI_DMA.d \
./src/COMMON.d \
./src/ISR.d \
./src/SCU_GIC.d \
./src/SCU_TIMER.d \
./src/clk_wiz.d \
./src/gpio.d \
./src/main.d \
./src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../daq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


