# Required packages
- gcc
- gcc-arm-linux-gnueabihf
- gcc-mips-linux-gnu

# How to compile
- x86-GAS: `gcc <file> -O0 -S -m32`
- x64-GAS: `gcc <file> -O0 -S`
- X64-CL: `cl /FA /c <file>`
	- /FA outputs assembly
	- /c specifies to compile only (no linking)
- ARM: `arm-linux-gnueabihf-gcc <file> -O0 -S`
- MIPS: `mips-linux-gnu-gcc <file> -O0 -S`
