#pragma once
#include "Vector3.h"

class CBullet
{
public:
	CBullet(void);
	virtual ~CBullet(void);
	

protected:
	// Indicate the status of this bullet
	bool m_bStatus;
	// The position of the bullet
	Vector3 position;
	// The direction of the bullet
	Vector3 direction;
	//The speed of the bullet
	float speed;
	//The lifetime of the bullet
	float lifetime;

	int type;
public:
	// Initialize the CBullet info instance
	void Init(const Vector3 position, const Vector3 direction, const float speed, const float lifetime,int type);
	// Set the status of this CBullet instance
	void SetStatus(const bool bStatus);
	// Get status of this CBulletInfo instance
	bool GetStatus(void);

	int GetType(void);

	// Set the Position of this CBullet instance
	void SetPosition(const Vector3 position);
	// Get Position of this CBulletInfo instance
	Vector3 GetPosition(void);

	// Set the direction of this CBullet instance
	void SetDirection(const Vector3 direction);
	// Get status of this CBulletInfo instance
	Vector3 GetDirection(void);

	// Set the speed of this CBullet instance
	void SetSpeed(const float speed);
	// Get status of this CBulletInfo instance
	float GetSpeed(void);

	// Set the lifetime of this CBullet instance
	void SetLifetime(const float lifetime);
	// Get lifetime of this CBulletInfo instance
	float GetLifetime(void);

	// Update this CBullectInfo instance
	void Update(const double dt);
};

