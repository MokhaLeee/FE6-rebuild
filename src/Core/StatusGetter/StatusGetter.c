#include "prelude.h"
#include "unit.h"
#include "item.h"

#include "skillsys.h"
#include "constants/skills.h"

int GetUnitMaxHp(struct Unit *unit)
{
	return unit->max_hp + GetItemHpBonus(GetUnitEquippedWeapon(unit));
}

int GetUnitCurrentHp(struct Unit *unit)
{
	if (unit->hp > GetUnitMaxHp(unit))
		unit->hp = GetUnitMaxHp(unit);

	return unit->hp;
}

int GetUnitMagic(struct Unit *unit)
{
	return unit->mag + GetItemMagBonus(GetUnitEquippedWeapon(unit));
}

int GetUnitPower(struct Unit *unit)
{
	int status = unit->pow;
	
	status += GetItemPowBonus(GetUnitEquippedWeapon(unit));

	if (SkillTester(unit, SID_PowBonus))
		status += 5;

	return status;
}

int GetUnitSkill(struct Unit *unit)
{
	int weapon = GetUnitEquippedWeapon(unit);

	if (unit->flags & UNIT_FLAG_RESCUING)
		return unit->skl / 2 + GetItemSklBonus(weapon);

	return unit->skl + GetItemSklBonus(weapon);
}

int GetUnitSpeed(struct Unit *unit)
{
	int weapon = GetUnitEquippedWeapon(unit);

	if (unit->flags & UNIT_FLAG_RESCUING)
		return unit->spd / 2 + GetItemSpdBonus(weapon);

	return unit->spd + GetItemSpdBonus(weapon);
}

int GetUnitDefense(struct Unit *unit)
{
	return unit->def + GetItemDefBonus(GetUnitEquippedWeapon(unit));
}

int GetUnitResistance(struct Unit *unit)
{
	return unit->res + GetItemResBonus(GetUnitEquippedWeapon(unit)) + unit->barrier;
}

int GetUnitLuck(struct Unit *unit)
{
	return unit->lck + GetItemLckBonus(GetUnitEquippedWeapon(unit));
}

/* CHAX */
int GetUnitMovement(struct Unit *unit)
{
	return UNIT_MOV(unit);
}

int GetUnitCon(struct Unit *unit)
{
	return UNIT_CON(unit);
}
