#include "Key.h"


CKey::CKey(void)
{
	level = '0';
}


CKey::~CKey(void)
{
}

void CKey::SetLevel(char level)
{
	this->level = level;
}

char CKey::GetLevel()
{
	return this->level;
}
