# Files
- 1-5.c: Original c code
- x86-GAS.s: Assembly output from linux with the x86 GAS assembler
- x86-GAS.out: Binary from linux with the x86 GAS compiler
- x64-GAS.s: Assembly output from linux with the x64 GAS assembler
- x64-GAS.out: Binary from linux with the x64 GAS compiler
- x86-CL.s: Assembly output from windows with the x86 CL assembler
- x64-CL.s: Assembly output from windows with the x64 CL assembler

# Takeaways
- get_pc_thunk() is used on x86 Unix to get the current program counter (PC) and is used to calculate the effective address to the Global Offset Table (GOT). This is required for ASLR to work.
- When using the GOT/PLT on x86 Unix, the address is stored in $eax and is copied to $ebx when making a call. Within the PLT, an offset of the value stored in $ebx is used to jump to the GOT which in turn calls the real function.
- When using GOT/PLT on x64 Linux/Unix, the address to the PLT entries is calculated at runtime/compile so nothing special has to be done. In the PLT, an offset of $rip (Instruction/Program Counter) is used to jump to the GOT which calls the real function. It is worth noting that the value of $rip used is the address of the nop instruction, not the jmp.
- If you see something like add esp, 0FFFFFFF0h it is aligning the stack. In this case it zeros out the last digit and is considered 16-byte alignment or 16-byte boundary. Typically CPUs perform better if the addresses are 4-byte or 16-byte aligned
- You can generate intel-syntax assembly with gcc by adding `-masm=intel`
- You can remove many of the unnecessary macros in the gcc assembly output with `-fno-asynchronous-unwind-tables`
