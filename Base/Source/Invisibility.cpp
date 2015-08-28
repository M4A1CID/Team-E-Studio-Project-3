#include "Invisibility.h"


CInvisibility::CInvisibility(void)
	: bInvisible(false)
	, dTimer(10)
{
}


CInvisibility::~CInvisibility(void)
{
}

void CInvisibility::setInvisible(bool bInvisible)
{
	this->bInvisible = bInvisible;
}
bool CInvisibility::getInvisible(void)
{
	return bInvisible;
}
void CInvisibility::setTimer(double dTimer)
{
	this->dTimer = dTimer;
}
double CInvisibility::getTimer(void)
{
	return dTimer;
}
void CInvisibility::UpdateInvisibility(double &dt)
{
	if(bInvisible)
	{
		dTimer -= dt;

		//reset to false and the time to original timing.
		if(dTimer < 0)
		{
			bInvisible = false;
			dTimer = 10;
		}
	}
}