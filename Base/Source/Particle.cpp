#include "Particle.h"

CParticle::CParticle(PARTICLE_TYPE typeValue)
	: type(typeValue)
	, scale(1, 1, 1)
	, active(false)
	, m_LifeTime(0)
	, mass(1.f)
	, material(material)
{

}

CParticle::~CParticle()
{
}