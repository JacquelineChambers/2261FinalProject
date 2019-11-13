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
	.global	rotateLeft
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	rotateLeft, %function
rotateLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L19
	ldr	r3, [r2]
	ldr	r1, .L19+4
	cmp	r3, #0
	push	{r4, lr}
	ldr	r3, [r1]
	bne	.L2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L3
.L5:
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L4
.L2:
	ldr	r0, .L19+8
	str	r3, [r0]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L13
.L14:
	.word	.L11
	.word	.L9
	.word	.L10
	.word	.L12
.L6:
	mov	r0, #3
	ldr	r3, .L19+8
	str	r0, [r3]
.L12:
	mov	lr, #130
	mov	ip, #80
	mov	r0, #6
	mov	r4, #0
.L17:
	ldr	r3, .L19+12
	stm	r3, {ip, lr}
	str	r4, [r1]
	str	r0, [r3, #28]
.L13:
	mov	r3, #1
	pop	{r4, lr}
	str	r3, [r2]
	bx	lr
.L7:
	mov	r0, #0
	ldr	r3, .L19+8
	str	r0, [r3]
.L11:
	mov	lr, #110
	mov	ip, #60
	mov	r0, #0
	mov	r4, #2
	b	.L17
.L8:
	mov	r0, #1
	ldr	r3, .L19+8
	str	r0, [r3]
.L9:
	mov	lr, #110
	mov	ip, #100
	mov	r0, #4
	mov	r4, #3
	b	.L17
.L4:
	mov	r0, #2
	ldr	r3, .L19+8
	str	r0, [r3]
.L10:
	mov	lr, #90
	mov	ip, #80
	mov	r0, #2
	mov	r4, #1
	b	.L17
.L3:
	ldr	r1, .L19+8
	str	r3, [r1]
	b	.L13
.L20:
	.align	2
.L19:
	.word	toggle
	.word	movement
	.word	prevMovement
	.word	player
	.size	rotateLeft, .-rotateLeft
	.align	2
	.global	rotateRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	rotateRight, %function
rotateRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L39
	ldr	r3, [r2]
	ldr	r1, .L39+4
	cmp	r3, #1
	push	{r4, lr}
	ldr	r3, [r1]
	beq	.L38
	ldr	r0, .L39+8
	str	r3, [r0]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L33
.L34:
	.word	.L31
	.word	.L29
	.word	.L30
	.word	.L32
.L38:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L23
.L25:
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L24
.L26:
	mov	r0, #3
	ldr	r3, .L39+8
	str	r0, [r3]
.L32:
	mov	lr, #130
	mov	ip, #80
	mov	r0, #6
	mov	r4, #1
.L37:
	ldr	r3, .L39+12
	stm	r3, {ip, lr}
	str	r4, [r1]
	str	r0, [r3, #28]
.L33:
	mov	r3, #0
	pop	{r4, lr}
	str	r3, [r2]
	bx	lr
.L27:
	mov	r0, #0
	ldr	r3, .L39+8
	str	r0, [r3]
.L31:
	mov	lr, #110
	mov	ip, #60
	mov	r0, #0
	mov	r4, #3
	b	.L37
.L28:
	mov	r0, #1
	ldr	r3, .L39+8
	str	r0, [r3]
.L29:
	mov	lr, #110
	mov	ip, #100
	mov	r0, #4
	mov	r4, #2
	b	.L37
.L24:
	mov	r0, #2
	ldr	r3, .L39+8
	str	r0, [r3]
.L30:
	mov	lr, #90
	mov	ip, #80
	mov	r0, #2
	mov	r4, #0
	b	.L37
.L23:
	ldr	r1, .L39+8
	str	r3, [r1]
	b	.L33
.L40:
	.align	2
.L39:
	.word	toggle
	.word	movement
	.word	prevMovement
	.word	player
	.size	rotateRight, .-rotateRight
	.align	2
	.global	slideRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	slideRight, %function
slideRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L52
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L41
.L44:
	.word	.L46
	.word	.L46
	.word	.L45
	.word	.L45
.L45:
	ldr	r2, .L52+4
	ldr	r1, [r2]
	ldr	r3, [r2, #20]
	add	r3, r1, r3
	cmp	r3, #104
	bxgt	lr
	add	r1, r1, #1
	str	r1, [r2]
.L41:
	bx	lr
.L46:
	ldr	r2, .L52+4
	ldr	r1, [r2, #4]
	ldr	r3, [r2, #16]
	add	r3, r1, r3
	cmp	r3, #139
	addle	r1, r1, #1
	strle	r1, [r2, #4]
	bx	lr
.L53:
	.align	2
.L52:
	.word	prevMovement
	.word	player
	.size	slideRight, .-slideRight
	.align	2
	.global	slideLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	slideLeft, %function
slideLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L65
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L54
.L57:
	.word	.L59
	.word	.L59
	.word	.L58
	.word	.L58
.L58:
	ldr	r2, .L65+4
	ldr	r3, [r2]
	cmp	r3, #65
	bxle	lr
	sub	r3, r3, #1
	str	r3, [r2]
.L54:
	bx	lr
.L59:
	ldr	r2, .L65+4
	ldr	r3, [r2, #4]
	cmp	r3, #95
	subgt	r3, r3, #1
	strgt	r3, [r2, #4]
	bx	lr
.L66:
	.align	2
.L65:
	.word	prevMovement
	.word	player
	.size	slideLeft, .-slideLeft
	.comm	prevMovement,4,4
	.comm	toggle,4,4
	.comm	movement,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
