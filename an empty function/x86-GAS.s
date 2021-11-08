	.file	"1-3.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc # Called at the beginning of all functions assembled with GAS
	endbr32 # Functions as NOP, but is used to mark this as a valid jump target. Required for all functions
	ret # references line 1 of function f which just returns
	.cfi_endproc # Called at the end of all functions assembled with GAS
.LFE0:
	.size	f, .-f
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
