#include "Goggles.h"


CGoggles::CGoggles(void)
	: bActive(false)
	, dTime(0)
	, cCount(0)
{
}
CGoggles::~CGoggles(void)
{
}
void CGoggles::SetActive(bool bActive)
{
	this->bActive = bActive;
}
bool CGoggles::GetActive(void)
{
	return bActive;
}
void CGoggles::SetTime(double dTime)
{
	this->dTime = dTime;
}
double CGoggles::GetTime(void)
{
	return dTime;
}
void CGoggles::SetCount(char cCount)
{
	this->cCount = cCount;
}
char CGoggles::GetCount(void)
{
	return cCount;
}