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
	mov	r0, #3
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L4+48
	mov	r0, #3
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+56
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
	mov	r8, #60
	bl	dispBackground
	ldr	r3, .L10
	mov	lr, pc
	bx	r3
	mov	lr, #1
	mov	ip, #0
	mov	r4, #16
	mov	r9, #110
	mov	fp, #70
	mov	r10, #3
	mov	r7, r8
	mov	r6, #55
	mov	r2, #8
	mov	r5, #10
	ldr	r3, .L10+4
	str	lr, [r3]
	ldr	r3, .L10+8
	str	r8, [r3]
	str	lr, [r3, #12]
	str	lr, [r3, #8]
	str	ip, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r9, [r3, #4]
	ldr	r3, .L10+12
	mov	r0, lr
	str	ip, [r3]
	ldr	lr, .L10+16
	ldr	r3, .L10+20
	mov	r1, ip
	str	ip, [r3]
	str	ip, [lr, #36]
	ldr	r3, .L10+24
	ldr	ip, .L10+28
	str	r9, [lr, #4]
	str	r4, [lr, #8]
	str	r4, [lr, #12]
	str	fp, [lr]
	str	r10, [ip]
	add	ip, r3, #108
.L7:
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r5, [r3, #32]
	stm	r3, {r6, r7}
	add	r3, r3, #36
	cmp	r3, ip
	bne	.L7
	ldr	r3, .L10+32
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	initAliens
	.word	toggle
	.word	player
	.word	movement
	.word	princess
	.word	prevMovement
	.word	bullet
	.word	livesRemaining
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
	ldr	r3, .L14
	str	lr, [r3]
	ldr	r3, .L14+4
	ldr	lr, .L14+8
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	ldr	r0, .L14+12
	ldr	ip, .L14+16
	str	r4, [r3]
	str	r1, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	ldr	r3, .L17
	stm	r3, {r0, r1, r2}
	str	ip, [r3, #36]
	str	r2, [r3, #12]
	bx	lr
.L18:
	.align	2
.L17:
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
	mov	ip, #1
	push	{r4, r5, lr}
	mov	r0, #8
	mov	r1, #0
	mov	r5, #10
	ldr	lr, .L23
	ldr	r2, [lr, #4]
	ldr	r3, .L23+4
	add	r2, r2, r2, lsr #31
	ldr	r4, [lr]
	asr	r2, r2, ip
	add	lr, r3, #108
.L20:
	str	ip, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r5, [r3, #32]
	stm	r3, {r2, r4, ip}
	add	r3, r3, #36
	cmp	r3, lr
	bne	.L20
	pop	{r4, r5, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	player
	.word	bullet
	.size	initBullet, .-initBullet
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
	ldr	r3, .L108
	ldrh	r2, [r3]
	tst	r2, #512
	push	{r4, r5, lr}
	beq	.L26
	ldr	r3, .L108+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L105
.L26:
	tst	r2, #256
	beq	.L40
	ldr	r3, .L108+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L106
.L40:
	ldr	r3, .L108+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L54
	ldr	r3, .L108+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L54
.L56:
	.word	.L58
	.word	.L58
	.word	.L57
	.word	.L57
.L54:
	ldr	r3, .L108+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L25
	ldr	r3, .L108+12
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L25
.L67:
	.word	.L78
	.word	.L78
	.word	.L80
	.word	.L80
.L58:
	ldr	r3, .L108+16
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #134
	ldr	r2, .L108+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3, #4]
	tst	r2, #32
	bne	.L25
.L69:
	ldr	r2, [r3, #4]
	cmp	r2, #100
	subgt	r2, r2, #1
	strgt	r2, [r3, #4]
.L25:
	pop	{r4, r5, lr}
	bx	lr
.L106:
	ldr	r0, .L108+20
	ldr	r3, [r0]
	ldr	ip, .L108+24
	cmp	r3, #1
	ldr	r3, [ip]
	beq	.L107
	ldr	r2, .L108+12
	str	r3, [r2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L52
.L53:
	.word	.L50
	.word	.L48
	.word	.L49
	.word	.L51
.L105:
	ldr	r0, .L108+20
	ldr	r3, [r0]
	ldr	ip, .L108+24
	cmp	r3, #0
	ldr	r3, [ip]
	bne	.L27
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L28
.L30:
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L29
.L27:
	ldr	r1, .L108+12
	str	r3, [r1]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L38
.L39:
	.word	.L36
	.word	.L34
	.word	.L35
	.word	.L37
.L107:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L42
.L44:
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L43
.L45:
	mov	r2, #3
	ldr	r3, .L108+12
	str	r2, [r3]
.L51:
	mov	lr, #120
	mov	r1, #70
	mov	r2, #6
	mov	r4, #1
.L96:
	ldr	r3, .L108+16
	stm	r3, {r1, lr}
	str	r4, [ip]
	str	r2, [r3, #28]
.L52:
	mov	r3, #0
	str	r3, [r0]
	b	.L40
.L31:
	mov	r1, #3
	ldr	r3, .L108+12
	str	r1, [r3]
.L37:
	mov	r4, #120
	mov	lr, #70
	mov	r1, #6
	mov	r5, #0
.L95:
	ldr	r3, .L108+16
	str	r5, [ip]
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r1, [r3, #28]
.L38:
	mov	r3, #1
	str	r3, [r0]
	b	.L26
.L29:
	mov	r1, #2
	ldr	r3, .L108+12
	str	r1, [r3]
.L35:
	mov	r4, #100
	mov	lr, #70
	mov	r1, #2
	mov	r5, #1
	b	.L95
.L33:
	mov	r1, #1
	ldr	r3, .L108+12
	str	r1, [r3]
.L34:
	mov	r4, #110
	mov	lr, #80
	mov	r1, #4
	mov	r5, #3
	b	.L95
.L32:
	mov	r1, #0
	ldr	r3, .L108+12
	str	r1, [r3]
.L36:
	mov	r4, #110
	mov	lr, #60
	mov	r1, #0
	mov	r5, #2
	b	.L95
.L43:
	mov	r2, #2
	ldr	r3, .L108+12
	str	r2, [r3]
.L49:
	mov	lr, #100
	mov	r1, #70
	mov	r2, #2
	mov	r4, #0
	b	.L96
.L47:
	mov	r2, #1
	ldr	r3, .L108+12
	str	r2, [r3]
.L48:
	mov	lr, #110
	mov	r1, #80
	mov	r2, #4
	mov	r4, #2
	b	.L96
.L46:
	mov	r2, #0
	ldr	r3, .L108+12
	str	r2, [r3]
.L50:
	mov	lr, #110
	mov	r1, #60
	mov	r2, #0
	mov	r4, #3
	b	.L96
.L57:
	ldr	r3, .L108+16
	ldr	r1, [r3]
	ldr	r2, [r3, #20]
	add	r2, r1, r2
	cmp	r2, #94
	ldr	r2, .L108+8
	ldrh	r2, [r2, #48]
	addle	r1, r1, #1
	strle	r1, [r3]
	tst	r2, #32
	bne	.L25
.L68:
	ldr	r2, [r3]
	cmp	r2, #60
	subgt	r2, r2, #1
	strgt	r2, [r3]
	pop	{r4, r5, lr}
	bx	lr
.L80:
	ldr	r3, .L108+16
	b	.L68
.L78:
	ldr	r3, .L108+16
	b	.L69
.L28:
	ldr	r1, .L108+12
	str	r3, [r1]
	b	.L38
.L42:
	ldr	r2, .L108+12
	str	r3, [r2]
	b	.L52
.L109:
	.align	2
.L108:
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
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	updatePlayer
.L113:
	.align	2
.L112:
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
	push	{r4, lr}
	ldr	r1, .L118
	mov	r4, #8
	mov	r2, r1
	ldr	r3, .L118+4
	ldr	ip, [r3, #4]
	ldr	lr, .L118+8
	orr	ip, ip, #16384
	ldr	r0, [lr, #4]
	strh	ip, [r1, #2]	@ movhi
	ldr	ip, [r3]
	ldr	r3, [r3, #28]
	ldr	lr, [lr]
	strh	r3, [r1, #4]	@ movhi
	orr	r0, r0, #16384
	ldr	r3, .L118+12
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #10]	@ movhi
	strh	r4, [r1, #12]	@ movhi
	strh	lr, [r1, #8]	@ movhi
	add	lr, r3, #108
.L115:
	ldm	r3, {r1, ip}
	ldr	r0, [r3, #32]
	add	r3, r3, #36
	orr	r1, r1, #16384
	cmp	r3, lr
	strh	r1, [r2, #18]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	add	r2, r2, #8
	bne	.L115
	pop	{r4, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	shadowOAM
	.word	player
	.word	princess
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
	ldr	r1, .L121
	ldr	r2, [r1, #4]
	ldr	r3, .L121+4
	ldr	r0, [r1]
	ldr	r1, [r1, #28]
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r3, .L124
	ldm	r3, {r0, r2}
	ldr	r3, .L124+4
	orr	r2, r2, #16384
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	bx	lr
.L125:
	.align	2
.L124:
	.word	princess
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
	ldr	r3, [r0]
	ldr	r2, .L128
	str	lr, [sp, #-4]!
	ldr	ip, [r0, #4]
	ldr	lr, [r0, #32]
	orr	r3, r3, #16384
	add	r0, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L129:
	.align	2
.L128:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.comm	prevMovement,4,4
	.comm	toggle,4,4
	.comm	movement,4,4
	.comm	shadowOAM,1024,4
	.comm	bullet,108,4
	.comm	princess,40,4
	.comm	player,52,4
	.comm	livesRemaining,4,4
	.comm	tmphOff,2,2
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
