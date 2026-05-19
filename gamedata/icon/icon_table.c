#include "prelude.h"
#include "unit.h"
#include "support.h"
#include "item.h"

extern const unsigned char GFX_AffinIcon_Light[];
extern const unsigned char GFX_AffinIcon_Dark[];
extern const unsigned char GFX_AffinIcon_Thunder[];
extern const unsigned char GFX_AffinIcon_Wind[];
extern const unsigned char GFX_AffinIcon_Anima[];
extern const unsigned char GFX_AffinIcon_Ice[];
extern const unsigned char GFX_AffinIcon_Fire[];

u8 const *const gAffinIcons[] = {
	[AFFINITY_1] = GFX_AffinIcon_Fire,
	[AFFINITY_2] = GFX_AffinIcon_Thunder,
	[AFFINITY_3] = GFX_AffinIcon_Wind,
	[AFFINITY_4] = GFX_AffinIcon_Ice,
	[AFFINITY_5] = GFX_AffinIcon_Dark,
	[AFFINITY_6] = GFX_AffinIcon_Light,
	[AFFINITY_7] = GFX_AffinIcon_Anima,
};

extern const unsigned char GFX_MountIcon_Mount[];
extern const unsigned char GFX_MountIcon_Wyvern[];
extern const unsigned char GFX_MountIcon_Pegasus[];

u8 const *const gMountIcons[] = {
	[1] = GFX_MountIcon_Mount,
	[2] = GFX_MountIcon_Wyvern,
	[3] = GFX_MountIcon_Pegasus,
};

extern const unsigned char GFX_WtypeIcon_Light[];
extern const unsigned char GFX_WtypeIcon_Dark[];
extern const unsigned char GFX_WtypeIcon_Anima[];
extern const unsigned char GFX_WtypeIcon_Bow[];
extern const unsigned char GFX_WtypeIcon_Lance[];
extern const unsigned char GFX_WtypeIcon_Staff[];
extern const unsigned char GFX_WtypeIcon_Sword[];
extern const unsigned char GFX_WtypeIcon_Axe[];

u8 const *const gWTypeIcons[] = {
	[ITEM_KIND_SWORD] = GFX_WtypeIcon_Sword,
	[ITEM_KIND_AXE] = GFX_WtypeIcon_Axe,
	[ITEM_KIND_LANCE] = GFX_WtypeIcon_Lance,
	[ITEM_KIND_BOW] = GFX_WtypeIcon_Bow,
	[ITEM_KIND_ANIMA] = GFX_WtypeIcon_Anima,
	[ITEM_KIND_LIGHT] = GFX_WtypeIcon_Light,
	[ITEM_KIND_ELDER] = GFX_WtypeIcon_Dark,
	[ITEM_KIND_STAFF] = GFX_WtypeIcon_Staff,
};
