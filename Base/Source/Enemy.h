#pragma once
#include "Vector3.h"
#include "Strategy.h"
#include "Map.h"
#include "Player.h"

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
	//void setGeoType(int);
	// Get the geoType of this Enemy
	//int getGeoType(void);

	// Set the destination of this Enemy
	void setDestination(Vector3);
	void setDestination(float,float,float);
	void setDestination_X(float);
	void setDestination_Y(float);
	void setDestination_Z(float);

	// Get the destination of this Enemy
	Vector3 getDestination(void);

	// Set the directional vector of this Enemy
	void setDirectionalVector(Vector3);
	// Get the directional vector of this Enemy
	Vector3 getDirectionalVector(void);

	// Animations
	void Walking();
	void Idle();

	//Update the enemy
	void Update(CMap* m_cMap,CPlayer* thePlayer,const int AI_PATH_OFFSET_X, const int AI_PATH_OFFSET_Z);

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

	// Set rotation value for Left Arm
	void setRotationLeftArm(float RotationLeftArm);
	// Set rotation value for Right Arm
	void setRotationRightArm(float RotationRightArm);

	// Set rotation value for Left Leg
	void setRotationLeftLeg(float RotationLeftLeg);
	// Set rotation value for Right Leg
	void setRotationRightLeg(float RotationRightLeg);

	// Set rotation value for Body
	void setRotationBody(float RotationBody);

	// Set rotation value for Head
	void setRotationHead(float RotationHead);

	// Get rotation value for Left Arm
	float getRotationLeftArm(void);
	// Get rotation value for Right Arm
	float getRotationRightArm(void);
	// Get rotation value for Left Leg
	float getRotationLeftLeg(void);
	// Get rotation value for Right Leg
	float getRotationRightLeg(void);
	// Get rotation value for Body
	float getRotationBody(void);
	// Get rotation value for Head
	float getRotationHead(void);

private:
	Vector3 Pos;			// Enemy's position
	Vector3 Scale;			// Enemy's scale
	Vector3 DirectionFacing;// Enemy's look-at directional vector
	Vector3 destination;	// Enemy's Destination
	bool active;			// Enemy's active

	/**************************
		GeoTypes values
	**************************/
	//int geoType;			// Enemy's Geometric type
	int geoArmType;			// Enemy's Arm type
	int geoLegType;			// Enemy's Leg type
	int geoBodyType;		// Enemy's Body type
	int geoHeadType;		// Enemy's Head type

	/**************************
		Offsets values
	**************************/
	Vector3 OffsetArm;
	Vector3 OffsetLeg;
	Vector3 OffsetHead;

	/**************************
		Rotation values
	**************************/
	// Arm rotation values
	float RotationLeftArm;	// Rotation value for left arm
	float RotationRightArm;	// Rotation value for right arm

	// Leg rotation values
	float RotationLeftLeg;	// Rotation value for left leg
	float RotationRightLeg;	// Rotation value for right leg

	// Body rotation value
	float RotationBody;

	// Head Rotation value
	float RotationHead;


	CStrategy* theStrategy;	// Enemy's strategy

};