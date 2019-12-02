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
	add	r1, r3, #320
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
	.global	initWinQuote_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWinQuote_setup, %function
initWinQuote_setup:
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
	.size	initWinQuote_setup, .-initWinQuote_setup
	.align	2
	.global	initAgainQuote_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAgainQuote_setup, %function
initAgainQuote_setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #50
	lsl	r1, r1, #3
	add	r1, r1, #10
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	initAgainQuote_setup, .-initAgainQuote_setup
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
	ldr	r3, .L12
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
	stm	r3, {r4, lr}
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	cliff
	.size	initPrincessNoot, .-initPrincessNoot
	.align	2
	.global	initWinQuote
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWinQuote, %function
initWinQuote:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #14
	mov	ip, #19
	mov	r0, #13
	mov	r1, #27
	mov	r7, #7
	mov	r6, #0
	mov	r5, #10
	mov	r4, #24
	mov	lr, #20
	ldr	r3, .L20
	str	r7, [r3, #12]
	str	r6, [r3, #24]
	str	r5, [r3, #48]
	str	r4, [r3, #72]
	str	lr, [r3, #96]
	str	ip, [r3]
	str	ip, [r3, #156]
	str	ip, [r3, #216]
	str	r0, [r3, #36]
	str	r0, [r3, #120]
	str	r0, [r3, #180]
	str	r1, [r3, #60]
	str	r1, [r3, #108]
	str	r1, [r3, #168]
	str	r2, [r3, #84]
	str	r2, [r3, #132]
	str	r2, [r3, #144]
	str	r2, [r3, #192]
	str	r2, [r3, #204]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	textWin
	.size	initWinQuote, .-initWinQuote
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
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	bl	clearShadowOAM
	mov	r3, #0
	mov	r1, #64
	mov	r0, #24
	mov	ip, #185
	mov	lr, #8
	mov	r6, #61
	mov	r5, #105
	mov	r4, #32
	ldr	r2, .L28+4
	str	r3, [r2, #20]
	ldr	r3, .L28+8
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	r1, [r3, #8]
	str	r0, [r2, #16]
	str	r0, [r3, #16]
	stm	r3, {r5, ip}
	str	r6, [r2]
	str	ip, [r2, #4]
	str	lr, [r3, #20]
	str	r4, [r3, #12]
	bl	initWinQuote
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	mov	r2, #10
	mov	r0, #20
	ldr	r3, .L28+16
	add	r1, r3, #228
.L23:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r3, r1
	add	r2, r2, #8
	bne	.L23
	mov	r2, #10
	mov	r0, #50
	ldr	r3, .L28+20
	add	r1, r3, #276
.L24:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r3, r1
	add	r2, r2, #8
	bne	.L24
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	dispBackground
	.word	princessNoot
	.word	cliff
	.word	initPlayAgainQuote
	.word	textWin
	.word	playAgain
	.size	initWinGame, .-initWinGame
	.align	2
	.global	initPlayAgainQuoteLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayAgainQuoteLose, %function
initPlayAgainQuoteLose:
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
	ldr	r3, .L32
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
.L33:
	.align	2
.L32:
	.word	playAgain
	.size	initPlayAgainQuoteLose, .-initPlayAgainQuoteLose
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
	push	{r4, r5, r6, lr}
	mov	r4, #2
	ldr	ip, .L40
	ldr	r0, .L40+4
	add	r1, ip, #16
	ldr	lr, [r0, #20]
	ldm	r1, {r1, r3}
	ldr	r2, [r0, #16]
	add	r1, r1, r3, lsl #5
	add	r2, r2, lr, lsl #5
	ldr	r3, .L40+8
	ldm	ip, {ip, lr}
	orr	r1, r1, #24576
	ldr	r5, .L40+12
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3]	@ movhi
	ldm	r0, {r1, ip}
	orr	lr, lr, r5
	orr	r0, ip, r5
	orr	r2, r2, #16384
	orr	r1, r1, #16384
	strh	lr, [r3, #2]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r5, .L40+16
	ldr	r6, .L40+20
.L35:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #21
	add	r5, r5, #12
	bne	.L35
	ldr	r5, .L40+24
.L36:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #44
	add	r5, r5, #12
	bne	.L36
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	princessNoot
	.word	cliff
	.word	shadowOAM
	.word	-16384
	.word	textWin
	.word	drawQuoteOne
	.word	playAgain
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
	ldr	r1, .L44
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	ip, [r1, #20]
	ldr	r3, [r1, #16]
	str	lr, [sp, #-4]!
	ldr	r1, [r1]
	ldr	lr, .L44+4
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
.L45:
	.align	2
.L44:
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
	ldr	r1, .L48
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	push	{r4, lr}
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #20]
	ldr	ip, .L48+4
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
.L49:
	.align	2
.L48:
	.word	princessNoot
	.word	shadowOAM
	.size	drawPrincessNoot, .-drawPrincessNoot
	.comm	playAgain,276,4
	.comm	textWin,228,4
	.comm	shadowOAM,1024,4
	.comm	cliff,24,4
	.comm	princessNoot,24,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
