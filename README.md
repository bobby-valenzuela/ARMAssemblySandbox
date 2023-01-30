# ARMAssemblySandbox

__All programs using 32-bit ARM Assembly unless filename contains 'aarch64'__


## 32-bit ARM Arch files

__led_test.s__

led_test.s will light up certain LED based on the state of certain switches.
This code can be plugged into the ARM Assembly emulator at: https://cpulator.01xz.net/?sys=arm-de1soc

__hello_world.s__

Create an object file with: `as -o hello.o hello_world.s`

Then compile with: `ld -o hello hello.o`

Or if you are using gcc to compile: `gcc hello.o -o hello.elf -nostdlib`

Note: This assumes an ARM architecture. Might need to use something like Qemu if compiling on a non-ARM Architecture.


## 64-bit ARM Arch files


### If you are compiling with a non-ARM64-bit Arch

Install Arch: `sudo apt install gcc-7-aarch64-linux-gnu -y`

`sudo apt-get update -y && sudo apt-get install -y gcc-7-aarch64-linux-gnu-base`

Install Qemu Cross-Platform Compiler: `sudo apt install qemu -y`