#ifndef ASSIGNMENT_1_H
#define ASSIGNMENT_1_H

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
#include <vector>

using namespace irrklang;
#pragma comment(lib, "irrKlang.lib")

class Assignment1 : public Scene
{
	const static int AUTO_FIRE_RATE = 1;
	const static int MAX_ARROW_PULL_BACK_TIME = 3;
	const static int ARR_BULLET_SIZE = 30;
	const static int ARR_TARGET_SIZE = 10;
	static const int SKYBOXSIZE = 4000;
	const static int RELOAD_TIME = 3;
	const static int TREE_OFFSET = 20;
	



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
		GEO_AXES,
		GEO_TREE,
		GEO_TREE2,
		GEO_LEAF,
		GEO_SMOKE,
		GEO_ROAD,
		GEO_SPARKS,
		GEO_SPHERE,
		GEO_QUAD,
		GEO_CUBE,
		GEO_RING,
		GEO_CONE,
		GEO_TEXT,
		//TSL
		GEO_SKYPLANE,
		GEO_TERRAIN,
		//Animations
		GEO_ANIMATION_FIRE,
		GEO_ANIMATION_BIRD,
		GEO_JOJO,
		GEO_ANIMATION_STICKFIGHT,
		GEO_ANIMATION_KIRITO,
		GEO_ANIMATION_KIRITO2,
		//Assignment1
		GEO_SHOOTING_PARAPET,
		GEO_BARREL,
		GEO_TABLE,
		GEO_CRATE,
		GEO_COMBINED_CRATE,
		GEO_HUMVEE,
		GEO_WATERMELON,
		GEO_EARMUFF,
		GEO_ROAD_BLOCK,
		GEO_CAR,
		GEO_CAR_SCREEN,
		GEO_WATCH_TOWER,
		GEO_BUILDING1,
		GEO_SPOTLIGHT,
		GEO_LIGHT_DEPTH_QUAD,
		GEO_TENT,
		GEO_WATER,
		GEO_M4A1,
		GEO_TELEVISION,
		GEO_TARGET,
		GEO_GAZEBO,
		GEO_LAMPPOST,
		NUM_GEOMETRY,
	};

	enum RENDER_PASS
	{
		RENDER_PASS_PRE,
		RENDER_PASS_MAIN,
	};
public:
	Assignment1();
	~Assignment1();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

	void initUniforms();
	void initVariables();
	void initMeshlist();
	

	void bubbleSort(vector<Vector3> & list, Vector3 camPos, int length);


	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	void RenderMesh(Mesh *mesh, bool enableLight);
	void RenderMeshIn2D(Mesh *mesh, bool enableLight, float size = 1.0f, float x = 0.0f, float y = 0.0f, bool rotate = false, bool m_rotate = false);
	void RenderSkyPlane(Mesh* mesh, Color color, int slices, float PlanetRadius,float AtmosphereRadius, float hTile, float vTile); 
	void RenderTerrain();
	void RenderTrees();
	void RenderUI();
	void RenderStartZone();
	void RenderTargets();
	void RenderGO(Particle *go);
	void RenderParticle();
	void RenderAnimations();

	//Shadow things
	void RenderPassGPass();
	void RenderPassMain();
	void RenderWorld();

	void GenerateTrees();
	virtual void UpdateCameraStatus( const unsigned char key);
	void UpdateSceneControls();
	void UpdateParticle(double dt);

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
	std::vector<Vector3> m_treeList;
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
	bool m_is_Nighttime;
	bool m_Bird_Moving_Right;


	//Handle particle effect
	float m_SmokeLastSpawned;
	float m_LeafLastSpawned;
	float m_waterRotation;
	float m_bird_Movement;
	float m_sparks;
	float m_flickerTimer;


	
	float m_fFps;

	double m_dJumpingSpeed;
	bool m_bLightEnabled;
	std::vector<unsigned char> m_heightMap;

	//Handle to the minimap
	CMinimap* m_cMinimap;


	ISoundEngine* engine;
	ISound* music ;
	ISound* fire;

	Color fogColor;

	//Physics stuff
	float m_speed;
	int m_objectCount;
	Vector3 m_gravity;
	Vector3 CAMPFIRE1;
	Vector3 LAMPPOST1;
	

	//Light Depth Buffer
	unsigned m_gPassShaderID;
	DepthFBO m_lightDepthFBO;
	Mtx44 m_lightDepthProj;
	Mtx44 m_lightDepthView;
	RENDER_PASS m_renderPass;
};

#endif