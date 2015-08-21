#pragma once
#include "Vector3.h"
#include "Mesh.h"

class CObj
{
public:
	CObj(void);
	virtual ~CObj(void);

	//Set the position of this obj
	void setPosition(Vector3);
	void setPosition_X(float);
	void setPosition_Y(float);
	void setPosition_Z(float);

	//Get the position of this obj
	Vector3 getPosition(void);

	// Set the rotation of this obj
	void setRotation(float, Vector3);
	void setAngle(float);
	void setRotation_X(float);
	void setRotation_Y(float);
	void setRotation_Z(float);

	// Get the rotation of this obj
	float getRotationAngle(void);
	Vector3 getRotation(void);

	// Set the scale of this obj
	void setScale(Vector3);
	void setScale_X(float);
	void setScale_Y(float);
	void setScale_Z(float);
	// Get the scale of this obj
	Vector3 getScale(void);

	// Set the offset of this obj
	void setOffset(Vector3);
	void setOffset_X(float);
	void setOffset_Y(float);
	void setOffset_Z(float);

	// Get the offset of this obj
	Vector3 getOffset(void);

	// Set the active of this obj
	void setActive(bool);
	// Get the active of this obj
	bool getActive(void);

	// Set the geoType of this obj
	void setGeoType(int);
	// Get the geoType of this obj
	int getGeoType(void);
private:
	Vector3 Pos;		// Obj's position
	float Angle;		// Obj's angle
	Vector3 Rotate;		// Obj's rotation
	Vector3 Scale;		// Obj's scale
	Vector3 offset;
	bool active;		// Obj's active
	int geoType;		// Obj's Geometric type
};

