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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet.part.0, %function
fireBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldr	r2, [r3]
	mov	r3, r0
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L2
.L4:
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L5:
	ldr	r1, .L9+4
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	sub	r2, r2, #8
	stm	r0, {r1, r2}
.L2:
	mov	r0, #1
	str	r0, [r3, #24]
	bx	lr
.L3:
	ldr	r1, .L9+4
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	add	r2, r2, #8
	stm	r0, {r1, r2}
	b	.L2
.L7:
	ldr	r1, .L9+4
	ldm	r1, {r1, r2}
	add	r2, r2, #8
	str	r2, [r0]
	str	r1, [r0, #4]
	b	.L2
.L6:
	ldr	r1, .L9+4
	ldm	r1, {r1, r2}
	sub	r2, r2, #8
	str	r2, [r0]
	str	r1, [r0, #4]
	b	.L2
.L10:
	.align	2
.L9:
	.word	prevMovement
	.word	player
	.size	fireBullet.part.0, .-fireBullet.part.0
	.align	2
	.global	dispBackground
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
	ldr	r4, .L13
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L13+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #1888
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L13+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L13+12
	ldr	r1, .L13+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+20
	mov	r3, #544
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L13+24
	ldr	r1, .L13+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L13+32
	ldr	r1, .L13+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L13+40
	ldr	r1, .L13+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L13+48
	mov	r0, #3
	ldr	r1, .L13+52
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L13+56
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L14:
	.align	2
.L13:
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
	.word	83886592
	.word	spritesPal
	.word	100728832
	.word	spritesTiles
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bl	dispBackground
	ldr	r3, .L19
	mov	lr, pc
	bx	r3
	mov	lr, #1
	mov	ip, #0
	mov	r6, #16
	mov	fp, #110
	mov	r10, #60
	mov	r5, #32
	mov	r9, #70
	mov	r8, #100
	mov	r7, #3
	mov	r0, lr
	mov	r1, #8
	mov	r4, #12
	ldr	r3, .L19+4
	str	lr, [r3]
	ldr	r3, .L19+8
	stm	r3, {r10, fp, lr}
	str	lr, [r3, #12]
	str	ip, [r3, #28]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	ldr	r3, .L19+12
	str	ip, [r3]
	ldr	r3, .L19+16
	str	ip, [r3]
	ldr	r3, .L19+20
	mov	r2, ip
	str	ip, [r3, #36]
	str	r9, [r3]
	ldr	ip, .L19+24
	str	r8, [r3, #4]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	ldr	r3, .L19+28
	str	r7, [ip]
	add	ip, r3, #108
.L16:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #32]
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L16
	ldr	r3, .L19+32
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	initAliens
	.word	toggle
	.word	player
	.word	movement
	.word	prevMovement
	.word	princess
	.word	livesRemaining
	.word	bullet
	.word	hideSprites
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
	ldr	r3, .L23
	str	lr, [r3]
	ldr	r3, .L23+4
	ldr	lr, .L23+8
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	ldr	r0, .L23+12
	ldr	ip, .L23+16
	str	r4, [r3]
	str	r1, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
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
	mov	r2, #32
	mov	ip, #0
	mov	r0, #70
	mov	r1, #100
	ldr	r3, .L26
	stm	r3, {r0, r1, r2}
	str	ip, [r3, #36]
	str	r2, [r3, #12]
	bx	lr
.L27:
	.align	2
.L26:
	.word	princess
	.size	initPrincess, .-initPrincess
	.align	2
	.global	initBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r0, #1
	mov	r1, #8
	mov	lr, #12
	ldr	r3, .L32
	add	ip, r3, #108
.L29:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #32]
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L29
	ldr	lr, [sp], #4
	bx	lr
.L33:
	.align	2
.L32:
	.word	bullet
	.size	initBullet, .-initBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #1
	beq	.L45
.L35:
	mov	r2, #0
	mov	r3, #160
	str	r2, [r0, #24]
	str	r3, [r0, #4]
.L34:
	bx	lr
.L45:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L35
	ldr	r2, [r0]
	sub	r1, r2, #1
	cmp	r1, #238
	movhi	ip, #0
	movls	ip, #1
	cmp	r3, #0
	movle	ip, #0
	cmp	ip, #0
	beq	.L35
	ldr	ip, .L46
	ldr	ip, [ip]
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L34
.L38:
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L37
.L37:
	add	r2, r2, #1
	str	r2, [r0]
	bx	lr
.L39:
	str	r1, [r0]
	bx	lr
.L40:
	add	r3, r3, #1
	str	r3, [r0, #4]
	bx	lr
.L41:
	sub	r3, r3, #1
	str	r3, [r0, #4]
	bx	lr
.L47:
	.align	2
.L46:
	.word	prevMovement
	.size	updateBullet, .-updateBullet
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	fireBullet.part.0
.L49:
	mov	r0, #0
	bx	lr
	.size	fireBullet, .-fireBullet
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L141
	ldrh	r2, [r4]
	tst	r2, #1
	beq	.L51
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L137
.L51:
	tst	r2, #512
	beq	.L55
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L138
.L55:
	tst	r2, #256
	beq	.L69
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L139
.L69:
	ldr	r3, .L141+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L83
	ldr	r3, .L141+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L83
.L85:
	.word	.L87
	.word	.L87
	.word	.L86
	.word	.L86
.L83:
	ldr	r3, .L141+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L50
	ldr	r3, .L141+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L50
.L96:
	.word	.L108
	.word	.L108
	.word	.L110
	.word	.L110
.L87:
	ldr	r3, .L141+16
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #139
	ldr	r2, .L141+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3, #4]
	tst	r2, #32
	bne	.L50
.L98:
	ldr	r2, [r3, #4]
	cmp	r2, #95
	subgt	r2, r2, #1
	strgt	r2, [r3, #4]
.L50:
	pop	{r4, r5, r6, lr}
	bx	lr
.L139:
	ldr	r0, .L141+20
	ldr	r3, [r0]
	ldr	ip, .L141+24
	cmp	r3, #1
	ldr	r3, [ip]
	beq	.L140
	ldr	r2, .L141+12
	str	r3, [r2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L81
.L82:
	.word	.L79
	.word	.L77
	.word	.L78
	.word	.L80
.L138:
	ldr	r0, .L141+20
	ldr	r3, [r0]
	ldr	ip, .L141+24
	cmp	r3, #0
	ldr	r3, [ip]
	bne	.L56
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L57
.L59:
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L58
.L137:
	ldr	r5, .L141+28
	ldr	r3, [r5, #24]
	cmp	r3, #0
	moveq	r0, r5
	bleq	fireBullet.part.0
.L52:
	ldr	r3, [r5, #60]
	cmp	r3, #0
	ldreq	r0, .L141+32
	bleq	fireBullet.part.0
.L53:
	ldr	r3, [r5, #96]
	cmp	r3, #0
	ldreq	r0, .L141+36
	bleq	fireBullet.part.0
.L54:
	ldrh	r2, [r4]
	b	.L51
.L56:
	ldr	r1, .L141+12
	str	r3, [r1]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L67
.L68:
	.word	.L65
	.word	.L63
	.word	.L64
	.word	.L66
.L140:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L71
.L73:
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L72
.L74:
	mov	r2, #3
	ldr	r3, .L141+12
	str	r2, [r3]
.L80:
	mov	lr, #130
	mov	r1, #80
	mov	r2, #6
	mov	r4, #1
.L128:
	ldr	r3, .L141+16
	stm	r3, {r1, lr}
	str	r4, [ip]
	str	r2, [r3, #28]
.L81:
	mov	r3, #0
	str	r3, [r0]
	b	.L69
.L60:
	mov	r1, #3
	ldr	r3, .L141+12
	str	r1, [r3]
.L66:
	mov	r4, #130
	mov	lr, #80
	mov	r1, #6
	mov	r5, #0
.L127:
	ldr	r3, .L141+16
	str	r5, [ip]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r1, [r3, #28]
.L67:
	mov	r3, #1
	str	r3, [r0]
	b	.L55
.L58:
	mov	r1, #2
	ldr	r3, .L141+12
	str	r1, [r3]
.L64:
	mov	r4, #90
	mov	lr, #80
	mov	r1, #2
	mov	r5, #1
	b	.L127
.L62:
	mov	r1, #1
	ldr	r3, .L141+12
	str	r1, [r3]
.L63:
	mov	r4, #110
	mov	lr, #100
	mov	r1, #4
	mov	r5, #3
	b	.L127
.L61:
	mov	r1, #0
	ldr	r3, .L141+12
	str	r1, [r3]
.L65:
	mov	r4, #110
	mov	lr, #60
	mov	r1, #0
	mov	r5, #2
	b	.L127
.L72:
	mov	r2, #2
	ldr	r3, .L141+12
	str	r2, [r3]
.L78:
	mov	lr, #90
	mov	r1, #80
	mov	r2, #2
	mov	r4, #0
	b	.L128
.L76:
	mov	r2, #1
	ldr	r3, .L141+12
	str	r2, [r3]
.L77:
	mov	lr, #110
	mov	r1, #100
	mov	r2, #4
	mov	r4, #2
	b	.L128
.L75:
	mov	r2, #0
	ldr	r3, .L141+12
	str	r2, [r3]
.L79:
	mov	lr, #110
	mov	r1, #60
	mov	r2, #0
	mov	r4, #3
	b	.L128
.L86:
	ldr	r3, .L141+16
	ldr	r1, [r3]
	ldr	r2, [r3, #20]
	add	r2, r1, r2
	cmp	r2, #104
	ldr	r2, .L141+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3]
	tst	r2, #32
	bne	.L50
.L97:
	ldr	r2, [r3]
	cmp	r2, #65
	subgt	r2, r2, #1
	strgt	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L110:
	ldr	r3, .L141+16
	b	.L97
.L108:
	ldr	r3, .L141+16
	b	.L98
.L71:
	ldr	r2, .L141+12
	str	r3, [r2]
	b	.L81
.L57:
	ldr	r1, .L141+12
	str	r3, [r1]
	b	.L67
.L142:
	.align	2
.L141:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	prevMovement
	.word	player
	.word	toggle
	.word	movement
	.word	bullet
	.word	bullet+36
	.word	bullet+72
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
	ldr	r4, .L145
	ldr	r3, .L145+4
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	mov	r0, r4
	bl	updateBullet
	add	r0, r4, #36
	bl	updateBullet
	add	r0, r4, #72
	pop	{r4, lr}
	b	updateBullet
.L146:
	.align	2
.L145:
	.word	bullet
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
	ldr	r0, .L153
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L153+4
	push	{r4, lr}
	mov	r2, r1
	mov	lr, #512
	ldr	ip, .L153+8
	ldr	r4, [r0]
	strh	r3, [r1, #10]	@ movhi
	ldr	r3, [ip]
	ldr	r0, [ip, #4]
	strh	r4, [r1, #8]	@ movhi
	ldr	r4, [ip, #28]
	ldr	ip, .L153+12
	strh	r3, [r1]	@ movhi
	ldr	r3, .L153+16
	orr	r0, r0, #16384
	strh	r4, [r1, #4]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r0, r3, #108
.L150:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldmne	r3, {r1, r4}
	ldrne	ip, [r3, #32]
	orrne	r1, r1, #16384
	add	r3, r3, #36
	strhne	r1, [r2, #18]	@ movhi
	strhne	r4, [r2, #16]	@ movhi
	strhne	ip, [r2, #20]	@ movhi
	strheq	lr, [r2, #16]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L150
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
	.word	princess
	.word	shadowOAM
	.word	player
	.word	4104
	.word	bullet
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
	ldr	r1, .L156
	ldr	r2, [r1, #4]
	ldr	r3, .L156+4
	ldr	r0, [r1]
	ldr	r1, [r1, #28]
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L157:
	.align	2
.L156:
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
	ldr	r2, .L159
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r1, .L159+4
	ldr	r2, .L159+8
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L160:
	.align	2
.L159:
	.word	princess
	.word	4104
	.word	shadowOAM
	.size	drawPrincess, .-drawPrincess
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L162
	str	lr, [sp, #-4]!
	ldr	r2, .L168
	ldm	r0, {r3, lr}
	ldr	r0, [r0, #32]
	lsl	ip, r1, #3
	orr	r3, r3, #16384
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, ip]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L162:
	mov	r2, #512
	ldr	r3, .L168
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L169:
	.align	2
.L168:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.comm	prevMovement,4,4
	.comm	toggle,4,4
	.comm	movement,4,4
	.comm	shadowOAM,1024,4
	.comm	bullet,108,4
	.comm	princess,40,4
	.comm	player,52,4
	.comm	enemiesKilled,4,4
	.comm	livesRemaining,4,4
	.comm	tmphOff,2,2
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
