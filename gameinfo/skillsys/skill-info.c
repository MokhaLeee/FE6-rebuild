#include "prelude.h"
#include "skill-sys.h"
#include "constants/skills.h"
#include "constants/msg.h"
#include "skillicons.h"

struct SkillInfo const gSkillInfo[0x400] = {
	[0] = {
		.icon = Gfx_SkillIcon_WIP
	},

	[SID_PowBonus] = {
		.msg_desc = MSG_SKILL_StrBonus,
		.icon = Gfx_SkillIcon_BonusPow,
	},

	[SID_MagBonus] = {
		.msg_desc = MSG_SKILL_MagBonus,
		.icon = Gfx_SkillIcon_BonusMag,
	},

	[SID_BlowArmored] = {
		.msg_desc = MSG_SKILL_BlowArmored,
		.icon = Gfx_SkillIcon_BlowArmored,
	},
};
