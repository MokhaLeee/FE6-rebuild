#include "prelude.h"
#include "unit.h"
#include "item.h"

#include "skill-sys.h"
#include "constants/skills.h"

int GetUnitMaxHp(struct Unit *unit)
{
	int status = unit->max_hp;

	status += GetItemHpBonus(GetUnitEquippedWeapon(unit));
	return status;
}

int GetUnitCurrentHp(struct Unit *unit)
{
	if (unit->hp > GetUnitMaxHp(unit))
		unit->hp = GetUnitMaxHp(unit);

	return unit->hp;
}

int GetUnitMagic(struct Unit *unit)
{
	int status = unit->mag;

	status += GetItemMagBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusMag(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitPower(struct Unit *unit)
{
	int status = unit->pow;
	
	status += GetItemPowBonus(GetUnitEquippedWeapon(unit));

	if (SkillTester(unit, SID_PowBonus))
		status += 5;

	status = MSG_DuraStatusPow(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitSkill(struct Unit *unit)
{
	int status;

	status = unit->skl;
	if (unit->flags & UNIT_FLAG_RESCUING)
		return unit->skl / 2;

	status += GetItemSklBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusSkl(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitSpeed(struct Unit *unit)
{
	int status;

	status = unit->spd;
	if (unit->flags & UNIT_FLAG_RESCUING)
		return unit->spd / 2;

	status += GetItemSpdBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusSpd(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitDefense(struct Unit *unit)
{
	int status = unit->def;

	status += GetItemDefBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusDef(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitResistance(struct Unit *unit)
{
	int status = unit->res;

	status += GetItemResBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusRes(status, unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitLuck(struct Unit *unit)
{
	int status = unit->lck;

	status += GetItemLckBonus(GetUnitEquippedWeapon(unit));
	status = MSG_DuraStatusLck(status, unit);

	status -= 5;

	LIMIT_AREA(status, 0, 256);
	return status;
}

/* CHAX */
int GetUnitMovement(struct Unit *unit)
{
	int status = UNIT_MOV(unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}

int GetUnitCon(struct Unit *unit)
{
	int status = UNIT_CON(unit);

	LIMIT_AREA(status, 0, 256);
	return status;
}
