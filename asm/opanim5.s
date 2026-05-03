	.include "macro.inc"

	.syntax unified

	thumb_func_start func_fe6_0809B280
func_fe6_0809B280: @ 0x0809B280
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, .L0809B298 @ =bool_opanim_03005284
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq .L0809B29C
	adds r0, r1, #0
	bl Proc_End
	b .L0809B2E8
	.align 2, 0
.L0809B298: .4byte bool_opanim_03005284
.L0809B29C:
	bl OpAnim6_ResetBG
	bl SetAllBlackPals
	ldr r2, .L0809B2F0 @ =gDispIo
	movs r0, #2
	rsbs r0, r0, #0
	ldrb r1, [r2, #1]
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0x3f
	ldrb r3, [r1]
	ands r0, r3
	strb r0, [r1]
	adds r1, #8
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x45
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0
	bl OpAnim_SetupGlyph
	bl PutOpAnimSubtitle6
.L0809B2E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0809B2F0: .4byte gDispIo
