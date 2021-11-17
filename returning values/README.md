# Files
- 1-4.c: Original c code
- x86-GAS.s: Assembly output from linux with the x86 GAS assembler
- x64-GAS.s: Assembly output from linux with the x64 GAS assembler
- x86-CL.s: Assembly output from windows with the x86 CL assembler
- armhf-GAS.s: Assembly output from linux with cross-compiled armhf GAS assembler
- mips-GAS.s: Assembly output from linux with cross-compiled mips GAS assembler

# Takeaways
- CFA stands for Canonical Frame Address and represents the top of the stack at the start of a function
- The .cfi_def_cfa_offset directive is used in x86 and x64 version of GAS and defines the offset from the stack pointer to reach the CFA. Typically the offset is 16 bytes for x64 and 8 bytes for x86 to make room for the return address and the additional address consumed in the epliogue
- For x86 and x64 the return value is put in %eax
- For Arm the return value is put in r0
