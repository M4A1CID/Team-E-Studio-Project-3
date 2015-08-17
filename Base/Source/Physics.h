#pragma once
#include "Vector3.h"
#include "Obj.h"

class CPhysics
{
public:
	CPhysics(void);
	~CPhysics(void);

	// Get the gravity
	Vector3 getGravity(void); 
	// Set the gravity
	void setGravity(Vector3); 



private:
	Vector3 m_Gravity;
};