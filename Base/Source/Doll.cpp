#include "Doll.h"


CDoll::CDoll(void)
{
	m_bFlipped = false;
	m_bAltFlipped = true;
}


CDoll::~CDoll(void)
{
}

// Set flipped
void CDoll::setFlipped(bool flipped)
{
	this->m_bFlipped = flipped;
}

// Get flipped
bool CDoll::getFlipped()
{
	return m_bFlipped;
}

// Set alt flipped
void CDoll::setAltFlipped(bool flipped)
{
	this->m_bAltFlipped = flipped;
}

// Get alt flipped
bool CDoll::getAltFlipped()
{
	return m_bAltFlipped;
}