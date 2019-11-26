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
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r2, #0
	ldr	r1, .L4+8
	ldr	r3, .L4+12
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	setupSounds
	.word	setupInterrupts
	.word	enemiesKilled
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
	ldr	r3, .L7
	str	r2, [r3]
	bx	lr
.L8:
	.align	2
.L7:
	.word	state
	.size	goToStart, .-goToStart
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
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	ldr	r0, .L11
	strh	r1, [r2]	@ movhi
	mov	r3, #1
	ldr	r2, .L11+4
	ldr	r1, .L11+8
	ldr	r4, .L11+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L11+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L11+20
	ldr	r1, .L11+24
	ldrh	r0, [r3]
	ldr	r3, .L11+28
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	keepOnKeepingOn
	.word	11025
	.word	2553696
	.word	playSoundA
	.word	initGame
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+8
	ldr	r3, .L36+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L36+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #20
	bgt	.L33
.L14:
	ldr	r3, .L36+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L36+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r4]
	tst	r3, #7
	ldr	r5, .L36+32
	beq	.L17
.L31:
	ldrh	r2, [r5]
	tst	r2, #4
	bne	.L34
.L18:
	tst	r2, #8
	beq	.L13
	ldr	r3, .L36+36
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L35
.L13:
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	mov	r5, #67108864
	mov	r3, #0
	ldr	r2, .L36+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #256
	mov	r2, #4
	ldr	r3, .L36+44
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	ldr	r3, [r4]
	tst	r3, #7
	ldr	r5, .L36+32
	bne	.L31
.L17:
	mov	r2, #67108864
	mov	r1, #0
	ldr	r0, .L36+48
	add	r3, r3, #1
	ldrh	r0, [r0]
	str	r3, [r4]
	ldr	r3, .L36+52
	strh	r0, [r3]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	ldr	r3, .L36+56
	strh	r1, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+60
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r3, .L36+44
	ldrh	r2, [r5]
	str	r1, [r3]
	b	.L18
.L34:
	ldr	r1, .L36+36
	ldrh	r1, [r1]
	tst	r1, #4
	bne	.L18
	b	.L17
.L33:
	mov	r3, #0
	mov	r5, #67108864
	ldr	r2, .L36+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #256
	mov	r2, #3
	ldr	r3, .L36+44
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	b	.L14
.L35:
	mov	r2, #67108864
	ldr	r1, .L36+48
	ldr	r0, .L36+52
	ldrh	ip, [r1]
	ldr	r1, .L36+56
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r2, #2
	ldr	r3, .L36+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L37:
	.align	2
.L36:
	.word	updateGame
	.word	drawGame
	.word	enemiesKilled
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	princessHealth
	.word	playerHealth
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	state
	.word	hOff
	.word	tmphOff
	.word	pauseSound
	.word	initCutScene
	.size	game, .-game
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press START to begin game\000"
	.align	2
.LC1:
	.ascii	"Press L and R keys to toggle\000"
	.align	2
.LC2:
	.ascii	" your direction to shoot\000"
	.align	2
.LC3:
	.ascii	"Press A to shoot\000"
	.align	2
.LC4:
	.ascii	"Press LEFT or RIGHT to slide\000"
	.align	2
.LC5:
	.ascii	"from side to side\000"
	.align	2
.LC6:
	.ascii	"Press SELECT to return\000"
	.align	2
.LC7:
	.ascii	"to splash Screen\000"
	.text
	.align	2
	.global	info
	.syntax unified
	.arm
	.fpu softvfp
	.type	info, %function
info:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #40
	ldr	r4, .L49
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L49+4
	ldr	r2, .L49+36
	mov	lr, pc
	bx	r4
	ldr	r1, .L49+40
	ldr	r0, .L49+44
	ldrh	r2, [r1]
	ldr	r3, .L49+48
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L39
	ands	r1, r3, #4
	ldreq	r0, .L49+52
	streq	r1, [r0]
.L39:
	tst	r2, #8
	beq	.L38
	tst	r3, #8
	beq	.L48
.L38:
	pop	{r4, lr}
	bx	lr
.L48:
	pop	{r4, lr}
	b	goToGame
.L50:
	.align	2
.L49:
	.word	drawString
	.word	32767
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	state
	.size	info, .-info
	.align	2
	.global	goToInfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInfo, %function
goToInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L53
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L53+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L53+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L54:
	.align	2
.L53:
	.word	1027
	.word	fillScreen3
	.word	state
	.size	goToInfo, .-goToInfo
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
	ldr	r4, .L67
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L67+8
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L67+16
	ldr	r1, .L67+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L67+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L56
	ldr	r2, .L67+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L65
.L56:
	tst	r3, #4
	beq	.L55
	ldr	r3, .L67+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L66
.L55:
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	pop	{r4, r5, r6, lr}
	b	goToGame
.L65:
	ldr	r3, .L67+32
	strh	r3, [r5]	@ movhi
	ldr	r3, .L67+36
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L67+40
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L56
.L68:
	.align	2
.L67:
	.word	DMANow
	.word	moonArtPal
	.word	7568
	.word	moonArtTiles
	.word	100720640
	.word	moonArtMap
	.word	oldButtons
	.word	buttons
	.word	1027
	.word	fillScreen3
	.word	state
	.size	start, .-start
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
	push	{r4, lr}
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L71+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L72:
	.align	2
.L71:
	.word	initCutScene
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
	push	{r4, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L80+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L73
	ldr	r3, .L80+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L79
.L73:
	pop	{r4, lr}
	bx	lr
.L79:
	mov	r2, #67108864
	ldr	r1, .L80+28
	ldr	r0, .L80+32
	ldrh	ip, [r1]
	ldr	r1, .L80+36
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L80+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L81:
	.align	2
.L80:
	.word	updateCutScene
	.word	drawCutScene
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	tmphOff
	.word	dispBackground
	.word	unpauseSound
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
	ldr	r3, .L83
	str	r2, [r3]
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	r4, .L96
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L96+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L96+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L96+12
	ldr	r1, .L96+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L96+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L86
	ldr	r2, .L96+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L95
.L86:
	tst	r3, #4
	beq	.L85
	ldr	r3, .L96+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L96+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L85:
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	ldr	r3, .L96+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L86
.L97:
	.align	2
.L96:
	.word	DMANow
	.word	bg0SpacePausePal
	.word	bg0SpacePauseTiles
	.word	100720640
	.word	bg0SpacePauseMap
	.word	oldButtons
	.word	buttons
	.word	state
	.word	dispBackground
	.word	unpauseSound
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
	ldr	r3, .L99
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L100:
	.align	2
.L99:
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r5, #67108864
	ldr	r4, .L108
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L108+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L108+12
	mov	r0, #3
	ldr	r1, .L108+16
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L108+20
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L108+24
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L107
.L101:
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	ldr	r3, .L108+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+32
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L108+36
	ldr	r3, .L108+40
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100720640
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.word	enemiesKilled
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
	ldr	r3, .L111
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	r4, .L120
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L120+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L120+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L120+12
	ldr	r1, .L120+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L120+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L113
	ldr	r3, .L120+24
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L119
.L113:
	pop	{r4, lr}
	bx	lr
.L119:
	ldr	r3, .L120+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+32
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L120+36
	ldr	r3, .L120+40
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100720640
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.word	enemiesKilled
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L136
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L136+8
	ldr	r6, .L136+12
	str	r1, [r3]
	str	r2, [r6]
	ldr	r7, .L136+16
	ldr	r5, .L136+20
	ldr	fp, .L136+24
	ldr	r10, .L136+28
	ldr	r9, .L136+32
	ldr	r8, .L136+36
	ldr	r4, .L136+40
.L123:
	ldrh	r3, [r7]
.L124:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L124
.L126:
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L125
.L125:
	mov	lr, pc
	bx	r9
.L133:
	ldr	r2, [r6]
	b	.L123
.L127:
	mov	lr, pc
	bx	r8
	b	.L133
.L128:
	ldr	r3, .L136+44
	mov	lr, pc
	bx	r3
	b	.L133
.L129:
	ldr	r3, .L136+48
	mov	lr, pc
	bx	r3
	b	.L133
.L130:
	ldr	r3, .L136+52
	mov	lr, pc
	bx	r3
	b	.L133
.L131:
	mov	lr, pc
	bx	r10
	b	.L133
.L132:
	mov	lr, pc
	bx	fp
	b	.L133
.L137:
	.align	2
.L136:
	.word	setupSounds
	.word	setupInterrupts
	.word	enemiesKilled
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	info
	.word	cutScene
	.word	67109120
	.word	lose
	.word	win
	.word	pause
	.size	main, .-main
	.comm	enemiesKilled,4,4
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
