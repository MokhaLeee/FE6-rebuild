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
