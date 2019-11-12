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
	mov	r3, #4864
	mov	r2, #1
	strh	r3, [r5]	@ movhi
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
	mov	r3, #67108864
	mov	r1, #4864
	mov	r2, #1
	strh	r1, [r3]	@ movhi
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
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L26+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L26+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L26+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
	ldr	r3, .L26+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L20
	mov	r2, #67108864
	mov	r0, #2
	ldr	r1, .L26+28
	ldr	ip, .L26+32
	ldrh	lr, [r1]
	ldr	r1, .L26+36
	strh	lr, [ip]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r1]
.L20:
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L29
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
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
	ldr	r3, .L33
	str	r2, [r3]
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r4, .L42
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L42+12
	mov	r0, #3
	ldr	r1, .L42+16
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L42+20
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L35
	ldr	r3, .L42+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
.L35:
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	ldr	r3, .L42+28
	mov	lr, pc
	bx	r3
	mov	r3, #4864
	mov	r2, #1
	strh	r3, [r5]	@ movhi
	ldr	r3, .L42+32
	ldr	r1, .L42+36
	ldrh	r0, [r3]
	ldr	r3, .L42+40
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L45
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r4, .L53
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L53+12
	ldr	r1, .L53+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L53+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
	ldr	r3, .L53+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L53+28
	streq	r3, [r2]
.L47:
	pop	{r4, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100720640
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
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
	ldr	r3, .L56
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L64
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
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
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100720640
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.size	lose, .-lose
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
	ldr	r6, .L78
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	r7, .L78+4
	ldr	r5, .L78+8
	ldr	fp, .L78+12
	ldr	r10, .L78+16
	ldr	r9, .L78+20
	ldr	r8, .L78+24
	ldr	r4, .L78+28
.L67:
	ldrh	r3, [r7]
.L68:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L68
.L70:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
.L69:
	ldr	r3, .L78+32
	mov	lr, pc
	bx	r3
.L75:
	ldr	r2, [r6]
	b	.L67
.L71:
	mov	lr, pc
	bx	r8
	b	.L75
.L72:
	mov	lr, pc
	bx	r9
	b	.L75
.L73:
	mov	lr, pc
	bx	r10
	b	.L75
.L74:
	mov	lr, pc
	bx	fp
	b	.L75
.L79:
	.align	2
.L78:
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	lose
	.size	main, .-main
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
