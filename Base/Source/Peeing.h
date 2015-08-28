#pragma once
class CPeeing
{
private:
	int iAmmo;	//amount of ammo for peeing to work
	int iAmmoSize;	//clip size of peeing

	float fFiring;	//reload interval in between shots
	float fReload;	//reload timing for peeing feature

	bool bActive;	//active or not?
	bool bReload;	//do we need to reload?
	bool bIsFiring;	//is the player using the feature?

public:
	CPeeing(void);
	CPeeing(int iAmmo, int iAmmoSize, float fFiring, float fReload, bool bActive, bool bReload, bool bIsFiring);
	~CPeeing(void);
	
	//number of rounds for firing the polygons
	void setAmmo(int iAmmo);
	int getAmmo(void);

	//total number of rounds for firing the polygons
	void setAmmoSize(int iAmmoSize);
	int getAmmoSize(void);

	//firing time of feature
	void setFiring(float fFiring);
	float getFiring(void);

	//reload time in between shots
	void setReload(float fReload);
	float getReload(void);

	//active?
	void setActive(bool bActive);
	bool getActive(void);

	//need to reload?
	void setNeedReload(bool bReload);
	bool getNeedReload(void);

	//is it firing?
	void setIsFiring(bool bIsFiring);
	bool getIsFiring(void);
};

