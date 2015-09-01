#pragma once
class CMenu_States
{
public:
	enum MENU_BUTTONS
	{
		MENU_PLAY = 0,
		MENU_INSTRUCTIONS,
		MENU_CREDITS,
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
	enum CREDITS_STATES
	{
		CREDITS_BACK = 0,
		CREDITS_EXIT
	};
	enum GAME_STATES
	{
		GAME_MENU = 0,
		PAUSE_MENU,
		PLAY_GAME,
		INSTRUCTIONS,
		CREDITS,
		WIN_LOSE_MENU,
		NUM_GAME_STATES
	};

	CMenu_States(void);
	~CMenu_States(void);

	void SetCreditsState(CMenu_States::CREDITS_STATES);
	CMenu_States::CREDITS_STATES GetCreditsState(void);

	void SetMenuButtonState(CMenu_States::MENU_BUTTONS);
	CMenu_States::MENU_BUTTONS GetMenuButtonState(void);

	void SetInstructionsState(CMenu_States::INSTRUCTIONS_STATES);
	CMenu_States::INSTRUCTIONS_STATES GetInstructionsState(void);

	void SetInstructionsButtonState(CMenu_States::INSTRUCTIONS_BUTTONS);
	CMenu_States::INSTRUCTIONS_BUTTONS GetInstructionsButtonState(void);

	void SetGameState(CMenu_States::GAME_STATES);
	CMenu_States::GAME_STATES GetGameState(void);
	
	void SetPauseState(CMenu_States::PAUSE_BUTTONS);
	CMenu_States::PAUSE_BUTTONS GetPauseState(void);

	void SetQuitState(bool m_bQuit);
	bool GetQuitState(void);

	void SetRestartState(bool m_bRestart);
	bool GetRestartState(void);

	void SetPauseActive(bool m_bPauseActive);
	bool GetPauseActive(void);

	void SetTimer(double dTimer);
	double GetTimer(void);

	void UpdatePauseMenu(double&);
	void UpdateMenu(double&);
	void UpdateInstructions(double&);
	void UpdateCredits(double&);
private:
	//Handler for the menu states
	CMenu_States::GAME_STATES m_Current_Game_State;				//for the game
	CMenu_States::MENU_BUTTONS m_Menu_State;					//for the menu
	CMenu_States::PAUSE_BUTTONS m_Pause_State;					//for the pause menu
	CMenu_States::INSTRUCTIONS_BUTTONS m_Instructions_Button_State;	//for the instructions button state
	CMenu_States::INSTRUCTIONS_STATES m_Instructions_State;		//for the instructions menu
	CMenu_States::CREDITS_STATES m_Credits_State;				//for the credits menu

	bool m_bQuit;						//trigger for exiting application
	bool m_bRestart;					//trigger for restarting the game		
	bool m_bPauseActive;				//trigger true if pause button is triggered.
	bool m_bInstructionsButtonPressed;	//trigger true if enter button is triggered.
	bool m_bCreditsState;				//trigger true if credits button is triggered.
	double dTimer;						//timer of pause to prevent flickering of screens
	double dTimer2;						//for the credits

	CMenu_States::MENU_BUTTONS MenuState;
	CMenu_States::PAUSE_BUTTONS PauseState;
	CMenu_States::GAME_STATES GameState;
};

