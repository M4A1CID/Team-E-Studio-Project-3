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
#include <vector>
#include <fstream>


using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")

class SceneSP3 : public Scene
{
	const static int SKYBOXSIZE = 100;

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
		GEO_AXES,		// 0
		GEO_SPHERE,		// 1
		GEO_QUAD,		// 2
		GEO_CUBE,		// 3
		GEO_RING,		// 4
		GEO_CONE,		// 5
		GEO_TEXT,		// 6
		GEO_WALL,		// 7
		GEO_DOOR,		// 8
		GEO_BENCH,		// 9
		GEO_TABLE,		// 10
		GEO_TOILET,		// 11
		GEO_CCTV,		// 12
		GEO_ARM,		// 13
		GEO_LEG,		// 14
		GEO_BODY,		// 15
		GEO_HEAD,		// 16
		GEO_DESK,		// 17
		GEO_CELL_DOOR,	// 18
		GEO_ITEM_UI,	//to render out the item UI on the bottom of screen

		//TSL
		GEO_SKYPLANE,
		GEO_TERRAIN,
		GEO_TERRAIN2,	//backup terrain with the read map height here.

		//Animations

		//Assignment1
		GEO_LIGHT_DEPTH_QUAD,
		NUM_GEOMETRY,
	};

	enum RENDER_PASS
	{
		RENDER_PASS_PRE,
		RENDER_PASS_MAIN,
	};
public:
	SceneSP3();
	~SceneSP3();

	Vector3 TERRAIN_SCALE;

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

	void initPlayer();			//initialize player class info here. this is done to make the code more organized

	void initUniforms();
	void initVariables();
	void initMeshlist();
	

	//void bubbleSort(vector<Vector3> & list, Vector3 camPos, int length);
	CObj* FetchOBJ();

	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	void RenderMesh(Mesh *mesh, bool enableLight, bool enableFog = false);
	void RenderMeshIn2D(Mesh *mesh, bool enableLight, float size = 1.0f, float x = 0.0f, float y = 0.0f, bool rotate = false, bool m_rotate = false);
	void RenderSkyPlane(Mesh* mesh, Color color, int slices, float PlanetRadius,float AtmosphereRadius, float hTile, float vTile); 
	void RenderTerrain();
	void RenderObjList();
	void RenderDebugWireframe();

	//Shadow things
	void RenderPassGPass();
	void RenderPassMain();
	void RenderWorld();


	virtual void UpdatePlayerStatus(const unsigned char key);
	virtual void UpdateCameraStatus( const unsigned char key);
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
	//std::vector<Vector3> m_treeList;
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
	//Crouch
	void CharacterCrouch();

	bool LoadFromTextFileOBJ(const string mapString);

	double m_dJumpingSpeed;
	bool m_bLightEnabled;
	//for terrain
	std::vector<unsigned char> m_heightMap;

	//Handle to the minimap
	CMinimap* m_cMinimap;

	//Handle to the player class
	CPlayer* thePlayer;

	ISoundEngine* engine;
	ISound* music ;
	ISound* fire;

	Color fogColor;

	//Physics stuff
	float m_speed;
	int m_objectCount;
	Vector3 m_gravity;
	CPhysics physicsEngine;
	

	//Light Depth Buffer
	unsigned m_gPassShaderID;
	DepthFBO m_lightDepthFBO;
	Mtx44 m_lightDepthProj;
	Mtx44 m_lightDepthView;
	RENDER_PASS m_renderPass;
};

#endif