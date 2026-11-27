#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "bm.h"
#include "arena.h"
#include "action.h"
#include "battle.h"
#include "save_stats.h"

#include "skill-sys.h"

#include "constants/terrains.h"

/*
 * Battle entry points, split out of battle.c after the fe8u cskillsys
 * BattleGenerate.c.  Simulation / real and the ballista variants all funnel
 * through BattleGenerate(), which is where the pre-battle calc, the effective
 * stat calc and the hit loop (BattleUnwind) meet.
 */

static void ComputeBattleObstacleStats(void)
{
	gBattleUnitA.battle_effective_hit = 100;
	gBattleUnitA.battle_effective_crit = 0;

	gBattleUnitB.battle_speed = 0xFF;
	gBattleUnitB.previous_hp = gBattleUnitB.unit.hp;

	gBattleUnitB.advantage_bonus_hit = 0;
	gBattleUnitB.advantage_bonus_damage = 0;
}

static void BattleGenerate(struct Unit *instigator, struct Unit *target)
{
	ComputeBattleUnitStats(&gBattleUnitA, &gBattleUnitB);
	ComputeBattleUnitStats(&gBattleUnitB, &gBattleUnitA);

	ComputeBattleUnitEffectiveStats(&gBattleUnitA, &gBattleUnitB);
	ComputeBattleUnitEffectiveStats(&gBattleUnitB, &gBattleUnitA);

	if (target == NULL)
		ComputeBattleObstacleStats();

	BattleUnwind();
}

static void BattleGenerateSimulationInternal(struct Unit *instigator, struct Unit *target, int x, int y, int item_slot)
{
	InitBattleUnit(&gBattleUnitA, instigator);
	InitBattleUnit(&gBattleUnitB, target);

	/*
	 * Both battle units are ready; take the skill snapshot (Nihil included)
	 * before SetBattleUnitWeapon(), which may query skills.
	 */
	SetupBattleSkillList();

	gBattleUnitA.unit.x = x;
	gBattleUnitA.unit.y = y;

	gBattleSt.range = RECT_DISTANCE(
		gBattleUnitA.unit.x, gBattleUnitA.unit.y,
		gBattleUnitB.unit.x, gBattleUnitB.unit.y);

	if (gBattleSt.flags & BATTLE_FLAG_BALLISTA)
		SetBattleUnitWeaponBallista(&gBattleUnitA);
	else
		SetBattleUnitWeapon(&gBattleUnitA, item_slot);

	SetBattleUnitWeapon(&gBattleUnitB, -1);

	BattleInitTargetCanCounter();
	BattleApplyWeaponTriangleEffect(&gBattleUnitA, &gBattleUnitB);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
	SetBattleUnitTerrainBonusesAuto(&gBattleUnitB);

	BattleGenerate(instigator, target);
}

/*
 * The unit attack menu can park a gaiden book in gAction.item_slot.  Only
 * that range is trusted, so a slot left over from an earlier action can
 * never change which weapon an ordinary attack uses.
 */
static int battle_actor_slot(void)
{
	int slot = gAction.item_slot;

	if (slot >= ITEMSLOT_GAIDEN_BMAG1 && slot <= ITEMSLOT_GAIDEN_WMAG7)
		return slot;

	return -1;
}

static void BattleGenerateRealInternal(struct Unit *instigator, struct Unit *target)
{
	InitBattleUnit(&gBattleUnitA, instigator);
	InitBattleUnit(&gBattleUnitB, target);

	/*
	 * Both battle units are ready; take the skill snapshot (Nihil included)
	 * before SetBattleUnitWeapon(), which may query skills.
	 */
	SetupBattleSkillList();

	gBattleSt.range = RECT_DISTANCE(
		gBattleUnitA.unit.x, gBattleUnitA.unit.y,
		gBattleUnitB.unit.x, gBattleUnitB.unit.y);

	if (gBattleSt.flags & BATTLE_FLAG_BALLISTA)
		SetBattleUnitWeaponBallista(&gBattleUnitA);
	else
		SetBattleUnitWeapon(&gBattleUnitA, battle_actor_slot());

	SetBattleUnitWeapon(&gBattleUnitB, -1);

	BattleInitTargetCanCounter();
	BattleApplyWeaponTriangleEffect(&gBattleUnitA, &gBattleUnitB);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
	SetBattleUnitTerrainBonusesAuto(&gBattleUnitB);

	BattleGenerate(instigator, target);

	BattleUnitTargetCheckCanCounter(&gBattleUnitB);
	BattleUnitTargetSetEquippedWeapon(&gBattleUnitB);

	if (gBattleUnitB.unit.id != 0)
	{
		BattleApplyExpGains();
		PidStatsUpdateFromBattleOutcome();
		PidStatsAddBattle(instigator);
		PidStatsAddBattle(target);
	}
}

void BattleGenerateSimulation(struct Unit *instigator, struct Unit *target, int x, int y, int item_slot)
{
	if (x < 0 && y < 0) {
		x = instigator->x;
		y = instigator->y;
	}

	gBattleSt.flags = BATTLE_FLAG_SIMULATE;
	BattleGenerateSimulationInternal(instigator, target, x, y, item_slot);
}

void BattleGenerateReal(struct Unit *instigator, struct Unit *target)
{
	gBattleSt.flags = BATTLE_FLAG_REAL;
	BattleGenerateRealInternal(instigator, target);
}

void BattleGenerateBallistaSimulation(struct Unit *instigator, struct Unit *target, int x, int y)
{
	gBattleSt.flags = BATTLE_FLAG_SIMULATE | BATTLE_FLAG_BALLISTA;
	BattleGenerateSimulationInternal(instigator, target, x, y, 0);
}

void BattleGenerateBallistaReal(struct Unit *instigator, struct Unit *target)
{
	gBattleSt.flags = BATTLE_FLAG_REAL | BATTLE_FLAG_BALLISTA;
	BattleGenerateRealInternal(instigator, target);
}

void BattleGenerateArena(struct Unit *unit)
{
	struct Unit *target = gArenaSt.opponent;

	int just_resumed = gBmSt.just_resumed;

	gBattleSt.flags = BATTLE_FLAG_REAL | BATTLE_FLAG_ARENA;

	InitBattleUnit(&gBattleUnitA, unit);
	InitBattleUnit(&gBattleUnitB, target);

	if (gAction.extra != 0) {
		gBattleUnitB.unit.hp = gAction.extra;
		gBattleUnitB.previous_hp = gAction.extra;
	}

	gBattleSt.range = gArenaSt.range;

	gBattleUnitB.unit.x = gBattleUnitA.unit.x + gArenaSt.range;
	gBattleUnitB.unit.y = gBattleUnitA.unit.y;

	/* Both sides are ready; take the skill snapshot (Nihil included). */
	SetupBattleSkillList();

	SetBattleUnitWeapon(&gBattleUnitA, ITEMSLOT_ARENA_PLAYER);
	SetBattleUnitWeapon(&gBattleUnitB, ITEMSLOT_ARENA_OPPONENT);

	BattleApplyWeaponTriangleEffect(&gBattleUnitA, &gBattleUnitB);

	gAction.suspend_point = SUSPEND_POINT_DURING_ARENA;
	// WriteSuspendSave(SAVE_SUSPEND);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
    SetBattleUnitTerrainBonuses(&gBattleUnitB, TERRAIN_ARENA_08);

	BattleGenerate(unit, target);

	if (gBattleUnitB.unit.hp == 0)
		BattleApplyExpGains();

	UpdateUnitDuringBattle(unit, &gBattleUnitA);

	if (!just_resumed || (gBattleUnitB.unit.hp == 0))
		PidStatsUpdateFromBattleOutcome();

	BattlePrintDebugUnitInfo(&gBattleUnitA, &gBattleUnitB);
}
