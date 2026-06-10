#include "prelude.h"
#include "banim.h"
#include "item.h"
#include "unit.h"
#include "banim_data.h"

u16 GetBattleAnimationId(struct Unit *unit, const struct BanimInfoEnt *animdef, u16 item)
{
	int i, found;
	u16 itype;
	int ret = 0;
	const struct IndividualAnimConf *iaconf = gpIndividualAnimConf;

	/* unique anim */
	for (i = 0; iaconf[i].pid != 0 || iaconf[i].jid != 0; i++) {
		u8 pid = iaconf[i].pid;
		u8 jid = iaconf[i].jid;

		if (pid == UNIT_PID(unit) && jid == UNIT_JID(unit)) {
			animdef = iaconf[i].anim_conf;
			break;
		}
	}

	/* vanilla */
	if (animdef == NULL)
		return -1;

	if (GetItemKind(item) == ITEM_KIND_ITEM)
		return -1;

	itype = (item == 0) ? ITEM_KIND_ITEM : GetItemKind(item);

	for (i = 0, found = false; i < 2; i++) {
		const struct BanimInfoEnt *it;

		for (it = animdef; it->wtype != 0; it++) {
			/* round 0: skip wtype judgement */
			if (i == 0 && it->wtype >= 0x100)
				continue;

			/* round 1: skip specific weapon judgement */
			if (i == 1 && it->wtype < 0x100)
				continue;

			if (it->wtype == GetItemIid(item) || (it->wtype - 0x100) == itype) {
				ret = it->index;
				found = true;
				break;
			}
		}

		if (found == true)
			break;
	}

	return (ret - 1);
}
