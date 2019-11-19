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
	mov	r5, #1
	mov	r4, #0
	mov	r10, #60
	mov	fp, #110
	ldr	r2, .L10
	ldr	r3, .L10+4
	str	r5, [r2]
	str	r5, [r3]
	bl	dispBackground
	ldr	r3, .L10+8
	ldr	r7, .L10+12
	str	r4, [r3]
	mov	lr, pc
	bx	r7
	ldr	ip, .L10+16
	str	r5, [ip]
	ldr	ip, .L10+20
	str	r4, [ip]
	ldr	ip, .L10+24
	str	r4, [ip]
	ldr	ip, .L10+28
	mov	r1, r5
	str	r5, [ip, #12]
	str	r5, [ip, #8]
	ldr	r5, .L10+32
	stm	ip, {r10, fp}
	str	r4, [ip, #28]
	mov	r2, r4
	mov	r10, #100
	str	r4, [r5, #36]
	mov	r4, #70
	mov	r9, #16
	mov	r8, #32
	ldr	r6, .L10+36
	stm	r5, {r4, r10}
	mov	r4, #3
	mov	r0, #8
	mov	r3, r6
	mov	lr, #12
	str	r9, [ip, #16]
	str	r9, [ip, #20]
	ldr	ip, .L10+40
	str	r8, [r5, #8]
	str	r8, [r5, #12]
	str	r4, [ip]
	add	ip, r6, #220
.L7:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	add	r3, r3, #44
	cmp	r3, ip
	bne	.L7
	str	r1, [r6, #40]
	mov	lr, pc
	bx	r7
	ldr	r3, .L10+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+48
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	enemiesKilled
	.word	princessHealth
	.word	timer
	.word	initAliens
	.word	toggle
	.word	movement
	.word	prevMovement
	.word	player
	.word	princess
	.word	bullet
	.word	livesRemaining
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
	mov	r2, #32
	mov	ip, #0
	mov	r0, #70
	mov	r1, #100
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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r0, #1
	mov	r1, #8
	mov	lr, #12
	ldr	r3, .L23
	add	ip, r3, #220
.L20:
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
	bne	.L20
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r6, .L27
	ldr	r4, .L27+4
	mov	r0, r6
	ldr	r5, .L27+8
	mov	lr, pc
	bx	r4
	add	r0, r6, #48
	mov	lr, pc
	bx	r4
	mov	r0, r5
	ldr	r4, .L27+12
	mov	lr, pc
	bx	r4
	add	r0, r5, #48
	mov	lr, pc
	bx	r4
	ldr	r0, .L27+16
	ldr	r3, .L27+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	alien
	.word	updateAlien
	.word	car
	.word	updateCar
	.word	asteroid
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
	beq	.L49
.L30:
	mov	r3, #0
	str	r3, [r0, #24]
.L29:
	bx	lr
.L49:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L30
	ldr	r1, [r0]
	sub	r2, r1, #1
	cmp	r2, #238
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #0
	movle	r2, #0
	cmp	r2, #0
	beq	.L30
	ldr	r2, [r0, #40]
	cmp	r2, #1
	beq	.L50
	cmp	r2, #0
	bne	.L30
	ldr	r2, .L51
	ldr	r2, [r2]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L29
.L40:
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L39
.L39:
	add	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L41:
	sub	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L42:
	add	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L43:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L50:
	ldr	r2, [r0, #36]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L30
.L33:
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L32
.L32:
	add	r1, r1, #2
	str	r1, [r0]
	b	.L30
.L34:
	sub	r1, r1, #2
	str	r1, [r0]
	b	.L30
.L35:
	add	r3, r3, #2
	str	r3, [r0, #4]
	b	.L30
.L36:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	b	.L30
.L52:
	.align	2
.L51:
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
	bne	.L55
	ldr	r3, [r0, #36]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L56
.L58:
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L57
.L55:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L70
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L62
.L64:
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L63
.L59:
	ldr	r2, .L70+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L56:
	mov	r1, #1
	mov	r2, #4
	ldr	r3, .L70+8
	str	r1, [r0, #24]
	str	r2, [r3]
	bx	lr
.L57:
	ldr	r2, .L70+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L56
.L60:
	ldr	r2, .L70+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L56
.L61:
	ldr	r2, .L70+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L56
.L65:
	ldr	r2, .L70+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r0, {r2, r3}
.L62:
	mov	r3, #1
	str	r3, [r0, #24]
	bx	lr
.L63:
	ldr	r2, .L70+4
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r0, {r2, r3}
	b	.L62
.L66:
	ldr	r2, .L70+4
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L62
.L67:
	ldr	r2, .L70+4
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r0]
	str	r2, [r0, #4]
	b	.L62
.L71:
	.align	2
.L70:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L93
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L73
	ldr	r2, .L93+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L88
.L73:
	tst	r3, #512
	beq	.L74
	ldr	r2, .L93+4
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L89
.L74:
	tst	r3, #256
	beq	.L75
	ldr	r3, .L93+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L90
.L75:
	ldr	r3, .L93+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L91
.L76:
	ldr	r3, .L93+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L92
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	ldr	r3, .L93+12
	ldr	r5, .L93+16
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
	b	.L73
.L92:
	ldr	r3, .L93+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	b	.L76
.L90:
	ldr	r3, .L93+28
	mov	lr, pc
	bx	r3
	b	.L75
.L89:
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L74
.L94:
	.align	2
.L93:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	prevMovement
	.word	bullet
	.word	slideLeft
	.word	slideRight
	.word	rotateRight
	.word	rotateLeft
	.size	updatePlayer, .-updatePlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L123
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r5, #0
	ldr	r6, .L123+4
	ldr	r8, .L123+8
	ldr	r7, .L123+12
	sub	sp, sp, #16
	bne	.L119
.L97:
	cmp	r5, #1
	add	r4, r4, #48
	bne	.L109
	ldr	r4, .L123+16
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #0
	ldr	r6, .L123+4
	ldr	r8, .L123+8
	ldr	r7, .L123+12
	bne	.L120
.L101:
	cmp	r5, #1
	add	r4, r4, #48
	beq	.L121
.L110:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #1
	beq	.L101
.L120:
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
	bx	r8
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, [r7]
	subne	r3, r3, #1
	strne	r2, [r4, #32]
	strne	r3, [r7]
	cmp	r5, #1
	add	r4, r4, #48
	bne	.L110
.L121:
	ldr	r4, .L123+20
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L95
	ldr	r0, .L123+4
	ldr	r5, [r4, #20]
	ldr	r6, [r4, #16]
	ldr	lr, [r4, #8]
	ldr	ip, [r4, #12]
	add	r2, r0, #8
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	ldr	r5, .L123+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L122
.L95:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L109:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r5, #1
	beq	.L97
.L119:
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
	bx	r8
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, [r7]
	subne	r3, r3, #1
	strne	r3, [r7]
	strne	r2, [r4, #28]
	b	.L97
.L122:
	mov	r1, #0
	ldr	r2, .L123+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #32]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	alien
	.word	princess
	.word	collision
	.word	princessHealth
	.word	car
	.word	asteroid
	.size	updatePrincess, .-updatePrincess
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
	ldr	r4, .L127
	ldr	r3, .L127+4
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	bl	updatePrincess
	bl	updateEnemies
	mov	r0, r4
	bl	updateBullet
	add	r0, r4, #44
	bl	updateBullet
	add	r0, r4, #88
	bl	updateBullet
	add	r0, r4, #132
	bl	updateBullet
	add	r0, r4, #176
	pop	{r4, lr}
	b	updateBullet
.L128:
	.align	2
.L127:
	.word	bullet
	.word	parallax
	.size	updateGame, .-updateGame
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
	ldr	r0, .L130
	ldr	r3, .L130+4
	ldr	r1, [r0, #4]
	ldr	ip, [r3]
	ldr	r2, [r0, #28]
	ldr	r3, .L130+8
	ldr	r0, [r0]
	orr	r1, r1, #16384
	add	r2, r2, ip, lsl #5
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L131:
	.align	2
.L130:
	.word	player
	.word	shootAni
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
	ldr	r2, .L133
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r1, .L133+4
	ldr	r2, .L133+8
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L134:
	.align	2
.L133:
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
	beq	.L136
	ldr	r3, .L142
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
.L136:
	mov	r2, #512
	ldr	r3, .L142
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L143:
	.align	2
.L142:
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
	beq	.L145
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #40]
	ldr	lr, [r0, #36]
	ldr	r2, [r0, #12]
	ldr	ip, .L151
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
.L145:
	mov	r2, #512
	ldr	r3, .L151
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L152:
	.align	2
.L151:
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
	beq	.L154
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #44]
	ldr	ip, .L160
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
.L154:
	mov	r2, #512
	ldr	r3, .L160
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L161:
	.align	2
.L160:
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
	ldr	r2, .L169
	ldr	ip, [r0, #32]
	ldr	r3, [r2]
	cmp	ip, #0
	add	r3, r3, #1
	str	r3, [r2]
	beq	.L163
	push	{r4, lr}
	ldr	lr, .L169+4
	lsr	ip, r3, #3
	umull	r2, ip, lr, ip
	lsr	ip, ip, #2
	add	ip, ip, ip, lsl #1
	rsb	ip, ip, ip, lsl #4
	sub	r3, r3, ip, lsl #3
	add	r3, r3, #90
	lsr	r2, r3, #3
	umull	ip, r2, lr, r2
	lsr	r2, r2, #2
	add	r2, r2, r2, lsl #1
	ldr	ip, .L169+8
	rsb	r2, r2, r2, lsl #4
	sub	r3, r3, r2, lsl #3
	ldr	r3, [ip, r3, lsl #2]
	ldr	r2, .L169+12
	ldr	lr, [r0, #8]
	ldr	ip, [r0, #12]
	ldr	r2, [r2]
	ldr	r0, [r0, #44]
	ldr	r4, .L169+16
	lsl	r3, r3, #16
	asr	r3, r3, #16
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	strh	r3, [r2, #30]	@ movhi
	orr	lr, lr, #768
	lsl	r3, r1, #3
	orr	ip, ip, #16384
	add	r1, r4, r1, lsl #3
	orr	r0, r0, #16384
	strh	lr, [r4, r3]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L163:
	mov	r2, #512
	ldr	r3, .L169+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L170:
	.align	2
.L169:
	.word	rotTimer
	.word	381774871
	.word	sin_lut_fixed8
	.word	.LANCHOR0
	.word	shadowOAM
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
	ldr	ip, .L188
	ldr	r3, .L188+4
	ldr	r2, [ip]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	push	{r4, r5, r6, lr}
	rsb	r3, r3, r1, asr #1
	ldr	r4, .L188+8
	add	r3, r3, r3, lsl #2
	ldr	r5, [r4]
	sub	r1, r2, r3
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	cmp	r5, #0
	moveq	r3, #0
	ldr	r1, .L188+12
	ldr	r0, [r1, #4]
	cmp	r3, #0
	ldr	r6, [r1]
	orr	r3, r0, #16384
	ldr	lr, [r1, #28]
	addeq	r0, r2, #1
	ldr	r1, .L188+16
	ldr	r2, .L188+20
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	add	lr, lr, r5, lsl #5
	strh	lr, [r1, #4]	@ movhi
	ldr	lr, [r2]
	ldr	r2, .L188+24
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #12]	@ movhi
	strh	r6, [r1]	@ movhi
	strh	lr, [r1, #8]	@ movhi
	ldr	r1, .L188+16
	subne	r5, r5, #2
	movne	r0, #1
	strne	r5, [r4]
	mov	r2, r1
	mov	r5, #512
	ldr	r3, .L188+28
	str	r0, [ip]
	add	ip, r3, #220
.L176:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r4, [r3, #4]
	ldrne	lr, [r3]
	ldrne	r0, [r3, #32]
	add	r3, r3, #44
	strhne	r4, [r2, #16]	@ movhi
	strhne	lr, [r2, #18]	@ movhi
	strhne	r0, [r2, #20]	@ movhi
	strheq	r5, [r2, #16]	@ movhi
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L176
	ldr	r3, .L188+32
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
	ldr	r3, .L188+36
	ldr	r2, [r3, #28]
	orrne	r0, r0, #16384
	strhne	r0, [r1, #66]	@ movhi
	strhne	ip, [r1, #64]	@ movhi
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r1, #72]	@ movhi
	bne	.L187
.L182:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r1, #80]	@ movhi
	beq	.L184
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
.L184:
	mov	r1, #11
	ldr	r0, .L188+40
	pop	{r4, r5, r6, lr}
	b	drawAsteroids
.L187:
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
	b	.L182
.L189:
	.align	2
.L188:
	.word	timerShooting
	.word	1717986919
	.word	shootAni
	.word	player
	.word	shadowOAM
	.word	princess
	.word	4104
	.word	bullet
	.word	car
	.word	alien
	.word	asteroid
	.size	drawGame, .-drawGame
	.comm	rotTimer,4,4
	.comm	timerShooting,4,4
	.comm	shootAni,4,4
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
	.comm	sin_lut_fixed8,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shadowAffine, %object
	.size	shadowAffine, 4
shadowAffine:
	.word	shadowOAM
	.ident	"GCC: (devkitARM release 53) 9.1.0"
