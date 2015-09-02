#include "Sound.h"

ISoundEngine* engine = createIrrKlangDevice(ESOD_AUTO_DETECT, ESEO_MULTI_THREADED | ESEO_LOAD_PLUGINS | ESEO_USE_3D_BUFFERS);
CSound::CSound(void)
{
}


CSound::~CSound(void)
{
	if (engine)
	{
		delete engine;
		engine = NULL;
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

void CSound::Footsteps(double dt)
{
	ISound* footsteps = NULL;
	footsteps = engine->play2D("Sounds//Footstep.mp3");
}

void CSound::Alert()
{
	ISound* alert = NULL;
	alert = engine->play2D("Sounds//Alert.wav");
}
void CSound::Lose()
{
	ISound* lose;
	lose = engine->play2D("Sounds//Lose.wav");
}
void CSound::Rainfall()
{
	ISound* rain;
	rain = engine->play2D("Sounds//Rain.wav");
}
void CSound::Win()
{
	ISound* win;
	win = engine->play2D("Sounds//Win.wav");
}