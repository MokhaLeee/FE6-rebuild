#include "prelude.h"
#include "icon.h"
#include "hardware.h"
#include "move.h"
#include "unit.h"
#include "constants/icons.h"
#include "constants/videoalloc_global.h"

#define MAX_SIMULTANEOUS_ICONS 32
static u16 IconReSts[MAX_SIMULTANEOUS_ICONS];

/**
 * icon-getter
 */
typedef const u8 *(* IconGetterFunc)(const u8 index);

extern u8 const *const gpImg_Icons;
extern u8 const *const *const gpAffinIcons;
extern u8 const *const *const gpMountIcons;
extern u8 const *const *const gpWTypeIcons;

static const u8 *IconGetterVanilla(const u8 index)
{
	return gpImg_Icons + (index * CHR_SIZE * 4);
}

static const u8 *GetAffinIcon(const u8 index)
{
	return gpAffinIcons[index];
}

static const u8 *GetMountIcon(const u8 index)
{
	return gpMountIcons[index];
}

static const u8 *GetWTypeIcon(const u8 index)
{
	return gpWTypeIcons[index];
}

static const u8 *GetCombatArtIcon(const u8 cid)
{
	return NULL;
}

static const u8 *GetSkillIcon1(const u8 sid_lo)
{
	return NULL;
}

static const u8 *GetSkillIcon2(const u8 sid_lo)
{
	return NULL;
}

static const u8 *GetSkillIcon3(const u8 sid_lo)
{
	return NULL;
}

static const u8 *GetSkillIcon4(const u8 sid_lo)
{
	return NULL;
}

static const IconGetterFunc IconGetters[ICON_SHEET_AMT] = {
	[ICON_SHEET_VANILLA] = IconGetterVanilla,
	[ICON_SHEET_AFFIN] = GetAffinIcon,
	[ICON_SHEET_MOUNT] = GetMountIcon,
	[ICON_SHEET_WTYPE] = GetWTypeIcon,
	[ICON_SHEET_COMBATART] = GetCombatArtIcon,
	[ICON_SHEET_SKILL0] = GetSkillIcon1,
	[ICON_SHEET_SKILL1] = GetSkillIcon2,
	[ICON_SHEET_SKILL2] = GetSkillIcon3,
	[ICON_SHEET_SKILL3] = GetSkillIcon4,
};

static const u8 *GetIconGfx(u32 icon)
{
	if (ICON_SHEET(icon) < ICON_SHEET_AMT)
		return IconGetters[ICON_SHEET(icon)](ICON_INDEX(icon));

	return NULL;
}

static int GetIconUsedSlot(const u32 icon)
{
	int i;

	for (i = 0; i < MAX_SIMULTANEOUS_ICONS; i++)
		if (icon == IconReSts[i])
			return i + 1;

	return 0;
}

static int GetIconNewSlot(const u32 icon)
{
	int i;

	for (i = 0; i < MAX_SIMULTANEOUS_ICONS; i++) {
		if ((u16)-1 == IconReSts[i]) {
			IconReSts[i] = icon;
			return i + 1;
		}
	}

	return 0;
}

void ClearIcons(void)
{
	CpuFill32(-1, IconReSts, sizeof(IconReSts));
}

void ClearIcon(int icon)
{
	int i;

	for (i = 0; i < MAX_SIMULTANEOUS_ICONS; i++) {
		if (ICON_SHEET(icon) == ICON_SHEET(IconReSts[i]) &&
			ICON_INDEX(icon) == ICON_INDEX(IconReSts[i])) {
			IconReSts[i] = -1;
			break;
		}
	}
}

static u16 IconSlot2Chr(int num)
{
	return BGCHR_ICON_END - num * 4;
}

static int GetIconChr(int icon)
{
	int slot, tile;
	const u8 *src;
	u8 *dst;

	slot = GetIconUsedSlot(icon);
	if (slot != 0)
		return IconSlot2Chr(slot);

	/* Register new icon */
	slot = GetIconNewSlot(icon);
	tile = IconSlot2Chr(slot);

	src = GetIconGfx(icon);
	dst = (void *)(BG_VRAM + tile * CHR_SIZE);

	if (src)
		RegisterDataMove(src, dst, CHR_SIZE * 4);
	else
		RegisterDataFill(0,   dst, CHR_SIZE * 4);

	return tile;
}

void PutIcon(u16 * tm, int icon, int tileref)
{
	if (icon < 0) {
		tm[0x00] = 0;
		tm[0x01] = 0;
		tm[0x20] = 0;
		tm[0x21] = 0;
	} else {
		u16 tile = GetIconChr(icon) + tileref;

		tm[0x00] = tile++;
		tm[0x01] = tile++;
		tm[0x20] = tile++;
		tm[0x21] = tile;
	}
}

void PutIconObjImg(int icon, int chr)
{
	const u8 *src = GetIconGfx(icon);
	u8 *dst = OBJ_VRAM0 + CHR_SIZE * (chr & 0x3FF);

	if (!src) {
		RegisterDataFill(0, dst,         CHR_SIZE * 2);
		RegisterDataFill(0, dst + 0x400, CHR_SIZE * 2);
		return;
	}

	RegisterDataMove(src,                dst,         CHR_SIZE * 2);
	RegisterDataMove(src + CHR_SIZE * 2, dst + 0x400, CHR_SIZE * 2);
}

/* misc hooks */
int GetAidIconFromAttributes(int attributes)
{
	if (attributes & UNIT_ATTR_MOUNT_ICON)
		return MOUNT_ICON(1);

	if (attributes & UNIT_ATTR_PEGASUS_ICON)
		return MOUNT_ICON(2);

	if (attributes & UNIT_ATTR_WYVERN_ICON)
		return MOUNT_ICON(3);

	return ICON_NONE;
}

int GetUnitAffinityIcon(struct Unit *unit)
{
	int affinity = unit->pinfo->affinity;

	if (affinity == 0)
		return -1;

	return AFFIN_ICON(affinity);
}

int GetAffinityIconByPid(int pid)
{
	int affinity = GetPInfo(pid)->affinity;

	if (affinity == 0)
		return -1;

	return AFFIN_ICON(affinity);
}
