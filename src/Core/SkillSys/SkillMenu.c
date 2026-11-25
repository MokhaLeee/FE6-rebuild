#include "prelude.h"
#include "menu.h"
#include "text.h"
#include "msg.h"
#include "helpbox.h"
#include "hardware.h"
#include "unit.h"

#include "skill-sys.h"

#define UNIT_MENU_SKILL_AMOUNT 4
#define MENU_SKILL_INDEX(menu_item)   ((menu_item)->msg_help)

static u32 MenuSkills_StandardDraw(struct MenuProc *menu, struct MenuEntProc *ent);
static u32 MenuSkills_OnDraw(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 MenuSkills_OnHelpBox(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 MenuSkills_Usability(const struct MenuEntInfo *self, int number);
static fu8 MenuSkills_OnSelected(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 MenuSkills_Idle(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 MenuSkills_Hover(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 MenuSkills_Unhover(struct MenuProc *menu, struct MenuEntProc *ent);
static void GenerateUnitMenuSkillList(struct Unit *unit);

static EWRAM_DATA u16 UnitMenuSkills[UNIT_MENU_SKILL_AMOUNT];

static const struct MenuEntInfo *GetSkillMenuInfo(int sid)
{
	if (sid < 0 || sid >= MAX_SKILL_NUM)
		return NULL;

	return gSkillMenuInfos[sid];
}

/*
 * Upper menu entry: shown in the unit action menu, opens the sub menu below.
 */
static const struct MenuEntInfo sUnitSkillMenuItems[] = {
	{
		.label = TEXT("　特技", " Skill"),
		.msg_help = 0,
		.available = MenuSkills_Usability,
		.display = MenuSkills_OnDraw,
		.on_select = MenuSkills_OnSelected,
		.on_idle = MenuSkills_Idle,
		.on_switch_in = MenuSkills_Hover,
		.on_switch_out = MenuSkills_Unhover,
	},
	{
		.label = TEXT("　特技", " Skill"),
		.msg_help = 1,
		.available = MenuSkills_Usability,
		.display = MenuSkills_OnDraw,
		.on_select = MenuSkills_OnSelected,
		.on_idle = MenuSkills_Idle,
		.on_switch_in = MenuSkills_Hover,
		.on_switch_out = MenuSkills_Unhover,
	},
	{
		.label = TEXT("　特技", " Skill"),
		.msg_help = 2,
		.available = MenuSkills_Usability,
		.display = MenuSkills_OnDraw,
		.on_select = MenuSkills_OnSelected,
		.on_idle = MenuSkills_Idle,
		.on_switch_in = MenuSkills_Hover,
		.on_switch_out = MenuSkills_Unhover,
	},
	{
		.label = TEXT("　特技", " Skill"),
		.msg_help = 3,
		.available = MenuSkills_Usability,
		.display = MenuSkills_OnDraw,
		.on_select = MenuSkills_OnSelected,
		.on_idle = MenuSkills_Idle,
		.on_switch_in = MenuSkills_Hover,
		.on_switch_out = MenuSkills_Unhover,
	},
	{ 0 }, /* end */
};

static const struct MenuInfo sUnitSkillMenuDef = {
	.rect = { 1, 2, 14, 0 },
	.entries = sUnitSkillMenuItems,
	.on_b_press = MenuActionClose,
	.on_r_press = MenuActionHelpBox,
	.on_help_box = MenuSkills_OnHelpBox,
};

fu8 UpperMenuSkill_Usability(const struct MenuEntInfo *self, int number)
{
	int i;
	const struct MenuEntInfo *items = sUnitSkillMenuDef.entries;

	for (i = 0; items[i].available != NULL; i++) {
		fu8 ava = items[i].available(&items[i], i);

		if (ava != MENU_ENTRY_HIDDEN)
			return MENU_ENTRY_ENABLED;
	}

	return MENU_ENTRY_HIDDEN;
}

fu8 UpperMenuSkill_OnSelected(struct MenuProc *menu, struct MenuEntProc *ent)
{
	struct MenuRect rect = sUnitSkillMenuDef.rect;

	rect.w = gpSysConfig->skill_sub_menu_width;

	if (ent->x < 12)
		rect.x = 1;
	else
		rect.x = 29 - rect.w;

	StartMenuExt(&sUnitSkillMenuDef, rect);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A | MENU_ACTION_CLEAR;
}

static void GenerateUnitMenuSkillList(struct Unit *unit)
{
	int i, cnt;
	struct SkillList *list;

	list = GetSkillList(unit);

	memset(UnitMenuSkills, 0, sizeof(UnitMenuSkills));

	cnt = 0;
	for (i = 0; i < list->amt; i++) {
		u16 sid;
		const struct MenuEntInfo *def;

		if (cnt >= UNIT_MENU_SKILL_AMOUNT)
			break;

		sid = list->sid[i];
		def = GetSkillMenuInfo(sid);

		if (SKILL_IS_VALID(sid) && def && def->available)
			UnitMenuSkills[cnt++] = sid;
	}
}

static fu8 MenuSkills_OnHelpBox(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);
	u16 msg = 0;

	if (def)
		msg = def->msg_help;

	if (msg == 0)
		msg = GetSkillDescMsg(sid);

	StartHelpBox(ent->x * 8, ent->y * 8, msg);

	return 0;
}

static fu8 MenuSkills_Usability(const struct MenuEntInfo *self, int number)
{
	u16 sid;
	const struct MenuEntInfo *def;

	if (MENU_SKILL_INDEX(self) == 0) {
		/* The first slot is always evaluated first, use it to refresh. */
		GenerateUnitMenuSkillList(gActiveUnit);
	}

	sid = UnitMenuSkills[MENU_SKILL_INDEX(self)];
	def = GetSkillMenuInfo(sid);

	if (!SKILL_IS_VALID(sid) || !def || !def->available)
		return MENU_ENTRY_HIDDEN;

	return def->available(self, number);
}

static u32 MenuSkills_StandardDraw(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (!def)
		return 0;

	if (def->text_color)
		Text_SetColor(&ent->text, def->text_color);

	if (ent->availability == MENU_ENTRY_DISABLED)
		Text_SetColor(&ent->text, TEXT_COLOR_SYSTEM_GRAY);

	if (def->msg_label)
		Text_DrawString(&ent->text, DecodeMsg(def->msg_label));
	else
		Text_DrawString(&ent->text, GetMenuSkillNameStr(sid));

	PutText(&ent->text, gBg0Tm + TM_OFFSET(ent->x, ent->y));

	return 0;
}

static u32 MenuSkills_OnDraw(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (def && def->display)
		return def->display(menu, ent);

	return MenuSkills_StandardDraw(menu, ent);
}

static fu8 MenuSkills_OnSelected(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (def && def->on_select)
		return def->on_select(menu, ent);

	return 0;
}

static fu8 MenuSkills_Idle(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (def && def->on_idle)
		return def->on_idle(menu, ent);

	return 0;
}

static fu8 MenuSkills_Hover(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (def && def->on_switch_in)
		return def->on_switch_in(menu, ent);

	return 0;
}

static fu8 MenuSkills_Unhover(struct MenuProc *menu, struct MenuEntProc *ent)
{
	u16 sid = UnitMenuSkills[MENU_SKILL_INDEX(ent->info)];
	const struct MenuEntInfo *def = GetSkillMenuInfo(sid);

	if (def && def->on_switch_out)
		return def->on_switch_out(menu, ent);

	return 0;
}
