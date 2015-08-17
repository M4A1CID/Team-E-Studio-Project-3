#pragma once

#include"Vector3.h"

class CItem
{
public:
	CItem(void);
	virtual~CItem(void);

	//Set the position of this item
	void setPosition(Vector3);
	void setPosition_X(float);
	void setPosition_Y(float);
	void setPosition_Z(float);

	//Get the position of this item
	Vector3 getPosition(void);
	
	// Set the scale of this item
	void setScale(Vector3);
	void setScale_X(float);
	void setScale_Y(float);
	void setScale_Z(float);
	// Get the scale of this item
	Vector3 getScale(void);

	// Set the active of this item
	void setActive(bool);
	// Get the active of this obj
	bool getActive(void);

	// Set the geoType of this item
	void setGeoType(int);
	// Get the geoType of this item
	int getGeoType(void);
private:
	Vector3 Pos;		// Item's position
	Vector3 Scale;		// Item's scale
	bool active;		// Item's active
	int geoType;		// Item's Geometric type
};