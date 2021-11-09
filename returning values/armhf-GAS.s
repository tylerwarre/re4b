	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"1-4.c"
	.text
	.align	1
	.global	f
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	f, %function
f:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7} // Saves r7 onto the stack
	add	r7, sp, #0 // Copies the stack pointer into r7
	movs	r3, #123 // Place 123 in register r3
	mov	r0, r3 // move immediate to register r0 for return
	mov	sp, r7 // Restores the stack pointer from r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr // Returns from function
	.size	f, .-f
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
