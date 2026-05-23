#include "prelude.h"
#include "save.h"
#include "savelayout.h"
#include "util.h"
#include "save-hw.h"

static char const sSaveMarker[] = "AGB-FE6";

u16 Checksum16(void const *data, int size)
{
	u16 const *data_u16 = data;
	int i;
	u32 add_acc = 0;
	u32 xor_acc = 0;

	if (size > 0x1000)
		size = 0x1000;

	for (i = 0; i < size / 2; ++i) {
		add_acc += data_u16[i];
		xor_acc ^= data_u16[i];
	}

	return add_acc + xor_acc;
}

bool ReadGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	struct GlobalSaveInfo local_info;

	if (unlikely(!IsSaveWorking()))
		return FALSE;

	if (info == NULL)
		info = &local_info;

	ReadSave(SramOffsetToAddr(FLASH_OFFSET_GLOBALINFO), info, sizeof(struct GlobalSaveInfo));

	if (unlikely(!StringEquals(info->name, sSaveMarker)))
		return FALSE;

	if (info->magic32 == SAVE_MAGIC32 && info->magic16 == SAVE_MAGIC16 && info->checksum == Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM))
		return TRUE;

	return FALSE;
}

void WriteGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	info->checksum = Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM);
	WriteSave(info, SramOffsetToAddr(FLASH_OFFSET_GLOBALINFO), sizeof(struct GlobalSaveInfo));
}

void WriteGlobalSaveInfoNoChecksum(struct GlobalSaveInfo *info)
{
	WriteSave(info, SramOffsetToAddr(FLASH_OFFSET_GLOBALINFO), sizeof(struct GlobalSaveInfo));
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
