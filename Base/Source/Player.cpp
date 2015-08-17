#include "Player.h"

static float offsetY = 0.f;

CPlayer::CPlayer(void)
	: active(false)
	, pos(0, 0, 0)
	, scale(0, 0, 0)
	, itemsHeld(0)
	, maxItemCap(2)
{
}

CPlayer::~CPlayer(void)
{

}
void CPlayer::Init(bool active, Vector3 pos, Vector3 scale, int itemsHeld, int maxItemCap)
{
	this->active = active;
	this->pos = pos;
	this->scale = scale;
	this->itemsHeld = itemsHeld;
	this->maxItemCap = maxItemCap;
}
void CPlayer::SetActive(bool active)
{
	this->active = active;
}
bool CPlayer::GetActive(void)
{
	return active;
}
void CPlayer::SetPosition(Vector3 pos)
{
	this->pos = pos;
}
Vector3 CPlayer::GetPosition(void)
{
	return pos;
}
void CPlayer::SetScale(Vector3 scale)
{
	this->scale = scale;
}
Vector3 CPlayer::GetScale(void)
{
	return scale;
}
int CPlayer::getMaxItemCap()
{
	return maxItemCap;
}
int CPlayer::getItemsHeld()
{
	return itemsHeld;
}
void CPlayer::setInventory(CItem* pickedUp)
{
	InventoryList.push_back(pickedUp);
}
void CPlayer::setInventory(CItem* pickedUp, int slot)
{
	InventoryList[slot] = pickedUp;
}
CItem* CPlayer::getItem(int i)
{
	return InventoryList[i];
}
std::vector<CItem*> CPlayer::getVector()
{
	return InventoryList;
}
void CPlayer::UpdateCameraStatus( const unsigned char key, Camera3 camera)
{
	camera.UpdateStatus(key);
}
void CPlayer::UpdatePosition(double dt, Camera3 camera)
{
	camera.Update(dt);
	pos.Set(camera.position.x, camera.position.y-offsetY, camera.position.z);
}