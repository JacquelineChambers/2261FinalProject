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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #27
	mov	lr, #7
	mov	r1, #8
	mov	r8, #22
	mov	r7, #19
	mov	r6, #12
	mov	r5, #5
	mov	r4, #13
	mov	ip, #0
	mov	r0, #6
	ldr	r3, .L11
	str	r8, [r3]
	str	r7, [r3, #36]
	str	r6, [r3, #72]
	str	r5, [r3, #120]
	str	r4, [r3, #180]
	str	lr, [r3, #12]
	str	lr, [r3, #156]
	str	ip, [r3, #24]
	str	ip, [r3, #60]
	str	r2, [r3, #48]
	str	r2, [r3, #84]
	str	r2, [r3, #108]
	str	r2, [r3, #204]
	str	r1, [r3, #96]
	str	r1, [r3, #132]
	str	r1, [r3, #168]
	str	r0, [r3, #144]
	str	r0, [r3, #192]
	pop	{r4, r5, r6, r7, r8, lr}
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
	add	r1, r1, #25
	lsl	r1, r1, #1
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	initQuoteOne_setup, .-initQuoteOne_setup
	.align	2
	.global	initDialogBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDialogBox, %function
initDialogBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #32
	mov	r4, #120
	mov	r6, #40
	mov	r5, #0
	mov	r0, r4
	mov	r1, lr
	mov	r2, #50
	mov	ip, #4
	ldr	r3, .L18
	stm	r3, {r4, r6}
	str	r5, [r3, #16]
	str	lr, [r3, #8]
	str	lr, [r3, #12]
	ldr	r3, .L18+4
.L15:
	str	r2, [r3, #4]
	add	r2, r2, #32
	cmp	r2, #178
	str	r0, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	add	r3, r3, #20
	bne	.L15
	mov	ip, #164
	mov	r2, #8
	ldr	r3, .L18+8
	pop	{r4, r5, r6, lr}
	stm	r3, {r0, ip}
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	bx	lr
.L19:
	.align	2
.L18:
	.word	boxLeft
	.word	boxCenter
	.word	boxRight
	.size	initDialogBox, .-initDialogBox
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
	ldr	r3, .L24
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	bl	initDialogBox
	bl	initQuoteOne_letter
	mov	r2, #50
	mov	r0, #130
	ldr	r3, .L24+4
	add	r1, r3, #276
.L21:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r3, r1
	add	r2, r2, #2
	bne	.L21
	bl	initAlphabet
	mov	lr, #100
	mov	r2, #64
	mov	ip, #50
	mov	r0, #13
	ldr	r3, .L24+8
	ldr	r1, .L24+12
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	dispBackground
	.word	text
	.word	noot
	.word	hideSprites
	.size	initCutScene, .-initCutScene
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
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	parallax
	.size	updateCutScene, .-updateCutScene
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
	@ link register save eliminated.
	ldr	r1, .L31
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L31+4
	ldr	r0, [r1]
	ldr	r1, [r1, #16]
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
	bx	lr
.L32:
	.align	2
.L31:
	.word	noot
	.word	shadowOAM
	.size	drawCharacter, .-drawCharacter
	.align	2
	.global	drawDialogBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDialogBox, %function
drawDialogBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L37
	push	{r4, r5, lr}
	mov	r1, r2
	mov	r4, r2
	ldr	ip, .L37+4
	ldr	r3, [ip, #16]
	add	r3, r3, #224
	orr	r3, r3, #8192
	ldr	r5, .L37+8
	strh	r3, [r2, #52]	@ movhi
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	orr	r0, r0, r5
	strh	r3, [r2, #48]	@ movhi
	ldr	r3, .L37+12
	strh	r0, [r2, #50]	@ movhi
	mov	lr, r5
	add	r5, r3, #80
.L34:
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	ip, [r3]
	add	r2, r2, #224
	add	r3, r3, #20
	orr	r2, r2, #8192
	orr	r0, r0, lr
	cmp	r5, r3
	strh	r2, [r1, #60]	@ movhi
	strh	r0, [r1, #58]	@ movhi
	strh	ip, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L34
	ldr	r1, .L37+16
	ldr	r3, [r1, #16]
	ldr	r2, [r1, #4]
	add	r3, r3, #224
	ldr	r1, [r1]
	orr	lr, r2, lr
	orr	r3, r3, #8192
	strh	r3, [r4, #92]	@ movhi
	strh	lr, [r4, #90]	@ movhi
	strh	r1, [r4, #88]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	shadowOAM
	.word	boxLeft
	.word	-32768
	.word	boxCenter
	.word	boxRight
	.size	drawDialogBox, .-drawDialogBox
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
	push	{r4, lr}
	ldr	r3, .L43
	ldr	r4, .L43+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+8
	mov	lr, pc
	bx	r3
	bl	drawDialogBox
	mov	r2, r4
	ldr	r3, .L43+12
	add	lr, r3, #276
.L40:
	ldr	ip, [r3, #4]
	ldr	r0, [r3, #8]
	ldr	r1, [r3], #12
	cmp	r3, lr
	strh	ip, [r2, #96]	@ movhi
	strh	r0, [r2, #98]	@ movhi
	strh	r1, [r2, #100]	@ movhi
	add	r2, r2, #8
	bne	.L40
	ldr	r2, .L43+16
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r2]
	ldr	r2, [r2, #16]
	strh	r3, [r4, #42]	@ movhi
	strh	r1, [r4, #40]	@ movhi
	strh	r2, [r4, #44]	@ movhi
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	drawPlayer
	.word	shadowOAM
	.word	drawPrincess
	.word	text
	.word	noot
	.size	drawCutScene, .-drawCutScene
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
	ldr	r3, .L47
	str	lr, [sp, #-4]!
	ldr	ip, [r0, #8]
	ldr	lr, [r0, #4]
	ldr	r2, [r0]
	add	r1, r1, #12
	lsl	r0, r1, #3
	add	r1, r3, r1, lsl #3
	strh	lr, [r3, r0]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	shadowOAM
	.size	drawQuoteOne, .-drawQuoteOne
	.comm	text,276,4
	.comm	alphabet,108,4
	.comm	shadowOAM,1024,4
	.comm	boxCenter,80,4
	.comm	boxLeft,20,4
	.comm	boxRight,20,4
	.comm	noot,20,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
