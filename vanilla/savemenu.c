#include "savemenu.h"

#include "gbaio.h"
#include "armfunc.h"
#include "hardware.h"
#include "oam.h"
#include "sound.h"
#include "sprite.h"
#include "spriteanim.h"
#include "gamecontroller.h"
#include "util.h"
#include "helpbox.h"
#include "save_core.h"
#include "save_game.h"

#include "constants/songs.h"
#include "constants/msg.h"

#include "constants/videoalloc_global.h"

struct SaveMenuUiDrawProc *StartSaveMenuUiDraw(struct SaveMenuProc *parent);
struct SaveMenuBgRotateProc *StartSaveMenuBgRotate(struct SaveMenuProc *parent);
fu8 SaveMenu_GetNextSaveIndex(fu8 save_id, bool valid, fi8 direction);
bool SaveMenu_ChangeSaveSlot(struct SaveMenuProc *proc, fi8 direction);
void SaveMenu_SetConfirmPrompt(struct SaveMenuProc *proc, bool display);
void SaveMenu_PutPromptText(char const *string, bool display);
bool SaveMenu_HasRemainingMainMenuAction(struct SaveMenuProc *proc);
bool SaveMenu_SelectXmapSaveSlot(struct SaveMenuProc *proc, int direction);
void SaveMenu_StartWindowEffectProc(ProcPtr parent, fi8 anim_direction, fu8 anim_speed);
void SaveMenu_ExecXmap(fu8 arg_0, ProcPtr parent);
void SaveMenu_ExecSoundroom(ProcPtr parent);
void StartSaveDrawFadeIn(ProcPtr parent);
void StartSaveDrawFadeOut(ProcPtr parent);
void StartSaveMenuFadeOutFast(ProcPtr parent);

extern u16 const Pal_SaveMenuObjHighlightCycle[]; /* colors */

#define REG_BLDY_16 (*(u16 volatile *)&REG_BLDY)

u16 EWRAM_OVERLAY(savemenu) gSaveMenuFadeFlag = 0;
u16 EWRAM_OVERLAY(savemenu) gSaveMenuSavedPalette[0x200] = { 0 };

void SaveMenuOnHBlank(void)
{
	u16 vcount = REG_VCOUNT + 1;

	if (vcount > DISPLAY_HEIGHT)
		vcount = 0;

	if (vcount < 60) {
		REG_BLDCNT = 0xC1;
		REG_BLDY_16 = 15 - vcount / 4;
	}

	if (vcount > 100) {
		REG_BLDCNT = 0xA2 << 1;
		REG_BLDALPHA = 0x100A;
	}
}

void SaveMenu_BeginExit(struct SaveMenuProc *proc)
{
	Proc_Goto(proc, L_SAVEMENU_16);
	StartBgmVolumeChange(0x80, 0x00, 0x10, NULL);
}

/* gets the mask for the num-th set bit in byte */
fu8 GetSaveMenuSelectIndex(fu8 byte, int num)
{
	int i, count = 0;

	for (i = 0; i < CHAR_BIT; i++) {
		if (((byte >> i) & 1) != 0) {
			count++;

			if (num + 1 == count)
				return 1 << i;
		}
	}

	return UINT8_MAX;
}

/* slow ctz */
fu8 SaveMenu_GetFirstSetBitIndex(fu8 byte)
{
	int i;

	for (i = 0; i < CHAR_BIT; i++) {
		if (((byte >> i) & 1) != 0)
			return i;
	}

	return UINT8_MAX;
}

void SaveMenu_UpdateHelpBox(struct SaveMenuProc *proc)
{
	if ((proc->suspend_save_id == 0xFF) || (proc->confirm_state == SAVEMENU_CONFIRM_NONE)) {
		CloseHelpBox();
		proc->help_box_shown = 0;

		return;
	}

	switch (proc->action) {
	case SAVEMENU_ACTION_CONTINUE_GAME:
	case SAVEMENU_ACTION_NEW_GAME:
	case SAVEMENU_ACTION_EXTRA_MENU:
		if (proc->difficulty_choice != SAVEMENU_DIFFICULTY_UNSET && proc->confirm_state != SAVEMENU_CONFIRM_NONE && proc->help_box_shown == 0) {
			StartHelpBox_08070804(0x30, 0x30, MSG_6C3);
			proc->help_box_shown = 1;
		}

		break;
	}
}

void SaveMenu_InitSong(struct SaveMenuProc *proc)
{
	if ((proc->action == SAVEMENU_ACTION_MAIN_MENU && (GetCurrentBgmSong() == SONG_01 || GetCurrentBgmSong() == SONG_44 || GetCurrentBgmSong() == SONG_01))
		|| proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
		StartBgmVolumeChange(0x100, 0x80, 0x20, NULL);
		return;
	}

	if (proc->sel_index != 1) {
		StartBgmCore(SONG_01, NULL);
		StartBgmVolumeChange(0, 0x80, 60, NULL);
	}
}

void SaveMenu_InitDisplay(struct SaveMenuProc *proc)
{
	static u16 SHOULD_BE_CONST savemenu_bg_config[12] = {
		0x0000, 0x6000, BG_SIZE_256x256,
		0xC000, 0x6800, BG_SIZE_256x256,
		0x8000, 0x7800, BG_SIZE_256x256,
		0x8000, 0x7800, BG_SIZE_256x256,
	};

	InitBgs(savemenu_bg_config);

	gDispIo.disp_ct.mode = BG_MODE_MIXED;

	gDispIo.bg2_ct.size = BG_SIZE_512x256;
	gDispIo.bg2_ct.wrap = 0;

	SetDispEnable(0, 0, 0, 0, 0);

	gDispIo.bg0_ct.priority = 3;
	gDispIo.bg1_ct.priority = 0;
	gDispIo.bg2_ct.priority = 1;
	gDispIo.bg3_ct.priority = 1;

	SetBgOffset(0, 0, 0);
	SetBgOffset(1, 0, 0);
	SetBgOffset(2, 0, 0);
	SetBgOffset(3, 0, 0);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	TmFill(gBg3Tm, 0);

	SaveMenu_InitSong(proc);
}

void SaveMenu_PutScreen(struct SaveMenuProc *proc)
{
	int i;

	ResetTextFont();
	ApplySystemObjectsGraphics();
	ApplyPalettes(Pal_CommGameBgScreenInShop, 2, 2);
	Decompress(Img_MuralBackground, ((void *)VRAM) + GetBgChrOffset(0) + CHR_SIZE * BGCHR_SAVEMENU_0);
	TmApplyTsa(gBg0Tm, Tsa_CommGameBgScreenInShop, 0);
	ApplyPalettes(Pal_SupportMenu, 0x11, 8);
	LoadHelpBoxGfx(OBJ_VRAM0 + CHR_SIZE * OBCHR_SAVEMENU_1C0, OBPAL_SAVEMENU_9);
	SaveMenu_CopyPaletteBlock(Pal_SaveMenuObjHighlightCycle, gSaveMenuObjHighlightPalette, 2);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT | BG3_SYNC_BIT);

	proc->anim_clock = 0;

	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.win1_enable_blend = 1;

	Decompress(Img_SupportMenu, OBJ_VRAM0 + 0x1000);

	if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
		LoadHelpBoxGfx(OBJ_VRAM0 + CHR_SIZE * OBCHR_SAVEMENU_1C0, OBPAL_SAVEMENU_9);
	} else {
		Decompress(Img_SaveMenuDefaultObjGfx, OBJ_VRAM0 + CHR_SIZE * OBCHR_SAVEMENU_1C0);
	}

	if (proc->action == SAVEMENU_ACTION_EXTRA_MENU) {
		if (proc->sel_index == 1) {
			LoadHelpBoxGfx(OBJ_VRAM0 + CHR_SIZE * OBCHR_SAVEMENU_200, 9);
		}
	} else {
		if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
			proc->ui_state = L_SAVEMENU_4;
			proc->selected_id = ReadLastGameSaveId();
		} else {
			proc->ui_state = L_SAVEMENU_1;
			proc->selected_id = 0;
		}

		proc->main_menu_cursor = 0;
		proc->hand_index = 0;
		proc->extra_panel_scroll_x = 0;
	}

	proc->confirm_state = SAVEMENU_CONFIRM_NONE;
	proc->copy_from_id = UINT8_MAX;
	proc->difficulty_choice = SAVEMENU_DIFFICULTY_NORMAL;

	SaveMenu_ClearChapterTitleVram();

	for (i = 0; i < 4; i++) {
		SetObjAffineAuto(i, 0, 0x100, 0x100);
	}

	proc->suspend_anim_scale = 0x100;
	proc->suspend_save_id = 0xFF;
	proc->help_box_shown = 0;

	gSaveMenuFadeFlag = 0;

	SetOnHBlankA(SaveMenuOnHBlank);
}

void SaveMenu_SetupActiveDisplay(struct SaveMenuProc *proc)
{
	int i;

	SetDispEnable(1, 1, 1, 1, 1);

	Decompress(Img_SaveMenuChapterTitleBgChr, ((void *)VRAM) + GetBgChrOffset(2) + CHR_SIZE * BGCHR_SAVEMENU_2_0);

	/* SPINNY BOI LETSGO */
	func_fe6_08001B8C(gBg3Tm, Tsa_SaveMenuSpinDecoration, 0, 5 /* 32 bytes per line */);
	EnableBgSync(BG3_SYNC_BIT);

	for (i = 0; i < 4; i++) {
		SaveMenu_LoadSaveSlotInfo(i, proc);
	}

	SaveMenu_InitText();

	if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
		proc->main_menu_mask = SAVEMENU_ACTION_SAVE_SCREEN;
		proc->action = SAVEMENU_ACTION_SAVE_SCREEN;
		proc->main_menu_count = 0;
	} else {
		SaveMenu_BuildMainMenuMask(proc);

		if (proc->action == SAVEMENU_ACTION_EXTRA_MENU) {
			proc->main_menu_cursor = SaveMenu_CountMainMenuItemsBefore(SAVEMENU_ACTION_EXTRA_MENU, proc);
		} else {
			proc->action = GetSaveMenuSelectIndex(proc->main_menu_mask, proc->main_menu_cursor);
		}
	}

	EnableBgSync(BG1_SYNC_BIT);
	SetWinEnable(0, 0, 0);
	SetBackdropColor(0);

	SaveMenu_UpdateChapterTitlePalettes(proc->selected_id);
	proc->ui_draw_proc = StartSaveMenuUiDraw(proc);
	proc->bg_rotate_proc = StartSaveMenuBgRotate(proc);

	if (proc->ui_state == L_SAVEMENU_1)
		proc->panel_scroll_x = 0;

	if (proc->ui_state == L_SAVEMENU_4)
		proc->panel_scroll_x = 220;
}

void SaveMenu_GotoUiState(struct SaveMenuProc *proc)
{
	Proc_Goto(proc, proc->ui_state);
}

void SaveMenu_MainMenu_Loop(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_1;

	if ((gKeySt->repeated & KEY_DPAD_UP) != 0) {
		if (proc->main_menu_cursor != 0) {
			proc->main_menu_cursor--;
			PlaySe(SONG_66);
		} else if ((gKeySt->pressed & KEY_DPAD_UP) != 0) {
			proc->main_menu_cursor = proc->main_menu_count - 1;
			PlaySe(SONG_66);
		}
	} else if ((gKeySt->repeated & KEY_DPAD_DOWN) != 0) {
		if (proc->main_menu_cursor < proc->main_menu_count - 1) {
			proc->main_menu_cursor++;
			PlaySe(SONG_66);
		} else if ((gKeySt->pressed & KEY_DPAD_DOWN) != 0) {
			proc->main_menu_cursor = 0;
			PlaySe(SONG_66);
		}
	}

	if ((gKeySt->pressed & KEY_BUTTON_A) != 0) {
		proc->action = GetSaveMenuSelectIndex(proc->main_menu_mask, proc->main_menu_cursor);
		PlaySe(SONG_6A);

		proc->anim_clock = 0;

		switch (proc->action) {
		case SAVEMENU_ACTION_CONTINUE_SUSPEND:
			proc->selected_id = proc->suspend_save_id;
			Proc_Goto(proc, L_SAVEMENU_2);
			break;

		case SAVEMENU_ACTION_CONTINUE_GAME:
			proc->selected_id = SaveMenu_GetNextSaveIndex(ReadLastGameSaveId(), TRUE, 1);
			Proc_Goto(proc, L_SAVEMENU_2);
			break;

		case SAVEMENU_ACTION_COPY:
			proc->selected_id = SaveMenu_GetNextSaveIndex(ReadLastGameSaveId(), TRUE, 1);
			Proc_Goto(proc, L_SAVEMENU_2);
			break;

		case SAVEMENU_ACTION_ERASE:
			proc->selected_id = SaveMenu_GetNextSaveIndex(ReadLastGameSaveId(), TRUE, 1);
			Proc_Goto(proc, L_SAVEMENU_2);
			break;

		case SAVEMENU_ACTION_NEW_GAME:
			proc->selected_id = SaveMenu_GetNextSaveIndex(proc->selected_id, FALSE, 1);
			Proc_Goto(proc, L_SAVEMENU_2);
			break;

		case SAVEMENU_ACTION_EXTRA_MENU:
			if (proc->hand_index >= proc->max_index)
				proc->hand_index = 0;

			Proc_Goto(proc, L_SAVEMENU_EXTRA_INTRO);
			break;
		}
	} else if ((gKeySt->pressed & KEY_BUTTON_B) != 0) {
		PlaySe(SONG_6B);
		Proc_Goto(proc, L_SAVEMENU_16);
		proc->action = SAVEMENU_ACTION_MAIN_MENU;
	}
}

void SaveMenu_HandleSlotConfirm(struct SaveMenuProc *proc)
{
	if (proc->confirm_state == SAVEMENU_CONFIRM_NONE) {
		PlaySe(SONG_6A);

		switch (proc->action) {
		case SAVEMENU_ACTION_COPY:
			if (proc->copy_from_id == UINT8_MAX) {
				proc->copy_from_id = proc->selected_id;
				SaveMenu_ChangeSaveSlot(proc, 1);
			} else {
				CopyGameSave(proc->copy_from_id, proc->selected_id);
				Proc_Goto(proc, L_SAVEMENU_5);
			}

			return;

		case SAVEMENU_ACTION_ERASE:
			proc->confirm_state = SAVEMENU_CONFIRM_NO;
			SaveMenu_SetConfirmPrompt(proc, 1);
			break;

		case SAVEMENU_ACTION_CONTINUE_GAME:
		case SAVEMENU_ACTION_NEW_GAME:
		case SAVEMENU_ACTION_EXTRA_MENU:
		case SAVEMENU_ACTION_SAVE_SCREEN:
			proc->confirm_state = SAVEMENU_CONFIRM_NO;
			SaveMenu_SetConfirmPrompt(proc, 1);
			break;
		}

		SaveMenu_UpdateHelpBox(proc);
	} else {
		switch (proc->action) {
		case SAVEMENU_ACTION_EXTRA_MENU:
			if (proc->confirm_state == SAVEMENU_CONFIRM_YES) {
				proc->suspend_anim_scale = 0xF0;
				ReadGameSave(SAVE_GAME0 + proc->selected_id);
				Proc_Goto(proc, L_SAVEMENU_13);
				PlaySe(SONG_6A);
			} else {
				PlaySe(SONG_6B);
			}

			break;

		case SAVEMENU_ACTION_CONTINUE_GAME:
			if (proc->confirm_state == SAVEMENU_CONFIRM_YES) {
				proc->suspend_anim_scale = 0xF0;
				PlaySe(SONG_6A);
				SaveMenu_BeginExit(proc);
			} else {
				PlaySe(SONG_6B);
			}

			break;

		case SAVEMENU_ACTION_NEW_GAME:
			if (proc->confirm_state == SAVEMENU_CONFIRM_YES) {
				if (proc->difficulty_choice == SAVEMENU_DIFFICULTY_NORMAL) {
					WriteNewGameSave(proc->selected_id, FALSE);
				} else if (proc->difficulty_choice == SAVEMENU_DIFFICULTY_HARD) {
					WriteNewGameSave(proc->selected_id, TRUE);
				}

				Proc_Goto(proc, L_SAVEMENU_5);
				PlaySe(SONG_60);
			} else {
				PlaySe(SONG_6B);
			}

			break;

		case SAVEMENU_ACTION_ERASE:
			if (proc->confirm_state == SAVEMENU_CONFIRM_YES) {
				InvalidateGameSave(proc->selected_id);
				Proc_Goto(proc, L_SAVEMENU_5);
				PlaySe(SONG_6A);
			} else {
				PlaySe(SONG_6B);
			}

			break;

		case SAVEMENU_ACTION_SAVE_SCREEN:
			if (proc->confirm_state == SAVEMENU_CONFIRM_YES) {
				WriteGameSave(proc->selected_id);
				Proc_Goto(proc, L_SAVEMENU_5);
				PlaySe(SONG_60);
			} else {
				PlaySe(SONG_6B);
			}

			break;
		}

		SaveMenu_SetConfirmPrompt(proc, 0);
		SaveMenu_UpdateHelpBox(proc);
	}
}

void SaveMenu_SaveSlot_Loop(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_4;

	if (proc->confirm_state == SAVEMENU_CONFIRM_NONE) {
		if ((gKeySt->pressed & KEY_DPAD_UP) != 0) {
			if (SaveMenu_ChangeSaveSlot(proc, -1))
				PlaySe(SONG_66);
		} else if ((gKeySt->pressed & KEY_DPAD_DOWN) != 0) {
			if (SaveMenu_ChangeSaveSlot(proc, +1))
				PlaySe(SONG_66);
		}
	} else if ((gKeySt->pressed & KEY_DPAD_LEFT) != 0) {
		if (proc->confirm_state != SAVEMENU_CONFIRM_YES) {
			proc->confirm_state = SAVEMENU_CONFIRM_YES;
			PlaySe(SONG_67);
			SaveMenu_UpdateHelpBox(proc);
		}
	} else if ((gKeySt->pressed & KEY_DPAD_RIGHT) != 0) {
		if (proc->confirm_state != SAVEMENU_CONFIRM_NO) {
			proc->confirm_state = SAVEMENU_CONFIRM_NO;
			PlaySe(SONG_67);
			SaveMenu_UpdateHelpBox(proc);
		}
	}

	if ((gKeySt->pressed & KEY_BUTTON_A) != 0) {
		proc->anim_clock = 0;

		switch (proc->action) {
		case SAVEMENU_ACTION_CONTINUE_GAME:
			if (proc->suspend_save_id == 0xFF) {
				PlaySe(SONG_6A);
				SaveMenu_BeginExit(proc);
			} else {
				SaveMenu_HandleSlotConfirm(proc);
			}

			break;

		case SAVEMENU_ACTION_CONTINUE_SUSPEND:
			PlaySe(SONG_6A);
			SaveMenu_BeginExit(proc);
			break;

		case SAVEMENU_ACTION_COPY:
		case SAVEMENU_ACTION_ERASE:
		case SAVEMENU_ACTION_SAVE_SCREEN:
			SaveMenu_HandleSlotConfirm(proc);
			break;

		case SAVEMENU_ACTION_NEW_GAME:
			if (proc->difficulty_choice == SAVEMENU_DIFFICULTY_UNSET) {
				if (proc->confirm_state == SAVEMENU_CONFIRM_YES)
					proc->difficulty_choice = SAVEMENU_DIFFICULTY_NORMAL;
				else
					proc->difficulty_choice = SAVEMENU_DIFFICULTY_HARD;

				SaveMenu_SetConfirmPrompt(proc, 0);

				if (proc->suspend_save_id != 0xFF) {
					Proc_Goto(proc, L_SAVEMENU_6);
					break;
				}
			} else if (IsNotFirstPlaythrough() && proc->confirm_state == SAVEMENU_CONFIRM_NONE) {
				proc->difficulty_choice = SAVEMENU_DIFFICULTY_UNSET;
				proc->confirm_state = SAVEMENU_CONFIRM_YES;
				SaveMenu_PutPromptText(JTEXT("ノーマル　ハード"), TRUE);
				PlaySe(SONG_6A);
			}

			if (proc->difficulty_choice != SAVEMENU_DIFFICULTY_UNSET) {
				if (proc->suspend_save_id != 0xFF) {
					SaveMenu_HandleSlotConfirm(proc);
				} else {
					if (proc->difficulty_choice == SAVEMENU_DIFFICULTY_NORMAL) {
						WriteNewGameSave(proc->selected_id, 0);
					} else if (proc->difficulty_choice == SAVEMENU_DIFFICULTY_HARD) {
						WriteNewGameSave(proc->selected_id, 1);
					}

					Proc_Goto(proc, L_SAVEMENU_5);
					PlaySe(SONG_60);
				}
			}

			break;
		}
	} else if ((gKeySt->pressed & KEY_BUTTON_B) != 0) {
		proc->anim_clock = 0;
		PlaySe(SONG_6B);

		if (proc->confirm_state != SAVEMENU_CONFIRM_NONE) {
			proc->difficulty_choice = SAVEMENU_DIFFICULTY_NORMAL;
			SaveMenu_SetConfirmPrompt(proc, 0);
			SaveMenu_UpdateHelpBox(proc);
		} else if (proc->copy_from_id != UINT8_MAX) {
			proc->selected_id = proc->copy_from_id;
			proc->copy_from_id = UINT8_MAX;
		} else if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
			Proc_Goto(proc, L_SAVEMENU_15);
		} else {
			Proc_Goto(proc, L_SAVEMENU_3);
		}
	}
}

void SaveMenu_SaveScreenConfirm(struct SaveMenuProc *proc)
{
	SaveMenu_HandleSlotConfirm(proc);
}

void SaveMenu_ActionAnim_Init(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_5;
	proc->anim_clock = 0;
}

void SaveMenu_ActionAnim_Loop(struct SaveMenuProc *proc)
{
	if (proc->anim_clock == 8) {
		SaveMenu_LoadSaveSlotInfo(proc->selected_id, proc);
		SaveMenu_LoadSaveSlotInfo(4, proc);

		if (proc->chapter_title_ids[proc->selected_id] != 0xFF) {
			/* tyvm Eebit */
			/* TODO: there's probably something better to do here */
			PutChapterTitleGfx(((u32)(proc->selected_id * 0x800 + 0x16800) & 0x0001FFFF) >> 5, proc->chapter_title_ids[proc->selected_id]);
		} else {
			PutChapterTitleGfx(((u32)(proc->selected_id * 0x800 + 0x16800) & 0x0001FFFF) >> 5, -1);
		}

		SaveMenu_UpdateChapterTitlePalettes(proc->selected_id);
	} else if (proc->anim_clock == 0x20) {
		SaveMenu_BuildMainMenuMask(proc);

		if (proc->action == SAVEMENU_ACTION_NEW_GAME) {
			Proc_Goto(proc, L_SAVEMENU_16);
			StartBgmVolumeChange(0x80, 0, 0x10, 0);
		} else if (proc->action == SAVEMENU_ACTION_SAVE_SCREEN) {
			Proc_Goto(proc, L_SAVEMENU_15);
		} else {
			if (SaveMenu_HasRemainingMainMenuAction(proc)) {
				if (proc->copy_from_id != UINT8_MAX) {
					proc->selected_id = proc->copy_from_id;
					proc->copy_from_id = UINT8_MAX;
				} else {
					proc->selected_id = SaveMenu_GetNextSaveIndex(proc->selected_id, TRUE, 1);
				}

				Proc_Goto(proc, L_SAVEMENU_4);
			}
		}
	} else if (proc->anim_clock == 0x30) {
		proc->selected_id = 0;
		proc->copy_from_id = UINT8_MAX;
		proc->anim_clock = 0;
		proc->main_menu_cursor = 0;
		proc->action = GetSaveMenuSelectIndex(proc->main_menu_mask, 0);

		PlaySe(SONG_6B);

		Proc_Goto(proc, L_SAVEMENU_3);
		return;
	}

	if (proc->anim_clock == 0x10) {
		SetObjAffineAuto(proc->selected_id, 0, 0x100, 0x100);
	} else if (proc->anim_clock < 8) {
		SetObjAffineAuto(proc->selected_id, 0, 0x100, (proc->anim_clock * -0x20) + 0x100);
	} else if (proc->anim_clock < 0x10) {
		SetObjAffineAuto(proc->selected_id, 0, 0x100, (proc->anim_clock * 0x20) - 0xE0);
	}

	proc->anim_clock++;
}

void SaveMenu_PanelScrollIn_Loop(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_2;
	proc->anim_clock++;

	/* TODO: what */
	proc->panel_scroll_x = (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;

	if (proc->anim_clock == 14) {
		LoadHelpBoxGfx(OBJ_VRAM0 + OBCHR_SAVEMENU_1C0 * CHR_SIZE, OBPAL_SAVEMENU_9);
		Proc_Break(proc);
	}
}

void SaveMenu_PanelScrollOut_Loop(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_3;
	proc->anim_clock++;

	/* TODO: what */
	proc->panel_scroll_x = -36 - (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;

	if (proc->anim_clock == 14) {
		Decompress(Img_SaveMenuDefaultObjGfx, OBJ_VRAM0 + OBCHR_SAVEMENU_1C0 * CHR_SIZE);
		Proc_Break(proc);
	}
}

void SaveMenu_ExtraMenuScrollIn(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_EXTRA_INTRO;
	proc->anim_clock++;

	/* TODO: what */
	proc->extra_panel_scroll_x = (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;

	if (proc->anim_clock == 14) {
		Proc_Goto(proc, L_SAVEMENU_EXTRA_MENU);
	}
}

void SaveMenu_ExtraMenuScrollOut(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_EXTRA_INTRO;
	proc->anim_clock++;

	/* TODO: what */
	proc->extra_panel_scroll_x = 220 - (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;

	if (proc->anim_clock == 14) {
		Proc_Goto(proc, L_SAVEMENU_1);
	}
}

void SaveMenu_XMap1ScrollIn(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_XMAP1_INTRO;
	proc->anim_clock++;

	/* TODO: what */
	proc->extra_panel_scroll_x = 220 + (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;
	proc->panel_scroll_x = proc->extra_panel_scroll_x + 36;

	if (proc->anim_clock == 14) {
		Proc_Goto(proc, L_SAVEMENU_XMAP1_MAIN);
	}
}

void SaveMenu_XMap1ScrollOut(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_XMAP1_EXIT;
	proc->anim_clock++;

	/* TODO: what */
	proc->extra_panel_scroll_x = 440 - (((7 * proc->anim_clock * 8 - proc->anim_clock) * 8) - (220 * proc->anim_clock * proc->anim_clock / 14)) / 14;
	proc->panel_scroll_x = proc->extra_panel_scroll_x + 36;

	if (proc->anim_clock == 14) {
		Proc_Goto(proc, L_SAVEMENU_EXTRA_MENU);
	}
}

void SaveMenu_ExtraMenu_Loop(struct SaveMenuProc *proc)
{
	int previous = proc->hand_index;

	proc->ui_state = L_SAVEMENU_EXTRA_MENU;

	if ((gKeySt->repeated & KEY_DPAD_UP) != 0) {
		if (proc->hand_index != 0) {
			proc->hand_index--;
		} else {
			if ((gKeySt->pressed & KEY_DPAD_UP) != 0) {
				proc->hand_index = proc->max_index - 1;
			}
		}
	} else if ((gKeySt->repeated & KEY_DPAD_DOWN) != 0) {
		if (proc->hand_index < proc->max_index - 1) {
			proc->hand_index++;
		} else {
			if ((gKeySt->pressed & KEY_DPAD_DOWN) != 0) {
				proc->hand_index = 0;
			}
		}
	}

	if (previous != proc->hand_index) {
		PlaySe(SONG_66);
	}

	if ((gKeySt->pressed & KEY_BUTTON_A) != 0) {
		proc->sel_index = GetSaveMenuSelectIndex(proc->extra_menu_mask, proc->hand_index);
		PlaySe(SONG_6A);

		proc->anim_clock = 0;

		switch (proc->sel_index) {
		default:
			SaveMenu_BeginExit(proc);
			Proc_Goto(proc, L_SAVEMENU_16);
			break;

		case 1:
			proc->selected_id = SaveMenu_GetNextSaveIndex(ReadLastGameSaveId(), TRUE, 1);
			SaveMenu_SelectXmapSaveSlot(proc, 0);
			Proc_Goto(proc, L_SAVEMENU_XMAP1_INTRO);
			break;

		case 8:
			Proc_Goto(proc, L_SAVEMENU_13);
			break;
		}
	} else if ((gKeySt->pressed & KEY_BUTTON_B) != 0) {
		proc->anim_clock = 0;
		Proc_Goto(proc, L_SAVEMENU_EXTRA_EXIT);
		PlaySe(SONG_6B);
	}
}

bool SaveMenu_SelectXmapSaveSlot(struct SaveMenuProc *proc, int direction)
{
	int i;

	fu8 previous = proc->selected_id;

	if (direction == 0) {
		if ((proc->xmap_unlock_flags[proc->selected_id] & 1) != 0)
			return TRUE;

		direction = 1;
	}

	if (direction > 0) {
		for (i = 0; i < 3; i++) {
			if (proc->selected_id < 2)
				proc->selected_id++;
			else
				proc->selected_id = 0;

			if ((proc->xmap_unlock_flags[proc->selected_id] & 1) != 0)
				break;
		}
	} else {
		for (i = 0; i < 3; i++) {
			if (proc->selected_id == 0)
				proc->selected_id = 2;
			else
				proc->selected_id = proc->selected_id - 1;

			if ((proc->xmap_unlock_flags[proc->selected_id] & 1) != 0)
				break;
		}
	}

	if (previous != proc->selected_id) {
		PlaySe(SONG_66);
		return TRUE;
	}

	return FALSE;
}

void SaveMenu_Xmap1_Loop(struct SaveMenuProc *proc)
{
	proc->ui_state = L_SAVEMENU_4;

	if (proc->confirm_state == SAVEMENU_CONFIRM_NONE) {
		if ((gKeySt->pressed & KEY_DPAD_UP) != 0) {
			SaveMenu_SelectXmapSaveSlot(proc, -1);
		} else if ((gKeySt->pressed & KEY_DPAD_DOWN) != 0) {
			SaveMenu_SelectXmapSaveSlot(proc, +1);
		}
	} else {
		if ((gKeySt->pressed & KEY_DPAD_LEFT) != 0) {
			if (proc->confirm_state != SAVEMENU_CONFIRM_YES) {
				proc->confirm_state = SAVEMENU_CONFIRM_YES;
				PlaySe(SONG_67);
			}
		} else if ((gKeySt->pressed & KEY_DPAD_RIGHT) != 0) {
			if (proc->confirm_state != SAVEMENU_CONFIRM_NO) {
				proc->confirm_state = SAVEMENU_CONFIRM_NO;
				PlaySe(SONG_67);
			}
		}
	}

	if ((gKeySt->pressed & KEY_BUTTON_A) != 0) {
		if (proc->suspend_save_id == 0xFF) {
			ReadGameSave(SAVE_GAME0 + proc->selected_id);
			Proc_Goto(proc, L_SAVEMENU_13);
			PlaySe(SONG_6A);
		} else {
			if (proc->help_box_shown == 0) {
				LoadHelpBoxGfx(OBJ_VRAM0 + CHR_SIZE * 0x200, OBPAL_SAVEMENU_9);
			}

			SaveMenu_HandleSlotConfirm(proc);
		}
	} else if ((gKeySt->pressed & KEY_BUTTON_B) != 0) {
		PlaySe(SONG_6B);

		if (proc->confirm_state != SAVEMENU_CONFIRM_NONE) {
			SaveMenu_SetConfirmPrompt(proc, 0);
			SaveMenu_UpdateHelpBox(proc);
		} else {
			Decompress(Img_SaveMenuDefaultObjGfx, OBJ_VRAM0 + OBCHR_SAVEMENU_1C0 * CHR_SIZE);
			proc->anim_clock = 0;
			Proc_Goto(proc, L_SAVEMENU_XMAP1_EXIT);
		}
	}
}

void SaveMenu_StartWindowEffect(struct SaveMenuProc *proc)
{
	SaveMenu_StartWindowEffectProc(proc, 1, 2);
	Proc_Break(proc);
}

void SaveMenu_Finish(struct SaveMenuProc *proc)
{
	if (proc->suspend_sprite_anim != NULL)
		EndSpriteAnimProc(proc->suspend_sprite_anim);

	Proc_End(proc->ui_draw_proc);
	Proc_End(proc->bg_rotate_proc);

	SetOnHBlankA(NULL);

	if (proc->action == SAVEMENU_ACTION_EXTRA_MENU) {
		switch (proc->sel_index) {
		case 2:
			SetNextGameAction(GAME_ACTION_5);
			break;

		case 4:
			SetNextGameAction(GAME_ACTION_8);
			break;

		case 8:
			SetNextGameAction(GAME_ACTION_7);
			break;
		}
	} else if (proc->action != SAVEMENU_ACTION_SAVE_SCREEN) {
		if (proc->action == SAVEMENU_ACTION_CONTINUE_SUSPEND) {
			ReadSuspendSave(SAVE_SUSPEND);
			SetNextGameAction(GAME_ACTION_3);
		} else if (proc->action == SAVEMENU_ACTION_CONTINUE_GAME) {
			ReadGameSave(SAVE_GAME0 + proc->selected_id);
			SetNextGameAction(GAME_ACTION_0 + proc->selected_id);
		} else if (proc->action == SAVEMENU_ACTION_NEW_GAME) {
			SetNextGameAction(GAME_ACTION_0);
		} else if (proc->action == SAVEMENU_ACTION_MAIN_MENU) {
			StartBgmVolumeChange(0x80, 0x100, 0x10, NULL);
			SetNextGameAction(GAME_ACTION_4);
		}
	}
}

void SaveMenu_StartXmapSoundRoom(struct SaveMenuProc *proc)
{
	proc->action = SAVEMENU_ACTION_EXTRA_MENU;

	Proc_End(proc->ui_draw_proc);
	Proc_End(proc->bg_rotate_proc);

	SetOnHBlankA(NULL);

	if (proc->suspend_sprite_anim != NULL)
		EndSpriteAnimProc(proc->suspend_sprite_anim);

	switch (proc->sel_index) {
	case 1:
		/* SaveMenu_ExecXmap(0, proc); */
		break;

	case 8:
		StartBgmVolumeChange(0x80, 0, 0x20, NULL);
		/* SaveMenu_ExecSoundroom(proc); */
		break;
	}
}

void SaveMenu_ResumeXmapExtraState(struct SaveMenuProc *proc)
{
	switch (proc->sel_index) {
	case 1:
		Proc_Goto(proc, L_SAVEMENU_XMAP1_MAIN);
		break;

	case 8:
		Proc_Goto(proc, L_SAVEMENU_EXTRA_MENU);
		break;
	}
}

struct ProcScr CONST_DATA ProcScr_SaveMenu[] = {
	PROC_19,

PROC_LABEL(L_SAVEMENU_BEGIN),
	PROC_YIELD,

	PROC_CALL(SaveMenu_InitDisplay),
	PROC_YIELD,

	PROC_CALL(SaveMenu_PutScreen),
	PROC_CALL(SaveMenu_SetupActiveDisplay),
	PROC_CALL(StartSaveDrawFadeIn),
	PROC_YIELD,

	PROC_CALL(SaveMenu_GotoUiState),

PROC_LABEL(L_SAVEMENU_1),
	PROC_REPEAT(SaveMenu_MainMenu_Loop),
	PROC_GOTO(L_SAVEMENU_14),

PROC_LABEL(L_SAVEMENU_4),
	PROC_REPEAT(SaveMenu_SaveSlot_Loop),
	PROC_GOTO(L_SAVEMENU_14),

PROC_LABEL(L_SAVEMENU_6),
	PROC_SLEEP(5),

	PROC_CALL(SaveMenu_SaveScreenConfirm),
	PROC_GOTO(L_SAVEMENU_4),

PROC_LABEL(L_SAVEMENU_5),
	PROC_SLEEP(1),

	PROC_CALL(SaveMenu_ActionAnim_Init),
	PROC_SLEEP(1),

	PROC_REPEAT(SaveMenu_ActionAnim_Loop),
	PROC_GOTO(L_SAVEMENU_4),

PROC_LABEL(L_SAVEMENU_2),
	PROC_REPEAT(SaveMenu_PanelScrollIn_Loop),
	PROC_GOTO(L_SAVEMENU_4),

PROC_LABEL(L_SAVEMENU_3),
	PROC_REPEAT(SaveMenu_PanelScrollOut_Loop),
	PROC_GOTO(L_SAVEMENU_1),

PROC_LABEL(L_SAVEMENU_EXTRA_INTRO),
	PROC_REPEAT(SaveMenu_ExtraMenuScrollIn),

PROC_LABEL(L_SAVEMENU_EXTRA_EXIT),
	PROC_REPEAT(SaveMenu_ExtraMenuScrollOut),

PROC_LABEL(L_SAVEMENU_XMAP1_INTRO),
	PROC_REPEAT(SaveMenu_XMap1ScrollIn),

PROC_LABEL(L_SAVEMENU_XMAP1_EXIT),
	PROC_REPEAT(SaveMenu_XMap1ScrollOut),

PROC_LABEL(L_SAVEMENU_EXTRA_MENU),
	PROC_REPEAT(SaveMenu_ExtraMenu_Loop),

PROC_LABEL(L_SAVEMENU_XMAP1_MAIN),
	PROC_REPEAT(SaveMenu_Xmap1_Loop),

PROC_LABEL(L_SAVEMENU_13),
	PROC_CALL(StartSaveDrawFadeOut),
	PROC_YIELD,

	PROC_CALL(SaveMenu_StartXmapSoundRoom),
	PROC_YIELD,

	PROC_CALL(SaveMenu_InitDisplay),
	PROC_YIELD,

	PROC_CALL(SaveMenu_PutScreen),
	PROC_CALL(SaveMenu_SetupActiveDisplay),
	PROC_CALL(StartSaveDrawFadeIn),
	PROC_CALL(SaveMenu_ResumeXmapExtraState),

PROC_LABEL(L_SAVEMENU_16),
	PROC_CALL(StartSaveMenuFadeOutFast),
	PROC_GOTO(L_SAVEMENU_14),

PROC_LABEL(L_SAVEMENU_15),
	PROC_CALL(StartSaveDrawFadeOut),

PROC_LABEL(L_SAVEMENU_14),
	PROC_YIELD,

	PROC_CALL(SaveMenu_Finish),
	PROC_END,
};

void StartMainMenu(ProcPtr parent)
{
	struct SaveMenuProc *proc;

	proc = SpawnProcLocking(ProcScr_SaveMenu, parent);

	proc->action = SAVEMENU_ACTION_MAIN_MENU;
	proc->sel_index = 0;

	gPlaySt.config_talk_speed = 2;
}

void StartSaveMenu(ProcPtr parent)
{
	struct SaveMenuProc *proc;

	proc = SpawnProcLocking(ProcScr_SaveMenu, parent);

	proc->action = SAVEMENU_ACTION_SAVE_SCREEN;
	proc->sel_index = 0;
}

