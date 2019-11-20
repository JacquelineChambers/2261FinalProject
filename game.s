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
	.type	updatePrincess.part.0, %function
updatePrincess.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	ldr	r4, .L31
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r10, r5
	ldr	r6, .L31+4
	ldr	r7, .L31+8
	ldr	r9, .L31+12
	ldr	r8, .L31+16
	sub	sp, sp, #16
	bne	.L28
.L3:
	cmp	r5, #1
	add	r4, r4, #48
	bne	.L14
	mov	r5, #0
	ldr	r4, .L31+20
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r10, r5
	ldr	r6, .L31+24
	ldr	r7, .L31+8
	ldr	r9, .L31+28
	ldr	r8, .L31+16
	bne	.L29
.L7:
	cmp	r5, #1
	add	r4, r4, #48
	bne	.L15
	mov	r10, #0
	ldr	r4, .L31+32
	ldr	r5, .L31+24
	ldr	r7, .L31+8
	ldr	r9, .L31+28
	ldr	r8, .L31+16
	add	r6, r4, #156
.L13:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L30
.L11:
	add	r4, r4, #52
	cmp	r4, r6
	bne	.L13
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L15:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #1
	beq	.L7
.L29:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L7
	ldr	r2, [r9]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r9]
	str	r3, [r8]
	b	.L7
.L14:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r5, #1
	beq	.L3
.L28:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L3
	ldr	r2, [r9]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #28]
	str	r2, [r9]
	str	r3, [r8]
	b	.L3
.L30:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L11
	ldr	r2, [r9]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r9]
	str	r3, [r8]
	b	.L11
.L32:
	.align	2
.L31:
	.word	alien
	.word	player
	.word	collision
	.word	playerHealth
	.word	hit
	.word	car
	.word	princess
	.word	princessHealth
	.word	asteroid
	.size	updatePrincess.part.0, .-updatePrincess.part.0
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
	ldr	r4, .L35
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L35+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #1888
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L35+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L35+12
	ldr	r1, .L35+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L35+20
	mov	r3, #544
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L35+24
	ldr	r1, .L35+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L35+32
	ldr	r1, .L35+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L35+40
	ldr	r1, .L35+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L35+48
	mov	r0, #3
	ldr	r1, .L35+52
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L35+56
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
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
	mov	r4, #0
	mov	r5, #1
	mov	r9, #3
	ldr	ip, .L41
	ldr	r0, .L41+4
	ldr	r1, .L41+8
	ldr	r2, .L41+12
	ldr	r3, .L41+16
	str	r4, [ip]
	str	r4, [r0]
	str	r5, [r1]
	str	r5, [r2]
	str	r9, [r3]
	ldr	fp, .L41+20
	bl	dispBackground
	ldr	r3, .L41+24
	ldr	r6, .L41+28
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	str	r9, [fp]
	ldr	r9, .L41+32
	str	r4, [r9]
	ldr	r9, .L41+36
	str	r4, [r9]
	ldr	r9, .L41+40
	str	r5, [r9]
	ldr	r9, .L41+44
	mov	r1, r5
	str	r5, [r9, #12]
	str	r5, [r9, #8]
	mov	r5, #60
	mov	r10, #110
	str	r5, [r9]
	ldr	r5, .L41+48
	mov	r8, #16
	mov	r7, #32
	ldr	lr, .L41+52
	mov	r2, r4
	str	r4, [r9, #28]
	str	r10, [r9, #4]
	str	r4, [r5, #36]
	mov	r10, #100
	mov	r4, #70
	mov	r3, lr
	mov	r0, #8
	mov	ip, #12
	str	r8, [r9, #16]
	str	r8, [r9, #20]
	str	r7, [r5, #8]
	str	r7, [r5, #12]
	stm	r5, {r4, r10}
	add	r4, lr, #220
.L38:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	ip, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	add	r3, r3, #44
	cmp	r3, r4
	bne	.L38
	str	r1, [lr, #40]
	mov	lr, pc
	bx	r6
	ldr	r3, .L41+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+60
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	immunity
	.word	immunityWait
	.word	enemiesKilled
	.word	princessHealth
	.word	playerHealth
	.word	livesRemaining
	.word	timer
	.word	initAliens
	.word	movement
	.word	prevMovement
	.word	toggle
	.word	player
	.word	princess
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
	ldr	r3, .L45
	str	lr, [r3]
	ldr	r3, .L45+4
	ldr	lr, .L45+8
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	ldr	r0, .L45+12
	ldr	ip, .L45+16
	str	r4, [r3]
	str	r1, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, lr}
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r3, .L48
	stm	r3, {r0, r1, r2}
	str	ip, [r3, #36]
	str	r2, [r3, #12]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L54
	add	ip, r3, #220
.L51:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	add	r3, r3, #44
	cmp	r3, ip
	bne	.L51
	ldr	lr, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	bullet
	.size	initBullet, .-initBullet
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L58
	ldr	r4, .L58+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	add	r0, r5, #48
	mov	lr, pc
	bx	r4
	ldr	r2, .L58+8
	ldr	r6, .L58+12
	ldr	r3, [r2]
	ldr	r5, .L58+16
	add	r3, r3, #1
	mov	r0, r6
	ldr	r4, .L58+20
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	add	r0, r6, #48
	mov	lr, pc
	bx	r4
	ldr	r4, .L58+24
	mov	r0, r5
	mov	lr, pc
	bx	r4
	add	r0, r5, #52
	mov	lr, pc
	bx	r4
	add	r0, r5, #104
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	alien
	.word	updateAlien
	.word	timerShine
	.word	car
	.word	asteroid
	.word	updateCar
	.word	updateAsteroid
	.size	updateEnemies, .-updateEnemies
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
	beq	.L80
.L61:
	mov	r3, #0
	str	r3, [r0, #24]
.L60:
	bx	lr
.L80:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L61
	ldr	r1, [r0]
	sub	r2, r1, #1
	cmp	r2, #238
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #0
	movle	r2, #0
	cmp	r2, #0
	beq	.L61
	ldr	r2, [r0, #40]
	cmp	r2, #1
	beq	.L81
	cmp	r2, #0
	bne	.L61
	ldr	r2, .L82
	ldr	r2, [r2]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L60
.L71:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L70
.L70:
	add	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L72:
	sub	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L73:
	add	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L74:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L81:
	ldr	r2, [r0, #36]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L61
.L64:
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L63
.L63:
	add	r1, r1, #2
	str	r1, [r0]
	b	.L61
.L65:
	sub	r1, r1, #2
	str	r1, [r0]
	b	.L61
.L66:
	add	r3, r3, #2
	str	r3, [r0, #4]
	b	.L61
.L67:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	b	.L61
.L83:
	.align	2
.L82:
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
	bxne	lr
	ldr	r3, [r0, #40]
	cmp	r3, #0
	bne	.L86
	ldr	r3, [r0, #36]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L87
.L89:
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L88
.L86:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L101
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L93
.L95:
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L94
.L90:
	ldr	r2, .L101+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L87:
	mov	r1, #1
	mov	r2, #4
	ldr	r3, .L101+8
	str	r1, [r0, #24]
	str	r2, [r3]
	bx	lr
.L88:
	ldr	r2, .L101+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L87
.L91:
	ldr	r2, .L101+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L87
.L92:
	ldr	r2, .L101+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L87
.L96:
	ldr	r2, .L101+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L93:
	mov	r3, #1
	str	r3, [r0, #24]
	bx	lr
.L94:
	ldr	r2, .L101+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L93
.L97:
	ldr	r2, .L101+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L93
.L98:
	ldr	r2, .L101+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L93
.L102:
	.align	2
.L101:
	.word	prevMovement
	.word	player
	.word	shootAni
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L159
	ldrh	r3, [r4]
	tst	r3, #1
	sub	sp, sp, #20
	beq	.L104
	ldr	r2, .L159+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L151
.L104:
	tst	r3, #512
	beq	.L105
	ldr	r2, .L159+4
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L152
.L105:
	tst	r3, #256
	beq	.L106
	ldr	r3, .L159+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L153
.L106:
	ldr	r3, .L159+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L154
.L107:
	ldr	r3, .L159+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L155
.L108:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L109
	ldr	r3, .L159+4
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L109
	ldr	r3, .L159+12
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L109
	mov	r2, #100
	ldr	r1, .L159+16
	str	r2, [r3]
	str	r2, [r1]
.L103:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L109:
	ldr	r3, .L159+16
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L103
	ldr	r4, .L159+20
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r6, r5
	mov	fp, r5
	ldr	r7, .L159+24
	ldr	r8, .L159+28
	ldr	r10, .L159+32
	ldr	r9, .L159+36
	bne	.L156
.L113:
	cmp	r6, #1
	add	r4, r4, #48
	bne	.L125
	ldr	r4, .L159+40
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r10, #0
	ldr	r6, .L159+24
	ldr	r7, .L159+28
	ldr	r9, .L159+32
	ldr	r8, .L159+36
	bne	.L157
.L117:
	cmp	r5, #1
	add	r4, r4, #48
	bne	.L126
	ldr	r4, .L159+44
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r10, #0
	ldr	r5, .L159+24
	ldr	r7, .L159+28
	ldr	r9, .L159+32
	ldr	r8, .L159+36
	add	r6, r4, #156
	bne	.L158
.L121:
	add	r4, r4, #52
	cmp	r4, r6
	beq	.L103
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L121
.L158:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L121
	ldr	r2, [r9]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r9]
	str	r3, [r8]
	b	.L121
.L151:
	ldr	r3, .L159+48
	ldr	r5, .L159+52
	ldr	r3, [r3]
	mov	r0, r5
	str	r3, [r5, #36]
	bl	fireBullet
	add	r0, r5, #44
	bl	fireBullet
	add	r0, r5, #88
	bl	fireBullet
	add	r0, r5, #132
	bl	fireBullet
	add	r0, r5, #176
	bl	fireBullet
	ldrh	r3, [r4]
	b	.L104
.L126:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #1
	beq	.L117
.L157:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L117
	ldr	r2, [r9]
	ldr	r3, [r8]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r9]
	str	r3, [r8]
	b	.L117
.L125:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r6, #1
	beq	.L113
.L156:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L113
	ldr	r2, [r10]
	ldr	r3, [r9]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	fp, [r4, #28]
	str	r2, [r10]
	str	r3, [r9]
	b	.L113
.L155:
	ldr	r3, .L159+56
	mov	lr, pc
	bx	r3
	b	.L108
.L154:
	ldr	r3, .L159+60
	mov	lr, pc
	bx	r3
	b	.L107
.L153:
	ldr	r3, .L159+64
	mov	lr, pc
	bx	r3
	b	.L106
.L152:
	ldr	r3, .L159+68
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L105
.L160:
	.align	2
.L159:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	immunityWait
	.word	immunity
	.word	alien
	.word	player
	.word	collision
	.word	playerHealth
	.word	hit
	.word	car
	.word	asteroid
	.word	prevMovement
	.word	bullet
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
	ldr	r3, .L164
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	ldr	r3, .L164+4
	ldr	r3, [r3]
	cmp	r3, #0
	bleq	updatePrincess.part.0
.L162:
	bl	updateEnemies
	ldr	r0, .L164+8
	bl	updateBullet
	ldr	r0, .L164+12
	bl	updateBullet
	ldr	r0, .L164+16
	bl	updateBullet
	ldr	r0, .L164+20
	bl	updateBullet
	ldr	r0, .L164+24
	pop	{r4, lr}
	b	updateBullet
.L165:
	.align	2
.L164:
	.word	parallax
	.word	immunity
	.word	bullet
	.word	bullet+44
	.word	bullet+88
	.word	bullet+132
	.word	bullet+176
	.size	updateGame, .-updateGame
	.align	2
	.global	updatePrincess
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePrincess, %function
updatePrincess:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L168
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	updatePrincess.part.0
.L169:
	.align	2
.L168:
	.word	immunity
	.size	updatePrincess, .-updatePrincess
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
	ldr	r2, .L172
	ldr	r1, .L172+4
	ldr	r3, [r2, #28]
	ldr	r0, [r1]
	ldr	ip, .L172+8
	add	r3, r3, r0, lsl #5
	ldr	ip, [ip]
	ldr	r1, [r2, #4]
	lsl	r3, r3, #16
	ldr	r0, [r2]
	lsr	r3, r3, #16
	ldr	r2, .L172+12
	cmp	ip, #0
	orr	r1, r1, #16384
	orrgt	r3, r3, #20480
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L173:
	.align	2
.L172:
	.word	player
	.word	shootAni
	.word	hit
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
	ldr	r2, .L177
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	ldr	r0, .L177+4
	ldr	ip, [r0]
	ldr	r0, .L177+8
	cmp	ip, #0
	ldr	r1, .L177+12
	mvn	r3, r3, lsr #17
	movle	r1, r0
	ldr	r0, [r2]
	ldr	r2, .L177+16
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L178:
	.align	2
.L177:
	.word	princess
	.word	immunity
	.word	4104
	.word	12296
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
	beq	.L180
	ldr	r3, .L186
	str	lr, [sp, #-4]!
	ldr	r2, [r0, #32]
	ldm	r0, {ip, lr}
	lsl	r0, r1, #3
	add	r1, r3, r1, lsl #3
	strh	lr, [r3, r0]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L180:
	mov	r2, #512
	ldr	r3, .L186
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L187:
	.align	2
.L186:
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	beq	.L189
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #40]
	ldr	lr, [r0, #36]
	ldr	r2, [r0, #12]
	ldr	ip, .L195
	add	r3, r3, lr, lsl #5
	ldr	lr, [r0, #8]
	orr	r3, r3, #12288
	add	r0, ip, r1, lsl #3
	orr	r2, r2, #16384
	lsl	r1, r1, #3
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L189:
	mov	r2, #512
	ldr	r3, .L195
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L196:
	.align	2
.L195:
	.word	shadowOAM
	.size	drawAlien, .-drawAlien
	.align	2
	.global	drawCars
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCars, %function
drawCars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L198
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #44]
	ldr	ip, .L204
	str	lr, [sp, #-4]!
	ldr	lr, [r0, #8]
	orr	r2, r2, #16384
	lsl	r0, r1, #3
	orr	r3, r3, #20480
	add	r1, ip, r1, lsl #3
	strh	lr, [ip, r0]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L198:
	mov	r2, #512
	ldr	r3, .L204
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L205:
	.align	2
.L204:
	.word	shadowOAM
	.size	drawCars, .-drawCars
	.align	2
	.global	drawAsteroids
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAsteroids, %function
drawAsteroids:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L213
	ldr	r2, [r0, #32]
	ldr	ip, [r3]
	cmp	r2, #0
	add	ip, ip, #1
	str	ip, [r3]
	beq	.L207
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L213+4
	lsr	r3, ip, #3
	umull	r2, r3, r5, r3
	lsr	r3, r3, #2
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #4
	sub	r3, ip, r3, lsl #3
	add	r4, r3, #90
	lsr	ip, r4, #3
	add	lr, r3, #180
	umull	r2, ip, r5, ip
	lsr	r2, lr, #3
	umull	r6, r2, r5, r2
	lsr	ip, ip, #2
	add	ip, ip, ip, lsl #1
	ldr	r5, .L213+8
	rsb	ip, ip, ip, lsl #4
	lsr	r2, r2, #2
	sub	ip, r4, ip, lsl #3
	add	r2, r2, r2, lsl #1
	ldr	ip, [r5, ip, lsl #2]
	ldr	r7, .L213+12
	rsb	r2, r2, r2, lsl #4
	sub	r2, lr, r2, lsl #3
	ldr	lr, [r0, #8]
	ldr	r6, [r5, r2, lsl #2]
	ldr	r4, .L213+16
	ldr	r2, [r0, #12]
	ldr	r5, [r5, r3, lsl #2]
	lsl	ip, ip, #16
	ldr	r3, [r7]
	asr	ip, ip, #16
	orr	r0, lr, #768
	ldr	lr, .L213+20
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r3, #30]	@ movhi
	orr	r2, r2, #16384
	lsl	ip, r1, #3
	add	r1, r4, r1, lsl #3
	strh	r6, [r3, #14]	@ movhi
	strh	r5, [r3, #22]	@ movhi
	strh	r0, [r4, ip]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L207:
	mov	r2, #512
	ldr	r3, .L213+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L214:
	.align	2
.L213:
	.word	rotTimer
	.word	381774871
	.word	sin_lut_fixed8
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16403
	.size	drawAsteroids, .-drawAsteroids
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
	push	{r4, r5, r6, lr}
	bl	drawPlayer
	ldr	lr, .L248
	ldr	r3, .L248+4
	ldr	r2, [lr]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r2, r3
	bne	.L246
	ldr	r1, .L248+8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L218
.L246:
	add	r0, r2, #1
.L217:
	ldr	r5, .L248+12
	ldr	r3, [r5, #4]
	mvn	r3, r3, lsl #17
	ldr	r4, .L248+16
	ldr	r1, [r4]
	mvn	r3, r3, lsr #17
	ldr	r2, .L248+20
	cmp	r1, #0
	ldr	r1, .L248+24
	ldr	ip, .L248+28
	movle	ip, r2
	mov	r6, #512
	mov	r2, r1
	ldr	r5, [r5]
	strh	r3, [r1, #10]	@ movhi
	ldr	r3, .L248+32
	str	r0, [lr]
	strh	r5, [r1, #8]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	add	ip, r3, #220
.L222:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r5, [r3, #4]
	ldrne	lr, [r3]
	ldrne	r0, [r3, #32]
	add	r3, r3, #44
	strhne	r5, [r2, #16]	@ movhi
	strhne	lr, [r2, #18]	@ movhi
	strhne	r0, [r2, #20]	@ movhi
	strheq	r6, [r2, #16]	@ movhi
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L222
	ldr	r3, .L248+36
	ldr	r2, [r3, #32]
	cmp	r2, #0
	moveq	r2, #512
	ldrne	r2, [r3, #44]
	ldrne	r0, [r3, #12]
	orrne	r2, r2, #20480
	ldrne	ip, [r3, #8]
	strheq	r2, [r1, #56]	@ movhi
	strhne	r2, [r1, #60]	@ movhi
	ldr	r2, [r3, #80]
	orrne	r0, r0, #16384
	strhne	r0, [r1, #58]	@ movhi
	strhne	ip, [r1, #56]	@ movhi
	cmp	r2, #0
	moveq	r3, #512
	ldrne	r2, [r3, #92]
	ldrne	r0, [r3, #60]
	ldrne	ip, [r3, #56]
	orrne	r3, r2, #20480
	strhne	r3, [r1, #68]	@ movhi
	strheq	r3, [r1, #64]	@ movhi
	ldr	r3, .L248+40
	ldr	r2, [r3, #28]
	orrne	r0, r0, #16384
	strhne	r0, [r1, #66]	@ movhi
	strhne	ip, [r1, #64]	@ movhi
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r1, #72]	@ movhi
	bne	.L247
.L228:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #80]	@ movhi
	beq	.L230
	ldr	ip, [r3, #84]
	ldr	r2, [r3, #88]
	ldr	r0, [r3, #60]
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #56]
	orr	r3, r2, #12288
	orr	r2, r0, #16384
	strh	r3, [r1, #84]	@ movhi
	strh	r2, [r1, #82]	@ movhi
	strh	ip, [r1, #80]	@ movhi
.L230:
	mov	r1, #11
	ldr	r0, .L248+44
	bl	drawAsteroids
	mov	r1, #12
	ldr	r0, .L248+48
	bl	drawAsteroids
	mov	r1, #13
	ldr	r0, .L248+52
	bl	drawAsteroids
	ldr	r2, .L248+56
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r3, [r4]
	ldr	r2, .L248+60
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4]
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L247:
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #40]
	ldr	r0, [r3, #12]
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #8]
	orr	r2, r2, #12288
	orr	r0, r0, #16384
	strh	r2, [r1, #76]	@ movhi
	strh	r0, [r1, #74]	@ movhi
	strh	ip, [r1, #72]	@ movhi
	b	.L228
.L218:
	sub	r3, r3, #2
	mov	r0, #1
	str	r3, [r1]
	b	.L217
.L249:
	.align	2
.L248:
	.word	timerShooting
	.word	1717986919
	.word	shootAni
	.word	princess
	.word	immunity
	.word	4104
	.word	shadowOAM
	.word	12296
	.word	bullet
	.word	car
	.word	alien
	.word	asteroid
	.word	asteroid+52
	.word	asteroid+104
	.word	hit
	.word	immunityWait
	.size	drawGame, .-drawGame
	.comm	immunityWait,4,4
	.comm	immunity,4,4
	.comm	hit,4,4
	.comm	rotTimer,4,4
	.comm	timerShooting,4,4
	.comm	shootAni,4,4
	.comm	playerHealth,4,4
	.comm	princessHealth,4,4
	.comm	shotDirection,4,4
	.global	shadowAffine
	.comm	shadowOAM,1024,4
	.comm	bullet,220,4
	.comm	princess,40,4
	.comm	player,52,4
	.comm	enemiesKilled,4,4
	.comm	livesRemaining,4,4
	.comm	tmphOff,2,2
	.comm	hOff,2,2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shadowAffine, %object
	.size	shadowAffine, 4
shadowAffine:
	.word	shadowOAM
	.ident	"GCC: (devkitARM release 53) 9.1.0"
