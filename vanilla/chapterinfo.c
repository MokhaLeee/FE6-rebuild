#include "chapterinfo.h"

#include "hardware.h"
#include "msg.h"
#include "save_xmap.h"
#include "gbasram.h"

struct ChapterInfo const * GetChapterInfo(int chapter)
{
	if (chapter < 0)
		return NULL;

	return gpChapterInfoTable + chapter;
}

u8 const * GetChapterMap(int chapter)
{
	if (chapter >= 0)
		return gpChapterAssets[GetChapterInfo(chapter)->asset_map];

	return NULL;
}

struct MapChangeInfo const * GetChapterMapChanges(int chapter)
{
	if (chapter >= 0)
		return gpChapterAssets[GetChapterInfo(chapter)->asset_map_changes];

	return NULL;
}

struct ChapterEventInfo const * GetChapterEventInfo(int chapter)
{
	if (chapter >= 0)
		return gpChapterAssets[GetChapterInfo(chapter)->asset_event_info];

	return NULL;
}

char const * GetChapterUnk_0802BBD0(int chapter)
{
	if (chapter >= 0)
		return DecodeMsg(GetChapterInfo(chapter)->msg_chapter_title);

	return NULL;
}
