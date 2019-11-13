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
	.global	initChar
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initChar, %function
initChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #64
	mov	ip, #100
	mov	r0, #50
	mov	r1, #0
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
	.size	initChar, .-initChar
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
	mov	r5, #120
	mov	r4, #50
	mov	r6, #0
	mov	r0, r5
	mov	r2, r4
	mov	r1, lr
	mov	ip, #4
	ldr	r3, .L9
	stmib	r3, {r4, lr}
	str	r5, [r3]
	str	r6, [r3, #16]
	str	lr, [r3, #12]
	ldr	r3, .L9+4
.L6:
	str	r2, [r3, #4]
	add	r2, r2, #32
	cmp	r2, #178
	str	r0, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	add	r3, r3, #20
	bne	.L6
	mov	ip, #164
	mov	r2, #8
	ldr	r3, .L9+8
	pop	{r4, r5, r6, lr}
	stm	r3, {r0, ip}
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	bx	lr
.L10:
	.align	2
.L9:
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
	push	{r4, lr}
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	mov	r2, #64
	mov	ip, #100
	mov	r1, #0
	mov	r0, #50
	ldr	r3, .L13+4
	str	ip, [r3]
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r3, #4]
	bl	initDialogBox
	ldr	r3, .L13+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	dispBackground
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
	ldr	r3, .L17
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	parallax
	.size	updateCutScene, .-updateCutScene
	.align	2
	.global	initCharacter
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCharacter, %function
initCharacter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L20
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #64
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r2, .L20+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
	bx	lr
.L21:
	.align	2
.L20:
	.word	noot
	.word	shadowOAM
	.size	initCharacter, .-initCharacter
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
	ldr	r2, .L26
	push	{r4, r5, lr}
	mov	r1, r2
	mov	r4, r2
	ldr	ip, .L26+4
	ldr	r3, [ip, #16]
	add	r3, r3, #224
	orr	r3, r3, #8192
	ldr	r5, .L26+8
	strh	r3, [r2, #52]	@ movhi
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	orr	r0, r0, r5
	strh	r3, [r2, #48]	@ movhi
	ldr	r3, .L26+12
	strh	r0, [r2, #50]	@ movhi
	mov	lr, r5
	add	r5, r3, #80
.L23:
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
	bne	.L23
	ldr	r1, .L26+16
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
.L27:
	.align	2
.L26:
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
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	bl	drawDialogBox
	ldr	r2, .L30+8
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #64
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r2, .L30+12
	pop	{r4, lr}
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
	bx	lr
.L31:
	.align	2
.L30:
	.word	drawPlayer
	.word	drawPrincess
	.word	noot
	.word	shadowOAM
	.size	drawCutScene, .-drawCutScene
	.comm	shadowOAM,1024,4
	.comm	boxCenter,80,4
	.comm	boxLeft,20,4
	.comm	boxRight,20,4
	.comm	noot,20,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
