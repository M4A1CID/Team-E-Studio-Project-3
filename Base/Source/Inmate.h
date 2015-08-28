#pragma once
#include "Vector3.h"
#include "Map.h"
#include "Player.h"

class CInmate
{
	static const int ENEMY_MOVE_SPEED = 60;
public:
	CInmate(void);
	CInmate(Vector3 Pos, Vector3 Scale, int GeoType, bool Active);
	~CInmate(void);

	//Set the position of this Inmate
	void setPosition(Vector3);
	void setPosition(float,float,float);
	void setPosition_X(float);
	void setPosition_Y(float);
	void setPosition_Z(float);

	//Get the position of this Inmate
	Vector3 getPosition(void);
	
	// Set the scale of this Inmate
	void setScale(Vector3);
	void setScale(float,float,float);
	void setScale_X(float);
	void setScale_Y(float);
	void setScale_Z(float);
	// Get the scale of this Inmate
	Vector3 getScale(void);

	// Set the active of this Inmate
	void setActive(bool);
	// Get the active of this Enemy
	bool getActive(void);

	/***************************************
		Get/Set functions for Animations 
	****************************************/
	// Set geotype for Arm
	void setGeoArmType(int geoArmType);
	// Set geotype for Leg
	void setGeoLegType(int geoLegType);
	// Set geoType for Body
	void setGeoBodyType(int geoBodyType);
	// Set geoType for Head
	void setGeoHeadType(int geoHeadType);

	// Get geotype for Arm
	int getGeoArmType(void);
	// Get geotype for Leg
	int getGeoLegType(void);
	// Get geotype for Body
	int getGeoBodyType(void);
	// Get geotype for Head
	int getGeoHeadType(void);


	// Set the offset for Arms
	void setOffsetArm(Vector3 OffsetArm);
	// Set the offset for Legs
	void setOffsetLeg(Vector3 OffsetLeg);
	// Set the offset for Head
	void setOffsetHead(Vector3 OffsetHead);

	// Get the offset for Arms
	Vector3 getOffsetArm(void);
	// Get the offset for Legs
	Vector3 getOffsetLeg(void);
	// Get the offset for Head
	Vector3 getOffsetHead(void);

private:
	Vector3 Pos;			// Inmate's position
	Vector3 Scale;			// Inmate's scale
	bool active;			// Inmate's active

	/**************************
		GeoTypes values
	**************************/
	//int geoType;			// Inmate's Geometric type
	int geoArmType;			// Inmate's Arm type
	int geoLegType;			// Inmate's Leg type
	int geoBodyType;		// Inmate's Body type
	int geoHeadType;		// Inmate's Head type

	/**************************
		Offsets values
	**************************/
	Vector3 OffsetArm;
	Vector3 OffsetLeg;
	Vector3 OffsetHead;
};

