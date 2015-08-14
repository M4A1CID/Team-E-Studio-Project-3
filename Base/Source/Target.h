#pragma once

#include "Vector3.h"
using namespace std;
class Target
{
public:
	Target(void);
	virtual ~Target(void);

	//Init the target
	void Init(const Vector3 position, bool active);

	//Set the position
	void SetPosition(const Vector3 position);
	void SetActive(const bool active);

	bool GetActive(void);
	Vector3 GetPosition(void);

protected:
	Vector3 position;

	bool active;
};