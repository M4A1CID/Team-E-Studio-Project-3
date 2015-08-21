#ifndef CAMERA_3_H
#define CAMERA_3_H

#include "Camera.h"
#include "LoadHmap.h"

class Camera3 : public Camera
{
public:
	//Vector3 position;
	//Vector3 target;
	//Vector3 up;
	enum CAM_TYPE
	{
		LAND_CAM,
		AIR_CAM,
		NUM_CAM_TYPE,
	};
	float m_Pitch_Limiter;
	float m_Yaw;
	Vector3 defaultPosition;
	Vector3 defaultTarget;
	Vector3 defaultUp;
	Vector3 tScale;
	std::vector<unsigned char> heightmap;
	CAM_TYPE sCameraType;
	Camera3();
	~Camera3();
	virtual void Init(const Vector3& pos, const Vector3& target, const Vector3& up, std::vector<unsigned char> heightmap, Vector3 tScale);
	virtual void Update(double dt);
	virtual void Reset();
	virtual void SetCameraType(CAM_TYPE sCameraType);
	virtual CAM_TYPE GetCameraType(void);
	//Update Camera status 
	void UpdateStatus(const unsigned char key);
	void MoveLeft(const double dt);
	void MoveRight(const double dt);
	void MoveForward(const double dt);
	void MoveBackward(const double dt);

	//Basic methods
	virtual void TurnLeft(const double dt);
	virtual void TurnRight(const double dt);
	virtual void LookUp(const double dt);
	virtual void LookDown(const double dt);
	virtual void SpinClockWise(const double dt);
	virtual void SpinCounterClockwise(const double dt);

	//Applied methods
	virtual void Pitch(const double dt);
	virtual void Yaw(const double dt);
	virtual void Roll(const double dt);
	virtual void Walk(const double dt);
	virtual void Strafe(const double dt);
	virtual void Jump(const double dt);
	virtual void Crouch(const double dt);
	virtual void Prone(const double dt);

	virtual void UpdateJump(const double dt);
	virtual void UpdateCrouch(const double dt);
	virtual void UpdateProne(const double dt);
	bool GetJumping(void);

private:
	bool myKeys[255];
	//For Jump use
	bool m_bJumping;
	bool m_bCrouching;
	bool m_bProne;

	bool m_bRun;	//check if player is running

	// Jump;
	float GRAVITY;
	float JumpVel;
	float JUMPMAXSPEED, JUMPACCEL;
	float JumpOff;

	// Speed
	float tempSpeed;
	float sprintSpeed, crouchWalkSpeed;

	// Crouch
	//float CrouchHeight;
	float CrouchSpeed;
	float CrouchOff;
};

#endif