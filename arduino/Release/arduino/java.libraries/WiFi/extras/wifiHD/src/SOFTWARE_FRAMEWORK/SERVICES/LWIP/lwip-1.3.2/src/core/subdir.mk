################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/dhcp.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/dns.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/init.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/mem.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/memp.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/netif.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/pbuf.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/raw.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/stats.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp_in.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp_out.c \
/Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/udp.c 

C_DEPS += \
./arduino/dhcp.c.d \
./arduino/dns.c.d \
./arduino/init.c.d \
./arduino/mem.c.d \
./arduino/memp.c.d \
./arduino/netif.c.d \
./arduino/pbuf.c.d \
./arduino/raw.c.d \
./arduino/stats.c.d \
./arduino/tcp.c.d \
./arduino/tcp_in.c.d \
./arduino/tcp_out.c.d \
./arduino/udp.c.d 

AR_OBJ += \
./arduino/dhcp.c.o \
./arduino/dns.c.o \
./arduino/init.c.o \
./arduino/mem.c.o \
./arduino/memp.c.o \
./arduino/netif.c.o \
./arduino/pbuf.c.o \
./arduino/raw.c.o \
./arduino/stats.c.o \
./arduino/tcp.c.o \
./arduino/tcp_in.c.o \
./arduino/tcp_out.c.o \
./arduino/udp.c.o 


# Each subdirectory must supply rules for building sources it contributes
arduino/dhcp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/dhcp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/dns.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/dns.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/init.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/init.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/mem.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/mem.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/memp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/memp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/netif.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/netif.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/pbuf.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/pbuf.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/raw.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/raw.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/stats.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/stats.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/tcp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/tcp_in.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp_in.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/tcp_out.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/tcp_out.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/udp.c.o: /Applications/Arduino.app/Contents/Java/libraries/WiFi/extras/wifiHD/src/SOFTWARE_FRAMEWORK/SERVICES/LWIP/lwip-1.3.2/src/core/udp.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc" -c -g -Os -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10605 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino" -I"/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


