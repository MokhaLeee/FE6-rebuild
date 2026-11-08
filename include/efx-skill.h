#pragma once

#include "prelude.h"
#include "banim_sprite.h"
#include "skill-sys.h"

/**
 * Compact FE6 version of the kernel's struct EfxAnimConf.  The 0x150-byte
 * FEB header in the kernel is not used by the runtime, so it is omitted.
 */
struct EfxAnimConf {
	const s16 *frames;
	u16 const *const *tsas;
	u16 const *const *imgs;
	u16 const *const *pals;
	u16 sfx;
};

extern struct EfxAnimConf const EfxSkillVanilla;
extern struct EfxAnimConf const *const gpEfxSkillAnims[MAX_SKILL_NUM + 1];

void NewEfxSkill(struct Anim *anim, int sid);
bool EfxSkillExists(void);

void NewEfxSkillBox(struct Anim *anim, u16 sid);
bool EfxSkillBoxExists(void);
