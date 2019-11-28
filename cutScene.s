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
	ldr	r3, .L7
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
.L8:
	.align	2
.L7:
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
	ldr	r3, .L12
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
.L13:
	.align	2
.L12:
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
	ldr	r3, .L20
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
.L21:
	.align	2
.L20:
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
	ldr	r2, .L30
	ldr	r1, .L30+4
	ldr	r0, .L30+8
	mov	r3, #1
	ldr	r4, .L30+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+16
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
	ldr	r2, .L30+20
	ldr	r3, .L30+24
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
	ldr	r3, .L30+28
	add	r0, r3, #528
.L23:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L23
	mov	r2, #25
	mov	r4, #140
	mov	r1, #8
	mov	lr, #1
	mov	ip, #10
	ldr	r3, .L30+32
	add	r0, r3, #528
.L24:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L24
	bl	initQuoteOne_letter
	mov	r2, #25
	mov	r0, #130
	ldr	r3, .L30+36
	add	r1, r3, #264
.L25:
	stmib	r3, {r0, r2}
	add	r3, r3, #12
	cmp	r3, r1
	add	r2, r2, #8
	bne	.L25
	mov	lr, #100
	mov	r2, #64
	mov	ip, #50
	mov	r0, #13
	ldr	r3, .L30+40
	ldr	r1, .L30+44
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L36
	add	r0, r3, #528
.L33:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L33
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L42
	add	r0, r3, #528
.L39:
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #24
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L39
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L58
	ldr	r5, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	ldr	ip, [r5, #4]
	mvn	ip, ip, lsl #17
	mvn	ip, ip, lsr #17
	ldr	r2, .L58+12
	mov	r1, r2
	ldr	r0, .L58+16
	add	r4, r0, #16
	ldm	r4, {r4, lr}
	add	r4, r4, lr, lsl #5
	ldr	lr, [r5]
	ldr	r6, [r0, #44]
	strh	lr, [r2, #40]	@ movhi
	ldr	lr, [r0, #40]
	add	lr, lr, r6, lsl #5
	orr	r4, r4, #8192
	orr	lr, lr, #8192
	ldr	r3, .L58+20
	strh	ip, [r2, #42]	@ movhi
	strh	r4, [r2, #52]	@ movhi
	ldr	ip, [r5, #16]
	ldr	r4, [r0, #4]
	ldr	r5, [r0]
	strh	lr, [r2, #60]	@ movhi
	ldr	lr, [r0, #24]
	ldr	r0, [r0, #28]
	strh	r0, [r2, #58]	@ movhi
	ldr	r0, [r3, #4]
	ldr	r6, [r3, #20]
	strh	ip, [r2, #44]	@ movhi
	strh	lr, [r2, #56]	@ movhi
	ldr	ip, [r3, #16]
	ldr	lr, [r3]
	strh	r0, [r2, #66]	@ movhi
	ldr	r0, [r3, #28]
	strh	lr, [r2, #64]	@ movhi
	add	ip, ip, r6, lsl #5
	ldr	lr, [r3, #24]
	strh	r0, [r2, #74]	@ movhi
	orr	ip, ip, #8192
	add	r0, r3, #40
	strh	lr, [r2, #72]	@ movhi
	strh	r5, [r2, #48]	@ movhi
	strh	r4, [r2, #50]	@ movhi
	strh	ip, [r2, #68]	@ movhi
	ldm	r0, {r0, ip}
	add	r0, r0, ip, lsl #5
	ldr	r3, .L58+24
	orr	r0, r0, #8192
	strh	r0, [r2, #76]	@ movhi
	add	lr, r3, #528
.L49:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	lr, r3
	strh	r2, [r1, #84]	@ movhi
	strh	ip, [r1, #80]	@ movhi
	strh	r0, [r1, #82]	@ movhi
	add	r1, r1, #8
	bne	.L49
	ldr	r3, .L58+28
	ldr	r1, .L58+32
	add	lr, r3, #528
.L50:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	lr, r3
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L50
	ldr	r3, .L58+36
	ldr	r1, .L58+40
	add	lr, r3, #96
.L51:
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #16]
	ldr	ip, [r3]
	add	r2, r2, r0, lsl #5
	add	r3, r3, #24
	ldr	r0, [r3, #-20]
	orr	r2, r2, #8192
	cmp	lr, r3
	strh	r2, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L51
	ldr	r2, .L58+44
	ldr	r1, .L58+48
	add	lr, r2, #264
.L52:
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
	bne	.L52
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	drawPlayer
	.word	noot
	.word	drawPrincess
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
	ldr	r2, .L62
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L62+4
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
.L63:
	.align	2
.L62:
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
	ldr	r2, .L66
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
.L67:
	.align	2
.L66:
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
	ldr	r2, .L70
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
.L71:
	.align	2
.L70:
	.word	shadowOAM
	.size	drawQuoteOne, .-drawQuoteOne
	.comm	text,264,4
	.comm	alphabet,108,4
	.comm	shadowOAM,1024,4
	.comm	boxBlack,24,4
	.comm	boxBottom,528,4
	.comm	boxTop,528,4
	.comm	boxCorner,96,4
	.comm	boxRightSide,48,4
	.comm	boxLeftSide,48,4
	.comm	noot,20,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
