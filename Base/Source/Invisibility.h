#pragma once
#include "Item.h"
class CInvisibility :
	public CItem
{
public:
	CInvisibility(void);
	~CInvisibility(void);

	void setInvisible(bool bInvisible);
	bool getInvisible(void);

	void setTimer(double dTimer);
	double getTimer(void);
	
	void UpdateInvisibility(double &dt);
private:
	bool bInvisible;	//true when invisible
	double dTimer;		//countdown when invisible is active.
};

