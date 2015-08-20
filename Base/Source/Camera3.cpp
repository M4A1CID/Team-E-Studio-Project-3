#include "Camera3.h"
#include "Application.h"
#include "Mtx44.h"
#include "LoadHmap.h"

Camera3::Camera3()
{
}

Camera3::~Camera3()
{
}
static float CAMERA_SPEED = 100.f;
static float const CAMERA_LOOK_SPEED = 250.f;
 
void Camera3::SetCameraType(CAM_TYPE sCameraType)
{
	this->sCameraType = sCameraType;
}
Camera3::CAM_TYPE Camera3::GetCameraType(void)
{
	return this->sCameraType;
}

/*===================================================================
	Walk forward or backward. You can add in a deadzone here.
=====================================================================*/
void Camera3::Walk(const double dt)
{
	if( dt> 0)
		MoveForward(dt);
	else if(dt<0)
		MoveBackward(abs(dt));
}
/*===============================================================
	Strafe left or right. You can add in a deadzone here
==============================================================*/
void Camera3::Strafe(const double dt)
{
	if(dt>0)
		MoveRight(dt);
	else if(dt<0)
		MoveLeft(abs(dt));
}

/*==============================================================
	Pitch. You can add in a deadzone here
===============================================================*/
void Camera3::Pitch(const double dt)
{
	
	if(Application::m_sdCamera_pitch > 0.0 && m_Pitch_Limiter >-60)
	{
		
		LookUp(dt);
	}
	else if (Application::m_sdCamera_pitch < 0.0 && m_Pitch_Limiter < 60)
		LookDown(dt);
}
/*==========================
	Look Up
===========================*/
void Camera3::LookUp(const double dt)
{
	float pitch = (float)(-CAMERA_LOOK_SPEED * Application::m_sdCamera_pitch * (float)dt);
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	m_Pitch_Limiter += pitch;
	right.y = 0;
	right.Normalized();
	up = right.Cross(view).Normalized();
	Mtx44 rotation;
	rotation.SetToRotation(pitch, right.x, right.y, right.z);
	view = rotation * view;
	target = position + view;
}
/*==========================
	Look down
===========================*/
void Camera3::LookDown(const double dt)
{
	float pitch = (float)(-CAMERA_LOOK_SPEED * Application::m_sdCamera_pitch * (float)dt);
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	m_Pitch_Limiter += pitch;
	right.y = 0;
	right.Normalized();
	up = right.Cross(view).Normalized();
	Mtx44 rotation;
	rotation.SetToRotation(pitch, right.x, right.y, right.z);
	view = rotation * view;
	target = position + view;
}
/*=================================
	Turn left
===================================*/
void Camera3::TurnLeft(const double dt)
{
	Vector3 view = (target - position).Normalized();
	float yaw = (float)(-CAMERA_LOOK_SPEED* Application::m_sdCamera_yaw * (float)dt);
	Mtx44 rotation;
	m_Yaw += yaw;
	rotation.SetToRotation(yaw, 0, 1, 0);
	view = rotation * view;
	target = position + view;
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	up = right.Cross(view).Normalized();
}
/*=================================
	Turn Right
===================================*/
void Camera3::TurnRight(const double dt)
{
	Vector3 view = (target - position).Normalized();
	float yaw = (float)(-CAMERA_LOOK_SPEED * Application::m_sdCamera_yaw * (float)dt);
	m_Yaw += yaw;
	Mtx44 rotation;
	rotation.SetToRotation(yaw, 0, 1, 0);
	view = rotation * view;
	target = position + view;
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	up = right.Cross(view).Normalized();
}
/*==================================================
	Yaw. You can add in a deadzone here
===================================================*/
void Camera3::Yaw(const double dt)
{
	if(Application::m_sdCamera_yaw > 0.0)
		TurnRight(dt);
	else if (Application::m_sdCamera_yaw < 0.0)
		TurnLeft(dt);
}

/*=================================================
	Roll your camera
==================================================*/
void Camera3::Roll(const double dt)
{
	//Create code here
}
/*==============================
	Spin Clockwise
============================*/
void Camera3::SpinClockWise(const double dt)
{
	//Create code here
}
/*==============================
	Spin CounterClockwise
============================*/
void Camera3::SpinCounterClockwise(const double dt)
{
	//Create code here
}
/*=========================
	Jump
=======================*/
void Camera3::Jump(const double dt)
{
	if(m_bJumping == false)
	{
		m_bJumping = true;

		//Calculate the jump velocity
		JumpVel = JUMPACCEL ;//* dt;

		//Factor in maximum speed limit
		if(JumpVel > JUMPMAXSPEED)
			JumpVel = JUMPMAXSPEED;
	}
}
/*===========================================
	Update Jump
================================*/
void Camera3::UpdateJump(const double dt)
{
	if(m_bJumping)
	{
		//Factor in gravity
		JumpVel += GRAVITY * dt;

		//Update the camera and target position
		position.y += JumpVel * (float)dt;
		target.y += JumpVel * (float)dt;
	}
	//Check if the camera has reached the ground
	if (position.y < JumpHeight)
	{
		float movedt = JumpHeight - position.y;
		m_bJumping = false;
		position.y = JumpHeight;
		target.y += movedt;
		JumpVel = 0.0f;
	}
	if(position.y > JumpHeight)
	{
		//Factor in gravity
		JumpVel += GRAVITY * dt;

		//Update the camera and target position
		position.y += JumpVel * (float)dt;
		target.y += JumpVel * (float)dt;
	}


}
void Camera3::Crouch(const double dt)
{
	if(!m_bCrouching && !m_bJumping)
	{
		m_bCrouching = true;
	}
}
void Camera3::UpdateCrouch(const double dt)
{
	if(m_bCrouching)
	{
		if(position.y > CrouchOff)
		{
			position.y -= CrouchSpeed;
			target.y -= CrouchSpeed;
			CAMERA_SPEED = crouchWalkSpeed;
			m_bCrouching = false;
		}
	}
	else
	{
		if(position.y < CrouchOff && !m_bProne)
		{
			position.y += CrouchSpeed;
			target.y += CrouchSpeed;
		}
	}
}
void Camera3::Prone(const double dt)
{

	static bool bProning = false;
	if(!bProning && Application::IsKeyPressed('Z') && !m_bJumping)
	{
		bProning = true;
		m_bProne = true;
	}
	else if(bProning && !Application::IsKeyPressed('Z') && !m_bJumping)
	{
		bProning = false;
		m_bProne = false;
	}
}
void Camera3::UpdateProne(const double dt)
{
	if(m_bProne)
	{
		if(position.y > 15)
		{
			position.y -= dt * 100;
			target.y -= dt * 100;
		}
	}
	else
	{
		if(position.y <40 && !m_bCrouching)
		{
			position.y += dt * 100;
			target.y += dt * 100;
		}
	}
}
void Camera3::Init(const Vector3& pos, const Vector3& target, const Vector3& up, std::vector<unsigned char> heightmap, Vector3 tScale)
{

	sCameraType = LAND_CAM;
	//For jump use
	m_Pitch_Limiter = 0.f;
	m_Yaw = 0.f;

	this->position = defaultPosition = pos;
	this->target = defaultTarget = target;
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	this->up = defaultUp = right.Cross(view).Normalized();
	this->heightmap = heightmap;
	this->tScale = tScale;

	// Bools
	m_bCrouching = false;
	m_bProne = false;
	m_bJumping= false;

	// Jump
	JumpVel = 0.0f;
	JUMPMAXSPEED = 155.f;
	JUMPACCEL = 200.0f;
	GRAVITY = -175.f;
	JumpOff = 5.f;
	JumpHeight = tScale.y * ReadHeightMap(heightmap, position.x / tScale.x, position.z /tScale.z) + JumpOff;

	// Speed
	tempSpeed = 100.f;
	sprintSpeed = 300.f;
	crouchWalkSpeed = 20.f;


	// Crouch
	CrouchOff = 60.f;
	CrouchHeight = tScale.y * ReadHeightMap(heightmap, position.x / tScale.x, position.z /tScale.z) - CrouchOff;
	CrouchSpeed = 20.f;

	//Initialise the camera movement flags
	for(int i = 0; i < 255; i++)
	{
		myKeys[i] = false;
	}
}
void Camera3::MoveLeft(const double dt)
{

	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	position -= right * CAMERA_SPEED * (float)dt;
	target -= right * CAMERA_SPEED * (float)dt;
}
void Camera3::MoveRight(const double dt)
{
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	position += right * CAMERA_SPEED * (float)dt;
	target += right * CAMERA_SPEED * (float)dt;
}
void Camera3::MoveForward(const double dt)
{
	Vector3 view = (target - position).Normalized();
	//If using First Person
	if(sCameraType == LAND_CAM)
		view.y = 0;
	position += view * CAMERA_SPEED * (float)dt;
	target += view * CAMERA_SPEED * (float)dt;

}
void Camera3::MoveBackward(const double dt)
{
	Vector3 view = (target - position).Normalized();
	if(sCameraType == LAND_CAM)
		view.y = 0;
	position -= view * CAMERA_SPEED * (float)dt;
	target -= view * CAMERA_SPEED * (float)dt;

}
void Camera3::UpdateStatus(const unsigned char key)
{
	myKeys[key] = true;
}
void Camera3::Update(double dt)
{
	/*UpdateJump(dt);
	UpdateCrouch(dt);
	UpdateProne(dt);
	
	Crouch(dt);
	Prone(dt);*/
	if(myKeys['w'] == true)
	{
		if(myKeys[VK_SHIFT] == true && m_bCrouching == false)
		{
			CAMERA_SPEED = sprintSpeed;
			myKeys[VK_SHIFT] = false;
		}
		MoveForward(dt);
		myKeys['w'] = false;
	}

	if(myKeys['s'] == true)
	{
		MoveBackward(dt);
		myKeys['s'] = false;
	}

	if(myKeys['a'] == true)
	{
		if(myKeys[VK_SHIFT] == true && m_bCrouching == false)
		{
			CAMERA_SPEED = sprintSpeed;
			myKeys[VK_SHIFT] = false;
		}
		MoveLeft(dt);
		myKeys['a'] = false;
	}

	if(myKeys['d'] == true)
	{
		if(myKeys[VK_SHIFT] == true && m_bCrouching == false)
		{
			CAMERA_SPEED = sprintSpeed;
			myKeys[VK_SHIFT] = false;
		}
		MoveRight(dt);
		myKeys['d'] = false;
	}

	if(myKeys[32] == true)
	{
		Jump(dt);
		myKeys[32] = false;
	}

	if(myKeys[VK_CONTROL] == true)
	{
		Crouch(dt);
		myKeys[VK_CONTROL] = false;
	}
	
	std::cout << CAMERA_SPEED << std::endl;

	CAMERA_SPEED = tempSpeed;

	if(sCameraType == LAND_CAM)
	{
		UpdateJump(dt);
		UpdateCrouch(dt);
	}
	
	if(Application::m_sdCamera_yaw != 0)
		Yaw(dt);
	if(Application::m_sdCamera_pitch != 0)
		Pitch(dt);
	if(Application::IsKeyPressed('P'))
	{
		Reset();
	}
}

void Camera3::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}

bool Camera3::GetJumping(void)
{
	return m_bJumping;
}