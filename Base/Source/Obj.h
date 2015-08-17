#pragma once
#include "Vector3.h"
#include "Mesh.h"

class CObj
{
public:
	CObj(void);
	virtual ~CObj(void);

	Vector3 Pos;
	bool active;
	int geoType;
};

