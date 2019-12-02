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
	str	lr, [sp, #-4]!
	mov	r2, #64
	mov	lr, #100
	mov	ip, #50
	mov	r0, #13
	mov	r1, #0
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	noot
	.size	initCharacter, .-initCharacter
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
	ldr	r3, .L8
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
.L9:
	.align	2
.L8:
	.word	text
	.size	initQuoteOne_letter, .-initQuoteOne_letter
	.align	2
	.global	initQuoteTwo_letter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteTwo_letter, %function
initQuoteTwo_letter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #27
	mov	r1, #18
	mov	r4, #0
	mov	lr, #4
	mov	fp, #15
	mov	r10, #2
	mov	r9, #14
	mov	r8, #1
	mov	r7, #19
	mov	r6, #5
	mov	r5, #11
	mov	ip, #8
	mov	r0, #20
	ldr	r3, .L12
	str	fp, [r3, #12]
	str	r10, [r3, #36]
	str	r9, [r3, #120]
	str	r8, [r3, #144]
	str	r7, [r3, #192]
	str	r6, [r3, #216]
	str	r5, [r3, #240]
	str	r4, [r3, #24]
	str	r4, [r3, #168]
	str	lr, [r3, #48]
	str	lr, [r3, #156]
	str	r1, [r3]
	str	r1, [r3, #84]
	str	r1, [r3, #108]
	str	r2, [r3, #60]
	str	r2, [r3, #96]
	str	r2, [r3, #132]
	str	r2, [r3, #252]
	str	ip, [r3, #72]
	str	ip, [r3, #204]
	str	r0, [r3, #180]
	str	r0, [r3, #228]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	text2
	.size	initQuoteTwo_letter, .-initQuoteTwo_letter
	.align	2
	.global	initQuoteThree_letter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteThree_letter, %function
initQuoteThree_letter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #27
	mov	r1, #4
	mov	r10, #8
	mov	r9, #7
	mov	r8, #15
	mov	r7, #22
	mov	r6, #0
	mov	r5, #17
	mov	r4, #2
	mov	lr, #11
	mov	r0, #14
	mov	ip, #18
	ldr	r3, .L16
	str	r10, [r3]
	str	r9, [r3, #24]
	str	r8, [r3, #48]
	str	r7, [r3, #84]
	str	r6, [r3, #120]
	str	r5, [r3, #132]
	str	r4, [r3, #168]
	str	lr, [r3, #180]
	str	ip, [r3, #204]
	str	r2, [r3, #12]
	str	r2, [r3, #72]
	str	r2, [r3, #108]
	str	r2, [r3, #156]
	str	r2, [r3, #228]
	str	r2, [r3, #240]
	str	r2, [r3, #252]
	str	r0, [r3, #36]
	str	r0, [r3, #192]
	str	r1, [r3, #60]
	str	r1, [r3, #96]
	str	r1, [r3, #144]
	str	r1, [r3, #216]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	text3
	.size	initQuoteThree_letter, .-initQuoteThree_letter
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
	.global	initQuoteTwo_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteTwo_setup, %function
initQuoteTwo_setup:
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
	.size	initQuoteTwo_setup, .-initQuoteTwo_setup
	.align	2
	.global	initQuoteThree_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	initQuoteThree_setup, %function
initQuoteThree_setup:
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
	.size	initQuoteThree_setup, .-initQuoteThree_setup
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
	ldr	r3, .L23
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
.L24:
	.align	2
.L23:
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
	mov	ip, #202
	mov	r0, #32
	mov	r1, #4
	ldr	r3, .L27
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
.L28:
	.align	2
.L27:
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
	mov	lr, #202
	mov	ip, #4
	mov	r0, #140
	mov	r1, #10
	ldr	r3, .L31
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
.L32:
	.align	2
.L31:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L45
	ldr	r1, .L45+4
	ldr	r0, .L45+8
	mov	r3, #1
	ldr	r4, .L45+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+16
	mov	lr, pc
	bx	r3
	mov	r4, #8
	mov	r1, #32
	mov	lr, #138
	mov	ip, #202
	mov	r0, #4
	mov	r7, #130
	mov	r6, #17
	mov	r5, #0
	ldr	r2, .L45+20
	ldr	r3, .L45+24
	str	r4, [r2, #8]
	str	r4, [r2, #20]
	str	r4, [r2, #32]
	str	r4, [r2, #44]
	str	r4, [r3, #8]
	str	r4, [r3, #20]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r1, [r2, #12]
	str	r1, [r2, #36]
	str	r1, [r3, #12]
	str	r1, [r3, #36]
	str	lr, [r2, #24]
	str	lr, [r3, #24]
	str	ip, [r3, #4]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #40]
	str	r7, [r2]
	str	r7, [r3]
	str	r6, [r2, #4]
	str	r6, [r2, #28]
	str	r5, [r2, #16]
	str	r5, [r2, #40]
	bl	initBoxCorner
	mov	r1, r4
	mov	r2, #25
	mov	r4, #122
	mov	lr, #1
	mov	ip, #7
	ldr	r3, .L45+28
	add	r0, r3, #528
.L34:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L34
	mov	r2, #25
	mov	r4, #140
	mov	r1, #8
	mov	lr, #1
	mov	ip, #10
	ldr	r3, .L45+32
	add	r0, r3, #528
.L35:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L35
	bl	initQuoteOne_letter
	bl	initQuoteTwo_letter
	bl	initQuoteThree_letter
	mov	r2, #25
	mov	r0, #130
	ldr	r3, .L45+36
	add	r1, r3, #264
.L36:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r3, r1
	add	r2, r2, #8
	bne	.L36
	mov	r2, #25
	mov	r0, #130
	ldr	r3, .L45+40
	add	r1, r3, #264
.L37:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r1, r3
	add	r2, r2, #8
	bne	.L37
	mov	r2, #25
	mov	r0, #130
	ldr	r3, .L45+44
	add	r1, r3, #264
.L38:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r1, r3
	add	r2, r2, #8
	bne	.L38
	mov	r1, #100
	mov	lr, #50
	mov	r2, #64
	mov	ip, #13
	mov	r0, #0
	ldr	r3, .L45+48
	str	r1, [r3]
	ldr	r1, .L45+52
	str	lr, [r3, #4]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	11025
	.word	415842
	.word	grenzlinie
	.word	playSoundB
	.word	dispBackground
	.word	boxLeftSide
	.word	boxRightSide
	.word	boxTop
	.word	boxBottom
	.word	text
	.word	text2
	.word	text3
	.word	noot
	.word	hideSprites
	.size	initCutScene, .-initCutScene
	.align	2
	.global	initBoxEdgeTop
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoxEdgeTop, %function
initBoxEdgeTop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #25
	mov	r4, #122
	mov	r1, #8
	mov	lr, #1
	mov	ip, #7
	ldr	r3, .L51
	add	r0, r3, #528
.L48:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L48
	pop	{r4, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	boxTop
	.size	initBoxEdgeTop, .-initBoxEdgeTop
	.align	2
	.global	initBoxEdgeBottom
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoxEdgeBottom, %function
initBoxEdgeBottom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #25
	mov	r4, #140
	mov	r1, #8
	mov	lr, #1
	mov	ip, #10
	ldr	r3, .L57
	add	r0, r3, #528
.L54:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L54
	pop	{r4, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	boxBottom
	.size	initBoxEdgeBottom, .-initBoxEdgeBottom
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
	ldr	r3, .L61
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L62:
	.align	2
.L61:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+8
	ldr	lr, [r3]
	ands	r4, lr, #1
	beq	.L64
	mov	r1, #13
	mov	r2, #8
	ldr	r3, .L83+12
	ldr	r8, .L83+16
	str	r1, [r3, #16]
	str	r2, [r3, #20]
.L65:
	ldr	r6, [r3, #4]
	mvn	r6, r6, lsl #17
	mvn	r6, r6, lsr #17
	ldr	r2, .L83+20
	mov	r1, r2
	ldr	r0, .L83+24
	ldr	r5, [r0, #20]
	ldr	ip, [r0, #16]
	add	ip, ip, r5, lsl #5
	orr	ip, ip, #8192
	ldr	r7, [r3]
	ldr	r5, [r0, #44]
	ldr	r3, .L83+28
	strh	ip, [r2, #52]	@ movhi
	ldr	ip, [r0, #40]
	strh	r8, [r2, #44]	@ movhi
	strh	r6, [r2, #42]	@ movhi
	ldr	r8, [r3, #20]
	ldr	r6, [r0]
	add	ip, ip, r5, lsl #5
	ldr	r5, [r3, #16]
	strh	r6, [r2, #48]	@ movhi
	add	r5, r5, r8, lsl #5
	ldr	r6, [r0, #4]
	orr	ip, ip, #8192
	orr	r5, r5, #8192
	strh	r7, [r2, #40]	@ movhi
	strh	ip, [r2, #60]	@ movhi
	ldr	r7, [r3, #44]
	ldr	ip, [r3, #40]
	strh	r5, [r2, #68]	@ movhi
	strh	r6, [r2, #50]	@ movhi
	ldr	r5, [r0, #28]
	ldr	r6, [r0, #24]
	ldr	r0, [r3]
	strh	r6, [r2, #56]	@ movhi
	strh	r5, [r2, #58]	@ movhi
	ldr	r6, [r3, #4]
	ldr	r5, [r3, #24]
	strh	r0, [r2, #64]	@ movhi
	add	ip, ip, r7, lsl #5
	ldr	r0, [r3, #28]
	orr	ip, ip, #8192
	ldr	r3, .L83+32
	strh	r5, [r2, #72]	@ movhi
	strh	r6, [r2, #66]	@ movhi
	strh	r0, [r2, #74]	@ movhi
	strh	ip, [r2, #76]	@ movhi
	add	r5, r3, #528
.L67:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	r5, r3
	strh	r2, [r1, #84]	@ movhi
	strh	ip, [r1, #80]	@ movhi
	strh	r0, [r1, #82]	@ movhi
	add	r1, r1, #8
	bne	.L67
	ldr	r3, .L83+36
	ldr	r1, .L83+40
	add	r5, r3, #528
.L68:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	r5, r3
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L68
	ldr	r3, .L83+44
	ldr	r1, .L83+48
	add	r5, r3, #96
.L69:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	r5, r3
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L69
	cmp	r4, #0
	beq	.L70
	ldr	r2, .L83+52
	ldr	r1, .L83+56
	add	lr, r2, #264
.L71:
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #8]
	ldr	r3, [r2], #12
	add	r3, r3, #448
	orr	r3, r3, #8192
	cmp	lr, r2
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L71
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	ldr	r3, .L83+60
	smull	r2, r3, lr, r3
	sub	r3, r3, lr, asr #31
	add	r3, r3, r3, lsl #1
	cmp	lr, r3
	beq	.L66
	mov	r1, #9
	mov	r2, #8
	ldr	r3, .L83+12
	ldr	r8, .L83+64
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	b	.L65
.L66:
	mov	r2, #13
	ldr	r3, .L83+12
	mov	r8, r2
	str	r2, [r3, #16]
	str	r4, [r3, #20]
	b	.L65
.L70:
	ldr	r3, .L83+60
	smull	r2, r3, lr, r3
	sub	r3, r3, lr, asr #31
	add	r3, r3, r3, lsl #1
	cmp	lr, r3
	beq	.L72
	ldr	r2, .L83+68
	ldr	r1, .L83+56
	add	lr, r2, #264
.L73:
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #8]
	ldr	r3, [r2], #12
	add	r3, r3, #448
	orr	r3, r3, #8192
	cmp	lr, r2
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L73
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L72:
	ldr	r2, .L83+72
	ldr	r1, .L83+56
	add	lr, r2, #264
.L75:
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #8]
	ldr	r3, [r2], #12
	add	r3, r3, #448
	orr	r3, r3, #8192
	cmp	lr, r2
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L75
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	drawPlayer
	.word	drawPrincess
	.word	timer
	.word	noot
	.word	269
	.word	shadowOAM
	.word	boxLeftSide
	.word	boxRightSide
	.word	boxTop
	.word	boxBottom
	.word	shadowOAM+256
	.word	boxCorner
	.word	shadowOAM+432
	.word	text
	.word	shadowOAM+464
	.word	1431655766
	.word	265
	.word	text3
	.word	text2
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
	ldr	r2, .L87
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, lr}
	add	r1, r2, #16
	ldr	ip, .L87+4
	ldm	r1, {r1, r4}
	ldr	lr, [r2]
	add	r1, r1, r4, lsl #5
	add	r2, ip, r0, lsl #3
	lsl	r0, r0, #3
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r2, .L91
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
.L92:
	.align	2
.L91:
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
	ldr	r2, .L95
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
.L96:
	.align	2
.L95:
	.word	shadowOAM
	.size	drawQuoteOne, .-drawQuoteOne
	.comm	text3,264,4
	.comm	text2,264,4
	.comm	text,264,4
	.comm	alphabet,108,4
	.comm	shadowOAM,1024,4
	.comm	boxBlack,24,4
	.comm	boxBottom,528,4
	.comm	boxTop,528,4
	.comm	boxCorner,96,4
	.comm	boxRightSide,48,4
	.comm	boxLeftSide,48,4
	.comm	noot,24,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
