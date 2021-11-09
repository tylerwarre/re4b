# Required packages
- gcc
- gcc-arm-linux-gnueabihf
- gcc-mips-linux-gnu

# How to compile
- x86-GAS: `gcc <file> -O -S -m32`
- x64-GAS: `gcc <file> -O -S`
- X64-CL: `cl /FA /c <file>`
- ARM: `arm-linux-gnueabihf-gcc <file> -O -S`
- MIPS: `mips-linux-gnu-gcc <file> -O -S`
