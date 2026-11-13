/*
 * NDS 版入口：替代 src/Common/crt0/main.c 里的 AgbMain。
 *
 * 与 GBA 版的差异：
 *   - 去掉 REG_WAITCNT / REG_DISPSTAT / REG_IME 的 GBA 直写（DS 由 libnds 管理）
 *   - 去掉 SaveHwInit() / ReadGlobalSaveInfo()（存档先屏蔽）
 *   - 去掉 InitMus() / m4aSoundInit()（声音先去掉）
 *   - IrqInit() 走 nds_hw.c 的 DS 实现
 */
#include "prelude.h"

#include "irq.h"
#include "random.h"
#include "hardware.h"
#include "armfunc.h"
#include "proc.h"
#include "spriteanim.h"
#include "debug.h"
#include "gamecontroller.h"
#include "bm.h"
#include "mu.h"
#include "save_core.h"

void InitGlobalSaveInfo(void);

SECTION(".ewram.crt0") u8 gBuf[0x2000] = { 0 };

void nds_hw_init(void);

void AgbMain_NDS(void)
{
	IrqInit();
	SetOnVBlank(NULL);

	io_init();
	dprintf(INFO, "[FE6-NDS] boot");

	InitKeySt(gKeySt);
	RefreshKeySt(gKeySt);

	/* SaveHwInit(); -- 存档屏蔽 */

	InitProcs();
	InitSpriteAnims();
	/* InitMus(); -- 声音屏蔽 */

	RandInitB(0x42D690E9);
	RandInit(RandNextB());

	/* 存档先屏蔽：始终走默认存档初始化，不读卡带 */
	InitGlobalSaveInfo();

	/* m4aSoundInit(); -- 声音屏蔽 */

	SetOnVBlank(OnVBlank);

	StartGame();

	while (TRUE) {
		RunMainFunc();
	}
}

int main(void)
{
	nds_hw_init();
	AgbMain_NDS();
	return 0;
}
