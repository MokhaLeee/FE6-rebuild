#pragma once

#include "prelude.h"
#include "chapterinfo.h"

#if CONFIG_TEST_MENU

extern struct ChapterEventInfo const ChapterEventInfo_TestBattle;

void test_chapter_set_event(struct ChapterEventInfo const *event);
void test_chapter_clear_event(void);

#endif /* CONFIG_TEST_MENU */
