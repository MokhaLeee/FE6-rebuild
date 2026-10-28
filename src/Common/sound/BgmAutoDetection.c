#include "prelude.h"
#include "bm.h"
#include "faction.h"
#include "m4a.h"
#include "banim.h"
#include "chapterinfo.h"
#include "constants/songs.h"
#include "constants/pids.h"
#include "constants/jids.h"

/**
 * if no BGM is detected, then we not change BGM
 */
static bool song_valid(int song_id)
{
	const struct SongEnt *song_desc;

	if (song_id < 0)
		return false;

	song_desc = &gpSongTable[song_id];
	if (song_desc->song == NULL || song_desc->song == &dummy_song)
		return false;

	return true;
}

int GetActiveMapSong(void)
{
	int song_id;

	switch (gPlaySt.faction) {
	case FACTION_RED:
		song_id = GetChapterInfo(gPlaySt.chapter)->song_red_bgm;
		break;

	case FACTION_GREEN:
		song_id = GetChapterInfo(gPlaySt.chapter)->song_green_bgm;
		break;

	case FACTION_BLUE:
		if (CountFactionUnitsWithoutFlags(FACTION_RED, UNIT_FLAG_DEAD | UNIT_FLAG_NOT_DEPLOYED) <= GetChapterInfo(gPlaySt.chapter)->victory_bgm_enemy_threshold)
			song_id = SONG_13;
		else
			song_id = GetChapterInfo(gPlaySt.chapter)->song_blue_bgm;

		break;

	default:
		song_id = GetChapterInfo(gPlaySt.chapter)->song_blue_bgm;
		break;
	}

	if (!song_valid(song_id))
		return -1;

	return song_id;
}

void StartMapSongBgm(void)
{
	int song_id = GetActiveMapSong();

	if (song_id != -1)
		StartBgm(song_id, NULL);
}

/* bmfx */
void PhaseIntroText_Init(struct Proc * proc)
{
	int song_id = GetActiveMapSong();

	if (song_id != -1 && GetCurrentBgmSong() != song_id)
		FadeBgmOut(4);

	PlaySe(SONG_73);
	proc->unk4C = 15;
}

/**
 * battle BGM auto detection
 */
void EkrPlayMainBGM(void)
{
	int ret, songid, staff_type;
	struct BattleUnit **pbul, **pbur;
	struct Unit *unitl, *unitr;

	pbul = &gpEkrBattleUnitLeft;
	pbur = &gpEkrBattleUnitRight;

	unitl = &(*pbul)->unit;
	unitr = &(*pbur)->unit;

	if (gBmSt.flags & BM_FLAG_5) {
		gEkrMainBgmPlaying = 0;
		return;
	}

	gEkrMainBgmPlaying = 1;

	songid = gBanimFactionPal[gEkrInitialHitSide] != 1 ? SONG_48 : SONG_49;

	if (GetBattleAnimArenaFlag() == 1) {
		songid = SONG_3A;
		goto goto_ret;
	}

	if (gEkrDistanceType == EKR_DISTANCE_PROMOTION) {
		songid = SONG_1C;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_PID(unitl) == PID_IDUNN)
		ret = true;
	if (UNIT_PID(unitl) == PID_IDUNN_DRAGON)
		ret = true;
	if (ret == true) {
		songid = SONG_19;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_PID(unitl) == PID_MURDOCK)
		ret = true;
	if (UNIT_PID(unitr) == PID_MURDOCK)
		ret = true;
	if (UNIT_PID(unitl) == PID_BRUNNYA)
		ret = true;
	if (UNIT_PID(unitr) == PID_BRUNNYA)
		ret = true;
	if (UNIT_PID(unitl) == PID_NARCIAN)
		ret = true;
	if (UNIT_PID(unitr) == PID_NARCIAN)
		ret = true;
	if (ret == true) {
		songid = SONG_17;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_PID(unitl) == PID_ZEPHIEL)
		ret = true;
	if (UNIT_PID(unitr) == PID_ZEPHIEL)
		ret = true;
	if (ret == true) {
		songid = SONG_18;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_PID(unitl) == PID_JAHN)
		ret = true;
	if (ret == true) {
		songid = SONG_15;
		goto goto_ret;
	}

	ret = false;
	if ((UNIT_ATTRIBUTES(unitl) & UNIT_ATTR_BOSS) && (UNIT_FACTION(unitl) == FACTION_RED))
		ret = true;
	if (ret == true) {
		songid = SONG_16;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_JID(unitr) == JID_DANCER) {
		if (gBattleSt.flags & BATTLE_FLAG_REFRESH)
			ret = 2;
		else
			ret = 1;
	}
	if (ret == 1) {
		songid = SONG_40;
		goto goto_ret;
	}
	if (ret == 2) {
		songid = SONG_41;
		goto goto_ret;
	}

	ret = false;
	if (UNIT_JID(unitr) == JID_BARD)
		if (gBattleSt.flags & BATTLE_FLAG_REFRESH)
			ret = 1;
	if (ret == 1) {
		songid = SONG_14;
		goto goto_ret;
	}

	if (EfxCheckRetaliation(POS_L) == true)
		staff_type = EfxCheckStaffType(gBattleUnitA.weapon_before);
	else if (EfxCheckRetaliation(POS_R) == true)
		staff_type = EfxCheckStaffType(gBattleUnitB.weapon_before);
	else
		staff_type = 0;


	switch (staff_type) {
	case EFX_STAFF_HEAL:
		songid = SONG_1B;
		break;

	case EFX_STAFF_OFFSENSIVE:
		songid = SONG_1A;
		break;

	default:
		break;
	}

	if (songid != -1)
		goto goto_ret;

	gEkrMainBgmPlaying = false;

goto_ret:
	if (song_valid(songid))
		EfxOverrideBgm(songid, 0x100);
}
