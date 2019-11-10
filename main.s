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
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
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
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L37+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L37+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L37+20
	ldrh	r3, [r2]
	tst	r3, #1
	beq	.L21
	ldr	r1, .L37+24
	ldrh	r3, [r1]
	tst	r3, #1
	beq	.L36
.L35:
	ldrh	r3, [r2]
.L21:
	tst	r3, #8
	beq	.L20
	ldr	r3, .L37+24
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L37+28
	streq	r2, [r3]
.L20:
	pop	{r4, lr}
	bx	lr
.L36:
	mov	ip, #67108864
	mov	lr, #256
	mov	r4, #3
	strh	lr, [ip]	@ movhi
	ldrh	r3, [r2]
	ldr	r0, .L37+28
	tst	r3, #1
	str	r4, [r0]
	beq	.L21
	ldrh	r3, [r1]
	tst	r3, #1
	moveq	r3, #4
	strheq	lr, [ip]	@ movhi
	streq	r3, [r0]
	b	.L35
.L38:
	.align	2
.L37:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L40
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r4, .L53
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r4
	mov	r3, #544
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L53+12
	mov	r0, #3
	ldr	r1, .L53+16
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L53+20
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
	ldr	r3, .L53+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
.L46:
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	ldr	r3, .L53+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L53+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
	.word	DMANow
	.word	bg1StarsPal
	.word	bg1StarsTiles
	.word	100720640
	.word	bg1StarsMap
	.word	oldButtons
	.word	buttons
	.word	dispBackground
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
	ldr	r3, .L56
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r4, .L64
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+4
	mov	lr, pc
	bx	r4
	mov	r3, #64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L64+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L64+12
	ldr	r1, .L64+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L64+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L64+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L64+28
	streq	r3, [r2]
.L58:
	pop	{r4, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r6, .L77
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	fp, .L77+4
	ldr	r5, .L77+8
	ldr	r10, .L77+12
	ldr	r9, .L77+16
	ldr	r8, .L77+20
	ldr	r7, .L77+24
	ldr	r4, .L77+28
.L67:
	ldrh	r3, [fp]
.L68:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L68
.L70:
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
	.word	.L69
.L69:
	mov	lr, pc
	bx	r7
.L74:
	ldr	r2, [r6]
	b	.L67
.L71:
	mov	lr, pc
	bx	r8
	b	.L74
.L72:
	mov	lr, pc
	bx	r9
	b	.L74
.L73:
	mov	lr, pc
	bx	r10
	b	.L74
.L78:
	.align	2
.L77:
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
	ldr	r3, .L80
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
