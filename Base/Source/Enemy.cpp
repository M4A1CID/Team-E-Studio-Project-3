#include "Enemy.h"

CEnemy::CEnemy(void) :
	theStrategy(NULL)
{

}
CEnemy::CEnemy(Vector3 Pos, Vector3 Scale, int geoType, bool active)
{
	this->Pos = Pos;
	this->Scale = Scale;
	this->geoType = geoType;
	this->active = active;
	theStrategy = NULL;
	this->DirectionFacing = Vector3(1,0,0); // Facing along the X axis
}

CEnemy::~CEnemy(void)
{
	if (theStrategy != NULL)
	{
		delete theStrategy;
		theStrategy = NULL;
	}
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

// Set the geoType of this Enemy
void CEnemy::setGeoType(int geoType)
{
	this->geoType = geoType;
}
// Get the geoType of this Enemy
int CEnemy::getGeoType(void)
{
	return this->geoType;
}

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