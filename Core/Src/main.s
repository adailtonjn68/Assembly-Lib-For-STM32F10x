.syntax unified
.cpu cortex-m3
.fpu softvfp
.thumb

.include "stm32f10x.inc"

.section .text
.global main
main:
	
loop:

	B		loop
