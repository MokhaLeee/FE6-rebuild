#pragma once

#include "prelude.h"
#include "battle.h"

/*
 * result = ([atk + correction - def])
 *	  * (100% + increase%)
 *	  * (100% + crit_correction%)
 *	  / (100% + decrease%)
 *	  + real_damage
 *
 * increase and crit_correction are percentages (100 == x1.00).
 * decrease uses the 0x100 scale (0x100 == x1.00, DAMAGE_DECREASE(50) == 256).
 */
struct Dmg {
	bool8 crit_atk;
	int result;
	int correction, real_damage, increase, decrease, crit_correction;
};
extern struct Dmg gDmg;

/* Non-RN dependent part, computed once per battle and per direction. */
struct BaseDmg {
	int increase, decrease, real_damage;
};
extern struct BaseDmg gActorBaseDmg, gTargetBaseDmg;

static inline struct BaseDmg *GetBaseDmg(struct BattleUnit *bu)
{
	return IsBattleActor(bu) ? &gActorBaseDmg : &gTargetBaseDmg;
}

extern const u16 _DmgDecreaseRef[100];
#define DAMAGE_DECREASE(rate) (_DmgDecreaseRef[rate])

int GetMaxDamage(struct BattleUnit *attacker, struct BattleUnit *defender);
int CalcBattleRealDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender);
void PreBattleCalcInit_BaseDamage(struct BattleUnit *attacker,
				  struct BattleUnit *defender);
int BattleHit_CalcDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender);
int BattleCalcSimulateDamage(struct BattleUnit *attacker,
			     struct BattleUnit *defender);
