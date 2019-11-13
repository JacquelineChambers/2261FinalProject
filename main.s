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
	ldr	r2, .L26+20
	ldr	r3, .L26+24
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3
	cmp	r3, #0
	ldr	r4, .L26+28
	bgt	.L13
	ldrh	r3, [r4]
	tst	r3, #2
	bne	.L25
.L14:
	tst	r3, #8
	beq	.L12
	ldr	r3, .L26+32
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L12
	mov	r2, #67108864
	mov	r0, #2
	ldr	r1, .L26+36
	ldr	ip, .L26+40
	ldrh	lr, [r1]
	ldr	r1, .L26+44
	strh	lr, [ip]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r1]
.L12:
	pop	{r4, lr}
	bx	lr
.L25:
	ldr	r2, .L26+32
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L14
.L13:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L26+48
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r1, #5
	ldr	r2, .L26+44
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L14
.L27:
	.align	2
.L26:
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
	ldr	r4, .L39
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+8
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+12
	mov	lr, pc
	bx	r4
	mov	r1, #60
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+16
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+24
	mov	lr, pc
	bx	r4
	mov	r1, #90
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+28
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+32
	mov	lr, pc
	bx	r4
	mov	r1, #110
	mov	r0, #10
	ldr	r3, .L39+4
	ldr	r2, .L39+36
	mov	lr, pc
	bx	r4
	ldr	r1, .L39+40
	ldr	r0, .L39+44
	ldrh	r2, [r1]
	ldr	r3, .L39+48
	strh	r2, [r0]	@ movhi
	ldrh	r3, [r3, #48]
	tst	r2, #4
	strh	r3, [r1]	@ movhi
	beq	.L29
	ands	r1, r3, #4
	ldreq	r0, .L39+52
	streq	r1, [r0]
.L29:
	tst	r2, #8
	beq	.L28
	tst	r3, #8
	beq	.L38
.L28:
	pop	{r4, lr}
	bx	lr
.L38:
	mov	r2, #67108864
	mov	r1, #4864
	ldr	r3, .L39+56
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L39+60
	ldr	r1, .L39+64
	ldrh	r0, [r3]
	ldr	r3, .L39+52
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r2, .L43
	push	{r4, lr}
	mov	r0, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L43+4
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L43+8
	pop	{r4, lr}
	str	r2, [r3]
	b	info
.L44:
	.align	2
.L43:
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
	ldr	r4, .L52
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L52+8
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L52+16
	mov	r0, #3
	ldr	r1, .L52+20
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	ldr	r3, .L52+24
	strh	r2, [r5, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r3, .L52+28
	ldrh	r0, [r3]
	ands	r0, r0, #8
	beq	.L51
.L45:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	ldr	r3, .L52+32
	strh	r3, [r5]	@ movhi
	ldr	r3, .L52+36
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L52+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	info
.L53:
	.align	2
.L52:
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
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L56+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L60+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L63
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r4, .L76
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L76+4
	mov	lr, pc
	bx	r4
	mov	r3, #2352
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L76+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L76+12
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r4
	mov	r3, #56320
	ldr	r4, .L76+20
	strh	r3, [r5, #8]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L76+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L66:
	tst	r3, #4
	beq	.L65
	ldr	r3, .L76+24
	ldrh	r3, [r3]
	ands	r3, r3, #4
	moveq	r1, #67108864
	ldreq	r2, .L76+28
	strheq	r3, [r1]	@ movhi
	streq	r3, [r2]
.L65:
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	ldr	r3, .L76+32
	mov	lr, pc
	bx	r3
	mov	r2, #4864
	ldr	r3, .L76+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L76+40
	ldr	r0, .L76+44
	ldrh	ip, [r3]
	ldr	r2, .L76+28
	ldrh	r3, [r4]
	strh	ip, [r0]	@ movhi
	str	r1, [r2]
	b	.L66
.L77:
	.align	2
.L76:
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
	ldr	r3, .L79
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r4, .L87
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L87+4
	mov	lr, pc
	bx	r4
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L87+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L87+12
	ldr	r1, .L87+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L87+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r3, .L87+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L87+28
	streq	r3, [r2]
.L81:
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L90
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r4, .L98
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L98+4
	mov	lr, pc
	bx	r4
	mov	r3, #720
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L98+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L98+12
	ldr	r1, .L98+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #56320
	ldr	r3, .L98+20
	strh	r1, [r2, #8]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
	ldr	r3, .L98+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L98+28
	streq	r3, [r2]
.L92:
	pop	{r4, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r6, .L114
	push	{r4, r7, fp, lr}
	str	r3, [r6]
	ldr	r7, .L114+4
	ldr	r5, .L114+8
	ldr	fp, .L114+12
	ldr	r10, .L114+16
	ldr	r9, .L114+20
	ldr	r8, .L114+24
	ldr	r4, .L114+28
.L101:
	ldrh	r3, [r7]
.L102:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r1, #6
	ldrls	pc, [pc, r1, asl #2]
	b	.L102
.L104:
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L103
.L103:
	mov	lr, pc
	bx	r9
.L111:
	ldr	r1, [r6]
	b	.L101
.L105:
	mov	lr, pc
	bx	r8
	b	.L111
.L106:
	ldr	r3, .L114+32
	mov	lr, pc
	bx	r3
	b	.L111
.L107:
	ldr	r3, .L114+36
	mov	lr, pc
	bx	r3
	b	.L111
.L108:
	ldr	r3, .L114+40
	mov	lr, pc
	bx	r3
	b	.L111
.L109:
	mov	lr, pc
	bx	r10
	b	.L111
.L110:
	mov	lr, pc
	bx	fp
	b	.L111
.L115:
	.align	2
.L114:
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
