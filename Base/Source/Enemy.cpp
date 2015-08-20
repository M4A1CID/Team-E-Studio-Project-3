#include "Enemy.h"

CEnemy::CEnemy(void) :
	theStrategy(NULL)
{

}
CEnemy::CEnemy(Vector3 Pos, Vector3 Scale, int geoType, bool active)
{
	this->Pos = Pos;
	this->Scale = Scale;
	this->geoType = geoType;
	this->active = active;
	theStrategy = NULL;
}

CEnemy::~CEnemy(void)
{
	if (theStrategy != NULL)
	{
		delete theStrategy;
		theStrategy = NULL;
	}
}

//Set the position of this Enemy
void CEnemy::setPosition(Vector3 Pos)
{
	this->Pos = Pos;
}
void CEnemy::setPosition(float x,float y,float z)
{
	this->Pos.x = x;
	this->Pos.y = y;
	this->Pos.z = z;
}
void CEnemy::setPosition_X(float x)
{
	this->Pos.x = x;
}
void CEnemy::setPosition_Y(float y)
{
	this->Pos.y = y;
}
void CEnemy::setPosition_Z(float z)
{
	this->Pos.z = z;
}

//Get the position of this Enemy
Vector3 CEnemy::getPosition(void)
{
	return this->Pos;
}

// Set the scale of this Enemy
void CEnemy::setScale(Vector3 Scale)
{
	this->Scale = Scale;
}
void CEnemy::setScale(float x,float y,float z)
{
	this->Scale.x = x;
	this->Scale.y = y;
	this->Scale.z = z;
}
void CEnemy::setScale_X(float x)
{
	this->Scale = x;

}
void CEnemy::setScale_Y(float y)
{
	this->Scale.y = y;
}
void CEnemy::setScale_Z(float z)
{
	this->Scale.z = z;
}
// Get the scale of this Enemy
Vector3 CEnemy::getScale(void)
{
	return this->Scale;
}

// Set the active of this Enemy
void CEnemy::setActive(bool active)
{
	this->active = active;
}
// Get the active of this Enemy
bool CEnemy::getActive(void)
{
	return this->active;
}

// Set the geoType of this Enemy
void CEnemy::setGeoType(int geoType)
{
	this->geoType = geoType;
}
// Get the geoType of this Enemy
int CEnemy::getGeoType(void)
{
	return this->geoType;
}

// Set the destination of this Enemy
void CEnemy::setDestination(Vector3 destination)
{
	this->destination = destination;
}
void CEnemy::setDestination(float x,float y,float z)
{
	this->destination.x = x;
	this->destination.y = y;
	this->destination.z = z;

}
void CEnemy::setDestination_X(float x)
{
	this->destination.x = x;
}
void CEnemy::setDestination_Y(float y)
{
	this->destination.y = y;
}
void CEnemy::setDestination_Z(float z)
{
	this->destination.z = z;
}

// Get the destination of this Enemy
Vector3 CEnemy::getDestination(void)
{
	return this->destination;
}

/*======== Animations =========*/
// Walking
void CEnemy::Walking()
{

}

// Idle
void CEnemy::Idle()
{

}
void CEnemy::Update()
{
	//Update the enemy

}