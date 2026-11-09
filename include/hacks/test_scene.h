#pragma once

#include "prelude.h"

#if CONFIG_TEST_MENU

enum {
	TEST_SCENE_SAVE_TURN = 7,
};

void test_scene_start_chapter(int chapter);
void test_scene_write_chapter_save(int save_id, int chapter);
void test_scene_load_chapter_save(int save_id);
void test_scene_restart_game_and_chapter(void);

#endif /* CONFIG_TEST_MENU */
