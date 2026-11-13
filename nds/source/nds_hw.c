/*
 * NDS 侧硬件适配层（不依赖 FE6 的 prelude.h / gbaio.h，避免宏冲突）。
 *
 * GBA 与 DS 在以下地址上恰好一致，图形/调色板/OAM 代码可复用：
 *   PLTT  0x05000000
 *   VRAM  0x06000000
 *   OAM   0x07000000
 * 差异：
 *   - GBA 的 OBJ VRAM 在 0x06010000，DS 在 0x06400000（见 nds/include/defines.h）
 *   - 中断控制器与向量不同，用 libnds 的 irqSet
 */
#include <nds.h>
#include <string.h>
#include <stdint.h>

/* 与 include/irq.h 保持一致的内部接口声明 */
typedef void (*IrqFunc)(void);

enum {
	INT_VBLANK = 0,
	INT_HBLANK = 1,
	INT_VCOUNT = 2,
	INT_COUNT = 14,
};

IrqFunc gIrqFuncs[INT_COUNT];

static void dummy_irq(void) {}

static void nds_vblank_handler(void)
{
	IrqFunc fn = gIrqFuncs[INT_VBLANK];

	if (fn != 0)
		fn();
}

void nds_wait_vblank(void)
{
	swiWaitForVBlank();
}

void IrqInit(void)
{
	int i;

	for (i = 0; i < INT_COUNT; ++i)
		gIrqFuncs[i] = dummy_irq;

	irqInit();
	irqSet(IRQ_VBLANK, nds_vblank_handler);
	irqEnable(IRQ_VBLANK);
}

void SetIrqFunc(int num, IrqFunc func)
{
	if (func == 0)
		func = dummy_irq;

	if (num >= INT_COUNT || num < 0)
		return;

	gIrqFuncs[num] = func;
}

void IrqMain(void)
{
	/* DS 上由 libnds 的 IRQ 分发器接管；保留符号给旧代码引用 */
}

/*
 * 把 VRAM bank 映射成 GBA 兼容布局：
 *   bank A (128KB) -> MAIN_BG   @ 0x06000000，覆盖 GBA 的 BG VRAM (64KB)
 *   bank B (128KB) -> MAIN_SPRITE @ 0x06400000，对应重定向后的 OBJ_VRAM0
 */
void nds_hw_init(void)
{
	videoSetMode(MODE_0_2D);
	vramSetBankA(VRAM_A_MAIN_BG_0x06000000);
	vramSetBankB(VRAM_B_MAIN_SPRITE);

	/* 起始状态清零 */
	memset((void *)0x06000000, 0, 0x20000);
	memset((void *)0x05000000, 0, 0x400);
	memset((void *)0x07000000, 0, 0x400);
}
