#pragma once
#include "Vector3.h"
#include "Physics.h"

class CPeeingParticleInfo
{

private:
	bool status;
	
	Vector3 velocity;
	Vector3 direction;
	Vector3 scale;
	float gravity;
	float speed;
	float lifetime;

	//Handle to the physics engine
	CPhysics* PhysicsEngine;
	
public:
	Vector3 position;
	

	CPeeingParticleInfo(void);
	~CPeeingParticleInfo(void);

	void Init(bool status, Vector3 position, Vector3 direction, float speed, float lifetime, Vector3 scale);

	void Update(double& dt);

	void setStatus(bool status);
	bool getStatus(void);

	void setVelocity(Vector3 velocity);
	Vector3 getVelocity(void);

	Vector3 getPosition(void);
	Vector3 getDirection(void);
	float getSpeed(void);
	float getLifetime(void);
	Vector3 getScale(void);
};

