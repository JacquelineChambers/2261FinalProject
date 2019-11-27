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
	.file	"winGame.c"
	.text
	.align	2
	.global	clearShadowOAM
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearShadowOAM, %function
clearShadowOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	ldr	r3, .L6
	add	r1, r3, #1024
	add	r1, r1, #8
.L2:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L2
	ldr	r3, .L6+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L6+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L6
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	shadowOAM
	.word	hideSprites
	.word	DMANow
	.size	clearShadowOAM, .-clearShadowOAM
	.align	2
	.global	initWinGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWinGame, %function
initWinGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L10
	mov	lr, pc
	bx	r3
	bl	clearShadowOAM
	mov	r3, #0
	mov	r1, #64
	mov	r6, #61
	mov	ip, #185
	mov	r5, #105
	mov	r4, #32
	mov	lr, #8
	mov	r0, #24
	ldr	r2, .L10+4
	str	r3, [r2, #20]
	ldr	r3, .L10+8
	str	r6, [r2]
	stm	r3, {r5, ip}
	str	r4, [r3, #12]
	str	lr, [r3, #20]
	str	ip, [r2, #4]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	r1, [r3, #8]
	str	r0, [r2, #16]
	str	r0, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	dispBackground
	.word	princessNoot
	.word	cliff
	.size	initWinGame, .-initWinGame
	.align	2
	.global	initCliff
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCliff, %function
initCliff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #64
	mov	lr, #61
	mov	ip, #185
	mov	r0, #24
	mov	r1, #0
	ldr	r3, .L14
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	princessNoot
	.size	initCliff, .-initCliff
	.align	2
	.global	initPrincessNoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPrincessNoot, %function
initPrincessNoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #64
	mov	r4, #105
	mov	lr, #185
	mov	r0, #32
	mov	r1, #24
	mov	r2, #8
	ldr	r3, .L18
	stm	r3, {r4, lr}
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	cliff
	.size	initPrincessNoot, .-initPrincessNoot
	.align	2
	.global	drawWinGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinGame, %function
drawWinGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L22
	ldr	r0, .L22+4
	add	r1, ip, #16
	ldm	r1, {r1, r3}
	add	r2, r0, #16
	push	{r4, r5, lr}
	add	r1, r1, r3, lsl #5
	ldm	r2, {r2, lr}
	ldr	r3, .L22+8
	orr	r1, r1, #24576
	ldr	r4, .L22+12
	add	r2, r2, lr, lsl #5
	strh	r1, [r3, #4]	@ movhi
	ldm	ip, {r5, lr}
	ldm	r0, {r1, ip}
	orr	lr, lr, r4
	orr	r0, ip, r4
	orr	r2, r2, #16384
	orr	r1, r1, #16384
	strh	r5, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	princessNoot
	.word	cliff
	.word	shadowOAM
	.word	-16384
	.size	drawWinGame, .-drawWinGame
	.align	2
	.global	drawCliff
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCliff, %function
drawCliff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L26
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	ip, [r1, #20]
	ldr	r3, [r1, #16]
	str	lr, [sp, #-4]!
	ldr	r1, [r1]
	ldr	lr, .L26+4
	add	r3, r3, ip, lsl #5
	orr	r1, r1, #16384
	add	ip, lr, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	strh	r1, [lr, r0]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	cliff
	.word	shadowOAM
	.size	drawCliff, .-drawCliff
	.align	2
	.global	drawPrincessNoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrincessNoot, %function
drawPrincessNoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L30
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	push	{r4, lr}
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	ip, .L30+4
	ldr	lr, [r1]
	add	r3, r3, r4, lsl #5
	add	r1, ip, r0, lsl #3
	orr	r3, r3, #24576
	lsl	r0, r0, #3
	strh	lr, [ip, r0]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	princessNoot
	.word	shadowOAM
	.size	drawPrincessNoot, .-drawPrincessNoot
	.comm	shadowOAM,1024,4
	.comm	cliff,24,4
	.comm	princessNoot,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
