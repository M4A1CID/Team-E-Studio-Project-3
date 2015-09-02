#pragma once
#include "Vector3.h"
#include "Vector2.h"
#include "Obj.h"
#include "Player.h"
#include "Camera3.h"
#include "LoadHmap.h"
#include "Light.h"
#include "Particle.h"
#include "Enemy.h"
#include "Peeing.h"
#include "Sound.h"
#include <iostream>
#include <sstream>

using namespace std;

class CPhysics
{

	const static int CAMERA_REPELL = 10;
	
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

	//bool checkCollisionBetweenKey(CPlayer*, CKey*);

	bool checkCollisionBetweenLaser(CPlayer*, CLaser*);
	void collisionResponseBetweenLaser(Camera3&, CPlayer*&, CLaser*&, double);


	// Check height of terrain
	const float GetHeightMapY(float x, float z, std::vector<unsigned char> &heightMap,const Vector3& terrainSize);

	// Set player height from terrain
	void setPlayerHeight(Camera3&,CPlayer*&, std::vector<unsigned char> &heightMap,const Vector3& terrainSize, bool m_bIgnoreHM = false );

	//Barymetric Terrain Collision
	float barryCentric(Vector3 & p1, Vector3 & p2, Vector3 & p3, Vector2 & pos);
	//void getBarycentricCoordinatesAt(std::vector<unsigned char> &heightMap, Camera3& camera, CPlayer*& thePlayer );

	// Dynamic Light based on time
	void UpdateSun(Light &, double & dt);

	// Weather
	void UpdateWeather(std::vector<CParticle*>, std::vector<unsigned char> &heightMap,const Vector3& terrainSize, double& dt, std::vector<CEnemy *> enemy);

	//Peeing
	void UpdatePeeing(std::vector<CParticle*>, std::vector<unsigned char> &heightMap, const Vector3& terrainSize, Camera3& camera, double& dt);

	// Set enable weather
	void SetEnableWeather(bool enableWeather);

	// Get enable weather
	bool GetEnableWeather();

	// Get the current world time
	float GetWorldTime(void);
	// Set the current world time
	void SetWorldTime(float);

	// Set wind direction
	void SetWindDirection(Vector3);
	// Get wind direction
	Vector3 GetWindDirection(void);

	string GetHourTime(void);
	string GetMinuteTime(void);

	float GetRainTimer(void);
	void SetRainTimer(float);
	float GetRainRate(void);

	void setCurrent(Vector3);

private:
	Vector3 m_Gravity;
	float m_fOffset;
	float m_fLaserDetectionRange;
	float m_In_World_Time;
	float m_time_interval;
	Vector3 diff;
	Vector3 current;

	// Weather
	bool m_bEnableWeather;
	Vector3 WindDirection;
	float WindTimer;
	Vector3 difference;
	float m_spawnRateTimer;
	float m_fRainTimer;
	float m_fRainRate;

	CSound soundEngine;
	float m_fSoundTimer;
};