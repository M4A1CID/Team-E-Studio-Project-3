#ifndef PARTICLE_H
#define PARTICLE_H

#include "Vector3.h"
#include "Material.h"

enum PARTICLE_TYPE
{
	PARTICLE_NONE = 0,
	PARTICLE_LEAF,
	PARTICLE_SMOKE,
	PARTICLE_SPARKS,
	PARTICLE_TOTAL,
};
class Particle
{

	public:


	PARTICLE_TYPE type;
	Vector3 pos;
	Vector3 vel;
	Vector3 scale;
	bool active;
	float mass;
	float m_LifeTime;
	Material material;


	Particle(PARTICLE_TYPE typeValue);
	~Particle();
};

#endif