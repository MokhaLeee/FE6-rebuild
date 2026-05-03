	.include "macro.inc"

	.syntax unified

	thumb_func_start func_fe6_08098C94
func_fe6_08098C94: @ 0x08098C94
	push {lr}
	ldr r0, .L08098CA0 @ =NewOpAnimSubtitleIntroDisp
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
.L08098CA0: .4byte NewOpAnimSubtitleIntroDisp

	thumb_func_start func_fe6_0809937C
func_fe6_0809937C: @ 0x0809937C
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r6, .L080993A8 @ =gUnk_03005280
	movs r4, #7
	movs r5, #1
.L08099386:
	asrs r2, r3, #3
	adds r2, r2, r6
	adds r1, r3, #0
	ands r1, r4
	adds r0, r5, #0
	lsls r0, r1
	ldrb r1, [r2]
	bics r1, r0
	adds r0, r1, #0
	strb r0, [r2]
	adds r3, #1
	cmp r3, #0x1f
	ble .L08099386
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080993A8: .4byte gUnk_03005280

	thumb_func_start OpAnimSubtitleStringAdvance
OpAnimSubtitleStringAdvance: @ 0x08099358
	adds r1, r0, #0
	b .L08099370
.L0809935C:
	ldrb r0, [r1]
	cmp r0, #1
	beq .L0809936A
	cmp r0, #4
	bne .L0809936E
	adds r1, #1
	b .L08099370
.L0809936A:
	adds r0, r1, #1
	b .L08099378
.L0809936E:
	adds r1, #2
.L08099370:
	ldrb r0, [r1]
	cmp r0, #0
	bne .L0809935C
	movs r0, #0
.L08099378:
	bx lr
	.align 2, 0

	thumb_func_start PutImg_OpAnimGlyphs
PutImg_OpAnimGlyphs: @ 0x08099404
	push {lr}
	ldr r0, .L08099418 @ =Img_OpAnimGlyphs
	ldr r1, .L0809941C @ =0x02000000
	bl Decompress
	ldr r1, .L08099420 @ =0x02002800
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
.L08099418: .4byte Img_OpAnimGlyphs
.L0809941C: .4byte 0x02000000
.L08099420: .4byte 0x02002800

	thumb_func_start func_fe6_08099314
func_fe6_08099314: @ 0x08099314
	push {lr}
	bl func_fe6_080992DC
	ldr r1, .L08099324 @ =gUnk_086916E5
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
.L08099324: .4byte gUnk_086916E5

	thumb_func_start func_fe6_08099328
func_fe6_08099328: @ 0x08099328
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	b .L08099348
.L08099330:
	ldrb r0, [r4]
	cmp r0, #1
	beq .L0809934E
	cmp r0, #4
	bne .L0809933E
	adds r4, #1
	b .L08099348
.L0809933E:
	adds r0, r4, #0
	bl func_fe6_08099314
	adds r5, r5, r0
	adds r4, #2
.L08099348:
	ldrb r0, [r4]
	cmp r0, #0
	bne .L08099330
.L0809934E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_fe6_08098F68
func_fe6_08098F68: @ 0x08098F68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0
	strh r0, [r1]
	adds r5, r4, #0
	adds r5, #0x4a
	ldrh r0, [r5]
	bl func_fe6_08099424
	ldrh r0, [r5]
	ldr r3, .L08098FA0 @ =gOpAnimSubtitleConf
	ldr r2, [r4, #0x54]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r1, [r1, #2]
	adds r2, r4, #0
	bl func_fe6_0809947C
	ldr r1, .L08098FA4 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08098FA0: .4byte gOpAnimSubtitleConf
.L08098FA4: .4byte 0xFFFFF000

	thumb_func_start func_fe6_080990B8
func_fe6_080990B8: @ 0x080990B8
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x30]
	ldr r3, .L080990E0 @ =Sprite_16x16
	movs r4, #0x4a
	adds r4, r4, r0
	adds r0, #0x64
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrh r4, [r4]
	adds r0, r4, r0
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080990E0: .4byte Sprite_16x16

	thumb_func_start func_fe6_080990E4
func_fe6_080990E4: @ 0x080990E4
	push {lr}
	bl func_fe6_08099520
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_fe6_080990F0
func_fe6_080990F0: @ 0x080990F0
	push {lr}
	bl func_fe6_080990B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_fe6_080992DC
func_fe6_080992DC: @ 0x080992DC
	push {r4, r5, lr}
	ldr r2, .L080992FC @ =gUnk_08691644
	movs r3, #0
	ldrb r1, [r2]
	cmp r1, #0
	beq .L0809930A
	ldrb r4, [r0]
.L080992EA:
	cmp r1, r4
	bne .L08099300
	ldrb r1, [r2, #1]
	ldrb r5, [r0, #1]
	cmp r1, r5
	bne .L08099300
	adds r0, r3, #0
	b .L0809930C
	.align 2, 0
.L080992FC: .4byte gUnk_08691644
.L08099300:
	adds r3, #1
	adds r2, #2
	ldrb r1, [r2]
	cmp r1, #0
	bne .L080992EA
.L0809930A:
	movs r0, #0x40
.L0809930C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_fe6_08099424
func_fe6_08099424: @ 0x08099424
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, .L0809946C @ =0x02002800
	ldr r0, [r0]
	movs r5, #0xf
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	movs r4, #0xf0
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, .L08099470 @ =0x000003FF
	ands r1, r3
	lsls r1, r1, #5
	ldr r0, .L08099474 @ =0x06010000
	adds r1, r1, r0
	adds r0, r2, #0
	ands r0, r5
	lsls r0, r0, #1
	ands r2, r4
	lsls r2, r2, #2
	adds r0, r0, r2
	ands r0, r3
	lsls r0, r0, #5
	ldr r2, .L08099478 @ =0x02000000
	adds r0, r0, r2
	movs r2, #0
	bl func_fe6_080995B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0809946C: .4byte 0x02002800
.L08099470: .4byte 0x000003FF
.L08099474: .4byte 0x06010000
.L08099478: .4byte 0x02000000

	thumb_func_start func_fe6_0809947C
func_fe6_0809947C: @ 0x0809947C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r1
	mov sl, r2
	ldr r1, .L080994EC @ =0x02002800
	mov r8, r1
	ldr r3, [r1]
	movs r2, #0xf
	mov ip, r2
	adds r2, r3, #0
	mov r1, ip
	ands r2, r1
	lsls r2, r2, #1
	movs r5, #0xf0
	adds r1, r3, #0
	ands r1, r5
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r2, r1
	ldr r4, .L080994F0 @ =0x000003FF
	adds r1, r6, #0
	ands r1, r4
	lsls r1, r1, #5
	ldr r2, .L080994F4 @ =0x06010000
	adds r7, r1, r2
	adds r1, r0, #0
	mov r2, ip
	ands r1, r2
	lsls r1, r1, #1
	ands r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ands r1, r4
	lsls r1, r1, #5
	ldr r0, .L080994F8 @ =0x02000000
	adds r4, r1, r0
	adds r3, #1
	mov r0, r8
	str r3, [r0]
	mov r1, sb
	cmp r1, #0
	beq .L08099500
	ldr r0, .L080994FC @ =ProcScr_08691890
	mov r1, sl
	bl SpawnProc
	str r7, [r0, #0x30]
	str r4, [r0, #0x2c]
	mov r2, sb
	strh r2, [r0, #0x3c]
	b .L0809950A
	.align 2, 0
.L080994EC: .4byte 0x02002800
.L080994F0: .4byte 0x000003FF
.L080994F4: .4byte 0x06010000
.L080994F8: .4byte 0x02000000
.L080994FC: .4byte ProcScr_08691890
.L08099500:
	ldr r2, .L0809951C @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_fe6_080995B0
.L0809950A:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809951C: .4byte 0x0000FFFF

	thumb_func_start func_fe6_08099520
func_fe6_08099520: @ 0x08099520
	push {lr}
	adds r2, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r0, #0x1f
	bl func_fe6_0809947C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_fe6_080995B0
func_fe6_080995B0: @ 0x080995B0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r5, #0
	beq .L08099604
	ldr r0, .L080995FC @ =0x0000FFFF
	cmp r5, r0
	beq .L08099624
	subs r5, #1
	ldr r0, .L08099600 @ =gUnk_086918B0
	lsls r4, r5, #1
	adds r4, r4, r0
	ldrh r2, [r4]
	adds r0, r7, #0
	bl func_fe6_08099580
	ldrh r2, [r4]
	adds r2, #0x40
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_fe6_08099580
	ldrh r2, [r4]
	adds r2, #0x80
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_fe6_08099580
	ldrh r2, [r4]
	adds r2, #0xc0
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_fe6_08099580
	b .L0809963C
	.align 2, 0
.L080995FC: .4byte 0x0000FFFF
.L08099600: .4byte gUnk_086918B0
.L08099604:
	str r5, [sp]
	ldr r4, .L08099620 @ =0x01000010
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r6, r2
	adds r2, r4, #0
	b .L08099638
	.align 2, 0
.L08099620: .4byte 0x01000010
.L08099624:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r7, r1
	adds r1, r6, r1
	movs r2, #0x10
.L08099638:
	bl CpuFastSet
.L0809963C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start OpAnimSubtitleDisp_Loop
OpAnimSubtitleDisp_Loop: @ 0x08098C00
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, .L08098C38 @ =gOpAnimSubtitleConf
	adds r7, r0, r1
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #1
	ldrh r2, [r1]
	subs r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq .L08098C88
.L08098C24:
	ldrb r0, [r6]
	cmp r0, #0
	blt .L08098C3C
	cmp r0, #1
	ble .L08098C78
	cmp r0, #4
	bne .L08098C3C
	adds r6, #1
	b .L08098C80
	.align 2, 0
.L08098C38: .4byte gOpAnimSubtitleConf
.L08098C3C:
	ldr r0, .L08098C74 @ =NewOpAnimSubtitleIntroDisp
	movs r1, #3
	bl SpawnProc
	adds r4, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [r4, #0x54]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r7, #4]
	adds r0, r1, r0
	str r0, [r4, #0x30]
	adds r0, r6, #0
	bl func_fe6_080992DC
	adds r4, #0x4a
	strh r0, [r4]
	adds r0, r6, #0
	bl func_fe6_08099314
	ldr r1, [r5, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x2c]
	adds r6, #2
	b .L08098C80
	.align 2, 0
.L08098C74: .4byte NewOpAnimSubtitleIntroDisp
.L08098C78:
	adds r0, r5, #0
	bl Proc_Break
	b .L08098C88
.L08098C80:
	str r6, [r5, #0x4c]
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq .L08098C24
.L08098C88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_fe6_08099580
func_fe6_08099580: @ 0x08099580
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #2
	movs r3, #0xf
	lsls r3, r0
	asrs r2, r2, #3
	cmp r2, #0xf
	ble .L08099596
	adds r2, #0xf0
.L08099596:
	lsls r0, r2, #2
	adds r2, r0, r1
	ldr r1, [r2]
	bics r1, r3
	adds r0, r0, r4
	ldr r0, [r0]
	ands r0, r3
	adds r1, r1, r0
	str r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_fe6_08099534
func_fe6_08099534: @ 0x08099534
	movs r1, #0
	str r1, [r0, #0x34]
	strh r1, [r0, #0x38]
	ldrh r1, [r0, #0x3c]
	strh r1, [r0, #0x3a]
	bx lr

	thumb_func_start func_fe6_08099540
func_fe6_08099540: @ 0x08099540
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x38]
	ldrh r2, [r4, #0x3a]
	b .L0809955C
.L0809954A:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	adds r2, #1
	str r2, [r4, #0x34]
	bl func_fe6_080995B0
	ldrh r1, [r4, #0x38]
	ldr r2, .L0809957C @ =0xFFFFFF00
.L0809955C:
	adds r0, r1, r2
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt .L0809954A
	ldr r0, [r4, #0x34]
	cmp r0, #0x3f
	ble .L08099574
	adds r0, r4, #0
	bl Proc_Break
.L08099574:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0809957C: .4byte 0xFFFFFF00
