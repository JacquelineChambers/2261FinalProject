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
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L29+8
	ldr	r3, .L29+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L29+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #20
	bgt	.L26
.L14:
	ldr	r3, .L29+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L29+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r4]
	ands	r2, r3, #7
	beq	.L27
.L17:
	ldr	r3, .L29+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L13
	ldr	r3, .L29+36
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L28
.L13:
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	mov	r2, #0
	mov	r3, #67108864
	ldr	r1, .L29+40
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L29+44
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L29+48
	str	r2, [r3]
	ldr	r3, [r4]
	ands	r2, r3, #7
	bne	.L17
.L27:
	mov	r1, #67108864
	ldr	r0, .L29+52
	ldrh	ip, [r0]
	ldr	r0, .L29+56
	add	r3, r3, #1
	str	r3, [r4]
	strh	ip, [r0]	@ movhi
	ldr	r3, .L29+60
	strh	r2, [r1, #16]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+64
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L29+48
	str	r2, [r3]
	b	.L17
.L26:
	mov	r2, #0
	mov	r3, #67108864
	ldr	r1, .L29+40
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L29+68
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L29+48
	str	r2, [r3]
	b	.L14
.L28:
	mov	r2, #67108864
	ldr	r1, .L29+52
	ldr	r0, .L29+56
	ldrh	ip, [r1]
	ldr	r1, .L29+60
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r2, #2
	ldr	r3, .L29+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
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
	.word	initLoseGame
	.word	state
	.word	hOff
	.word	tmphOff
	.word	pauseSound
	.word	initCutScene
	.word	initWinGame
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
	.align	2
.LC8:
	.ascii	"Press B for temporary immunity\000"
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
	ldr	r4, .L42
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+36
	mov	lr, pc
	bx	r4
	mov	r1, #120
	mov	r0, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+40
	mov	lr, pc
	bx	r4
	ldr	r1, .L42+44
	ldr	r0, .L42+48
	ldrh	r2, [r1]
	ldr	r3, .L42+52
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L32
	ands	r1, r3, #4
	ldreq	r0, .L42+56
	streq	r1, [r0]
.L32:
	tst	r2, #8
	beq	.L31
	tst	r3, #8
	beq	.L41
.L31:
	pop	{r4, lr}
	bx	lr
.L41:
	pop	{r4, lr}
	b	goToGame
.L43:
	.align	2
.L42:
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
	.word	.LC8
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
	ldr	r2, .L46
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L46+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L46+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L47:
	.align	2
.L46:
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
	ldr	r4, .L60
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L60+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L60+8
	ldr	r1, .L60+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L60+16
	ldr	r1, .L60+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L60+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L49
	ldr	r2, .L60+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L58
.L49:
	tst	r3, #4
	beq	.L48
	ldr	r3, .L60+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L59
.L48:
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	pop	{r4, r5, r6, lr}
	b	goToGame
.L58:
	ldr	r3, .L60+32
	strh	r3, [r5]	@ movhi
	ldr	r3, .L60+36
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L60+40
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L49
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L64+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L73+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L73+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
	ldr	r3, .L73+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L72
.L66:
	pop	{r4, lr}
	bx	lr
.L72:
	mov	r2, #67108864
	ldr	r1, .L73+28
	ldr	r0, .L73+32
	ldrh	ip, [r1]
	ldr	r1, .L73+36
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L73+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L74:
	.align	2
.L73:
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
	ldr	r3, .L76
	str	r2, [r3]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r4, .L89
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L89+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L89+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L89+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L79
	ldr	r2, .L89+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L88
.L79:
	tst	r3, #4
	beq	.L78
	ldr	r3, .L89+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L89+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L78:
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	ldr	r3, .L89+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L79
.L90:
	.align	2
.L89:
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
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L93+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
	.word	initWinGame
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
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L102+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L102+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L102+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
	ldr	r3, .L102+24
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L101
.L95:
	pop	{r4, lr}
	bx	lr
.L101:
	mov	r2, #67108864
	ldr	r3, .L102+28
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+32
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L102+36
	ldr	r3, .L102+40
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L103:
	.align	2
.L102:
	.word	drawWinGame
	.word	parallax
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	push	{r4, lr}
	ldr	r3, .L106
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L106+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L107:
	.align	2
.L106:
	.word	initLoseGame
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L115+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L115+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L115+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L108
	ldr	r3, .L115+24
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L114
.L108:
	pop	{r4, lr}
	bx	lr
.L114:
	mov	r2, #67108864
	ldr	r3, .L115+28
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+32
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L115+36
	ldr	r3, .L115+40
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	drawLoseGame
	.word	parallax
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	ldr	r3, .L131
	mov	lr, pc
	bx	r3
	ldr	r3, .L131+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L131+8
	ldr	r6, .L131+12
	str	r1, [r3]
	str	r2, [r6]
	ldr	r7, .L131+16
	ldr	r5, .L131+20
	ldr	fp, .L131+24
	ldr	r10, .L131+28
	ldr	r9, .L131+32
	ldr	r8, .L131+36
	ldr	r4, .L131+40
.L118:
	ldrh	r3, [r7]
.L119:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L119
.L121:
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L120
.L120:
	mov	lr, pc
	bx	r9
.L128:
	ldr	r2, [r6]
	b	.L118
.L122:
	mov	lr, pc
	bx	r8
	b	.L128
.L123:
	ldr	r3, .L131+44
	mov	lr, pc
	bx	r3
	b	.L128
.L124:
	ldr	r3, .L131+48
	mov	lr, pc
	bx	r3
	b	.L128
.L125:
	ldr	r3, .L131+52
	mov	lr, pc
	bx	r3
	b	.L128
.L126:
	mov	lr, pc
	bx	r10
	b	.L128
.L127:
	mov	lr, pc
	bx	fp
	b	.L128
.L132:
	.align	2
.L131:
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
