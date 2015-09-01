#include "Enemy.h"

CEnemy::CEnemy(void)
{
	this->isAlerted = false;
	prev.SetZero();
	currentState = STATE_IDLE;
	VisibilityRange = ENEMY_VIEW_DISTANCE;
}
CEnemy::CEnemy(Vector3 Pos, Vector3 Scale, int geoType, bool active)
{
	this->Pos = Pos;
	this->Scale = Scale;
	//this->geoType = geoType;
	this->active = active;
	this->DirectionFacing = Vector3(1,0,0); // Facing along the X axis
	this->isAlerted = false;
	prev.SetZero();
	currentState = STATE_IDLE;
}

CEnemy::~CEnemy(void)
{
	
}

//Set the position of this Enemy
void CEnemy::setPosition(Vector3 Pos)
{
	this->Pos = Pos;
}
void CEnemy::setPosition(float x,float y,float z)
{
	this->Pos.x = x;
	this->Pos.y = y;
	this->Pos.z = z;
}
void CEnemy::setPosition_X(float x)
{
	this->Pos.x = x;
}
void CEnemy::setPosition_Y(float y)
{
	this->Pos.y = y;
}
void CEnemy::setPosition_Z(float z)
{
	this->Pos.z = z;
}

//Get the position of this Enemy
Vector3 CEnemy::getPosition(void)
{
	return this->Pos;
}

// Set the scale of this Enemy
void CEnemy::setScale(Vector3 Scale)
{
	this->Scale = Scale;
}
void CEnemy::setScale(float x,float y,float z)
{
	this->Scale.x = x;
	this->Scale.y = y;
	this->Scale.z = z;
}
void CEnemy::setScale_X(float x)
{
	this->Scale = x;

}
void CEnemy::setScale_Y(float y)
{
	this->Scale.y = y;
}
void CEnemy::setScale_Z(float z)
{
	this->Scale.z = z;
}
// Get the scale of this Enemy
Vector3 CEnemy::getScale(void)
{
	return this->Scale;
}

// Set the active of this Enemy
void CEnemy::setActive(bool active)
{
	this->active = active;
}
// Get the active of this Enemy
bool CEnemy::getActive(void)
{
	return this->active;
}

//// Set the geoType of this Enemy
//void CEnemy::setGeoType(int geoType)
//{
//	this->geoType = geoType;
//}
//// Get the geoType of this Enemy
//int CEnemy::getGeoType(void)
//{
//	return this->geoType;
//}

// Set the destination of this Enemy
void CEnemy::setDestination(Vector3 destination)
{
	this->destination = destination;
}
void CEnemy::setDestination(float x,float y,float z)
{
	this->destination.x = x;
	this->destination.y = y;
	this->destination.z = z;

}
void CEnemy::setDestination_X(float x)
{
	this->destination.x = x;
}
void CEnemy::setDestination_Y(float y)
{
	this->destination.y = y;
}
void CEnemy::setDestination_Z(float z)
{
	this->destination.z = z;
}

// Get the destination of this Enemy
Vector3 CEnemy::getDestination(void)
{
	return this->destination;
}
// Set the directional vector of this Enemy
void CEnemy::setDirectionalVector(Vector3 DirectionFacing)
{
	this->DirectionFacing = DirectionFacing;
}
// Get the directional vector of this Enemy
Vector3 CEnemy::getDirectionalVector(void)
{
	return this->DirectionFacing;
}

/*======== Animations =========*/
// Walking
void CEnemy::Walking()
{

}

// Idle
void CEnemy::Idle()
{

}
//A* Update
void CEnemy::Update(CMap* m_cMap,CPlayer* thePlayer,const int AI_PATH_OFFSET_X, const int AI_PATH_OFFSET_Z)
{
	//Update the enemy
	int checkAIPosition_X = this->getPosition().x/m_cMap->GetTileSize() + AI_PATH_OFFSET_X;
	int checkAIPosition_Z = this->getPosition().z/m_cMap->GetTileSize() + AI_PATH_OFFSET_Z;

	int checkPlayerPosition_X = thePlayer->GetPositionX()/m_cMap->GetTileSize() + AI_PATH_OFFSET_X;
	int checkPlayerPosition_Z = thePlayer->GetPositionZ()/m_cMap->GetTileSize() + AI_PATH_OFFSET_Z;

	// If facing towards Positive X axis
	if(this->getDirectionalVector().x == 1)
	{
		if( (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z == checkPlayerPosition_Z) 
			|| (checkAIPosition_X + 1 == checkPlayerPosition_X && checkAIPosition_Z  == checkPlayerPosition_Z))
		{
			cout << "Player is detected!" << endl;
		}
		else
		{
			//cout << "Player is not detected!" << endl;
		}
	}
	// If facing towards Negative X axis
	else if(this->getDirectionalVector().x == -1)
	{
		if( (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z == checkPlayerPosition_Z) 
			|| (checkAIPosition_X - 1 == checkPlayerPosition_X && checkAIPosition_Z  == checkPlayerPosition_Z))
		{
			cout << "Player is detected!" << endl;
		}
		else
		{
			//cout << "Player is not detected!" << endl;
		}
	}
	// If facing towards Positive Z axis
	if(this->getDirectionalVector().z == 1)
	{
		if( (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z == checkPlayerPosition_Z) 
			|| (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z +1  == checkPlayerPosition_Z))
		{
			cout << "Player is detected!" << endl;
		}
		else
		{
			//cout << "Player is not detected!" << endl;
		}
	}
	// If facing towards Negative Z axis
	if(this->getDirectionalVector().z == -1)
	{
		if( (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z == checkPlayerPosition_Z) 
			|| (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z -1  == checkPlayerPosition_Z))
		{
			cout << "Player is detected!" << endl;
		}
		else
		{
			//cout << "Player is not detected!" << endl;
		}
	}

	//if( (checkAIPosition_X == checkPlayerPosition_X && checkAIPosition_Z == checkPlayerPosition_Z)  // Checks AI standing box
	//	|| (checkAIPosition_X + enemy->getDirectionalVector().x == checkPlayerPosition_X &&  // Checks 1 infront of X axis
	//	((checkAIPosition_Z -1 == checkPlayerPosition_Z) || 	// Check -1 Z relative to the enemy view axis
	//	(checkAIPosition_Z +1 == checkPlayerPosition_Z))  ))	// Check +1 Z relative to the enemy view axis
	//{
	//	cout << "Player is detected!" << endl;
	//}
	//else
	//{
	//	cout << "Player is not detected!" << endl;
	//}
}
void CEnemy::checkWithinLineOfSight(CPlayer* thePlayer)
{
	Vector3 LeftView = RotateByDegree(-45); // 45 + 45 = 90 degree detection
	Vector3 RightView = RotateByDegree(45);
	Vector3 temp =  thePlayer->GetPosition() - Pos;

	
	

	if( temp.Length() < VisibilityRange && thePlayer->GetDetected()) // If player is close enough to the enemy
	{
		if(LeftView.Length() != 0)
		LeftView.Normalize();
		if(RightView.Length() != 0)
		RightView.Normalize();
		if(temp.Length() != 0)
		temp.Normalize();


		if(LeftView.Dot(temp) > 0 && RightView.Dot(temp) > 0)
		{
			cout << "Player detected!" << endl;
			currentState = STATE_CHASE;
		}
	}

	
}

Vector3 CEnemy::RotateByDegree(int degree)
{
	//z' = z*cos q - x*sin q
	//x' = z*sin q + x*cos q


	Vector3 temp;
	temp.x = this->DirectionFacing.z * sin(Math::DegreeToRadian((float)degree)) + this->DirectionFacing.x * cos(Math::DegreeToRadian((float)degree));
	temp.y = 0.f;
	temp.z = this->DirectionFacing.z * cos(Math::DegreeToRadian((float)degree)) - this->DirectionFacing.x * sin(Math::DegreeToRadian((float)degree));
	return temp;
}
//Waypoint update
void CEnemy::Update(const vector<Vector3> & waypoints, CPlayer* thePlayer, double & dt,CMap* m_cMap)
{
	switch(currentState)
	{
	case STATE_WANDER:
		{
			vector<Vector3> tempList;
			Vector3 test = destination-Pos;
			prev = destination; // Set this enemy's previous to current location

			if(test.Length() < 2) // If the AI reached it's destination
			{

				for(int i = 0; i < waypoints.size(); ++i) // Get a new possible destination
				{
					Vector3 temp = waypoints[i] - Pos;
					if(temp.Length() <= m_cMap->GetTileSize() * 1.5)
					{

						if(prev != waypoints[i]) // if new possible waypoint is not the same as the prev destination
							tempList.push_back(waypoints[i]); // Store the possible waypoints
					}
				}

				if(tempList.size() != 0)	// If there is at least one new possible location
				{

					int RNG = rand() % tempList.size();
					destination = tempList[RNG];//Set new random destination
				}
				else // If entered a deadzone with no other waypoints
				{
					destination = prev;
				}
			}// If test.Length() < 2
			if(Pos != destination) // If the AI isn't at it's destination
			{
				//Move it to it's destination
				DirectionFacing = destination - Pos;
				if(DirectionFacing.Length() != 0)
				DirectionFacing.Normalize();
				Pos += DirectionFacing *dt * ENEMY_MOVE_SPEED;
			}

		}
		break;
		

	case STATE_IDLE:
		{
			//destination = Vector3(destination.x,destination.y,destination.z);
			DirectionFacing = destination - Pos;
			if(DirectionFacing.Length() != 0)
			DirectionFacing.Normalize();
		}
		break;

	case STATE_CHASE:
		{
			prev = destination; // Set this enemy's previous to current location

			if( (thePlayer->GetPosition() - Pos).Length() < VisibilityRange)
			{
				destination = thePlayer->GetPosition();
				DirectionFacing = destination - Pos;
				if(DirectionFacing.Length() != 0)
				DirectionFacing.Normalize();
				Pos += DirectionFacing *dt * ENEMY_MOVE_SPEED;
			}
			else
			{
				vector<Vector3> tempList;
				if( (destination - Pos).Length() < 2)
				{
					for(int i = 0; i < waypoints.size(); ++i) // Get a new possible destination
					{
						Vector3 temp = waypoints[i] - Pos;
						if(temp.Length() <= 192)
						{

							if(prev != waypoints[i]) // if new possible waypoint is not the same as the prev destination
								tempList.push_back(waypoints[i]); // Store the possible waypoints
						}

					}
					if(tempList.size() != 0)	// If there is at least one new possible location
					{
						float distanceAway = (thePlayer->GetPosition() - Pos).Length();
						int choosen = 0;
						
						for(unsigned int i = 0; i < tempList.size(); ++i)
						{
							Vector3 diffinVector = (thePlayer->GetPosition() - Pos) - (tempList[i] - Pos); 
							if( diffinVector.Length() < distanceAway)
							{
								distanceAway = diffinVector.Length();
								choosen = i;
							}
						}
						destination = tempList[choosen];//Set new random destination
					}
					else // If entered a deadzone with no other waypoints
					{
						destination = prev;
					}

				}
				if(Pos != destination) // If the AI isn't at it's destination
			{
				//Move it to it's destination
				DirectionFacing = destination - Pos;
				if(DirectionFacing.Length() != 0)
				DirectionFacing.Normalize();
				Pos += DirectionFacing * dt * ENEMY_MOVE_SPEED;
			}

			}
		}
		break;
	}

	
	//checkWithinLineOfSight(thePlayer);
}
/***************************************
	Get/Set functions for Animations 
****************************************/
// Set geotype for Arm
void CEnemy::setGeoArmType(int geoArmType)
{
	this->geoArmType = geoArmType;
}
// Set geotype for Leg
void CEnemy::setGeoLegType(int geoLegType)
{
	this->geoLegType = geoLegType;
}
// Set geoType for Body
void CEnemy::setGeoBodyType(int geoBodyType)
{
	this->geoBodyType = geoBodyType;
}
// Set geoType for Head
void CEnemy::setGeoHeadType(int geoHeadType)
{
	this->geoHeadType = geoHeadType;
}

// Get geotype for Arm
int CEnemy::getGeoArmType(void)
{
	return geoArmType;
}
// Get geotype for Leg
int CEnemy::getGeoLegType(void)
{
	return geoLegType;
}
// Get geotype for Body
int CEnemy::getGeoBodyType(void)
{
	return geoBodyType;
}
// Get geotype for Head
int CEnemy::getGeoHeadType(void)
{
	return geoHeadType;
}


// Set the offset for Arms
void CEnemy::setOffsetArm(Vector3 OffsetArm)
{
	this->OffsetArm = OffsetArm;
}
// Set the offset for Legs
void CEnemy::setOffsetLeg(Vector3 OffsetLeg)
{
	this->OffsetLeg = OffsetLeg;
}
// Set the offset for Head
void CEnemy::setOffsetHead(Vector3 OffsetHead)
{
	this->OffsetHead = OffsetHead;
}

// Get the offset for Arms
Vector3 CEnemy::getOffsetArm(void)
{
	return OffsetArm;
}
// Get the offset for Legs
Vector3 CEnemy::getOffsetLeg(void)
{
	return OffsetLeg;
}
// Get the offset for Head
Vector3 CEnemy::getOffsetHead(void)
{
	return OffsetHead;
}

// Set rotation value for Left Arm
void CEnemy::setRotationLeftArm(float RotationLeftArm)
{
	this->RotationLeftArm = RotationLeftArm;
}
// Set rotation value for Right Arm
void CEnemy::setRotationRightArm(float RotationRightArm)
{
	this->RotationRightArm = RotationRightArm;
}

// Set rotation value for Left Leg
void CEnemy::setRotationLeftLeg(float RotationLeftLeg)
{
	this->RotationLeftLeg = RotationLeftLeg;
}
// Set rotation value for Right Leg
void CEnemy::setRotationRightLeg(float RotationRightLeg)
{
	this->RotationRightLeg = RotationRightLeg;
}

// Set rotation value for Body
void CEnemy::setRotationBody(float RotationBody)
{
	this->RotationBody = RotationBody;
}

// Set rotation value for Head
void CEnemy::setRotationHead(float RotationHead)
{
	this->RotationHead = RotationHead;
}

// Get rotation value for Left Arm
float CEnemy::getRotationLeftArm(void)
{
	return RotationLeftArm;
}
// Get rotation value for Right Arm
float CEnemy::getRotationRightArm(void)
{
	return RotationRightArm;
}
// Get rotation value for Left Leg
float CEnemy::getRotationLeftLeg(void)
{
	return RotationLeftLeg;
}
// Get rotation value for Right Leg
float CEnemy::getRotationRightLeg(void)
{
	return RotationRightLeg;
}
// Get rotation value for Body
float CEnemy::getRotationBody(void)
{
	return RotationBody;
}
// Get rotation value for Head
float CEnemy::getRotationHead(void)
{
	return RotationHead;
}

void CEnemy::setIsAlert(bool isAlerted)
{
	this->isAlerted = isAlerted;
}
bool CEnemy::getIsAlert(void)
{
	return isAlerted;
}
// Set current state
void CEnemy::setCurrentState(int currentState)
{
	this->currentState = currentState;
}
// Get current state
int CEnemy::getCurrentState(void)
{
	return currentState;
}
// Set rotate forward
void CEnemy::setRotateForward(bool rotateForward)
{
	this->rotateForward = rotateForward;
}
// Get current state
bool CEnemy::getRotateForward(void)
{
	return rotateForward;
}
// Set visibility range
void CEnemy::setVisibility(float visibility)
{
	this->VisibilityRange = visibility;
}
// Get visibility range
float CEnemy::getVisibility(void)
{
	return VisibilityRange;
}