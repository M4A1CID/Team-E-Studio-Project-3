#include "Item.h"

CItem::CItem(void)
{

}

CItem::~CItem(void)
{

}

//Set the position of this Item
void CItem::setPosition(Vector3 Pos)
{
	this->Pos = Pos;
}
void CItem::setPosition_X(float x)
{
	this->Pos.x = x;
}
void CItem::setPosition_Y(float y)
{
	this->Pos.y = y;
}
void CItem::setPosition_Z(float z)
{
	this->Pos.z = z;
}

//Get the position of this item
Vector3 CItem::getPosition(void)
{
	return this->Pos;
}

// Set the scale of this item
void CItem::setScale(Vector3 Scale)
{
	this->Scale = Scale;
}
void CItem::setScale_X(float x)
{
	this->Scale.x = x;
}
void CItem::setScale_Y(float y)
{
	this->Scale.y = y;
}
void CItem::setScale_Z(float z)
{
	this->Scale.z = z;
}
// Get the scale of this item
Vector3 CItem::getScale(void)
{
	return this->Scale;
}

// Set the active of this item
void CItem::setActive(bool active)
{
	this->active = active;
}
// Get the active of this item
bool CItem::getActive(void)
{
	return this->active;
}

// Set the geoType of this item
void CItem::setGeoType(int geoType)
{
	this->geoType = geoType;
}
// Get the geoType of this item
int CItem::getGeoType(void)
{
	return this->geoType;
}