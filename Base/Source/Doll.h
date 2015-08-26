#pragma once
#include "Obj.h"

class CDoll : public CObj
{
public:
	CDoll(void);
	~CDoll(void);

	// Set functions
	void setFlipped(bool);
	
	// Get functions
	bool getFlipped(void);

private:
	bool flipped;
};

