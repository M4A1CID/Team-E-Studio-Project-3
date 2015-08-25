#include "Menu_States.h"
#include "Application.h"

CMenu_States::CMenu_States(void)
	: m_Current_Game_State(GAME_MENU)
	, m_Menu_State(MENU_PLAY)
	, m_Pause_State(PAUSE_PLAY)
	, m_bQuit(false)
	, m_bRestart(false)
	, m_bPauseActive(false)
	, dTimer(0.5)
{
}
CMenu_States::~CMenu_States(void)
{
}
void CMenu_States::SetMenuButtonState(CMenu_States::MENU_BUTTONS m_Menu_State)
{
	this->m_Menu_State = m_Menu_State;
}
CMenu_States::MENU_BUTTONS CMenu_States::GetMenuButtonState(void)
{
	return m_Menu_State;
}
void CMenu_States::SetGameState(CMenu_States::GAME_STATES m_Current_Game_State)
{
	this->m_Current_Game_State = m_Current_Game_State;
}
CMenu_States::GAME_STATES CMenu_States::GetGameState(void)
{
	return m_Current_Game_State;
}
void CMenu_States::SetPauseState(CMenu_States::PAUSE_BUTTONS m_Pause_State)
{
	this->m_Pause_State = m_Pause_State;
}
CMenu_States::PAUSE_BUTTONS CMenu_States::GetPauseState(void)
{
	return m_Pause_State;
}
void CMenu_States::SetQuitState(bool m_bQuit)
{
	this->m_bQuit = m_bQuit;
}
bool CMenu_States::GetQuitState(void)
{
	return m_bQuit;
}
void CMenu_States::SetRestartState(bool m_bRestart)
{
	this->m_bRestart = m_bRestart;
}
bool CMenu_States::GetRestartState(void)
{
	return m_bRestart;
}
void CMenu_States::SetPauseActive(bool m_bPauseActive)
{
	this->m_bPauseActive = m_bPauseActive;
}
bool CMenu_States::GetPauseActive(void)
{
	return m_bPauseActive;
}
void CMenu_States::SetTimer(double dTimer)
{
	this->dTimer = dTimer;
}
double CMenu_States::GetTimer(void)
{
	return dTimer;
}
void CMenu_States::UpdatePauseMenu(double &dt)
{
	//Using the down button
	static bool bDownButton = false;
	if(!bDownButton && Application::IsKeyPressed(VK_DOWN))
	{
		bDownButton = true;
		//Check if player is at pause menu
		if(m_Current_Game_State == PAUSE_MENU)
		{
			//check the pause state
			if(m_Pause_State == PAUSE_PLAY)
				m_Pause_State = PAUSE_RESTART;
			else if(m_Pause_State == PAUSE_RESTART)
				m_Pause_State = PAUSE_EXIT;
			//reset the pointer
			else if(m_Pause_State == PAUSE_EXIT)
				m_Pause_State = PAUSE_PLAY;
		}
	}
	else if(bDownButton && !Application::IsKeyPressed(VK_DOWN))
	{
		bDownButton = false;
	}

	//Using the Up button
	static bool bUpButton = false;
	if(!bUpButton && Application::IsKeyPressed(VK_UP))
	{
		bUpButton = true;
		//Check if player is at pause menu
		if(m_Current_Game_State == PAUSE_MENU)
		{
			//check the pause state
			if(m_Pause_State == PAUSE_PLAY)
				m_Pause_State = PAUSE_EXIT;
			else if(m_Pause_State == PAUSE_EXIT)
				m_Pause_State = PAUSE_RESTART;
			//reset the pointer
			else if(m_Pause_State == PAUSE_RESTART)
				m_Pause_State = PAUSE_PLAY;
		}
	}
	else if(bUpButton && !Application::IsKeyPressed(VK_UP))
	{
		bUpButton = false;
	}

	//Handle the Enter Button
	static bool bEnterButton = false;
	if(!bEnterButton && Application::IsKeyPressed(VK_RETURN))
	{
		bEnterButton = true;

		if(m_Pause_State == PAUSE_PLAY)
		{
			//let the player continue playing the game as it is
			m_Current_Game_State = PLAY_GAME;
			m_bPauseActive = false;
		}
		else if(m_Pause_State == PAUSE_RESTART)
		{
			//restart the level
			m_Current_Game_State = PLAY_GAME;
			m_Pause_State = PAUSE_PLAY;
			m_bRestart = true;
			m_bPauseActive = false;
		}
		else if(m_Pause_State == PAUSE_EXIT)
		{
			m_bQuit = true;
		}
	}
	else if(bEnterButton && Application::IsKeyPressed(VK_RETURN))
	{
		bEnterButton = false;
	}

	static bool bESCButton = false;
	if(m_bPauseActive)
	{
		dTimer -= dt;
	}
	if(Application::IsKeyPressed(VK_ESCAPE) && !bESCButton && m_bPauseActive && dTimer < 0) // if ESC pressed and not in pause - make sure only when pressed then update
	{
		bESCButton = true;
		m_bPauseActive = false;	
	}
	//if key release
	else if((!Application::IsKeyPressed(VK_ESCAPE)) && bESCButton) // when release , prevent holding down bug
	{
		//update to pause menu here
		bESCButton = false;
	}
	if(!m_bPauseActive)
	{
		m_Current_Game_State = PLAY_GAME;
		dTimer = 0.5;
	}
}
void CMenu_States::UpdateMenu(double &dt)
{
	//Using the down button
	static bool bDownButton = false;
	if(!bDownButton && Application::IsKeyPressed(VK_DOWN))
	{
		bDownButton = true;
		//Check if player is at main menu
		if(m_Current_Game_State == GAME_MENU)
		{
			//check the menu state
			if(m_Menu_State == MENU_PLAY)
				m_Menu_State = MENU_EXIT;
			//reset the pointer
			else
				m_Menu_State = MENU_PLAY;
		}
	}
	else if(bDownButton && !Application::IsKeyPressed(VK_DOWN))
	{
		bDownButton = false;
	}

	//Using the Up button
	static bool bUpButton = false;
	if(!bUpButton && Application::IsKeyPressed(VK_UP))
	{
		bUpButton = true;
		//Check if player is at main menu
		if(m_Current_Game_State == GAME_MENU)
		{
			//check the menu state
			if(m_Menu_State == MENU_PLAY)
				m_Menu_State = MENU_EXIT;
			else
				m_Menu_State = MENU_PLAY;
		}
	}
	else if(bUpButton && !Application::IsKeyPressed(VK_UP))
	{
		bUpButton = false;
	}

	//Handle the Enter Button
	static bool bEnterButton = false;
	if(!bEnterButton && Application::IsKeyPressed(VK_RETURN))
	{
		bEnterButton = true;

		//player is playing game
		if(m_Menu_State == MENU_PLAY)
		{
			m_Current_Game_State = PLAY_GAME;
		}
		else if(m_Menu_State == MENU_EXIT)
		{
			m_bQuit = true;
		}
		else if(m_Menu_State == MENU_BACK)
		{
			m_Current_Game_State = GAME_MENU;
			m_Menu_State = MENU_PLAY;
		}
	}
	else if(bEnterButton && Application::IsKeyPressed(VK_RETURN))
	{
		bEnterButton = false;
	}

	//Handle the escape key. Ensure that it doesn't trigger pause menu
	if(Application::IsKeyPressed(VK_ESCAPE))
	{
		//do nothing
	}
}