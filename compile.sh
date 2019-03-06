#!/bin/bash
#arm-none-eabi-gcc -x assembler-with-cpp -c -O0 -mcpu=cortex-m3 -mthumb -Wall core.s -o core.o
arm-none-eabi-gcc -x assembler -c -O0 -mcpu=cortex-m3 -mthumb -Wall -g main.s -o main.o
arm-none-eabi-gcc main.o -mcpu=cortex-m3 -mthumb -Wall --specs=nosys.specs -nostdlib -lgcc -T./STM32F103C8_FLASH.ld -g -o main.elf
arm-none-eabi-objcopy -O binary main.elf main.bin
#arm-none-eabi-nm main.elf
