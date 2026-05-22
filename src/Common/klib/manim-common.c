#include "prelude.h"
#include "bm.h"
#include "bm.h"
#include "mu.h"
#include "map.h"
#include "unitsprite.h"

#include "klib.h"

void MapAnim_CommonInit(void)
{
	EndAllMus();
	RenderMap();
	RefreshEntityMaps();
	RefreshUnitSprites();
}

void MapAnim_CommonEnd(void)
{
	// ResetMuAnims();
	InitBmBgLayers();
}
