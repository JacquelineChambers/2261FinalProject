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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #0
	mov	r2, #16
	mov	r4, #1
	ldr	r3, .L14
	mov	r1, ip
	mov	r0, ip
	mov	lr, ip
	mov	r7, #5
	mov	fp, #8
	mov	r10, #6
	mov	r9, #2
	str	ip, [r3, #36]
	str	ip, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r4, [r3]
	str	r4, [r3, #32]
	ldr	r8, .L14+4
	b	.L2
.L13:
	mov	r2, #4
	mov	r0, #1
	str	r4, [r3, #28]
	str	r2, [r3, #24]
.L6:
	add	r1, r1, #1
	cmp	r1, #15
	beq	.L12
.L8:
	umull	r2, r6, r8, r1
	bic	r2, r6, #1
	add	r2, r2, r6, lsr #1
	mov	ip, #16
	subs	r2, r1, r2
	mov	r5, #0
	moveq	lr, r2
	str	r4, [r3, #44]
	str	r4, [r3, #76]
	str	ip, [r3, #60]
	str	ip, [r3, #64]
	str	ip, [r3, #48]
	str	r5, [r3, #80]
	str	r5, [r3, #84]
	addne	lr, lr, #1
	addeq	r7, r7, #20
	add	r3, r3, #44
.L2:
	cmp	r0, #0
	cmpne	r0, #3
	add	r2, lr, lr, lsl #2
	lsl	r2, r2, #2
	str	r7, [r3, #8]
	str	r2, [r3, #12]
	beq	.L13
	cmp	r0, #1
	moveq	r0, #2
	streq	r10, [r3, #24]
	streq	r9, [r3, #28]
	beq	.L6
	cmp	r0, #2
	moveq	r2, #3
	add	r1, r1, #1
	streq	fp, [r3, #24]
	streq	r2, [r3, #28]
	add	r0, r0, #1
	moveq	r0, r2
	cmp	r1, #15
	bne	.L8
.L12:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	alien
	.word	-1431655765
	.size	initAliens, .-initAliens
	.comm	enemiesRemaining,4,4
	.comm	car,96,4
	.comm	asteroid,96,4
	.comm	alienLaser,160,4
	.comm	alien,660,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
