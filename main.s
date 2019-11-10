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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L3
	str	r2, [r3]
	bx	lr
.L4:
	.align	2
.L3:
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L6
	str	r2, [r3]
	bx	lr
.L7:
	.align	2
.L6:
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r5, #67108864
	ldr	r4, .L15
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L15+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L15+8
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L15+16
	mov	r0, #3
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L15+24
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L8
	ldr	r3, .L15+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
.L8:
	pop	{r4, r5, r6, lr}
	bx	lr
.L14:
	ldr	r3, .L15+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L15+36
	ldr	r1, .L15+40
	ldrh	r0, [r3]
	ldr	r3, .L15+44
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	DMANow
	.word	moonArtPal
	.word	7568
	.word	moonArtTiles
	.word	100720640
	.word	moonArtMap
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	tmphOff
	.word	hOff
	.word	state
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L18
	ldr	r1, .L18+4
	ldrh	r0, [r3]
	ldr	r3, .L18+8
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	tmphOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L36+20
	ldrh	r3, [r2]
	tst	r3, #1
	beq	.L21
	ldr	r1, .L36+24
	ldrh	r1, [r1]
	ands	r1, r1, #1
	beq	.L34
.L21:
	tst	r3, #2
	beq	.L22
	ldr	r1, .L36+24
	ldrh	r1, [r1]
	ands	r1, r1, #2
	beq	.L35
.L22:
	tst	r3, #8
	beq	.L20
	ldr	r3, .L36+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L20
	mov	r2, #67108864
	mov	r0, #2
	ldr	r1, .L36+28
	ldr	ip, .L36+32
	ldrh	lr, [r1]
	ldr	r1, .L36+36
	strh	lr, [ip]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r1]
.L20:
	pop	{r4, lr}
	bx	lr
.L35:
	mov	r3, #67108864
	mov	ip, #256
	mov	r0, #4
	strh	r1, [r3, #16]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldr	r1, .L36+36
	ldrh	r3, [r2]
	str	r0, [r1]
	b	.L22
.L34:
	mov	r3, #67108864
	mov	ip, #256
	mov	r0, #3
	strh	r1, [r3, #16]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldr	r1, .L36+36
	ldrh	r3, [r2]
	str	r0, [r1]
	b	.L21
.L37:
	.align	2
.L36:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	tmphOff
	.word	state
	.size	game, .-game
	.align	2
	.global	goToCutScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCutScene, %function
goToCutScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #5
	ldr	r3, .L39
	str	r2, [r3]
	bx	lr
.L40:
	.align	2
.L39:
	.word	state
	.size	goToCutScene, .-goToCutScene
	.align	2
	.global	cutScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutScene, %function
cutScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	cutScene, .-cutScene
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L43
	str	r2, [r3]
	bx	lr
.L44:
	.align	2
.L43:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r5, #67108864
	ldr	r4, .L52
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L52+12
	mov	r0, #3
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L52+20
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r3, .L52+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L51
.L45:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r3, .L52+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L52+32
	ldr	r1, .L52+36
	ldrh	r0, [r3]
	ldr	r3, .L52+40
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	DMANow
	.word	bg0SpacePausePal
	.word	bg0SpacePauseTiles
	.word	100720640
	.word	bg0SpacePauseMap
	.word	oldButtons
	.word	buttons
	.word	dispBackground
	.word	tmphOff
	.word	hOff
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #256
	mov	r2, #3
	ldr	r3, .L55
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L63
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+4
	mov	lr, pc
	bx	r4
	mov	r3, #64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L63+12
	ldr	r1, .L63+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L63+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L57
	ldr	r3, .L63+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L63+28
	streq	r3, [r2]
.L57:
	pop	{r4, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	DMANow
	.word	bgTestPal
	.word	bgTestTiles
	.word	100720640
	.word	bgTestMap
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L76
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	fp, .L76+4
	ldr	r5, .L76+8
	ldr	r10, .L76+12
	ldr	r9, .L76+16
	ldr	r8, .L76+20
	ldr	r7, .L76+24
	ldr	r4, .L76+28
.L66:
	ldrh	r3, [fp]
.L67:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L67
.L69:
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L68
	.word	.L68
.L68:
	mov	lr, pc
	bx	r7
.L73:
	ldr	r2, [r6]
	b	.L66
.L70:
	mov	lr, pc
	bx	r8
	b	.L73
.L71:
	mov	lr, pc
	bx	r9
	b	.L73
.L72:
	mov	lr, pc
	bx	r10
	b	.L73
.L77:
	.align	2
.L76:
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #256
	mov	r2, #4
	ldr	r3, .L79
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"