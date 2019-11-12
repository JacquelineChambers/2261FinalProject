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
	.file	"game.c"
	.text
	.align	2
	.global	dispBackground
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	dispBackground, %function
dispBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #1888
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+20
	mov	r3, #544
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+32
	mov	r0, #3
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+40
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	bg0SpacePal
	.word	bg0SpaceTiles
	.word	100726784
	.word	bg0SpaceMap
	.word	7172
	.word	100679680
	.word	bg1StarsTiles
	.word	100720640
	.word	bg1StarsMap
	.word	hOff
	.size	dispBackground, .-dispBackground
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #3
	mov	r5, #60
	bl	dispBackground
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r2, #16
	mov	r1, #0
	mov	ip, #110
	mov	lr, #70
	ldr	r3, .L8+4
	str	r4, [r3]
	ldr	r3, .L8+8
	str	r5, [r3]
	ldr	r5, .L8+12
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r0, [r5]
	ldr	r0, .L8+16
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #28]
	ldr	r5, .L8+20
	ldr	r3, .L8+24
	str	r1, [r0]
	ldr	r0, .L8+28
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r5]
	str	r1, [r3, #36]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r5, .L8+32
	mov	lr, pc
	bx	r0
	mov	r0, r4
	mov	r3, #256
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #16384
	ldr	r2, .L8+44
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	initAliens
	.word	livesRemaining
	.word	player
	.word	toggle
	.word	prevMovement
	.word	movement
	.word	princess
	.word	hideSprites
	.word	DMANow
	.word	83886592
	.word	spritesPal
	.word	100728832
	.word	spritesTiles
	.size	initGame, .-initGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #3
	mov	r0, #16
	mov	ip, #110
	mov	r2, #1
	mov	r1, #0
	mov	r4, #60
	ldr	r3, .L12
	str	lr, [r3]
	ldr	r3, .L12+4
	ldr	lr, .L12+8
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	ldr	r0, .L12+12
	ldr	ip, .L12+16
	str	r4, [r3]
	str	r1, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	livesRemaining
	.word	player
	.word	movement
	.word	toggle
	.word	prevMovement
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPrincess, %function
initPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #0
	mov	r0, #70
	mov	r1, #110
	ldr	r3, .L15
	stm	r3, {r0, r1, r2}
	str	ip, [r3, #36]
	str	r2, [r3, #12]
	bx	lr
.L16:
	.align	2
.L15:
	.word	princess
	.size	initPrincess, .-initPrincess
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L100
	ldrh	r2, [r3]
	tst	r2, #512
	push	{r4, r5, lr}
	beq	.L18
	ldr	r3, .L100+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L97
.L18:
	tst	r2, #256
	beq	.L32
	ldr	r3, .L100+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L98
.L32:
	ldr	r3, .L100+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L46
	ldr	r3, .L100+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L46
.L48:
	.word	.L50
	.word	.L50
	.word	.L49
	.word	.L49
.L46:
	ldr	r3, .L100+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L17
	ldr	r3, .L100+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L17
.L59:
	.word	.L70
	.word	.L70
	.word	.L72
	.word	.L72
.L50:
	ldr	r3, .L100+16
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #139
	ldr	r2, .L100+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3, #4]
	tst	r2, #32
	bne	.L17
.L61:
	ldr	r2, [r3, #4]
	cmp	r2, #100
	subgt	r2, r2, #1
	strgt	r2, [r3, #4]
.L17:
	pop	{r4, r5, lr}
	bx	lr
.L98:
	ldr	r0, .L100+20
	ldr	r3, [r0]
	ldr	ip, .L100+24
	cmp	r3, #1
	ldr	r3, [ip]
	beq	.L99
	ldr	r2, .L100+12
	str	r3, [r2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L44
.L45:
	.word	.L42
	.word	.L40
	.word	.L41
	.word	.L43
.L97:
	ldr	r0, .L100+20
	ldr	r3, [r0]
	ldr	ip, .L100+24
	cmp	r3, #0
	ldr	r3, [ip]
	bne	.L19
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L20
.L22:
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L21
.L19:
	ldr	r1, .L100+12
	str	r3, [r1]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L30
.L31:
	.word	.L28
	.word	.L26
	.word	.L27
	.word	.L29
.L99:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L34
.L36:
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L35
.L37:
	mov	r2, #3
	ldr	r3, .L100+12
	str	r2, [r3]
.L43:
	mov	lr, #120
	mov	r1, #70
	mov	r2, #6
	mov	r4, #1
.L88:
	ldr	r3, .L100+16
	stm	r3, {r1, lr}
	str	r4, [ip]
	str	r2, [r3, #28]
.L44:
	mov	r3, #0
	str	r3, [r0]
	b	.L32
.L23:
	mov	r1, #3
	ldr	r3, .L100+12
	str	r1, [r3]
.L29:
	mov	r4, #120
	mov	lr, #70
	mov	r1, #6
	mov	r5, #0
.L87:
	ldr	r3, .L100+16
	str	r5, [ip]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r1, [r3, #28]
.L30:
	mov	r3, #1
	str	r3, [r0]
	b	.L18
.L21:
	mov	r1, #2
	ldr	r3, .L100+12
	str	r1, [r3]
.L27:
	mov	r4, #100
	mov	lr, #70
	mov	r1, #2
	mov	r5, #1
	b	.L87
.L25:
	mov	r1, #1
	ldr	r3, .L100+12
	str	r1, [r3]
.L26:
	mov	r4, #110
	mov	lr, #80
	mov	r1, #4
	mov	r5, #3
	b	.L87
.L24:
	mov	r1, #0
	ldr	r3, .L100+12
	str	r1, [r3]
.L28:
	mov	r4, #110
	mov	lr, #60
	mov	r1, #0
	mov	r5, #2
	b	.L87
.L35:
	mov	r2, #2
	ldr	r3, .L100+12
	str	r2, [r3]
.L41:
	mov	lr, #100
	mov	r1, #70
	mov	r2, #2
	mov	r4, #0
	b	.L88
.L39:
	mov	r2, #1
	ldr	r3, .L100+12
	str	r2, [r3]
.L40:
	mov	lr, #110
	mov	r1, #80
	mov	r2, #4
	mov	r4, #2
	b	.L88
.L38:
	mov	r2, #0
	ldr	r3, .L100+12
	str	r2, [r3]
.L42:
	mov	lr, #110
	mov	r1, #60
	mov	r2, #0
	mov	r4, #3
	b	.L88
.L49:
	ldr	r3, .L100+16
	ldr	r1, [r3]
	ldr	r2, [r3, #20]
	add	r2, r1, r2
	cmp	r2, #99
	ldr	r2, .L100+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3]
	tst	r2, #32
	bne	.L17
.L60:
	ldr	r2, [r3]
	cmp	r2, #60
	subgt	r2, r2, #1
	strgt	r2, [r3]
	pop	{r4, r5, lr}
	bx	lr
.L72:
	ldr	r3, .L100+16
	b	.L60
.L70:
	ldr	r3, .L100+16
	b	.L61
.L20:
	ldr	r1, .L100+12
	str	r3, [r1]
	b	.L30
.L34:
	ldr	r2, .L100+12
	str	r3, [r2]
	b	.L44
.L101:
	.align	2
.L100:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	prevMovement
	.word	player
	.word	toggle
	.word	movement
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	updatePlayer
.L105:
	.align	2
.L104:
	.word	parallax
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #8
	ldr	r1, .L108
	ldr	ip, .L108+4
	ldr	r0, [r1, #4]
	ldr	r3, .L108+8
	ldr	r2, [ip, #4]
	orr	r0, r0, #16384
	ldr	ip, [ip]
	strh	r0, [r3, #2]	@ movhi
	ldr	r0, [r1]
	ldr	r1, [r1, #28]
	orr	r2, r2, #16384
	strh	lr, [r3, #12]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L109:
	.align	2
.L108:
	.word	player
	.word	princess
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L111
	ldr	r2, [r1, #4]
	ldr	r3, .L111+4
	ldr	r0, [r1]
	ldr	r1, [r1, #28]
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L112:
	.align	2
.L111:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawPrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrincess, %function
drawPrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #8
	ldr	r3, .L114
	ldm	r3, {r0, r2}
	ldr	r3, .L114+4
	orr	r2, r2, #16384
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	bx	lr
.L115:
	.align	2
.L114:
	.word	princess
	.word	shadowOAM
	.size	drawPrincess, .-drawPrincess
	.comm	prevMovement,4,4
	.comm	toggle,4,4
	.comm	movement,4,4
	.comm	shadowOAM,1024,4
	.comm	princess,40,4
	.comm	player,52,4
	.comm	livesRemaining,4,4
	.comm	tmphOff,2,2
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
