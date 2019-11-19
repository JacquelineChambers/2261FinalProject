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
	mov	r0, #0
	mov	r1, #16
	mov	ip, #1
	mov	r4, #17
	mov	lr, #3
	ldr	r3, .L19
	mov	r2, r0
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #4]
	str	r4, [r3, #40]
	str	lr, [r3, #24]
	str	ip, [r3]
	str	ip, [r3, #28]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	str	r0, [r3, #44]
	cmp	r0, lr
	ldrls	pc, [pc, r0, asl #2]
	b	.L3
.L5:
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L4
.L4:
	mov	r0, #20
	mov	r1, #240
	str	r0, [r3, #8]
	str	r1, [r3, #12]
.L11:
	mov	r1, #16
	mov	ip, #1
	mov	r0, #0
	mov	r4, #17
	mov	lr, #3
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #52]
	str	ip, [r3, #48]
	str	ip, [r3, #76]
	str	r0, [r3, #80]
	str	r0, [r3, #84]
	str	r4, [r3, #88]
	str	lr, [r3, #72]
.L9:
	str	r2, [r3, #92]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L1
.L13:
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L12
.L8:
	mov	r0, #0
	mov	r1, #20
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	b	.L11
.L7:
	mov	r0, #160
	mov	r1, #20
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	b	.L11
.L6:
	mov	r0, #20
	mov	r1, #0
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	b	.L11
.L15:
	mov	r1, #160
	mov	r2, #50
	str	r1, [r3, #56]
	str	r2, [r3, #60]
.L1:
	pop	{r4, lr}
	bx	lr
.L12:
	mov	r1, #50
	mov	r2, #240
	str	r1, [r3, #56]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L14:
	mov	r1, #50
	mov	r2, #0
	str	r1, [r3, #56]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L16:
	mov	r1, #0
	mov	r2, #50
	str	r1, [r3, #56]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L3:
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	lr, #17
	mov	ip, #3
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #52]
	str	r0, [r3, #48]
	mov	r2, r0
	str	r0, [r3, #76]
	str	r1, [r3, #80]
	str	r1, [r3, #84]
	str	lr, [r3, #88]
	str	ip, [r3, #72]
	b	.L9
.L20:
	.align	2
.L19:
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
	ldr	r3, .L23
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
.L24:
	.align	2
.L23:
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
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #19
	mov	r0, #1
	mov	r1, #0
	mov	ip, #20
	ldr	r3, .L27
	str	lr, [r3, #44]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	ip, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	ldr	lr, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r3, .L33
.L30:
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
	bne	.L30
	bx	lr
.L34:
	.align	2
.L33:
	.word	alienLaser
	.size	initAlienLaser, .-initAlienLaser
	.align	2
	.global	alienActive
	.syntax unified
	.arm
	.fpu softvfp
	.type	alienActive, %function
alienActive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	alienActive, .-alienActive
	.align	2
	.global	carActive
	.syntax unified
	.arm
	.fpu softvfp
	.type	carActive, %function
carActive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	carActive, .-carActive
	.align	2
	.global	asteroidActive
	.syntax unified
	.arm
	.fpu softvfp
	.type	asteroidActive, %function
asteroidActive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	asteroidActive, .-asteroidActive
	.align	2
	.global	alienLaserActive
	.syntax unified
	.arm
	.fpu softvfp
	.type	alienLaserActive, %function
alienLaserActive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	alienLaserActive, .-alienLaserActive
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
	ldr	r4, .L78
	ldr	r1, [r0, #8]
	ldr	r7, .L78+4
	ldr	r8, .L78+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L42:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L76
.L40:
	add	r4, r4, #44
	cmp	r6, r4
	bne	.L42
	cmp	r1, #159
	bgt	.L43
	ldr	r0, [r5, #12]
	cmp	r0, #239
	bgt	.L43
	ldr	r2, .L78+12
	ldr	r3, .L78+16
	ldr	r2, [r2]
	smull	ip, r3, r2, r3
	asr	ip, r2, #31
	rsb	r3, ip, r3, asr #1
	ldr	lr, [r5, #44]
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3
	cmp	lr, #3
	ldrls	pc, [pc, lr, asl #2]
	b	.L44
.L46:
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L45
.L43:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	initAliens
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
	b	.L40
.L45:
	tst	r2, #3
	subeq	r0, r0, #1
	streq	r0, [r5, #12]
	ldr	r0, .L78+20
	smull	lr, r0, r2, r0
	add	r0, r0, r2
	rsb	ip, ip, r0, asr #2
	rsb	ip, ip, ip, lsl #3
	cmp	r2, ip
	addeq	r1, r1, #1
	streq	r1, [r5, #8]
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	str	r3, [r5, #8]
.L52:
	ldr	r3, [r5, #36]
	cmp	r3, #6
	addne	r3, r3, #2
	strne	r3, [r5, #36]
	moveq	r3, #0
	streq	r3, [r5, #36]
.L39:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L47:
	tst	r2, #3
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	cmp	r3, #0
	and	r2, r2, #7
	beq	.L77
	cmp	r2, #0
	addeq	r1, r1, #1
	bne	.L39
.L62:
	str	r1, [r5, #8]
.L44:
	cmp	r3, #0
	beq	.L52
	b	.L39
.L49:
	tst	r2, #3
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	cmp	r3, #0
	addeq	r1, r1, #1
	streq	r1, [r5, #8]
	beq	.L52
	b	.L39
.L48:
	tst	r2, #3
	subeq	r0, r0, #1
	streq	r0, [r5, #12]
	cmp	r3, #0
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	beq	.L52
	b	.L39
.L77:
	cmp	r2, #0
	sub	r2, r1, #1
	str	r2, [r5, #8]
	bne	.L52
	b	.L62
.L79:
	.align	2
.L78:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1717986919
	.word	-1840700269
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
	ldr	r4, .L99
	ldr	r1, [r0, #8]
	ldr	r7, .L99+4
	ldr	r8, .L99+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L83:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L97
.L81:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L83
	cmp	r1, #159
	bgt	.L86
	ldr	r2, [r5, #12]
	cmp	r2, #239
	ble	.L98
.L86:
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	ip, #21
	mov	r4, #20
	mov	lr, #50
	ldr	r3, .L99+12
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
.L97:
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
	b	.L81
.L98:
	ldr	r0, .L99+16
	ldr	r3, .L99+20
	ldr	r0, [r0]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	addeq	r2, r2, #1
	streq	r2, [r5, #12]
	tst	r0, #3
	addeq	r1, r1, #1
	streq	r1, [r5, #8]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	car
	.word	timer
	.word	1431655766
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
	ldr	r4, .L120
	ldr	r1, [r0, #8]
	ldr	r7, .L120+4
	ldr	r8, .L120+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L104:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L118
.L102:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L104
	cmp	r1, #159
	bgt	.L105
	ldr	r0, [r5, #12]
	cmp	r0, #239
	ble	.L119
.L105:
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	lr, #19
	mov	ip, #20
	ldr	r3, .L120+12
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	lr, [r3, #44]
	str	ip, [r3, #12]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r1, [r3, #36]
	str	r1, [r3, #8]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L118:
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
	b	.L102
.L119:
	ldr	ip, .L120+16
	ldr	r3, .L120+20
	ldr	r2, [ip]
	smull	lr, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r2, r3
	addeq	r0, r0, #1
	streq	r0, [r5, #12]
	tst	r2, #3
	addeq	r1, r1, #1
	add	r2, r2, #1
	streq	r1, [r5, #8]
	str	r2, [ip]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	asteroid
	.word	timer
	.word	1431655766
	.size	updateAsteroid, .-updateAsteroid
	.comm	timer,4,4
	.comm	enemiesRemaining,4,4
	.comm	car,96,4
	.comm	asteroid,48,4
	.comm	alienLaser,160,4
	.comm	alien,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
