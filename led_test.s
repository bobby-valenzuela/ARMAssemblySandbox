.section .data

.section .text

.global _start

.equ SWITCH, 0xff200040
.equ LED, 0xff200000
	
_start:
	LDR R0,=SWITCH
	LDR R1,[R0]

	LDR R0,=LED
	STR R1,[R0]


