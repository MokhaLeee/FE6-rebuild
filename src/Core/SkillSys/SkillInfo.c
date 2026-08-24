#include "prelude.h"
#include "unit.h"
#include "msg.h"

#include "utf8.h"
#include "skill-sys.h"

u16 GetSkillDescMsg(const u16 sid)
{
	return gpSkillInfo[sid].msg_desc;
}

u16 GetSkillNameMsg(const u16 sid)
{
	return gpSkillInfo[sid].msg_name;
}

char *GetSkillDescStr(const u16 sid)
{
	char *str = DecodeMsg(GetSkillDescMsg(sid));

	if (gpSysConfig->auto_narrow_font)
		str = Utf8ToNarrowFonts(str);

	return str;
}

static char *SkillDescToName(char *str)
{
	char *it;

	for (it = str; *it; ++it) {
		if (*it == ':') {
			*it = '\0';
			break;
		}
	}

	/**
	 * As we have changed the value in the buffer,
	 * the cached index should become invalid.
	 */
	sActiveMsg = -1;

	return str;
}

char *GetSkillNameStrFormDesc(const u16 sid)
{
	char *str;
	u16 msg = GetSkillDescMsg(sid);

	str = DecodeMsg(msg);
	return SkillDescToName(str);
}

char *GetSkillNameStr(const u16 sid)
{
	char *str;
	u16 msg = GetSkillNameMsg(sid);

	if (msg == 0)
		str = GetSkillNameStrFormDesc(sid);
	else
		str = DecodeMsg(msg);

	if (gpSysConfig->auto_narrow_font)
		str = Utf8ToNarrowFonts(str);

	return str;
}

char *GetMenuSkillNameStr(const u16 sid)
{
	char *str = GetSkillNameStr(sid);
	int i, len = strlen(str);

	for (i = len; i >= 0; i--)
		str[i + 1] = str[i];

	str[0] = ' ';

	/**
	 * As we have changed the value in the buffer,
	 * the cached index should become invalid.
	 */
	sActiveMsg = -1;

	return str;
}
