#pragma once
#include "Strategy.h"
#include "Vector3.h"
class CStrategy_Idle : public CStrategy
{
public:
	CStrategy_Idle();
	~CStrategy_Idle();

	void Update();

	void SetDestination(const float x, const float y, const float z);
	void GetEnemyPosition(float& x, float& y, float& z);
	void SetEnemyPosition(const float x, const float y, const float z);


private:

};