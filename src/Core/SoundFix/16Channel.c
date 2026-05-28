#include "prelude.h"
#include "sound.h"
#include "constants/songs.h"

/* 16_tracks_12_sounds_patch */

static void Sound_SetMaxNumChannels(int maxchn)
{
	sSoundSt.max_channels = maxchn;
	m4aSoundMode(maxchn << SOUND_MODE_MAXCHN_SHIFT);
}

static void SetBgmChannels(int song_id)
{
	/**
	 * todo song index
	 */
	if (song_id < SONG_IDX(0x4A))
		Sound_SetMaxNumChannels(12);
}

void PlaySongCore(int song, struct MusicPlayer *music_player)
{
	/* CHAX */
	SetBgmChannels(song);

	if (music_player)
		m4aMPlayStart(music_player, gpSongTable[song].song);
	else
		m4aSongNumStart(song);
}
