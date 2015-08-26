#include "Doll.h"


CDoll::CDoll(void)
{
	flipped = false;
}


CDoll::~CDoll(void)
{
}

// Set flipped
void CDoll::setFlipped(bool flipped)
{
	this->flipped = flipped;
}

// Get flipped
bool CDoll::getFlipped()
{
	return flipped;
}