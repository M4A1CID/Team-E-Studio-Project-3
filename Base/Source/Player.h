#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"

class CPlayer
{
public:
	CPlayer(void);
	~CPlayer(void);

private:
	Vector3 pos;
	bool active;
};
#endif