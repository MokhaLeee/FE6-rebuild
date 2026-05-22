#include "prelude.h"
#include "save_core.h"
#include "gbasram.h"
#include "gbaflash.h"

#include "save-hw.h"
#include "debug.h"

#define LOCAL_TRACE 0

#if CONFIG_SAVE_USE_SRAM
extern void SramInit(void);
extern void WipeSram(void);
extern void WriteSramFast(u8 const * src, u8 * dest, int size);
extern u32 WriteAndVerifySramFast(void const * src, void * dest, int size);
extern void ReadSramFast(void const *_src, void *_dest, int size);

void SaveHwInit(void) { SramInit(); }
void WipeSave(void) { WipeSram(); }
void WriteSave(void const *src, void *dest, int size) { WriteAndVerifySramFast(src, dest, size); }
void ReadSave(void const *src, void *dest, int size) { ReadSramFast(src, dest, size); }

#elif CONFIG_SAVE_USE_FLASH

static void save_hw_flash_init(void)
{
	#define BUFFER_SIZE 50

	int ret = 0;
	_UNUSED u8 buffer[BUFFER_SIZE];

	ret = flash_init(FLASH_SIZE_128KB);
	if (ret)
		goto goto_ret;

#if 0
	// Write Test
	ret = flash_write(0, (u8 *)"FLASH_TEST_AT_0K", BUFFER_SIZE);
	if (ret)
		goto goto_ret;

	ret = flash_write(64 * 1024, (u8 *)"FLASH_TEST_AT_64K", BUFFER_SIZE);
	if (ret)
		goto goto_ret;

	ret = flash_write(127 * 1024, (u8 *)"FLASH_TEST_AT_127K", BUFFER_SIZE);
	if (ret)
		goto goto_ret;

	// Read Test
	ret = flash_read(0, buffer, BUFFER_SIZE);
	if (ret)
		goto goto_ret;
	LTRACEF("Read at data at 0K: %s", buffer);

	ret = flash_read(64 * 1024, buffer, BUFFER_SIZE);
	if (ret)
		goto goto_ret;
	LTRACEF("Read at data at 64K: %s", buffer);

	ret = flash_read(127 * 1024, buffer, BUFFER_SIZE);
	if (ret)
		goto goto_ret;
	LTRACEF("Read at data at 127K: %s", buffer);
#endif

goto_ret:
	if (ret) {
		dprintf(CRITICAL, "failed to init flash");
	}
}

void SaveHwInit(void) { save_hw_flash_init(); }
void WipeSave(void) { flash_reset(); }
void WriteSave(void const *src, void *dest, int size) { flash_write((u32)dest, src, size); }
void ReadSave(void const *src, void *dest, int size) { flash_read((u32)src, dest, size); }

#endif

bool IsSaveWorking(void) { return true; }
