#pragma once
#include "Vector3.h"
#include "Vector2.h"
#include "Obj.h"
#include "Player.h"
#include "Obj.h"
#include "Camera3.h"
#include "LoadHmap.h"

using namespace std;

class CPhysics
{
public:
	CPhysics(void);
	~CPhysics(void);

	// Get the gravity
	Vector3 getGravity(void); 
	// Set the gravity
	void setGravity(Vector3); 

	// Check collision
	bool checkCollisionBetweenOBJ(CPlayer*, CObj*);
	void collisionResponseBetweenOBJ(Camera3&,CPlayer*&, CObj*&, double);

	// Check height of terrain
	const float GetHeightMapY(float x, float z, std::vector<unsigned char> &heightMap,const Vector3& terrainSize);

	// Set player height from terrain
	void setPlayerHeight(Camera3&,CPlayer*&, std::vector<unsigned char> &heightMap,const Vector3& terrainSize, bool m_bIgnoreHM = false );

	//Barymetric Terrain Collision
	float barryCentric(Vector3 p1, Vector3 p2, Vector3 p3, Vector2 pos);
	void getBarycentricCoordinatesAt(std::vector<unsigned char> &heightMap, Camera3& camera, CPlayer*& thePlayer );
private:
	Vector3 m_Gravity;
	float m_fOffset;
};