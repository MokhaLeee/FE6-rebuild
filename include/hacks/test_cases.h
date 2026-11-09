#pragma once

#include "prelude.h"

#if CONFIG_TEST_MENU

enum TestCategoryId {
	TEST_CATEGORY_NONE,
	TEST_CATEGORY_GAME,
	TEST_CATEGORY_SAVE,
};

enum TestCaseId {
	TEST_CASE_NONE,
	TEST_CASE_GAME_CHAPTER_1,
	TEST_CASE_SAVE_WRITE_LOAD,
};

#endif /* CONFIG_TEST_MENU */
