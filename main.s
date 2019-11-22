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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	moveq	r0, #1
	ldreq	r1, .L4+4
	ldreq	r2, .L4+8
	streq	r0, [r1]
	streq	r3, [r2]
	bx	lr
.L5:
	.align	2
.L4:
	.word	buttons
	.word	enemiesKilled
	.word	state
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	mov	r2, #0
	ldr	r1, .L7
	ldr	r3, .L7+4
	str	r0, [r1]
	str	r2, [r3]
	bx	lr
.L8:
	.align	2
.L7:
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
	ldr	r3, .L10
	str	r2, [r3]
	bx	lr
.L11:
	.align	2
.L10:
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
	push	{r4, lr}
	ldr	r3, .L14
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r0, .L14+4
	strh	r1, [r2]	@ movhi
	mov	r3, #0
	ldr	r2, .L14+8
	ldr	r1, .L14+12
	ldr	r4, .L14+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L14+24
	ldr	r1, .L14+28
	ldrh	r0, [r3]
	ldr	r3, .L14+32
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	stopSound
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
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+8
	ldr	r3, .L32+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L32+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L32+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #20
	bgt	.L29
.L17:
	ldr	r3, .L32+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L32+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r4]
	ands	r2, r3, #7
	beq	.L30
.L20:
	ldr	r3, .L32+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L16
	ldr	r3, .L32+36
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L31
.L16:
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	mov	r3, #0
	mov	r5, #67108864
	ldr	r2, .L32+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #4
	mov	r1, #256
	ldr	r3, .L32+44
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	ldr	r3, [r4]
	ands	r2, r3, #7
	bne	.L20
.L30:
	mov	r1, #67108864
	ldr	r0, .L32+48
	ldrh	ip, [r0]
	ldr	r0, .L32+52
	add	r3, r3, #1
	str	r3, [r4]
	strh	ip, [r0]	@ movhi
	ldr	r3, .L32+56
	strh	r2, [r1, #16]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+60
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L32+44
	str	r2, [r3]
	b	.L20
.L29:
	mov	r3, #0
	mov	r5, #67108864
	ldr	r2, .L32+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #256
	mov	r2, #3
	ldr	r3, .L32+44
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	b	.L17
.L31:
	mov	r2, #67108864
	ldr	r1, .L32+48
	ldr	r0, .L32+52
	ldrh	ip, [r1]
	ldr	r1, .L32+56
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r2, #2
	ldr	r3, .L32+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r4, .L45
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L45+4
	ldr	r2, .L45+36
	mov	lr, pc
	bx	r4
	ldr	r1, .L45+40
	ldr	r0, .L45+44
	ldrh	r2, [r1]
	ldr	r3, .L45+48
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L35
	ands	r1, r3, #4
	ldreq	r0, .L45+52
	streq	r1, [r0]
.L35:
	tst	r2, #8
	beq	.L34
	tst	r3, #8
	beq	.L44
.L34:
	pop	{r4, lr}
	bx	lr
.L44:
	pop	{r4, lr}
	b	goToGame
.L46:
	.align	2
.L45:
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
	ldr	r2, .L49
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L49+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L50:
	.align	2
.L49:
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
	ldr	r4, .L63
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L63+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L63+8
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L63+16
	ldr	r1, .L63+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L63+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L63+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L61
.L52:
	tst	r3, #4
	beq	.L51
	ldr	r3, .L63+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L62
.L51:
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	pop	{r4, r5, r6, lr}
	b	goToGame
.L61:
	ldr	r3, .L63+32
	strh	r3, [r5]	@ movhi
	ldr	r3, .L63+36
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L63+40
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L52
.L64:
	.align	2
.L63:
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
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L67+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L76+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
	ldr	r3, .L76+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L75
.L69:
	pop	{r4, lr}
	bx	lr
.L75:
	mov	r2, #67108864
	ldr	r1, .L76+28
	ldr	r0, .L76+32
	ldrh	ip, [r1]
	ldr	r1, .L76+36
	strh	ip, [r0]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	pop	{r4, lr}
	b	goToGame
.L77:
	.align	2
.L76:
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
	ldr	r3, .L79
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r4, .L92
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L92+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L92+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L92+12
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L92+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L82
	ldr	r2, .L92+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L91
.L82:
	tst	r3, #4
	beq	.L81
	ldr	r3, .L92+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L92+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L81:
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	ldr	r3, .L92+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L82
.L93:
	.align	2
.L92:
	.word	DMANow
	.word	bg0SpacePausePal
	.word	bg0SpacePauseTiles
	.word	100720640
	.word	bg0SpacePauseMap
	.word	oldButtons
	.word	buttons
	.word	state
	.word	dispBackground
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
	ldr	r3, .L95
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r4, .L100
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L100+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L100+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L100+12
	mov	r0, #3
	ldr	r1, .L100+16
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L100+20
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	win.part.0
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	.align	2
.L100:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100720640
	.word	winScreenMap
	.word	oldButtons
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
	ldr	r3, .L103
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r4, .L108
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L108+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L108+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L108+12
	ldr	r1, .L108+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L108+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L105:
	pop	{r4, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100720640
	.word	loseScreenMap
	.word	oldButtons
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
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L124
	ldr	r6, .L124+4
	push	{r4, r7, fp, lr}
	str	r2, [r6]
	str	r1, [r3]
	ldr	r7, .L124+8
	ldr	r5, .L124+12
	ldr	fp, .L124+16
	ldr	r10, .L124+20
	ldr	r9, .L124+24
	ldr	r8, .L124+28
	ldr	r4, .L124+32
.L111:
	ldrh	r3, [r7]
.L112:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L112
.L114:
	.word	.L120
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L113
.L113:
	mov	lr, pc
	bx	r9
.L121:
	ldr	r2, [r6]
	b	.L111
.L115:
	mov	lr, pc
	bx	r8
	b	.L121
.L116:
	ldr	r3, .L124+36
	mov	lr, pc
	bx	r3
	b	.L121
.L117:
	ldr	r3, .L124+40
	mov	lr, pc
	bx	r3
	b	.L121
.L118:
	ldr	r3, .L124+44
	mov	lr, pc
	bx	r3
	b	.L121
.L119:
	mov	lr, pc
	bx	r10
	b	.L121
.L120:
	mov	lr, pc
	bx	fp
	b	.L121
.L125:
	.align	2
.L124:
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
	.global	spaceSoundToPlay
	.comm	spaceSoundLen,4,4
	.comm	spaceSound,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.type	spaceSoundToPlay, %object
	.size	spaceSoundToPlay, 4
spaceSoundToPlay:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
