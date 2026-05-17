#include "prelude.h"
#include "text.h"

#include "utf8.h"

int GetChLenUtf8(const char *str)
{
	const u8 *utf8_in = (const u8 *)str;
	u8 cod = utf8_in[0];

	if ((0xF8 & cod) == 0xF0)
		return 4;

	if ((0xF0 & cod) == 0xE0)
		return 3;

	if ((0xE0 & cod) == 0xC0)
		return 2;

	if ((0x80 & cod) == 0x0)
		return 1;

	return -1;
}

int DecodeUtf8(const char *str, u32 *unicode_out, int *len)
{
	u32 unicod;
	const u8 *utf8_in = (const u8 *)str;

	switch (GetChLenUtf8(str)) {
	case 1:
		*unicode_out = *utf8_in;
		*len = 1;
		return 0;

	case 2:
		unicod = utf8_in[0] & 0x1F;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0x3F);

		*unicode_out = unicod;
		*len = 2;
		return 0;

	case 3:
		unicod = utf8_in[0] & 0x0F;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0x3F);
		unicod = (unicod << 0x6) | (utf8_in[2] & 0x3F);

		*unicode_out = unicod;
		*len = 3;
		return 0;

	case 4:
		unicod = utf8_in[0] & 0x07;
		unicod = (unicod << 0x6) | (utf8_in[1] & 0x3F);
		unicod = (unicod << 0x6) | (utf8_in[2] & 0x3F);
		unicod = (unicod << 0x6) | (utf8_in[3] & 0x3F);

		*unicode_out = unicod;
		*len = 4;
		return 0;

	default:
		*unicode_out = 0;
		*len = 0;
		return -1;
	}
}
