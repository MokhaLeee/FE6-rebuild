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

	[SID_BlowDarting] = {
		.msg_desc = MSG_SKILL_BlowDarting,
		.icon = Gfx_SkillIcon_BlowDarting,
	},

	[SID_BlowDeath] = {
		.msg_desc = MSG_SKILL_BlowDeath,
		.icon = Gfx_SkillIcon_BlowDeath,
	},

	[SID_BlowArmored] = {
		.msg_desc = MSG_SKILL_BlowArmored,
		.icon = Gfx_SkillIcon_BlowArmored,
	},

	[SID_BlowFiendish] = {
		.msg_desc = MSG_SKILL_BlowFiendish,
		.icon = Gfx_SkillIcon_BlowFiendish,
	},

	[SID_BlowWarding] = {
		.msg_desc = MSG_SKILL_BlowWarding,
		.icon = Gfx_SkillIcon_BlowWarding,
	},

	[SID_BlowDuelist] = {
		.msg_desc = MSG_SKILL_BlowDuelist,
		.icon = Gfx_SkillIcon_BlowDuelist,
	},

	[SID_BlowUncanny] = {
		.msg_desc = MSG_SKILL_BlowUncanny,
		.icon = Gfx_SkillIcon_BlowUncanny,
	},

	[SID_BlowKilling] = {
		.msg_desc = MSG_SKILL_BlowKilling,
		.icon = Gfx_SkillIcon_BlowKilling,
	},

	[SID_RangeBonusBow1] = {
		.msg_desc = MSG_SKILL_RangeBonusBow1,
		.icon = Gfx_SkillIcon_RangeBonusBow1,
	},

	[SID_RangeBonusBow2] = {
		.msg_desc = MSG_SKILL_RangeBonusBow2,
		.icon = Gfx_SkillIcon_RangeBonusBow2,
	},
};
