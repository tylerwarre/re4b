	.file	"1.5.c"
	.text
	.section	.rodata
.LC0:
	.string	"hello, world"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr32
	// Start PLT/GOT setup
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp // Aligns the stack to a 16 byte boundary by zeroing out the last digit of the stack address
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.ax // Gets current PC (address of next instruction). Required for ASLR to work
	addl	$_GLOBAL_OFFSET_TABLE_, %eax // Calculates effective address to GOT
	// End PLT/GOT setup
	subl	$12, %esp // Makes room for "hello, world" (12 chars)
	leal	.LC0@GOTOFF(%eax), %edx // Loads pointer to "hello, world" into $edx
	pushl	%edx // Pushes "hello, world" pointer onto stack to pass to puts(). This follows x86-Unix calling conventions
	movl	%eax, %ebx // Copies $eax into $ebx which is used by the PLT to jump to the correct function in the GOT
	call	puts@PLT // printf()
	addl	$16, %esp
	movl	$0, %eax // store return value in $eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
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
