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
	.file	"enemies.c"
	.text
	.align	2
	.global	initAliens
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAliens, %function
initAliens:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #16
	mov	r2, #0
	mov	r0, #1
	mov	r4, #20
	mov	lr, #50
	mov	ip, #17
	ldr	r3, .L4
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	str	r2, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	alien
	.size	initAliens, .-initAliens
	.align	2
	.global	initCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCar, %function
initCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	r4, #20
	mov	lr, #50
	mov	ip, #21
	ldr	r3, .L8
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #84]
	str	r1, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	car
	.size	initCar, .-initCar
	.align	2
	.global	initAsteroids
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAsteroids, %function
initAsteroids:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	r4, #20
	mov	lr, #50
	mov	ip, #19
	ldr	r3, .L12
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #84]
	str	r1, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	asteroid
	.size	initAsteroids, .-initAsteroids
	.align	2
	.global	initAlienLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAlienLaser, %function
initAlienLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #20
	mov	r1, #16
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L18
.L15:
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	ip, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r3, #4]
	str	r2, [r3], #32
	add	r2, r2, #30
	cmp	r2, #170
	bne	.L15
	bx	lr
.L19:
	.align	2
.L18:
	.word	alienLaser
	.size	initAlienLaser, .-initAlienLaser
	.align	2
	.global	alienMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	alienMovement, %function
alienMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	alienMovement, .-alienMovement
	.align	2
	.global	carMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	carMovement, %function
carMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	carMovement, .-carMovement
	.align	2
	.global	asteroidMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	asteroidMovement, %function
asteroidMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	asteroidMovement, .-asteroidMovement
	.align	2
	.global	alienLaserMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	alienLaserMovement, %function
alienLaserMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	alienLaserMovement, .-alienLaserMovement
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r9, #0
	ldr	r4, .L50
	ldr	r1, [r0, #8]
	ldr	r7, .L50+4
	ldr	r8, .L50+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L27:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L48
.L25:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L27
	cmp	r1, #159
	bgt	.L28
	ldr	ip, .L50+12
	ldr	r3, [ip]
.L29:
	ldr	r2, .L50+16
	smull	r0, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	cmp	r3, r2, lsl #1
	ldreq	r0, [r5, #12]
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	ldr	r0, .L50+20
	smull	lr, r0, r3, r0
	asr	r2, r3, #31
	rsb	r2, r2, r0, asr #1
	add	r2, r2, r2, lsl #2
	subs	r2, r3, r2
	beq	.L49
.L34:
	add	r3, r3, #1
	str	r3, [ip]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L48:
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #24]
	addne	r3, r3, #1
	strne	r9, [r5, #32]
	strne	r3, [r8]
	ldr	r1, [r5, #8]
	b	.L25
.L28:
	ldr	r3, [r5, #12]
	cmp	r3, #239
	bgt	.L32
	ldr	ip, .L50+12
	ldr	r3, [ip]
	tst	r3, #1
	beq	.L29
.L32:
	mov	r1, #16
	mov	r2, #0
	mov	r0, #1
	mov	ip, #17
	mov	r4, #20
	mov	lr, #50
	ldr	r3, .L50+24
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #52]
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #8]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	str	r2, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L49:
	ldr	r0, [r5, #40]
	cmp	r0, #6
	addne	r2, r0, #2
	add	r1, r1, #1
	str	r1, [r5, #8]
	str	r2, [r5, #40]
	b	.L34
.L51:
	.align	2
.L50:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	715827883
	.word	1717986919
	.word	alien
	.size	updateAlien, .-updateAlien
	.align	2
	.global	updateCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar, %function
updateCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r9, #0
	ldr	r4, .L71
	ldr	r1, [r0, #8]
	ldr	r7, .L71+4
	ldr	r8, .L71+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L55:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L69
.L53:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L55
	cmp	r1, #159
	ble	.L56
	ldr	r3, [r5, #12]
	cmp	r3, #239
	bgt	.L70
.L56:
	ldr	r0, .L71+12
	ldr	r2, [r0]
	tst	r2, #1
	ldreq	r3, [r5, #12]
	addeq	r3, r3, #1
	streq	r3, [r5, #12]
	ldr	r3, .L71+16
	smull	ip, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r2, r3
	addeq	r1, r1, #1
	add	r2, r2, #1
	streq	r1, [r5, #8]
	str	r2, [r0]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L69:
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #24]
	addne	r3, r3, #1
	strne	r9, [r5, #32]
	strne	r3, [r8]
	ldr	r1, [r5, #8]
	b	.L53
.L70:
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	ip, #21
	mov	r4, #20
	mov	lr, #50
	ldr	r3, .L71+20
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #84]
	str	r1, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1431655766
	.word	car
	.size	updateCar, .-updateCar
	.align	2
	.global	updateAsteroid
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAsteroid, %function
updateAsteroid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r9, #0
	ldr	r4, .L92
	ldr	r1, [r0, #8]
	ldr	r7, .L92+4
	ldr	r8, .L92+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L76:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L90
.L74:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L76
	cmp	r1, #159
	ble	.L77
	ldr	r3, [r5, #12]
	cmp	r3, #239
	bgt	.L91
.L77:
	ldr	r0, .L92+12
	ldr	r2, [r0]
	tst	r2, #3
	ldreq	r3, [r5, #12]
	addeq	r3, r3, #1
	streq	r3, [r5, #12]
	ldr	r3, .L92+16
	smull	ip, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r2, r3
	addeq	r1, r1, #1
	add	r2, r2, #1
	streq	r1, [r5, #8]
	str	r2, [r0]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L90:
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #24]
	addne	r3, r3, #1
	strne	r9, [r5, #32]
	strne	r3, [r8]
	ldr	r1, [r5, #8]
	b	.L74
.L91:
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	ip, #19
	mov	r4, #20
	mov	lr, #50
	ldr	r3, .L92+20
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #48]
	str	r0, [r3, #80]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #84]
	str	r1, [r3, #56]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1431655766
	.word	asteroid
	.size	updateAsteroid, .-updateAsteroid
	.comm	timer,4,4
	.comm	enemiesRemaining,4,4
	.comm	car,96,4
	.comm	asteroid,96,4
	.comm	alienLaser,160,4
	.comm	alien,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
