#include "prelude.h"
#include "proc.h"
#include "oam.h"
#include "hardware.h"
#include "banim.h"
#include "text.h"
#include "icon.h"
#include "util.h"
#include "efx-skill.h"

/**
 * Skill icon + name box.
 *
 * Ported from the kernel's EfxSkillBox.c.  FE6 already has the icon, text and
 * BaSprite helpers, so this version only adapts the object/VRAM names and the
 * text-clear helper.
 */

struct ProcEfxSkillBox {
	PROC_HEADER;
	u16 sid;
	struct Anim *anim;
	struct Anim *anim_icon, *anim_text, *anim_bg;
	struct Text text;
};

#define ICON_OBJ_CHR    0x40
#define ICON_OBJ_PAL    0x2

#define TEXT_OBJ_CHR    0x44
#define TEXT_OBJ_PAL    0xF

#define TEXT_BG_OBJ_CHR 0x50

#define BOX_Y 0x5C

extern AnimScr AnimScr_EfxSkillBoxIconLeft[];
extern AnimScr AnimScr_EfxSkillBoxIconRight[];
extern AnimScr AnimScr_EfxSkillBoxNameLeft[];
extern AnimScr AnimScr_EfxSkillBoxNameRight[];
extern u8 const Img_EfxSkillBoxBG[];

static void DrawEfxSkillName(struct ProcEfxSkillBox *proc)
{
	struct Font font;
	struct Text *text = &proc->text;
	char *str;

	ApplyObPalette(Pal_Text, TEXT_OBJ_PAL);

	InitSpriteTextFont(&font, OBJ_VRAM0 + TEXT_OBJ_CHR * CHR_SIZE, TEXT_OBJ_PAL);
	InitSpriteText(text);
	SetTextFontGlyphs(TEXT_GLYPHS_SYSTEM);

	/* 6 tiles wide; FE6 uses 2D OBJ mapping, so the second 8px row
	   lives 0x20 tiles after the first row. Clear both rows. */
	CpuFastFill16(0, OBJ_VRAM0 + TEXT_OBJ_CHR * CHR_SIZE, 0x180);
	CpuFastFill16(0, OBJ_VRAM0 + (TEXT_OBJ_CHR + 0x20) * CHR_SIZE, 0x180);

	str = GetSkillNameStr(proc->sid);
	Text_InsertDrawString(
		text,
		GetStringTextCenteredPos(0x30, str),
		TEXT_COLOR_SYSTEM_WHITE,
		str);

	SetTextFont(NULL);
}

static void EfxSkillBoxOnDraw(struct ProcEfxSkillBox *proc)
{
	struct Anim *anim;

	ApplyIconPalette(0, 0x10 + ICON_OBJ_PAL);
	PutIconObjImg(SKILL_ICON(proc->sid), ICON_OBJ_CHR);

	/* Icon */
	if (GetAnimPosition(proc->anim) == POS_L) {
		anim = BasCreate(AnimScr_EfxSkillBoxIconLeft, 0x95);
		if (anim)
			anim->xPosition = 0x30;
	} else {
		anim = BasCreate(AnimScr_EfxSkillBoxIconRight, 0x95);
		if (anim)
			anim->xPosition = 0xF0;
	}
	if (anim) {
		anim->oam2 = OAM2_PAL(ICON_OBJ_PAL) + OAM2_LAYER(1) + OAM2_CHR(ICON_OBJ_CHR);
		anim->yPosition = BOX_Y;
	}
	proc->anim_icon = anim;

	/* Name */
	DrawEfxSkillName(proc);

	if (GetAnimPosition(proc->anim) == POS_L) {
		anim = BasCreate(AnimScr_EfxSkillBoxNameLeft, 0x95);
		if (anim)
			anim->xPosition = 0x00;
	} else {
		anim = BasCreate(AnimScr_EfxSkillBoxNameRight, 0x95);
		if (anim)
			anim->xPosition = 0x100;
	}
	if (anim) {
		anim->oam2 = OAM2_PAL(TEXT_OBJ_PAL) + OAM2_LAYER(1) + OAM2_CHR(TEXT_OBJ_CHR);
		anim->yPosition = BOX_Y;
	}
	proc->anim_text = anim;

	/* Text background */
	Decompress(Img_EfxSkillBoxBG, gBuf);
	Copy2dChr(gBuf, OBJ_VRAM0 + TEXT_BG_OBJ_CHR * CHR_SIZE, 6, 2);

	if (GetAnimPosition(proc->anim) == POS_L) {
		anim = BasCreate(AnimScr_EfxSkillBoxNameLeft, 0x95);
		if (anim)
			anim->xPosition = 0x00;
	} else {
		anim = BasCreate(AnimScr_EfxSkillBoxNameRight, 0x95);
		if (anim)
			anim->xPosition = 0x100;
	}
	if (anim) {
		anim->oam2 = OAM2_PAL(ICON_OBJ_PAL) + OAM2_LAYER(1) + OAM2_CHR(TEXT_BG_OBJ_CHR);
		anim->yPosition = BOX_Y;
	}
	proc->anim_bg = anim;
}

static void EfxSkillBoxIdle(struct ProcEfxSkillBox *proc)
{
	if (proc->anim_text && proc->anim_text->flags != 0)
		return;

	if (proc->anim_icon && proc->anim_icon->flags != 0)
		return;

	if (proc->anim_bg && proc->anim_bg->flags != 0)
		return;

	Proc_Break(proc);
}

static const struct ProcScr ProcScr_EfxSkillBox[] = {
	PROC_NAME_DEBUG("EfxSkillBox"),
	PROC_YIELD,
	PROC_CALL(EfxSkillBoxOnDraw),
	PROC_REPEAT(EfxSkillBoxIdle),
	PROC_END
};

void NewEfxSkillBox(struct Anim *anim, u16 sid)
{
	struct ProcEfxSkillBox *proc;

	if (!anim || !SKILL_IS_VALID(sid) || sid >= MAX_SKILL_NUM)
		return;

	proc = SpawnProc(ProcScr_EfxSkillBox, PROC_TREE_3);
	if (!proc)
		return;

	proc->sid = sid;
	proc->anim = anim;
	proc->anim_icon = NULL;
	proc->anim_text = NULL;
	proc->anim_bg = NULL;
}

bool EfxSkillBoxExists(void)
{
	return Proc_Exists(ProcScr_EfxSkillBox);
}
