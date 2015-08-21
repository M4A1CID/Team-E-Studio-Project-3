#pragma once

#include "Item.h"
class CKey : public CItem
{
public: 
	CKey(void);
	~CKey(void);
	char GetLevel();
	void SetLevel(char);

private:
	char level;
};

