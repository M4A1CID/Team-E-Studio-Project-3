#include "Warden.h"

CWarden::CWarden()
{
	setGeoArmType(31);
	setGeoLegType(32);
	setGeoBodyType(33);
	setGeoHeadType(34);

	setOffsetArm(Vector3(1.f,0.9f,-0.2f));
	setOffsetHead(Vector3(0.0f,1.6f,0.0f));
	setOffsetLeg(Vector3(0.4f,-1.2f,0.f));

	setRotationBody(0);
	setRotationHead(0);
	setRotationLeftArm(0);
	setRotationLeftLeg(0);
	setRotationRightArm(0);
	setRotationRightLeg(0);
}

CWarden::~CWarden()
{

}