#include "prelude.h"
#include "unit.h"

#include "constants/jids.h"

#include "demo-promotion.h"

/**
 * Branch promotion table.
 *
 * Each entry maps a base class to the list of classes it can promote into.
 * The promotion item only decides whether the item can be used at all
 * (see CanUnitUsePromotionItem); the actual choices live here.
 */
struct PromoChoiceDef {
	u8 base_jid;
	u8 jids[PROMO_CHOICE_MAX];
};

static const struct PromoChoiceDef sPromoChoiceDefs[] = {
	{ JID_MAGE,   { JID_SAGE, JID_BISHOP, JID_DRUID, JID_VALKYRIE, JID_NONE, JID_NONE } },
	{ JID_MAGE_F, { JID_SAGE_F, JID_BISHOP_F, JID_DRUID_F, JID_VALKYRIE, JID_NONE, JID_NONE } },

	{ JID_NONE }
};

int GetPromoChoices(struct Unit *unit, int item, u8 *out, int max)
{
	int i, j;
	int count = 0;
	u8 base_jid;

	(void)item;

	if (unit == NULL || unit->jinfo == NULL || out == NULL || max <= 0)
		return 0;

	base_jid = unit->jinfo->id;

	for (i = 0; sPromoChoiceDefs[i].base_jid != JID_NONE; i++) {
		if (sPromoChoiceDefs[i].base_jid != base_jid)
			continue;

		for (j = 0; j < PROMO_CHOICE_MAX && count < max; j++) {
			u8 jid = sPromoChoiceDefs[i].jids[j];

			if (jid == JID_NONE)
				break;

			if (jid == base_jid)
				continue;

			out[count++] = jid;
		}

		break;
	}

	/* No table entry: fall back to the vanilla single promotion target. */
	if (count == 0) {
		u8 jid = unit->jinfo->jid_promote;

		if (jid != JID_NONE && jid != base_jid && count < max)
			out[count++] = jid;
	}

	return count;
}
