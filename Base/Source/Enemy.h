#pragma once
#include "Vector3.h"
#include "Strategy.h"

class CEnemy
{
public:
	CEnemy(void);
	CEnemy(Vector3 Pos, Vector3 Scale, int GeoType, bool Active);
	virtual ~CEnemy(void);

	//Set the position of this Enemy
	void setPosition(Vector3);
	void setPosition(float,float,float);
	void setPosition_X(float);
	void setPosition_Y(float);
	void setPosition_Z(float);

	//Get the position of this Enemy
	Vector3 getPosition(void);
	
	// Set the scale of this Enemy
	void setScale(Vector3);
	void setScale(float,float,float);
	void setScale_X(float);
	void setScale_Y(float);
	void setScale_Z(float);
	// Get the scale of this Enemy
	Vector3 getScale(void);

	// Set the active of this Enemy
	void setActive(bool);
	// Get the active of this Enemy
	bool getActive(void);

	// Set the geoType of this Enemy
	void setGeoType(int);
	// Get the geoType of this Enemy
	int getGeoType(void);

	// Set the destination of this Enemy
	void setDestination(Vector3);
	void setDestination(float,float,float);
	void setDestination_X(float);
	void setDestination_Y(float);
	void setDestination_Z(float);

	// Get the destination of this Enemy
	Vector3 getDestination(void);

	// Animations
	void Walking();
	void Idle();

	//Update the enemy
	void Update();


private:
	Vector3 Pos;			// Enemy's position
	Vector3 Scale;			// Enemy's scale
	Vector3 destination;	// Enemy's Destination
	bool active;			// Enemy's active
	int geoType;			// Enemy's Geometric type

	CStrategy* theStrategy;	// Enemy's strategy

};