.section .data
# Constants (non-executable data)

	greeting:
		.ascii "Welcome to the program!\n" 

.section .text
# Start interpreting as code from this line

	.global _start
	# First run our "_start" function once we find it
		
	_start:
		# Main Program	
		MOV R7, #0x4		
		MOV R0, #1			
		LDR R1, =greeting	
		MOV R2, #23

		# Terminate/Exit
		MOV R7, #0x1
		MOV R0, #0
		SWI 0

# compile on native ARM Architecture: 
# as 001.asm -o 001.o
# gcc 001.o -o 001.elf -nostdlib
