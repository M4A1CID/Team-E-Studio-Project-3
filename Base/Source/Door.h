#pragma once
#include "Obj.h"
#include "Key.h"
class CDoor : public CObj
{
public:
	CDoor(void);
	~CDoor(void);

	void SetLevel(char);
	void SetLocked(bool);

	char GetLevel();
	bool GetLocked();

	void Unlock();

private:
	char lockLevel;
	bool isLocked;
};