# Files
- 1-3.c: Original c code
- x86-GAS: Assembly output from linux with the GAS assembler
- align.s: Assembly exploring the use of the .align directive
- align.o: Object file exploring the use of the .align directive

# Takeaways
- ENDBR instruction needs to be at the start of all functions
- .align only aligns the next insturction of data element and must be a power of 3
- .cfi_startproc and .cfi_endproc can be found sandwitching all function with the GAS assembler
