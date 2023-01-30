# ARMAssemblySandbox

__led_test.s__
led_test.s will light up certain LED based on the state of certain switches.
This code can be plugged into the ARM Assembly emulator at: https://cpulator.01xz.net/?sys=arm-de1soc

__hello_world.s__
Create an object file with: `as -o hello.o hello_world.s`
Then compile with: `ld -o hello hello.o`

Note: This assumes an ARM architecture. Might need to use something like Qemu if compiling on a non-ARM Architecture.



