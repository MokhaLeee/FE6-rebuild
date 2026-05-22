#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "save_stats.h"
#include "skill-sys.h"

/**
 * U 2 B
 */
static void InitBattleUnitVanilla(struct BattleUnit *bu, struct Unit *unit)
{
	bu->unit = *unit;

	bu->unit.max_hp = GetUnitMaxHp(unit);
	bu->unit.pow = GetUnitPower(unit);
	bu->unit.skl = GetUnitSkill(unit);
	bu->unit.spd = GetUnitSpeed(unit);
	bu->unit.def = GetUnitDefense(unit);
	bu->unit.lck = GetUnitLuck(unit);
	bu->unit.res = GetUnitResistance(unit);
	bu->unit.bonus_con = GetUnitCon(unit);
	bu->unit.bonus_mov = GetUnitMovement(unit);

	bu->previous_level = bu->unit.level;
	bu->previous_exp = bu->unit.exp;
	bu->previous_hp = bu->unit.hp;

	bu->output_status = 0xFF;

	bu->change_hp = 0;
	bu->change_pow = 0;
	bu->change_skl = 0;
	bu->change_spd = 0;
	bu->change_def = 0;
	bu->change_res = 0;
	bu->change_lck = 0;
	bu->change_con = 0;

	gBattleUnitA.wexp_gain = 0;
	gBattleUnitB.wexp_gain = 0;

	bu->advantage_bonus_hit = 0;
	bu->advantage_bonus_damage = 0;

	bu->dealt_damage = FALSE;

	gBattleUnitA.weapon_broke = FALSE;
	gBattleUnitB.weapon_broke = FALSE;

	gBattleUnitA.exp_gain = 0;
	gBattleUnitB.exp_gain = 0;
}

void InitBattleUnit(struct BattleUnit * bu, struct Unit * unit)
{
	if (!unit)
		return;

	InitBattleUnitVanilla(bu, unit);

	/* str-mag */
	bu->unit.mag = GetUnitMagic(unit);
	bu->change_mag = 0;

	/* skill */
	UnitToBattle_SetupSkillList(bu);
}

void InitBattleUnitWithoutBonuses(struct BattleUnit * bu, struct Unit * unit)
{
	InitBattleUnit(bu, unit);

	bu->unit.max_hp = unit->max_hp;
	bu->unit.pow = unit->pow;
	bu->unit.mag = unit->mag;
	bu->unit.skl = unit->skl;
	bu->unit.spd = unit->spd;
	bu->unit.def = unit->def;
	bu->unit.lck = unit->lck;
	bu->unit.res = unit->res;
	bu->unit.bonus_con = UNIT_CON_BASE(unit);
}

/**
 * B 2 U
 */
static void UpdateUnitFromBattleVanilla(struct Unit *unit, struct BattleUnit *bu)
{
	int tmp;

	unit->level = bu->unit.level;
	unit->exp   = bu->unit.exp;
	unit->hp = bu->unit.hp;
	unit->flags = bu->unit.flags;

	if (bu->output_status >= 0)
		SetUnitStatus(unit, bu->output_status);

	unit->max_hp += bu->change_hp;
	unit->pow += bu->change_pow;
	unit->skl += bu->change_skl;
	unit->spd += bu->change_spd;
	unit->def += bu->change_def;
	unit->res += bu->change_res;
	unit->lck += bu->change_lck;

	UnitCheckStatOverflow(unit);

	tmp = GetBattleUnitUpdatedWeaponExp(bu);

	if (tmp > 0)
		unit->wexp[bu->weapon_kind] = tmp;

	for (tmp = 0; tmp < ITEMSLOT_INV_COUNT; ++tmp)
		unit->items[tmp] = bu->unit.items[tmp];

	UnitRemoveInvalidItems(unit);

	if (bu->exp_gain)
		PidStatsAddExpGained(unit->pinfo->id, bu->exp_gain);
}

void UpdateUnitFromBattle(struct Unit *unit, struct BattleUnit *bu)
{
	UpdateUnitFromBattleVanilla(unit, bu);

	unit->mag += bu->change_mag;
}
