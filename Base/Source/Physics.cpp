#include "Physics.h"


CPhysics::CPhysics(void)
{
	m_Gravity = Vector3(0,-9.8,0);
}

CPhysics::~CPhysics(void)
{

}

// Get the gravity
Vector3 CPhysics::getGravity(void)
{
	return m_Gravity;
}
// Set the gravity
void CPhysics::setGravity(Vector3 gravity)
{
	this->m_Gravity = gravity;
}

bool CPhysics::checkCollisionBetweenOBJ(CPlayer* go1, CObj* go2)
{
	Vector3 distanceAwayFromPlayer = go2->getPosition() - go1->GetPosition();
	Vector3 totalSize = go2->getScale() + go1->GetScale() ;
	//totalSize *= 0.5;
	cout << distanceAwayFromPlayer.Length() << endl;
	//If possible collision
	if(distanceAwayFromPlayer.Length() <= totalSize.Length())
	{
		return true;
	}
	return false;

	
}

void CPhysics::collisionResponseBetweenOBJ(Camera3 &camera,CPlayer* &thePlayer, CObj* &go, double dt)
{
	Vector3 diffVec = go->getPosition() - thePlayer->GetPosition();
	diffVec *= 10;
	camera.position -= diffVec * dt;
	camera.target -= diffVec * dt;

}