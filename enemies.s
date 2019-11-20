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
	mov	r2, #0
	mov	r1, #16
	mov	r4, #1
	mov	lr, #17
	mov	ip, #3
	mov	r0, #10
	ldr	r3, .L4
	str	r4, [r3]
	str	r4, [r3, #48]
	str	lr, [r3, #40]
	str	lr, [r3, #88]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #52]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #8]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	r2, [r3, #84]
	str	r2, [r3, #92]
	str	r2, [r3, #56]
	str	ip, [r3, #24]
	str	ip, [r3, #72]
	str	r0, [r3, #12]
	str	r0, [r3, #60]
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
	push	{r4, r5, lr}
	mov	r2, #16
	mov	r1, #1
	mov	lr, #0
	mov	r5, #20
	mov	r4, #40
	mov	ip, #21
	mov	r0, #140
	ldr	r3, .L8
	str	r5, [r3, #12]
	str	r4, [r3, #60]
	str	lr, [r3, #36]
	str	lr, [r3, #84]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r1, [r3]
	str	r1, [r3, #32]
	str	r1, [r3, #48]
	str	r1, [r3, #80]
	str	ip, [r3, #44]
	str	ip, [r3, #92]
	str	r0, [r3, #8]
	str	r0, [r3, #56]
	pop	{r4, r5, lr}
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
	push	{r4, r5, lr}
	mov	r1, #16
	mov	r2, #1
	mov	r5, #0
	mov	r4, #19
	mov	lr, #50
	mov	ip, #224
	ldr	r3, .L14
	add	r0, r3, #156
.L11:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3]
	str	r1, [r3, #4]
	str	r2, [r3, #32]
	str	r5, [r3, #36]
	str	r4, [r3, #44]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #48]
	add	r3, r3, #52
	cmp	r3, r0
	bne	.L11
	pop	{r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	ldr	r3, .L20
.L17:
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
	bne	.L17
	bx	lr
.L21:
	.align	2
.L20:
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
	ldr	r4, .L77
	ldr	r1, [r0, #8]
	ldr	r7, .L77+4
	ldr	r8, .L77+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L29:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L76
.L27:
	add	r4, r4, #44
	cmp	r6, r4
	bne	.L29
	ldr	r2, .L77+12
	ldr	r3, .L77+16
	ldr	r2, [r2]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	bne	.L30
	ldr	r2, [r5, #36]
	cmp	r2, #6
	addne	r2, r2, #2
	streq	r3, [r5, #36]
	strne	r2, [r5, #36]
.L30:
	ldr	r2, .L77+20
	cmp	r1, #143
	ldr	r0, [r2]
	ldr	r3, [r5, #44]
	bgt	.L32
	ldr	ip, [r5, #12]
	cmp	ip, #223
	bgt	.L32
	ldr	lr, [r5, #28]
	cmp	lr, #0
	beq	.L32
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L33
.L35:
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L34
.L32:
	mov	ip, #0
	ldr	r2, .L77+24
	smull	lr, r1, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #4
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	str	ip, [r5, #28]
	sub	r2, r0, r2, lsl #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L46
.L48:
	.word	.L51
	.word	.L50
	.word	.L49
	.word	.L47
.L76:
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
	b	.L27
.L47:
	mov	r1, #100
	mov	r3, #239
	str	r1, [r5, #8]
	str	r3, [r5, #12]
.L46:
	cmp	r2, #0
	moveq	r3, #1
	streq	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L49:
	mov	r1, #10
	mov	r3, #0
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L46
.L51:
	mov	r1, #0
	mov	r3, #10
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L46
.L50:
	mov	r1, #159
	mov	r3, #20
	str	r1, [r5, #8]
	str	r3, [r5, #12]
	b	.L46
.L38:
	tst	r0, #3
	ldr	r3, .L77+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L33
.L73:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L33:
	add	r0, r0, #1
	str	r0, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L34:
	tst	r0, #3
	subeq	ip, ip, #1
	streq	ip, [r5, #12]
.L44:
	ldr	r3, .L77+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L33
.L37:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	b	.L44
.L36:
	tst	r0, #3
	ldr	r3, .L77+28
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L33
	b	.L73
.L78:
	.align	2
.L77:
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
	ldr	r4, .L103
	ldr	r1, [r0, #8]
	ldr	r7, .L103+4
	ldr	r8, .L103+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L82:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L101
.L80:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L82
	ldr	r2, .L103+12
	cmp	r1, #0
	ldr	r3, [r2]
	ble	.L83
	ldr	r0, [r5, #12]
	cmp	r0, #0
	ble	.L83
	ldr	ip, [r5, #32]
	cmp	ip, #0
	bne	.L102
.L83:
	ldr	r2, .L103+16
	ldr	lr, .L103+20
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
.L101:
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
	b	.L80
.L102:
	tst	r3, #1
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	ldr	r0, .L103+24
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
.L104:
	.align	2
.L103:
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
	ldr	r4, .L131
	ldr	r1, [r0, #8]
	ldr	r7, .L131+4
	ldr	r8, .L131+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L108:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L129
.L106:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L108
	ldr	r2, .L131+12
	cmp	r1, #0
	ldr	r3, [r2]
	ble	.L109
	ldr	ip, [r5, #12]
	cmp	ip, #0
	ble	.L109
	ldr	r0, [r5, #32]
	cmp	r0, #0
	bne	.L130
.L109:
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
	ldr	r1, .L131+16
	ldr	r2, .L131+20
	mla	r3, r1, r3, r2
	cmp	r2, r3, ror #1
	bcs	.L116
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L129:
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
	b	.L106
.L116:
	mov	r3, #1
	str	r3, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L130:
	ldr	r0, .L131+24
	smull	lr, r0, r3, r0
	sub	r0, r0, r3, asr #31
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	ldr	ip, .L131+28
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
.L132:
	.align	2
.L131:
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
	.comm	car,96,4
	.comm	asteroid,156,4
	.comm	alienLaser,160,4
	.comm	alien,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
