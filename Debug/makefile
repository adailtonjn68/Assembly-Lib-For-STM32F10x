NAME = main
TOOLCHAIN = arm-none-eabi
SRC_DIR = ../Core/Src/
MAIN_FILE = $(SRC_DIR)$(NAME).s
RM = rm -rf

CPU = cortex-m3

INCLUDES =  ../Core/Inc \
			../Core/Startup

INC_DIRECTIVE = $(addprefix -I,$(INCLUDES))


all: compile

compile:
	$(TOOLCHAIN)-gcc -x assembler $(MAIN_FILE) -o ./Core/Src/$(NAME).o -c -O0 -mcpu=$(CPU) -mthumb -Wall -g -g3 -DDEBUG $(INC_DIRECTIVE)
	$(TOOLCHAIN)-gcc ./Core/Src/$(NAME).o -mcpu=$(CPU) -mthumb -Wall --specs=nosys.specs -nostdlib -lgcc -T../STM32F103C8TX_FLASH.ld -g -o ./build/$(NAME).elf
	@echo 'Finished building target: $(NAME).elf'
	@echo ' '
	$(TOOLCHAIN)-objcopy  -O binary ./build/$(NAME).elf ./build/$(NAME).bin
	@echo 'Finished building target: $(NAME).bin'
	@echo ' '
	arm-none-eabi-objdump -D -bbinary -marm ./build/$(NAME).bin -Mforce-thumb > ./build/$(NAME)_objdump.dis

flash:
	st-flash write $(NAME).bin 0x8000000

clean:
	-$(RM) ./Core/Src/*.o
	-$(RM) ./Core/Startup/*.o
	-$(RM) *.bin *.elf *.o
	-@echo ' '

.PHONY:
	clean
