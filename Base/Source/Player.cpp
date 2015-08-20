#include "Player.h"

static float offsetY = 0.f;

//construct the default constructor with empty default parameters
CPlayer::CPlayer(void)
	: active(false)
	, pos(0, 0, 0)
	, scale(0, 0, 0)
	, itemsHeld(0)
	, maxItemCap(0)
{
}
//cannot do the same construction as the default because this will have different set of values
CPlayer::CPlayer(bool active, Vector3 pos, Vector3 scale, int itemsHeld, int maxItemCap)
{
	this->active = active;
	this->pos = pos;
	this->scale = scale;
	this->itemsHeld = itemsHeld;
	this->maxItemCap = maxItemCap;
}
//the destructor. nothing to destroy right now
CPlayer::~CPlayer(void)
{

}

//void CPlayer::Init(bool active, Vector3 pos, Vector3 scale, int itemsHeld, int maxItemCap)
//{
//	this->active = active;
//	this->pos = pos;
//	this->scale = scale;
//	this->itemsHeld = itemsHeld;
//	this->maxItemCap = maxItemCap;
//}

//set current status of player
void CPlayer::SetActive(bool active)
{
	this->active = active;
}
//get current status of player
bool CPlayer::GetActive(void)
{
	return active;
}
//set current position of player
void CPlayer::SetPosition(Vector3 pos)
{
	this->pos = pos;
}
//get current position of player
Vector3 CPlayer::GetPosition(void)
{
	return pos;
}
//set current scale/hitbox of player
void CPlayer::SetScale(Vector3 scale)
{
	this->scale = scale;
}
//get current scale/hitbox of player
Vector3 CPlayer::GetScale(void)
{
	return scale;
}

//set the position of player
void CPlayer::SetPositionX(float x)
{
	this->pos.x = x;
}
void CPlayer::SetPositionY(float y)
{
	this->pos.y = y;
}
void CPlayer::SetPositionZ(float z)
{
	this->pos.z = z;
}

//get the position of player
float CPlayer::GetPositionX(void)
{
	return pos.x;
}
float CPlayer::GetPositionY(void)
{
	return pos.y;
}
float CPlayer::GetPositionZ(void)
{
	return pos.z;
}

//set the Scale of player
void CPlayer::SetScaleX(float x)
{
	this->scale.x = x;
}
void CPlayer::SetScaleY(float y)
{
	this->scale.y = y;
}
void CPlayer::SetScaleZ(float z)
{
	this->scale.z = z;
}

//get the Scale of player
float CPlayer::GetScaleX(void)
{
	return scale.x;
}
float CPlayer::GetScaleY(void)
{
	return scale.y;
}
float CPlayer::GetScaleZ(void)
{
	return scale.z;
}

/*============= inventory-related codes for player =================*/

//get current maximum item capacity of player
int CPlayer::getMaxItemCap()
{
	return maxItemCap;
}
//get current number of items held by player
int CPlayer::getItemsHeld()
{
	return itemsHeld;
}
//this is when player picks up an item and our 
void CPlayer::setInventory(CItem* pickedUp)
{
	InventoryList.push_back(pickedUp);
}
void CPlayer::setInventory(CItem* pickedUp, int slot)
{
	InventoryList[slot] = pickedUp;
}
void CPlayer::setKeyList(CKey* pickedUp)
{
	KeyList.push_back(pickedUp);
}
void CPlayer::setKeyList(CKey* pickedUp, int slot)
{
	KeyList[slot] = pickedUp;
}
CItem* CPlayer::getItem(int i)
{
	return InventoryList[i];
}
std::vector<CItem*> CPlayer::getItemVector()
{
	return InventoryList;
}
std::vector<CKey*> CPlayer::getKeyVector()
{
	return KeyList;
}

/*============= inventory-related codes for player ends here =================*/

void CPlayer::UpdateCameraStatus( const unsigned char& key, Camera3& camera)
{
	camera.UpdateStatus(key);
}
void CPlayer::UpdatePosition(double& dt, Camera3& camera)
{
	pos.Set(camera.position.x, camera.position.y-offsetY, camera.position.z);
}

/*======== Animations =========*/
// Walking
void CPlayer::Walking()
{

}

// Running
void CPlayer::Running()
{

}

// Idle
void CPlayer::Idle()
{

}

// Jumping
void CPlayer::Jump()
{

}

// Crouch
void CPlayer::Crouch()
{

}