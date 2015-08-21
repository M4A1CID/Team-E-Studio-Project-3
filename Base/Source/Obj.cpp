#include "Obj.h"


CObj::CObj(void)
{
	Pos.SetZero();
	Pos.SetZero();
	offset.SetZero();
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

// Set rotation of this obj
void CObj::setRotation(float Angle, Vector3 Rotate)
{
	this->Angle = Angle;
	this->Rotate = Rotate;
}

void CObj::setAngle(float Angle)
{
	this->Angle = Angle;
}

void CObj::setRotation_X(float x)
{
	this->Rotate.x = x;
}

void CObj::setRotation_Y(float y)
{
	this->Rotate.y = y;
}

void CObj::setRotation_Z(float z)
{
	this->Rotate.z = z;
}

// Get the roation of this obj
float CObj::getRotationAngle(void)
{
	return Angle;
}

Vector3 CObj::getRotation(void)
{
	return Rotate;
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
/// Set the offset of this obj
void CObj::setOffset(Vector3 offset)
{
	this->offset = offset;
}
void CObj::setOffset_X(float x)
{
	this->offset.x = x;
}
void CObj::setOffset_Y(float y)
{
	this->offset.y = y;
}
void CObj::setOffset_Z(float z)
{
	this->offset.z = z;
}

// Get the offset of this obj
Vector3 CObj::getOffset(void)
{
	return this->offset;
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