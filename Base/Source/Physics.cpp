#include "Physics.h"

CPhysics::CPhysics(void)
{
	m_Gravity = Vector3(0,-9.8f,0);
	m_fOffset = 100;
	m_bEnableWeather = false;
	m_fLaserDetectionRange = 5.f;
	m_time_interval= 0;
	WindDirection = Vector3(0.f, 0.f, 0.f);
	WindTimer = 0.f;
	difference = Vector3(0.f, 0.f, 0.f);
	m_spawnRateTimer = 0.f;
	m_fRainTimer = 0.f;
	m_fRainRate = 0.01f;
	m_fSoundTimer = 0.f;
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
	
	
	Vector3 obj1 = go1->GetPosition();
	Vector3 obj2 = go2->getPosition();
	Vector3 halfScale = (go2->getScale() + go2->getOffset()) * 0.5;

	//AABB to AABB collision detection
	if( obj1.x + go1->GetScale().x > obj2.x - halfScale.x  &&
		obj1.x - go1->GetScale().x < obj2.x + halfScale.x  &&
		obj1.y + go1->GetScale().y > obj2.y - halfScale.y  && 
		obj1.y - go1->GetScale().y < obj2.y + halfScale.y  &&
		obj1.z + go1->GetScale().z > obj2.z - halfScale.z  &&
		obj1.z - go1->GetScale().z < obj2.z + halfScale.z )
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
	if(diffVec.x < 0)
	{
		camera.position.x += CAMERA_REPELL;
		camera.target.x += CAMERA_REPELL ;
	}

	if(diffVec.x > 0)
	{
		camera.position.x -= CAMERA_REPELL;
		camera.target.x -= CAMERA_REPELL;
	}

	if(diffVec.z < 0)
	{
		camera.position.z += CAMERA_REPELL;
		camera.target.z += CAMERA_REPELL;
	}

	if(diffVec.z > 0)
	{
		camera.position.z -= CAMERA_REPELL;
		camera.target.z -= CAMERA_REPELL ;
	}



	/*Vector3 diffVec = go->getPosition() - thePlayer->GetPosition();
	diffVec *= 10;
	if(camera.GetCameraType() == Camera3::LAND_CAM)
	{
		camera.position.x -= diffVec.x * (float)dt;
		camera.position.z -= diffVec.z *  (float)dt;
		camera.target.x -= diffVec.x *  (float)dt;
		camera.target.z -= diffVec.z *  (float)dt;
	}
	else
	{
		camera.position -= diffVec *  (float)dt;
		camera.target -= diffVec *  (float)dt;
	}*/
}

//bool CPhysics::checkCollisionBetweenKey(CPlayer* go1, CKey* go2)
//{
//	Vector3 obj1 = go1->GetPosition();
//	Vector3 obj2 = go2->getPosition();
//	Vector3 halfScale = (go2->getScale()) * 0.5;
//
//	//AABB to AABB collision detection
//	if( obj1.x + go1->GetScale().x > obj2.x - halfScale.x  &&
//		obj1.x - go1->GetScale().x < obj2.x + halfScale.x  &&
//		obj1.y + go1->GetScale().y > obj2.y - halfScale.y  && 
//		obj1.y - go1->GetScale().y < obj2.y + halfScale.y  &&
//		obj1.z + go1->GetScale().z > obj2.z - halfScale.z  &&
//		obj1.z - go1->GetScale().z < obj2.z + halfScale.z )
//	{
//		return true;
//	}
//	return false;
//	
//}

// Collision with laser
bool CPhysics::checkCollisionBetweenLaser(CPlayer* player, CLaser* laser)
{
	Vector3 obj1 = player->GetPosition();
	Vector3 obj2 = laser->getPosition();
	Vector3 dVec = obj1 - obj2;

	if (dVec.Length() < m_fLaserDetectionRange)
	{
		return true;
	}
	return false;
}

void CPhysics::collisionResponseBetweenLaser(Camera3& camera, CPlayer* &player, CLaser* &laser, double dt)
{
	std::cout << "Pew pew." << std::endl;
}

// Check height of terrain
const float CPhysics::GetHeightMapY(float x, float z, std::vector<unsigned char> &heightMap,const Vector3& terrainSize )
{
	return m_fOffset* (ReadHeightMap(heightMap, x/terrainSize.x, z/terrainSize.z));
}

// Set player height from terrain
void  CPhysics::setPlayerHeight(Camera3& camera,CPlayer*& thePlayer, std::vector<unsigned char> &heightMap,const Vector3& terrainSize, bool IgnoreHM )
{
	float tempY;
	if (IgnoreHM == false)
	{
		tempY = GetHeightMapY(thePlayer->GetPosition().x, thePlayer->GetPosition().z, heightMap, terrainSize);
	}
	else
	{
		tempY = thePlayer->GetPosition().y;
	}
	
	float diffY = tempY - thePlayer->GetPosition().y;
	camera.position.y += diffY;
	camera.target.y += diffY;
	thePlayer->SetPositionY(tempY);
}


//Barycentric Coordinate
float CPhysics::barryCentric(Vector3 & p1, Vector3 & p2, Vector3 & p3, Vector2 & pos) 
{
	float det = (p2.z - p3.z) * (p1.x - p3.x) + (p3.x - p2.x) * (p1.z - p3.z);
	float l1 = ((p2.z - p3.z) * (pos.x - p3.x) + (p3.x - p2.x) * (pos.y - p3.z)) / det;
	float l2 = ((p3.z - p1.z) * (pos.x - p3.x) + (p1.x - p3.x) * (pos.y - p3.z)) / det;
	float l3 = 1.0f - l1 - l2;
	return l1 * p1.y + l2 * p2.y + l3 * p3.y;
}
//void CPhysics::getBarycentricCoordinatesAt(std::vector<unsigned char> &heightMap, Camera3& camera, CPlayer*& thePlayer)
//{
//  

// 
// float x = thePlayer->GetPosition().x / 4000.f;
// float z = thePlayer->GetPosition().z / 4000.f;

// //If out of bound
//if(x < -0.5f || x > 0.5f || z < -0.5f || z > 0.5f)
//	return;

////If heightMap failed to load and is empty
//if(heightMap.size() == 0)
//	return;


//unsigned terrainSize = static_cast<unsigned>((unsigned)sqrt(static_cast<double>(heightMap.size()))); 
// x/= terrainSize;
// z/= terrainSize;

// //get the size of the grid based on the terrain size
// float gridSquareSize = 1.f/ (terrainSize);

// int gridX = (x + 0.5f) / gridSquareSize;
// int gridZ = (z + 0.5f) / gridSquareSize;

// //get the coordinates based on the player position and terrain size
// float xCoord = fmod((x + 0.5f),gridSquareSize) / gridSquareSize;
// float zCoord = fmod((z + 0.5f),gridSquareSize) / gridSquareSize;

// float answer = 0.f;

// if (xCoord <= (1-zCoord)) 
// {
//	 answer = barryCentric(Vector3(0, heights[gridX][gridZ], 0), 
//		 Vector3(1,heights[gridX + 1][gridZ], 0), 
//		 Vector3(0,heights[gridX][gridZ + 1], 1),  
//		 Vector2(xCoord, zCoord));
// } 
// else 
// {
//	 answer = barryCentric(Vector3(1, heights[gridX + 1][gridZ], 0),
//		 Vector3(1, heights[gridX + 1][gridZ + 1], 1), 
//		 Vector3(0, heights[gridX][gridZ + 1], 1), 
//		 Vector2(xCoord, zCoord));
// }

// float diffY = answer - thePlayer->GetPosition().y;
// camera.position.y += diffY +20;
// camera.target.y += diffY +20;
// thePlayer->SetPositionY(camera.position.y + (answer / 256.f));
//
//}

// Dynamic Light based on time
void CPhysics::UpdateSun(Light & light, double & dt)
{
	// Real life vs In-game time
	//		1sec	:	1min		
	//		1min	:	1hour
	//		60sec	:	60min
	//		720sec  :   12:00
	//		1440sec	:   24:00

	m_In_World_Time +=  (float)dt;
	m_time_interval +=  (float)dt;

	light.position.x -= (float)dt * 5;
	//cout << light.position.x << endl;
	//If it hits 24:00, set it back to 00:00 
	if(m_In_World_Time > 1440)
	{
		m_In_World_Time = 0;
	}

	// for each second that pass
	if(m_time_interval >= 1)
	{
		// 20:00 ~ 06:00         Night Time
		if(m_In_World_Time > 1200 || m_In_World_Time <= 360)
		{
			light.position.Set(2000,1000,0);
			diff = Vector3(0.164f,0.145f,0.207f) -current;
			if(!diff.IsZero())
			diff =  diff.Normalize() * (float)dt * 0.01f;
			current += diff;
			m_time_interval = 0;

		}
		//06:00 ~ 08:00		Morning Time
		else if(m_In_World_Time >360 && m_In_World_Time <= 480)
		{
			diff = Vector3(1.f,0.572f,0.f) -current;
			if(!diff.IsZero())
			diff =  diff.Normalize() * (float)dt * 0.01f;
			current += diff;
			m_time_interval = 0;

		}
		// 08:00 ~ 10:00		Going to afternoon time
		else if(m_In_World_Time > 480 && m_In_World_Time <= 600)
		{
			diff = Vector3(1.f,0.85f,0.f) -current;
			if(!diff.IsZero())
			diff =  diff.Normalize() * (float)dt * 0.01f;
			current += diff;
			m_time_interval = 0;

		}
		// 10:00 ~ 18:00	Afternoon time
		else if(m_In_World_Time > 600 && m_In_World_Time <= 1080)
		{

			diff = Vector3(1.f,0.85f,0.f) -current;
			if(!diff.IsZero())
				diff =  diff.Normalize() * (float)dt * 0.01f;
			current += diff;
			m_time_interval = 0;


		}
		// 18:00 ~ 20:00	Evening time
		else if(m_In_World_Time > 1080 && m_In_World_Time <= 1200)
		{

			diff = Vector3(0.164f,0.145f,0.207f) -current;
			if(!diff.IsZero())
			diff =  diff.Normalize() * (float)dt * 0.01f;
			current += diff;
			m_time_interval = 0;

		}
	}


	light.color.Set(current.x ,current.y,current.z);

}
// Get the current world time
float CPhysics::GetWorldTime(void)
{
	return m_In_World_Time;
}
// Set the current world time
void CPhysics::SetWorldTime(float time)
{
	this->m_In_World_Time = time;
}

// Set enable weather
void CPhysics::SetEnableWeather(bool enableWeather)
{
	this->m_bEnableWeather = enableWeather;
}

// Get enable weather
bool CPhysics::GetEnableWeather()
{
	return m_bEnableWeather;
}

// Set wind direction
void CPhysics::SetWindDirection(Vector3 WindDirection)
{
	this->WindDirection = WindDirection;
}

// Get wind direction
Vector3 CPhysics::GetWindDirection(void)
{
	return WindDirection;
}

string CPhysics::GetHourTime(void)
{
	int temp = (int)m_In_World_Time / 60;
	std::ostringstream ss;
	if(temp < 10)
	{

		ss << "0" << temp;
	}
	else
	{
		ss << temp;
	}
	return ss.str();
}
string CPhysics::GetMinuteTime(void)
{
	int temp = (int)m_In_World_Time;
	temp = temp % 60;
	std::ostringstream ss;
	if(temp < 10)
	{

		ss << "0" << temp;
	}
	else
	{
		ss << temp;
	}
	return ss.str();
}
void CPhysics::UpdatePeeing(std::vector<CParticle*>myParticleList, std::vector<unsigned char> &heightMap, const Vector3& terrainSize, Camera3& camera, double& dt)
{
	//this should trigger when the right mouse click is triggered
	for(std::vector<CParticle* >::iterator it = myParticleList.begin(); it != myParticleList.end(); ++it)
	{
		CParticle* go = (CParticle *)*it;

		if(go->type == CParticle::PARTICLE_PEE)
		{
			go->vel += getGravity() * (float)dt;
			go->pos += go->vel * (float)dt;
		}
		if(go->pos.y <= GetHeightMapY(go->pos.x, go->pos.z, heightMap, terrainSize))
		{
			go->active = false;
		}
	}
}
void CPhysics::UpdateWeather(std::vector<CParticle*>myParticleList, std::vector<unsigned char> &heightmap, const Vector3& terrainSize, double& dt, std::vector<CEnemy *> myEnemyList)
{
	float offset = 20.f;
	WindTimer += (float)dt;
	m_fSoundTimer += (float)dt;
	m_spawnRateTimer += (float)dt;
	m_fRainTimer += (float)dt;
	
	/*if (GetEnableWeather() == true && particle->active == true)
	{
		if (m_fRainTimer > m_fRainRate)
		{
			particle->type = CParticle::PARTICLE_RAIN;
			particle->scale.Set(1, 1, 1);
			particle->vel.Set(0, 0, 0);
			particle->pos.Set(Math::RandFloatMinMax(-2000, 2000), 1805, Math::RandIntMinMax(-2000, 2000));

			m_fRainTimer = 0;
		}
	}*/

	//Dynamically change in wind direction
	if (WindTimer > 30.f)
	{
		WindDirection = Vector3(Math::RandFloatMinMax(-15, 15), Math::RandFloatMinMax(-1.75, 0), Math::RandFloatMinMax(-15, 15));
		WindTimer = 0.f;
		cout << WindDirection << endl;
	}


	for (std::vector<CParticle* >::iterator it = myParticleList.begin(); it != myParticleList.end(); ++it)
	{
		CParticle* go = (CParticle *)*it;

		if (GetEnableWeather() == true && go->active)
		{

			//if(!difference.IsZero())
			//{
			difference = WindDirection + m_Gravity;
			//}
			go->vel += difference * (float)dt;
			go->pos += go->vel * (float)dt;
		}
		if (go->pos.y <= GetHeightMapY(go->pos.x, go->pos.z, heightmap, terrainSize) - offset)
		{
			go->active = false;
		}
	}

	for (std::vector<CEnemy* >::iterator it = myEnemyList.begin(); it != myEnemyList.end(); ++it)
	{
		CEnemy* enemy = (CEnemy *)* it;

		if (GetEnableWeather() == true && enemy->getVisibility() != CEnemy::ENEMY_VIEW_DISTANCE * 0.75f)
		{
			enemy->setVisibility(enemy->getVisibility() * 0.75f);
			cout << enemy->getVisibility() << endl;
		}
	}
	if (m_spawnRateTimer > 240)
	{
		SetEnableWeather(false);
		for (std::vector<CParticle* >::iterator it = myParticleList.begin(); it != myParticleList.end(); ++it)
		{
			CParticle* go = (CParticle *)*it;

			go->active = false;
		}
	}

	if (m_fSoundTimer > 2.f && m_bEnableWeather == true)
	{
		soundEngine.Rainfall();
		m_fSoundTimer = 0.f;
	}
}

float CPhysics::GetRainTimer(void)
{
	return m_fRainTimer;
}
void CPhysics::SetRainTimer(float timer)
{
	this->m_fRainTimer = timer;
}
float CPhysics::GetRainRate(void)
{
	return m_fRainRate;
}
void CPhysics::setCurrent(Vector3 current)
{
	this->current = current;
}