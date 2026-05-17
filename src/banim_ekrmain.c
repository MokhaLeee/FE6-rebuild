#include "prelude.h"
#include "proc.h"
#include "oam.h"
#include "move.h"
#include "hardware.h"
#include "unit.h"
#include "battle.h"
#include "banim_sprite.h"
#include "banim.h"
#include "banim_data.h"
#include "constants/banims.h"
#include "constants/jids.h"

EWRAM_OVERLAY(banim) u8 gBanimImgSheetBuf_Left[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimKakudaiBuf_Left[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimImgSheetBuf_Right[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimKakudaiBuf_Right[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u16 gBanimPaletteLeft[0x50] = {};
EWRAM_OVERLAY(banim) u16 gBanimPaletteRight[0x50] = {};
EWRAM_OVERLAY(banim) u8 gBanimOamBufs[2 * BAS_OAM_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimScrs[2 * BAS_SCR_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimTerrainfxBufObj[0x2000] = {};
EWRAM_OVERLAY(banim) u16 gEfxPal[0x200] = {};
EWRAM_OVERLAY(banim) u16 Buf_EkrGaugeNumImg[0x200] = {};
EWRAM_OVERLAY(banim) u16 gUnk_Banim_02016DC0[0x40] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02016E40[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017040[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017240[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017440[0x200] = {};
EWRAM_OVERLAY(banim) struct Font gBanimFont = {};
EWRAM_OVERLAY(banim) struct Text gBanimText[20] = {};
EWRAM_OVERLAY(banim) u16 gEkrGaugeDecoder[18] = {};
EWRAM_OVERLAY(banim) u32 gEkrBattleEndFlag = 0;
EWRAM_OVERLAY(banim) u32 gEkrHpBarCount = 0;
EWRAM_OVERLAY(banim) u32 gEfxSpellAnimExists = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_02017728 = 0;
EWRAM_OVERLAY(banim) u32 gEkrDeadExist = 0;
EWRAM_OVERLAY(banim) u32 gEkrDeadEventExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxQuakeExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxHitQuakeExist = 0;
EWRAM_OVERLAY(banim) u32 gEkrInitPosReal = 0;
EWRAM_OVERLAY(banim) u32 gEfxFarAttackExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxBgSemaphore = 0;
EWRAM_OVERLAY(banim) u32 gEfxHpBarResireFlag = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201774C = 0;
EWRAM_OVERLAY(banim) u32 gEfxTeonoState = 0;
EWRAM_OVERLAY(banim) u32 gEfxTerrainLayerLow = 0;
EWRAM_OVERLAY(banim) struct Vec2i gEkrBg2QuakeVec = {};
EWRAM_OVERLAY(banim) i16 gUnk_Banim_0201775C[2] = {};
EWRAM_OVERLAY(banim) i16 gEfxSpecalEffectExist[2] = {};
EWRAM_OVERLAY(banim) struct ProcEfxStatusUnit *gpProcEfxStatusUnits[2] = {};
EWRAM_OVERLAY(banim) struct ProcEfxWeaponIcon *gpProcEfxWeaponIcon = NULL;
EWRAM_OVERLAY(banim) struct ProcEfxSpellCast *gpProcEfxSpellCast = NULL;
EWRAM_OVERLAY(banim) struct ProcEfxHpBarColorChange *gpProcEfxHpBarColorChange = NULL;
EWRAM_OVERLAY(banim) i16 gEkrHitNow[2] = {};
EWRAM_OVERLAY(banim) u8 gSpellAnimBgfx[0x1D00] = {};
EWRAM_OVERLAY(banim) u16 gEkrBarfxBuf[0x300 / 2] = {};
EWRAM_OVERLAY(banim) u16 gEkrTsaBuffer[0x1000 / 2] = {};
EWRAM_OVERLAY(banim) u8 gBuf_Banim[0x2000] = {};
EWRAM_OVERLAY(banim) u16 gPal_Banim[0xA0] = {};
EWRAM_OVERLAY(banim) u16 gTmA_Banim[0xB58 / sizeof(u16)] = {};
EWRAM_OVERLAY(banim) u16 gTmB_Banim[0xB58 / sizeof(u16)] = {};
EWRAM_OVERLAY(banim) i8 gEfxSplitedColorBufA[2][0x30] = {};
EWRAM_OVERLAY(banim) i8 gEfxSplitedColorBufB[2][0x30] = {};
EWRAM_OVERLAY(banim) i16 gEfxSplitedColorBufC[2][0x30] = {};
EWRAM_OVERLAY(banim) int gEkrWindowAppearUnexist = 0;
EWRAM_OVERLAY(banim) int gEkrNameWinAppearExist = 0;
EWRAM_OVERLAY(banim) int gProcEkrBaseAppearExist = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201E0F8 = 0;
EWRAM_OVERLAY(banim) struct EkrTerrainfxDesc gEkrTerrainfxDesc = {};
EWRAM_OVERLAY(banim) u32 gBanimDoneFlag[2] = {};
EWRAM_OVERLAY(banim) u32 gEkrBgPosition = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201E130[2] = {};
EWRAM_OVERLAY(banim) ProcPtr gpProcEfxAnimeDrv = NULL;
EWRAM_OVERLAY(banim) const void *gpImgSheet[2] = {};

CONST_DATA AnimScr AnimScr_DefaultAnim[] = {
	ANIMSCR_FRAME(1, NULL, BAS_OAM_REF_MAX_SIZE),
	ANIMSCR_BLOCKED
};

CONST_DATA u16 *TsaConfs_BanimTmA[] = {
	TsaConf_BanimTmA_08112380,
	TsaConf_BanimTmA_08112418,
	TsaConf_BanimTmA_081124B0,
	TsaConf_BanimTmA_08112548,
	TsaConf_BanimTmA_081124B0,
	TsaConf_BanimTmA_08112548,
	TsaConf_BanimTmA_081124B0,
	TsaConf_BanimTmA_08112548,
	TsaConf_BanimTmA_08112380,
	TsaConf_BanimTmA_08112418,
};

struct ProcScr CONST_DATA ProcScr_EkrChienCHR[] = {
	PROC_NAME_DEBUG("ekrChienCHR"),
	PROC_REPEAT(EkrChienCHR_Loop),
	PROC_END,
};

void NewEkrChienCHR(struct Anim *anim)
{
	struct ProcEfx *proc;

	proc = SpawnProc(ProcScr_EkrChienCHR, PROC_TREE_3);
	proc->anim = anim;
}

void EkrChienCHR_Loop(struct ProcEfx *proc)
{
	SyncBanimImage(proc->anim);
	Proc_Break(proc);
}

void SyncBanimImage(struct Anim * anim)
{
	void *mmap;

	mmap = OBJ_VRAM0 + OAM2_CHR(anim->oam2) * CHR_SIZE;

	LZ77UnCompWram(anim->imgSheet, anim->imgBuf);
	RegisterDataMove(anim->imgBuf, mmap, 0x2000);
}

void ApplyBanimUniquePalette(u32 *buf, int pos)
{
	u32 i;

	if (gBanimUniquePaletteDisabled[pos] == 0)
		return;

	for (i = 0; i < 8; i++)
		buf[i] = buf[i + 0x20];
}

int GetBanimPalette(int banim_id, int pos)
{
	u32 jid;
	struct BattleUnit *bu;

	if (POS_L == pos)
		bu = gpEkrBattleUnitLeft;
	else
		bu = gpEkrBattleUnitRight;

	jid = bu->unit.jinfo->id;
	switch (jid) {
	case JID_ARCHER:
		return BANIM_0E;
	
	case JID_ARCHER_F:
		return BANIM_0F;
	
	case JID_SNIPER:
		return BANIM_04;
	
	case JID_SNIPER_F:
		return BANIM_05;
	
	default:
		return banim_id;
	}
}

void UpdateBanimFrame(void)
{
	int bid, bid_pal, chara_pal;
	struct BattleAnim *banim;
	struct BattleAnim *tmp_banim0;
	struct BattleAnim *tmp_banim;

	banim = gBanimTable;
	++banim, --banim;

	gpImgSheet[POS_R] = NULL;
	gpImgSheet[POS_L] = NULL;

	if (gBanimValid[POS_L] == true) {
		bid = gBanimIdx[POS_L];
		bid_pal = gBanimFactionPal[POS_L];
		chara_pal = gBanimUniquePal[POS_L];

		tmp_banim = &gBanimTable[bid];
		LZ77UnCompWram(tmp_banim->script, &gBanimScrs[POS_L * BAS_SCR_MAX_SIZE]);
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

		if (bid != BANIM_74)
			LZ77UnCompWram(tmp_banim->oam_l, gBanimOamBufs);
		else
			LZ77UnCompWram(tmp_banim->oam_r, gBanimOamBufs);

		*(u32 *)(gBanimOamBufs + BAS_OAM_REF_MAX_SIZE) = 1;
	}

	if (gBanimValid[POS_R] == true) {
		bid = gBanimIdx[POS_R];
		bid_pal = gBanimFactionPal[POS_R];
		chara_pal = gBanimUniquePal[POS_R];

		LZ77UnCompWram(banim[bid].script, &gBanimScrs[POS_R * BAS_SCR_MAX_SIZE]);
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

void InitMainAnims(void)
{
	struct Anim *anim1, *anim2;

	switch (gEkrDistanceType) {
	case EKR_DISTANCE_CLOSE:
	case EKR_DISTANCE_MONOCOMBAT:
	case EKR_DISTANCE_PROMOTION:
		InitBattleAnimFrame(ANIM_ROUND_TAKING_HIT_CLOSE, ANIM_ROUND_TAKING_HIT_CLOSE);
		break;

	case EKR_DISTANCE_FAR:
		InitBattleAnimFrame(ANIM_ROUND_TAKING_HIT_FAR, ANIM_ROUND_TAKING_HIT_FAR);
		break;

	case EKR_DISTANCE_FARFAR:
		InitBattleAnimFrame(ANIM_ROUND_TAKING_HIT_FAR, ANIM_ROUND_TAKING_HIT_FAR);

		if (GetBanimInitPosReal() == POS_L) {
			anim1 = gAnims[2];
			anim1->xPosition = 0x180;

			anim2 = gAnims[3];
			anim2->xPosition = 0x180;
		} else {
			anim1 = gAnims[0];
			anim1->xPosition = 0x180;

			anim2 = gAnims[1];
			anim2->xPosition = 0x180;
		}
		break;

	default:
		break;
	}

	gEfxHpLutOff[0] = 0;
	gEfxHpLutOff[1] = 0;
}

void InitBattleAnimFrame(int round_type_left, int round_type_right)
{
	gAnims[0] = NULL;
	gAnims[1] = NULL;
	gAnims[2] = NULL;
	gAnims[3] = NULL;

	if (gBanimValid[POS_L] == true)
		InitLeftAnim(round_type_left);

	if (gBanimValid[POS_R] == true)
		InitRightAnim(round_type_right);

	/* Hide the left anim on init promotion */
	if (gEkrDistanceType == EKR_DISTANCE_PROMOTION) {
		gAnims[0]->flags |= BAS_BIT_HIDDEN;
		gAnims[1]->flags |= BAS_BIT_HIDDEN;
	}
}

void InitLeftAnim(int round_type)
{
	struct Anim *anim;
	u32 frame_front = BanimDefaultModeConfig[round_type * 4 + 0];
	u32 priority_front = BanimDefaultModeConfig[round_type * 4 + 1];
	u32 frame_back = BanimDefaultModeConfig[round_type * 4 + 2];
	u32 priority_back = BanimDefaultModeConfig[round_type * 4 + 3];
	u32 x_off = BanimTypesPosLeft[gEkrDistanceType];
	int scr_offset;
	void *scr;

	gEkrXPosBase[0] = -BanimLeftDefaultPos[gEkrDistanceType];
	gEkrYPosBase[0] = 0;
	gEkrXPosReal[0] = gEkrXPosBase[0] + x_off;
	gEkrYPosReal[0] = 0x58;

	scr_offset = gpBanimModesLeft[frame_front];
	scr = gBanimScrs + scr_offset;

	if (frame_front == 0xFF)
		scr = AnimScr_DefaultAnim;

	/* front */
	anim = BasCreate(scr, priority_front);
	anim->xPosition = gEkrXPosReal[0] - gEkrBgPosition;
	anim->yPosition = gEkrYPosReal[0];
	anim->oam2 = OAM2_PAL(0x7) + OAM2_LAYER(0x2) + OAM2_CHR(0x4000 / 0x20);
	anim->flags2 |= ANIM_BIT2_0400 | ANIM_BIT2_BACK_FRAME;
	anim->nextRoundId = 0x0;
	anim->currentRoundType = round_type;
	anim->imgBuf = gBanimImgSheetBuf_Left;
	anim->sprDataPool = gBanimOamBufs;
	gAnims[0] = anim;

	scr_offset = gpBanimModesLeft[frame_back];
	scr = gBanimScrs + scr_offset;

	if (frame_back == 0xFF)
		scr = AnimScr_DefaultAnim;

	/* back */
	anim = BasCreate(scr, priority_back);
	anim->xPosition = gEkrXPosReal[0] - gEkrBgPosition;
	anim->yPosition = gEkrYPosReal[0];
	anim->oam2 = OAM2_PAL(0x7) + OAM2_LAYER(0x2) + OAM2_CHR(0x4000 / 0x20);
	anim->flags2 |= ANIM_BIT2_0400 | ANIM_BIT2_FRONT_FRAME;
	anim->nextRoundId = 0x0;
	anim->currentRoundType = round_type;
	anim->imgBuf = gBanimImgSheetBuf_Left;
	anim->sprDataPool = gBanimOamBufs;
	gAnims[1] = anim;
}

void InitRightAnim(int round_type)
{
	struct Anim *anim;
	u32 frame_front = BanimDefaultModeConfig[round_type * 4 + 0];
	u32 priority_front = BanimDefaultModeConfig[round_type * 4 + 1];
	u32 frame_back = BanimDefaultModeConfig[round_type * 4 + 2];
	u32 priority_back = BanimDefaultModeConfig[round_type * 4 + 3];
	u32 x_off = BanimTypesPosRight[gEkrDistanceType];
	int scr_offset;
	void *scr;

	gEkrXPosBase[1] = 0;
	gEkrYPosBase[1] = 0;
	gEkrXPosReal[1] = gEkrXPosBase[1] + x_off;
	gEkrYPosReal[1] = 0x58;

	scr_offset = gpBanimModesRight[frame_front];
	scr = gBanimScrs + BAS_SCR_MAX_SIZE + scr_offset;

	if (frame_front == 0xFF)
		scr = AnimScr_DefaultAnim;

	/* front */
	anim = BasCreate(scr, priority_front);
	anim->xPosition = gEkrXPosReal[1] - gEkrBgPosition;
	anim->yPosition = gEkrYPosReal[1];
	anim->oam2 = OAM2_PAL(0x9) + OAM2_LAYER(0x2) + OAM2_CHR(0x6000 / 0x20);
	anim->flags2 |= ANIM_BIT2_POS_RIGHT | ANIM_BIT2_0400;
	anim->nextRoundId = 0x0;
	anim->currentRoundType = round_type;
	anim->imgBuf = gBanimImgSheetBuf_Right;
	anim->sprDataPool = gBanimOamBufs + BAS_OAM_MAX_SIZE;
	gAnims[2] = anim;

	scr_offset = gpBanimModesRight[frame_back];
	scr = gBanimScrs + BAS_SCR_MAX_SIZE + scr_offset;

	if (frame_back == 0xFF)
		scr = AnimScr_DefaultAnim;

	/* back */
	anim = BasCreate(scr, priority_back);
	anim->xPosition = gEkrXPosReal[1] - gEkrBgPosition;
	anim->yPosition = gEkrYPosReal[1];
	anim->oam2 = OAM2_PAL(0x9) + OAM2_LAYER(0x2) + OAM2_CHR(0x6000 / 0x20);
	anim->flags2 |= ANIM_BIT2_FRONT_FRAME | ANIM_BIT2_POS_RIGHT | ANIM_BIT2_0400;
	anim->nextRoundId = 0x0;
	anim->currentRoundType = round_type;
	anim->imgBuf = gBanimImgSheetBuf_Right;
	anim->sprDataPool = gBanimOamBufs + BAS_OAM_MAX_SIZE;
	gAnims[3] = anim;
}
