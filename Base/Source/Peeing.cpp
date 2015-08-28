#include "Peeing.h"


CPeeing::CPeeing(void)
	: iAmmo(0)
	, iAmmoSize(0)
	, fFiring(0.f)
	, fReload(0.f)
	, bActive(false)
	, bReload(false)
	, bIsFiring(false)
{
}
CPeeing::CPeeing(int iAmmo, int iAmmoSize, float fFiring, float fReload, bool bActive, bool bReload, bool bIsFiring)
{
	this->iAmmo = iAmmo;
	this->iAmmoSize = iAmmoSize;
	this->fFiring = fFiring;
	this->fReload = fReload;
	this->bActive = bActive;
	this->bReload = bReload;
	this->bIsFiring = bIsFiring;
}

CPeeing::~CPeeing(void)
{
}
//number of rounds for firing the polygons
void CPeeing::setAmmo(int iAmmo)
{
	this->iAmmo = iAmmo;
}
int CPeeing::getAmmo(void)
{
	return iAmmo;
}
//total number of rounds for firing the polygons
void CPeeing::setAmmoSize(int iAmmoSize)
{
	this->iAmmoSize = iAmmoSize;
}
int CPeeing::getAmmoSize(void)
{
	return iAmmoSize;
}
//firing time of feature
void CPeeing::setFiring(float fFiring)
{
	this->fFiring = fFiring;
}
float CPeeing::getFiring(void)
{
	return fFiring;
}

//reload time in between shots
void CPeeing::setReload(float fReload)
{
	this->fReload = fReload;
}
float CPeeing::getReload(void)
{
	return fReload;
}

//active?
void CPeeing::setActive(bool bActive)
{
	this->bActive = bActive;
}
bool CPeeing::getActive(void)
{
	return bActive;
}

//need to reload?
void CPeeing::setNeedReload(bool bReload)
{
	this->bReload = bReload;
}
bool CPeeing::getNeedReload(void)
{
	return bReload;
}

//is it firing?
void CPeeing::setIsFiring(bool bIsFiring)
{
	this->bIsFiring = bIsFiring;
}
bool CPeeing::getIsFiring(void)
{
	return bIsFiring;
}