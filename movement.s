	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"movement.c"
	.text
	.align	2
	.global	thing
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	thing, %function
thing:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L3
	str	r2, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	thing, .-thing
	.global	make_iso_compilers_happy
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	make_iso_compilers_happy, %object
	.size	make_iso_compilers_happy, 4
make_iso_compilers_happy:
	.word	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
