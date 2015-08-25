#pragma once

#include "Item.h"
class CGoggles : public CItem
{
public:
	CGoggles(void);
	~CGoggles(void);

	void SetActive(bool);
	bool GetActive(void);

	void SetTime(double);
	double GetTime(void);

	void SetCount(char);
	char GetCount(void);

	//5 seconds to see through the walls
	//cannot use more than 2 times
private:
	bool bActive;	//true when effect is active
	double dTime;	//the length of time elapsed after effect is active
	char cCount;	//the number of times it is used.
};

