#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"
#include "Camera3.h"
#include "Item.h"

class CPlayer
{
public:
	CPlayer(void);
	~CPlayer(void);

	void Init(bool active, Vector3 pos, Vector3 scale, int itemsHeld, int maxItemCap);

	void SetActive(bool active);
	bool GetActive(void);

	void SetPosition(Vector3 pos);
	Vector3 GetPosition(void);

	void SetScale(Vector3 scale);
	Vector3 GetScale(void);

	virtual void UpdateCameraStatus( const unsigned char key, Camera3 camera);
	void UpdatePosition(double dt, Camera3 camera);
	//to add in the collision detection here


	//inventory-related codes for player
	//considering to put this as one class if this gets too cluttered
	void setInventory(CItem* pickedUp);
	void setInventory(CItem* pickedUp, int slot);

	int getMaxItemCap();
	int getItemsHeld();
	std::vector<CItem*> getVector();
	CItem* getItem(int i);
private:
	Vector3 pos;
	Vector3 scale;	//for collision purposes
	bool active;	//if player is dead, this flips to false

	Camera3 camera;

	//below are the items-related code
	int itemsHeld;
	int maxItemCap;

	std::vector<CItem*> InventoryList;
};
#endif