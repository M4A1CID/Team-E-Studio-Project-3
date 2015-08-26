#include "Guard.h"

CGuard::CGuard(void)
{
	setGeoArmType(27);
	setGeoLegType(28);
	setGeoBodyType(29);
	setGeoHeadType(30);

	setOffsetArm(Vector3(1.f,-0.7f,-0.2f));
	setOffsetHead(Vector3(0.0f,1.6f,0.0f));
	setOffsetLeg(Vector3(0.4f,-1.5f,0.f));

	setRotationBody(0);
	setRotationHead(0);
	setRotationLeftArm(0);
	setRotationLeftLeg(0);
	setRotationRightArm(0);
	setRotationRightLeg(0);
}


CGuard::~CGuard(void)
{
}
