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
	push	{r4, lr}
	mov	r2, #1
	mov	r1, #16
	mov	r4, #0
	mov	lr, #19
	mov	ip, #50
	mov	r0, #224
	ldr	r3, .L12
	str	r4, [r3, #36]
	str	r4, [r3, #88]
	str	lr, [r3, #44]
	str	lr, [r3, #96]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #68]
	str	r1, [r3, #72]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #84]
	str	r2, [r3, #100]
	str	ip, [r3, #8]
	str	ip, [r3, #60]
	str	r0, [r3, #12]
	str	r0, [r3, #64]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	asteroid
	.size	initAsteroids, .-initAsteroids
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
	ldr	r4, .L61
	ldr	r1, [r0, #8]
	ldr	r7, .L61+4
	ldr	r8, .L61+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L20:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L60
.L18:
	add	r4, r4, #44
	cmp	r6, r4
	bne	.L20
	ldr	r2, .L61+12
	ldr	r3, .L61+16
	ldr	r2, [r2]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	bne	.L21
	ldr	r2, [r5, #36]
	cmp	r2, #6
	addne	r2, r2, #2
	streq	r3, [r5, #36]
	strne	r2, [r5, #36]
.L21:
	ldr	r2, .L61+20
	cmp	r1, #143
	ldr	r0, [r2]
	ldr	r3, [r5, #44]
	bgt	.L23
	ldr	ip, [r5, #12]
	cmp	ip, #223
	bgt	.L23
	ldr	lr, [r5, #28]
	cmp	lr, #0
	beq	.L23
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L24
.L26:
	.word	.L29
	.word	.L28
	.word	.L27
	.word	.L25
.L23:
	mov	r2, #0
	str	r2, [r5, #28]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L37
.L39:
	.word	.L42
	.word	.L44
	.word	.L40
	.word	.L38
.L60:
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
	b	.L18
.L44:
	mov	ip, #5
	mov	r3, #39
.L41:
	ldr	r2, .L61+16
	smull	lr, r1, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r0, r2
	str	r3, [r5, #8]
	moveq	r3, #1
	str	ip, [r5, #12]
	streq	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L42:
	mov	ip, #2
	b	.L41
.L40:
	mov	ip, #0
	b	.L41
.L38:
	mov	ip, #59
	mov	r3, #25
	b	.L41
.L29:
	tst	r0, #3
	ldr	r3, .L61+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L24
.L57:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L24:
	add	r0, r0, #1
	str	r0, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L25:
	tst	r0, #3
	subeq	ip, ip, #1
	streq	ip, [r5, #12]
.L35:
	ldr	r3, .L61+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L24
.L28:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	b	.L35
.L27:
	tst	r0, #3
	ldr	r3, .L61+24
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L24
	b	.L57
.L37:
	ldr	ip, [r5, #12]
	asr	r3, r1, #2
	asr	ip, ip, #2
	b	.L41
.L62:
	.align	2
.L61:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timerShine
	.word	1717986919
	.word	timer
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
	ldr	r4, .L86
	ldr	r1, [r0, #8]
	ldr	r7, .L86+4
	ldr	r8, .L86+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L66:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L84
.L64:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L66
	ldr	r0, .L86+12
	ldr	r3, .L86+16
	ldr	r2, [r0]
	smull	ip, r3, r2, r3
	asr	ip, r2, #31
	rsb	r3, ip, r3, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r1, #0
	sub	r3, r2, r3
	ble	.L67
	ldr	lr, [r5, #12]
	cmp	lr, #0
	ble	.L67
	ldr	r4, [r5, #32]
	cmp	r4, #0
	bne	.L85
.L67:
	mov	r0, #0
	cmp	r3, r0
	mov	r1, #152
	mov	r2, #60
	moveq	r3, #1
	str	r0, [r5, #32]
	str	r1, [r5, #8]
	str	r2, [r5, #12]
	streq	r3, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L84:
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
	b	.L64
.L85:
	cmp	r3, #0
	ldr	r3, .L86+20
	addeq	lr, lr, #1
	streq	lr, [r5, #12]
	smull	lr, r3, r2, r3
	sub	ip, r3, ip
	add	ip, ip, ip, lsl #1
	cmp	r2, ip, lsl #1
	addeq	r1, r1, #1
	add	r2, r2, #1
	streq	r1, [r5, #8]
	str	r2, [r0]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L87:
	.align	2
.L86:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1717986919
	.word	715827883
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
	ldr	r4, .L114
	ldr	r1, [r0, #8]
	ldr	r7, .L114+4
	ldr	r8, .L114+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L91:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L112
.L89:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L91
	ldr	r3, .L114+12
	cmp	r1, #0
	ldr	r2, [r3]
	ble	.L92
	ldr	ip, [r5, #12]
	cmp	ip, #0
	ble	.L92
	ldr	r0, [r5, #32]
	cmp	r0, #0
	bne	.L113
.L92:
	mov	r3, #0
	ldr	r1, [r5, #48]
	cmp	r1, r3
	str	r3, [r5, #32]
	moveq	r3, #50
	movne	r3, #224
	moveq	r1, #124
	movne	r1, #50
	str	r3, [r5, #12]
	ldr	r3, .L114+16
	str	r1, [r5, #8]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r2, r3
	beq	.L99
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L112:
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
	b	.L89
.L99:
	mov	r3, #1
	str	r3, [r5, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L113:
	ldr	r0, .L114+20
	smull	lr, r0, r2, r0
	sub	r0, r0, r2, asr #31
	add	r0, r0, r0, lsl #1
	cmp	r2, r0
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	ldr	ip, .L114+24
	smull	lr, ip, r2, ip
	asr	r0, r2, #31
	rsb	r0, r0, ip, asr #1
	add	r0, r0, r0, lsl #3
	cmp	r2, r0
	ldreq	r0, [r5, #12]
	subeq	r0, r0, #1
	streq	r0, [r5, #12]
	tst	r2, #3
	subeq	r1, r1, #1
	add	r2, r2, #1
	streq	r1, [r5, #8]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1717986919
	.word	1431655766
	.word	954437177
	.size	updateAsteroid, .-updateAsteroid
	.comm	timerShine,4,4
	.comm	timer,4,4
	.comm	enemiesRemaining,4,4
	.comm	car,96,4
	.comm	asteroid,104,4
	.comm	alien,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
