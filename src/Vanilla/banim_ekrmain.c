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

EWRAM_OVERLAY(banim) u8 *gpBanimScrs[2] = {};

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
	// scr = gBanimScrs + scr_offset;
	scr = gpBanimScrs[POS_L] + scr_offset;

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
	// scr = gBanimScrs + scr_offset;
	scr = gpBanimScrs[POS_L] + scr_offset;

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

	// scr = gBanimScrs + BAS_SCR_MAX_SIZE + scr_offset;
	scr = gpBanimScrs[POS_R] + scr_offset;

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

	// scr = gBanimScrs + BAS_SCR_MAX_SIZE + scr_offset;
	scr = gpBanimScrs[POS_R] + scr_offset;

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
