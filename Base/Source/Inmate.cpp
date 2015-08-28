#include "Inmate.h"


CInmate::CInmate(void)
{
	setGeoArmType(23);
	setGeoLegType(24);
	setGeoBodyType(25);
	setGeoHeadType(26);

	setOffsetArm(Vector3(1.f,0.9f,-0.2f));
	setOffsetHead(Vector3(0.0f,1.6f,0.0f));
	setOffsetLeg(Vector3(0.4f,-1.2f,0.f));
}

CInmate::CInmate(Vector3 Pos, Vector3 Scale, int geoType, bool active)
{
	this->Pos = Pos;
	this->Scale = Scale;
	//this->geoType = geoType;
	this->active = active;
}

CInmate::~CInmate(void)
{
}

//Set the position of this Enemy
void CInmate::setPosition(Vector3 Pos)
{
	this->Pos = Pos;
}
void CInmate::setPosition(float x,float y,float z)
{
	this->Pos.x = x;
	this->Pos.y = y;
	this->Pos.z = z;
}
void CInmate::setPosition_X(float x)
{
	this->Pos.x = x;
}
void CInmate::setPosition_Y(float y)
{
	this->Pos.y = y;
}
void CInmate::setPosition_Z(float z)
{
	this->Pos.z = z;
}

//Get the position of this Enemy
Vector3 CInmate::getPosition(void)
{
	return this->Pos;
}

// Set the scale of this Enemy
void CInmate::setScale(Vector3 Scale)
{
	this->Scale = Scale;
}
void CInmate::setScale(float x,float y,float z)
{
	this->Scale.x = x;
	this->Scale.y = y;
	this->Scale.z = z;
}
void CInmate::setScale_X(float x)
{
	this->Scale = x;

}
void CInmate::setScale_Y(float y)
{
	this->Scale.y = y;
}
void CInmate::setScale_Z(float z)
{
	this->Scale.z = z;
}
// Get the scale of this Enemy
Vector3 CInmate::getScale(void)
{
	return this->Scale;
}

// Set the active of this Enemy
void CInmate::setActive(bool active)
{
	this->active = active;
}
// Get the active of this Enemy
bool CInmate::getActive(void)
{
	return this->active;
}

/***************************************
	Get/Set functions for Animations 
****************************************/
// Set geotype for Arm
void CInmate::setGeoArmType(int geoArmType)
{
	this->geoArmType = geoArmType;
}
// Set geotype for Leg
void CInmate::setGeoLegType(int geoLegType)
{
	this->geoLegType = geoLegType;
}
// Set geoType for Body
void CInmate::setGeoBodyType(int geoBodyType)
{
	this->geoBodyType = geoBodyType;
}
// Set geoType for Head
void CInmate::setGeoHeadType(int geoHeadType)
{
	this->geoHeadType = geoHeadType;
}

// Get geotype for Arm
int CInmate::getGeoArmType(void)
{
	return geoArmType;
}
// Get geotype for Leg
int CInmate::getGeoLegType(void)
{
	return geoLegType;
}
// Get geotype for Body
int CInmate::getGeoBodyType(void)
{
	return geoBodyType;
}
// Get geotype for Head
int CInmate::getGeoHeadType(void)
{
	return geoHeadType;
}


// Set the offset for Arms
void CInmate::setOffsetArm(Vector3 OffsetArm)
{
	this->OffsetArm = OffsetArm;
}
// Set the offset for Legs
void CInmate::setOffsetLeg(Vector3 OffsetLeg)
{
	this->OffsetLeg = OffsetLeg;
}
// Set the offset for Head
void CInmate::setOffsetHead(Vector3 OffsetHead)
{
	this->OffsetHead = OffsetHead;
}

// Get the offset for Arms
Vector3 CInmate::getOffsetArm(void)
{
	return OffsetArm;
}
// Get the offset for Legs
Vector3 CInmate::getOffsetLeg(void)
{
	return OffsetLeg;
}
// Get the offset for Head
Vector3 CInmate::getOffsetHead(void)
{
	return OffsetHead;
}