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
	.file	"cutScene.c"
	.text
	.align	2
	.global	initCharacter
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCharacter, %function
initCharacter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #64
	mov	ip, #100
	mov	r0, #50
	mov	r1, #13
	ldr	r3, .L3
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L4:
	.align	2
.L3:
	.word	noot
	.size	initCharacter, .-initCharacter
	.align	2
	.global	initAlphabet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAlphabet, %function
initAlphabet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #6
	ldr	r3, .L7
	str	r5, [r3, #24]
	mov	r5, #7
	str	r5, [r3, #28]
	mov	r5, #8
	str	r5, [r3, #32]
	mov	r5, #9
	str	r5, [r3, #36]
	mov	r5, #10
	str	r5, [r3, #40]
	mov	r5, #11
	str	r5, [r3, #44]
	mov	r5, #12
	str	r5, [r3, #48]
	mov	r5, #13
	str	r5, [r3, #52]
	mov	r5, #14
	str	r5, [r3, #56]
	mov	r5, #15
	str	r5, [r3, #60]
	mov	r5, #16
	str	r5, [r3, #64]
	mov	r5, #17
	str	r5, [r3, #68]
	mov	r5, #18
	str	r5, [r3, #72]
	mov	r5, #19
	mov	fp, #0
	mov	r10, #1
	mov	r9, #2
	mov	r8, #3
	mov	r7, #4
	mov	r6, #5
	mov	r4, #21
	mov	lr, #22
	str	r5, [r3, #76]
	mov	ip, #23
	mov	r5, #20
	mov	r0, #24
	mov	r1, #25
	mov	r2, #27
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r9, [r3, #8]
	str	r8, [r3, #12]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r5, [r3, #80]
	str	r4, [r3, #84]
	str	lr, [r3, #88]
	str	ip, [r3, #92]
	str	r0, [r3, #96]
	str	r1, [r3, #100]
	str	r2, [r3, #104]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	alphabet
	.size	initAlphabet, .-initAlphabet
	.align	2
	.global	initQuoteOne_letter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteOne_letter, %function
initQuoteOne_letter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #27
	mov	r5, #7
	mov	r4, #0
	mov	lr, #19
	mov	r1, #8
	mov	r10, #22
	mov	r9, #12
	mov	r8, #13
	mov	r7, #14
	mov	r6, #17
	mov	ip, #5
	mov	r0, #6
	ldr	r3, .L11
	str	r10, [r3]
	str	r9, [r3, #72]
	str	r8, [r3, #192]
	str	r7, [r3, #240]
	str	r6, [r3, #252]
	str	r5, [r3, #12]
	str	r5, [r3, #156]
	str	r4, [r3, #24]
	str	r4, [r3, #60]
	str	lr, [r3, #36]
	str	lr, [r3, #168]
	str	r2, [r3, #48]
	str	r2, [r3, #84]
	str	r2, [r3, #108]
	str	r2, [r3, #216]
	str	r1, [r3, #96]
	str	r1, [r3, #132]
	str	r1, [r3, #180]
	str	ip, [r3, #120]
	str	ip, [r3, #228]
	str	r0, [r3, #144]
	str	r0, [r3, #204]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	text
	.size	initQuoteOne_letter, .-initQuoteOne_letter
	.align	2
	.global	initQuoteOne_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteOne_setup, %function
initQuoteOne_setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #130
	lsl	r1, r1, #3
	add	r1, r1, #25
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	initQuoteOne_setup, .-initQuoteOne_setup
	.align	2
	.global	initBoxLeftSide
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoxLeftSide, %function
initBoxLeftSide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #8
	mov	r4, #130
	mov	lr, #138
	mov	ip, #17
	mov	r0, #32
	mov	r1, #0
	ldr	r3, .L16
	str	r4, [r3]
	str	lr, [r3, #24]
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r2, [r3, #8]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #40]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	boxLeftSide
	.size	initBoxLeftSide, .-initBoxLeftSide
	.align	2
	.global	initBoxRightSide
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoxRightSide, %function
initBoxRightSide:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #8
	mov	r4, #130
	mov	lr, #138
	mov	ip, #200
	mov	r0, #32
	mov	r1, #4
	ldr	r3, .L20
	str	r4, [r3]
	str	lr, [r3, #24]
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r2, [r3, #8]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #40]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	boxRightSide
	.size	initBoxRightSide, .-initBoxRightSide
	.align	2
	.global	initBoxCorner
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoxCorner, %function
initBoxCorner:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #8
	mov	r7, #125
	mov	r6, #17
	mov	r5, #0
	mov	r4, #7
	mov	lr, #200
	mov	ip, #4
	mov	r0, #140
	mov	r1, #10
	ldr	r3, .L24
	str	r7, [r3]
	str	r7, [r3, #24]
	str	r6, [r3, #4]
	str	r6, [r3, #52]
	str	r5, [r3, #16]
	str	r5, [r3, #64]
	str	r4, [r3, #20]
	str	r4, [r3, #44]
	str	lr, [r3, #28]
	str	lr, [r3, #76]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #80]
	str	r2, [r3, #84]
	str	ip, [r3, #40]
	str	ip, [r3, #88]
	str	r0, [r3, #48]
	str	r0, [r3, #72]
	str	r1, [r3, #68]
	str	r1, [r3, #92]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	boxCorner
	.size	initBoxCorner, .-initBoxCorner
	.align	2
	.global	initCutScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCutScene, %function
initCutScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	mov	r4, #130
	mov	r2, #8
	mov	r1, #32
	mov	lr, #138
	mov	r6, #17
	mov	r5, #0
	mov	r0, #4
	mov	ip, #200
	ldr	r3, .L30+4
	str	r2, [r3, #8]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r1, [r3, #12]
	str	r1, [r3, #36]
	stm	r3, {r4, r6}
	str	lr, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r5, [r3, #40]
	ldr	r3, .L30+8
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #44]
	str	r0, [r3, #16]
	str	r0, [r3, #40]
	str	lr, [r3, #24]
	str	r4, [r3]
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	bl	initBoxCorner
	bl	initQuoteOne_letter
	mov	r1, r4
	mov	r2, #25
	ldr	r3, .L30+12
	add	r0, r3, #264
.L27:
	stmib	r3, {r1, r2}
	add	r3, r3, #12
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L27
	bl	initAlphabet
	mov	lr, #100
	mov	r2, #64
	mov	ip, #50
	mov	r0, #13
	ldr	r3, .L30+16
	ldr	r1, .L30+20
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	dispBackground
	.word	boxLeftSide
	.word	boxRightSide
	.word	text
	.word	noot
	.word	hideSprites
	.size	initCutScene, .-initCutScene
	.align	2
	.global	boxEdgeBottom
	.syntax unified
	.arm
	.fpu softvfp
	.type	boxEdgeBottom, %function
boxEdgeBottom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	boxEdgeBottom, .-boxEdgeBottom
	.align	2
	.global	boxEdgeRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	boxEdgeRight, %function
boxEdgeRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	boxEdgeRight, .-boxEdgeRight
	.align	2
	.global	boxEdgeLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	boxEdgeLeft, %function
boxEdgeLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	boxEdgeLeft, .-boxEdgeLeft
	.align	2
	.global	updateCutScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCutScene, %function
updateCutScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	parallax
	.size	updateCutScene, .-updateCutScene
	.align	2
	.global	drawCutScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCutScene, %function
drawCutScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L45
	ldr	r5, .L45+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+8
	mov	lr, pc
	bx	r3
	ldr	r4, [r5, #4]
	mvn	r4, r4, lsl #17
	mvn	r4, r4, lsr #17
	ldr	r2, .L45+12
	mov	r1, r2
	mov	r0, r2
	ldr	ip, .L45+16
	ldr	lr, [r5]
	ldr	r6, [ip, #20]
	strh	r4, [r2, #42]	@ movhi
	strh	lr, [r2, #40]	@ movhi
	ldr	r4, [r5, #16]
	ldr	lr, [ip, #16]
	strh	r4, [r2, #44]	@ movhi
	add	lr, lr, r6, lsl #5
	ldr	r4, [ip, #40]
	ldr	r6, [ip, #44]
	add	r4, r4, r6, lsl #5
	ldr	r5, [ip]
	orr	r4, r4, #8192
	ldr	r3, .L45+20
	strh	r4, [r2, #60]	@ movhi
	add	r4, ip, #24
	strh	r5, [r2, #48]	@ movhi
	orr	lr, lr, #8192
	ldr	r5, [ip, #4]
	ldm	r4, {r4, ip}
	ldr	r6, [r3, #20]
	strh	lr, [r2, #52]	@ movhi
	ldr	lr, [r3, #16]
	strh	ip, [r2, #58]	@ movhi
	ldr	ip, [r3, #4]
	add	lr, lr, r6, lsl #5
	strh	ip, [r2, #66]	@ movhi
	orr	lr, lr, #8192
	ldr	ip, [r3, #28]
	strh	r4, [r2, #56]	@ movhi
	strh	lr, [r2, #68]	@ movhi
	ldr	r4, [r3]
	ldr	lr, [r3, #24]
	strh	ip, [r2, #74]	@ movhi
	add	ip, r3, #40
	strh	r4, [r2, #64]	@ movhi
	strh	r5, [r2, #50]	@ movhi
	strh	lr, [r2, #72]	@ movhi
	ldm	ip, {ip, lr}
	add	ip, ip, lr, lsl #5
	ldr	r3, .L45+24
	orr	ip, ip, #8192
	strh	ip, [r2, #76]	@ movhi
	add	r4, r3, #96
.L40:
	add	r2, r3, #16
	ldm	r2, {r2, ip}
	ldr	lr, [r3]
	add	r2, r2, ip, lsl #5
	add	r3, r3, #24
	ldr	ip, [r3, #-20]
	orr	r2, r2, #8192
	cmp	r4, r3
	strh	r2, [r0, #84]	@ movhi
	strh	lr, [r0, #80]	@ movhi
	strh	ip, [r0, #82]	@ movhi
	add	r0, r0, #8
	bne	.L40
	ldr	r2, .L45+28
	add	lr, r2, #264
.L41:
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #8]
	ldr	r3, [r2], #12
	add	r3, r3, #448
	orr	r3, r3, #8192
	cmp	lr, r2
	strh	ip, [r1, #112]	@ movhi
	strh	r0, [r1, #114]	@ movhi
	strh	r3, [r1, #116]	@ movhi
	add	r1, r1, #8
	bne	.L41
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	drawPlayer
	.word	noot
	.word	drawPrincess
	.word	shadowOAM
	.word	boxLeftSide
	.word	boxRightSide
	.word	boxCorner
	.word	text
	.size	drawCutScene, .-drawCutScene
	.align	2
	.global	drawCharacter
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCharacter, %function
drawCharacter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L49
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L49+4
	str	lr, [sp, #-4]!
	ldr	ip, [r2, #16]
	ldr	lr, [r2]
	add	r2, r1, r0, lsl #3
	lsl	r0, r0, #3
	strh	lr, [r1, r0]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L50:
	.align	2
.L49:
	.word	noot
	.word	shadowOAM
	.size	drawCharacter, .-drawCharacter
	.align	2
	.global	drawBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBox, %function
drawBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #16
	ldm	r3, {r3, ip}
	ldr	r2, .L53
	str	lr, [sp, #-4]!
	add	r3, r3, ip, lsl #5
	ldm	r0, {ip, lr}
	orr	r3, r3, #8192
	add	r0, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	lr, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L54:
	.align	2
.L53:
	.word	shadowOAM
	.size	drawBox, .-drawBox
	.align	2
	.global	drawQuoteOne
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawQuoteOne, %function
drawQuoteOne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	ldr	r2, .L57
	str	lr, [sp, #-4]!
	add	r3, r3, #448
	ldmib	r0, {ip, lr}
	orr	r3, r3, #8192
	add	r0, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	lr, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	shadowOAM
	.size	drawQuoteOne, .-drawQuoteOne
	.comm	text,264,4
	.comm	alphabet,108,4
	.comm	shadowOAM,1024,4
	.comm	boxBlack,24,4
	.comm	boxCenter,600,4
	.comm	boxCorner,96,4
	.comm	boxRightSide,72,4
	.comm	boxLeftSide,72,4
	.comm	noot,20,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
