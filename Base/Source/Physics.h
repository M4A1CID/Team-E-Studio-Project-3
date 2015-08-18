#pragma once
#include "Vector3.h"
#include "Obj.h"
#include "Player.h"
#include "Obj.h"
#include "Camera3.h"

using namespace std;

class CPhysics
{
public:
	CPhysics(void);
	~CPhysics(void);

	// Get the gravity
	Vector3 getGravity(void); 
	// Set the gravity
	void setGravity(Vector3); 

	// Check collision
	bool checkCollisionBetweenOBJ(CPlayer*, CObj*);
	void collisionResponseBetweenOBJ(Camera3&,CPlayer*&, CObj*&, double);

private:
	Vector3 m_Gravity;
};