#ifndef SCENESP3_H
#define SCENESP3_H

#include "Particle.h"
#include "Scene.h"
#include "Mtx44.h"
#include "Camera3.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Bullet.h"
#include "Minimap.h"
#include "Target.h"
#include "irrKlang.h"
#include "DepthFBO.h"
#include "Wall.h"
#include "Obj.h"
#include "Player.h"
#include "Physics.h"
#include "Map.h"
#include "FrustrumCulling.h"
#include "Warden.h"
#include "Guard.h"
#include "Enemy.h"
#include "Menu_States.h"
#include <vector>
#include <fstream>

//Modify this to load your level via string
const static string m_fileBuffer[5] = {"Level Sandbox"};
using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")

class SceneSP3 : public Scene
{
	const static int SKYBOXSIZE = 100;
	const static int INTERACTION_DISTANCE = 10;
	const static int AI_PATH_OFFSET_X = 16;
	const static int AI_PATH_OFFSET_Z = 15;
	const static int MAP_SIZE = 4096;
	const static int MAP_BOX_SIZE = 128;
	
	enum UNIFORM_TYPE
	{
		U_MVP = 0,
		U_MODELVIEW,
		U_MODELVIEW_INVERSE_TRANSPOSE,
		U_MATERIAL_AMBIENT,
		U_MATERIAL_DIFFUSE,
		U_MATERIAL_SPECULAR,
		U_MATERIAL_SHININESS,
		U_LIGHTENABLED,
		U_NUMLIGHTS,
		U_LIGHT0_TYPE,
		U_LIGHT0_POSITION,
		U_LIGHT0_COLOR,
		U_LIGHT0_POWER,
		U_LIGHT0_KC,
		U_LIGHT0_KL,
		U_LIGHT0_KQ,
		U_LIGHT0_SPOTDIRECTION,
		U_LIGHT0_COSCUTOFF,
		U_LIGHT0_COSINNER,
		U_LIGHT0_EXPONENT,
		U_LIGHT1_TYPE,
		U_LIGHT1_POSITION,
		U_LIGHT1_COLOR,
		U_LIGHT1_POWER,
		U_LIGHT1_KC,
		U_LIGHT1_KL,
		U_LIGHT1_KQ,
		U_LIGHT1_SPOTDIRECTION,
		U_LIGHT1_COSCUTOFF,
		U_LIGHT1_COSINNER,
		U_LIGHT1_EXPONENT,
		U_LIGHT2_TYPE,
		U_LIGHT2_POSITION,
		U_LIGHT2_COLOR,
		U_LIGHT2_POWER,
		U_LIGHT2_KC,
		U_LIGHT2_KL,
		U_LIGHT2_KQ,
		U_LIGHT2_SPOTDIRECTION,
		U_LIGHT2_COSCUTOFF,
		U_LIGHT2_COSINNER,
		U_LIGHT2_EXPONENT,
		U_LIGHT3_TYPE,
		U_LIGHT3_POSITION,
		U_LIGHT3_COLOR,
		U_LIGHT3_POWER,
		U_LIGHT3_KC,
		U_LIGHT3_KL,
		U_LIGHT3_KQ,
		U_LIGHT3_SPOTDIRECTION,
		U_LIGHT3_COSCUTOFF,
		U_LIGHT3_COSINNER,
		U_LIGHT3_EXPONENT,
		U_LIGHT4_TYPE,
		U_LIGHT4_POSITION,
		U_LIGHT4_COLOR,
		U_LIGHT4_POWER,
		U_LIGHT4_KC,
		U_LIGHT4_KL,
		U_LIGHT4_KQ,
		U_LIGHT4_SPOTDIRECTION,
		U_LIGHT4_COSCUTOFF,
		U_LIGHT4_COSINNER,
		U_LIGHT4_EXPONENT,
		U_COLOR_TEXTURE_ENABLED,
		U_COLOR_TEXTURE_ENABLED2,
		U_COLOR_TEXTURE,
		U_COLOR_TEXTURE2,
		U_TEXT_ENABLED,
		U_TEXT_COLOR,
		U_FOG_COLOR,
		U_FOG_START,
		U_FOG_END,
		U_FOG_DENSITY,
		U_FOG_TYPE,
		U_FOG_ENABLE,
		U_LIGHT_DEPTH_MVP_GPASS,
		U_LIGHT_DEPTH_MVP,
		U_SHADOW_MAP,
		U_TOTAL,
	};
	enum GEOMETRY_TYPE
	{
		/*----Basic Meshes----*/
		GEO_AXES,		// 0
		GEO_SPHERE,		// 1
		GEO_QUAD,		// 2
		GEO_CUBE,		// 3
		GEO_RING,		// 4
		GEO_CONE,		// 5
		GEO_TEXT,		// 6

		/*----Scene Meshes----*/
		// Wall
		GEO_WALL,		// 7

		// Furniture
		GEO_DOOR,		// 8
		GEO_BENCH,		// 9
		GEO_TABLE,		// 10
		GEO_TOILET,		// 11
		GEO_CCTV,		// 12
		GEO_DESK,		// 13
		GEO_CELL_DOOR,	// 14
		GEO_SEC_DOOR,	// 15
		GEO_BED,		// 16
		GEO_STOOL,		// 17

		// Keys
		GEO_MIN,		// 18
		GEO_MED,		// 19
		GEO_MAX,		// 20

		// Character parts
		// Inmate
		GEO_INMATE_ARM,		// 21
		GEO_INMATE_LEG,		// 22
		GEO_INMATE_BODY,	// 23
		GEO_INMATE_HEAD,	// 24

		// Guard
		GEO_GUARD_ARM,		// 25
		GEO_GUARD_LEG,		// 26
		GEO_GUARD_BODY,		// 27
		GEO_GUARD_HEAD,		// 28

		// Warden
		GEO_WARDEN_ARM,		// 29
		GEO_WARDEN_LEG,		// 30
		GEO_WARDEN_BODY,	// 31
		GEO_WARDEN_HEAD,	// 32

		// New objects
		GEO_BATON,			// 33
		GEO_CHAIR,			// 34
		GEO_FLASHLIGHT,		// 35
		GEO_FOOD_CARROT,	// 36
		GEO_FOOD_CONTAINER,	// 37
		GEO_FOOD_DONUT,		// 38
		GEO_FOOD_ORANGE,	// 39
		GEO_FOOD_RICE,		// 40
		GEO_FORK,			// 41
		GEO_SPOON,			// 42

		GEO_BOOK_1,			// 43
		GEO_BOOK_2,			// 44
		GEO_BOOKSHELF,		// 45
		GEO_COM_MON_1,		// 46
		GEO_COM_MON_2,		// 47
		GEO_CUPBOARD_1,		// 48
		GEO_CUPBOARD_2,		// 49
		GEO_HANGING_LIGHT,	// 50
		GEO_PLYER,			// 51
		GEO_POSTER_1,		// 52
		GEO_POSTER_2,		// 53
		GEO_RAILING,		// 54
		GEO_REFRIGERATOR,	// 55
		GEO_SCREWDRIVER,	// 56
		GEO_TOILET_2,		// 57
		GEO_WINDOW,			// 58

		//to render out the item UI on the bottom of screen
		GEO_CROSSHAIR_UI,
		GEO_ITEM_UI,
		GEO_MIN_UI,
		GEO_MED_UI,
		GEO_MAX_UI,

		//Menu system
		GEO_MENU_BACKGROUND,
		GEO_MENU,
		GEO_PAUSE_BACKGROUND,

		//TSL
		GEO_SKYPLANE,
		GEO_TERRAIN2,	//backup terrain with the read map height here.

		//Animations

		//Assignment1
		GEO_LIGHT_DEPTH_QUAD,
		GEO_DEBUG_AI,
		NUM_GEOMETRY,
	};

	enum RENDER_PASS
	{
		RENDER_PASS_PRE,
		RENDER_PASS_MAIN,
	};

protected:
	//Handler for the menu states
	int m_Current_Game_State;		//for the game
	int m_Menu_State;				//for the menu
	int m_Pause_State;				//for the pause menu
public:

	enum MENU_BUTTONS
	{
		MENU_PLAY = 0,
		MENU_BACK,
		MENU_EXIT
	};
	enum PAUSE_BUTTONS
	{
		PAUSE_PLAY = 0,
		PAUSE_RESTART,
		PAUSE_EXIT
	};
	enum GAME_STATES
	{
		GAME_MENU = 0,
		PAUSE_MENU,
		PLAY_GAME,
		WIN_LOSE_MENU,
		NUM_GAME_STATES
	};

public:
	SceneSP3();
	~SceneSP3();

	Vector3 TERRAIN_SCALE;

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

	/*** Experimental stuff ***/
	void initMenu();

	void UpdatePlay(double dt);
	void UpdateMenu();
	void UpdatePauseMenu();

	void RenderMainMenu();
	void RenderPauseMenu();
	void RenderGamePlay();
	void RenderWinOrLose();

	bool m_bQuit;
	/*** Experimental stuff ***/

	void initPlayer();
	void initEnemies();
	void initUniforms();
	void initVariables();
	void initMap();
	void initTokenForEnemyPathfinding();
	void initMeshlist();
	
	void initLights();
	
	void checkPickUpItem();

	//Loading of stuff
	bool LoadFromTextFileOBJ(const string mapString);
	bool LoadFromTextFileItem(const string mapString);
	bool LoadFromTextFileEnemy(const string mapString);

	//void bubbleSort(vector<Vector3> & list, Vector3 camPos, int length);
	CObj* FetchOBJ();
	CKey* FetchKey();

	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	void RenderMesh(Mesh *mesh, bool enableLight, bool enableFog = false);
	void RenderMeshIn2D(Mesh *mesh, float size = 1.0f, float x = 0.0f, float y = 0.0f, bool rotate = false, bool m_rotate = false);
	void RenderMeshUI(Mesh *mesh, float sizeX = 1.0f, float sizeY = 1.0f, float sizeZ = 1.0f, float x = 0.0f, float y = 0.0f, bool rotate = false, bool m_rotate = false);
	void RenderSkyPlane(Mesh* mesh, Color color, int slices, float PlanetRadius,float AtmosphereRadius, float hTile, float vTile);
	void RenderTerrain();
	void RenderObjList();
	void RenderKeyList();
	void RenderEnemyList();
	void RenderUI();
	
	void RenderDebugWireframe();

	//Test render 2D Partitioning
	void RenderTileMap();


	//Shadow things
	void RenderPassGPass();
	void RenderPassMain();
	void RenderWorld();

	virtual void UpdatePlayerStatus(const unsigned char key);
	virtual void UpdateCameraStatus( const unsigned char key);
	void UpdateEnemies();
	void UpdateSceneControls();

	const float GetCameraCurrentY(void);
	const float GetHeightMapY(float x, float z);
	const std::vector<unsigned char>GetHeightMap();
	static const int cameraYoffset = 20;

	//Toggle HUD mode
	void SetHUD(const bool m_bHUDmode);

	enum WEAPON_ACTION
	{
		WA_NIL = 0,
		WA_FIRE,
		WA_RELEASE,
		WA_RELOAD,
		WA_CHANGINGWEAPON,
		WA_TOTAL,

	};
	enum GUN_TYPE
	{
		GUN_SLOT_ONE,
		GUN_SLOT_TWO,
		GUN_SLOT_THREE,
	};
	Particle* FetchParticle();


private:
	std::vector<Particle *> m_paList;
	std::vector<CObj *> myObjList;
	std::vector<CKey *> myKeyList;
	std::vector<CEnemy *> myEnemyList;

	unsigned m_vertexArrayID;
	Mesh* meshList[NUM_GEOMETRY];
	unsigned m_programID;
	unsigned m_uiParameters[U_TOTAL];
	Camera3 camera;
	//Array of bullets
	CBullet* arrBullets;
	Target* arrTarget;

	MS modelStack;
	MS viewStack;
	MS projectionStack;

	Light lights[5];

	float m_fFps;
	
	//Current level of scene
	short int m_Current_Level;

	double m_dJumpingSpeed;
	bool m_bLightEnabled;
	//for terrain
	std::vector<unsigned char> m_heightMap;

	//Handle to the minimap
	CMinimap* m_cMinimap;
	//Maps to 2D paritioning
	CMap* m_cMap;

	//Handle to the player class
	CPlayer* thePlayer;

	//Handle to the menu state class
	CMenu_States* m_cMenu;

	//Bools to render in UI; can be modified or removed if too expensive
	bool MinCollected;
	bool MedCollected;
	bool MaxCollected;

	ISoundEngine* engine;
	ISound* music ;
	ISound* fire;

	//Fog
	Color fogColor;

	//Physics stuff
	float m_speed;
	//int m_objectCount;
	//Vector3 m_gravity;
	CPhysics physicsEngine;
	

	//Light Depth Buffer
	unsigned m_gPassShaderID;
	DepthFBO m_lightDepthFBO;
	Mtx44 m_lightDepthProj;
	Mtx44 m_lightDepthView;
	RENDER_PASS m_renderPass;
};

#endif