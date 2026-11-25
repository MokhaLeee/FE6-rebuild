#include "prelude.h"
#include "menu.h"
#include "text.h"

#include "menuinfo.h"
#include "mapmenu.h"

#include "skill-sys.h"

#include "constants/msg.h"

static const struct MenuEntInfo MenuEntInfo_UnitAction[] =
{
	{
		.label = TEXT("　制圧", " Seize"),
		.msg_help = MSG_644,
		.available = UnitActionMenu_Seize_Available,
		.on_select = UnitActionMenu_Seize_Select,
	},

	{
		.label = TEXT("　攻撃", " Attack"),
		.msg_help = MSG_638,
		.available = UnitActionMenu_Attack_Available,
		.on_select = UnitActionMenu_Attack_Select,
		.on_switch_in = UnitActionMenu_Attack_SwitchIn,
		.on_switch_out = UnitActionMenu_Attack_SwitchOut,
	},

	{
		.label = TEXT("　杖", " Staff"),
		.msg_help = MSG_639,
		.available = UnitActionMenu_Staff_Available,
		.on_select = UnitActionMenu_Staff_Select,
		.on_switch_in = UnitActionMenu_Staff_SwitchIn,
		.on_switch_out = UnitActionMenu_Staff_SwitchOut,
	},

	{
		.label = TEXT("　奏でる", " Play"),
		.msg_help = MSG_63B,
		.available = UnitActionMenu_Play_Available,
		.on_select = UnitActionMenu_Refresh_Select,
	},

	{
		.label = TEXT("　踊る", " Dance"),
		.msg_help = MSG_63A,
		.available = UnitActionMenu_Dance_Available,
		.on_select = UnitActionMenu_Refresh_Select,
	},

	{
		.label = TEXT("　盗む", " Steal"),
		.msg_help = MSG_63C,
		.available = UnitActionMenu_Steal_Available,
		.on_select = UnitActionMenu_Steal_Select,
	},

	{
		.label = TEXT("　特技", " Skill"),
		.msg_help = MSG_MenuSkill_UM_DESC,
		.available = UpperMenuSkill_Usability,
		.on_select = UpperMenuSkill_OnSelected,
	},

	{
		.label = TEXT("　話す", " Talk"),
		.msg_help = MSG_642,
		.available = UnitActionMenu_Talk_Available,
		.on_select = UnitActionMenu_Talk_Select,
	},

	{
		.label = TEXT("　支援", " Support"),
		.msg_help = MSG_6F0,
		.available = UnitActionMenu_Support_Available,
		.on_select = UnitActionMenu_Support_Select,
	},

	{
		.label = TEXT("　訪問", " Visit"),
		.msg_help = MSG_643,
		.available = UnitActionMenu_Visit_Available,
		.on_select = UnitActionMenu_Visit_Select,
	},

	{
		.label = TEXT("　宝箱", " Chest"),
		.msg_help = MSG_647,
		.available = UnitActionMenu_Chest_Available,
		.on_select = UnitActionMenu_Chest_Select,
	},

	{
		.label = TEXT("　扉", " Door"),
		.msg_help = MSG_645,
		.available = UnitActionMenu_Door_Available,
		.on_select = UnitActionMenu_Door_Select,
	},

	{
		.label = TEXT("　武器屋", " Armory"),
		.msg_help = MSG_648,
		.available = UnitActionMenu_Armory_Available,
		.on_select = UnitActionMenu_Armory_Select,
	},

	{
		.label = TEXT("　道具屋", " Vendor"),
		.msg_help = MSG_649,
		.available = UnitActionMenu_Vendor_Available,
		.on_select = UnitActionMenu_Vendor_Select,
	},

	{
		.label = TEXT("　秘密店", " Secret"),
		.msg_help = MSG_64A,
		.available = UnitActionMenu_Secret_Available,
		.on_select = UnitActionMenu_Secret_Select,
	},

	{
		.label = TEXT("　闘技場", " Arena"),
		.msg_help = MSG_64B,
		.available = UnitActionMenu_Arena_Available,
		.on_select = UnitActionMenu_Arena_Select,
	},

	{
		.label = TEXT("　救出", " Rescue"),
		.msg_help = MSG_63D,
		.available = UnitActionMenu_Rescue_Available,
		.on_select = UnitActionMenu_Rescue_Select,
	},

	{
		.label = TEXT("　降ろす", " Drop"),
		.msg_help = MSG_63E,
		.available = UnitActionMenu_Drop_Available,
		.on_select = UnitActionMenu_Drop_Select,
	},

	{
		.label = TEXT("　引受け", " Take"),
		.msg_help = MSG_640,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.available = UnitActionMenu_Take_Available,
		.on_select = UnitActionMenu_Take_Select,
	},

	{
		.label = TEXT("　引渡し", " Give"),
		.msg_help = MSG_63F,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.available = UnitActionMenu_Give_Available,
		.on_select = UnitActionMenu_Give_Select,
	},

	{
		.label = TEXT("　持ち物", " Item"),
		.msg_help = MSG_64C,
		.available = UnitActionMenu_Item_Available,
		.on_select = UnitActionMenu_Item_Select,
	},

	{
		.label = TEXT("　交換", " Trade"),
		.msg_help = MSG_64D,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.available = AnyMenu_Trade_Available,
		.on_select = UnitActionMenu_Trade_Select,
	},

	{
		.label = TEXT("　輸送隊", " Supply"),
		.msg_help = MSG_64E,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.available = UnitActionMenu_Supply_Available,
		.on_select = UnitActionMenu_Supply_Select,
	},

	{
		.label = TEXT("　待機", " Wait"),
		.msg_help = MSG_637,
		.available = MenuEntryEnabled,
		.on_select = UnitActionMenu_Wait_Select,
	},

	{ 0 }, // end
};

static fu8 unit_menu_on_close(struct MenuProc *menu, struct MenuEntProc *ent)
{
	ResetSkillList();

	return MenuActionClose(menu, ent);
}

const struct MenuInfo MenuInfo_UnitAction = {
	.rect = { 1, 3, 7, 0 },
	.entries = MenuEntInfo_UnitAction,
	.on_b_press = unit_menu_on_close,
	.on_r_press = MenuActionHelpBox,
	.on_help_box = MenuHelpBoxRegular,
};
