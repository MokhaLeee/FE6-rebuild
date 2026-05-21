#pragma once

#include "prelude.h"
#include "unit.h"

struct SkillTable {
	u16 sid[2];
};

// extern struct SkillTable const gSkillPTable[0x100];
// extern struct SkillTable const gSkillJTable[0x100];

extern struct SkillTable const *const gpSkillPTable;
extern struct SkillTable const *const gpSkillJTable;

/* skill-testers */
bool JudgeSkillFast(struct Unit *unit, int sid);

#define SkillTester(unit, sid) \
	unlikely(JudgeSkillFast(unit, sid))
