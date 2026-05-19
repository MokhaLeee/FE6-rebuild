#pragma once

#include "gba/gba.h"

enum icon_sheet_idx {
	ICON_SHEET_VANILLA,
	ICON_SHEET_AFFIN,
	ICON_SHEET_MOUNT,
	ICON_SHEET_WTYPE,
	ICON_SHEET_COMBATART,
	ICON_SHEET_SKILL0,
	ICON_SHEET_SKILL1,
	ICON_SHEET_SKILL2,
	ICON_SHEET_SKILL3,

	ICON_SHEET_AMT = 16
};

#define AFFIN_ICON(affin) ((ICON_SHEET_AFFIN << 8) + (affin))
#define MOUNT_ICON(mount) ((ICON_SHEET_MOUNT << 8) + (mount))
#define WTYPE_ICON(wtype) ((ICON_SHEET_WTYPE << 8) + (wtype))
#define COMBART_ICON(cid) ((ICON_SHEET_COMBATART << 8) + (cid))
#define SKILL_ICON(sid)   ((ICON_SHEET_SKILL0 << 8) + (sid))

#define ICON_SHEET(icon) (((icon) >> 8) & 0xFF)
#define ICON_INDEX(icon) ((icon) & 0xFF)

void InitIcons(void);
void ClearIcons(void);
void ApplyIconPalettes(int palid);
void ApplyIconPalette(int num, int palid);
void PutIcon(u16 * tm, int icon, int tileref);
void ClearIcon(int icon);
void PutIconObjImg(int icon, int chr);
