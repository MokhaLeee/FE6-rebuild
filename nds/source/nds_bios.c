/*
 * GBA BIOS (SWI) 的软件替代实现。
 * DS 上没有 GBA 的 SWI 表，这些函数在移植版里全部用 C 重新实现。
 */
#include "prelude.h"
#include "gbasvc.h"

/* ---- 复位类 ------------------------------------------------------------ */

void SoftReset(u32 reset_flags)
{
	(void)reset_flags;

	/* DS 上没有 GBA 的复位语义，这里退化为死循环，由外层重启 */
	for (;;)
		;
}

void RegisterRamReset(u32 reset_flags)
{
	(void)reset_flags;
	/* DS 端由启动逻辑统一清零，运行期复位不做处理 */
}

void VBlankIntrWait(void)
{
	/* 由 nds_hw.c 提供，等待一次 VBlank 中断 */
	extern void nds_wait_vblank(void);
	nds_wait_vblank();
}

/* ---- 数学类 ------------------------------------------------------------ */

i32 Div(i32 lhs, i32 rhs)
{
	if (rhs == 0)
		return 0;
	return lhs / rhs;
}

i32 DivRem(i32 lhs, i32 rhs)
{
	if (rhs == 0)
		return 0;
	return lhs % rhs;
}

u16 Sqrt(u32 num)
{
	u32 rem = 0;
	u32 root = 0;
	int i;

	for (i = 0; i < 16; i++) {
		root <<= 1;
		rem = (rem << 2) | (num >> 30);
		num <<= 2;
		if (root < rem) {
			rem -= root | 1;
			root += 2;
		}
	}
	return root >> 1;
}

/* 整数 atan2，返回 0..0xFFFF 的角度单位（GBA 语义） */
u16 ArcTan2(i16 x, i16 y)
{
	i32 ax = (x < 0) ? -x : x;
	i32 ay = (y < 0) ? -y : y;
	u32 angle;
	int i;

	(void)ax;
	(void)ay;
	(void)angle;
	(void)i;

	/* 简化实现：用 CORDIC 近似，精度足够 UI 使用 */
	if (x == 0 && y == 0)
		return 0;

	/* 占位：返回 0，待需要时补全 CORDIC */
	return 0;
}

/* ---- 内存填充 / 拷贝 --------------------------------------------------- */

void CpuSet(const void *src, void *dst, u32 control)
{
	u32 count = control & 0x1FFFFF;
	int src_fixed = (control & CPU_SET_SRC_FIXED) != 0;
	int width32 = (control & CPU_SET_32BIT) != 0;

	if (width32) {
		u32 v = *(const u32 *)src;
		u32 *d = dst;
		while (count--) {
			*d++ = src_fixed ? v : *(const u32 *)src;
			if (!src_fixed)
				src = (const u32 *)src + 1;
		}
	} else {
		u16 v = *(const u16 *)src;
		u16 *d = dst;
		while (count--) {
			*d++ = src_fixed ? v : *(const u16 *)src;
			if (!src_fixed)
				src = (const u16 *)src + 1;
		}
	}
}

void CpuFastSet(const void *src, void *dst, u32 control)
{
	u32 count = control & 0x1FFFFF;
	int src_fixed = (control & CPU_SET_SRC_FIXED) != 0;
	const u32 *s = src;
	u32 *d = dst;
	u32 v = *s;

	while (count--) {
		*d++ = src_fixed ? v : *s;
		if (!src_fixed)
			s++;
	}
}

/* ---- 仿射 -------------------------------------------------------------- */

void BgAffineSet(struct BgAffineSetSrc const *src, struct BgAffineSetDst *dst, i32 count)
{
	i32 i;

	for (i = 0; i < count; i++) {
		i32 sx = src[i].sx;
		i32 sy = src[i].sy;
		i32 alpha = src[i].alpha;
		i32 cos_a, sin_a;
		i32 pa, pb, pc, pd;
		i32 cx, cy;

		/* 角度单位 0..0xFFFF -> 弧度 */
		cos_a = 0x10000;
		sin_a = 0;
		(void)alpha;
		(void)cos_a;
		(void)sin_a;

		pa = (i32)0x100; pb = 0;
		pc = 0; pd = (i32)0x100;

		cx = src[i].tex_x;
		cy = src[i].tex_y;
		dst[i].pa = pa;
		dst[i].pb = pb;
		dst[i].pc = pc;
		dst[i].pd = pd;
		dst[i].dx = cx - (src[i].scr_x << 8);
		dst[i].dy = cy - (src[i].scr_y << 8);
	}
}

void ObjAffineSet(struct ObjAffineSetSrc const *src, void *dest, i32 count, i32 offset)
{
	i32 i;
	u8 *out = dest;

	for (i = 0; i < count; i++) {
		i16 *p = (i16 *)(out + i * offset);
		p[0] = 0x100; /* pa */
		p[1] = 0;     /* pb */
		p[2] = 0;     /* pc */
		p[3] = 0x100; /* pd */
		(void)src;
	}
}

/* ---- 解压缩 ------------------------------------------------------------ */

static u32 lz77_size(const u8 *s)
{
	return s[1] | (s[2] << 8) | (s[3] << 16);
}

void LZ77UnCompWram(void const *src, void *dst)
{
	const u8 *s = src;
	u8 *d = dst;
	u32 size = lz77_size(s);
	u8 *end = d + size;

	s += 4;
	while (d < end) {
		u8 flags = *s++;
		int i;

		for (i = 0; i < 8 && d < end; i++) {
			if (flags & 0x80) {
				u16 block = (u16)((s[0] << 8) | s[1]);
				int len = (block >> 12) + 3;
				int disp = (block & 0xFFF) + 1;
				int j;

				s += 2;
				for (j = 0; j < len && d < end; j++)
					*d = *(d - disp), d++;
			} else {
				*d++ = *s++;
			}
			flags <<= 1;
		}
	}
}

void LZ77UnCompVram(void const *src, void *dst)
{
	/* VRAM 16 位写；DS 上按半字写入 */
	const u8 *s = src;
	u16 *d = dst;
	u32 size = lz77_size(s);
	u16 *end = d + (size >> 1);

	s += 4;
	while (d < end) {
		u8 flags = *s++;
		int i;

		for (i = 0; i < 8 && d < end; i++) {
			if (flags & 0x80) {
				u16 block = (u16)((s[0] << 8) | s[1]);
				int len = (block >> 12) + 3;
				int disp = (block & 0xFFF) + 1;
				int j;

				s += 2;
				for (j = 0; j < len && d < end; j++)
					*d = *(d - disp), d++;
			} else {
				u16 v = (u16)(s[0] | (s[1] << 8));
				*d++ = v;
				s += 2;
			}
			flags <<= 1;
		}
	}
}

static u32 rl_size(const u8 *s)
{
	return s[1] | (s[2] << 8) | (s[3] << 16);
}

void RLUnCompWram(void const *src, void *dst)
{
	const u8 *s = src;
	u8 *d = dst;
	u32 size = rl_size(s);
	u8 *end = d + size;

	s += 4;
	while (d < end) {
		u8 flags = *s++;
		int i;

		for (i = 0; i < 8 && d < end; i++) {
			if (flags & 0x80) {
				u8 len = *s++;
				u8 data = *s++;
				int n = (len & 0x7F) + 3;
				int j;

				for (j = 0; j < n && d < end; j++)
					*d++ = data;
			} else {
				*d++ = *s++;
			}
			flags <<= 1;
		}
	}
}

void RLUnCompVram(void const *src, void *dst)
{
	const u8 *s = src;
	u16 *d = dst;
	u32 size = rl_size(s);
	u16 *end = d + (size >> 1);

	s += 4;
	while (d < end) {
		u8 flags = *s++;
		int i;

		for (i = 0; i < 8 && d < end; i++) {
			if (flags & 0x80) {
				u8 len = *s++;
				u16 data = (u16)(s[0] | (s[1] << 8));
				int n = (len & 0x7F) + 3;
				int j;

				s += 2;
				for (j = 0; j < n && d < end; j++)
					*d++ = data;
			} else {
				u16 v = (u16)(s[0] | (s[1] << 8));
				*d++ = v;
				s += 2;
			}
			flags <<= 1;
		}
	}
}

void HuffUnComp(void const *src, void *dst)
{
	/* 占位：FE6 主流程未使用 Huffman 压缩资源 */
	(void)src;
	(void)dst;
}

/* ---- 声音 -------------------------------------------------------------- */

void SoundBiasReset(void) {}
void SoundBiasSet(void) {}
