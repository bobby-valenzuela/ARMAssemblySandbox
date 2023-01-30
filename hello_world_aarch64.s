
.global _start

.section .text

_start:
    # Write syscal
    MOV X8, #64
    MOV X0, #0x1
    LDR X1, =message
    MOV X3, #13
    SVC 0

    # Exit syscall
    MOV X8, #0x5D
    MOV X0, #0x41
    SVC 0

.section .data
    message:
        .asciz "Hello World\n"