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

	if (UNIT_IS_VALID(unit) && unit->jinfo != NULL) {
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
	/*
	 * Match by address, not by unit id: ids can repeat (the empty target
	 * used by the stat screen, the promotion copies, ...), and an id match
	 * would let that unit overwrite the actor list.
	 */
	if (likely(unit == &gBattleUnitA.unit)) {
		slist = BattleSkillListA;
		goto check_list;
	}

	if (likely(unit == &gBattleUnitB.unit)) {
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

/*
 * Build the skill snapshot of a single BattleUnit. It depends on that unit
 * only and never touches the opponent, so contexts that own just one
 * character (stat screen, item user) can call it safely, and initializing A
 * never wastes work on a stale B.
 */
void SetupBattleUnitSkillList(struct BattleUnit *bu)
{
	struct SkillList *list;
	u32 i;

	if (bu == &gBattleUnitA) {
		list = BattleSkillListA;
	} else if (bu == &gBattleUnitB) {
		list = BattleSkillListB;
	} else {
		return;
	}

	setup_skill_list(list, &bu->unit);

	memset(bu->skills_bitfile, 0, sizeof(bu->skills_bitfile));
	for (i = 0; i < list->amt; i++)
		set_bit(bu->skills_bitfile, list->sid[i]);
}

/*
 * Build the skill snapshot for a whole battle. Callers must have finished
 * InitBattleUnit() for both A and B, and must call this before the first
 * skill query (e.g. SetBattleUnitWeapon()).
 *
 * Nihil needs the final state of both sides, so it can only be resolved at
 * this level; the per-unit snapshot does not include it.
 */
void SetupBattleSkillList(void)
{
	SetupBattleUnitSkillList(&gBattleUnitA);
	SetupBattleUnitSkillList(&gBattleUnitB);

	/* The opponent's Nihil disables every skill on this side. */
	if (SkillFastTester(&gBattleUnitB.unit, SID_Nihil)) {
		BattleSkillListA->amt = 0;
		memset(gBattleUnitA.skills_bitfile, 0,
		       sizeof(gBattleUnitA.skills_bitfile));
	}

	if (SkillFastTester(&gBattleUnitA.unit, SID_Nihil)) {
		BattleSkillListB->amt = 0;
		memset(gBattleUnitB.skills_bitfile, 0,
		       sizeof(gBattleUnitB.skills_bitfile));
	}
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
