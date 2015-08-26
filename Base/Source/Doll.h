#pragma once
#include "Obj.h"

class CDoll : public CObj
{
public:
	CDoll(void);
	~CDoll(void);

	// Set functions
	void setFlipped(bool);
	void setAltFlipped(bool);
	
	// Get functions
	bool getFlipped(void);
	bool getAltFlipped(void);

private:
	bool m_bFlipped;
	bool m_bAltFlipped;
};

