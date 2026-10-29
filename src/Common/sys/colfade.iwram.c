#include "prelude.h"
#include "hardware.h"

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
