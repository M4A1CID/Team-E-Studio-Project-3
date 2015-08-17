#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"
#include "Camera3.h"

class CPlayer
{
public:
	CPlayer(void);
	~CPlayer(void);

	void Init(bool active, Vector3 pos, Vector3 scale);

	void SetActive(bool active);
	bool GetActive(void);

	void SetPosition(Vector3 pos);
	Vector3 GetPosition(void);

	void SetScale(Vector3 scale);
	Vector3 GetScale(void);

	virtual void UpdateCameraStatus( const unsigned char key, Camera3 camera);
	void UpdatePosition(double dt, Camera3 camera);

	//to add in the collision detection here
private:
	Vector3 pos;
	Vector3 scale;	//for collision purposes
	bool active;

	Camera3 camera;
};
#endif