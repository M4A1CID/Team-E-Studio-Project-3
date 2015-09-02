#include "Sound.h"


CSound::CSound(void)
	: engine(NULL)
	, music(NULL)
	, footsteps(NULL)
	, alert(NULL)
	, lose(NULL)
	, rain(NULL)
	, win(NULL)
{
	//use a singleton approach to ensure that engine is not initialised more than once
	if(engine == NULL)
		engine = createIrrKlangDevice();
}


CSound::~CSound(void)
{
	if(engine)
	{
		engine->drop();
	}
}
ISoundEngine* CSound::getEngine(void)
{
	return this->engine;
}
void CSound::Music()
{
	if(music == NULL)
		music = engine->play2D("Sounds//Music.mp3", false, true);
	//trigger this sound
	if(music->getIsPaused())
	{
		music->setIsPaused(false);
	}
	if(music->isFinished())
	{
		music = NULL;
	}
}

void CSound::Footsteps()
{
	if(footsteps == NULL)
		footsteps = engine->play2D("Sounds//Footstep.mp3");
}

void CSound::Alert()
{
	if(alert == NULL)
		alert = engine->play2D("Sounds//Alert.mp3", false, true);
	//trigger this sound
	if(alert->getIsPaused())
	{
		alert->setIsPaused(false);
	}
}
void CSound::Lose()
{
	if(lose == NULL)
		lose = engine->play2D("Sounds//Lose.mp3");
}
void CSound::Rainfall()
{
	if(rain == NULL)
		rain = engine->play2D("Sounds//Rain.mp3");
}
void CSound::Win()
{
	if(win == NULL)
		win = engine->play2D("Sounds//Win.mp3");
}