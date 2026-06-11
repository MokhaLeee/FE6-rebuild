#include "prelude.h"
#include "item.h"
#include "banim.h"
#include "banim_data.h"
#include "constants/pids.h"
#include "constants/jids.h"
#include "constants/banims.h"

const struct IndividualAnimConf gIndividualAnimConf[] = {
	{
		.pid = PID_LILINA,
		.jid = JID_MAGE_F,
		.anim_conf = (const struct BanimInfoEnt[]) {
			{ 0x0100 | ITEM_KIND_ANIMA, BANIM_DEMO_LilinaMageMagi },
			{ 0x0100 | ITEM_KIND_LIGHT, BANIM_DEMO_LilinaMageMagi },
			{ 0x0100 | ITEM_KIND_ELDER, BANIM_DEMO_LilinaMageMagi },
			{ 0 }
		}
	},
	{
		.pid = PID_LILINA,
		.jid = JID_SAGE_F,
		.anim_conf = (const struct BanimInfoEnt[]) {
			{ 0x0100 | ITEM_KIND_ANIMA, BANIM_DEMO_LilinaSageMagi },
			{ 0x0100 | ITEM_KIND_LIGHT, BANIM_DEMO_LilinaSageMagi },
			{ 0x0100 | ITEM_KIND_ELDER, BANIM_DEMO_LilinaSageMagi },
			{ 0x0100 | ITEM_KIND_STAFF, BANIM_DEMO_LilinaMageStaff },
			{ 0 }
		}
	},
};
