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
	ldr	r9, .L31+8
	ldr	r8, .L31+12
	ldr	r7, .L31+16
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
	ldr	r9, .L31+8
	ldr	r8, .L31+28
	ldr	r7, .L31+16
	bne	.L29
.L7:
	cmp	r5, #1
	add	r4, r4, #56
	bne	.L15
	mov	r5, #0
	ldr	r4, .L31+32
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r10, r5
	ldr	r6, .L31+24
	ldr	r9, .L31+8
	ldr	r8, .L31+28
	ldr	r7, .L31+16
	bne	.L30
.L11:
	cmp	r5, #1
	add	r4, r4, #52
	bne	.L16
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
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
	bx	r9
	cmp	r0, #0
	beq	.L3
	ldr	r2, [r8]
	ldr	r3, [r7]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #28]
	str	r2, [r8]
	str	r3, [r7]
	b	.L3
.L16:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #1
	beq	.L11
.L30:
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
	bx	r9
	cmp	r0, #0
	beq	.L11
	ldr	r2, [r8]
	ldr	r3, [r7]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r8]
	str	r3, [r7]
	b	.L11
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
	bx	r9
	cmp	r0, #0
	beq	.L7
	ldr	r2, [r8]
	ldr	r3, [r7]
	sub	r2, r2, #1
	add	r3, r3, #4
	str	r10, [r4, #32]
	str	r2, [r8]
	str	r3, [r7]
	b	.L7
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
	mov	r3, #3072
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L35+8
	mov	lr, pc
	bx	r4
	mov	r3, #3072
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
	mov	ip, #864
	mov	r3, #67108864
	mov	r4, #0
	mov	r5, #1
	mov	r6, #3
	strh	ip, [r3, #80]	@ movhi
	ldr	r0, .L41
	ldr	r1, .L41+4
	ldr	r2, .L41+8
	ldr	r3, .L41+12
	str	r4, [r0]
	str	r4, [r1]
	str	r5, [r2]
	str	r6, [r3]
	bl	dispBackground
	ldr	r2, .L41+16
	ldr	r3, .L41+20
	str	r4, [r2]
	ldr	fp, .L41+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+32
	mov	lr, pc
	bx	r3
	str	r6, [fp]
	ldr	r6, .L41+36
	str	r4, [r6]
	ldr	r6, .L41+40
	str	r4, [r6]
	ldr	r6, .L41+44
	str	r5, [r6]
	ldr	r6, .L41+48
	mov	r7, r5
	str	r5, [r6, #12]
	str	r5, [r6, #8]
	ldr	r5, .L41+52
	mov	r10, #110
	mov	r9, #60
	mov	lr, #16
	mov	r8, #70
	mov	r2, r4
	str	r4, [r6, #28]
	str	r4, [r5, #36]
	mov	r4, #100
	mov	ip, #32
	mov	r1, #8
	mov	r0, #12
	ldr	r3, .L41+56
	stm	r6, {r9, r10}
	str	lr, [r6, #16]
	str	r8, [r5]
	str	r4, [r5, #4]
	str	lr, [r6, #20]
	str	ip, [r5, #8]
	str	ip, [r5, #12]
	add	ip, r3, #220
.L38:
	str	r2, [r3]
	str	r7, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r0, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	stmib	r3, {r2, r7}
	add	r3, r3, #44
	cmp	ip, r3
	bne	.L38
	mov	r8, #28
	ldr	r2, .L41+60
	mov	ip, #150
	mov	r0, #5
	mov	r5, #9
	str	r8, [r2, #20]
	mov	r9, #20
	mov	r8, #36
	str	ip, [r2]
	str	r8, [r2, #36]
	str	r0, [r2, #24]
	str	r5, [r2, #12]
	str	ip, [r2, #16]
	str	ip, [r2, #32]
	str	r9, [r2, #4]
	str	r0, [r2, #8]
	str	r0, [r2, #40]
	str	r5, [r2, #28]
	str	r5, [r2, #44]
	ldr	r2, .L41+64
	str	r0, [r2, #24]
	str	r0, [r2, #8]
	str	r0, [r2, #40]
	mov	r0, #108
	str	r0, [r2, #20]
	mov	r0, #116
	mov	lr, #10
	mov	fp, #100
	str	r0, [r2, #36]
	mov	r0, #21
	str	lr, [r2, #12]
	str	ip, [r2]
	str	lr, [r2, #28]
	str	lr, [r2, #44]
	str	ip, [r2, #16]
	str	ip, [r2, #32]
	str	fp, [r2, #4]
	ldr	r2, .L41+68
	str	r0, [r2, #24]
	mov	r0, #27
	mov	ip, #7
	str	r0, [r2, #60]
	ldr	r0, .L41+72
	mov	r4, #18
	mov	r10, #11
	mov	r6, #4
	str	ip, [r0, #12]
	mov	ip, #50
	str	r10, [r2]
	str	r1, [r2, #12]
	str	r6, [r2, #36]
	str	r4, [r2, #48]
	str	r4, [r0]
	str	r1, [r0, #24]
	str	ip, [r2, #68]
	mov	ip, #90
	str	ip, [r0, #8]
	mov	ip, #98
	ldr	r1, .L41+56
	str	ip, [r0, #20]
	str	r7, [r1, #40]
	mov	ip, #106
	mov	r1, #3
	str	ip, [r0, #32]
	str	r1, [r0, #60]
	mov	ip, #114
	mov	r1, #26
	str	ip, [r0, #44]
	str	r1, [r2, #32]
	mov	ip, #122
	mov	r1, #34
	mov	r3, #140
	str	r1, [r2, #44]
	str	ip, [r0, #56]
	mov	r1, #42
	mov	ip, #130
	str	lr, [r2, #8]
	str	r6, [r0, #36]
	str	r10, [r0, #48]
	str	r4, [r2, #20]
	str	r1, [r2, #56]
	str	r3, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #28]
	str	r3, [r2, #40]
	str	r3, [r2, #52]
	str	r3, [r2, #64]
	str	r3, [r0, #4]
	str	r3, [r0, #16]
	str	r3, [r0, #28]
	str	r3, [r0, #40]
	str	r3, [r0, #52]
	str	r3, [r0, #64]
	ldr	r1, .L41+76
	str	ip, [r0, #68]
	mov	lr, pc
	bx	r1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	immunity
	.word	immunityWait
	.word	princessHealth
	.word	playerHealth
	.word	timer
	.word	initAliens
	.word	livesRemaining
	.word	initAsteroids
	.word	initCar
	.word	movement
	.word	prevMovement
	.word	toggle
	.word	player
	.word	princess
	.word	bullet
	.word	liveCount
	.word	shield
	.word	text3
	.word	text4
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
	.global	initLifeCount
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeCount, %function
initLifeCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #150
	mov	r1, #5
	mov	r2, #9
	mov	r4, #20
	mov	lr, #28
	mov	ip, #36
	ldr	r3, .L58
	str	r4, [r3, #4]
	str	lr, [r3, #20]
	str	r0, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #32]
	str	ip, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	liveCount
	.size	initLifeCount, .-initLifeCount
	.align	2
	.global	initShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShield, %function
initShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #150
	mov	r1, #5
	mov	r2, #10
	mov	r4, #100
	mov	lr, #108
	mov	ip, #116
	ldr	r3, .L62
	str	r4, [r3, #4]
	str	lr, [r3, #20]
	str	r0, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #32]
	str	ip, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	shield
	.size	initShield, .-initShield
	.align	2
	.global	initLifeText
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeText, %function
initLifeText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #21
	mov	r4, #11
	mov	lr, #8
	mov	r0, #4
	mov	r1, #18
	mov	r2, #27
	ldr	r3, .L66
	str	r4, [r3]
	str	lr, [r3, #12]
	str	ip, [r3, #24]
	str	r0, [r3, #36]
	str	r1, [r3, #48]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	text3
	.size	initLifeText, .-initLifeText
	.align	2
	.global	initShieldText
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShieldText, %function
initShieldText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #8
	mov	r4, #18
	mov	lr, #7
	mov	r0, #4
	mov	r1, #11
	mov	r2, #3
	ldr	r3, .L70
	str	r4, [r3]
	str	lr, [r3, #12]
	str	ip, [r3, #24]
	str	r0, [r3, #36]
	str	r1, [r3, #48]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	text4
	.size	initShieldText, .-initShieldText
	.align	2
	.global	lifeText_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	lifeText_setup, %function
lifeText_setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #140
	lsl	r1, r1, #3
	add	r1, r1, #10
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	lifeText_setup, .-lifeText_setup
	.align	2
	.global	shieldText_setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	shieldText_setup, %function
shieldText_setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #140
	lsl	r1, r1, #3
	add	r1, r1, #90
	str	r1, [r0, #8]
	str	r3, [r0, #4]
	bx	lr
	.size	shieldText_setup, .-shieldText_setup
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
	ldr	r5, .L76
	ldr	r4, .L76+4
	mov	r0, r5
	mov	lr, pc
	bx	r4
	add	r0, r5, #48
	mov	lr, pc
	bx	r4
	ldr	r2, .L76+8
	ldr	r5, .L76+12
	ldr	r3, [r2]
	mov	r0, r5
	add	r3, r3, #1
	ldr	r4, .L76+16
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	add	r0, r5, #56
	mov	lr, pc
	bx	r4
	ldr	r2, .L76+20
	ldr	r5, .L76+24
	ldr	r3, [r2]
	mov	r0, r5
	ldr	r4, .L76+28
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	add	r0, r5, #52
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	alien
	.word	updateAlien
	.word	timerShine
	.word	car
	.word	updateCar
	.word	timerShine2
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
	beq	.L98
.L79:
	mov	r3, #0
	str	r3, [r0, #24]
.L78:
	bx	lr
.L98:
	ldr	r3, [r0, #4]
	cmp	r3, #159
	bgt	.L79
	ldr	r1, [r0]
	sub	r2, r1, #1
	cmp	r2, #238
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #0
	movle	r2, #0
	cmp	r2, #0
	beq	.L79
	ldr	r2, [r0, #40]
	cmp	r2, #1
	beq	.L99
	cmp	r2, #0
	bne	.L79
	ldr	r2, .L100
	ldr	r2, [r2]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L78
.L89:
	.word	.L92
	.word	.L91
	.word	.L90
	.word	.L88
.L88:
	add	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L90:
	sub	r1, r1, #2
	str	r1, [r0]
	bx	lr
.L91:
	add	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L92:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	bx	lr
.L99:
	ldr	r2, [r0, #36]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L79
.L82:
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L81
.L81:
	add	r1, r1, #2
	str	r1, [r0]
	b	.L79
.L83:
	sub	r1, r1, #2
	str	r1, [r0]
	b	.L79
.L84:
	add	r3, r3, #2
	str	r3, [r0, #4]
	b	.L79
.L85:
	sub	r3, r3, #2
	str	r3, [r0, #4]
	b	.L79
.L101:
	.align	2
.L100:
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
	ldr	r2, [r0, #24]
	cmp	r2, #0
	bxne	lr
	ldr	r3, [r0, #40]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	beq	.L123
	cmp	r3, #1
	beq	.L118
	pop	{r4, r5, r6, lr}
	bx	lr
.L123:
	ldr	r2, .L124
	ldr	r1, .L124+4
	ldr	r0, .L124+8
	ldr	r5, .L124+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L105
.L107:
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L106
.L108:
	ldr	r2, .L124+16
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r4, {r2, r3}
.L105:
	mov	r1, #1
	mov	r2, #4
	ldr	r3, .L124+20
	str	r1, [r4, #24]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L118:
	mov	r3, r2
	ldr	r1, .L124+4
	ldr	r2, .L124
	ldr	r0, .L124+8
	ldr	r5, .L124+12
	mov	lr, pc
	bx	r5
	ldr	r3, .L124+24
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L111
.L113:
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L112
.L114:
	ldr	r2, .L124+16
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	sub	r3, r3, #8
	stm	r4, {r2, r3}
.L111:
	mov	r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	ldr	r2, .L124+16
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r4, {r2, r3}
	b	.L105
.L109:
	ldr	r2, .L124+16
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L105
.L110:
	ldr	r2, .L124+16
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L105
.L112:
	ldr	r2, .L124+16
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	add	r3, r3, #8
	stm	r4, {r2, r3}
	b	.L111
.L115:
	ldr	r2, .L124+16
	ldm	r2, {r2, r3}
	sub	r3, r3, #8
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L111
.L116:
	ldr	r2, .L124+16
	ldm	r2, {r2, r3}
	add	r3, r3, #8
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L111
.L125:
	.align	2
.L124:
	.word	11025
	.word	8055
	.word	noot5
	.word	playSoundB
	.word	player
	.word	shootAni
	.word	prevMovement
	.size	fireBullet, .-fireBullet
	.align	2
	.global	chooseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	chooseSound, %function
chooseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #0
	ldr	r4, .L128
	ldr	r2, .L128+4
	ldr	r1, .L128+8
	ldr	r0, .L128+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	playSoundB
	.word	11025
	.word	8055
	.word	noot5
	.size	chooseSound, .-chooseSound
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
	ldr	r4, .L186
	ldrh	r3, [r4]
	tst	r3, #1
	sub	sp, sp, #20
	beq	.L131
	ldr	r2, .L186+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L177
.L131:
	tst	r3, #512
	beq	.L132
	ldr	r2, .L186+4
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L178
.L132:
	tst	r3, #256
	beq	.L133
	ldr	r3, .L186+4
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L179
.L133:
	ldr	r3, .L186+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L180
.L134:
	ldr	r3, .L186+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L181
.L135:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L136
	ldr	r3, .L186+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L182
.L136:
	ldr	r3, .L186+12
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L130
	ldr	r4, .L186+16
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r6, r5
	ldr	r7, .L186+20
	ldr	r8, .L186+24
	ldr	r10, .L186+28
	ldr	r9, .L186+32
	ldr	fp, .L186+36
	bne	.L183
.L140:
	cmp	r6, #1
	add	r4, r4, #48
	bne	.L152
	ldr	r4, .L186+40
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r6, #0
	ldr	r7, .L186+20
	ldr	r8, .L186+24
	ldr	r10, .L186+28
	ldr	r9, .L186+32
	ldr	fp, .L186+36
	bne	.L184
.L144:
	cmp	r6, #1
	add	r4, r4, #56
	bne	.L153
	ldr	r4, .L186+44
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r6, .L186+20
	ldr	r7, .L186+24
	ldr	r9, .L186+28
	ldr	r8, .L186+32
	ldr	fp, .L186+36
	ldr	r10, .L186+48
	bne	.L185
.L148:
	cmp	r5, #1
	add	r4, r4, #52
	beq	.L130
.L154:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r5, #1
	beq	.L148
.L185:
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
	beq	.L148
	mov	r3, #0
	ldr	r1, [r9]
	ldr	r0, [r8]
	sub	r1, r1, #1
	add	r0, r0, #4
	str	r1, [r9]
	str	r0, [r8]
	str	r3, [r4, #32]
	mov	r1, #16064
	mov	r0, fp
	ldr	r2, .L186+52
	mov	lr, pc
	bx	r10
	cmp	r5, #1
	add	r4, r4, #52
	bne	.L154
.L130:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L153:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	mov	r6, #1
	beq	.L144
.L184:
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
	beq	.L144
	mov	r3, #0
	ldr	r1, [r10]
	ldr	r0, [r9]
	sub	r1, r1, #1
	add	r0, r0, #4
	str	r1, [r10]
	str	r0, [r9]
	mov	r1, #16064
	mov	r0, fp
	ldr	r2, .L186+52
	str	r3, [r4, #32]
	ldr	ip, .L186+48
	mov	lr, pc
	bx	ip
	b	.L144
.L152:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r6, #1
	beq	.L140
.L183:
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
	beq	.L140
	mov	r3, #0
	ldr	r1, [r10]
	ldr	r0, [r9]
	sub	r1, r1, #1
	add	r0, r0, #4
	str	r1, [r10]
	str	r0, [r9]
	mov	r1, #16064
	mov	r0, fp
	ldr	r2, .L186+52
	str	r3, [r4, #28]
	ldr	ip, .L186+48
	mov	lr, pc
	bx	ip
	b	.L140
.L182:
	ldr	r3, .L186+56
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L136
	mov	r2, #800
	ldr	r1, .L186+12
	str	r2, [r3]
	str	r2, [r1]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L177:
	ldr	r3, .L186+60
	ldr	r5, .L186+64
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
	b	.L131
.L181:
	ldr	r3, .L186+68
	mov	lr, pc
	bx	r3
	b	.L135
.L180:
	ldr	r3, .L186+72
	mov	lr, pc
	bx	r3
	b	.L134
.L179:
	ldr	r3, .L186+76
	mov	lr, pc
	bx	r3
	b	.L133
.L178:
	ldr	r3, .L186+80
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L132
.L187:
	.align	2
.L186:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	immunity
	.word	alien
	.word	player
	.word	collision
	.word	playerHealth
	.word	hit
	.word	fucking_noot_noot
	.word	car
	.word	asteroid
	.word	playSoundB
	.word	11025
	.word	immunityWait
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
	ldr	r3, .L191
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	ldr	r3, .L191+4
	ldr	r3, [r3]
	cmp	r3, #0
	bleq	updatePrincess.part.0
.L189:
	bl	updateEnemies
	ldr	r0, .L191+8
	bl	updateBullet
	ldr	r0, .L191+12
	bl	updateBullet
	ldr	r0, .L191+16
	bl	updateBullet
	ldr	r0, .L191+20
	bl	updateBullet
	ldr	r0, .L191+24
	pop	{r4, lr}
	b	updateBullet
.L192:
	.align	2
.L191:
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
	ldr	r3, .L195
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	updatePrincess.part.0
.L196:
	.align	2
.L195:
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
	ldr	r2, .L199
	ldr	r1, .L199+4
	ldr	r3, [r2, #28]
	ldr	r0, [r1]
	ldr	ip, .L199+8
	add	r3, r3, r0, lsl #5
	ldr	ip, [ip]
	ldr	r1, [r2, #4]
	lsl	r3, r3, #16
	ldr	r0, [r2]
	lsr	r3, r3, #16
	ldr	r2, .L199+12
	cmp	ip, #0
	orr	r1, r1, #16384
	orrgt	r3, r3, #20480
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L200:
	.align	2
.L199:
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
	ldr	r1, .L204
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mov	r2, #67108864
	mov	r0, #10
	mvn	r3, r3, lsr #17
	strh	r0, [r2, #82]	@ movhi
	strh	r0, [r2, #84]	@ movhi
	ldr	r2, .L204+4
	ldr	r0, [r2]
	ldr	r2, .L204+8
	strh	r3, [r2, #10]	@ movhi
	ldr	r3, [r1]
	cmp	r0, #0
	ldr	r1, .L204+12
	orrgt	r3, r3, #1024
	strh	r3, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	bx	lr
.L205:
	.align	2
.L204:
	.word	princess
	.word	immunity
	.word	shadowOAM
	.word	4104
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
	beq	.L207
	ldr	r3, [r0]
	ldr	ip, .L213
	str	lr, [sp, #-4]!
	lsl	r3, r3, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	r0, [r0, #32]
	add	r2, ip, r1, lsl #3
	lsr	r3, r3, #23
	lsl	r1, r1, #3
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L207:
	mov	r2, #512
	ldr	r3, .L213
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L214:
	.align	2
.L213:
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
	beq	.L216
	push	{r4, lr}
	ldr	r3, [r0, #12]
	ldr	r4, [r0, #36]
	ldr	r2, [r0, #40]
	ldr	ip, .L222
	lsl	r3, r3, #23
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	add	r2, r2, r4, lsl #5
	lsr	r3, r3, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #16384
	lsl	r1, r1, #3
	orr	r2, r2, #12288
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L216:
	mov	r2, #512
	ldr	r3, .L222
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L223:
	.align	2
.L222:
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
	beq	.L225
	push	{r4, lr}
	ldr	r3, [r0, #12]
	ldr	r4, [r0, #48]
	ldr	r2, [r0, #44]
	ldr	ip, .L231
	lsl	r3, r3, #23
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	add	r2, r2, r4, lsl #5
	lsr	r3, r3, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #16384
	lsl	r1, r1, #3
	orr	r2, r2, #20480
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L225:
	mov	r2, #512
	ldr	r3, .L231
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L232:
	.align	2
.L231:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L237
	ldr	lr, [r4]
	ldr	r7, .L237+4
	add	lr, lr, #1
	lsr	r3, lr, #3
	umull	r2, r3, r7, r3
	lsr	r3, r3, #2
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #4
	sub	r3, lr, r3, lsl #3
	add	r6, r3, #90
	lsr	ip, r6, #3
	add	r5, r3, #180
	umull	r2, ip, r7, ip
	lsr	r2, r5, #3
	umull	r8, r2, r7, r2
	lsr	ip, ip, #2
	add	ip, ip, ip, lsl #1
	rsb	ip, ip, ip, lsl #4
	lsr	r2, r2, #2
	sub	ip, r6, ip, lsl #3
	add	r2, r2, r2, lsl #1
	ldr	r6, .L237+8
	rsb	r2, r2, r2, lsl #4
	ldr	ip, [r6, ip, lsl #2]
	sub	r2, r5, r2, lsl #3
	ldr	r7, .L237+12
	ldr	r5, [r6, r2, lsl #2]
	ldr	r2, [r6, r3, lsl #2]
	ldr	r6, [r0, #32]
	ldr	r3, [r7]
	lsl	ip, ip, #16
	asr	ip, ip, #16
	cmp	r6, #0
	str	lr, [r4]
	strh	r5, [r3, #14]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	strh	ip, [r3, #30]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	beq	.L234
	add	r2, r0, #8
	ldm	r2, {r2, r3}
	ldr	ip, .L237+16
	ldr	r0, .L237+20
	lsl	lr, r1, #3
	orr	r2, r2, #768
	add	r1, ip, r1, lsl #3
	orr	r3, r3, #16384
	strh	r2, [ip, lr]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L234:
	mov	r2, #512
	ldr	r3, .L237+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L238:
	.align	2
.L237:
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawPlayer
	ldr	r0, .L288
	ldr	r3, .L288+4
	ldr	r2, [r0]
	smull	ip, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r2, r3
	bne	.L284
	ldr	r1, .L288+8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L242
.L284:
	add	r2, r2, #1
.L241:
	ldr	r4, .L288+12
	str	r2, [r0]
	mov	r6, #512
	bl	drawPrincess
	mov	r2, r4
	ldr	r3, .L288+16
	ldr	r5, .L288+20
	add	r0, r3, #220
.L245:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	r1, [r3]
	ldrbne	lr, [r3, #4]	@ zero_extendqisi2
	ldrne	ip, [r3, #32]
	andne	r1, r1, r5
	add	r3, r3, #44
	strhne	r1, [r2, #18]	@ movhi
	strhne	lr, [r2, #16]	@ movhi
	strhne	ip, [r2, #20]	@ movhi
	strheq	r6, [r2, #16]	@ movhi
	cmp	r0, r3
	add	r2, r2, #8
	bne	.L245
	ldr	r3, .L288+24
	ldr	r2, [r3, #32]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r4, #56]	@ movhi
	bne	.L285
.L247:
	ldr	r2, [r3, #88]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r4, #64]	@ movhi
	bne	.L286
.L249:
	ldr	r3, .L288+28
	ldr	r2, [r3, #28]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r4, #72]	@ movhi
	beq	.L251
	ldr	r2, [r3, #12]
	add	r0, r3, #36
	ldm	r0, {r0, r1}
	lsl	r2, r2, #23
	add	r1, r1, r0, lsl #5
	lsr	r2, r2, #23
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	orr	r2, r2, #16384
	orr	r1, r1, #12288
	strh	r2, [r4, #74]	@ movhi
	strh	r1, [r4, #76]	@ movhi
	strh	r0, [r4, #72]	@ movhi
.L251:
	ldr	r2, [r3, #76]
	cmp	r2, #0
	moveq	r3, #512
	strheq	r3, [r4, #80]	@ movhi
	beq	.L253
	ldr	r2, [r3, #60]
	add	r0, r3, #84
	ldm	r0, {r0, r1}
	lsl	r2, r2, #23
	add	r1, r1, r0, lsl #5
	lsr	r2, r2, #23
	ldrb	r0, [r3, #56]	@ zero_extendqisi2
	orr	r2, r2, #16384
	orr	r3, r1, #12288
	strh	r2, [r4, #82]	@ movhi
	strh	r3, [r4, #84]	@ movhi
	strh	r0, [r4, #80]	@ movhi
.L253:
	mov	r1, #11
	ldr	r0, .L288+32
	bl	drawAsteroids
	mov	r1, #12
	ldr	r0, .L288+36
	bl	drawAsteroids
	ldr	r3, .L288+40
	ldr	r1, [r3]
	cmp	r1, #2
	ble	.L254
	ldr	r3, .L288+44
	add	r0, r3, #8
	ldm	r0, {r0, ip}
	add	r0, r0, ip, lsl #5
	ldrb	ip, [r3]	@ zero_extendqisi2
	mov	lr, #1
	strh	ip, [r4, #104]	@ movhi
	mov	ip, #2
	ldr	r2, [r3, #4]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	strh	r2, [r4, #106]	@ movhi
	strh	r0, [r4, #108]	@ movhi
.L255:
	add	r0, r3, lr, lsl #4
	ldr	r2, [r0, #4]
	add	r0, r0, #8
	ldm	r0, {r0, r5}
	ldrb	lr, [r3, lr, lsl #4]	@ zero_extendqisi2
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	add	r2, r0, r5, lsl #5
	strh	lr, [r4, #112]	@ movhi
	strh	r3, [r4, #114]	@ movhi
	strh	r2, [r4, #116]	@ movhi
.L257:
	cmp	r1, #0
	movle	r3, #512
	strhle	r3, [r4, #120]	@ movhi
	ble	.L259
	ldr	r0, .L288+44
	add	r1, r0, ip, lsl #4
	ldr	r3, [r1, #4]
	add	r2, r1, #8
	ldm	r2, {r2, lr}
	ldrb	r1, [r0, ip, lsl #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r2, r2, lr, lsl #5
	strh	r1, [r4, #120]	@ movhi
	strh	r3, [r4, #122]	@ movhi
	strh	r2, [r4, #124]	@ movhi
.L259:
	ldr	r7, .L288+48
	ldr	r3, [r7]
	cmp	r3, #600
	ble	.L260
	mov	ip, #2
	mov	lr, #1
	ldr	r3, .L288+52
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #8]
	lsl	r1, r1, #23
	add	r2, r2, r0, lsl #5
	ldrb	r0, [r3]	@ zero_extendqisi2
	lsr	r1, r1, #23
	orr	r2, r2, #24576
	strh	r1, [r4, #130]	@ movhi
	strh	r2, [r4, #132]	@ movhi
	strh	r0, [r4, #128]	@ movhi
.L261:
	add	r0, r3, lr, lsl #4
	ldmib	r0, {r1, r2, r5}
	ldrb	r0, [r3, lr, lsl #4]	@ zero_extendqisi2
	lsl	r1, r1, #23
	add	r2, r2, r5, lsl #5
	lsr	r1, r1, #23
	orr	r2, r2, #24576
	strh	r0, [r4, #136]	@ movhi
	strh	r1, [r4, #138]	@ movhi
	strh	r2, [r4, #140]	@ movhi
.L263:
	add	r1, r3, ip, lsl #4
	ldrb	r0, [r3, ip, lsl #4]	@ zero_extendqisi2
	add	r3, r1, #8
	ldr	r2, [r1, #4]
	ldm	r3, {r3, ip}
	lsl	r2, r2, #23
	add	r3, r3, ip, lsl #5
	lsr	r2, r2, #23
	orr	r3, r3, #24576
	strh	r0, [r4, #144]	@ movhi
	strh	r2, [r4, #146]	@ movhi
	strh	r3, [r4, #148]	@ movhi
.L265:
	mov	r4, #19
	ldr	r5, .L288+56
	ldr	r6, .L288+60
.L266:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #25
	add	r5, r5, #12
	bne	.L266
	ldr	r5, .L288+64
.L267:
	mov	r1, r4
	mov	r0, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #31
	add	r5, r5, #12
	bne	.L267
	ldr	r2, .L288+68
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r3, [r7]
	ldr	r2, .L288+72
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r7]
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L260:
	mov	r2, #512
	cmp	r3, #400
	strh	r2, [r4, #128]	@ movhi
	bgt	.L287
	cmp	r3, #100
	strh	r2, [r4, #136]	@ movhi
	strhle	r2, [r4, #144]	@ movhi
	ble	.L265
	mov	ip, #0
	ldr	r3, .L288+52
	b	.L263
.L254:
	mov	r3, #512
	movne	ip, #0
	strh	r3, [r4, #104]	@ movhi
	strhne	r3, [r4, #112]	@ movhi
	bne	.L257
	mov	ip, #1
	mov	lr, #0
	ldr	r3, .L288+44
	b	.L255
.L286:
	ldr	r2, [r3, #68]
	ldr	r0, [r3, #104]
	ldr	r1, [r3, #100]
	lsl	r2, r2, #23
	add	r1, r1, r0, lsl #5
	lsr	r2, r2, #23
	ldrb	r0, [r3, #64]	@ zero_extendqisi2
	orr	r2, r2, #16384
	orr	r3, r1, #20480
	strh	r2, [r4, #66]	@ movhi
	strh	r3, [r4, #68]	@ movhi
	strh	r0, [r4, #64]	@ movhi
	b	.L249
.L285:
	ldr	r2, [r3, #12]
	ldr	r0, [r3, #48]
	ldr	r1, [r3, #44]
	lsl	r2, r2, #23
	add	r1, r1, r0, lsl #5
	lsr	r2, r2, #23
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	orr	r2, r2, #16384
	orr	r1, r1, #20480
	strh	r2, [r4, #58]	@ movhi
	strh	r1, [r4, #60]	@ movhi
	strh	r0, [r4, #56]	@ movhi
	b	.L247
.L242:
	sub	r3, r3, #2
	mov	r2, #1
	str	r3, [r1]
	b	.L241
.L287:
	mov	ip, #1
	mov	lr, #0
	ldr	r3, .L288+52
	b	.L261
.L289:
	.align	2
.L288:
	.word	timerShooting
	.word	1717986919
	.word	shootAni
	.word	shadowOAM
	.word	bullet
	.word	511
	.word	car
	.word	alien
	.word	asteroid
	.word	asteroid+52
	.word	playerHealth
	.word	liveCount
	.word	immunity
	.word	shield
	.word	text3
	.word	drawQuoteOne
	.word	text4
	.word	hit
	.word	immunityWait
	.size	drawGame, .-drawGame
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #4]
	ldr	r4, [r0, #12]
	ldr	r2, [r0, #8]
	ldr	ip, .L292
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r0, ip, r1, lsl #3
	add	r2, r2, r4, lsl #5
	lsr	r3, r3, #23
	lsl	r1, r1, #3
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L293:
	.align	2
.L292:
	.word	shadowOAM
	.size	drawLives, .-drawLives
	.align	2
	.global	drawShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShield, %function
drawShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, [r0, #4]
	ldr	r4, [r0, #12]
	ldr	r3, [r0, #8]
	ldr	ip, .L296
	ldrb	lr, [r0]	@ zero_extendqisi2
	add	r3, r3, r4, lsl #5
	lsl	r2, r2, #23
	add	r0, ip, r1, lsl #3
	lsr	r2, r2, #23
	lsl	r1, r1, #3
	orr	r3, r3, #24576
	strh	lr, [ip, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L297:
	.align	2
.L296:
	.word	shadowOAM
	.size	drawShield, .-drawShield
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
	.comm	text4,72,4
	.comm	text3,72,4
	.comm	shield,48,4
	.comm	liveCount,48,4
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
