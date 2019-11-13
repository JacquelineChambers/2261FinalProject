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
	ldr	r5, .L19
	bl	dispBackground
	mov	lr, pc
	bx	r5
	mov	lr, #1
	mov	fp, #110
	mov	r10, #60
	mov	ip, #0
	mov	r7, #16
	ldr	r2, .L19+4
	mov	r6, #32
	str	lr, [r2]
	mov	r9, #70
	ldr	r2, .L19+8
	mov	r8, #100
	stm	r2, {r10, fp, lr}
	str	lr, [r2, #12]
	mov	r0, lr
	mov	lr, #3
	mov	r1, #8
	mov	r4, #12
	str	ip, [r2, #28]
	str	r7, [r2, #16]
	str	r7, [r2, #20]
	ldr	r2, .L19+12
	str	ip, [r2]
	ldr	r2, .L19+16
	str	ip, [r2]
	ldr	r2, .L19+20
	mov	r3, ip
	str	ip, [r2, #36]
	str	r9, [r2]
	ldr	ip, .L19+24
	str	r8, [r2, #4]
	str	r6, [r2, #8]
	str	r6, [r2, #12]
	ldr	r2, .L19+28
	str	lr, [ip]
	add	ip, r2, #108
.L16:
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r4, [r2, #32]
	add	r2, r2, #36
	cmp	r2, ip
	bne	.L16
	mov	lr, pc
	bx	r5
	ldr	r3, .L19+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+36
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
	.word	initCar
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
	.global	updateAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAlien, %function
updateAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #0
	mov	r5, r0
	ldr	r4, .L48
	ldr	r7, .L48+4
	sub	sp, sp, #16
	add	r6, r4, #108
.L38:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L47
.L36:
	add	r4, r4, #36
	cmp	r4, r6
	bne	.L38
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	strne	r8, [r4, #24]
	strne	r8, [r5, #32]
	b	.L36
.L49:
	.align	2
.L48:
	.word	bullet
	.word	collision
	.size	updateAlien, .-updateAlien
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
	beq	.L61
.L51:
	mov	r2, #0
	mov	r3, #160
	str	r2, [r0, #24]
	str	r3, [r0, #4]
.L50:
	bx	lr
.L61:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L51
	ldr	r2, [r0]
	sub	r1, r2, #1
	cmp	r1, #238
	movhi	ip, #0
	movls	ip, #1
	cmp	r3, #0
	movle	ip, #0
	cmp	ip, #0
	beq	.L51
	ldr	ip, .L62
	ldr	ip, [ip]
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L50
.L54:
	.word	.L57
	.word	.L56
	.word	.L55
	.word	.L53
.L53:
	add	r2, r2, #1
	str	r2, [r0]
	bx	lr
.L55:
	str	r1, [r0]
	bx	lr
.L56:
	add	r3, r3, #1
	str	r3, [r0, #4]
	bx	lr
.L57:
	sub	r3, r3, #1
	str	r3, [r0, #4]
	bx	lr
.L63:
	.align	2
.L62:
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
.L65:
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
	ldr	r4, .L90
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L67
	ldr	r2, .L90+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L85
.L67:
	tst	r3, #512
	beq	.L71
	ldr	r2, .L90+4
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L86
.L71:
	tst	r3, #256
	beq	.L72
	ldr	r3, .L90+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L87
.L72:
	ldr	r3, .L90+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L88
.L73:
	ldr	r3, .L90+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L89
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	ldr	r5, .L90+12
	ldr	r3, [r5, #24]
	cmp	r3, #0
	moveq	r0, r5
	bleq	fireBullet.part.0
.L68:
	ldr	r3, [r5, #60]
	cmp	r3, #0
	ldreq	r0, .L90+16
	bleq	fireBullet.part.0
.L69:
	ldr	r3, [r5, #96]
	cmp	r3, #0
	ldreq	r0, .L90+20
	bleq	fireBullet.part.0
.L70:
	ldrh	r3, [r4]
	b	.L67
.L89:
	ldr	r3, .L90+24
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	ldr	r3, .L90+28
	mov	lr, pc
	bx	r3
	b	.L73
.L87:
	ldr	r3, .L90+32
	mov	lr, pc
	bx	r3
	b	.L72
.L86:
	ldr	r3, .L90+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L71
.L91:
	.align	2
.L90:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	bullet
	.word	bullet+36
	.word	bullet+72
	.word	slideLeft
	.word	slideRight
	.word	rotateRight
	.word	rotateLeft
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	ldr	r4, .L96+4
	add	r5, r4, #660
.L93:
	mov	r0, r4
	add	r4, r4, #44
	bl	updateAlien
	cmp	r5, r4
	bne	.L93
	ldr	r0, .L96+8
	bl	updateBullet
	ldr	r0, .L96+12
	bl	updateBullet
	ldr	r0, .L96+16
	pop	{r4, r5, r6, lr}
	b	updateBullet
.L97:
	.align	2
.L96:
	.word	parallax
	.word	alien
	.word	bullet
	.word	bullet+36
	.word	bullet+72
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
	push	{r4, r5, lr}
	ldr	lr, .L108
	ldr	r3, [lr, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L108+4
	mov	r4, #512
	mov	r2, r0
	mov	r1, r0
	ldr	ip, .L108+8
	ldr	lr, [lr]
	strh	r3, [r0, #10]	@ movhi
	ldr	r3, [ip, #4]
	ldr	r5, [ip]
	orr	r3, r3, #16384
	strh	lr, [r0, #8]	@ movhi
	ldr	lr, [ip, #28]
	strh	r3, [r0, #2]	@ movhi
	ldr	ip, .L108+12
	ldr	r3, .L108+16
	strh	r5, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	add	ip, r3, #108
.L101:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldmne	r3, {r0, r5}
	ldrne	lr, [r3, #32]
	orrne	r0, r0, #16384
	add	r3, r3, #36
	strhne	r0, [r1, #18]	@ movhi
	strhne	r5, [r1, #16]	@ movhi
	strhne	lr, [r1, #20]	@ movhi
	strheq	r4, [r1, #16]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L101
	mov	r4, #512
	ldr	r3, .L108+20
	ldr	lr, .L108+24
	add	r0, r3, #660
.L104:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	ldrne	r1, [r3, #12]
	ldrne	ip, [r3, #8]
	orrne	r1, r1, #16384
	add	r3, r3, #44
	strhne	lr, [r2, #44]	@ movhi
	strhne	r1, [r2, #42]	@ movhi
	strhne	ip, [r2, #40]	@ movhi
	strheq	r4, [r2, #40]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L104
	pop	{r4, r5, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	princess
	.word	shadowOAM
	.word	player
	.word	4104
	.word	bullet
	.word	alien
	.word	12302
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
	ldr	r2, .L114
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r1, .L114+4
	ldr	r2, .L114+8
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L115:
	.align	2
.L114:
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
	beq	.L117
	str	lr, [sp, #-4]!
	ldr	r2, .L123
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
.L117:
	mov	r2, #512
	ldr	r3, .L123
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L124:
	.align	2
.L123:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.align	2
	.global	drawAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAlien, %function
drawAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L126
	ldr	r3, [r0, #12]
	ldr	r2, .L132
	str	lr, [sp, #-4]!
	ldr	lr, [r0, #8]
	ldr	r0, .L132+4
	lsl	ip, r1, #3
	orr	r3, r3, #16384
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, ip]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L126:
	mov	r2, #512
	ldr	r3, .L132
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L133:
	.align	2
.L132:
	.word	shadowOAM
	.word	12302
	.size	drawAlien, .-drawAlien
	.comm	shadowOAM,1024,4
	.comm	bullet,108,4
	.comm	princess,40,4
	.comm	player,52,4
	.comm	enemiesKilled,4,4
	.comm	livesRemaining,4,4
	.comm	tmphOff,2,2
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
