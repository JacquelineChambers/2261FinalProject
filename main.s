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
	ldr	r2, .L4
	ldr	r1, .L4+4
	ldr	r0, .L4+8
	mov	r3, #1
	ldr	r4, .L4+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r2, #0
	ldr	r1, .L4+24
	ldr	r3, .L4+28
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	11025
	.word	2553696
	.word	keepOnKeepingOn
	.word	playSoundA
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
	ldr	r3, .L11
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L11+4
	ldr	r1, .L11+8
	ldrh	r0, [r3]
	ldr	r3, .L11+12
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	initGame
	.word	tmphOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press START to begin game\000"
	.align	2
.LC1:
	.ascii	"Press SELECT to return\000"
	.align	2
.LC2:
	.ascii	"    to splash Screen\000"
	.align	2
.LC3:
	.ascii	"Press L and R keys to toggle\000"
	.align	2
.LC4:
	.ascii	"   your direction to shoot\000"
	.align	2
.LC5:
	.ascii	"Press A to shoot\000"
	.align	2
.LC6:
	.ascii	"Press LEFT or RIGHT to slide\000"
	.align	2
.LC7:
	.ascii	"    from side to side\000"
	.align	2
.LC8:
	.ascii	"YOU have 3 lives, however, the \000"
	.align	2
.LC9:
	.ascii	" princess can NEVER get hit\000"
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
	mov	r1, #10
	ldr	r4, .L24
	mov	r0, #20
	ldr	r3, .L24+4
	ldr	r2, .L24+8
	mov	lr, pc
	bx	r4
	mov	r1, #20
	ldr	r3, .L24+4
	mov	r0, r1
	ldr	r2, .L24+12
	mov	lr, pc
	bx	r4
	mov	r1, #30
	mov	r0, #20
	ldr	r3, .L24+4
	ldr	r2, .L24+16
	mov	lr, pc
	bx	r4
	mov	r1, #40
	mov	r0, #20
	ldr	r3, .L24+20
	ldr	r2, .L24+24
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #20
	ldr	r3, .L24+20
	ldr	r2, .L24+28
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #20
	ldr	r3, .L24+20
	ldr	r2, .L24+32
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r3, .L24+20
	ldr	r2, .L24+36
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #20
	ldr	r3, .L24+20
	ldr	r2, .L24+40
	mov	lr, pc
	bx	r4
	mov	r3, #31
	mov	r1, #90
	mov	r0, #20
	ldr	r2, .L24+44
	mov	lr, pc
	bx	r4
	mov	r3, #31
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L24+48
	mov	lr, pc
	bx	r4
	ldr	r1, .L24+52
	ldr	r0, .L24+56
	ldrh	r2, [r1]
	ldr	r3, .L24+60
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L14
	ands	r1, r3, #4
	ldreq	r0, .L24+64
	streq	r1, [r0]
.L14:
	tst	r2, #8
	beq	.L13
	tst	r3, #8
	beq	.L23
.L13:
	pop	{r4, lr}
	bx	lr
.L23:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L24+68
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L24+72
	ldr	r1, .L24+76
	ldrh	r0, [r3]
	ldr	r3, .L24+64
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	drawString
	.word	32767
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	1023
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	state
	.word	initGame
	.word	tmphOff
	.word	hOff
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
	ldr	r2, .L28
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L28+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L29:
	.align	2
.L28:
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
	ldr	r4, .L42
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L42+8
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L42+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L31
	ldr	r2, .L42+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L40
.L31:
	tst	r3, #4
	beq	.L30
	ldr	r3, .L42+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L41
.L30:
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L42+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L42+36
	ldr	r1, .L42+40
	ldrh	r0, [r3]
	ldr	r3, .L42+44
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	ldr	r3, .L42+48
	strh	r3, [r5]	@ movhi
	ldr	r3, .L42+52
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L42+44
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L31
.L43:
	.align	2
.L42:
	.word	DMANow
	.word	titleScreenPal
	.word	6512
	.word	titleScreenTiles
	.word	100720640
	.word	titleScreenMap
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	tmphOff
	.word	hOff
	.word	state
	.word	1027
	.word	fillScreen3
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
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L46+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L55+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L48
	ldr	r3, .L55+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L54
.L48:
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	mov	r4, #67108864
	ldr	r5, .L55+28
	ldr	r6, .L55+32
	ldrh	r2, [r5]
	strh	r2, [r6]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	ldr	r2, .L55+36
	strh	r3, [r4, #20]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L55+40
	mov	lr, pc
	bx	r3
	mov	r2, #4864
	ldr	r3, .L55+44
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldrh	r1, [r6]
	ldr	r3, .L55+48
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
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
	.word	initGame
	.word	state
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
	ldr	r3, .L58
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r4, .L71
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L71+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L71+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L71+12
	ldr	r1, .L71+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L71+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L61
	ldr	r2, .L71+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L70
.L61:
	tst	r3, #4
	beq	.L60
	ldr	r3, .L71+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L71+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L60:
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	ldr	r3, .L71+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+36
	mov	lr, pc
	bx	r3
	mov	r2, #4864
	ldr	r3, .L71+40
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L71+44
	ldr	r0, .L71+48
	ldrh	ip, [r3]
	ldr	r2, .L71+28
	ldrh	r3, [r4]
	strh	ip, [r0]	@ movhi
	str	r1, [r2]
	b	.L61
.L72:
	.align	2
.L71:
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
	.word	initGame
	.word	tmphOff
	.word	hOff
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
	ldr	r2, .L75
	mov	r3, #1
	ldr	r1, .L75+4
	ldr	r0, .L75+8
	ldr	r4, .L75+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L75+16
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L75+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L76:
	.align	2
.L75:
	.word	11025
	.word	1164744
	.word	endThemeSong
	.word	playSoundB
	.word	initWinGame
	.word	state
	.size	goToWin, .-goToWin
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
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+8
	ldr	r3, .L93+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L93+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L93+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #34
	bgt	.L90
.L78:
	ldr	r3, .L93+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L93+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r4]
	ands	r2, r3, #7
	beq	.L91
.L81:
	ldr	r3, .L93+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L77
	ldr	r3, .L93+36
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L92
.L77:
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	mov	r2, #0
	mov	r3, #67108864
	ldr	r1, .L93+40
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L93+44
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L93+48
	str	r2, [r3]
	ldr	r3, [r4]
	ands	r2, r3, #7
	bne	.L81
.L91:
	mov	r1, #67108864
	ldr	r0, .L93+52
	ldrh	ip, [r0]
	ldr	r0, .L93+56
	add	r3, r3, #1
	str	r3, [r4]
	strh	ip, [r0]	@ movhi
	ldr	r3, .L93+60
	strh	r2, [r1, #16]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+64
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L93+48
	str	r2, [r3]
	b	.L81
.L90:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L93+40
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	bl	goToWin
	b	.L78
.L92:
	mov	r2, #67108864
	ldr	r1, .L93+52
	ldr	r0, .L93+56
	ldrh	ip, [r1]
	ldr	r1, .L93+60
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r2, #2
	ldr	r3, .L93+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
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
	.size	game, .-game
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
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	mov	r5, #67108864
	ldr	r3, .L102+28
	strh	r4, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	bl	initialize
	ldr	r2, .L102+32
	ldr	r3, .L102+36
	str	r4, [r2]
	strh	r4, [r3]	@ movhi
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #20]	@ movhi
	pop	{r4, r5, r6, lr}
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
	.word	stopSound
	.word	state
	.word	tmphOff
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
	push	{r4, r5, r6, lr}
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
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	mov	r5, #67108864
	strh	r4, [r5]	@ movhi
	bl	initialize
	ldr	r2, .L115+28
	ldr	r3, .L115+32
	str	r4, [r2]
	strh	r4, [r3]	@ movhi
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #20]	@ movhi
	pop	{r4, r5, r6, lr}
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
	.word	state
	.word	tmphOff
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
	ldr	r6, .L131+4
	ldr	r7, .L131+8
	ldr	r5, .L131+12
	ldr	fp, .L131+16
	ldr	r10, .L131+20
	ldr	r9, .L131+24
	ldr	r8, .L131+28
	ldr	r4, .L131+32
.L118:
	ldr	r2, [r6]
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
	b	.L118
.L122:
	mov	lr, pc
	bx	r8
	b	.L118
.L123:
	ldr	r3, .L131+36
	mov	lr, pc
	bx	r3
	b	.L118
.L124:
	ldr	r3, .L131+40
	mov	lr, pc
	bx	r3
	b	.L118
.L125:
	ldr	r3, .L131+44
	mov	lr, pc
	bx	r3
	b	.L118
.L126:
	mov	lr, pc
	bx	r10
	b	.L118
.L127:
	mov	lr, pc
	bx	fp
	b	.L118
.L132:
	.align	2
.L131:
	.word	initialize
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
