#pragma once
#include "Vector3.h"

class CEnemy
{
public:
	CEnemy(void);
	virtual ~CEnemy(void);


private:
	Vector3 pos;
	bool active;
};