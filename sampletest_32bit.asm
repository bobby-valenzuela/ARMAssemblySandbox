.section .data
# Constants (non-executable data)
my_list:
	.word 14,5,6,7,8
.section .text
# Start interpreting as code from this line

.global _start
# First run our "_start" function once we find it
	
_start:
	# Main Program	
	LDR R0,=my_list
	MOV R1,#25 		# Place 25 (Base 10 - DEC) in R1
	MOV R2,#0x19	# Place 25 (Base 16 - HEX) in R2
	MOV R7,#1

# compile on native: 
# as 001.asm -o 001.o
# gcc 001.o -o 001.elf -nostdlib
