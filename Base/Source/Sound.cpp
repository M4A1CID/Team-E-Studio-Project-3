#include "Sound.h"


CSound::CSound(void)
{
	engine = createIrrKlangDevice();
	level1 = NULL;
}


CSound::~CSound(void)
{
	
	if(level1)
	{
		level1->drop();
	}
}

void CSound::Music()
{
	if (!engine)
	{
		return;
	}

	ISound* music = NULL;
	music = engine->play2D("Sounds//Music.mp3", true);
}

void CSound::Footsteps()
{
	ISound* footsteps = NULL;
	footsteps = engine->play2D("Sounds//Footstep.mp3");
	//engine->setListenerPosition();
}

void CSound::Alert()
{
	ISound* alert = NULL;
	alert = engine->play2D("Sounds//Alert.mp3");
}
void CSound::Lose()
{
	ISound* lose;
	lose = engine->play2D("Sounds//Lose.mp3");
}
void CSound::Rainfall()
{
	ISound* rain = NULL;
	rain = engine->play2D("Sounds//Rain.mp3");
}
void CSound::Win()
{
	ISound* win = NULL;
	win = engine->play2D("Sounds//Win.mp3");
}
void CSound::Level1()
{
	//if(!level1)
	//	level1 = engine->play2D("Sounds//Kouyou.mp3", false,false,true);
}