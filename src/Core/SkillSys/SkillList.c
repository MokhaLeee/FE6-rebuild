#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "hardware.h"

#include "skill-sys.h"
#include "klib.h"
#include "constants/skills.h"

static struct SkillList sSkillLists[3];

#define GenericSkillList (&sSkillLists[0])
#define BattleSkillListA (&sSkillLists[1])
#define BattleSkillListB (&sSkillLists[2])

static bool check_sign(struct SkillList *list, struct Unit *unit)
{
	if (unlikely(list->sign.pinfo != unit->pinfo))
		return false;

	if (unlikely(list->sign.jinfo != unit->jinfo))
		return false;

	if (unlikely(list->sign.level != unit->level))
		return false;

	if (unlikely(list->sign.uid != unit->id))
		return false;

	return true;
}

static void write_sign(struct SkillList *list, struct Unit *unit)
{
	list->sign.pinfo = unit->pinfo;
	list->sign.jinfo = unit->jinfo;
	list->sign.level = unit->level;
	list->sign.uid   = unit->id;
}

static void setup_skill_list(struct SkillList *list, struct Unit *unit)
{
	#define ADD_LIST(_sid) { \
		int _tmp_sid = _sid; \
		\
		if (SKILL_IS_VALID(_tmp_sid) && ref_buf[_tmp_sid] == 0) { \
			ref_buf[_tmp_sid] = 1; \
			list->sid[list->amt++] = _tmp_sid; \
		} \
	}

	u8 *ref_buf = (u8 *)gBuf;

	list->amt = 0;

	if (UNIT_IS_VALID(unit)) {
		int pid = UNIT_PID(unit);
		int jid = UNIT_JID(unit);

		memset(ref_buf, 0, MAX_SKILL_NUM);

		/* person */
		ADD_LIST(gpSkillPTable[pid].sid[0]);
		ADD_LIST(gpSkillPTable[pid].sid[1]);

		/* job */
		ADD_LIST(gpSkillJTable[jid].sid[0]);
		ADD_LIST(gpSkillJTable[jid].sid[1]);
	}
}

static struct SkillList *spawn_list_buffer(const struct Unit *unit)
{
	if (likely(unit == &gBattleUnitA.unit))
		return BattleSkillListA;

	if (likely(unit == &gBattleUnitB.unit))
		return BattleSkillListB;

	return GenericSkillList;
}

struct SkillList *GetSkillList(struct Unit *unit)
{
	struct SkillList *list = spawn_list_buffer(unit);

	if (unlikely(!check_sign(list, unit))) {
		write_sign(list, unit);
		setup_skill_list(list, unit);
	}

	return list;
}

/**
 * battle skill list
 */
static void modify_battle_skill_list(void)
{
	bool nihil_a = SkillTester(&gBattleUnitA.unit, SID_Nihil);
	bool nihil_b = SkillTester(&gBattleUnitB.unit, SID_Nihil);

	if (nihil_a)
		BattleSkillListB->amt = 0;

	if (nihil_b)
		BattleSkillListA->amt = 0;
}

static void setup_battle_skill_list(void)
{
	u32 i;
	struct BattleUnit *bu;
	struct SkillList *list;

	setup_skill_list(BattleSkillListA,  &gBattleUnitA.unit);
	setup_skill_list(BattleSkillListB, &gBattleUnitB.unit);

	/* nihil, etc */
	modify_battle_skill_list();

	/* actor */
	bu = &gBattleUnitA;
	list = BattleSkillListA;

	memset(bu->skills_bitfile, 0, sizeof(bu->skills_bitfile));
	for (i = 0; i < list->amt; i++)
		set_bit(bu->skills_bitfile, list->sid[i]);

	/* target */
	bu = &gBattleUnitB;
	list = BattleSkillListB;

	memset(bu->skills_bitfile, 0, sizeof(bu->skills_bitfile));
	for (i = 0; i < list->amt; i++)
		set_bit(bu->skills_bitfile, list->sid[i]);
}

void UnitToBattle_SetupSkillList(const struct BattleUnit *bu)
{
	/**
	 * Here we hold 3 assumption:
	 *
	 * 1. UnitToBattle routine stands at the very beginning of battle-generate
	 * 2. Battle target initialization is behind actor.
	 * 3. No skill activcated before during function: InitBattleUnit()
	 */
	if (bu == &gBattleUnitB)
		setup_battle_skill_list();
}

bool PostAction_ResetSkillList(ProcPtr proc)
{
	memset(sSkillLists, 0, sizeof(sSkillLists));
	memset(gBattleUnitA.skills_bitfile, 0, sizeof(gBattleUnitA.skills_bitfile));
	memset(gBattleUnitB.skills_bitfile, 0, sizeof(gBattleUnitB.skills_bitfile));
	return false;
}

/* runtime API */
void AppendSkillListInBattle(struct BattleUnit *bu, int sid)
{
	struct SkillList *list;

	if (BattleSkillTester(bu, sid))
		return;

	list = GetSkillList(&bu->unit);
	list->sid[list->amt++] = sid;

	set_bit(bu->skills_bitfile, sid);
}
