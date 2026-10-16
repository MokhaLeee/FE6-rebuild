	.include "macro.inc"
	.syntax unified
	.arm

	@ .text
	.section .iwram_code

	arm_func_start ClearOam
ClearOam:
	lsr  r1, 4
	sub  r1, 1
	mov  r2, 0xA0
.Loam_loop:
	str  r2, [r0, 0x00]
	str  r2, [r0, 0x08]
	str  r2, [r0, 0x10]
	str  r2, [r0, 0x18]
	str  r2, [r0, 0x20]
	str  r2, [r0, 0x28]
	str  r2, [r0, 0x30]
	str  r2, [r0, 0x38]
	str  r2, [r0, 0x40]
	str  r2, [r0, 0x48]
	str  r2, [r0, 0x50]
	str  r2, [r0, 0x58]
	str  r2, [r0, 0x60]
	str  r2, [r0, 0x68]
	str  r2, [r0, 0x70]
	str  r2, [r0, 0x78]
	add  r0, 0x80
	subs r1, 1
	bpl  .Loam_loop
	bx   lr

	arm_func_start Checksum32
Checksum32: @ 0x08000360
	push {r4, r5, r6, r7}
	sub r1, r1, #2
	mov r2, #0
	mov r3, #0
.L08000370:
	ldrh r4, [r0]
	add r2, r2, r4
	eor r3, r3, r4
	add r0, r0, #2
	subs r1, r1, #2
	bpl .L08000370
	mov r0, #0x10000
	sub r0, r0, #1
	and r2, r2, r0
	lsl r3, r3, #0x10
	mov r0, r2
	add r0, r0, r3
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmFillRect
TmFillRect: @ 0x080003A8
	push {r4, r5, r6, r7}
	mov r4, r0
	sub r6, r2, #0
.L080003B4:
	sub r5, r1, #0
.L080003B8:
	strh r3, [r4]
	add r4, r4, #2
	subs r5, r5, #1
	bpl .L080003B8
	add r0, r0, #0x40
	mov r4, r0
	subs r6, r6, #1
	bpl .L080003B4
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmCopyRect
TmCopyRect: @ 0x080003E0
	push {r4, r5, r6, r7}
	tst r2, r2
	beq .L08000434
	bmi .L08000434
	tst r3, r3
	beq .L08000434
	bmi .L08000434
	mov r4, #0x40
	sub r4, r4, r2, lsl #1
	sub r6, r3, #1
.L08000408:
	sub r5, r2, #1
.L0800040C:
	ldrh r7, [r0]
	strh r7, [r1]
	add r0, r0, #2
	add r1, r1, #2
	subs r5, r5, #1
	bpl .L0800040C
	add r0, r0, r4
	add r1, r1, r4
	subs r6, r6, #1
	bpl .L08000408
.L08000434:
	pop {r4, r5, r6, r7}
	bx lr

	arm_func_start TmApplyTsa
TmApplyTsa: @ 0x0800043C
	push {r4, r5, r6, r7}
	ldrb r3, [r1]
	ldrb r4, [r1, #1]
	add r1, r1, #2
	lsl r7, r4, #6
	add r0, r0, r7
	mov r6, r4
.L08000458:
	mov r5, r3
.L0800045C:
	ldrh r7, [r1]
	add r7, r7, r2
	strh r7, [r0]
	add r0, r0, #2
	add r1, r1, #2
	subs r5, r5, #1
	bpl .L0800045C
	sub r0, r0, r3, lsl #1
	sub r0, r0, #0x42
	subs r6, r6, #1
	bpl .L08000458
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
.L08000490: .4byte gOamHiPutIt

	arm_func_start PutOamHi
PutOamHi: @ 0x08000494
	push {r4, r5, r6, r7}
	ldr r7, .L08000490 @ =gOamHiPutIt
PutOamLoExt:
	ldr r5, [r7]
	ldrh r4, [r2]
	tst r4, r4
	beq .L08000528
	bmi .L08000528
	add r2, r2, #2
	add r6, r5, r4, lsl #3
	str r6, [r7]
	mov r7, #0x10000
	sub r7, r7, #1
	and r0, r0, r7
	and r1, r1, r7
	orr r0, r0, r1, lsl #16
.L080004D0:
	ldrh r1, [r2]
	orr r6, r1, r0, lsr #16
	and r6, r6, #0xff00
	add r7, r1, r0, lsr #16
	and r7, r7, #0xff
	orr r6, r6, r7
	strh r6, [r5]
	ldrh r1, [r2, #2]
	orr r6, r1, r0
	and r6, r6, #0xfe00
	add r7, r1, r0
	lsl r7, r7, #0x17
	lsr r7, r7, #0x17
	orr r6, r6, r7
	strh r6, [r5, #2]
	ldrh r1, [r2, #4]
	add r6, r1, r3
	strh r6, [r5, #4]
	add r2, r2, #6
	add r5, r5, #8
	subs r4, r4, #1
	bne .L080004D0
.L08000528:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
.L08000530: .4byte gOamLoPutIt

	arm_func_start PutOamLo
PutOamLo: @ 0x08000534
	push {r4, r5, r6, r7}
	ldr r7, .L08000530 @ =gOamLoPutIt
	b PutOamLoExt
