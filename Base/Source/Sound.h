#pragma once
#include <irrKlang.h>
using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")
class CSound
{
public:
	CSound(void);
	~CSound(void);

	void Footsteps();
	void Alert();
	void Music();
	void Rainfall();
	void Win();
	void Lose();
	void Level1();

private:
	ISoundEngine* engine;
	ISound* level1;
};

