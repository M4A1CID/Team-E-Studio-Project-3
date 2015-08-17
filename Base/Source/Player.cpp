#include "Player.h"

static float offsetY = 20.f;

CPlayer::CPlayer(void)
{
	active = false;
	pos.SetZero();
	scale.SetZero();
}

CPlayer::~CPlayer(void)
{

}
void CPlayer::Init(bool active,Vector3 pos, Vector3 scale)
{
	this->active = active;
	this->pos = pos;
	this->scale = scale;
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
void CPlayer::UpdateCameraStatus( const unsigned char key, Camera3 camera)
{
	camera.UpdateStatus(key);
}
void CPlayer::UpdatePosition(double dt, Camera3 camera)
{
	camera.Update(dt);
	pos.Set(camera.position.x * dt, camera.position.y * dt + offsetY, camera.position.z * dt);
}