#pragma once
#include "Obj.h"

class CLaser : public CObj
{
public:
	CLaser(void);
	~CLaser(void);

	// Set functions
	// Position
	void setPosition(Vector3);
	void setPosition_X(float);
	void setPosition_Y(float);
	void setPosition_Z(float);

	// Scale
	void setScale(Vector3);
	void setScale_X(float);
	void setScale_Y(float);
	void setScale_Z(float);

	// Get functions
	// Position
	Vector3 getPosition(void);
	float getPosition_X(void);
	float getPosition_Y(void);
	float getPosition_Z(void);

	// Scale
	Vector3 getScale(void);
	float getScale_X(void);
	float getScale_Y(void);
	float getScale_Z(void);

private:

	Vector3 pos;
	Vector3 scale;
};

