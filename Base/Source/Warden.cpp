#include "Warden.h"

CWarden::CWarden()
{
	setGeoArmType(29);
	setGeoLegType(30);
	setGeoBodyType(31);
	setGeoHeadType(32);

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

CWarden::~CWarden()
{

}