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
	push	{r4, r5, lr}
	mov	r1, #16
	mov	r5, #1
	mov	r2, #0
	mov	r4, #17
	mov	lr, #3
	mov	ip, #10
	ldr	r3, .L6
	add	r0, r3, #240
.L2:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r5, [r3]
	str	r1, [r3, #4]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r4, [r3, #40]
	str	lr, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L2
	pop	{r4, r5, lr}
	bx	lr
.L7:
	.align	2
.L6:
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
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
	ldr	r3, .L14
.L11:
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
	bne	.L11
	bx	lr
.L15:
	.align	2
.L14:
	.word	alienLaser
	.size	initAlienLaser, .-initAlienLaser
	.align	2
	.global	resetAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetAlien, %function
resetAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	resetAlien, .-resetAlien
	.align	2
	.global	resetCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetCar, %function
resetCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	resetCar, .-resetCar
	.align	2
	.global	resetAsteroid
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetAsteroid, %function
resetAsteroid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	resetAsteroid, .-resetAsteroid
	.align	2
	.global	resetAlienLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetAlienLaser, %function
resetAlienLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	resetAlienLaser, .-resetAlienLaser
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
	ldr	r4, .L71
	ldr	r1, [r0, #8]
	ldr	r7, .L71+4
	ldr	r8, .L71+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L23:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L70
.L21:
	add	r4, r4, #44
	cmp	r6, r4
	bne	.L23
	ldr	r2, .L71+12
	ldr	r3, .L71+16
	ldr	r2, [r2]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	bne	.L24
	ldr	r2, [r5, #36]
	cmp	r2, #6
	addne	r2, r2, #2
	streq	r3, [r5, #36]
	strne	r2, [r5, #36]
.L24:
	ldr	r2, .L71+20
	cmp	r1, #143
	ldr	r0, [r2]
	ldr	r3, [r5, #44]
	bgt	.L26
	ldr	ip, [r5, #12]
	cmp	ip, #223
	bgt	.L26
	ldr	lr, [r5, #28]
	cmp	lr, #0
	beq	.L26
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L27
.L29:
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L28
.L26:
	mov	ip, #0
	ldr	r2, .L71+24
	smull	lr, r1, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #4
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	str	ip, [r5, #28]
	sub	r2, r0, r2, lsl #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L40
.L42:
	.word	.L45
	.word	.L44
	.word	.L43
	.word	.L41
.L70:
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
	strne	r9, [r5, #28]
	strne	r3, [r8]
	ldr	r1, [r5, #8]
	b	.L21
.L41:
	mov	r1, #100
	mov	r3, #239
	str	r1, [r5, #8]
	str	r3, [r5, #12]
.L40:
	cmp	r2, #0
	moveq	r3, #1
	streq	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L43:
	mov	r1, #10
	mov	r3, #0
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L40
.L45:
	mov	r1, #0
	mov	r3, #10
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L40
.L44:
	mov	r1, #159
	mov	r3, #20
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L40
.L32:
	tst	r0, #3
	ldr	r3, .L71+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L27
.L67:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L27:
	add	r0, r0, #1
	str	r0, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L28:
	tst	r0, #3
	subeq	ip, ip, #1
	streq	ip, [r5, #12]
.L38:
	ldr	r3, .L71+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L27
.L31:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	b	.L38
.L30:
	tst	r0, #3
	ldr	r3, .L71+28
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L27
	b	.L67
.L72:
	.align	2
.L71:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timerShine
	.word	1717986919
	.word	timer
	.word	1374389535
	.word	1431655766
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
	ldr	r4, .L97
	ldr	r1, [r0, #8]
	ldr	r7, .L97+4
	ldr	r8, .L97+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L76:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L95
.L74:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L76
	ldr	r2, .L97+12
	cmp	r1, #0
	ldr	r3, [r2]
	ble	.L77
	ldr	r0, [r5, #12]
	cmp	r0, #0
	ble	.L77
	ldr	ip, [r5, #32]
	cmp	ip, #0
	bne	.L96
.L77:
	ldr	r2, .L97+16
	ldr	lr, .L97+20
	mla	r3, lr, r3, r2
	cmp	r2, r3, ror #1
	mov	ip, #0
	mov	r0, #152
	mov	r1, #60
	movcs	r3, #1
	str	ip, [r5, #32]
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	strcs	r3, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L95:
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
.L96:
	tst	r3, #1
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	ldr	r0, .L97+24
	smull	lr, ip, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #2
	cmp	r3, r0
	ldreq	r0, [r5, #12]
	subeq	r0, r0, #1
	streq	r0, [r5, #12]
	tst	r3, #3
	subeq	r1, r1, #1
	add	r3, r3, #1
	streq	r1, [r5, #8]
	str	r3, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L98:
	.align	2
.L97:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	85899344
	.word	-1030792151
	.word	1717986919
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
	ldr	r4, .L125
	ldr	r1, [r0, #8]
	ldr	r7, .L125+4
	ldr	r8, .L125+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L102:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L123
.L100:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L102
	ldr	r2, .L125+12
	cmp	r1, #0
	ldr	r3, [r2]
	ble	.L103
	ldr	ip, [r5, #12]
	cmp	ip, #0
	ble	.L103
	ldr	r0, [r5, #32]
	cmp	r0, #0
	bne	.L124
.L103:
	mov	r2, #0
	ldr	r1, [r5, #48]
	cmp	r1, r2
	moveq	r1, #124
	movne	r1, #50
	str	r2, [r5, #32]
	moveq	r2, #50
	movne	r2, #224
	str	r1, [r5, #8]
	str	r2, [r5, #12]
	ldr	r1, .L125+16
	ldr	r2, .L125+20
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	bcs	.L110
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L123:
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
	b	.L100
.L110:
	mov	r3, #1
	str	r3, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L124:
	ldr	r0, .L125+24
	smull	lr, r0, r3, r0
	sub	r0, r0, r3, asr #31
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	ldr	ip, .L125+28
	smull	lr, ip, r3, ip
	asr	r0, r3, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r0, [r5, #12]
	subeq	r0, r0, #1
	streq	r0, [r5, #12]
	tst	r3, #3
	subeq	r1, r1, #1
	add	r3, r3, #1
	streq	r1, [r5, #8]
	str	r3, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	-1030792151
	.word	85899344
	.word	1431655766
	.word	954437177
	.size	updateAsteroid, .-updateAsteroid
	.comm	timerShine,4,4
	.comm	timer,4,4
	.comm	enemiesRemaining,4,4
	.comm	car,0,4
	.comm	asteroid,0,4
	.comm	alienLaser,160,4
	.comm	alien,240,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
