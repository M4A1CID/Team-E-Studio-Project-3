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
	
	Vector3 halfScale = (go2->getScale() + go2->getOffset()) * 0.5;

	//AABB to AABB collision detection
	if( go1->GetPosition().x + go1->GetScale().x > go2->getPosition().x - halfScale.x  &&
		go1->GetPosition().x - go1->GetScale().x < go2->getPosition().x + halfScale.x  &&
		go1->GetPosition().y + go1->GetScale().y > go2->getPosition().y - halfScale.y  && 
		go1->GetPosition().y - go1->GetScale().y < go2->getPosition().y + halfScale.y  &&
		go1->GetPosition().z + go1->GetScale().z > go2->getPosition().z - halfScale.z  &&
		go1->GetPosition().z - go1->GetScale().z < go2->getPosition().z + halfScale.z )
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

// Check height of terrain
const float CPhysics::GetHeightMapY(float x, float z, std::vector<unsigned char> &heightMap,const Vector3& terrainSize )
{
	return 250* (ReadHeightMap(heightMap, x/terrainSize.x, z/terrainSize.z));
}

// Set player height from terrain
void  CPhysics::setPlayerHeight(Camera3& camera,CPlayer*& thePlayer, std::vector<unsigned char> &heightMap,const Vector3& terrainSize )
{
	float tempY = GetHeightMapY(thePlayer->GetPosition().x, thePlayer->GetPosition().z, heightMap, terrainSize);
	float diffY = tempY - thePlayer->GetPosition().y;
	camera.position.y += diffY;
	camera.target.y += diffY;
	thePlayer->SetPositionY(tempY);
}


//Barycentric Coordinate
 float CPhysics::barryCentric(Vector3 p1, Vector3 p2, Vector3 p3, Vector2 pos) 
 {
	float det = (p2.z - p3.z) * (p1.x - p3.x) + (p3.x - p2.x) * (p1.z - p3.z);
	float l1 = ((p2.z - p3.z) * (pos.x - p3.x) + (p3.x - p2.x) * (pos.y - p3.z)) / det;
	float l2 = ((p3.z - p1.z) * (pos.x - p3.x) + (p1.x - p3.x) * (pos.y - p3.z)) / det;
	float l3 = 1.0f - l1 - l2;
	return l1 * p1.y + l2 * p2.y + l3 * p3.y;
}

 void CPhysics::getBarycentricCoordinatesAt(std::vector<unsigned char> &heightMap, Camera3& camera, CPlayer*& thePlayer)
 {
	  

	 
	 float x = thePlayer->GetPosition().x / 4000.f;
	 float z = thePlayer->GetPosition().z / 4000.f;

	 //If out of bound
	if(x < -0.5f || x > 0.5f || z < -0.5f || z > 0.5f)
		return;

	//If heightMap failed to load and is empty
	if(heightMap.size() == 0)
		return;


	unsigned terrainSize = static_cast<unsigned>((unsigned)sqrt(static_cast<double>(heightMap.size()))); 
	 x/= terrainSize;
	 z/= terrainSize;

	 //get the size of the grid based on the terrain size
	 float gridSquareSize = 1.f/ (terrainSize);

	 int gridX = (x + 0.5f) / gridSquareSize;
	 int gridZ = (z + 0.5f) / gridSquareSize;

	 //get the coordinates based on the player position and terrain size
	 float xCoord = fmod((x + 0.5f),gridSquareSize) / gridSquareSize;
	 float zCoord = fmod((z + 0.5f),gridSquareSize) / gridSquareSize;

	 float answer = 0.f;

	 if (xCoord <= (1-zCoord)) 
	 {
		 answer = barryCentric(Vector3(0, heights[gridX][gridZ], 0), 
			 Vector3(1,heights[gridX + 1][gridZ], 0), 
			 Vector3(0,heights[gridX][gridZ + 1], 1),  
			 Vector2(xCoord, zCoord));
	 } 
	 else 
	 {
		 answer = barryCentric(Vector3(1, heights[gridX + 1][gridZ], 0),
			 Vector3(1, heights[gridX + 1][gridZ + 1], 1), 
			 Vector3(0, heights[gridX][gridZ + 1], 1), 
			 Vector2(xCoord, zCoord));
	 }

	 float diffY = answer - thePlayer->GetPosition().y;
	 camera.position.y += diffY +20;
	 camera.target.y += diffY +20;
	 thePlayer->SetPositionY(camera.position.y + (answer / 256.f));
	
 }





//Vector3 CPhysics::getBarycentricCoordinatesAt(std::vector<unsigned char> &heightMap,const Vector3& terrainSize, Camera3& camera, CPlayer*& thePlayer )
//{
//	Vector3 initVector,v1,v2,Zvector, Xvector,NormalVector;
//
//	initVector.Set(thePlayer->GetPosition().x, heightMap[thePlayer->GetPosition().z + thePlayer->GetPosition().x],thePlayer->GetPosition().z);
//
//	/*Vector3 initVector,v1,v2,Zvector, Xvector,NormalVector;
//	initVector.Set(thePlayer->GetPosition().x , heightMap[thePlayer->GetPosition().z * terrainSize + thePlayer->GetPosition().x], thePlayer->GetPosition().z); 
//	v1.Set( thePlayer->GetPosition().x+1 , heightMap[thePlayer->GetPosition().z * terrainSize + (thePlayer->GetPosition().x+1)], thePlayer->GetPosition().z); 
//	v2.Set(thePlayer->GetPosition().x , heightMap[(thePlayer->GetPosition().z+1) * terrainSize + thePlayer->GetPosition().x], thePlayer->GetPosition().z+1); 
//	Xvector = v1 - initVector;
//	Zvector = v2 - initVector;
//	NormalVector = Zvector.Cross(Xvector);
//
//	float diffY = NormalVector.y - thePlayer->GetPosition().y;
//	camera.position.y += diffY;
//	camera.target.y += diffY;
//	thePlayer->SetPositionY(NormalVector.y);*/
//}