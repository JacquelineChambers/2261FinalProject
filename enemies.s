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
	mov	r2, #20
	mov	r1, #16
	mov	ip, #1
	mov	r0, #0
	mov	r4, #10
	ldr	r3, .L6
	ldr	lr, .L6+4
.L2:
	str	r2, [r3, #12]
	add	r2, r2, #30
	cmp	r2, lr
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3]
	str	r1, [r3, #4]
	str	ip, [r3, #32]
	str	r0, [r3, #36]
	str	r0, [r3, #40]
	str	r4, [r3, #8]
	add	r3, r3, #44
	bne	.L2
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	alien
	.word	470
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
	mov	ip, #100
	ldr	r3, .L10
	str	r4, [r3, #12]
	str	lr, [r3, #56]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #48]
	str	r0, [r3]
	str	r0, [r3, #32]
	str	r0, [r3, #44]
	str	r0, [r3, #76]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	r1, [r3, #80]
	str	r1, [r3, #84]
	str	ip, [r3, #8]
	str	ip, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	alien
	.size	initCar, .-initCar
	.comm	enemiesRemaining,4,4
	.comm	car,96,4
	.comm	asteroid,96,4
	.comm	alienLaser,160,4
	.comm	alien,660,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
