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
	//Vector3 distanceAwayFromPlayer = go2->getPosition() - go1->GetPosition();
	//Vector3 totalSize = go2->getScale() *  0.5 + go2->getScale() * 3.f+ go2->getOffset(); //go2->getOffset();
	//cout << distanceAwayFromPlayer.Length() << endl;
	////If possible collision
	//if(distanceAwayFromPlayer.Length() <= totalSize.x ||
	//	distanceAwayFromPlayer.Length() <= totalSize.y ||
	//	distanceAwayFromPlayer.Length() <= totalSize.z)
	//{
	//	return true;
	//}
	//return false;
	
	//AABB to AABB collision detection
	if( go1->GetPosition().x + go1->GetScale().x > go2->getPosition().x - go2->getScale().x - go2->getOffset().x &&
		go1->GetPosition().x - go1->GetScale().x < go2->getPosition().x + go2->getScale().x + go2->getOffset().x &&
		go1->GetPosition().y + go1->GetScale().y > go2->getPosition().y - go2->getScale().y - go2->getOffset().y && 
		go1->GetPosition().y - go1->GetScale().y < go2->getPosition().y + go2->getScale().y + go2->getOffset().y &&
		go1->GetPosition().z + go1->GetScale().z > go2->getPosition().z - go2->getScale().z - go2->getOffset().z &&
		go1->GetPosition().z - go1->GetScale().z < go2->getPosition().z + go2->getScale().z + go2->getOffset().z)
	{
		return true;
	}
	return false;
	
}
//bool AABBtoAABB(const TAABB& tBox1, const TAABB& tBox2)
//{
//
////Check if Box1's max is greater than Box2's min and Box1's min is less than Box2's max
//    return(tBox1.m_vecMax.x > tBox2.m_vecMin.x && 
//    tBox1.m_vecMin.x < tBox2.m_vecMax.x &&
//    tBox1.m_vecMax.y > tBox2.m_vecMin.y &&
//    tBox1.m_vecMin.y < tBox2.m_vecMax.y &&
//    tBox1.m_vecMax.z > tBox2.m_vecMin.z &&
//    tBox1.m_vecMin.z < tBox2.m_vecMax.z);
//
////If not, it will return false
//
//}

void CPhysics::collisionResponseBetweenOBJ(Camera3 &camera,CPlayer* &thePlayer, CObj* &go, double dt)
{
	Vector3 diffVec = go->getPosition() - thePlayer->GetPosition();
	diffVec *= 10;
	if(camera.GetCameraType() == Camera3::LAND_CAM)
	{
		camera.position.x -= diffVec.x * dt;
		camera.position.z -= diffVec.z * dt;
		camera.target.x -= diffVec.x * dt;
		camera.target.z -= diffVec.z * dt;
	}
	else
	{
		camera.position -= diffVec * dt;
		camera.target -= diffVec * dt;
	}
}