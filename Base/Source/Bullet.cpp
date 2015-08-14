#include "Bullet.h"


CBullet::CBullet(void) : m_bStatus(false), speed(0), lifetime(0), type(0)
{
}


CBullet::~CBullet(void)
{
}


// Initialize the CBullet info instance
void CBullet::Init(const Vector3 position, const Vector3 direction, const float speed, const float lifetime, int type)
{
	SetPosition(position);
	SetDirection(direction);
	SetSpeed(speed);
	SetLifetime(lifetime);
	SetStatus(true);
	this->type = type;
}


// Set the status of this CBullet instance
void CBullet::SetStatus(const bool bStatus)
{
	this->m_bStatus = bStatus;
}

int CBullet::GetType(void)
{
	return this->type;
}
// Get status of this CBulletInfo instance
bool CBullet::GetStatus(void)
{
	return this->m_bStatus;
}

// Set the Position of this CBullet instance
void CBullet::SetPosition(const Vector3 position)
{
	this->position = position;
}
// Get Position of this CBulletInfo instance
Vector3 CBullet::GetPosition(void)
{
	return this->position;
}

// Set the direction of this CBullet instance
void CBullet::SetDirection(const Vector3 direction)
{
	this->direction = direction;
}
// Get status of this CBulletInfo instance
Vector3 CBullet::GetDirection(void)
{
	return this->direction;
}


// Set the speed of this CBullet instance
void CBullet::SetSpeed(const float speed)
{
	this->speed = speed;
}
// Get status of this CBulletInfo instance
float CBullet::GetSpeed(void)
{
	return this->speed;
}


// Set the lifetime of this CBullet instance
void CBullet::SetLifetime(const float lifetime)
{
	this->lifetime = lifetime;
}
// Get lifetime of this CBulletInfo instance
float CBullet::GetLifetime(void)
{
	return this->lifetime;
}
// Update this CBullectInfo instance
void CBullet::Update(const double dt)
{
	//Check if the bullet is active
	if(GetStatus() == true )
	{
		if(GetType() == 0)
		{
			//Update the position of the bullet
			this->position.y += -9.8f * (float)dt;
			this->direction.y +=  0.2*- (float)dt;
		}
		if(GetType() == 1)
		{
			//this->position.y += -9.8f * dt;
		}
		SetPosition(GetPosition() + GetDirection() * GetSpeed() * dt);

		//Update the lifetime
		SetLifetime(GetLifetime() - (float)dt);

		//Check if lifetime is gone
		if(GetLifetime() < 0)
		{
			SetStatus(false);
		}
	}
}
