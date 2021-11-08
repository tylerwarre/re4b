# Files
- 1-3.c: Original c code
- x86-GAS.s: Assembly output from linux with the x86 GAS assembler
- x64-GAS.s: Assembly output from linux with the x64 GAS assembler
- armhf-GAS.s: Assembly output from linux with cross-compiled armhf GAS assembler
- mips-GAS.s: Assembly output from linux with cross-compiled mips GAS assembler
- align.s: Assembly exploring the use of the .align directive
- align.o: Object file exploring the use of the .align directive

# Takeaways
- ENDBR instruction needs to be at the start of all functions on x86/x64
- .align only aligns the next insturction of data element and must be a power of 3
- .cfi_startproc and .cfi_endproc can be found sandwitching all function on x86/x64
- mips requires a nop after all jump instructions
