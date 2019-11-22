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
	mov	r10, #0
	ldr	r4, .L13
	ldr	r5, .L13+4
	ldr	r7, .L13+8
	ldr	r9, .L13+12
	ldr	r8, .L13+16
	sub	sp, sp, #16
	add	r6, r4, #240
.L5:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L12
.L3:
	add	r4, r4, #48
	cmp	r4, r6
	bne	.L5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L12:
	add	r0, r4, #16
	add	r2, r4, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
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
.L14:
	.align	2
.L13:
	.word	alien
	.word	player
	.word	collision
	.word	playerHealth
	.word	hit
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
	ldr	r4, .L17
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L17+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #1888
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L17+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L17+12
	ldr	r1, .L17+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L17+20
	mov	r3, #544
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L17+24
	ldr	r1, .L17+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L17+32
	ldr	r1, .L17+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L17+40
	ldr	r1, .L17+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L17+48
	mov	r0, #3
	ldr	r1, .L17+52
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L17+56
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L18:
	.align	2
.L17:
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
	mov	ip, #67108864
	mov	lr, #864
	mov	r4, #0
	mov	r5, #1
	mov	r9, #3
	ldr	r0, .L23
	ldr	r1, .L23+4
	ldr	r2, .L23+8
	ldr	r3, .L23+12
	strh	lr, [ip, #80]	@ movhi
	ldr	fp, .L23+16
	str	r4, [r0]
	str	r4, [r1]
	str	r5, [r2]
	str	r9, [r3]
	bl	dispBackground
	ldr	r3, .L23+20
	ldr	r6, .L23+24
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	str	r9, [fp]
	ldr	r9, .L23+28
	str	r4, [r9]
	ldr	r9, .L23+32
	str	r4, [r9]
	ldr	r9, .L23+36
	str	r5, [r9]
	ldr	r9, .L23+40
	mov	r1, r5
	str	r5, [r9, #12]
	str	r5, [r9, #8]
	mov	r5, #60
	mov	r10, #110
	str	r5, [r9]
	ldr	r5, .L23+44
	mov	r8, #16
	mov	r7, #32
	ldr	lr, .L23+48
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
.L20:
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
	bne	.L20
	str	r1, [lr, #40]
	mov	lr, pc
	bx	r6
	ldr	r3, .L23+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+56
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	immunity
	.word	immunityWait
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
	ldr	r3, .L27
	str	lr, [r3]
	ldr	r3, .L27+4
	ldr	lr, .L27+8
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #4]
	ldr	r0, .L27+12
	ldr	ip, .L27+16
	str	r4, [r3]
	str	r1, [lr]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r1, [r3, #28]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, lr}
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r3, .L30
	stm	r3, {r0, r1, r2}
	str	ip, [r3, #36]
	str	r2, [r3, #12]
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L36
	add	ip, r3, #220
.L33:
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
	bne	.L33
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r5, .L40
	ldr	r4, .L40+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	add	r0, r5, #48
	mov	lr, pc
	bx	r4
	add	r0, r5, #96
	mov	lr, pc
	bx	r4
	add	r0, r5, #144
	mov	lr, pc
	bx	r4
	add	r0, r5, #192
	mov	lr, pc
	bx	r4
	ldr	r2, .L40+8
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	alien
	.word	updateAlien
	.word	timerShine
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
	beq	.L62
.L43:
	mov	r3, #0
	str	r3, [r0, #24]
.L42:
	bx	lr
.L62:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L43
	ldr	r1, [r0]
	sub	r2, r1, #1
	cmp	r2, #238
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #0
	movle	r2, #0
	cmp	r2, #0
	beq	.L43
	ldr	r2, [r0, #40]
	cmp	r2, #1
	beq	.L63
	cmp	r2, #0
	bne	.L43
	ldr	r2, .L64
	ldr	r2, [r2]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L42
.L53:
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L52
.L52:
	add	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L54:
	sub	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L55:
	add	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L56:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L63:
	ldr	r2, [r0, #36]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L43
.L46:
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L45
.L45:
	add	r1, r1, #2
	str	r1, [r0]
	b	.L43
.L47:
	sub	r1, r1, #2
	str	r1, [r0]
	b	.L43
.L48:
	add	r3, r3, #2
	str	r3, [r0, #4]
	b	.L43
.L49:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	b	.L43
.L65:
	.align	2
.L64:
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
	bne	.L68
	ldr	r3, [r0, #36]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L69
.L71:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L70
.L68:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L83
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L75
.L77:
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L76
.L72:
	ldr	r2, .L83+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L69:
	mov	r1, #1
	mov	r2, #4
	ldr	r3, .L83+8
	str	r1, [r0, #24]
	str	r2, [r3]
	bx	lr
.L70:
	ldr	r2, .L83+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L69
.L73:
	ldr	r2, .L83+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L69
.L74:
	ldr	r2, .L83+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L69
.L78:
	ldr	r2, .L83+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L75:
	mov	r3, #1
	str	r3, [r0, #24]
	bx	lr
.L76:
	ldr	r2, .L83+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L75
.L79:
	ldr	r2, .L83+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L75
.L80:
	ldr	r2, .L83+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L75
.L84:
	.align	2
.L83:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L123
	ldrh	r3, [r4]
	tst	r3, #1
	sub	sp, sp, #16
	beq	.L86
	ldr	r2, .L123+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L116
.L86:
	tst	r3, #512
	beq	.L87
	ldr	r2, .L123+4
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L117
.L87:
	tst	r3, #256
	beq	.L88
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L118
.L88:
	ldr	r3, .L123+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L119
.L89:
	ldr	r3, .L123+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L120
.L90:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L91
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L121
.L91:
	ldr	r3, .L123+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L85
	mov	r7, r3
	ldr	r4, .L123+16
	ldr	r5, .L123+20
	ldr	r8, .L123+24
	ldr	r10, .L123+28
	ldr	r9, .L123+32
	add	r6, r4, #240
.L97:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L122
.L95:
	add	r4, r4, #48
	cmp	r4, r6
	bne	.L97
.L85:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L122:
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
	bx	r8
	cmp	r0, #0
	beq	.L95
	ldr	r2, [r10]
	ldr	r3, [r9]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r7, [r4, #28]
	str	r2, [r10]
	str	r3, [r9]
	b	.L95
.L121:
	ldr	r3, .L123+36
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L91
	mov	r2, #100
	ldr	r1, .L123+12
	str	r2, [r3]
	str	r2, [r1]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L116:
	ldr	r3, .L123+40
	ldr	r5, .L123+44
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
	b	.L86
.L120:
	ldr	r3, .L123+48
	mov	lr, pc
	bx	r3
	b	.L90
.L119:
	ldr	r3, .L123+52
	mov	lr, pc
	bx	r3
	b	.L89
.L117:
	ldr	r3, .L123+56
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L87
.L118:
	ldr	r3, .L123+60
	mov	lr, pc
	bx	r3
	b	.L88
.L124:
	.align	2
.L123:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	immunity
	.word	alien
	.word	player
	.word	collision
	.word	playerHealth
	.word	hit
	.word	immunityWait
	.word	prevMovement
	.word	bullet
	.word	slideLeft
	.word	slideRight
	.word	rotateLeft
	.word	rotateRight
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
	ldr	r3, .L128
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	ldr	r3, .L128+4
	ldr	r3, [r3]
	cmp	r3, #0
	bleq	updatePrincess.part.0
.L126:
	ldr	r4, .L128+8
	ldr	r0, .L128+12
	mov	lr, pc
	bx	r4
	ldr	r0, .L128+16
	mov	lr, pc
	bx	r4
	ldr	r0, .L128+20
	mov	lr, pc
	bx	r4
	ldr	r0, .L128+24
	mov	lr, pc
	bx	r4
	ldr	r0, .L128+28
	mov	lr, pc
	bx	r4
	ldr	r2, .L128+32
	ldr	r3, [r2]
	ldr	r0, .L128+36
	add	r3, r3, #1
	str	r3, [r2]
	bl	updateBullet
	ldr	r0, .L128+40
	bl	updateBullet
	ldr	r0, .L128+44
	bl	updateBullet
	ldr	r0, .L128+48
	bl	updateBullet
	ldr	r0, .L128+52
	pop	{r4, lr}
	b	updateBullet
.L129:
	.align	2
.L128:
	.word	parallax
	.word	immunity
	.word	updateAlien
	.word	alien
	.word	alien+48
	.word	alien+96
	.word	alien+144
	.word	alien+192
	.word	timerShine
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
	ldr	r3, .L132
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	updatePrincess.part.0
.L133:
	.align	2
.L132:
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
	ldr	r2, .L136
	ldr	r1, .L136+4
	ldr	r3, [r2, #28]
	ldr	r0, [r1]
	ldr	ip, .L136+8
	add	r3, r3, r0, lsl #5
	ldr	ip, [ip]
	ldr	r1, [r2, #4]
	lsl	r3, r3, #16
	ldr	r0, [r2]
	lsr	r3, r3, #16
	ldr	r2, .L136+12
	cmp	ip, #0
	orr	r1, r1, #16384
	orrgt	r3, r3, #20480
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L137:
	.align	2
.L136:
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
	ldr	r1, .L141
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mov	r2, #67108864
	mov	r0, #10
	mvn	r3, r3, lsr #17
	strh	r0, [r2, #82]	@ movhi
	strh	r0, [r2, #84]	@ movhi
	ldr	r2, .L141+4
	ldr	r0, [r2]
	ldr	r2, .L141+8
	strh	r3, [r2, #10]	@ movhi
	ldr	r3, [r1]
	cmp	r0, #0
	ldr	r1, .L141+12
	orrgt	r3, r3, #1024
	strh	r3, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L142:
	.align	2
.L141:
	.word	princess
	.word	immunity
	.word	shadowOAM
	.word	4104
	.size	drawPrincess, .-drawPrincess
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
	ldr	r0, .L169
	ldr	r3, .L169+4
	ldr	r2, [r0]
	smull	ip, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r2, r3
	bne	.L168
	ldr	r1, .L169+8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L146
.L168:
	add	r2, r2, #1
.L145:
	str	r2, [r0]
	bl	drawPrincess
	ldr	r2, .L169+12
	mov	r5, #512
	mov	r1, r2
	ldr	r3, .L169+16
	add	ip, r3, #220
.L149:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r4, [r3, #4]
	ldrne	lr, [r3]
	ldrne	r0, [r3, #32]
	add	r3, r3, #44
	strhne	r4, [r1, #16]	@ movhi
	strhne	lr, [r1, #18]	@ movhi
	strhne	r0, [r1, #20]	@ movhi
	strheq	r5, [r1, #16]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L149
	mov	r4, #512
	ldr	r3, .L169+20
	add	ip, r3, #240
.L152:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	strheq	r4, [r2, #56]	@ movhi
	beq	.L151
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #40]
	ldr	r0, [r3, #12]
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3, #8]
	orr	r1, r1, #12288
	orr	r0, r0, #16384
	strh	r1, [r2, #60]	@ movhi
	strh	r0, [r2, #58]	@ movhi
	strh	lr, [r2, #56]	@ movhi
.L151:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L152
	ldr	r2, .L169+24
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r2, .L169+28
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r2, .L169+32
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L146:
	sub	r3, r3, #2
	mov	r2, #1
	str	r3, [r1]
	b	.L145
.L170:
	.align	2
.L169:
	.word	timerShooting
	.word	1717986919
	.word	shootAni
	.word	shadowOAM
	.word	bullet
	.word	alien
	.word	hit
	.word	immunity
	.word	immunityWait
	.size	drawGame, .-drawGame
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
	beq	.L172
	ldr	r3, .L178
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
.L172:
	mov	r2, #512
	ldr	r3, .L178
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L179:
	.align	2
.L178:
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
	beq	.L181
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #40]
	ldr	lr, [r0, #36]
	ldr	r2, [r0, #12]
	ldr	ip, .L187
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
.L181:
	mov	r2, #512
	ldr	r3, .L187
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L188:
	.align	2
.L187:
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
	beq	.L190
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #44]
	ldr	ip, .L196
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
.L190:
	mov	r2, #512
	ldr	r3, .L196
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L197:
	.align	2
.L196:
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
	ldr	r3, .L205
	ldr	r2, [r0, #32]
	ldr	ip, [r3]
	cmp	r2, #0
	add	ip, ip, #1
	str	ip, [r3]
	beq	.L199
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L205+4
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
	ldr	r5, .L205+8
	rsb	ip, ip, ip, lsl #4
	lsr	r2, r2, #2
	sub	ip, r4, ip, lsl #3
	add	r2, r2, r2, lsl #1
	ldr	ip, [r5, ip, lsl #2]
	ldr	r7, .L205+12
	rsb	r2, r2, r2, lsl #4
	sub	r2, lr, r2, lsl #3
	ldr	lr, [r0, #8]
	ldr	r6, [r5, r2, lsl #2]
	ldr	r4, .L205+16
	ldr	r2, [r0, #12]
	ldr	r5, [r5, r3, lsl #2]
	lsl	ip, ip, #16
	ldr	r3, [r7]
	asr	ip, ip, #16
	orr	r0, lr, #768
	ldr	lr, .L205+20
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
.L199:
	mov	r2, #512
	ldr	r3, .L205+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L206:
	.align	2
.L205:
	.word	rotTimer
	.word	381774871
	.word	sin_lut_fixed8
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16403
	.size	drawAsteroids, .-drawAsteroids
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
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shadowAffine, %object
	.size	shadowAffine, 4
shadowAffine:
	.word	shadowOAM
	.ident	"GCC: (devkitARM release 53) 9.1.0"
