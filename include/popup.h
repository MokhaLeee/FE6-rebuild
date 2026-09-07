#pragma once

#include "prelude.h"
#include "proc.h"

enum {
	POPUP_CMD_END,
	POPUP_CMD_SPACE,
	POPUP_CMD_ITEM_NAME,
	POPUP_CMD_UNIT_NAME,
	POPUP_CMD_MSG,
	POPUP_CMD_STR,
	POPUP_CMD_COLOR,
	POPUP_CMD_ICON_ITEM,
	POPUP_CMD_ICON_IKIND,
	POPUP_CMD_NUMBER,
	POPUP_CMD_SONG,
};

#define POPUP_END { POPUP_CMD_END, 0 }
#define POPUP_SPACE(len) { POPUP_CMD_SPACE, (len) }
#define POPUP_ITEM_NAME { POPUP_CMD_ITEM_NAME, 0 }
#define POPUP_UNIT_NAME { POPUP_CMD_UNIT_NAME, 0 }
#define POPUP_MSG(msg) { POPUP_CMD_MSG, (msg) }
#define POPUP_STR(str) { POPUP_CMD_STR, (int) (char const *) (str) }
#define POPUP_COLOR(color) { POPUP_CMD_COLOR, (color) }
#define POPUP_ICON_ITEM { POPUP_CMD_ICON_ITEM, 0 }
#define POPUP_ICON_IKIND { POPUP_CMD_ICON_IKIND, 0 }
#define POPUP_NUMBER { POPUP_CMD_NUMBER, 0 }
#define POPUP_SONG(song) { POPUP_CMD_SONG, (song) }

struct PopupInfo {
	/* 00 */ u8 cmd;
	/* 04 */ int arg;
};

struct PopupProc {
	/* 00 */ PROC_HEADER;

	/* 2C */ struct PopupInfo const *info;
	/* 30 */ int clock;

	/* 34 */ i8 xParam;
	/* 35 */ i8 yParam;

	/* 36 */ u8 window_kind;

	/* 37 */ u8 frameX;
	/* 38 */ u8 frameY;

	/* 39 */ u8 frameWidth;
	/* 3A */ u8 frameHeight;

	/* 3B */ u8 color;

	/* 3C */ u8 pad_3C[0x3E - 0x3C];

	/* 3E */ u16 icon;
	/* 40 */ u16 iconChr;
	/* 42 */ u8 iconPalid;
	/* 43 */ u8 pad_43;
	/* 44 */ u8 iconX;
	/* 45 */ u8 pad_45;

	/* 46 */ u16 widthPx;

	/* 48 */ u16 songPlayed;
};

int PreparePopup(struct PopupProc *proc);
void PutPopup(struct PopupInfo const *info, struct Text text);
void Popup_OnInit(struct PopupProc *proc);
void Popup_Prepare(struct PopupProc *proc);
void Popup_FadeBgmOut(struct PopupProc *proc);
void Popup_PlaySe(struct PopupProc *proc);
void Popup_FadeBgmIn(struct PopupProc *proc);
void PopupIconSprite_OnIdle(struct Proc *proc);
void Popup_Display(struct PopupProc *proc);
void Popup_WaitForEnd(struct PopupProc *proc);
void Popup_Clear(struct PopupProc *proc);
void SetPopupUnit(struct Unit *unit);
void SetPopupItem(u16 item);
void SetPopupNumber(int number);
ProcPtr StartPopup(struct PopupInfo const *info, int duration, int window_kind, ProcPtr parent);
ProcPtr StartPopupExt(struct PopupInfo const *info, int duration, int window_kind, int iconChr, int iconPal, ProcPtr parent);
void EndPopup(void);
