#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "hardware.h"

#include "skill-sys.h"
#include "klib.h"
#include "constants/skills.h"

#define GENERIC_LIST_AMT 4
#define NEXT_SLIST(i) (((i) + 1) & 3)

static EWRAM_DATA struct SkillList sSkillLists[GENERIC_LIST_AMT + 2];
static EWRAM_DATA u8 next_slist;

#define GenericSkillList (&sSkillLists[0])
#define BattleSkillListA (&sSkillLists[GENERIC_LIST_AMT + 0])
#define BattleSkillListB (&sSkillLists[GENERIC_LIST_AMT + 1])

static bool check_sign(struct SkillList *list, const struct Unit *unit)
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

static void write_sign(struct SkillList *list, const struct Unit *unit)
{
	list->sign.pinfo = unit->pinfo;
	list->sign.jinfo = unit->jinfo;
	list->sign.level = unit->level;
	list->sign.uid   = unit->id;
}

static void setup_skill_list(struct SkillList *list, const struct Unit *unit)
{
	#define ADD_LIST(_sid) { \
		int _tmp_sid = _sid; \
		\
		if (SKILL_IS_VALID(_tmp_sid) && ref_buf[_tmp_sid] == 0) { \
			ref_buf[_tmp_sid] = 1; \
			list->sid[list->amt++] = _tmp_sid; \
			if (list->amt >= ARRAY_COUNT(list->sid)) \
				return; \
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

		/* dynamic */
		ADD_LIST(unit->skills[0]);
		ADD_LIST(unit->skills[1]);
		ADD_LIST(unit->skills[2]);
		ADD_LIST(unit->skills[3]);
	}
}

static struct SkillList *spawn_list_buffer(const struct Unit *unit)
{
	int i;
	struct SkillList *slist;
	i8 uid = unit->id;

	if (likely(uid == gBattleUnitA.unit.id)) {
		slist = BattleSkillListA;
		goto check_list;
	}

	if (likely(uid == gBattleUnitB.unit.id)) {
		slist = BattleSkillListB;
		goto check_list;
	}

	for (i = 0; i < GENERIC_LIST_AMT; i++) {
		slist = &GenericSkillList[i];

		if (unlikely(check_sign(slist, unit))) {
			next_slist = NEXT_SLIST(i);
			return slist;
		}
	}

	next_slist = NEXT_SLIST(next_slist);
	slist = &GenericSkillList[next_slist];

check_list:
	if (unlikely(!check_sign(slist, unit))) {
		write_sign(slist, unit);
		setup_skill_list(slist, unit);
	}
	return slist;
}

struct SkillList *GetSkillList(struct Unit *unit)
{
	return spawn_list_buffer(unit);
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
