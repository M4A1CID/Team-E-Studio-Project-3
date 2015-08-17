#include "Obj.h"


CObj::CObj(void)
{
	Pos.x = 0;
	Pos.y = 0;
	Pos.z = 0;
	active = false;
	geoType = -1;
}


CObj::~CObj(void)
{
}

//Set the position of this obj
void CObj::setPosition(Vector3 Pos)
{
	this->Pos = Pos;
}
void CObj::setPosition_X(float x)
{
	this->Pos.x = x;
}
void CObj::setPosition_Y(float y)
{
	this->Pos.y = y;
}
void CObj::setPosition_Z(float z)
{
	this->Pos.z = z;
}

//Get the position of this obj
Vector3 CObj::getPosition(void)
{
	return this->Pos;
}

// Set the scale of this obj
void CObj::setScale(Vector3 Scale)
{
	this->Scale = Scale;
}
void CObj::setScale_X(float x)
{
	this->Scale.x = x;
}
void CObj::setScale_Y(float y)
{
	this->Scale.y = y;
}
void CObj::setScale_Z(float z)
{
	this->Scale.z = z;
}
// Get the scale of this obj
Vector3 CObj::getScale(void)
{
	return this->Scale;
}

// Set the active of this obj
void CObj::setActive(bool active)
{
	this->active = active;
}
// Get the active of this obj
bool CObj::getActive(void)
{
	return this->active;
}

// Set the geoType of this obj
void CObj::setGeoType(int geoType)
{
	this->geoType = geoType;
}
// Get the geoType of this obj
int CObj::getGeoType(void)
{
	return this->geoType;
}