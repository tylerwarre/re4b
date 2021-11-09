	.file	"1-4.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp // save base pointer address
	.cfi_def_cfa_offset 16 // notes that the canonical frame address (CFA) which points to the top of the stack at the function start is offset by 16 bytes since 8 bytes are taking by the return address and another 8 bytes are used when returning from the function
	.cfi_offset 6, -16
	movq	%rsp, %rbp // place stack pointer into base pointer
	.cfi_def_cfa_register 6
	movl	$123, %eax // Put immediate value 123 in %eax for return
	popq	%rbp // restore original base pointer address
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
