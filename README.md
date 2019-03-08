# Assembly-Lib-For-STM32F10x
Assembly library for STM32F10x

- stm32f10x.inc - is the library itself where it is implemented the vector table the reset handler, registers adresses definitions and some constant definitions.
- main.s - is a model to be used as a blank project.
- compile.sh - is where the compile commands are.
- clear_directory.sh - as the name implies clears the directory removing files with extension bin, elf and o.
- burn.sh - uses st-flash to program the MCU.

Obs.: there are still a lot of registers adresses and constant definitions missing.
