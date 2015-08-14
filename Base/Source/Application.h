
#ifndef APPLICATION_H
#define APPLICATION_H

#include "timer.h"
#include "SceneSP3.h"

class Application
{
public:
	//Declare variables to store the last and current mouse position
	static double m_sdMouse_last_x , m_sdMouse_last_y ,m_sdMouse_current_x ,m_sdMouse_current_y ,m_sdMouse_diff_x ,m_sdMouse_diff_y;
	static double m_sdCamera_yaw, m_sdCamera_pitch;
	
	
	static Application& GetInstance()
	{
		static Application app;
		return app;
	}
	void Init();
	void Run();
	void Exit();
	static bool IsKeyPressed(unsigned short key);
	bool GetMouseUpdate();
	bool GetKeyboardUpdate();

	static int GetWindowWidth();
	static int GetWindowHeight();

private:
	Application();
	~Application();

	//Declare a window object
	StopWatch m_timer;
	double m_dElapsedTime;
	double m_dAccumulatedTime_ThreadOne;
	double m_dAccumulatedTime_ThreadTwo;
	unsigned int m_uiFrequency;
	//Declare the window width and height as constant integer
	const static int m_ksiWindow_deadzone = 100000;
	const static int m_ksiWindow_width = 800;
	const static int m_ksiWindow_height = 600;
	
	SceneSP3* scene;
	//SceneShadow* scene;
};

#endif