#pragma once

#include "prelude.h"
#include "unit.h"

#define MAX_SKILL_NUM 0x3FF
#define SKILL_IS_VALID(sid) (sid != 0)

struct SkillList {
	struct {
		const struct PInfo *pinfo;
		const struct JInfo *jinfo;
		i8 level, uid;
		u8 _pad_[2];
	} sign;

	u8 amt;
	u8 _pad_;
	u16 sid[31];
};

struct SkillList *GetSkillList(struct Unit *unit);
void UnitToBattle_SetupSkillList(const struct BattleUnit *bu);
void AppendSkillListInBattle(struct BattleUnit *bu, int sid);

struct SkillTable { u16 sid[2]; };
// extern struct SkillTable const gSkillPTable[0x100];
// extern struct SkillTable const gSkillJTable[0x100];
extern struct SkillTable const *const gpSkillPTable;
extern struct SkillTable const *const gpSkillJTable;

/* skill-testers */
bool JudgeSkillViaList(struct Unit *unit, int sid);
bool JudgeSkillFast(struct Unit *unit, int sid);
bool JudgeSkillInBattle(struct BattleUnit *bu, int sid);

#define SkillTester(unit, sid) \
	unlikely(JudgeSkillViaList(unit, sid))
#define SkillFastTester(unit, sid) \
	unlikely(JudgeSkillFast(unit, sid))
#define BattleSkillTester(bu, sid) \
	unlikely(JudgeSkillInBattle(bu, sid))
