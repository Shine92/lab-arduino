################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/pm.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/pm_conf_clocks.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/power_clocks_lib.c 

C_DEPS += \
./arduino/pm.c.d \
./arduino/pm_conf_clocks.c.d \
./arduino/power_clocks_lib.c.d 

AR_OBJ += \
./arduino/pm.c.o \
./arduino/pm_conf_clocks.c.o \
./arduino/power_clocks_lib.c.o 


# Each subdirectory must supply rules for building sources it contributes
arduino/pm.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/pm.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/pm_conf_clocks.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/pm_conf_clocks.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/power_clocks_lib.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/DRIVERS/PM/power_clocks_lib.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


