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
	ldr	r3, .L10
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L10+4
	ldr	r1, .L10+8
	ldrh	r0, [r3]
	ldr	r3, .L10+12
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
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
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L30+8
	ldr	r3, .L30+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L30+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L14
	ldr	r1, .L30+24
	ldrh	r3, [r1]
	ands	r3, r3, #4
	bne	.L14
	mov	r2, #67108864
	mov	ip, #256
	mov	lr, #3
	strh	r3, [r2, #16]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r4]
	ldr	r0, .L30+28
	tst	r3, #4
	str	lr, [r0]
	beq	.L14
	ldrh	r3, [r1]
	ands	r3, r3, #4
	moveq	r1, #4
	strheq	r3, [r2, #16]	@ movhi
	strheq	ip, [r2]	@ movhi
	strheq	r3, [r2, #20]	@ movhi
	streq	r1, [r0]
.L14:
	ldr	r2, .L30+32
	ldr	r3, .L30+36
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3
	cmp	r3, #0
	bgt	.L16
	ldrh	r3, [r4]
	tst	r3, #2
	bne	.L29
.L17:
	tst	r3, #8
	beq	.L12
	ldr	r3, .L30+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L12
	mov	r2, #67108864
	mov	r0, #2
	ldr	r1, .L30+40
	ldr	ip, .L30+44
	ldrh	lr, [r1]
	ldr	r1, .L30+28
	strh	lr, [ip]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r1]
.L12:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	ldr	r2, .L30+24
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L17
.L16:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L30+48
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r1, #5
	ldr	r2, .L30+28
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L17
.L31:
	.align	2
.L30:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	state
	.word	enemiesKilled
	.word	1717986919
	.word	hOff
	.word	tmphOff
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
	ldr	r4, .L43
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L43+4
	ldr	r2, .L43+36
	mov	lr, pc
	bx	r4
	ldr	r1, .L43+40
	ldr	r0, .L43+44
	ldrh	r2, [r1]
	ldr	r3, .L43+48
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L33
	ands	r1, r3, #4
	ldreq	r0, .L43+52
	streq	r1, [r0]
.L33:
	tst	r2, #8
	beq	.L32
	tst	r3, #8
	beq	.L42
.L32:
	pop	{r4, lr}
	bx	lr
.L42:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L43+56
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L43+60
	ldr	r1, .L43+64
	ldrh	r0, [r3]
	ldr	r3, .L43+52
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r2, .L47
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L47+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L47+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L48:
	.align	2
.L47:
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
	ldr	r4, .L61
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L61+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L61+8
	ldr	r1, .L61+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L61+16
	ldr	r1, .L61+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L61+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L50
	ldr	r2, .L61+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L59
.L50:
	tst	r3, #4
	beq	.L49
	ldr	r3, .L61+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L60
.L49:
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L61+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L61+36
	ldr	r1, .L61+40
	ldrh	r0, [r3]
	ldr	r3, .L61+44
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	ldr	r3, .L61+48
	strh	r3, [r5]	@ movhi
	ldr	r3, .L61+52
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L61+44
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L50
.L62:
	.align	2
.L61:
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
	ldr	r3, .L65
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L65+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L69+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	updateCutScene
	.word	drawCutScene
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	ldr	r3, .L72
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r4, .L85
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L85+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L85+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L85+12
	ldr	r1, .L85+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L85+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L85+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L84
.L75:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L85+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L85+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L74:
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	ldr	r3, .L85+32
	mov	lr, pc
	bx	r3
	mov	r2, #4864
	ldr	r3, .L85+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L85+40
	ldr	r0, .L85+44
	ldrh	ip, [r3]
	ldr	r2, .L85+28
	ldrh	r3, [r4]
	strh	ip, [r0]	@ movhi
	str	r1, [r2]
	b	.L75
.L86:
	.align	2
.L85:
	.word	DMANow
	.word	bg0SpacePausePal
	.word	bg0SpacePauseTiles
	.word	100720640
	.word	bg0SpacePauseMap
	.word	oldButtons
	.word	buttons
	.word	state
	.word	dispBackground
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
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r0, #256
	mov	r2, #3
	ldr	r3, .L88
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r4, .L96
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L96+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L96+12
	ldr	r1, .L96+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L96+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L90
	ldr	r3, .L96+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L96+28
	streq	r3, [r2]
.L90:
	pop	{r4, lr}
	bx	lr
.L97:
	.align	2
.L96:
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
	ldr	r3, .L99
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L100:
	.align	2
.L99:
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
	ldr	r4, .L107
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L107+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L107+12
	ldr	r1, .L107+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L107+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L107+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L107+28
	streq	r3, [r2]
.L101:
	pop	{r4, lr}
	bx	lr
.L108:
	.align	2
.L107:
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
	mov	r1, r3
	ldr	r6, .L123
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	r7, .L123+4
	ldr	r5, .L123+8
	ldr	fp, .L123+12
	ldr	r10, .L123+16
	ldr	r9, .L123+20
	ldr	r8, .L123+24
	ldr	r4, .L123+28
.L110:
	ldrh	r3, [r7]
.L111:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r1, #6
	ldrls	pc, [pc, r1, asl #2]
	b	.L111
.L113:
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L112
.L112:
	mov	lr, pc
	bx	r9
.L120:
	ldr	r1, [r6]
	b	.L110
.L114:
	mov	lr, pc
	bx	r8
	b	.L120
.L115:
	ldr	r3, .L123+32
	mov	lr, pc
	bx	r3
	b	.L120
.L116:
	ldr	r3, .L123+36
	mov	lr, pc
	bx	r3
	b	.L120
.L117:
	ldr	r3, .L123+40
	mov	lr, pc
	bx	r3
	b	.L120
.L118:
	mov	lr, pc
	bx	r10
	b	.L120
.L119:
	mov	lr, pc
	bx	fp
	b	.L120
.L124:
	.align	2
.L123:
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
