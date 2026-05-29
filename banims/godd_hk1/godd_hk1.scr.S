.include "macro.inc"
.include "animscr.inc"
.include "gba_sprites.inc"

.section .content_data.banim_scr
.align 2, 0

.global BANIM_SCR_godd_hk1
BANIM_SCR_godd_hk1:
@ SCR:
@ SCR_NORMAL_ATK:
    ANIMSCR_FRAME 0x09, BANIM_IMG_godd_hk1_0, 0x00, 0x0000 @ OAMR_0 - OAMR
    ANIMSCR_FRAME 0x04, BANIM_IMG_godd_hk1_0, 0x01, 0x00B4 @ OAMR_1 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_0, 0x02, 0x01A4 @ OAMR_2 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_0, 0x03, 0x0234 @ OAMR_3 - OAMR
    ANIMSCR_FRAME 0x04, BANIM_IMG_godd_hk1_0, 0x04, 0x02B8 @ OAMR_4 - OAMR
    ANIMSCR_FRAME 0x04, BANIM_IMG_godd_hk1_1, 0x05, 0x0354 @ OAMR_5 - OAMR
    ANIMSCR_FRAME 0x04, BANIM_IMG_godd_hk1_1, 0x06, 0x03B4 @ OAMR_6 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_1, 0x07, 0x03F0 @ OAMR_7 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_1, 0x08, 0x0414 @ OAMR_8 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_1, 0x09, 0x0438 @ OAMR_9 - OAMR
    ANIMSCR_FRAME 0x02, BANIM_IMG_godd_hk1_1, 0x0A, 0x0450 @ OAMR_10 - OAMR
    ANIMSCR_FRAME 0x01, BANIM_IMG_godd_hk1_1, 0x0B, 0x0468 @ OAMR_11 - OAMR
    ANIMSCR_BLOCKED

.align 2, 0
.global BANIM_MODE_godd_hk1
BANIM_MODE_godd_hk1:
    .word 0x0000 @ SCR_NORMAL_ATK - SCR
    .word 0x0
