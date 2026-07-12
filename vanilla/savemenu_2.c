#include "savemenu.h"

#include "armfunc.h"
#include "hardware.h"
#include "move.h"
#include "oam.h"
#include "proc.h"
#include "sprite.h"
#include "spriteanim.h"
#include "text.h"
#include "ui.h"
#include "helpbox.h"
#include "save_core.h"
#include "save_game.h"

extern u16 const SpriteAnim_SaveMenuSuspendIcon[]; /* sprite anim */

extern struct SaveMenuOptionSprite SaveMenu_ExtraMenuOptionSprites[];
extern struct SaveMenuOptionSprite SaveMenu_MainMenuOptionSprites[];

extern u16 const *SaveMenu_SaveSlotLabelSprites[]; /* sprites */
extern u16 const *SaveMenu_SaveSlotFrameSprites[]; /* sprites */

u16 EWRAM_OVERLAY(savemenu) gSaveMenuObjHighlightPalette[0x20] = { 0 };

struct Font EWRAM_OVERLAY(savemenu) gSaveMenuFont = { 0 };
struct Text EWRAM_OVERLAY(savemenu) gSaveMenuText = { 0 };

u8 EWRAM_OVERLAY(savemenu) gSaveMenuSlotPlayFlags[3] = { 0 };

void SaveDraw_SavePalette(struct SaveMenuPaletteProc *proc)
{
	int i;

	proc->fade_coef = 0;

	for (i = 0; i < (int)ARRAY_COUNT(gPal); i++) {
		gSaveMenuSavedPalette[i] = gPal[i];
	}
}

void SaveDrawFadeIn_Loop(struct SaveMenuPaletteProc *proc)
{
	#define SCALE 0x10

	int i;
	fu8 coef = proc->fade_coef;

	for (i = 0; i < (int)ARRAY_COUNT(gPal); i++) {
		int b_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_B) * coef;
		int b_out = (b_scaled / SCALE) & RGB5_MASK_B;

		int g_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_G) * coef;
		int g_out = (g_scaled / SCALE) & RGB5_MASK_G;

		int r_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_R) * coef;
		int r_out = (r_scaled / SCALE) & RGB5_MASK_R;

		gPal[i] = b_out | g_out | r_out;
	}

	EnablePalSync();

	proc->fade_coef++;

	if (coef == SCALE) {
		Proc_Break(proc);
	}

	#undef SCALE
}

void SaveDrawFadeOut_Loop(struct SaveMenuPaletteProc *proc)
{
	#define SCALE 0x10

	int i;
	fu8 coef = SCALE - proc->fade_coef;

	for (i = 0; i < (int)ARRAY_COUNT(gPal); i++) {
		int b_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_B) * coef;
		int b_out = (b_scaled / SCALE) & RGB5_MASK_B;

		int g_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_G) * coef;
		int g_out = (g_scaled / SCALE) & RGB5_MASK_G;

		int r_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_R) * coef;
		int r_out = (r_scaled / SCALE) & RGB5_MASK_R;

		gPal[i] = b_out | g_out | r_out;
	}

	EnablePalSync();

	proc->fade_coef++;

	if (coef == 0) {
		SetDispEnable(0, 0, 0, 0, 0);
		Proc_Break(proc);
	}

	#undef SCALE
}

void SaveDrawFadeOutFast_Loop(struct SaveMenuPaletteProc *proc)
{
	#define SCALE 0x20

	int i;
	fu8 coef = SCALE - proc->fade_coef;

	for (i = 0; i < (int)ARRAY_COUNT(gPal); i++) {
		int b_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_B) * coef;
		int b_out = (b_scaled / SCALE) & RGB5_MASK_B;

		int g_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_G) * coef;
		int g_out = (g_scaled / SCALE) & RGB5_MASK_G;

		int r_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_R) * coef;
		int r_out = (r_scaled / SCALE) & RGB5_MASK_R;

		gPal[i] = b_out | g_out | r_out;
	}

	EnablePalSync();

	proc->fade_coef++;

	if (coef == 0) {
		SetDispEnable(0, 0, 0, 0, 0);
		Proc_Break(proc);
	}

	#undef SCALE
}

void SaveDrawFadeOutSlow_Loop(struct SaveMenuPaletteProc *proc)
{
	#define SCALE 0x40

	int i;
	fu8 coef = SCALE - proc->fade_coef;

	for (i = 0; i < (int)ARRAY_COUNT(gPal); i++) {
		int b_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_B) * coef;
		int b_out = (b_scaled / SCALE) & RGB5_MASK_B;

		int g_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_G) * coef;
		int g_out = (g_scaled / SCALE) & RGB5_MASK_G;

		int r_scaled = (gSaveMenuSavedPalette[i] & RGB5_MASK_R) * coef;
		int r_out = (r_scaled / SCALE) & RGB5_MASK_R;

		gPal[i] = b_out | g_out | r_out;
	}

	EnablePalSync();

	proc->fade_coef++;

	if (coef == 0) {
		SetDispEnable(0, 0, 0, 0, 0);
		Proc_Break(proc);
	}

	#undef SCALE
}

struct ProcScr CONST_DATA ProcScr_SaveDrawFadeIn[] = {
	PROC_CALL(SaveDraw_SavePalette),
	PROC_REPEAT(SaveDrawFadeIn_Loop),
	PROC_END,
};

void StartSaveDrawFadeIn(ProcPtr parent)
{
	SpawnProcLocking(ProcScr_SaveDrawFadeIn, parent);
}

struct ProcScr CONST_DATA ProcScr_SaveDrawFadeOut[] = {
	PROC_CALL(SaveDraw_SavePalette),
	PROC_REPEAT(SaveDrawFadeOut_Loop),
	PROC_END,
};

void StartSaveDrawFadeOut(ProcPtr parent)
{
	SpawnProcLocking(ProcScr_SaveDrawFadeOut, parent);
}

struct ProcScr CONST_DATA ProcScr_SaveDrawFadeOutFast[] = {
	PROC_CALL(SaveDraw_SavePalette),
	PROC_REPEAT(SaveDrawFadeOutFast_Loop),
	PROC_END,
};

void StartSaveMenuFadeOutFast(ProcPtr parent)
{
	SpawnProcLocking(ProcScr_SaveDrawFadeOutFast, parent);
}

struct ProcScr CONST_DATA ProcScr_SaveDrawFadeOutSlow[] = {
	PROC_CALL(SaveDraw_SavePalette),
	PROC_REPEAT(SaveDrawFadeOutSlow_Loop),
	PROC_END,
};

void StartSaveDrawFadeOutSlow(ProcPtr parent)
{
	SpawnProcLocking(ProcScr_SaveDrawFadeOutSlow, parent);
}

void SaveMenu_CopyPaletteBlock(u16 const *src, u16 *dst, int count)
{
	int i;

	for (i = 0; i < count * 0x10; i++)
		dst[i] = src[i];
}

void SaveMenu_UpdateObjHighlightPalette(u32 point)
{
	int i;

	point = point % 0x40;

	if ((point & 0x20) != 0)
		point = 0x20 - (point % 0x20);

	for (i = 1; i < 0x10; i++) {
		if (i < 8 || i > 10) {
			int r, g, b;
			u16 r_out, g_out, b_out;

			u16 source = gPal[OBPAL_OFFSET(OBPAL_SAVEMENU_2) + i];
			int blend = gSaveMenuObjHighlightPalette[0x10 + i];

			b = (RGB5_MASK_B & source) * (0x20 - point);
			b += (RGB5_MASK_B & blend) * (point);
			b_out = RGB5_MASK_B & (b >> 5);

			g = (RGB5_MASK_G & source) * (0x20 - point);
			g += (RGB5_MASK_G & blend) * (point);
			g_out = RGB5_MASK_G & (g >> 5);

			r = (RGB5_MASK_R & source) * (0x20 - point);
			r += (RGB5_MASK_R & blend) * (point);
			r_out = RGB5_MASK_R & (r >> 5);

			gPal[OBPAL_OFFSET(OBPAL_SAVEMENU_1) + i] = b_out | g_out | r_out;
		}
	}

	EnablePalSync();
}

u16 CONST_DATA Sprite_0868A0FC[] = {
	4,
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32, OAM2_CHR(0x80) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(32), OAM2_CHR(0x81) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(64), OAM2_CHR(0x81) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(96), OAM2_CHR(0x82) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A116[] = {
	3,
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32, OAM2_CHR(0x80) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(32), OAM2_CHR(0x81) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(64), OAM2_CHR(0x82) + OAM2_LAYER(1),
};

/* unused? */
u16 CONST_DATA Sprite_0868A12A[] = {
	6,
	OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x80) + OAM2_LAYER(1),
	OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x82) + OAM2_LAYER(1),
	OAM0_SHAPE_32x16 + OAM0_Y(16), OAM1_SIZE_32x16, OAM2_CHR(0xA0) + OAM2_LAYER(1),
	OAM0_SHAPE_32x16 + OAM0_Y(16), OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0xA2) + OAM2_LAYER(1),
	OAM0_SHAPE_32x16 + OAM0_Y(32), OAM1_SIZE_32x16, OAM2_CHR(0xC0) + OAM2_LAYER(1),
	OAM0_SHAPE_32x16 + OAM0_Y(32), OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0xC2) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A150[] = {
	1,
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32, OAM2_CHR(0x11C),
};

u16 CONST_DATA Sprite_0868A158[] = {
	1,
	OAM0_SHAPE_32x32 + OAM0_AFFINE_ENABLE, OAM1_SIZE_32x32 + OAM1_AFFINE_ID(3), OAM2_CHR(0x158) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A160[] = {
	3,
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32, OAM2_CHR(0x100) + OAM2_LAYER(1),
	OAM0_SHAPE_16x32, OAM1_SIZE_16x32 + OAM1_X(32), OAM2_CHR(0x101) + OAM2_LAYER(1),
	OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(48), OAM2_CHR(0x102) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A174[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0x9E) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A17C[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0x9F) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A184[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xBE) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A18C[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xBF) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A194[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xDE) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A19C[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xDF) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1A4[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xFE) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1AC[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0xFF) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1B4[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0x188) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1BC[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0x189) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1C4[] = {
	1,
	OAM0_SHAPE_8x8, OAM1_SIZE_8x8, OAM2_CHR(0x18A) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1CC[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x146) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1D4[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x147) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1DC[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x148) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1E4[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x149) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1EC[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14A) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1F4[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14B) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A1FC[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14C) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A204[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14D) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A20C[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14E) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A214[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x14F) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A21C[] = {
	1,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16, OAM2_CHR(0x150) + OAM2_LAYER(1),
};

u16 CONST_DATA Sprite_0868A224[] = {
	2,
	OAM0_SHAPE_32x8, OAM1_SIZE_32x8, OAM2_CHR(0x180) + OAM2_LAYER(1),
	OAM0_SHAPE_32x8, OAM1_SIZE_32x8 + OAM1_X(32), OAM2_CHR(0x184) + OAM2_LAYER(1),
};

u16 const * CONST_DATA Sprite_SaveMenuPlayTimeSmallDigits[] = {
	Sprite_0868A174,
	Sprite_0868A17C,
	Sprite_0868A184,
	Sprite_0868A18C,
	Sprite_0868A194,
	Sprite_0868A19C,
	Sprite_0868A1A4,
	Sprite_0868A1AC,
	Sprite_0868A1B4,
	Sprite_0868A1BC,
	Sprite_0868A1C4,
};

u16 const * CONST_DATA Sprite_SaveMenuPlayTimeLargeDigits[] = {
	Sprite_0868A1CC,
	Sprite_0868A1D4,
	Sprite_0868A1DC,
	Sprite_0868A1E4,
	Sprite_0868A1EC,
	Sprite_0868A1F4,
	Sprite_0868A1FC,
	Sprite_0868A204,
	Sprite_0868A20C,
	Sprite_0868A214,
	Sprite_0868A21C,
};

void SaveMenu_DrawPlayTime(ProcPtr proc)
{
	struct SaveMenuProc *sm_proc = ((struct Proc *)proc)->proc_parent;

	fu8 y, x;
	u16 hours, minutes, seconds;

	y = (0x20 - (sm_proc->panel_scroll_x * 0x20 / 220));
	y = y + 144;
	x = 144;

	if (sm_proc->action == SAVEMENU_ACTION_CONTINUE_GAME) {
		FormatTime(sm_proc->suspend_play_time, &hours, &minutes, &seconds);
	} else {
		FormatTime(sm_proc->save_play_times[sm_proc->selected_id], &hours, &minutes, &seconds);
	}

	PutSpriteExt(13, x + 0x10, y - 14, Sprite_0868A160, OAM2_PAL(2));
	PutSpriteExt(13, x + 0x14, y - 14, Sprite_0868A224, OAM2_PAL(5));

	if (hours >= 100) {
		PutSpriteExt(13, x + 0x12, y - 8, Sprite_SaveMenuPlayTimeLargeDigits[hours / 100], OAM2_PAL(5));
		hours = hours - (hours / 100 * 100); /* sure, 'hours % 100' would have been fine too */
	}

	if (hours >= 10) {
		PutSpriteExt(13, x + 0x1A, y - 8, Sprite_SaveMenuPlayTimeLargeDigits[hours / 10], OAM2_PAL(5));
	}

	PutSpriteExt(13, x + 0x22, y - 8, Sprite_SaveMenuPlayTimeLargeDigits[hours % 10], OAM2_PAL(5));

	PutSpriteExt(13, x + 0x2A, y - 7, Sprite_SaveMenuPlayTimeLargeDigits[10], OAM2_PAL(5));

	PutSpriteExt(13, x + 0x32, y - 8, Sprite_SaveMenuPlayTimeLargeDigits[minutes / 10], OAM2_PAL(5));
	PutSpriteExt(13, x + 0x3A, y - 8, Sprite_SaveMenuPlayTimeLargeDigits[minutes % 10], OAM2_PAL(5));

	PutSpriteExt(13, x + 0x42, y + 1, Sprite_SaveMenuPlayTimeSmallDigits[10], OAM2_PAL(5));

	PutSpriteExt(13, x + 0x4A, y, Sprite_SaveMenuPlayTimeSmallDigits[seconds / 10], OAM2_PAL(5));
	PutSpriteExt(13, x + 0x52, y, Sprite_SaveMenuPlayTimeSmallDigits[seconds % 10], OAM2_PAL(5));
}

void SaveMenu_SetBgAffine(fu8 bg, i32 scr_x, i32 scr_y, i32 tex_x, i32 tex_y, fi16 angle, fi16 scale)
{
	struct BgAffineSetSrc affine_src;

	affine_src.tex_x = tex_x;
	affine_src.tex_y = tex_y;
	affine_src.scr_x = scr_x >> 8;
	affine_src.scr_y = scr_y >> 8;
	affine_src.sx = 0x10000 / scale;
	affine_src.sy = 0x10000 / scale;
	affine_src.alpha = angle << 6;

	/* TODO: put proper affine structs inside gDispIo instead of using bg[23]pa directly */
	BgAffineSet(&affine_src, (bg == 2) ? (void *)&gDispIo.bg2pa : (void *)&gDispIo.bg3pa, 1);
}

void SaveMenuUiDraw_Init(struct SaveMenuUiDrawProc *proc)
{
	fu8 i;

	proc->unk_2C = 0;
	proc->unk_2E = 0x100;

	proc->unk_3A = 0;
	proc->unk_3B = 40;

	PutChapterTitleBG1(0xAC << 4);

	for (i = 0; i < 3; i++) {
		/* TODO: make sense of these constants */

		if (proc->proc_parent->chapter_title_ids[i] != 0xFF) {
			PutChapterTitleGfx(((u32)(0x16800 + 0x800 * i) & 0x1FFFF) >> 5,
					proc->proc_parent->chapter_title_ids[i]);
		} else {
			PutChapterTitleGfx(((u32)(0x16800 + 0x800 * i) & 0x1FFFF) >> 5, -1);
		}
	}

	proc->unk_30 = 0;
	proc->unk_32 = 0;

	SetObjAffine(0, 0x100, 0, 0, 0x100);
	SetObjAffine(1, 0x100, 0, 0, 0x100);
	SetObjAffine(2, 0x100, 0, 0, 0x100);

	proc->pal_anim_clock = 0;

	proc->cursor_proc = StartSaveMenuCursor(proc);
	proc->unk_39 = 0;

	if (proc->proc_parent->suspend_save_id == 0xFF) {
		proc->proc_parent->suspend_sprite_anim = NULL;
	} else {
		proc->proc_parent->suspend_sprite_anim = StartSpriteAnimProc(
			SpriteAnim_SaveMenuSuspendIcon, 320, 0x30 + proc->proc_parent->suspend_save_id * 0x20, 0x1A0, 0, 4);
	}

	proc->displayed_save_id = proc->proc_parent->selected_id;
}

void SaveMenu_SetHelpBoxPalette(bool arg_0, fu16 arg_1)
{
	if (arg_0) {
		gPal[OBPAL_OFFSET(6) + 8] = gPal[OBPAL_OFFSET(9) + (arg_1 / 4) % 0x10];
	} else {
		gPal[OBPAL_OFFSET(6) + 8] = gPal[OBPAL_OFFSET(9) + 13];
	}

	EnablePalSync();
}

void SaveMenu_PutMainMenuOptionSprite(ProcPtr proc, int x, int y, fu8 arg_3, fu8 pal_a, fu8 pal_b)
{
	PutSpriteExt(4, OAM1_X(x), y, Sprite_0868A0FC, OAM2_PAL(pal_a));

	PutSpriteExt(4, OAM1_X(x + 8 + SaveMenu_MainMenuOptionSprites[arg_3].x_offset), y + 8,
		SaveMenu_MainMenuOptionSprites[arg_3].sprite, OAM2_PAL(pal_b));
}

void SaveMenu_PutExtraMenuOptionSprite(ProcPtr proc, int x, int y, fu8 arg_3, fu8 pal_a, fu8 pal_b)
{
	PutSpriteExt(4, OAM1_X(x), y, Sprite_0868A0FC, OAM2_PAL(pal_a));

	PutSpriteExt(4, OAM1_X(x + 8 + SaveMenu_ExtraMenuOptionSprites[arg_3].x_offset), y + 8,
		SaveMenu_ExtraMenuOptionSprites[arg_3].sprite, OAM2_PAL(pal_b));
}

void SaveMenuUiDraw_UpdateEffects(struct SaveMenuUiDrawProc *proc)
{
	if (proc->displayed_save_id != proc->proc_parent->selected_id) {
		SaveMenu_UpdateChapterTitlePalettes(proc->proc_parent->selected_id);
		proc->displayed_save_id = proc->proc_parent->selected_id;
	}

	gPal[OBPAL_OFFSET(1) + 10] = gSaveMenuObjHighlightPalette[(proc->pal_anim_clock / 4) % 0x10];
	EnablePalSync();

	if (proc->proc_parent->suspend_save_id != 0xFF && proc->proc_parent->suspend_anim_scale != 0x100) {
		if (proc->proc_parent->suspend_anim_scale < 0x10) {
			proc->proc_parent->suspend_save_id = 0xFF;
		} else {
			/* angle = scale??? */
			SetObjAffineAuto(3, proc->proc_parent->suspend_anim_scale,
					proc->proc_parent->suspend_anim_scale,
					proc->proc_parent->suspend_anim_scale);
		}

		proc->proc_parent->suspend_anim_scale -= 0x10;
	}

	SaveMenu_UpdateObjHighlightPalette(proc->pal_anim_clock);
	proc->pal_anim_clock++;
}

void SaveMenu_DrawMainMenuHeader(struct SaveMenuUiDrawProc *proc)
{
	fu8 id;
	fu16 y;

	y = (0x100 + (0xD0 + proc->proc_parent->panel_scroll_x * 48 / 220)) & 0x1FF;

	PutSpriteExt(4, 0x38, y, Sprite_0868A0FC, OAM2_PAL(2));

	if (proc->proc_parent->extra_panel_scroll_x != 0) {
		id = SaveMenu_GetFirstSetBitIndex(proc->proc_parent->sel_index);

		PutSpriteExt(4, 0x40 + SaveMenu_MainMenuOptionSprites[id].x_offset, (y + 8) & 0x1FF,
			SaveMenu_ExtraMenuOptionSprites[id].sprite, OAM2_PAL(3));
	} else {
		id = SaveMenu_GetFirstSetBitIndex(proc->proc_parent->action);

		PutSpriteExt(4, 0x40 + SaveMenu_MainMenuOptionSprites[id].x_offset, (y + 8) & 0x1FF,
			SaveMenu_MainMenuOptionSprites[id].sprite, OAM2_PAL(3));
	}
}

void SaveMenuUiDraw_Loop(struct SaveMenuUiDrawProc *proc)
{
	/* TODO: clean up */

	fu8 i;
	fu8 id;
	int r5;
	fu8 r4;

	if (proc->proc_parent->action < 0x80) {
		if (proc->proc_parent->action == SAVEMENU_ACTION_EXTRA_MENU) {
			proc->displayed_action = proc->proc_parent->sel_index;
		} else {
			proc->displayed_action = proc->proc_parent->action;
		}
	}

	r5 = proc->proc_parent->panel_scroll_x + proc->proc_parent->extra_panel_scroll_x;

	if (r5 < 0xDC) {
		r4 = (6 - proc->proc_parent->main_menu_count) * 8;

		for (i = 0; i < proc->proc_parent->main_menu_count; i++) {
			id = GetSaveMenuSelectIndex(proc->proc_parent->main_menu_mask, i);
			id = SaveMenu_GetFirstSetBitIndex(id);

			if (i == proc->proc_parent->main_menu_cursor) {
				SaveMenu_PutMainMenuOptionSprite(proc, 0x38 - r5, r4 + i * 24, id, 1, 3);
			} else {
				SaveMenu_PutMainMenuOptionSprite(proc, 0x38 - r5, r4 + i * 24, id, 4, 8);
			}
		}

		if (proc->proc_parent->ui_state == L_SAVEMENU_1) {
			SaveMenu_SetCursorTarget(0, 0x24, r4 + proc->proc_parent->main_menu_cursor * 24, proc);
		}
	}

	if (proc->proc_parent->extra_panel_scroll_x > 0 && proc->proc_parent->extra_panel_scroll_x < 0x1B8) {
		r4 = (6 - proc->proc_parent->max_index) * 8;

		for (i = 0; i < proc->proc_parent->max_index; i++) {
			id = GetSaveMenuSelectIndex(proc->proc_parent->extra_menu_mask, i);
			id = SaveMenu_GetFirstSetBitIndex(id);

			if (i == proc->proc_parent->hand_index) {
				SaveMenu_PutExtraMenuOptionSprite(proc, 0x114 - proc->proc_parent->extra_panel_scroll_x, r4 + i * 26, id, 1, 3);
			} else {
				SaveMenu_PutExtraMenuOptionSprite(proc, 0x114 - proc->proc_parent->extra_panel_scroll_x, r4 + i * 26, id, 4, 8);
			}
		}

		if (proc->proc_parent->ui_state == L_SAVEMENU_EXTRA_MENU) {
			SaveMenu_SetCursorTarget(0, 0x24, r4 + proc->proc_parent->hand_index * 26, proc);
		}
	}

	if (proc->proc_parent->panel_scroll_x != 0) {
		SaveMenu_DrawPlayTime(proc);
		SaveMenu_DrawMainMenuHeader(proc);

		for (i = 0; i < 3; i++) {
			u32 r2 = (proc->proc_parent->ui_state == L_SAVEMENU_5 && proc->proc_parent->selected_id == i) ? 0x100 : 0;

			PutSpriteExt(4, OAM1_X(0xF4 - proc->proc_parent->panel_scroll_x), 0x20 + r2 + i * 0x20, SaveMenu_SaveSlotFrameSprites[i], OAM2_PAL(10 + i * 2));
			PutSpriteExt(4, OAM1_X(0xF4 - proc->proc_parent->panel_scroll_x), 0x20 + r2 + i * 0x20 + 8, SaveMenu_SaveSlotLabelSprites[i], OAM2_PAL(11 + i * 2));
		}

		if (proc->proc_parent->suspend_save_id != 0xFF) {
			if (proc->proc_parent->suspend_anim_scale != 0x100) {
				if (proc->proc_parent->suspend_sprite_anim != NULL) {
					EndSpriteAnimProc(proc->proc_parent->suspend_sprite_anim);
					proc->proc_parent->suspend_sprite_anim = NULL;
				}

				if (proc->proc_parent->action == SAVEMENU_ACTION_CONTINUE_GAME) {
					PutSpriteExt(4, 0xC2, 0x1E + proc->proc_parent->suspend_save_id * 0x20, Sprite_0868A158, 0);
				} else {
					PutSpriteExt(4, 0xC2, 0x1E + proc->proc_parent->suspend_save_id * 0x20, Sprite_0868A158, OAM2_PAL(6));
				}
			} else {
				if (proc->proc_parent->action == SAVEMENU_ACTION_CONTINUE_GAME) {
					SetSpriteAnimProcParameters(proc->proc_parent->suspend_sprite_anim,
						0x1AC - proc->proc_parent->panel_scroll_x, 0x34 + proc->proc_parent->suspend_save_id * 0x20, 0x1A0);
				} else {
					SetSpriteAnimProcParameters(proc->proc_parent->suspend_sprite_anim,
						0x140, 0x34 + proc->proc_parent->suspend_save_id * 0x20, 0x1A0);

					PutSpriteExt(4, 0x19E - proc->proc_parent->panel_scroll_x, 0x1E + proc->proc_parent->suspend_save_id * 0x20,
						Sprite_0868A158, OAM2_PAL(6));
				}
			}
		}
	}

	if (proc->proc_parent->ui_state == L_SAVEMENU_4 || proc->proc_parent->ui_state == L_SAVEMENU_5) {
		if (proc->proc_parent->confirm_state != SAVEMENU_CONFIRM_NONE) {
			int tmp;
			PutSpriteExt(4, 0x28, 0x80, Sprite_0868A116, 0x2000);

			tmp = proc->proc_parent->confirm_state - 1;
			PutUiHand(0x34 + (tmp - tmp / 2 * 2) * 0x28, 0x88);

			SaveMenu_SetCursorTarget(1, 12, 0x20 + proc->proc_parent->selected_id * 0x20, proc);
		} else {
			if (proc->proc_parent->selected_id != 0xFF) {
				SaveMenu_SetCursorTarget(1, 12, 0x20 + proc->proc_parent->selected_id * 0x20, proc);
			}
		}

		if (proc->proc_parent->copy_from_id != 0xFF) {
			SaveMenu_SetCopyMarker(1, 0x20 + proc->proc_parent->copy_from_id * 0x20, proc);
		}
	}

	SaveMenuUiDraw_UpdateEffects(proc);
}

struct ProcScr CONST_DATA ProcScr_SaveMenuUiDraw[] = {
	PROC_19,
	PROC_CALL(SaveMenuUiDraw_Init),
	PROC_REPEAT(SaveMenuUiDraw_Loop),
	PROC_END,
};

struct SaveMenuUiDrawProc *StartSaveMenuUiDraw(struct SaveMenuProc *parent)
{
	return SpawnProc(ProcScr_SaveMenuUiDraw, parent);
}

void SaveMenuBgRotate_Init(struct SaveMenuBgRotateProc *proc)
{
	proc->rotation_angle = 0;
	proc->rotation_clock = 0;
}

void SaveMenuBgRotate_Loop(struct SaveMenuBgRotateProc *proc)
{
	proc->rotation_angle++;
	proc->rotation_clock++;

	SaveMenu_SetBgAffine(2, 0x7800, 0x14000, 0x4C00, 0x4C00, proc->rotation_clock, 0x180);

	gDispIo.bg2pb *= 2;
	gDispIo.bg2pd *= 2;

	/* TODO: this is bad, esp. for MODERN */
	#define SET_REG(type, reg, src) (*((type *)&REG_##reg) = *((type *)&(src)))

	SET_REG(u32, BG2PA, gDispIo.bg2pa); /* set both with a single 32-bit copy */
	SET_REG(u32, BG2PC, gDispIo.bg2pc); /* set both with a single 32-bit copy */
	SET_REG(u32, BG2X, gDispIo.bg2x);
	SET_REG(u32, BG2Y, gDispIo.bg2y);

	#undef SET_REG
}

struct ProcScr CONST_DATA ProcScr_SaveMenuBgRotate[] = {
	PROC_19,
	PROC_CALL(SaveMenuBgRotate_Init),
	PROC_REPEAT(SaveMenuBgRotate_Loop),
	PROC_END,
};

struct SaveMenuBgRotateProc *StartSaveMenuBgRotate(struct SaveMenuProc *parent)
{
	struct SaveMenuBgRotateProc *proc;

	proc = SpawnProc(ProcScr_SaveMenuBgRotate, PROC_TREE_VSYNC);
	proc->save_menu_proc = parent;

	return proc;
}

void SaveMenuCursor_Init(struct SaveMenuCursorProc *proc)
{
	proc->show_cursor = 0;
	proc->anim_clock = 0;
	proc->x = 0;
	proc->prev_x = 0;
	proc->y = 0;
	proc->prev_y = 0;
	proc->show_copy_marker = 0;
	proc->panel = 0;
	proc->hide_cursor_next_frame = 0;
	proc->tail_clock = 0;
}

void SaveMenuCursor_Loop(struct SaveMenuCursorProc *proc)
{
	SHOULD_BE_STATIC u8 SHOULD_BE_CONST ALIGNED(4) SaveMenuCursorBobYTable[8] = {
		0, 1, 2, 3,
		3, 2, 1, 0,
	};

	proc->anim_clock++;
	proc->tail_clock++;

	if (proc->show_cursor != 0) {
		fu8 cursor_y = proc->y;
		fu8 cursor_x = proc->x;
		fu8 cursor_mirror_x;

		if (proc->tail_clock < 4) {
			cursor_y = (cursor_y + proc->prev_y) / 2;
			cursor_x = (cursor_x + proc->prev_x) / 2;
		}

		if (proc->panel == 0)
			cursor_mirror_x = 0x86 + cursor_x;
		else
			cursor_mirror_x = 0xB8 + cursor_x;

		proc->prev_y = proc->y;
		proc->prev_x = proc->x;

		if (proc->panel == 0) {
			PutSpriteExt(4, cursor_x,
					SaveMenuCursorBobYTable[(proc->anim_clock / 8) & 7] + cursor_y,
					Sprite_0868A150, OAM2_PAL(1));
			PutSpriteExt(4, cursor_mirror_x | OAM1_HFLIP,
					SaveMenuCursorBobYTable[(proc->anim_clock / 8) & 7] + cursor_y,
					Sprite_0868A150, OAM2_PAL(1));
		} else {
			PutSpriteExt(4, cursor_x,
					SaveMenuCursorBobYTable[(proc->anim_clock / 8) & 7] + cursor_y,
					Sprite_0868A150, OAM2_PAL(2));
		}

		proc->tail_clock = 0;
	} else if (proc->tail_clock == 4) {
		proc->show_cursor = 0;
	}

	if (proc->show_copy_marker != 0)
		PutSpriteExt(4, 12, proc->marker_y, Sprite_0868A150, OAM2_PAL(2));

	if (proc->hide_cursor_next_frame != 0)
		proc->show_copy_marker = 0;

	proc->show_cursor = 0;
	proc->hide_cursor_next_frame = 1;
}

void SaveMenu_SetCursorTarget(int a, int b, fu8 c, struct SaveMenuUiDrawProc *proc)
{
	struct SaveMenuCursorProc *self = proc->cursor_proc;

	self->y = c;
	self->x = b;
	self->show_cursor = 1;
	self->panel = a;
}

void SaveMenu_SetCopyMarker(int a, fu8 b, struct SaveMenuUiDrawProc *proc)
{
	struct SaveMenuCursorProc *self = proc->cursor_proc;

	self->marker_y = b;
	self->show_copy_marker = 1;
	self->panel = a;
	self->hide_cursor_next_frame = 0;
}

struct ProcScr CONST_DATA ProcScr_SaveMenuCursor[] = {
	PROC_19,
	PROC_CALL(SaveMenuCursor_Init),
	PROC_REPEAT(SaveMenuCursor_Loop),
	PROC_END,
};

struct SaveMenuCursorProc *StartSaveMenuCursor(ProcPtr parent)
{
	return SpawnProc(ProcScr_SaveMenuCursor, parent);
}

void SaveMenu_InitText(void)
{
	InitTextFont(&gSaveMenuFont, (void *)VRAM + 0x601 * 0x20, 1, 0);
	InitText(&gSaveMenuText, 10);
}

void SaveMenu_PutPromptText(char const *string, bool display)
{
	if (display) {
		SetTextFont(&gSaveMenuFont);
		ClearText(&gSaveMenuText);
		Text_SetCursor(&gSaveMenuText, 0);
		Text_SetColor(&gSaveMenuText, 0);
		Text_DrawString(&gSaveMenuText, string);
		PutText(&gSaveMenuText, gBg1Tm + TM_OFFSET(7, 17));
	} else {
		TmFillRect(gBg1Tm + TM_OFFSET(7, 17), 10, 1, 0);
	}

	EnableBgSync(BG1_SYNC_BIT);
}

char const * CONST_DATA SaveMenuPromptTextTable[] = {
	[SAVEMENU_PROMPT_0] = JTEXT(""),
	[SAVEMENU_PROMPT_1] = JTEXT("はじめる　やめる"),
	[SAVEMENU_PROMPT_2] = JTEXT("うつす　　やめる"),
	[SAVEMENU_PROMPT_3] = JTEXT("消す　　　やめる"),
	[SAVEMENU_PROMPT_4] = JTEXT("はじめる　やめる"),
	[SAVEMENU_PROMPT_5] = JTEXT("はじめる　やめる"),
	[SAVEMENU_PROMPT_6] = JTEXT("記録　　　やめる"),
};

void SaveMenu_SetConfirmPrompt(struct SaveMenuProc *proc, bool display)
{
	SaveMenu_PutPromptText(SaveMenuPromptTextTable[SaveMenu_GetFirstSetBitIndex(proc->action)], display);

	if (!display)
		proc->confirm_state = SAVEMENU_CONFIRM_NONE;
}

void SaveMenu_ClearChapterTitleVram(void)
{
	CpuFastFill(0, (void *)VRAM + 0x8000, 0x40 * 0x20);
	CpuFastFill(0, (void *)VRAM + 0xC000, 0x40 * 0x20);
}

void SaveMenu_BuildMainMenuMask(struct SaveMenuProc *proc)
{
	int i, save_count = 0;

	proc->main_menu_count = 0;
	proc->main_menu_mask = 0;
	proc->extra_menu_mask = 0;
	proc->max_index = 0;

	if (proc->suspend_anim_scale == 0x100) {
		proc->main_menu_mask |= 1;
		proc->main_menu_count++;
	}

	for (i = 0; i < 3; i++) {
		if (proc->chapter_title_ids[i] != 0xFF)
			save_count++;
	}

	if (save_count > 0) {
		proc->main_menu_mask |= 2;
		proc->main_menu_count++;

		if (save_count < 3) {
			proc->main_menu_mask |= 4;
			proc->main_menu_count++;
		}

		proc->main_menu_mask |= 8;
		proc->main_menu_count++;
	}

	if (save_count < 3) {
		proc->main_menu_mask |= 16;
		proc->main_menu_count++;
	}

	if (func_fe6_08084714()) {
		proc->extra_menu_mask |= 4;
		proc->max_index++;
	}

	if (IsMultiArenaAvailable()) {
		proc->extra_menu_mask |= 2;
		proc->max_index++;
	}

#if 0
	if (IsNotFirstPlaythrough_2()) {
		proc->extra_menu_mask |= 8;
		proc->max_index++;
	}

	if (CheckHasCompletedSave()) {
		proc->extra_menu_mask |= 1;
		proc->max_index++;
	}
#endif

	if (proc->extra_menu_mask != 0) {
		proc->main_menu_mask |= 32;
		proc->main_menu_count++;
	}
}

fu8 SaveMenu_GetNextSaveIndex(fu8 save_id, bool valid, fi8 direction)
{
	fu8 i;

	if (direction > 0) {
		for (i = 0; i < 3; i++) {
			if (IsSaveValid(save_id) == valid)
				return save_id;

			if (save_id == 2)
				save_id = 0;
			else
				save_id++;
		}
	} else {
		for (i = 0; i < 3; i++) {
			if (IsSaveValid(save_id) == valid)
				return save_id;

			if (save_id == 0)
				save_id = 2;
			else
				save_id--;
		}
	}

	return UINT8_MAX;
}

bool SaveMenu_ChangeSaveSlot(struct SaveMenuProc *proc, fi8 direction)
{
	int valid = FALSE;
	fu8 prev_selected_id = proc->selected_id;

	switch (proc->action) {
	case SAVEMENU_ACTION_CONTINUE_SUSPEND:
		return FALSE;

	case SAVEMENU_ACTION_CONTINUE_GAME:
		valid = TRUE;
		break;

	case SAVEMENU_ACTION_COPY:
		if (proc->copy_from_id == 0xFF)
			valid = TRUE;
		else
			valid = FALSE;
		break;

	case SAVEMENU_ACTION_ERASE:
		valid = TRUE;
		break;

	case SAVEMENU_ACTION_NEW_GAME:
		valid = FALSE;
		break;
	}

	if (direction > 0) {
		if (proc->selected_id == 2)
			proc->selected_id = 0;
		else
			proc->selected_id++;
	} else {
		if (proc->selected_id == 0)
			proc->selected_id = 2;
		else
			proc->selected_id--;
	}

	if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN)
		return TRUE;

	proc->selected_id = SaveMenu_GetNextSaveIndex(proc->selected_id, valid, direction);

	if (prev_selected_id == proc->selected_id)
		return FALSE;

	return TRUE;
}

bool SaveMenu_HasRemainingMainMenuAction(struct SaveMenuProc *proc)
{
	if ((proc->action & proc->main_menu_mask) != 0)
		return TRUE;

	return FALSE;
}

void SaveMenuWindowEffect_Loop(struct SaveMenuWindowEffectProc *proc)
{
	/* this function makes the following assumption */
	STATIC_ASSERT(DISPLAY_WIDTH / 3 == DISPLAY_HEIGHT / 2);

	proc->clock += proc->anim_speed;

	SetWinEnable(0, 1, 0);

	if (proc->anim_direction > 0) {
		SetWin1Box(
			proc->clock * 3, proc->clock * 2,
			DISPLAY_WIDTH - proc->clock * 3, DISPLAY_HEIGHT - proc->clock * 2);
	} else {
		SetWin1Box(
			(DISPLAY_WIDTH / 2) - proc->clock * 3, (DISPLAY_HEIGHT / 2) - proc->clock * 2,
			(DISPLAY_WIDTH / 2) + proc->clock * 3, (DISPLAY_HEIGHT / 2) + proc->clock * 2);
	}

	SetWin1Layers(1, 1, 1, 1, 1);
	SetWOutLayers(0, 0, 0, 0, 0);

	if (proc->clock >= (DISPLAY_WIDTH / 6))
		Proc_Break(proc);
}

struct ProcScr CONST_DATA ProcScr_SaveMenuWindowEffect[] = {
	PROC_19,
	PROC_SLEEP(1),
	PROC_REPEAT(SaveMenuWindowEffect_Loop),
	PROC_END,
};

void SaveMenu_StartWindowEffectProc(ProcPtr parent, fi8 anim_direction, fu8 anim_speed)
{
	struct SaveMenuWindowEffectProc *proc;

	proc = SpawnProcLocking(ProcScr_SaveMenuWindowEffect, parent);

	proc->anim_direction = anim_direction;
	proc->anim_speed = anim_speed;
	proc->clock = 0;
}

void SaveMenu_CopyBg2Tilemap(ProcPtr proc)
{
	RegisterDataMove(gBg2Tm, (void *)VRAM + 0x7000, sizeof(gBg2Tm));
}

struct ProcScr CONST_DATA ProcScr_SaveMenuBg2TilemapCopy[] = {
	PROC_19,
	PROC_SLEEP(1),
	PROC_REPEAT(SaveMenu_CopyBg2Tilemap),
	PROC_END,
};

ProcPtr StartSaveMenuBg2TilemapCopy(ProcPtr parent)
{
	return SpawnProc(ProcScr_SaveMenuBg2TilemapCopy, parent);
}

void SaveMenu_LoadSaveSlotInfo(fu8 save_id, struct SaveMenuProc *proc)
{
	struct PlaySt play_st;

	if (save_id < 3) {
		if (IsSaveValid(save_id)) {
			ReadGameSavePlaySt(save_id, &play_st);

			proc->chapter_title_ids[save_id] = GetChapterTitleExtra(&play_st);
			proc->save_play_times[save_id] = play_st.time_saved;

			if ((play_st.flags & PLAY_FLAG_COMPLETE) != 0)
				proc->xmap_unlock_flags[save_id] = 1;
			else
				proc->xmap_unlock_flags[save_id] = 0;

			gSaveMenuSlotPlayFlags[save_id] = play_st.flags;
		} else {
			proc->chapter_title_ids[save_id] = 0xFF;
			proc->xmap_unlock_flags[save_id] = 0;
			proc->save_play_times[save_id] = 0;
			gSaveMenuSlotPlayFlags[save_id] = 0;
		}
	} else if (save_id >= 3 && proc->suspend_anim_scale == 0x100) {
		if (IsValidSuspendSave(SAVE_SUSPEND)) {
			ReadSuspendSavePlaySt(SAVE_SUSPEND, &play_st);
			proc->suspend_save_id = play_st.save_id;
			proc->suspend_play_time = play_st.time_saved;
		} else {
			proc->suspend_anim_scale = 0xF0;
		}
	}
}

void SaveMenu_UpdateChapterTitlePalettes(fu8 save_id)
{
	int i;

	for (i = 0; i < 3; i++) {
		fu8 flags = (gSaveMenuSlotPlayFlags[i] & PLAY_FLAG_HARD) != 0 ? 4 : 0;

		if (i != save_id)
			flags |= 2;

		PutChapterTitlePalettle(flags | 1, 0x1A + i * 2);
		PutChapterTitlePalettle(flags | 0, 0x1B + i * 2);
	}

	EnablePalSync();
}

fu8 SaveMenu_CountMainMenuItemsBefore(fu8 end_mask, struct SaveMenuProc *proc)
{
	int mask, count = 0;

	for (mask = 1; mask < end_mask; mask <<= 1) {
		if ((proc->main_menu_mask & mask) != 0)
			count++;
	}

	return count;
}

