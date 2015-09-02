#pragma once
#include <irrKlang.h>
#include "Vector3.h"
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

private:


};

