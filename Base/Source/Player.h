#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"
#include "Camera3.h"
#include "Item.h"
#include "Key.h"
#include "Obj.h"
#include "Laser.h"

class CPlayer
{
public:
	CPlayer(void);
	CPlayer(bool active, Vector3 pos, Vector3 scale);
	~CPlayer(void);

	//void Init(bool active, Vector3 pos, Vector3 scale, int itemsHeld, int maxItemCap);
	
	// Set player detected
	void SetDetected(bool);
	// Get player detected
	bool GetDetected(void);

	void SetActive(bool);
	bool GetActive(void);

	//a blanket definition of player's position
	void SetPosition(Vector3);
	Vector3 GetPosition(void);

	//a blanket definition of player's scale/hitbox
	void SetScale(Vector3 scale);
	Vector3 GetScale(void);

	//set the position of player
	void SetPositionX(float);
	void SetPositionY(float);
	void SetPositionZ(float);

	//get the position of player
	float GetPositionX(void);
	float GetPositionY(void);
	float GetPositionZ(void);

	//set the Scale of player
	void SetScaleX(float);
	void SetScaleY(float);
	void SetScaleZ(float);

	//get the Scale of player
	float GetScaleX(void);
	float GetScaleY(void);
	float GetScaleZ(void);

	virtual void UpdateCameraStatus( const unsigned char& key, Camera3& camera);
	virtual void UpdatePosition(double&, Camera3&);
	//to add in the collision detection here


	//inventory-related codes for player
	//considering to put this as one class if this gets too cluttered
	void setInventory(CItem* pickedUp);
	void setInventory(CItem* pickedUp, int slot);

	void setKeyList(CKey* pickedUp);
	void setKeyList(CKey* pickedUp, int slot);

	// Animations
	void Walking();
	void Idle();
	void Running();
	void Jump();
	void Crouch();

	// Get the inventory Vector for CItems
	std::vector<CItem*> getItemVector();

	// Get the Key vector for CKey*
	std::vector<CKey*> getKeyVector();
	CItem* getItem(int i);

private:
	Vector3 pos;	// position of player
	Vector3 scale;	// scale of hitbox of player
	bool active;	// if player is dead, this flips to false
	bool detected;	// if the player is detected
	Camera3 camera;

	std::vector<CItem*> InventoryList;	// the list of items inside player's inventory
	std::vector<CKey*> KeyList;			//List of keys inside player's inventory
};
#endif