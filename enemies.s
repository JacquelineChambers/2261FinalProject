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
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r1, #16
	mov	r0, #1
	mov	lr, #17
	mov	r6, #10
	mov	r5, #159
	mov	r4, #20
	mov	ip, #3
	ldr	r3, .L4
	str	r6, [r3, #12]
	str	r5, [r3, #56]
	str	r4, [r3, #60]
	str	lr, [r3, #40]
	str	lr, [r3, #88]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #8]
	str	r0, [r3, #48]
	str	r0, [r3, #92]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	r2, [r3, #84]
	str	ip, [r3, #24]
	str	ip, [r3, #72]
	pop	{r4, r5, r6, lr}
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
	push	{r4, r5, r6, lr}
	mov	r2, #16
	mov	r0, #1
	mov	r1, #0
	mov	r6, #140
	mov	r5, #20
	mov	r4, #100
	mov	lr, #210
	mov	ip, #21
	ldr	r3, .L8
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #64]
	str	lr, [r3, #68]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #56]
	str	r0, [r3, #88]
	str	r0, [r3, #108]
	str	r1, [r3, #36]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #92]
	str	r1, [r3, #104]
	str	ip, [r3, #44]
	str	ip, [r3, #100]
	pop	{r4, r5, r6, lr}
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
	mov	r2, #1
	mov	r1, #16
	mov	r0, #0
	mov	r5, #159
	mov	r4, #20
	mov	lr, #10
	mov	ip, #19
	ldr	r3, .L12
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	str	lr, [r3, #60]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #68]
	str	r1, [r3, #72]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #84]
	str	r2, [r3, #100]
	str	r2, [r3, #64]
	str	r0, [r3, #36]
	str	r0, [r3, #48]
	str	r0, [r3, #88]
	str	ip, [r3, #44]
	str	ip, [r3, #96]
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	asteroid
	.size	initAsteroids, .-initAsteroids
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
.L17:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L60
.L15:
	add	r4, r4, #44
	cmp	r6, r4
	bne	.L17
	ldr	r2, .L61+12
	ldr	r3, .L61+16
	ldr	r2, [r2]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	bne	.L18
	ldr	r2, [r5, #36]
	cmp	r2, #6
	addne	r2, r2, #2
	streq	r3, [r5, #36]
	strne	r2, [r5, #36]
.L18:
	ldr	r2, .L61+20
	cmp	r1, #143
	ldr	r0, [r2]
	ldr	r3, [r5, #44]
	bgt	.L20
	ldr	ip, [r5, #12]
	cmp	ip, #223
	bgt	.L20
	ldr	lr, [r5, #28]
	cmp	lr, #0
	beq	.L20
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L21
.L23:
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L22
.L20:
	mov	lr, #0
	ldr	r2, .L61+16
	smull	r4, ip, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #1
	add	r2, r2, r2, lsl #2
	str	lr, [r5, #28]
	sub	r2, r0, r2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L34
.L36:
	.word	.L39
	.word	.L44
	.word	.L37
	.word	.L35
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
	b	.L15
.L44:
	mov	r0, #39
	mov	r1, #5
.L38:
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	beq	.L42
.L14:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L39:
	mov	r0, r3
	mov	r1, #2
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	bne	.L14
.L42:
	mov	r2, #1
	str	r2, [r5, #28]
.L41:
	add	r3, r3, #1
	str	r3, [r5, #44]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L37:
	mov	r0, r3
	mov	r1, #0
	b	.L38
.L35:
	mov	r0, #25
	mov	r1, #59
	b	.L38
.L26:
	tst	r0, #3
	ldr	r3, .L61+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L21
.L57:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L21:
	add	r0, r0, #1
	str	r0, [r2]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L22:
	tst	r0, #3
	subeq	ip, ip, #1
	streq	ip, [r5, #12]
.L32:
	ldr	r3, .L61+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L21
.L25:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	b	.L32
.L24:
	tst	r0, #3
	ldr	r3, .L61+24
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L21
	b	.L57
.L34:
	ldr	r0, [r5, #12]
	asr	r1, r1, #2
	asr	r0, r0, #2
	cmp	r2, #0
	str	r1, [r5, #8]
	str	r0, [r5, #12]
	bne	.L14
	mov	r1, #1
	cmp	r3, #4
	str	r1, [r5, #28]
	bne	.L41
	str	r2, [r5, #44]
	b	.L14
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
	ldr	r4, .L114
	ldr	r1, [r0, #8]
	ldr	r7, .L114+4
	ldr	r8, .L114+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L66:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L112
.L64:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L66
	ldr	r2, .L114+12
	ldr	r3, .L114+16
	ldr	r2, [r2]
	smull	ip, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	bne	.L67
	ldr	r2, [r5, #48]
	cmp	r2, #6
	addne	r2, r2, #2
	streq	r3, [r5, #48]
	strne	r2, [r5, #48]
.L67:
	ldr	r2, .L114+20
	cmp	r1, #0
	ldr	r0, [r2]
	ldr	r3, [r5, #52]
	ble	.L69
	ldr	ip, [r5, #12]
	sub	lr, ip, #1
	cmp	lr, #238
	movhi	r4, #0
	movls	r4, #1
	cmp	r1, #159
	movgt	r4, #0
	cmp	r4, #0
	bne	.L113
.L69:
	mov	lr, #0
	ldr	r2, .L114+16
	smull	r4, ip, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #1
	add	r2, r2, r2, lsl #2
	str	lr, [r5, #32]
	sub	r2, r0, r2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L83
.L85:
	.word	.L88
	.word	.L93
	.word	.L86
	.word	.L84
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
	b	.L64
.L93:
	mov	r1, #59
	mov	r0, #25
.L87:
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	beq	.L91
.L63:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L88:
	mov	r1, #5
	mov	r0, #39
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	bne	.L63
.L91:
	mov	r2, #1
	str	r2, [r5, #32]
.L90:
	add	r3, r3, #1
	str	r3, [r5, #52]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L84:
	mov	r1, #2
	mov	r0, #0
	b	.L87
.L86:
	mov	r0, r3
	mov	r1, #0
	b	.L87
.L113:
	ldr	r4, [r5, #32]
	cmp	r4, #0
	beq	.L69
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L70
.L72:
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L71
.L71:
	tst	r0, #3
	ldr	r3, .L114+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L70
.L110:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L70:
	add	r0, r0, #1
	str	r0, [r2]
	b	.L63
.L74:
	tst	r0, #3
	streq	lr, [r5, #12]
.L78:
	ldr	r3, .L114+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L70
.L75:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	b	.L78
.L73:
	tst	r0, #3
	ldr	r3, .L114+24
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L70
	b	.L110
.L83:
	ldr	r0, [r5, #12]
	asr	r1, r1, #2
	asr	r0, r0, #2
	cmp	r2, #0
	str	r1, [r5, #8]
	str	r0, [r5, #12]
	bne	.L63
	mov	r1, #1
	cmp	r3, #4
	str	r1, [r5, #32]
	bne	.L90
	str	r2, [r5, #52]
	b	.L63
.L115:
	.align	2
.L114:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timerShine2
	.word	1717986919
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
	ldr	r4, .L165
	ldr	r1, [r0, #8]
	ldr	r7, .L165+4
	ldr	r8, .L165+8
	sub	sp, sp, #20
	add	r6, r4, #220
.L119:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L163
.L117:
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L119
	ldr	r2, .L165+12
	cmp	r1, #0
	ldr	r0, [r2]
	ldr	r3, [r5, #48]
	ble	.L120
	ldr	ip, [r5, #12]
	sub	lr, ip, #1
	cmp	lr, #238
	movhi	r4, #0
	movls	r4, #1
	cmp	r1, #159
	movgt	r4, #0
	cmp	r4, #0
	bne	.L164
.L120:
	mov	lr, #0
	ldr	r2, .L165+16
	smull	r4, ip, r2, r0
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #1
	add	r2, r2, r2, lsl #2
	str	lr, [r5, #32]
	sub	r2, r0, r2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L134
.L136:
	.word	.L139
	.word	.L144
	.word	.L137
	.word	.L135
.L163:
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
	b	.L117
.L144:
	mov	r1, #0
	mov	r0, #2
.L138:
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	beq	.L142
.L116:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L139:
	mov	r1, #5
	mov	r0, #39
	cmp	r2, #0
	str	r0, [r5, #8]
	str	r1, [r5, #12]
	bne	.L116
.L142:
	mov	r2, #1
	str	r2, [r5, #32]
.L141:
	add	r3, r3, #1
	str	r3, [r5, #48]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L135:
	mov	r1, #2
	mov	r0, #0
	b	.L138
.L137:
	mov	r1, #59
	mov	r0, #25
	b	.L138
.L164:
	ldr	r4, [r5, #32]
	cmp	r4, #0
	beq	.L120
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L121
.L123:
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L122
.L122:
	tst	r0, #3
	ldr	r3, .L165+20
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	ip, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r0, r3
	bne	.L121
.L161:
	add	r1, r1, #1
	str	r1, [r5, #8]
.L121:
	add	r0, r0, #1
	str	r0, [r2]
	b	.L116
.L125:
	tst	r0, #3
	ldr	r3, .L165+16
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	bne	.L121
	b	.L161
.L126:
	tst	r0, #3
	addeq	ip, ip, #1
	streq	ip, [r5, #12]
.L131:
	ldr	r3, .L165+16
	smull	lr, ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r0, r3
	subeq	r1, r1, #1
	streq	r1, [r5, #8]
	b	.L121
.L124:
	tst	r0, #3
	streq	lr, [r5, #12]
	b	.L131
.L134:
	ldr	r0, [r5, #12]
	asr	r1, r1, #2
	asr	r0, r0, #2
	cmp	r2, #0
	str	r1, [r5, #8]
	str	r0, [r5, #12]
	bne	.L116
	mov	r1, #1
	cmp	r3, #4
	str	r1, [r5, #32]
	bne	.L141
	str	r2, [r5, #48]
	b	.L116
.L166:
	.align	2
.L165:
	.word	bullet
	.word	collision
	.word	enemiesKilled
	.word	timer
	.word	1717986919
	.word	1431655766
	.size	updateAsteroid, .-updateAsteroid
	.comm	timerShine2,4,4
	.comm	timerShine,4,4
	.comm	timer,4,4
	.comm	enemiesRemaining,4,4
	.comm	car,112,4
	.comm	asteroid,104,4
	.comm	alien,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
