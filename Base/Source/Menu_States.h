#pragma once
#include "Sound.h"
class CMenu_States
{
public:
	enum MENU_BUTTONS
	{
		MENU_PLAY = 0,
		MENU_INSTRUCTIONS,
		MENU_BACK,
		MENU_EXIT,
	};
	enum PAUSE_BUTTONS
	{
		PAUSE_PLAY = 0,
		PAUSE_RESTART,
		PAUSE_EXIT
	};
	//for player to control instructions UI
	enum INSTRUCTIONS_BUTTONS
	{
		INSTRUCTIONS_BACK = 0,
		INSTRUCTIONS_NEXT
	};
	enum INSTRUCTIONS_STATES
	{
		INSTRUCTIONS_1,
		INSTRUCTIONS_2,
		INSTRUCTIONS_3,
		INSTRUCTIONS_4,
		INSTRUCTIONS_EXIT
	};
	enum WIN_LOSE_BUTTONS
	{
		STATE_CONTINUE,
		STATE_RESTART,
		STATE_RETURN,
		STATE_MAX
	};
	enum GAME_STATES
	{
		GAME_MENU = 0,
		PAUSE_MENU,
		PLAY_GAME,
		INSTRUCTIONS,
		WIN_MENU,
		LOSE_MENU,
		NUM_GAME_STATES
	};

	CMenu_States(void);
	~CMenu_States(void);

	void SetMenuButtonState(CMenu_States::MENU_BUTTONS);
	CMenu_States::MENU_BUTTONS GetMenuButtonState(void);

	void SetInstructionsState(CMenu_States::INSTRUCTIONS_STATES);
	CMenu_States::INSTRUCTIONS_STATES GetInstructionsState(void);

	void SetInstructionsButtonState(CMenu_States::INSTRUCTIONS_BUTTONS);
	CMenu_States::INSTRUCTIONS_BUTTONS GetInstructionsButtonState(void);

	void SetWinLoseButtonState(CMenu_States::WIN_LOSE_BUTTONS);
	CMenu_States::WIN_LOSE_BUTTONS GetWinLoseButtonState(void);

	void SetGameState(CMenu_States::GAME_STATES);
	CMenu_States::GAME_STATES GetGameState(void);
	
	void SetPauseState(CMenu_States::PAUSE_BUTTONS);
	CMenu_States::PAUSE_BUTTONS GetPauseState(void);

	void SetReturnToMainMenuState(bool m_bReturnToMainMenu);
	bool GetReturnToMainMenuState(void);

	void SetQuitState(bool m_bQuit);
	bool GetQuitState(void);

	void SetRestartState(bool m_bRestart);
	bool GetRestartState(void);

	void SetPauseActive(bool m_bPauseActive);
	bool GetPauseActive(void);

	void SetTimer(double dTimer);
	double GetTimer(void);

	void SetWin(bool m_bWin);
	bool GetWin(void);

	void SetLose(bool m_bLose);
	bool GetLose(void);

	void UpdatePauseMenu(double&);
	void UpdateMenu(double&);
	void UpdateInstructions(double&);
	void UpdateCredits(double&);
	void UpdateWin(double&);
	void UpdateLose(double&);
private:
	//Handler for the menu states
	CMenu_States::GAME_STATES m_Current_Game_State;				//for the game
	CMenu_States::MENU_BUTTONS m_Menu_State;					//for the menu
	CMenu_States::PAUSE_BUTTONS m_Pause_State;					//for the pause menu
	CMenu_States::INSTRUCTIONS_BUTTONS m_Instructions_Button_State;	//for the instructions button state
	CMenu_States::INSTRUCTIONS_STATES m_Instructions_State;		//for the instructions menu
	CMenu_States::WIN_LOSE_BUTTONS m_Win_Lose_Button_State;		//to navigate through the win lose menu

	bool m_bQuit;						//trigger for exiting application
	bool m_bRestart;					//trigger for restarting the game
	bool m_bReturnToMainMenu;			//trigger for returning to main menu
	bool m_bPauseActive;				//trigger true if pause button is triggered.
	bool m_bInstructionsButtonPressed;	//trigger true if enter button is triggered.
	bool m_bWinButtonPressed;			//trigger true if enter button is triggered on win/lose menu
	bool m_bWin;						//trigger true if win condition is met
	bool m_bLose;						//trigger true if lose condition is met
	double dTimer;						//timer of pause to prevent flickering of screens

	CMenu_States::MENU_BUTTONS MenuState;
	CMenu_States::PAUSE_BUTTONS PauseState;
	CMenu_States::GAME_STATES GameState;

	CSound* soundEngine;
};

