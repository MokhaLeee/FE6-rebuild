#include "prelude.h"
#include "text.h"
#include "item.h"

#include "utf8.h"
#include "klib.h"
#include "debug.h"

extern char EWRAM_DATA sMsgString[];

/* 96 ---> 9 6 */
static void SplitNumberDec2(int in, u8 out[])
{
	out[0] = k_udiv10(in);
	out[1] = in - out[0] * 10;
}

static char *ItemRangeToString(int min, int max)
{
	int i, count = 0;
	u8 min_splited[2], max_splited[2];
	char str[5];

	if (max == 0) {
		sprintf(sMsgString, "%d-MAG", min);
		return sMsgString;
	}

	if (min > max || min < 0 || max < 0)
		return "--";

	SplitNumberDec2(min, min_splited);
	SplitNumberDec2(max, max_splited);
	for (i = 0; i < 2; i++)
		if (min_splited[i] != 0)
			break;

	for (; i < 2; i++)
		str[count++] = '0' + min_splited[i];

	if (max > min) {
		str[count++] = '-';

		for (i = 0; i < 2; i++)
			if (max_splited[i] != 0)
				break;

		for (; i < 2; i++)
			str[count++] = '0' + max_splited[i];
	}

	for (i = 0; i < 5; i++) {
		if ((i + count) < 5)
			sMsgString[i] = ' ';
		else
			sMsgString[i] = str[i + count - 5];
	}
	sMsgString[5] = '\0';
	return (char *)sMsgString;
}

const char *GetItemRangeString(int item)
{
	int min = GetItemMinRange(item, NULL);
	int max = GetItemMaxRange(item, NULL);

	if (GetItemEncodedRange(item) == 0xFF)
		return "All";

	return ItemRangeToString(min, max);
}
