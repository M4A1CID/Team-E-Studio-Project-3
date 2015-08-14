#include "Particle.h"

Particle::Particle(PARTICLE_TYPE typeValue)
	: type(typeValue),
	scale(1, 1, 1),
	active(false),
	m_LifeTime(0),
	mass(1.f),
	material()
{

}

Particle::~Particle()
{
}