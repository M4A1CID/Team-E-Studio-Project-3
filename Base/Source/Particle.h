#ifndef PARTICLE_H
#define PARTICLE_H

#include "Vector3.h"
#include "Material.h"


class CParticle
{

public:

	enum PARTICLE_TYPE
	{
		PARTICLE_NONE = 0,
		PARTICLE_LEAF,
		PARTICLE_SPARKS,
		PARTICLE_SMOKE,
		PARTICLE_RAIN,
		PARTICLE_TOTAL,
	};

	PARTICLE_TYPE type;
	Vector3 pos;
	Vector3 vel;
	Vector3 scale;
	bool active;
	float mass;
	float m_LifeTime;
	Material material;


	CParticle(PARTICLE_TYPE typeValue);
	~CParticle();
};

#endif