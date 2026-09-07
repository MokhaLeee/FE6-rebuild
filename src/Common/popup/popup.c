#include "prelude.h"
#include "popup.h"
#include "proc.h"
#include "event.h"
#include "hardware.h"
#include "sprite.h"
#include "armfunc.h"
#include "sound.h"
#include "util.h"
#include "ui.h"
#include "msg.h"
#include "icon.h"
#include "oam.h"
#include "item.h"
#include "constants/videoalloc_global.h"

static struct Unit *sPopupUnit;
static u16 sPopupItem;
static int sPopupNumber;

int PreparePopup(struct PopupProc *proc)
{
	int result = 0;

	char buf[0x10];
	struct PopupInfo const *it;

	for (it = proc->info; it->cmd; ++it) {
		switch (it->cmd) {
		case POPUP_CMD_SONG:
			proc->songPlayed = it->arg;
			break;

		case POPUP_CMD_NUMBER:
			result += NumberToString(sPopupNumber, buf)*8;
			break;

		case POPUP_CMD_ICON_ITEM:
			proc->iconX = result;
			proc->icon = GetItemIcon(sPopupItem);
			ApplyIconPalette(0, proc->iconPalid);

			result += 16;
			break;

		case POPUP_CMD_ICON_IKIND:
			proc->iconX = result;
			proc->icon = WTYPE_ICON(sPopupItem);
			ApplyIconPalette(1, proc->iconPalid);

			result += 16;
			break;

		case POPUP_CMD_COLOR:
			break;

		case POPUP_CMD_MSG:
			result += GetStringTextLen(DecodeMsg(it->arg));
			break;

		case POPUP_CMD_STR:
			result += GetStringTextLen((char const *) it->arg);
			break;

		case POPUP_CMD_UNIT_NAME:
			result += GetStringTextLen(DecodeMsg(sPopupUnit->pinfo->msg_name));
			break;

		case POPUP_CMD_ITEM_NAME:
			result += GetStringTextLen(GetItemName(sPopupItem));
			break;

		case POPUP_CMD_SPACE:
			result += it->arg;
			break;

		default:
			break;

		}
	}

	return result;
}

void PutPopup(struct PopupInfo const *info, struct Text text)
{
	char buf[0x10];

	for (; info->cmd; ++info) {
		switch (info->cmd) {
		case POPUP_CMD_NUMBER:
			NumberToString(sPopupNumber, buf);
			Text_DrawString(&text, buf);
			break;

		case POPUP_CMD_ICON_ITEM:
			Text_Skip(&text, 16);
			break;

		case POPUP_CMD_ICON_IKIND:
			Text_Skip(&text, 16);
			break;

		case POPUP_CMD_COLOR:
			Text_SetColor(&text, info->arg);
			break;

		case POPUP_CMD_MSG:
			Text_DrawString(&text, DecodeMsg(info->arg));
			break;

		case POPUP_CMD_STR:
			Text_DrawString(&text, (char const *) info->arg);
			break;

		case POPUP_CMD_UNIT_NAME:
			Text_DrawString(&text, DecodeMsg(sPopupUnit->pinfo->msg_name));
			break;

		case POPUP_CMD_ITEM_NAME:
			Text_DrawString(&text, GetItemName(sPopupItem));
			break;

		case POPUP_CMD_SPACE:
			Text_Skip(&text, info->arg);
			break;

		default:
			break;

		}
	}

	EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT);
}

void Popup_OnInit(struct PopupProc *proc)
{
	proc->xParam = 0xFF;
	proc->yParam = 0xFF;

	proc->color = TEXT_COLOR_SYSTEM_WHITE;

	proc->icon = UINT16_MAX;
	proc->iconX = 0;

	proc->songPlayed = 0;
}

void Popup_Prepare(struct PopupProc *proc)
{
	InitTextFont(NULL,
		(u8 *) VRAM + GetBgChrOffset(0) + BGCHR_0_TEXT_POPUP * CHR_SIZE,
		BGCHR_0_TEXT_POPUP, BGPAL_TEXT_DEFAULT);

	ClearIcons();
	UnpackUiWindowFrameGraphics();

	SetBlendNone();
	SetWinEnable(0, 0, 0);

	proc->widthPx = PreparePopup(proc);
}

void Popup_FadeBgmOut(struct PopupProc *proc)
{
	if (proc->songPlayed != 0)
		StartBgmVolumeChange(0x100, 0x80, 16, proc);
}

void Popup_PlaySe(struct PopupProc *proc)
{
	if (proc->songPlayed != 0)
		PlaySe(proc->songPlayed);
}

void Popup_FadeBgmIn(struct PopupProc *proc)
{
	if (proc->songPlayed != 0)
		StartBgmVolumeChange(0x80, 0x100, 16, proc);
}

void PopupIconSprite_OnIdle(struct Proc *proc)
{
	PutOamHi(proc->x, proc->y, Sprite_16x16, (u16) proc->unk4A);
}

void Popup_Display(struct PopupProc *proc)
{
	struct Proc *gproc;

	struct Text text;

	int width;
	int textoff;
	int x, y;

	proc->widthPx = PreparePopup(proc);
	width = proc->widthPx >> 3;

	if (proc->widthPx & 7)
		width++;

	textoff = (width*8 - proc->widthPx) >> 1;

	if (proc->xParam == -1)
		x = ((30 - width) >> 1) - 1;
	else
		x = proc->xParam;

	if (proc->yParam == -1)
		y = 8;
	else
		y = proc->yParam;

	PutUiWindowFrame(x, y, width + 2, 4, proc->window_kind);

	proc->frameX = x;
	proc->frameY = y;

	proc->frameWidth = width + 2;
	proc->frameHeight = 3;

	proc->iconX += textoff;

	InitText(&text, width);

	Text_SetColor(&text, proc->color);
	Text_SetCursor(&text, textoff);

	PutPopup(proc->info, text);

	if (proc->icon != UINT16_MAX)
		PutIconObjImg(proc->icon, proc->iconChr);

	PutText(&text, gBg0Tm + TM_OFFSET(x + 1, y + 1));

	ResetText();

	if (proc->icon != UINT16_MAX) {
		gproc = SpawnProc(ProcScr_PopupIconSprite, proc);

		gproc->x = (proc->frameX+1)*8 + proc->iconX;
		gproc->y = (proc->frameY+1)*8;

		gproc->unk4A = proc->iconChr | OAM2_PAL(proc->iconPalid);
	}
}

void Popup_WaitForEnd(struct PopupProc *proc)
{
	if (proc->clock < 0) {
		if (gKeySt->pressed)
			Proc_Break(proc);
	} else {
		if (proc->clock == 0)
			return;

		proc->clock--;

		if (proc->clock == 0)
			Proc_Break(proc);
	}
}

void Popup_Clear(struct PopupProc *proc)
{
	TmFillRect(gBg0Tm + TM_OFFSET(proc->frameX, proc->frameY), proc->frameWidth, proc->frameHeight, 0);
	TmFillRect(gBg1Tm + TM_OFFSET(proc->frameX, proc->frameY), proc->frameWidth, proc->frameHeight, 0);

	EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT);
}

void SetPopupUnit(struct Unit *unit)
{
	sPopupUnit = unit;
}

void SetPopupItem(u16 item)
{
	sPopupItem = item;
}

void SetPopupNumber(int number)
{
	sPopupNumber = number;
}

ProcPtr StartPopup(struct PopupInfo const *info, int duration, int window_kind, ProcPtr parent)
{
	return StartPopupExt(info, duration, window_kind, 0x240, 4, parent);
}

ProcPtr StartPopupExt(struct PopupInfo const *info, int duration, int window_kind, int iconChr, int iconPal, ProcPtr parent)
{
	struct PopupProc *proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_Popup, parent);
	else
		proc = SpawnProc(ProcScr_Popup, PROC_TREE_3);

	proc->clock = duration;
	proc->info = info;
	proc->window_kind = window_kind;
	proc->iconChr = iconChr;
	proc->iconPalid = iconPal + 0x10;

	return proc;
}

void EndPopup(void)
{
	Proc_EndEach(ProcScr_Popup);
}
