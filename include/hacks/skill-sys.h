#pragma once

#include "prelude.h"
#include "unit.h"

#define MAX_SKILL_NUM 0x400
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
bool PostAction_ResetSkillList(ProcPtr proc);

/* skill table */
struct SkillTable { u16 sid[2]; };
extern struct SkillTable const *const gpSkillPTable;
extern struct SkillTable const *const gpSkillJTable;

/* skill eff */
struct SkillExtraInfo {
	i8 priv[4];
};
extern struct SkillExtraInfo const *const gpSkillExtraInfo;
#define SKILL_EFF0(sid) (gpSkillExtraInfo[sid].priv[0])
#define SKILL_EFF1(sid) (gpSkillExtraInfo[sid].priv[1])
#define SKILL_EFF2(sid) (gpSkillExtraInfo[sid].priv[2])
#define SKILL_EFF3(sid) (gpSkillExtraInfo[sid].priv[3])

/* skill-testers */
bool JudgeSkillViaList(struct Unit *unit, int sid);
bool JudgeSkillFast(struct Unit *unit, int sid);
bool JudgeSkillInBattle(struct BattleUnit *bu, int sid);

// Always able to use, generate skill-list when check on new unit
#define SkillTester(unit, sid)     unlikely(JudgeSkillViaList(unit, sid))
// Quite but can only check on plist/jlist/dynamic-skills
#define SkillFastTester(unit, sid) unlikely(JudgeSkillFast(unit, sid))
// Only able in battle-calc
#define BattleSkillTester(bu, sid) unlikely(JudgeSkillInBattle(bu, sid))
