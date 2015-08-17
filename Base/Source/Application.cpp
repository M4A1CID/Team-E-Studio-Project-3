
#include "Application.h"

//Include GLEW
#include <GL/glew.h>

//Include GLFW
#include <GLFW/glfw3.h>

//Include the standard C++ headers
#include <stdio.h>
#include <stdlib.h>
//#include "SceneSP3.h"
//#include "SceneShadow.h"

GLFWwindow* m_window;
const unsigned char FPS = 60; // FPS of this game
const unsigned int frameTime = 1000 / FPS; // time for each frame
double Application::m_sdMouse_last_x = 0.0, Application::m_sdMouse_last_y = 0.0,
	Application::m_sdMouse_current_x = 0.0, Application::m_sdMouse_current_y = 0.0,
	Application::m_sdMouse_diff_x = 0.0, Application::m_sdMouse_diff_y = 0.0;
double Application::m_sdCamera_yaw = 0.0, Application::m_sdCamera_pitch = 0.0;

//Define an error callback
static void error_callback(int error, const char* description)
{
	fputs(description, stderr);
	_fgetchar();
}

//Define the key input callback
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
	if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GL_TRUE);
}

void resize_callback(GLFWwindow* window, int w, int h)
{
	glViewport(0, 0, w, h);
}

bool Application::IsKeyPressed(unsigned short key)
{
    return ((GetAsyncKeyState(key) & 0x8001) != 0);
}
bool Application::GetKeyboardUpdate()
{
	if (IsKeyPressed('A'))
	{
		scene->UpdateCameraStatus('a');
	}
	if(IsKeyPressed('D'))
	{
		scene->UpdateCameraStatus('d');
	}
	if(IsKeyPressed('W'))
	{
		scene->UpdateCameraStatus('w');
	}
	if(IsKeyPressed('S'))
	{
		scene->UpdateCameraStatus('s');
	}
	if(IsKeyPressed(32))
	{
		scene->UpdateCameraStatus(32);
	}
	if(IsKeyPressed(VK_SHIFT))
	{
		scene->UpdateCameraStatus(VK_SHIFT);
	}

	/*if(IsKeyPressed('R'))
	{
		scene->UpdateWeaponStatus(scene->WA_RELOAD);
	}*/


	return true;
}
bool Application::GetMouseUpdate()
{
	glfwGetCursorPos(m_window, &m_sdMouse_current_x, &m_sdMouse_current_y);

	//Calculate the difference in positions
	m_sdMouse_diff_x = m_sdMouse_current_x - m_sdMouse_last_x;
	m_sdMouse_diff_y = m_sdMouse_current_y - m_sdMouse_last_y;

	//Calculate the yaw and pitch
	m_sdCamera_yaw = (float)m_sdMouse_diff_x * 0.0174555555555556f; //*3.142f / 180.0f
	m_sdCamera_pitch = m_sdMouse_diff_y * 0.0174555555555556f; //3.142f /180.0f

	//Do a wraparound if the mouse cursor has gone out of the deadzone 
	if((m_sdMouse_current_x < m_ksiWindow_deadzone)|| (m_sdMouse_current_x > m_ksiWindow_width-m_ksiWindow_deadzone))
	{
		m_sdMouse_current_x = m_ksiWindow_width >> 1;
		glfwSetCursorPos(m_window, m_sdMouse_current_x, m_sdMouse_current_y);
	}
	
	if((m_sdMouse_current_y < m_ksiWindow_deadzone)|| (m_sdMouse_current_y > m_ksiWindow_width-m_ksiWindow_deadzone))
	{
		m_sdMouse_current_y = m_ksiWindow_height >> 1;
		glfwSetCursorPos(m_window, m_sdMouse_current_x, m_sdMouse_current_y);
	}

	//Store the current position as the last position
	m_sdMouse_last_x = m_sdMouse_current_x;
	m_sdMouse_last_y = m_sdMouse_current_y;

	//// Get the mouse button status
	//if(glfwGetMouseButton(m_window, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS)
	//{
	//	scene->UpdateWeaponStatus(scene->WA_FIRE);
	//	
	//}
	//else if(!glfwGetMouseButton(m_window, GLFW_MOUSE_BUTTON_LEFT) == GLFW_PRESS)
	//{
	//	scene->UpdateWeaponStatus(scene->WA_RELEASE);
	//}

	// Hide the cursor
	glfwSetInputMode(m_window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);

	return false;
}

int Application::GetWindowHeight()
{
	return m_ksiWindow_height;
}
int Application::GetWindowWidth()
{
	return m_ksiWindow_width;
}
Application::Application()
{
}

Application::~Application()
{
}

void Application::Init()
{
	//Set the error callback
	glfwSetErrorCallback(error_callback);

	//Initialize GLFW
	if (!glfwInit())
	{
		exit(EXIT_FAILURE);
	}

	//Set the GLFW window creation hints - these are optional
	glfwWindowHint(GLFW_SAMPLES, 4); //Request 4x antialiasing
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); //Request a specific OpenGL version
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3); //Request a specific OpenGL version
	//glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //We don't want the old OpenGL 


	//Create a window and create its OpenGL context
	m_window = glfwCreateWindow(m_ksiWindow_width, m_ksiWindow_height, "DM2231_Framework", NULL, NULL);

	//If the window couldn't be created
	if (!m_window)
	{
		fprintf( stderr, "Failed to open GLFW window.\n" );
		glfwTerminate();
		exit(EXIT_FAILURE);
	}

	//This function makes the context of the specified window current on the calling thread. 
	glfwMakeContextCurrent(m_window);

	//Sets the key callback
	//glfwSetKeyCallback(m_window, key_callback);
	glfwSetWindowSizeCallback(m_window, resize_callback);

	glewExperimental = true; // Needed for core profile
	//Initialize GLEW
	GLenum err = glewInit();

	//If GLEW hasn't initialized
	if (err != GLEW_OK) 
	{
		fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
		//return -1;
	}

	m_dElapsedTime =0.0;
	m_dAccumulatedTime_ThreadOne =0.0;
	m_dAccumulatedTime_ThreadTwo =0.0;
	m_uiFrequency = 1;
}

void Application::Run()
{
	//Main Loop
	//scene = new SceneShadow();
	scene = new SceneSP3();
	scene->Init();

	m_timer.startTimer();    // Start timer to calculate how long it takes to render this frame
	while (!glfwWindowShouldClose(m_window) && !IsKeyPressed(VK_ESCAPE))
	{
		//Get the elapsed time
		//m_dElapsedTime = m_timer.getElapsedTime();
		//m_dAccumulatedTime_ThreadOne += m_dElapsedTime;
		//m_dAccumulatedTime_ThreadTwo += m_dElapsedTime;
		
		//if(m_dAccumulatedTime_ThreadTwo > 0.03)
		//{
			//UpdateAI();
			
		//	m_dAccumulatedTime_ThreadTwo = 0.0;
		//}
		//if(m_dAccumulatedTime_ThreadOne > 1)
		//{
		GetMouseUpdate();
		GetKeyboardUpdate();
		scene->Update(m_timer.getElapsedTime());
		
		//	m_dAccumulatedTime_ThreadOne = 0.0;
		//}
		
		scene->Render();
		//Swap buffers
		glfwSwapBuffers(m_window);
		//Get and organize events, like keyboard and mouse input, window resizing, etc...
		glfwPollEvents();
        m_timer.waitUntil(frameTime);       // Frame rate limiter. Limits each frame to a specified time in ms.   

	} //Check if the ESC key had been pressed or if the window had been closed
	scene->Exit();
	delete scene;
}

void Application::Exit()
{
	//Close OpenGL window and terminate GLFW
	glfwDestroyWindow(m_window);
	//Finalize and clean up GLFW
	glfwTerminate();
}
