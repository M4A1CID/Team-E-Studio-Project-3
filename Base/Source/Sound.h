#pragma once
#include <irrKlang.h>
using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")
class CSound
{
public:
	CSound(void);
	virtual ~CSound(void);

	ISoundEngine* getEngine(void);

	void Footsteps();
	void Alert();
	void Music();
	void Rainfall();
	void Win();
	void Lose();

private:
	ISoundEngine* engine;
	ISound* music;
	ISound* footsteps;
	ISound* alert;
	ISound* lose;
	ISound* rain;
	ISound* win;
};

