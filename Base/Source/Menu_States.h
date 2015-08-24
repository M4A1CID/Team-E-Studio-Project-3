#pragma once
class CMenu_States
{
protected:
	//Handler for the menu states
	int m_Current_Game_State;		//for the game
	int m_Menu_State;				//for the menu
public:

	enum MENU_BUTTONS
	{
		MENU_PLAY = 0,
		MENU_BACK,
		MENU_EXIT,
	};

	enum GAME_STATES
	{
		GAME_MENU = 0,
		SUB_MENU,
		INSTRUCTION_MENU,
		PLAY_GAME,
		WIN_LOSE_MENU,
		NUM_GAME_STATES
	};

	CMenu_States(void);
	~CMenu_States(void);
};

