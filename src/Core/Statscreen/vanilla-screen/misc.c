#include "prelude.h"
#include "unit.h"
#include "face.h"
#include "text.h"
#include "icon.h"
#include "mu.h"
#include "oam.h"
#include "sprite.h"
#include "helpbox.h"
#include "armfunc.h"
#include "hardware.h"
#include "statscreen.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

/* more page */

void PutStatScreenPage(int page_id)
{
	typedef void (* PutPageFunc)(void);

	const PutPageFunc func_table[] = {
		PutStatScreenPersonalInfoPage,
		PutStatScreenItemsPage,
		PutStatScreenWeaponExpAndSupportsPage,
		PutStatScreenPersonalInfoPage,
		PutStatScreenPersonalInfoPage,
	};

	CpuFastFill(0, gUiTmScratchA, sizeof(u16) * 0x20 * 20);
	CpuFastFill(0, gUiTmScratchC, sizeof(u16) * 0x20 * 18);

	func_table[page_id]();
}

void StartStatScreenHelp(int page_id, ProcPtr proc)
{
	LoadHelpBoxGfx(NULL, -1);

	if (gStatScreenSt.help == NULL) {
		switch (page_id) {
		case STATSCREEN_PAGE_PERSONALINFO:
			gStatScreenSt.help = &HelpInfo_StatScreenPersonalInfo_Pow;
			break;

		case STATSCREEN_PAGE_ITEMS:
			gStatScreenSt.help = &HelpInfo_StatScreenItems_ItemA;
			break;

		case STATSCREEN_PAGE_WEXPANDSUPPORTS:
			gStatScreenSt.help = &HelpInfo_StatScreenWeaponExp_WExpA;
			break;

		case STATSCREEN_PAGE_SKILLS:
			gStatScreenSt.help = &HelpInfo_StatScreenPersonalInfo_Pow;
			break;
		}
	}
	StartMovingHelpBox(gStatScreenSt.help, proc);
}

/* more text palette */
#define RGB2HEX(red, green, blue) RGB(red >> 3, green >> 3, blue >> 3)

static const u16 ExpandedTextPals[] = {
	RGB2HEX(0, 0, 0),

	RGB2HEX(86, 156, 73),
	RGB2HEX(56, 201, 20),
	RGB2HEX(24, 88, 24),

	RGB2HEX(86, 156, 73),
	RGB2HEX(133, 197, 105),
	RGB2HEX(24, 88, 24),

	RGB2HEX(86, 156, 73),
	RGB2HEX(172, 213, 98),
	RGB2HEX(24, 88, 24),

	RGB2HEX(86, 156, 73),
	RGB2HEX(201, 232, 136),
	RGB2HEX(24, 88, 24),

	RGB2HEX(86, 156, 73),
	RGB2HEX(235, 252, 116),
	RGB2HEX(71, 56, 27),

	RGB2HEX(0, 0, 0),

	RGB2HEX(177, 99, 129),
	RGB2HEX(255, 231, 145),
	RGB2HEX(85, 28, 33),

	RGB2HEX(155, 74, 97),
	RGB2HEX(255, 173, 91),
	RGB2HEX(85, 28, 33),

	RGB2HEX(155, 74, 97),
	RGB2HEX(254, 132, 101),
	RGB2HEX(85, 28, 33),

	RGB2HEX(155, 74, 97),
	RGB2HEX(255, 91, 96),
	RGB2HEX(85, 28, 33),

	RGB2HEX(155, 74, 97),
	RGB2HEX(255, 64, 69),
	RGB2HEX(85, 28, 33),
};

void InstallExpandedTextPal(void)
{
	ApplyPalettes(ExpandedTextPals, 0x8, 2);
};
