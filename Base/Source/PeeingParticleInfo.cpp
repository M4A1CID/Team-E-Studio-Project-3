#include "PeeingParticleInfo.h"

CPeeingParticleInfo::CPeeingParticleInfo(void)
{
	status = false;

	position.SetZero();
	direction.SetZero();
	gravity = -9.8f;
	speed = 0.f;
	lifetime = 0.f;
	scale.SetZero();
}
CPeeingParticleInfo::~CPeeingParticleInfo(void)
{
}
void CPeeingParticleInfo::Init(bool status, Vector3 position, Vector3 direction, float speed, float lifetime, Vector3 scale)
{
	this->status = status;
	this->position = position;
	this->direction = direction;
	this->speed = speed;
	this->lifetime = lifetime;
	this->scale = scale;
}
void CPeeingParticleInfo::setVelocity(Vector3 velocity)
{
	this->velocity = velocity;
}
Vector3 CPeeingParticleInfo::getVelocity(void)
{
	return velocity;
}
void CPeeingParticleInfo::setStatus(bool status)
{
	this->status = status;
}
void CPeeingParticleInfo::Update(double& dt)
{
	velocity.y += gravity;
	//Update the position based on direction, speed and time
	position.y += direction.y * speed * velocity.y * dt;
	//position.y = gravity * dt;

	//velocity += PhysicsEngine->getGravity();

	//original scene, checks thru list if bullet active
	lifetime -= dt;
	if(lifetime < 0)
	{
		status = false;
	}

}
bool CPeeingParticleInfo::getStatus(void)
{
	return status;
}
Vector3 CPeeingParticleInfo::getPosition(void)
{
	return position;
}
Vector3 CPeeingParticleInfo::getDirection(void)
{
	return direction;
}
float CPeeingParticleInfo::getSpeed(void)
{
	return speed;
}
float CPeeingParticleInfo::getLifetime(void)
{
	return lifetime;
}
Vector3 CPeeingParticleInfo::getScale(void)
{
	return scale;
}