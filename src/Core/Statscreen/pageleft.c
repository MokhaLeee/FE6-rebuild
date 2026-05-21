#include "prelude.h"
#include "statscreen.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "text.h"
#include "hardware.h"
#include "support.h"
#include "icon.h"
#include "armfunc.h"
#include "systemlabels.h"
#include "util.h"
#include "msg.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

void PutStatScreenLeftPanelInfo(void)
{
	char const * pname_str = DecodeMsg(gStatScreenSt.unit->pinfo->msg_name);
	int pname_text_x = GetStringTextCenteredPos(8 * 7, pname_str);

	TmFill(gBg0Tm, 0);

	BattleGenerateDisplayStats(gStatScreenSt.unit, GetUnitEquippedWeaponSlot(gStatScreenSt.unit));

	// display pname & jname

	PutDrawText(gStatScreenSt.text + STATSCREEN_TEXT_PNAME,
		gBg0Tm + TM_OFFSET(4, 10), TEXT_COLOR_SYSTEM_WHITE, pname_text_x, 0, pname_str);

	PutDrawText(gStatScreenSt.text + STATSCREEN_TEXT_JNAME,
		gBg0Tm + TM_OFFSET(1, 13), TEXT_COLOR_SYSTEM_WHITE, 0, 0, DecodeMsg(gStatScreenSt.unit->jinfo->msg_name));

	// display level, exp, hp

	PutTwoSpecialChar(gBg0Tm + TM_OFFSET(1, 15), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_LV_A, TEXT_SPECIAL_LV_B);
	PutSpecialChar(gBg0Tm + TM_OFFSET(5, 15), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_EXP_E);

	PutTwoSpecialChar(gBg0Tm + TM_OFFSET(1, 17), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_HP_A, TEXT_SPECIAL_HP_B);
	PutSpecialChar(gBg0Tm + TM_OFFSET(5, 17), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_SLASH);

	PutNumberOrBlank(gBg0Tm + TM_OFFSET(4, 15), TEXT_COLOR_SYSTEM_BLUE, gStatScreenSt.unit->level);
	PutNumberOrBlank(gBg0Tm + TM_OFFSET(7, 15), TEXT_COLOR_SYSTEM_BLUE, gStatScreenSt.unit->exp);

	PutNumberOrBlank(gBg0Tm + TM_OFFSET(4, 17), TEXT_COLOR_SYSTEM_BLUE, GetUnitCurrentHp(gStatScreenSt.unit));
	PutNumberOrBlank(gBg0Tm + TM_OFFSET(7, 17), TEXT_COLOR_SYSTEM_BLUE, GetUnitMaxHp(gStatScreenSt.unit));
}
