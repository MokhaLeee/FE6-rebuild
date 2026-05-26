#include "prelude.h"
#include "save.h"
#include "savelayout.h"
#include "util.h"
#include "save-hw.h"

static char const sSaveMarker[] = "AGB-FE6";

bool ReadGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	const void *src;
	struct GlobalSaveInfo local_info;

	if (!IsSaveWorking())
		return FALSE;

	if (info == NULL)
		info = &local_info;

	src = CART_SRAM + 0;
	ReadSave(src, info, sizeof(struct GlobalSaveInfo));

	if (!StringEquals(info->name, sSaveMarker))
		return FALSE;

	if (info->magic32 == SAVE_MAGIC32 && info->magic16 == SAVE_MAGIC16 && info->checksum == Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM))
		return TRUE;

	return FALSE;
}

void WriteGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	void *dst;

	info->checksum = Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM);

	dst = CART_SRAM + 0;
	WriteSave(info, dst, sizeof(struct GlobalSaveInfo));
}

void WriteGlobalSaveInfoNoChecksum(struct GlobalSaveInfo *info)
{
	void *dst;

	dst = CART_SRAM + 0;
	WriteSave(info, dst, sizeof(struct GlobalSaveInfo));
}

void InitGlobalSaveInfo(void)
{
	struct GlobalSaveInfo info;
	int i;

	WipeSave();

	StringCopy(info.name, sSaveMarker);
	info.magic32 = SAVE_MAGIC32;
	info.magic16 = SAVE_MAGIC16;
	info.completed = FALSE;
	info.completed_true = FALSE;
	info.completed_hard = FALSE;
	info.completed_true_hard = FALSE;
	info.unk_0E_4 = 0;
	info.last_suspend_slot = 0;
	info.last_game_save_id = 0;

	for (i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++)
		info.cleared_playthroughs[i] = 0;

	WriteGlobalSaveInfo(&info);
}
