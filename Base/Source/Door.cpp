#include "Door.h"


CDoor::CDoor(void)
{
	isLocked = true;
	lockLevel = 0;
}


CDoor::~CDoor(void)
{
}

void CDoor::SetLevel(char)
{
	this->lockLevel = lockLevel;
}

void CDoor::SetLocked(bool)
{
	this->isLocked = isLocked;
}

char CDoor::GetLevel()
{
	return lockLevel;
}

bool CDoor::GetLocked()
{
	return isLocked;
}

void Unlock()
{
	/*if(Key.level == 1 && lockLevel == 1 ||
		Key.level == 2 && lockLevel == 2 ||
		Key.level == 3 && lockLevel == 3)
	{
		isLocked = false;
		Move the door open;
	}
	*/
}