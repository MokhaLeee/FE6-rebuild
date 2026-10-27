#include "prelude.h"
#include "armfunc.h"
#include "hardware.h"

IWRAM_FUNC
void DrawGlyph(u16 const *cvtLut, void *chr, u32 const *glyph, int offset)
{
	static u32 const ref[] = {
		0x00000001, 0x00000004, 0x00000010, 0x00000040,
		0x00000100, 0x00000400, 0x00001000, 0x00004000,
	};

	int i;
	u32 *dst = chr;

	for (i = 0; i < 16; i++) {
		u64 product = (u64)(*glyph++) * ref[offset];
		u32 lo = product;
		u32 hi = product >> 32;

		dst[0x00] |= (u32)cvtLut[lo & 0xFF] | ((u32)cvtLut[(lo >> 8) & 0xFF] << 16);
		dst[0x10] |= (u32)cvtLut[(lo >> 16) & 0xFF] | ((u32)cvtLut[(lo >> 24) & 0xFF] << 16);
		dst[0x20] |= (u32)cvtLut[hi & 0xFF] | ((u32)cvtLut[(hi >> 8) & 0xFF] << 16);

		dst++;
	}
}

extern u32 const gMsgHuffmanTable[];
extern u32 const *const gMsgHuffmanTableRoot;

IWRAM_FUNC
void DecodeString(char const *src, char *dst)
{
	u32 const *node_base = gMsgHuffmanTable;
	u32 const *root = gMsgHuffmanTableRoot;
	int bits_left = 0;
	unsigned byte = 0;

	for (;;) {
		u32 const *node = root;

		for (;;) {
			u32 value;
			unsigned index;

			if (--bits_left < 0) {
				byte = (u8)*src++;
				bits_left = 7;
			}

			index = (byte & 1) ? (*node >> 16) : (*node & 0xFFFF);
			byte >>= 1;
			node = node_base + index;
			value = *node;

			if ((i32)value >= 0)
				continue;

			if (value & 0xFF00) {
				*dst++ = value;
				*dst++ = value >> 8;
				break;
			}

			*dst = value;
			if ((value & 0xFF) == 0)
				return;

			dst++;
			break;
		}
	}
}

IWRAM_FUNC
void ColorFadeTick(void)
{
	int pal;

	for (pal = 0x1F; pal >= 0; pal--) {
		int step = gFadeComponentStep[pal];
		int color;

		if (step == 0)
			continue;

		for (color = 15; color >= 0; color--) {
			int idx = (pal * 0x10 + color) * 3;
			int channel;
			int rgb = 0;

			for (channel = 0; channel < 3; channel++) {
				int value = (u8)gFadeComponents[idx + channel] + step;

				gFadeComponents[idx + channel] = value;
				value -= 0x20;

				if (value < 0)
					value = 0;
				if (value >= 0x20)
					value = 0x1F;

				rgb += value << (channel * 5);
			}

			gPal[pal * 0x10 + color] = rgb;
		}
	}
}
