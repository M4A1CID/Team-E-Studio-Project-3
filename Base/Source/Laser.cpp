#include "Laser.h"


CLaser::CLaser(void)
{
	pos = getPosition();
	scale = getScale();
}


CLaser::~CLaser(void)
{
}

/*
 *
 *	Set functions
 *
 */

// Position
void CLaser::setPosition(Vector3 pos)
{
	this->pos = pos;
}

// Position_X
void CLaser::setPosition_X(float x)
{
	this->pos.x = x;
}

// Position_Y
void CLaser::setPosition_Y(float y)
{
	this->pos.y = y;
}

// Position_Z
void CLaser::setPosition_Z(float z)
{
	this->pos.z = z;
}

// Scale
void CLaser::setScale(Vector3 scale)
{
	this->scale = scale;
}

// Scale_X
void CLaser::setScale_X(float x)
{
	this->scale.x = x;
}

// Scale_Y
void CLaser::setScale_Y(float y)
{
	this->scale.y = y;
}

// Scale_Z
void CLaser::setScale_Z(float z)
{
	this->scale.z = z;
}

/*
 *
 *	Get functions
 *
 */

// Position
Vector3 CLaser::getPosition(void)
{
	return pos;
}

// Position_X
float CLaser::getPosition_X(void)
{
	return pos.x;
}

// Position_Y
float CLaser::getPosition_Y(void)
{
	return pos.y;
}

// Position_Z
float CLaser::getPosition_Z(void)
{
	return pos.z;
}

// Scale
Vector3 CLaser::getScale(void)
{
	return scale;
}

// Scale_X
float CLaser::getScale_X(void)
{
	return scale.x;
}

// Scale_Y
float CLaser::getScale_Y(void)
{
	return scale.y;
}

// Scale_Z
float CLaser::getScale_Z(void)
{
	return scale.z;
}