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
	.file	"loseGame.c"
	.text
	.align	2
	.global	initLoseQuote_setup
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLoseQuote_setup, %function
initLoseQuote_setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #20
	lsl	r1, r1, #3
	add	r1, r1, #10
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	initLoseQuote_setup, .-initLoseQuote_setup
	.align	2
	.global	initDeadPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDeadPrincess, %function
initDeadPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #32
	mov	r4, #100
	mov	lr, #190
	mov	r0, #64
	mov	r1, #0
	mov	r2, #17
	ldr	r3, .L5
	stm	r3, {r4, lr}
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	deadPrincess
	.size	initDeadPrincess, .-initDeadPrincess
	.align	2
	.global	initLoseQuote
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLoseQuote, %function
initLoseQuote:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #4
	mov	r4, #18
	mov	lr, #7
	mov	r2, #3
	mov	ip, #27
	mov	r0, #8
	ldr	r3, .L9
	str	r4, [r3]
	str	lr, [r3, #12]
	str	ip, [r3, #36]
	str	r0, [r3, #60]
	str	r1, [r3, #24]
	str	r1, [r3, #72]
	str	r2, [r3, #48]
	str	r2, [r3, #84]
	pop	{r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	textLose
	.size	initLoseQuote, .-initLoseQuote
	.align	2
	.global	initPlayAgainQuote
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayAgainQuote, %function
initPlayAgainQuote:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, #19
	mov	r1, #27
	mov	r2, #0
	mov	fp, #7
	mov	r10, #18
	mov	r9, #17
	mov	r8, #14
	mov	r7, #15
	mov	r6, #11
	mov	r5, #24
	mov	r4, #6
	mov	lr, #13
	mov	ip, #8
	ldr	r3, .L13
	str	fp, [r3]
	str	r10, [r3, #48]
	str	r9, [r3, #84]
	str	r8, [r3, #132]
	str	r7, [r3, #156]
	str	r6, [r3, #168]
	str	r5, [r3, #192]
	str	r4, [r3, #228]
	str	lr, [r3, #264]
	str	ip, [r3, #12]
	str	ip, [r3, #252]
	str	r0, [r3, #24]
	str	r0, [r3, #60]
	str	r0, [r3, #96]
	str	r0, [r3, #120]
	str	r1, [r3, #36]
	str	r1, [r3, #108]
	str	r1, [r3, #144]
	str	r1, [r3, #204]
	str	r2, [r3, #72]
	str	r2, [r3, #180]
	str	r2, [r3, #216]
	str	r2, [r3, #240]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	playAgain
	.size	initPlayAgainQuote, .-initPlayAgainQuote
	.align	2
	.global	initLoseGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLoseGame, %function
initLoseGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L21
	mov	r4, #17
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	mov	lr, pc
	bx	r3
	mov	r5, #18
	mov	r1, #4
	mov	r2, #3
	mov	lr, #7
	mov	ip, #27
	mov	r0, #8
	mov	r10, #100
	mov	r9, #190
	mov	r8, #32
	mov	r7, #64
	mov	r6, #0
	ldr	r3, .L21+8
	str	r4, [r3, #20]
	ldr	r4, .L21+12
	str	r1, [r4, #24]
	str	r1, [r4, #72]
	str	r2, [r4, #48]
	str	r2, [r4, #84]
	str	r5, [r4]
	str	lr, [r4, #12]
	str	ip, [r4, #36]
	str	r0, [r4, #60]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #8]
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	bl	initPlayAgainQuote
	mov	r3, r4
	mov	r2, #10
	mov	r1, #20
.L16:
	str	r2, [r3, #8]
	add	r2, r2, #8
	cmp	r2, #186
	str	r1, [r3, #4]
	add	r3, r3, #12
	bne	.L16
	mov	r5, #0
	ldr	r4, .L21+16
	ldr	r7, .L21+20
	add	r6, r4, #276
.L17:
	mov	r1, r5
	mov	r0, r4
	add	r4, r4, #12
	mov	lr, pc
	bx	r7
	cmp	r4, r6
	add	r5, r5, #1
	bne	.L17
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	clearShadowOAM
	.word	dispBackground
	.word	deadPrincess
	.word	textLose
	.word	playAgain
	.word	initAgainQuote_setup
	.size	initLoseGame, .-initLoseGame
	.align	2
	.global	drawLoseGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLoseGame, %function
drawLoseGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #80
	push	{r4, r5, r6, lr}
	mov	r4, #1
	ldr	r3, .L29
	ldr	r1, .L29+4
	ldr	r2, .L29+8
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r5, .L29+12
	ldr	r6, .L29+16
.L24:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #9
	add	r5, r5, #12
	bne	.L24
	ldr	r5, .L29+20
.L25:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #32
	add	r5, r5, #12
	bne	.L25
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	shadowOAM
	.word	-16294
	.word	25120
	.word	textLose
	.word	drawQuoteOne
	.word	playAgain
	.size	drawLoseGame, .-drawLoseGame
	.align	2
	.global	drawDeadPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDeadPrincess, %function
drawDeadPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #80
	ldr	r3, .L33
	ldr	r1, .L33+4
	ldr	r2, .L33+8
	lsl	ip, r0, #3
	add	r0, r3, r0, lsl #3
	strh	lr, [r3, ip]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	shadowOAM
	.word	-16294
	.word	25120
	.size	drawDeadPrincess, .-drawDeadPrincess
	.comm	playAgain,276,4
	.comm	textLose,96,4
	.comm	shadowOAM,1024,4
	.comm	deadPrincess,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
