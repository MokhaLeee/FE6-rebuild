#ifndef SAVEMENU_H
#define SAVEMENU_H

#include "prelude.h"

enum {
	BGCHR_SAVEMENU_0 = 0,
	BGCHR_SAVEMENU_2_0 = 0, /* 8000 */

	OBCHR_SAVEMENU_1C0 = 0x1C0,
	OBCHR_SAVEMENU_200 = 0x200,

	OBPAL_SAVEMENU_9 = 9,

	OBPAL_SAVEMENU_1 = 1,
	OBPAL_SAVEMENU_2 = 2,
};

enum {
	L_SAVEMENU_BEGIN = 0,
	L_SAVEMENU_1 = 1,
	L_SAVEMENU_2 = 2,
	L_SAVEMENU_3 = 3,
	L_SAVEMENU_4 = 4,
	L_SAVEMENU_5 = 5,
	L_SAVEMENU_6 = 6,
	L_SAVEMENU_EXTRA_INTRO = 7,
	L_SAVEMENU_EXTRA_EXIT = 8,
	L_SAVEMENU_EXTRA_MENU = 9,
	L_SAVEMENU_XMAP1_MAIN = 10,
	L_SAVEMENU_XMAP1_INTRO = 11,
	L_SAVEMENU_XMAP1_EXIT = 12,
	L_SAVEMENU_13 = 13,
	L_SAVEMENU_14 = 14,
	L_SAVEMENU_15 = 15,
	L_SAVEMENU_16 = 16,
};

enum {
	SAVEMENU_PROMPT_0 = 0,
	SAVEMENU_PROMPT_1,
	SAVEMENU_PROMPT_2,
	SAVEMENU_PROMPT_3,
	SAVEMENU_PROMPT_4,
	SAVEMENU_PROMPT_5,
	SAVEMENU_PROMPT_6,
};

enum {
	SAVEMENU_ACTION_CONTINUE_SUSPEND = 1 << 0,
	SAVEMENU_ACTION_CONTINUE_GAME    = 1 << 1,
	SAVEMENU_ACTION_COPY             = 1 << 2,
	SAVEMENU_ACTION_ERASE            = 1 << 3,
	SAVEMENU_ACTION_NEW_GAME         = 1 << 4,
	SAVEMENU_ACTION_EXTRA_MENU       = 1 << 5,
	SAVEMENU_ACTION_SAVE_SCREEN      = 1 << 6,
	SAVEMENU_ACTION_MAIN_MENU        = 1 << 7,
};

enum {
	SAVEMENU_CONFIRM_NONE = 0,
	SAVEMENU_CONFIRM_YES  = 1,
	SAVEMENU_CONFIRM_NO   = 2,
};

enum {
	SAVEMENU_DIFFICULTY_UNSET  = 0,
	SAVEMENU_DIFFICULTY_NORMAL = 1,
	SAVEMENU_DIFFICULTY_HARD   = 2,
};

struct SaveMenuUiDrawProc;
struct SaveMenuBgRotateProc;
struct SaveMenuCursorProc;

struct SaveMenuProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 anim_clock;
	/* 2A */ u8 main_menu_cursor;
	/* 2B */ u8 selected_id;
	/* 2C */ u8 copy_from_id;
	/* 2D */ u8 ui_state;
	/* 2E */ u8 action;
	/* 2F */ u8 panel_scroll_x;
	/* 30 */ u8 main_menu_mask;
	/* 31 */ u8 main_menu_count;
	/* 32 */ u8 extra_menu_mask;
	/* 33 */ u8 max_index;
	/* 34 */ u8 hand_index;
	/* 35 */ u8 sel_index;
	/* 36 */ u8 confirm_state;
	/* 37 */ u8 chapter_title_ids[3];
	/* 3A */ u8 xmap_unlock_flags[3];
	/* 3D */ u8 difficulty_choice;
	/* 3E */ u8 help_box_shown;
	/* 3F */ u8 suspend_save_id;
	/* 40 */ u16 suspend_anim_scale;
	/* 42 */ u16 extra_panel_scroll_x;
	/* 44 */ u32 save_play_times[3];
	/* 50 */ u32 suspend_play_time;
	/* 54 */ struct SaveMenuUiDrawProc *ui_draw_proc;
	/* 58 */ struct SaveMenuBgRotateProc *bg_rotate_proc;
	/* 5C */ ProcPtr suspend_sprite_anim;
};

struct SaveMenuPaletteProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 fade_coef;
};

struct SaveMenuUiDrawProc {
	/* 00 */ PROC_HEADER_EXT(struct SaveMenuProc);
	/* 29 */ STRUCT_PAD(0x29, 0x2A);
	/* 2A */ u16 pal_anim_clock;
	/* 2C */ u16 unk_2C; /* unused */
	/* 2E */ u16 unk_2E; /* initialized to 0x100 */
	/* 30 */ u16 unk_30; /* unused */
	/* 32 */ u8 unk_32; /* unused */
	/* 33 */ u8 displayed_action;
	/* 34 */ struct SaveMenuCursorProc *cursor_proc;
	/* 38 */ STRUCT_PAD(0x38, 0x39);
	/* 39 */ u8 unk_39; /* unused */
	/* 3A */ u8 unk_3A; /* unused */
	/* 3B */ u8 unk_3B; /* initialized to 40 */
	/* 3C */ u8 displayed_save_id;
};

struct SaveMenuBgRotateProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ STRUCT_PAD(0x29, 0x2A);
	/* 2A */ u16 rotation_angle;
	/* 2C */ u16 rotation_clock;
	/* 2E */ STRUCT_PAD(0x2E, 0x30);
	/* 30 */ struct SaveMenuProc *save_menu_proc;
	/* 34 */ STRUCT_PAD(0x34, 0x3E); /* cleared at init, never read */
};

struct SaveMenuCursorProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ STRUCT_PAD(0x29, 0x2A);
	/* 2A */ u16 anim_clock;
	/* 2C */ u8 tail_clock;
	/* 2D */ u8 x;
	/* 2E */ u8 prev_x;
	/* 2F */ u8 y;
	/* 30 */ u8 prev_y;
	/* 31 */ u8 show_cursor;
	/* 32 */ u8 marker_y;
	/* 33 */ u8 show_copy_marker;
	/* 34 */ u8 hide_cursor_next_frame;
	/* 35 */ u8 panel;
};

struct SaveMenuOptionSprite {
	/* 00 */ u16 const *sprite;
	/* 04 */ u8 x_offset;
};

struct SaveMenuWindowEffectProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 clock;
	/* 2A */ i8 anim_direction;
	/* 2B */ u8 anim_speed;
};

void SaveMenuOnHBlank(void);
void SaveMenu_BeginExit(struct SaveMenuProc *proc);
fu8 GetSaveMenuSelectIndex(fu8 byte, int num);
fu8 SaveMenu_GetFirstSetBitIndex(fu8 byte);
void SaveMenu_UpdateHelpBox(struct SaveMenuProc *proc);
void SaveMenu_InitSong(struct SaveMenuProc *proc);
void SaveMenu_InitDisplay(struct SaveMenuProc *proc);
void SaveMenu_PutScreen(struct SaveMenuProc *proc);
void SaveMenu_SetupActiveDisplay(struct SaveMenuProc *proc);
void SaveMenu_GotoUiState(struct SaveMenuProc *proc);
void SaveMenu_MainMenu_Loop(struct SaveMenuProc *proc);
void SaveMenu_HandleSlotConfirm(struct SaveMenuProc *proc);
void SaveMenu_SaveSlot_Loop(struct SaveMenuProc *proc);
void SaveMenu_SaveScreenConfirm(struct SaveMenuProc *proc);
void SaveMenu_ActionAnim_Init(struct SaveMenuProc *proc);
void SaveMenu_ActionAnim_Loop(struct SaveMenuProc *proc);
void SaveMenu_PanelScrollIn_Loop(struct SaveMenuProc *proc);
void SaveMenu_PanelScrollOut_Loop(struct SaveMenuProc *proc);
void SaveMenu_ExtraMenuScrollIn(struct SaveMenuProc *proc);
void SaveMenu_ExtraMenuScrollOut(struct SaveMenuProc *proc);
void SaveMenu_XMap1ScrollIn(struct SaveMenuProc *proc);
void SaveMenu_XMap1ScrollOut(struct SaveMenuProc *proc);
void SaveMenu_ExtraMenu_Loop(struct SaveMenuProc *proc);
bool SaveMenu_SelectXmapSaveSlot(struct SaveMenuProc *proc, int direction);
void SaveMenu_Xmap1_Loop(struct SaveMenuProc *proc);
void SaveMenu_StartWindowEffect(struct SaveMenuProc *proc);
void SaveMenu_Finish(struct SaveMenuProc *proc);
void SaveMenu_StartXmapSoundRoom(struct SaveMenuProc *proc);
void SaveMenu_ResumeXmapExtraState(struct SaveMenuProc *proc);
void StartMainMenu(ProcPtr parent);
void StartSaveMenu(ProcPtr parent);

void SaveDraw_SavePalette(struct SaveMenuPaletteProc *proc);
void SaveDrawFadeIn_Loop(struct SaveMenuPaletteProc *proc);
void SaveDrawFadeOut_Loop(struct SaveMenuPaletteProc *proc);
void SaveDrawFadeOutFast_Loop(struct SaveMenuPaletteProc *proc);
void SaveDrawFadeOutSlow_Loop(struct SaveMenuPaletteProc *proc);
void StartSaveDrawFadeIn(ProcPtr proc);
void StartSaveDrawFadeOut(ProcPtr proc);
void StartSaveMenuFadeOutFast(ProcPtr parent);
void StartSaveDrawFadeOutSlow(ProcPtr parent);
void SaveMenu_CopyPaletteBlock(u16 const *src, u16 *dst, int count);
void SaveMenu_UpdateObjHighlightPalette(u32 point);
void SaveMenu_DrawPlayTime(ProcPtr proc);
void SaveMenu_SetBgAffine(fu8 bg, i32 scr_x, i32 scr_y, i32 tex_x, i32 tex_y, fi16 angle, fi16 scale);
void SaveMenuUiDraw_Init(struct SaveMenuUiDrawProc *proc);
void SaveMenu_SetHelpBoxPalette(bool arg_0, fu16 arg_1);
void SaveMenu_PutMainMenuOptionSprite(ProcPtr proc, int x, int y, fu8 arg_3, fu8 pal_a, fu8 pal_b);
void SaveMenu_PutExtraMenuOptionSprite(ProcPtr proc, int x, int y, fu8 arg_3, fu8 pal_a, fu8 pal_b);
void SaveMenuUiDraw_UpdateEffects(struct SaveMenuUiDrawProc *proc);
void SaveMenu_DrawMainMenuHeader(struct SaveMenuUiDrawProc *proc);
void SaveMenuUiDraw_Loop(struct SaveMenuUiDrawProc *proc);
struct SaveMenuUiDrawProc *StartSaveMenuUiDraw(struct SaveMenuProc *parent);
void SaveMenuBgRotate_Init(struct SaveMenuBgRotateProc *proc);
void SaveMenuBgRotate_Loop(struct SaveMenuBgRotateProc *proc);
struct SaveMenuBgRotateProc *StartSaveMenuBgRotate(struct SaveMenuProc *parent);
void SaveMenuCursor_Init(struct SaveMenuCursorProc *proc);
void SaveMenuCursor_Loop(struct SaveMenuCursorProc *proc);
void SaveMenu_SetCursorTarget(int panel, int x, fu8 y, struct SaveMenuUiDrawProc *proc);
void SaveMenu_SetCopyMarker(int panel, fu8 y, struct SaveMenuUiDrawProc *proc);
struct SaveMenuCursorProc *StartSaveMenuCursor(ProcPtr parent);
void SaveMenu_InitText(void);
void SaveMenu_PutPromptText(char const *string, bool display);
void SaveMenu_SetConfirmPrompt(struct SaveMenuProc *proc, bool display);
void SaveMenu_ClearChapterTitleVram(void);
void SaveMenu_BuildMainMenuMask(struct SaveMenuProc *proc);
fu8 SaveMenu_GetNextSaveIndex(fu8 save_id, bool valid, fi8 direction);
bool SaveMenu_ChangeSaveSlot(struct SaveMenuProc *proc, fi8 direction);
bool SaveMenu_HasRemainingMainMenuAction(struct SaveMenuProc *proc);
void SaveMenuWindowEffect_Loop(struct SaveMenuWindowEffectProc *proc);
void SaveMenu_StartWindowEffectProc(ProcPtr parent, fi8 anim_direction, fu8 anim_speed);
void SaveMenu_CopyBg2Tilemap(ProcPtr proc);
ProcPtr StartSaveMenuBg2TilemapCopy(ProcPtr parent);
void SaveMenu_LoadSaveSlotInfo(fu8 save_id, struct SaveMenuProc *proc);
void SaveMenu_UpdateChapterTitlePalettes(fu8 save_id);
fu8 SaveMenu_CountMainMenuItemsBefore(fu8 end_mask, struct SaveMenuProc *proc);

extern u16 gSaveMenuFadeFlag;
extern u16 gSaveMenuSavedPalette[0x200];
extern u16 gSaveMenuObjHighlightPalette[0x20];
extern u8 gSaveMenuSlotPlayFlags[3];

#endif /* SAVEMENU_H */
