#include "Item.h"
#pragma once
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

