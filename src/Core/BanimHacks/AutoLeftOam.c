#include "prelude.h"
#include "banim.h"
#include "banim_data.h"
#include "util.h"
#include "oam.h"
#include "hardware.h"
#include "constants/banims.h"

#include "debug.h"

#if CONFIG_AUTO_LEFT_OAM
/**
OAMR_0:
	ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, -13, 8
	ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, 3, 8
	ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0040, -14, 0
	ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, -14, -8
	ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0022, 2, -8
	ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0000, -5, -16
	ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -4, -24
	ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 4, -24
	ANIM_SPRITE_END

--> new_x = 0 - 16 - old_x

OAML_0:
	ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, -3, 8
	ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, -11, 8
	ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0040, -18, 0
	ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, -2, -8
	ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0022, -10, -8
	ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0000, -11, -16
	ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -4, -24
	ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -12, -24
	ANIM_SPRITE_END
 */
static u8 LookupAlignAreaToWidth[] = {
	1, 2, 1, 0, // x8
	2, 4, 1, 0, // x16
	4, 4, 2, 0, // x32
	8, 8, 4, 0  // x64
};

static void auto_generate_left_oam(const struct BattleAnim *conf, void *oam_buf)
{
	const u8 *src = conf->oam_r;
	int i, len = GetDataSize(src);

	LZ77UnCompWram(src, oam_buf);

	for (i = 0; i < len; i = i + 0xC) {
		int attr0, attr1, width;
		i16 x;
		u16 *cur = (u16 *)((u8 *)oam_buf + i);

		if (cur[0] == 1 && cur[1] == 0) {
			// ANIM_SPRITE_END, skip
			continue;
		}

		/**
		 * ANIM_SPRITE_AFFIN 1, 0x00FC, 0x002C, 0xFFD4, 0x00FC
		 * -->
		 * ANIM_SPRITE_AFFIN 1, 0xFF04, 0x002C, 0x002C, 0x00FC
		 */
		if (cur[1] == 0xFFFF) {
			// ANIM_SPRITE_AFFIN
			i16 pa = cur[2];
			i16 pc = cur[4];

			cur[2] = -pa;
			cur[4] = -pc;
			continue;
		}

		// x position
		attr0 = (cur[0] >> 14) & 3; // 0: square, 1 wide, 2 tall
		attr1 = (cur[1] >> 14) & 3; // 0: 8, 1: 16, 2: 32, 3: 64
		width = LookupAlignAreaToWidth[attr1 * 4 + attr0];
		x = cur[3];
		cur[3] = 0 - width * 8 - x;

		// flip
		if (!(cur[0] & OAM0_AFFINE_ENABLE))
			cur[1] |= OAM1_HFLIP;
	}
}
#endif

void UpdateBanimFrame(void)
{
	int bid, bid_pal, chara_pal;
	struct BattleAnim *banim;
	struct BattleAnim *tmp_banim0;
	struct BattleAnim *tmp_banim;

	banim = gBanimTable;

	gpImgSheet[POS_R] = NULL;
	gpImgSheet[POS_L] = NULL;

	if (gBanimValid[POS_L] == true) {
		bid = gBanimIdx[POS_L];
		bid_pal = gBanimFactionPal[POS_L];
		chara_pal = gBanimUniquePal[POS_L];

		tmp_banim = &gBanimTable[bid];

		// LZ77UnCompWram(tmp_banim->script, &gBanimScrs[POS_L * BAS_SCR_MAX_SIZE]);
		gpBanimScrs[POS_L] = tmp_banim->script;

		gpBanimModesLeft = tmp_banim->modes;

		tmp_banim0 = &gBanimTable[GetBanimPalette(bid, POS_L)];
		LZ77UnCompWram(tmp_banim0->pal, gBanimPaletteLeft);

		if (chara_pal != -1) {
			const struct BattleAnimCharaPal *capal = &gBanimCharaPalTable[chara_pal];

			LZ77UnCompWram(capal->pal, gBanimPaletteLeft);
			ApplyBanimUniquePalette((u32 *)gBanimPaletteLeft, POS_L);
		}

		gpEfxUnitPaletteBackup[POS_L] = gBanimPaletteLeft + PAL_OFFSET(bid_pal);
		CpuFastCopy(gBanimPaletteLeft + PAL_OFFSET(bid_pal), PAL_OBJ(OBPAL_EFX_UNIT_L), 0x20);
		CpuFastCopy(gpBanimTriAtkPalettes[POS_L], PAL_OBJ(OBPAL_EFX_UNIT_BAK_L), 0x20);

		EnablePalSync();

#if CONFIG_AUTO_LEFT_OAM
		auto_generate_left_oam(tmp_banim, gBanimOamBufs);
#else
		LZ77UnCompWram(tmp_banim->oam_l, gBanimOamBufs);
#endif

		*(u32 *)(gBanimOamBufs + BAS_OAM_REF_MAX_SIZE) = 1;
	}

	if (gBanimValid[POS_R] == true) {
		bid = gBanimIdx[POS_R];
		bid_pal = gBanimFactionPal[POS_R];
		chara_pal = gBanimUniquePal[POS_R];

		// LZ77UnCompWram(banim[bid].script, &gBanimScrs[POS_R * BAS_SCR_MAX_SIZE]);
		gpBanimScrs[POS_R] = banim[bid].script;

		gpBanimModesRight = banim[bid].modes;
		LZ77UnCompWram(banim[GetBanimPalette(bid, POS_R)].pal, gBanimPaletteRight);
		
		if (chara_pal != -1) {
			const struct BattleAnimCharaPal *capal = &gBanimCharaPalTable[chara_pal];

			LZ77UnCompWram(capal->pal, gBanimPaletteRight);
			ApplyBanimUniquePalette((u32 *)gBanimPaletteRight, POS_R);
		}

		gpEfxUnitPaletteBackup[POS_R] = gBanimPaletteRight + PAL_OFFSET(bid_pal);
		CpuFastCopy(gBanimPaletteRight + PAL_OFFSET(bid_pal), PAL_OBJ(OBPAL_EFX_UNIT_R), 0x20);
		CpuFastCopy(gpBanimTriAtkPalettes[POS_R], PAL_OBJ(OBPAL_EFX_UNIT_BAK_R), 0x20);

		EnablePalSync();

		LZ77UnCompWram(banim[bid].oam_r, &gBanimOamBufs[0x5800]);

		*(u32 *)(gBanimOamBufs + 0x5800 + BAS_OAM_REF_MAX_SIZE) = 1;
	}

	/* triangle*/
	if (gpEkrTriangleUnits[0] != NULL) {
		bid = GetBattleAnimationId(gpEkrTriangleUnits[0]->jinfo->banim_info, 0);
		gpBanimTriAtkPalettes[0] = banim[bid].pal;

		chara_pal = (i16)GetBanimUniquePal(gpEkrTriangleUnits[0]);
		if (chara_pal != -1) {
			const struct BattleAnimCharaPal *capal = &gBanimCharaPalTable[chara_pal];

			gpBanimTriAtkPalettes[0] = (void *)capal->pal;
		}

		bid = GetBattleAnimationId(gpEkrTriangleUnits[1]->jinfo->banim_info, 0);
		gpBanimTriAtkPalettes[1] = banim[bid].pal;

		chara_pal = (i16)GetBanimUniquePal(gpEkrTriangleUnits[1]);
		if (chara_pal != -1) {
			const struct BattleAnimCharaPal *capal = &gBanimCharaPalTable[chara_pal];

			gpBanimTriAtkPalettes[1] = (void *)capal->pal;
		}
	}
}

void EkrMainMini_InitAnim(struct EkrMainMiniDesc *desc)
{
	int mode1, mode2;
	int priority1, priority2;
	struct Anim *anim;
	u8 *oam_buf;
	u32 *scr1, *scr2;
	struct BattleAnim *banim, *tmp_banim;
	u8 *scr_buf;
	int *modes;

	banim = gBanimTable;

	mode1	 = BanimDefaultModeConfig[desc->round_type * 4 + 0];
	priority1 = BanimDefaultModeConfig[desc->round_type * 4 + 1];
	mode2	 = BanimDefaultModeConfig[desc->round_type * 4 + 2];
	priority2 = BanimDefaultModeConfig[desc->round_type * 4 + 3];

	/**
	 * scr
	 */
	LZ77UnCompWram(banim[desc->bid].script, desc->scr_buf);

	tmp_banim = &banim[desc->bid];
	modes = tmp_banim->modes;
	scr_buf = desc->scr_buf;

	scr1 = AnimScr_DefaultAnim;
	if (mode1 != (u8)BANIM_MODE_INVALID)
		scr1 = (void *)(scr_buf + modes[mode1]);

	scr2 = AnimScr_DefaultAnim;
	if (mode2 != (u8)BANIM_MODE_INVALID)
		scr2 = (void *)(scr_buf + modes[mode2]);

	/**
	 * oam
	 */
	if (desc->pos == POS_L) {
		oam_buf = (u8 *)desc->oam_buf;

#if CONFIG_AUTO_LEFT_OAM
		auto_generate_left_oam(tmp_banim, oam_buf);
#else
		LZ77UnCompWram(tmp_banim->oam_l, oam_buf);
#endif

		*(u32 *)(oam_buf + BAS_OAM_REF_MAX_SIZE) = 1;
	} else {
		oam_buf = (u8 *)desc->oam_buf;

		LZ77UnCompWram(tmp_banim->oam_r, oam_buf);
		*(u32 *)(oam_buf + BAS_OAM_REF_MAX_SIZE) = 1;
	}

	/**
	 * front anim
	 */
	anim = BasCreate(scr1, priority1);
	anim->sprDataPool = desc->oam_buf;
	anim->xPosition = desc->x;
	anim->yPosition = desc->y;
	anim->oam2 = (desc->oam2_pal * 0x1000) | OAM2_LAYER(2) | desc->oam2_chr;
	anim->flags2 |= (desc->pos << 9) | ANIM_BIT2_0400 | ANIM_BIT2_BACK_FRAME;
	anim->nextRoundId = 0;
	anim->currentRoundType = desc->round_type;
	anim->imgBuf = desc->img_buf;

	desc->anim1 = anim;
	anim->priv = desc;

	/**
	 * back anim
	 */
	anim = BasCreate(scr2, priority2);
	anim->sprDataPool = desc->oam_buf;
	anim->xPosition = desc->x;
	anim->yPosition = desc->y;
	anim->oam2 = (desc->oam2_pal * 0x1000) | OAM2_LAYER(2) | desc->oam2_chr;
	anim->flags2 |= (desc->pos << 9) | ANIM_BIT2_0400 | ANIM_BIT2_FRONT_FRAME;
	anim->nextRoundId = 0;
	anim->currentRoundType = desc->round_type;
	anim->imgBuf = desc->img_buf;

	desc->anim2 = anim;
	anim->priv = desc;

	/**
	 * pal
	 */
	LZ77UnCompWram(banim[desc->bid].pal, desc->pal_buf);
	CpuFastCopy(desc->pal_buf + PAL_OFFSET(desc->faction_pal), gPal + 0x10 * 0x10 + PAL_OFFSET(desc->oam2_pal), 0x20);
	desc->img_sheet = NULL; // ?
	EnablePalSync();
}

void EkrMainMini_UpdateAnim(struct EkrMainMiniDesc *desc)
{
	int mode1, mode2;
	struct Anim *anim;
	u8 *oam_buf;
	u32 *scr1, *scr2;
	struct BattleAnim *banim, *tmp_banim;
	u8 *scr_buf;
	int *modes;

	banim = gBanimTable;

	mode1 = BanimDefaultModeConfig[desc->round_type * 4 + 0];
	mode2 = BanimDefaultModeConfig[desc->round_type * 4 + 2];

	/**
	 * scr
	 */
	LZ77UnCompWram(banim[desc->bid].script, desc->scr_buf);

	tmp_banim = &banim[desc->bid];
	modes = tmp_banim->modes;
	scr_buf = desc->scr_buf;

	scr1 = AnimScr_DefaultAnim;
	if (mode1 != (u8)BANIM_MODE_INVALID)
		scr1 = (void *)(scr_buf + modes[mode1]);

	scr2 = AnimScr_DefaultAnim;
	if (mode2 != (u8)BANIM_MODE_INVALID)
		scr2 = (void *)(scr_buf + modes[mode2]);

	/**
	 * oam
	 */
	if (desc->pos == POS_L) {
		oam_buf = (u8 *)desc->oam_buf;

#if CONFIG_AUTO_LEFT_OAM
		auto_generate_left_oam(tmp_banim, oam_buf);
#else
		LZ77UnCompWram(tmp_banim->oam_l, oam_buf);
#endif

		*(u32 *)(oam_buf + BAS_OAM_REF_MAX_SIZE) = 1;
	} else {
		oam_buf = (u8 *)desc->oam_buf;

		LZ77UnCompWram(tmp_banim->oam_r, oam_buf);
		*(u32 *)(oam_buf + BAS_OAM_REF_MAX_SIZE) = 1;
	}

	/**
	 * front anim
	 */
	anim = desc->anim1;
	anim->script = scr1;
	anim->scrCur = scr1;
	anim->sprDataPool = desc->oam_buf;
	anim->xPosition = desc->x;
	anim->yPosition = desc->y;
	anim->oam2 = (desc->oam2_pal * 0x1000) | OAM2_LAYER(2) | desc->oam2_chr;
	anim->flags2 &= ANIM_BIT2_FRONT_FRAME | ANIM_BIT2_POS_RIGHT | ANIM_BIT2_0400;
	anim->flags3 = 0;
	anim->timer = 0;
	anim->nextRoundId = 0;
	anim->currentRoundType = desc->round_type;
	anim->imgBuf = desc->img_buf;

	anim->cqSize = 0;
	desc->anim1 = anim;

	/**
	 * back anim
	 */
	anim = desc->anim2;
	anim->script = scr2;
	anim->scrCur = scr2;
	anim->sprDataPool = desc->oam_buf;
	anim->xPosition = desc->x;
	anim->yPosition = desc->y;
	anim->oam2 = (desc->oam2_pal * 0x1000) | OAM2_LAYER(2) | desc->oam2_chr;
	anim->flags2 &= ANIM_BIT2_FRONT_FRAME | ANIM_BIT2_POS_RIGHT | ANIM_BIT2_0400;
	anim->flags3 = 0;
	anim->timer = 0;
	anim->nextRoundId = 0;
	anim->currentRoundType = desc->round_type;
	anim->imgBuf = desc->img_buf;

	anim->cqSize = 0;
	desc->anim2 = anim;

	/**
	 * pal
	 */
	LZ77UnCompWram(banim[desc->bid].pal, desc->pal_buf);
	CpuFastCopy(desc->pal_buf + PAL_OFFSET(desc->faction_pal), gPal + 0x10 * 0x10 + PAL_OFFSET(desc->oam2_pal), 0x20);
	EnablePalSync();
}
