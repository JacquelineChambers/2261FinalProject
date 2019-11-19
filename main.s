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
	push	{r4, lr}
	ldr	r3, .L23
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L23+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L23+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L23+20
	ldr	r2, [r3]
	cmp	r2, #20
	beq	.L21
	ldr	r3, .L23+24
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r2, r3
	beq	.L22
.L15:
	ldr	r3, .L23+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L12
	ldr	r3, .L23+32
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L12
	mov	r2, #67108864
	mov	r0, #2
	ldr	r1, .L23+36
	ldr	ip, .L23+40
	ldrh	lr, [r1]
	ldr	r1, .L23+44
	strh	lr, [ip]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r1]
.L12:
	pop	{r4, lr}
	bx	lr
.L21:
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #256
	mov	r1, #3
	ldr	r4, .L23+44
	strh	r2, [r3, #16]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	str	r1, [r4]
.L14:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L23+48
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r3, #5
	str	r3, [r4]
	b	.L15
.L22:
	ldr	r4, .L23+44
	b	.L14
.L24:
	.align	2
.L23:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	enemiesKilled
	.word	1717986919
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	tmphOff
	.word	state
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
	ldr	r4, .L36
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L36+4
	ldr	r2, .L36+36
	mov	lr, pc
	bx	r4
	ldr	r1, .L36+40
	ldr	r0, .L36+44
	ldrh	r2, [r1]
	ldr	r3, .L36+48
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L26
	ands	r1, r3, #4
	ldreq	r0, .L36+52
	streq	r1, [r0]
.L26:
	tst	r2, #8
	beq	.L25
	tst	r3, #8
	beq	.L35
.L25:
	pop	{r4, lr}
	bx	lr
.L35:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L36+56
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L36+60
	ldr	r1, .L36+64
	ldrh	r0, [r3]
	ldr	r3, .L36+52
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r2, .L40
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L40+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L41:
	.align	2
.L40:
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
	ldr	r4, .L54
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L54+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L54+8
	ldr	r1, .L54+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L54+16
	ldr	r1, .L54+20
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L54+24
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L43
	ldr	r2, .L54+28
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L52
.L43:
	tst	r3, #4
	beq	.L42
	ldr	r3, .L54+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L53
.L42:
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L54+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L54+36
	ldr	r1, .L54+40
	ldrh	r0, [r3]
	ldr	r3, .L54+44
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	ldr	r3, .L54+48
	strh	r3, [r5]	@ movhi
	ldr	r3, .L54+52
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L54+44
	str	r2, [r3]
	bl	info
	ldrh	r3, [r4]
	b	.L43
.L55:
	.align	2
.L54:
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L58+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L67+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
	ldr	r3, .L67+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L66
.L60:
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r4, .L67+28
	ldr	r5, .L67+32
	ldrh	r0, [r4]
	strh	r0, [r5]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	ldr	r3, .L67+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldrh	r1, [r5]
	ldr	r3, .L67+40
	strh	r1, [r4]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	updateCutScene
	.word	drawCutScene
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	tmphOff
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
	ldr	r3, .L70
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r4, .L83
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L83+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L83+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L83+12
	ldr	r1, .L83+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L83+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L73
	ldr	r2, .L83+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L82
.L73:
	tst	r3, #4
	beq	.L72
	ldr	r3, .L83+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L83+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L72:
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	ldr	r3, .L83+32
	mov	lr, pc
	bx	r3
	mov	r2, #4864
	ldr	r3, .L83+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L83+40
	ldr	r0, .L83+44
	ldrh	ip, [r3]
	ldr	r2, .L83+28
	ldrh	r3, [r4]
	strh	ip, [r0]	@ movhi
	str	r1, [r2]
	b	.L73
.L84:
	.align	2
.L83:
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
	ldr	r3, .L86
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r4, .L94
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L94+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L94+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L94+12
	ldr	r1, .L94+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L94+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
	ldr	r3, .L94+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L94+28
	streq	r3, [r2]
.L88:
	pop	{r4, lr}
	bx	lr
.L95:
	.align	2
.L94:
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
	ldr	r3, .L97
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r4, .L105
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L105+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L105+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L105+12
	ldr	r1, .L105+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L105+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
	ldr	r3, .L105+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L105+28
	streq	r3, [r2]
.L99:
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
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
	ldr	r6, .L121
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	r7, .L121+4
	ldr	r5, .L121+8
	ldr	fp, .L121+12
	ldr	r10, .L121+16
	ldr	r9, .L121+20
	ldr	r8, .L121+24
	ldr	r4, .L121+28
.L108:
	ldrh	r3, [r7]
.L109:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L109
.L111:
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L110
.L110:
	mov	lr, pc
	bx	r9
.L118:
	ldr	r2, [r6]
	b	.L108
.L112:
	mov	lr, pc
	bx	r8
	b	.L118
.L113:
	ldr	r3, .L121+32
	mov	lr, pc
	bx	r3
	b	.L118
.L114:
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	b	.L118
.L115:
	ldr	r3, .L121+40
	mov	lr, pc
	bx	r3
	b	.L118
.L116:
	mov	lr, pc
	bx	r10
	b	.L118
.L117:
	mov	lr, pc
	bx	fp
	b	.L118
.L122:
	.align	2
.L121:
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
