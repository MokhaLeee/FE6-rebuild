#include "battle.h"

#include "random.h"
#include "hardware.h"
#include "proc.h"
#include "item.h"
#include "unit.h"
#include "map.h"
#include "bmfx.h"
#include "faction.h"
#include "support.h"
#include "trap.h"
#include "action.h"
#include "chapterinfo.h"
#include "mu.h"
#include "manim.h"
#include "banim.h"
#include "banim_ekrbattle.h"
#include "save_stats.h"
#include "save_game.h"

#include "klib.h"
#include "skill-sys.h"
#include "battle-damage.h"

#include "constants/pids.h"
#include "constants/jids.h"
#include "constants/terrains.h"

static void BattleApplyUnitUpdates(void);
static void BattleApplyBallistaUpdates(void);
static void UpdateObstacleFromBattle(struct BattleUnit *bu);
static void BattlePrintDebugHitInfo(void);

struct BattleSt EWRAM_DATA gBattleSt = {};

struct BattleUnit EWRAM_DATA gBattleUnitA = {};
struct BattleUnit EWRAM_DATA gBattleUnitB = {};

struct BattleHit EWRAM_DATA gBattleHits[BATTLE_HIT_MAX] = {};
struct BattleHitExpa EWRAM_DATA gBattleHitExpa[BATTLE_HIT_MAX] = {};
struct BattleHit *EWRAM_DATA gBattleHitIt = NULL;

void BattleApplyGameStateUpdates(void)
{
	BattleApplyUnitUpdates();
	BattleApplyBallistaUpdates();

	BattlePrintDebugUnitInfo(&gBattleUnitA, &gBattleUnitB);
	BattlePrintDebugHitInfo();
}

void BattleGenerateDisplayStats(struct Unit *unit, i8 item_slot)
{
	gBattleSt.flags = BATTLE_FLAG_STATSONLY;

	gBattleUnitB.weapon = 0;
	gBattleUnitB.weapon_attributes = 0;
	gBattleUnitB.weapon_kind = ITEM_KIND_INVALID;

	gBattleUnitB.unit.jinfo = NULL;

	gBattleUnitA.advantage_bonus_hit = 0;
	gBattleUnitA.advantage_bonus_damage = 0;

	InitBattleUnit(&gBattleUnitA, unit);

	/*
	 * The stat screen has no opponent, so build the actor snapshot only and
	 * skip the Nihil pass.
	 */
	SetupBattleUnitSkillList(&gBattleUnitA);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);

	SetBattleUnitWeapon(&gBattleUnitA, item_slot);
	ComputeBattleUnitStats(&gBattleUnitA, &gBattleUnitB);

	if (!gBattleUnitA.weapon) {
		gBattleUnitA.battle_attack = 0xFF;
		gBattleUnitA.battle_hit = 0xFF;
		gBattleUnitA.battle_crit = 0xFF;
	}

	if (GetItemWeaponEffect(gBattleUnitA.weapon) == WEAPON_EFFECT_ECLIPSE)
		gBattleUnitA.battle_attack = 0xFF;
}

bool BattleRandRoll(u16 threshold, bool simulationResult)
{
	if (gBattleSt.flags & BATTLE_FLAG_SIMULATE)
		return simulationResult;

	return RandRoll(threshold);
}

void func_fe6_0802478C(void)
{
}

void ComputeBattleUnitSupportBonuses(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	struct SupportBonuses bonuses;

	GetUnitSupportBonuses(&attacker->unit, &bonuses);

	attacker->battle_attack += bonuses.bonus_attack;
	attacker->battle_defense += bonuses.bonus_defense;
	attacker->battle_hit += bonuses.bonus_hit;
	attacker->battle_avoid += bonuses.bonus_avoid;
	attacker->battle_crit += bonuses.bonus_crit;
	attacker->battle_dodge += bonuses.bonus_dodge;
}

void ComputeBattleUnitBaseDefense(struct BattleUnit *bu)
{
	bu->battle_defense = bu->terrain_defense + bu->unit.def;
}

void ClearBattleHits(void)
{
	int i;

	for (i = 0; i < BATTLE_HIT_MAX; ++i) {
		gBattleHits[i].attributes = 0;
		gBattleHits[i].info = 0;
		gBattleHits[i].damage = 0;
	}

	gBattleHitIt = gBattleHits;

	memset(gBattleHitExpa, 0, sizeof(gBattleHitExpa));
}

/* Devil-weapon reversal rate in percent. The vanilla formula is 21 - level;
 * at high levels it becomes negative, so clamp it to the 1% floor instead of
 * letting it wrap to a huge u16 threshold. */
int GetDevilReversalChance(int level)
{
	int chance = 21 - level;

	if (chance < 1)
		chance = 1;

	return chance;
}

int GetStatIncrease(int growth)
{
	int result = 0;

	while (growth > 100) {
		result++;
		growth -= 100;
	}

	if (RandRoll(growth))
		result++;

	return result;
}

int GetAutoleveledStatIncrease(int growth, int levels)
{
	return GetStatIncrease(growth*levels + (RandNext(growth*levels/4) - growth*levels/8));
}

static void BattleApplyUnitUpdates(void)
{
	struct Unit *instigator = GetUnit(gBattleUnitA.unit.id);
	struct Unit *target = GetUnit(gBattleUnitB.unit.id);

	if (gBattleUnitA.has_inventory_weapon)
		gBattleUnitA.unit.items[gBattleUnitA.weapon_inventory_slot] = gBattleUnitA.weapon;

	if (gBattleUnitB.has_inventory_weapon)
		gBattleUnitB.unit.items[gBattleUnitB.weapon_inventory_slot] = gBattleUnitB.weapon;

	UpdateUnitFromBattle(instigator, &gBattleUnitA);

	if (target)
		UpdateUnitFromBattle(target, &gBattleUnitB);
	else
		UpdateObstacleFromBattle(&gBattleUnitB);
}

int GetBattleUnitUpdatedWeaponExp(struct BattleUnit *bu)
{
	int result;

	if (UNIT_FACTION(&bu->unit) != FACTION_BLUE)
		return -1;

	if (bu->unit.hp == 0)
		return -1;

	if (gPlaySt.flags & PLAY_FLAG_COMPLETE)
		return -1;

	if (gBmSt.flags & BM_FLAG_LINKARENA)
		return -1;

	if (!(gBattleSt.flags & BATTLE_FLAG_ARENA)) {
		if (!bu->has_inventory_weapon)
			return -1;

		if (!(bu->weapon_attributes & ITEM_ATTR_REQUIRES_EXP))
			return -1;

		if (bu->weapon_attributes & (ITEM_ATTR_LIGHTBRAND | ITEM_ATTR_LOCK_DRAGON))
			return -1;
	}

	result = bu->unit.wexp[bu->weapon_kind] + bu->wexp_gain;

	if (UNIT_ATTRIBUTES(&bu->unit) & UNIT_ATTR_PROMOTED) {
		if (result > WEXP_S)
			result = WEXP_S;
	} else {
		if (result > WEXP_A)
			result = WEXP_A;
	}

	return result;
}

bool HasBattleUnitGainedWeaponLevel(struct BattleUnit *bu)
{
	int oldExp = bu->unit.wexp[bu->weapon_kind];
	int newExp = GetBattleUnitUpdatedWeaponExp(bu);

	if (newExp < 0)
		return FALSE;

	return GetWeaponLevelFromExp(oldExp) != GetWeaponLevelFromExp(newExp);
}

void UpdateUnitDuringBattle(struct Unit *unit, struct BattleUnit *bu)
{
	int wexp;

	unit->hp = bu->unit.hp;

	wexp = GetBattleUnitUpdatedWeaponExp(bu);

	if (wexp > 0)
		unit->wexp[bu->weapon_kind] = wexp;
}

static void BattleApplyBallistaUpdates(void)
{
	if (gBattleSt.flags & BATTLE_FLAG_BALLISTA) {
		int uses = GetItemUses(gBattleUnitA.weapon);
		GetBallistaTrapAt(gBattleUnitA.unit.x, gBattleUnitA.unit.y)->extra = uses;
	}
}

/*
 * Vanilla writes zero to the three unnamed bytes at 0x0203932C, the gap
 * between gBattleHitIt and sTraps (fe6 decomp: unk_0203932C; fe8 twin: the
 * sub_802C334() call at the same spot, clearing sUnknown_0203A60C).
 *
 * The rebuild has no such global yet, so the body stays empty; this is the
 * slot to clear battle-module scratch state when skill code needs it.
 */
void ClearBattleGlobalState(void)
{
}

void InitObstacleBattleUnit(void)
{
	ClearUnit(&gBattleUnitB.unit);

	gBattleUnitB.unit.id = 0;

	gBattleUnitB.unit.pinfo = GetPInfo(PID_WALL);
	gBattleUnitB.unit.jinfo = GetJInfo(JID_OBSTACLE);

	gBattleUnitB.unit.max_hp = GetChapterInfo(gPlaySt.chapter)->wall_hp;
	gBattleUnitB.unit.hp = gAction.extra;

	gBattleUnitB.unit.x = gAction.x_target;
	gBattleUnitB.unit.y = gAction.y_target;
}

static void UpdateObstacleFromBattle(struct BattleUnit *bu)
{
	struct Trap * trap = GetTrapAt(bu->unit.x, bu->unit.y);

	if (!trap)
		trap = GetTrapAt(bu->unit.x, bu->unit.y-1);

	trap->extra = bu->unit.hp;

	if (trap->extra == 0) {
		int mapchange = GetMapChangeIdAt(trap->x, trap->y);

		RenderMapForFade();

		ApplyMapChange(mapchange);

		// This is kind of jank: it sets trap type to 0 (TRAP_NONE) which should be the terminating id
		// But then immediately calls the map change trap adding routine, which would effectively replace
		// the 0-id trap with the new map change trap, even if it is not actually the end of the trap array

		trap->kind = TRAP_NONE;
		AddMapChangeTrap(mapchange);

		RefreshTerrainMap();
		RenderMap();

		StartMapFade(FALSE);
	}
}

void BeginBattleAnimations(void)
{
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG2_SYNC_BIT);
	SetBackdropColor(0);

	RenderMap();

	if (SetupBanim()) {
		SetBanimLinkArenaFlag(0);
		BeginAnimsOnBattleAnimations();
	} else {
		EndAllMus();
		RenderMap();

		StartBattleManim();

		gBattleSt.flags |= BATTLE_FLAG_MAPANIMS;
	}
}

static int GetUnitSoloBattleAnimType(struct Unit *unit)
{
	if (unit->flags & UNIT_FLAG_SOLOANIM_1)
		return PLAY_ANIMCONF_ON;

	if (unit->flags & UNIT_FLAG_SOLOANIM_2)
		return PLAY_ANIMCONF_ON_UNIQUE_BG;

	return PLAY_ANIMCONF_OFF;
}

int GetBattleAnimType(void)
{
	// If not solo anim, return global type

    if (gPlaySt.config_battle_anim != PLAY_ANIMCONF_SOLO_ANIM)
		return gPlaySt.config_battle_anim;

	// If both units are players, use actor solo anim type

	if (UNIT_FACTION(&gBattleUnitA.unit) == FACTION_BLUE)
		if (UNIT_FACTION(&gBattleUnitB.unit) == FACTION_BLUE)
			return GetUnitSoloBattleAnimType(&gBattleUnitA.unit);

    // If neither are players, animations are off

	if (UNIT_FACTION(&gBattleUnitA.unit) != FACTION_BLUE)
		if (UNIT_FACTION(&gBattleUnitB.unit) != FACTION_BLUE)
            return PLAY_ANIMCONF_OFF;

	// Return solo anim type for the one that is a player unit

	if (UNIT_FACTION(&gBattleUnitA.unit) == FACTION_BLUE)
		return GetUnitSoloBattleAnimType(&gBattleUnitA.unit);
	else
		return GetUnitSoloBattleAnimType(&gBattleUnitB.unit);
}

void BattlePrintDebugUnitInfo(struct BattleUnit *actor, struct BattleUnit *target)
{
	// prints battle unit information to debug output
}

static void BattlePrintDebugHitInfo(void)
{
	struct BattleHit *it;

	for (it = gBattleHits; !(it->info & BATTLE_HIT_INFO_END); ++it) {
		// prints battle rounds information to debug output
	}
}

static void DummyBattleAnimLock_UpdateInstigator(ProcPtr proc)
{
	UpdateUnitFromBattle(GetUnit(gBattleUnitA.unit.id), &gBattleUnitA);
}

static const struct ProcScr ProcScr_DummyBattleAnimLock[] = {
	PROC_SLEEP(1),
	PROC_CALL(DummyBattleAnimLock_UpdateInstigator),

	PROC_END,
};

void BattleApplyMiscAction(ProcPtr proc)
{
	BattleApplyMiscActionExpGains();
	SpawnProcLocking(ProcScr_DummyBattleAnimLock, proc);
}

void BattleApplyItemEffect(ProcPtr proc)
{
	(++gBattleHitIt)->info = BATTLE_HIT_INFO_END;

	BattleApplyItemExpGains();

	if (gBattleUnitA.has_inventory_weapon) {
		if (GetItemAttributes(gBattleUnitA.weapon) & ITEM_ATTR_STAFF)
			gBattleUnitA.weapon_broke = TRUE;

		gBattleUnitA.weapon = GetItemAfterUse(gBattleUnitA.weapon);
		gBattleUnitA.unit.items[gBattleUnitA.weapon_inventory_slot] = gBattleUnitA.weapon;

		if (gBattleUnitA.weapon)
			gBattleUnitA.weapon_broke = FALSE;
	}

	SpawnProcLocking(ProcScr_DummyBattleAnimLock, proc);
}

int GetOffensiveStaffAccuracy(struct Unit *unit, struct Unit *target)
{
	int baseAccuracy = (GetUnitPower(unit) - GetUnitResistance(target)) * 6;
	int unitSkill = GetUnitSkill(unit);
	int distance = RECT_DISTANCE(unit->x, unit->y, target->x, target->y);

	int result = baseAccuracy + 30 + unitSkill - distance ;

	if (result < 0)
		result = 0;

	if (result > 100)
		result = 100;

	return result;
}

bool BattleIsTriangleAttack(void)
{
	return (gBattleHits[0].attributes & BATTLE_HIT_ATTR_TRIANGLE_ATTACK) != 0;
}

bool DidBattleUnitBreakWeapon(struct BattleUnit *bu)
{
	if (bu->unit.hp == 0)
		return FALSE;

	return bu->weapon_broke;
}

void BattleHitAdvance(void)
{
	gBattleHitIt++;
}

void BattleHitTerminate(void)
{
	gBattleHitIt++;
	gBattleHitIt->info = BATTLE_HIT_INFO_END;
}
