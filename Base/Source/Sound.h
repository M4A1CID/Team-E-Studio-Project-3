#pragma once
#include <irrKlang.h>
using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")
class CSound
{
public:
	CSound(void);
	~CSound(void);

	void Footsteps(double dt);
	void Alert();
	void Music();
	void Rainfall();
	void Win();
	void Lose();

private:


};

