#include "Target.h"

Target::Target()
{
	this->position = Vector3(0,0,0);
	this->active = false;
}

Target::~Target()
{
	
}
void Target::Init(const Vector3 position, bool active)
{
	this->position = position;
	this->active = active;
}

void Target::SetPosition(const Vector3 position)
{
	this->position = position;
}

void Target::SetActive(const bool active)
{
	this->active = active;
}

bool Target::GetActive(void)
{
	return this->active;
}

Vector3 Target::GetPosition()
{
	return this->position;
}

