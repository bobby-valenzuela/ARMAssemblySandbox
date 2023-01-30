.section .data
# Constants (non-executable data)

	greeting:
		.asciz "Welcome to the program!\nEnter a Number (1-10): " 

	message_in:
		.asciz " "

	message_out:
		.asciz " "

.section .text
# Start interpreting as code from this line

	.global _start
		
	_start:
		
	_greet:
		MOV R7, #0x4			# Syscall write	
		MOV R0, #1				# To STDOUT
		LDR R1, =greeting		# This data
		MOV R2, #46				# 46 chars

	_read:
		MOV R7,  #3 			# Syscall read 
		MOV R0,  #0 			# Input stream from keyboard (STDIN)
		MOV R2,  #2 			# Read 2 characters
		LDR R1, =message_in 	# Put string in message_in
		# SWI 0


	_write:
		MOV R7, #4 				# Syscall to output to screen
		MOV R0, #1 				# Output to monitor
		MOV R2, #5				# of characters to write
		LDR R1, =message_out	# Print string in message_out
		# SWI 0

	_skip:

	end:
		MOV R7, #0x1 			# Exit to terminal
		MOV R0, #0				# Set exit code
		SWI 0					# INTRPT



