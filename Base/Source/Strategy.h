#pragma once
#include "Vector3.h"
class CStrategy
{
public:
	CStrategy(void);
	~CStrategy(void);
	virtual void Update()=0;
	virtual void SetDestination(const float x, const float y, const float z)=0;
	virtual void GetEnemyPosition(float& x, float& y, float& z)=0;
	virtual void SetEnemyPosition(const float x, const float y, const float z)=0;

	int CalculateDistance(void);

	// The Destination is the position of the target
	Vector3 theDestination;
	// The position of the enemy
	Vector3 theEnemyPosition;
};

