#include "SceneSP3.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "MeshBuilder.h"
#include "Application.h"
#include "Utility.h"
#include "LoadTGA.h"
#include "LoadHmap.h"

#include <sstream>

SceneSP3::SceneSP3()
	: m_cMinimap(NULL)
	, thePlayer(NULL)
	, m_cMap(NULL)
{

}

SceneSP3::~SceneSP3()
{
	if(m_cMinimap)
	{
		delete m_cMinimap;
		m_cMinimap = NULL;
	}
	if(thePlayer)
	{
		delete thePlayer;
		thePlayer = NULL;
	}
	if(m_cMap)
	{
		delete m_cMap;
		m_cMap = NULL;
	}
}

void SceneSP3::initPlayer()
{
	//initialize the player class using the overloaded constructor
	//the parameters are as follows: active, position, scale, items player is holding, total number of items that can be held
	thePlayer = new CPlayer(true, Vector3(0, 20, 10), Vector3(5, 5, 5), 0, 2);

	//thePlayer->Init(false, Vector3(0, 20, 10), Vector3 (5, 5, 5), 0, 2);
}
void SceneSP3::initMap()
{
	m_cMap = new CMap();
	m_cMap->Init( 4096, 4096, 32, 32, 4096, 4096, 128,'1'); //Init level 1
	m_cMap->LoadMap( "Variables/Level Sandbox/Level1.csv" ); // Load level 1
}
void SceneSP3::Init()
{
	initUniforms(); // Init the standard Uniforms
	initPlayer();
	initMeshlist();
	initVariables();

	camera.Init(Vector3(0, 40, 10), Vector3(0, 40, 0), Vector3(0, 1, 0), m_heightMap, TERRAIN_SCALE);
	
	// Projection matrix : 45° Field of View, 4:3 ratio, display range : 0.1 unit <-> 1000 units
	Mtx44 perspective;
	perspective.SetToPerspective(45.0f, 4.0f / 3.0f, 0.1f, 10000.0f);
	//perspective.SetToOrtho(-80, 80, -60, 60, -1000, 1000);
	projectionStack.LoadMatrix(perspective);
}
void SceneSP3::initLights()
{
	m_uiParameters[U_LIGHT0_TYPE] = glGetUniformLocation(m_programID, "lights[0].type");
	m_uiParameters[U_LIGHT0_POSITION] = glGetUniformLocation(m_programID, "lights[0].position_cameraspace");
	m_uiParameters[U_LIGHT0_COLOR] = glGetUniformLocation(m_programID, "lights[0].color");
	m_uiParameters[U_LIGHT0_POWER] = glGetUniformLocation(m_programID, "lights[0].power");
	m_uiParameters[U_LIGHT0_KC] = glGetUniformLocation(m_programID, "lights[0].kC");
	m_uiParameters[U_LIGHT0_KL] = glGetUniformLocation(m_programID, "lights[0].kL");
	m_uiParameters[U_LIGHT0_KQ] = glGetUniformLocation(m_programID, "lights[0].kQ");
	m_uiParameters[U_LIGHT0_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[0].spotDirection");
	m_uiParameters[U_LIGHT0_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[0].cosCutoff");
	m_uiParameters[U_LIGHT0_COSINNER] = glGetUniformLocation(m_programID, "lights[0].cosInner");
	m_uiParameters[U_LIGHT0_EXPONENT] = glGetUniformLocation(m_programID, "lights[0].exponent");


	//m_uiParameters[U_LIGHT1_TYPE] = glGetUniformLocation(m_programID, "lights[1].type");
	//m_uiParameters[U_LIGHT1_POSITION] = glGetUniformLocation(m_programID, "lights[1].position_cameraspace");
	//m_uiParameters[U_LIGHT1_COLOR] = glGetUniformLocation(m_programID, "lights[1].color");
	//m_uiParameters[U_LIGHT1_POWER] = glGetUniformLocation(m_programID, "lights[1].power");
	//m_uiParameters[U_LIGHT1_KC] = glGetUniformLocation(m_programID, "lights[1].kC");
	//m_uiParameters[U_LIGHT1_KL] = glGetUniformLocation(m_programID, "lights[1].kL");
	//m_uiParameters[U_LIGHT1_KQ] = glGetUniformLocation(m_programID, "lights[1].kQ");
	//m_uiParameters[U_LIGHT1_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[1].spotDirection");
	//m_uiParameters[U_LIGHT1_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[1].cosCutoff");
	//m_uiParameters[U_LIGHT1_COSINNER] = glGetUniformLocation(m_programID, "lights[1].cosInner");
	//m_uiParameters[U_LIGHT1_EXPONENT] = glGetUniformLocation(m_programID, "lights[1].exponent");


	/*m_uiParameters[U_LIGHT2_TYPE] = glGetUniformLocation(m_programID, "lights[2].type");
	m_uiParameters[U_LIGHT2_POSITION] = glGetUniformLocation(m_programID, "lights[2].position_cameraspace");
	m_uiParameters[U_LIGHT2_COLOR] = glGetUniformLocation(m_programID, "lights[2].color");
	m_uiParameters[U_LIGHT2_POWER] = glGetUniformLocation(m_programID, "lights[2].power");
	m_uiParameters[U_LIGHT2_KC] = glGetUniformLocation(m_programID, "lights[2].kC");
	m_uiParameters[U_LIGHT2_KL] = glGetUniformLocation(m_programID, "lights[2].kL");
	m_uiParameters[U_LIGHT2_KQ] = glGetUniformLocation(m_programID, "lights[2].kQ");
	m_uiParameters[U_LIGHT2_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[2].spotDirection");
	m_uiParameters[U_LIGHT2_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[2].cosCutoff");
	m_uiParameters[U_LIGHT2_COSINNER] = glGetUniformLocation(m_programID, "lights[2].cosInner");
	m_uiParameters[U_LIGHT2_EXPONENT] = glGetUniformLocation(m_programID, "lights[2].exponent");

	m_uiParameters[U_LIGHT3_TYPE] = glGetUniformLocation(m_programID, "lights[3].type");
	m_uiParameters[U_LIGHT3_POSITION] = glGetUniformLocation(m_programID, "lights[3].position_cameraspace");
	m_uiParameters[U_LIGHT3_COLOR] = glGetUniformLocation(m_programID, "lights[3].color");
	m_uiParameters[U_LIGHT3_POWER] = glGetUniformLocation(m_programID, "lights[3].power");
	m_uiParameters[U_LIGHT3_KC] = glGetUniformLocation(m_programID, "lights[3].kC");
	m_uiParameters[U_LIGHT3_KL] = glGetUniformLocation(m_programID, "lights[3].kL");
	m_uiParameters[U_LIGHT3_KQ] = glGetUniformLocation(m_programID, "lights[3].kQ");
	m_uiParameters[U_LIGHT3_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[3].spotDirection");
	m_uiParameters[U_LIGHT3_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[3].cosCutoff");
	m_uiParameters[U_LIGHT3_COSINNER] = glGetUniformLocation(m_programID, "lights[3].cosInner");
	m_uiParameters[U_LIGHT3_EXPONENT] = glGetUniformLocation(m_programID, "lights[3].exponent");

	m_uiParameters[U_LIGHT4_TYPE] = glGetUniformLocation(m_programID, "lights[4].type");
	m_uiParameters[U_LIGHT4_POSITION] = glGetUniformLocation(m_programID, "lights[4].position_cameraspace");
	m_uiParameters[U_LIGHT4_COLOR] = glGetUniformLocation(m_programID, "lights[4].color");
	m_uiParameters[U_LIGHT4_POWER] = glGetUniformLocation(m_programID, "lights[4].power");
	m_uiParameters[U_LIGHT4_KC] = glGetUniformLocation(m_programID, "lights[4].kC");
	m_uiParameters[U_LIGHT4_KL] = glGetUniformLocation(m_programID, "lights[4].kL");
	m_uiParameters[U_LIGHT4_KQ] = glGetUniformLocation(m_programID, "lights[4].kQ");
	m_uiParameters[U_LIGHT4_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[4].spotDirection");
	m_uiParameters[U_LIGHT4_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[4].cosCutoff");
	m_uiParameters[U_LIGHT4_COSINNER] = glGetUniformLocation(m_programID, "lights[4].cosInner");
	m_uiParameters[U_LIGHT4_EXPONENT] = glGetUniformLocation(m_programID, "lights[4].exponent");*/

	lights[0].type = Light::LIGHT_DIRECTIONAL;
	lights[0].position.Set(-2000, 100, 500);
	lights[0].color.Set(0.7f, 0.7f, 0.5f);
	lights[0].power = 1.f;
	lights[0].kC = 1.f;
	lights[0].kL = 0.01f;
	lights[0].kQ = 0.001f;
	lights[0].cosCutoff = cos(Math::DegreeToRadian(45));
	lights[0].cosInner = cos(Math::DegreeToRadian(30));
	lights[0].exponent = 3.f;
	lights[0].spotDirection.Set(0.f, 1.f, 0.f);

	/*lights[1].type = Light::LIGHT_POINT;
	lights[1].position.Set(-120,50,-10);
	lights[1].color.Set(1, 0.5f, 0.f);
	lights[1].power = 10.0f;
	lights[1].kC = 1.f;
	lights[1].kL = 0.01f;
	lights[1].kQ = 0.001f;
	lights[1].cosCutoff = cos(Math::DegreeToRadian(45));
	lights[1].cosInner = cos(Math::DegreeToRadian(30));
	lights[1].exponent = 3.f;
	lights[1].spotDirection.Set(0.f, 1.f, 0.f);

	lights[2].type = Light::LIGHT_SPOT;
	lights[2].position.Set(55,50,140);
	lights[2].color.Set(1, 1, 0.5f);
	lights[2].power = 10.0f;
	lights[2].kC = 1.f;
	lights[2].kL = 0.01f;
	lights[2].kQ = 0.001f;
	lights[2].cosCutoff = cos(Math::DegreeToRadian(40));
	lights[2].cosInner = cos(Math::DegreeToRadian(20));
	lights[2].exponent = 3.f;
	lights[2].spotDirection.Set(-0.5f, 0.5f, 0.5f);

	lights[3].type = Light::LIGHT_POINT;
	lights[3].position.Set(600,100,0);
	lights[3].color.Set(1, 1.f, 1.f);
	lights[3].power = 0.0f;
	lights[3].kC = 1.f;
	lights[3].kL = 0.01f;
	lights[3].kQ = 0.001f;
	lights[3].cosCutoff = cos(Math::DegreeToRadian(45));
	lights[3].cosInner = cos(Math::DegreeToRadian(30));
	lights[3].exponent = 3.f;
	lights[3].spotDirection.Set(0.f, 1.f, 0.f);


	lights[4].type = Light::LIGHT_POINT;
	lights[4].position.Set(-100,100,-200);
	lights[4].color.Set(1, 1.f, 1.f);
	lights[4].power = 10.0f;
	lights[4].kC = 1.f;
	lights[4].kL = 0.01f;
	lights[4].kQ = 0.001f;
	lights[4].cosCutoff = cos(Math::DegreeToRadian(45));
	lights[4].cosInner = cos(Math::DegreeToRadian(30));
	lights[4].exponent = 3.f;
	lights[4].spotDirection.Set(0.f, 1.f, 0.f);*/

	glUniform1i(m_uiParameters[U_LIGHT0_TYPE], lights[0].type);
	glUniform3fv(m_uiParameters[U_LIGHT0_COLOR], 1, &lights[0].color.r);
	glUniform1f(m_uiParameters[U_LIGHT0_POWER], lights[0].power);
	glUniform1f(m_uiParameters[U_LIGHT0_KC], lights[0].kC);
	glUniform1f(m_uiParameters[U_LIGHT0_KL], lights[0].kL);
	glUniform1f(m_uiParameters[U_LIGHT0_KQ], lights[0].kQ);
	glUniform1f(m_uiParameters[U_LIGHT0_COSCUTOFF], lights[0].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT0_COSINNER], lights[0].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT0_EXPONENT], lights[0].exponent);
	
	/*glUniform1i(m_uiParameters[U_LIGHT1_TYPE], lights[1].type);
	glUniform3fv(m_uiParameters[U_LIGHT1_COLOR], 1, &lights[1].color.r);
	glUniform1f(m_uiParameters[U_LIGHT1_POWER], lights[1].power);
	glUniform1f(m_uiParameters[U_LIGHT1_KC], lights[1].kC);
	glUniform1f(m_uiParameters[U_LIGHT1_KL], lights[1].kL);
	glUniform1f(m_uiParameters[U_LIGHT1_KQ], lights[1].kQ);
	glUniform1f(m_uiParameters[U_LIGHT1_COSCUTOFF], lights[1].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT1_COSINNER], lights[1].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT1_EXPONENT], lights[1].exponent);

	glUniform1i(m_uiParameters[U_LIGHT2_TYPE], lights[2].type);
	glUniform3fv(m_uiParameters[U_LIGHT2_COLOR], 1, &lights[2].color.r);
	glUniform1f(m_uiParameters[U_LIGHT2_POWER], lights[2].power);
	glUniform1f(m_uiParameters[U_LIGHT2_KC], lights[2].kC);
	glUniform1f(m_uiParameters[U_LIGHT2_KL], lights[2].kL);
	glUniform1f(m_uiParameters[U_LIGHT2_KQ], lights[2].kQ);
	glUniform1f(m_uiParameters[U_LIGHT2_COSCUTOFF], lights[2].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT2_COSINNER], lights[2].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT2_EXPONENT], lights[2].exponent);

	glUniform1i(m_uiParameters[U_LIGHT3_TYPE], lights[3].type);
	glUniform3fv(m_uiParameters[U_LIGHT3_COLOR], 1, &lights[3].color.r);
	glUniform1f(m_uiParameters[U_LIGHT3_POWER], lights[3].power);
	glUniform1f(m_uiParameters[U_LIGHT3_KC], lights[3].kC);
	glUniform1f(m_uiParameters[U_LIGHT3_KL], lights[3].kL);
	glUniform1f(m_uiParameters[U_LIGHT3_KQ], lights[3].kQ);
	glUniform1f(m_uiParameters[U_LIGHT3_COSCUTOFF], lights[3].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT3_COSINNER], lights[3].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT3_EXPONENT], lights[3].exponent);

	glUniform1i(m_uiParameters[U_LIGHT4_TYPE], lights[4].type);
	glUniform3fv(m_uiParameters[U_LIGHT4_COLOR], 1, &lights[4].color.r);
	glUniform1f(m_uiParameters[U_LIGHT4_POWER], lights[4].power);
	glUniform1f(m_uiParameters[U_LIGHT4_KC], lights[4].kC);
	glUniform1f(m_uiParameters[U_LIGHT4_KL], lights[4].kL);
	glUniform1f(m_uiParameters[U_LIGHT4_KQ], lights[4].kQ);
	glUniform1f(m_uiParameters[U_LIGHT4_COSCUTOFF], lights[4].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT4_COSINNER], lights[4].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT4_EXPONENT], lights[4].exponent);*/
}

void SceneSP3::initUniforms()
{
		// Black background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);
	// Enable depth test
	glEnable(GL_DEPTH_TEST);
	// Accept fragment if it closer to the camera than the former one
	glDepthFunc(GL_LESS); 
	
	glEnable(GL_CULL_FACE);
	
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glGenVertexArrays(1, &m_vertexArrayID);
	glBindVertexArray(m_vertexArrayID);

	//m_programID = LoadShaders( "Shader//Fog.vertexshader", "Shader//MultiTexture.fragmentshader" );
	m_gPassShaderID = LoadShaders("Shader//GPass.vertexshader", "Shader//GPass.fragmentshader");
	m_programID = LoadShaders( "Shader//Shadow.vertexshader", "Shader//Shadow.fragmentshader" );
	
	//Handle Shadow Uniform
	m_uiParameters[U_LIGHT_DEPTH_MVP_GPASS] = glGetUniformLocation(m_gPassShaderID, "lightDepthMVP");
	m_uiParameters[U_LIGHT_DEPTH_MVP] = glGetUniformLocation(m_programID,"lightDepthMVP");
	m_uiParameters[U_SHADOW_MAP] = glGetUniformLocation(m_programID, "shadowMap");
	
	// Get a handle for our uniform
	m_uiParameters[U_MVP] = glGetUniformLocation(m_programID, "MVP");
	//m_uiParameters[U_MODEL] = glGetUniformLocation(m_programID, "M");
	//m_uiParameters[U_VIEW] = glGetUniformLocation(m_programID, "V");
	m_uiParameters[U_MODELVIEW] = glGetUniformLocation(m_programID, "MV");
	m_uiParameters[U_MODELVIEW_INVERSE_TRANSPOSE] = glGetUniformLocation(m_programID, "MV_inverse_transpose");
	m_uiParameters[U_MATERIAL_AMBIENT] = glGetUniformLocation(m_programID, "material.kAmbient");
	m_uiParameters[U_MATERIAL_DIFFUSE] = glGetUniformLocation(m_programID, "material.kDiffuse");
	m_uiParameters[U_MATERIAL_SPECULAR] = glGetUniformLocation(m_programID, "material.kSpecular");
	m_uiParameters[U_MATERIAL_SHININESS] = glGetUniformLocation(m_programID, "material.kShininess");
	m_uiParameters[U_LIGHTENABLED] = glGetUniformLocation(m_programID, "lightEnabled");
	m_uiParameters[U_NUMLIGHTS] = glGetUniformLocation(m_programID, "numLights");


	
	

	// Get a handle for our "colorTexture" uniform
	m_uiParameters[U_COLOR_TEXTURE_ENABLED] = glGetUniformLocation(m_programID, "colorTextureEnabled[0]");
	m_uiParameters[U_COLOR_TEXTURE_ENABLED2] = glGetUniformLocation(m_programID, "colorTextureEnabled[1]");
	m_uiParameters[U_COLOR_TEXTURE] = glGetUniformLocation(m_programID, "colorTexture[0]");
	m_uiParameters[U_COLOR_TEXTURE2] = glGetUniformLocation(m_programID, "colorTexture[1]");
	// Get a handle for our "textColor" uniform
	m_uiParameters[U_TEXT_ENABLED] = glGetUniformLocation(m_programID, "textEnabled");
	m_uiParameters[U_TEXT_COLOR] = glGetUniformLocation(m_programID, "textColor");

	//Get a handle for our Fog
	m_uiParameters[U_FOG_COLOR] =  glGetUniformLocation(m_programID, "fogParam.color");
	m_uiParameters[U_FOG_DENSITY] = glGetUniformLocation(m_programID, "fogParam.density");
	m_uiParameters[U_FOG_ENABLE] = glGetUniformLocation(m_programID, "fogParam.enabled");
	m_uiParameters[U_FOG_END] = glGetUniformLocation(m_programID, "fogParam.end");
	m_uiParameters[U_FOG_START] = glGetUniformLocation(m_programID, "fogParam.start");
	m_uiParameters[U_FOG_TYPE] = glGetUniformLocation(m_programID, "fogParam.type");
	
	// Use our shader
	glUseProgram(m_programID);


	initLights();

	m_lightDepthFBO.Init(1024,1024);

	
	glUniform1i(m_uiParameters[U_NUMLIGHTS], 5);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);
	//Handle fog here
	
	fogColor.Set(0.8f,0.8f,0.8f);
	glUniform3fv(m_uiParameters[U_FOG_COLOR],1,&fogColor.r);
	glUniform1f(m_uiParameters[U_FOG_START],400);
	glUniform1f(m_uiParameters[U_FOG_END],1800);
	glUniform1f(m_uiParameters[U_FOG_DENSITY],0.1f);
	glUniform1i(m_uiParameters[U_FOG_TYPE], 0);
	glUniform1i(m_uiParameters[U_FOG_ENABLE],1);


	
}

void SceneSP3::initMeshlist()
{
	for(int i = 0; i < NUM_GEOMETRY; ++i)
	{
		meshList[i] = NULL;
	}
	meshList[GEO_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT]->textureID = LoadTGA("Image//calibri.tga");
	meshList[GEO_SPHERE] = MeshBuilder::GenerateSphere("sphere", Color(1, 0, 0), 18, 36, 5.f);
	meshList[GEO_AXES] = MeshBuilder::GenerateAxes("reference", 1000, 1000, 1000);
	meshList[GEO_CUBE] = MeshBuilder::GenerateCube("GEO_CUBE",Color(1,0,0),1.f);

	// Terrain & Skyplane
	meshList[GEO_SKYPLANE] = MeshBuilder::GenerateSkyPlane("skyplane", Color(1, 1, 1), 128, 1000.f, 2500.f, 10.f, 10.f); 
	meshList[GEO_SKYPLANE]->textureArray[0] = LoadTGA("Image//sky1.tga"); 
	
	meshList[GEO_TERRAIN2] = MeshBuilder::GenerateTerrain("GEO_TERRAIN2",  "Image//prison_terrain.raw", m_heightMap);  
	meshList[GEO_TERRAIN2]->textureArray[0] = LoadTGA("Image//concrete.tga"); 
	meshList[GEO_TERRAIN2]->textureArray[1] = LoadTGA("Image//wall.tga"); 

	// Wall
	meshList[GEO_WALL] = MeshBuilder::GenerateOBJ("GEO_WALL","Objects//wall.obj");
	meshList[GEO_WALL]->textureArray[0] = LoadTGA("Image//wall.tga");

	// Furniture
	meshList[GEO_DOOR] = MeshBuilder::GenerateOBJ("GEO_DOOR", "Objects//door1.obj");
	meshList[GEO_DOOR]->textureArray[0] = LoadTGA("Image//door1.tga");

	meshList[GEO_BENCH] = MeshBuilder::GenerateOBJ("GEO_BENCH", "Objects//bench.obj");
	meshList[GEO_BENCH]->textureArray[0] = LoadTGA("Image//metal2.tga");

	meshList[GEO_TABLE] = MeshBuilder::GenerateOBJ("GEO_TABLE", "Objects//long_table.obj");
	meshList[GEO_TABLE]->textureArray[0] = LoadTGA("Image//metal2.tga");

	/* ERROR 404: TOILET NOT FOUND */

	meshList[GEO_CCTV] = MeshBuilder::GenerateOBJ("GEO_CCTV", "Objects//cctv.obj");
	meshList[GEO_CCTV]->textureArray[0] = LoadTGA("Image//cctv.tga");

	meshList[GEO_DESK] = MeshBuilder::GenerateOBJ("GEO_DESK", "Objects//desk.obj");
	meshList[GEO_DESK]->textureArray[0] = LoadTGA("Image//desk.tga");

	meshList[GEO_CELL_DOOR] = MeshBuilder::GenerateOBJ("GEO_CELL_DOOR", "Objects//cell_door.obj");
	meshList[GEO_CELL_DOOR]->textureArray[0] = LoadTGA("Image//metal2.tga");

	meshList[GEO_SEC_DOOR] = MeshBuilder::GenerateOBJ("GEO_SEC_DOOR", "Objects//sec_door.obj");
	meshList[GEO_SEC_DOOR]->textureArray[0] = LoadTGA("Image//sec_door.tga");

	meshList[GEO_BED] = MeshBuilder::GenerateOBJ("GEO_BED", "Objects//bed.obj");
	meshList[GEO_BED]->textureArray[0] = LoadTGA("Image//bed.tga");

	meshList[GEO_STOOL] = MeshBuilder::GenerateOBJ("GEO_STOOL", "Objects//stool.obj");
	meshList[GEO_STOOL]->textureArray[0] = LoadTGA("Image//metal2.tga");

	// Keys
	meshList[GEO_MIN] = MeshBuilder::GenerateOBJ("GEO_MIN_KEY", "Objects//min_sec_key.obj");
	meshList[GEO_MIN]->textureArray[0] = LoadTGA("Image//min_sec_key.tga");

	meshList[GEO_MED] = MeshBuilder::GenerateOBJ("GEO_MED_KEY", "Objects//med_sec_key.obj");
	meshList[GEO_MED]->textureArray[0] = LoadTGA("Image//med_sec_key.tga");

	meshList[GEO_MAX] = MeshBuilder::GenerateOBJ("GEO_MAX_KEY", "Objects//max_sec_key.obj");
	meshList[GEO_MAX]->textureArray[0] = LoadTGA("Image//max_sec_key.tga");

	meshList[GEO_ITEM_UI] = MeshBuilder::GenerateQuad("GEO_ITEM_UI", Color(1, 1, 1), 1.f);
	meshList[GEO_ITEM_UI]->textureID = LoadTGA("Image//item_ui.tga");

	meshList[GEO_MIN_UI] = MeshBuilder::GenerateQuad("GEO_MIN_UI", Color(1, 1, 1), 1.f);
	meshList[GEO_MIN_UI]->textureID = LoadTGA("Image//min_sec_key.tga");

	meshList[GEO_MED_UI] = MeshBuilder::GenerateQuad("GEO_MED_UI", Color(1, 1, 1), 1.f);
	meshList[GEO_MED_UI]->textureID = LoadTGA("Image//med_sec_key.tga");

	meshList[GEO_MAX_UI] = MeshBuilder::GenerateQuad("GEO_MAX_UI", Color(1, 1, 1), 1.f);
	meshList[GEO_MAX_UI]->textureID = LoadTGA("Image//max_sec_key.tga");

	// Character parts
	//Inmate
	meshList[GEO_INMATE_ARM] = MeshBuilder::GenerateOBJ("GEO_INMATE_ARM","Objects//inmate_arm.obj");
	meshList[GEO_INMATE_ARM]->textureArray[0] = LoadTGA("Image//inmate.tga");

	meshList[GEO_INMATE_LEG] = MeshBuilder::GenerateOBJ("GEO_INMATE_LEG","Objects//inmate_leg.obj");
	meshList[GEO_INMATE_LEG]->textureArray[0] = LoadTGA("Image//inmate.tga");

	meshList[GEO_INMATE_BODY] = MeshBuilder::GenerateOBJ("GEO_INMATE_BODY","Objects//inmate_body.obj");
	meshList[GEO_INMATE_BODY]->textureArray[0] = LoadTGA("Image//inmate.tga");

	meshList[GEO_INMATE_HEAD] = MeshBuilder::GenerateOBJ("GEO_INMATE_HEAD","Objects//inmate_head.obj");
	meshList[GEO_INMATE_HEAD]->textureArray[0] = LoadTGA("Image//inmate.tga");

	//// Guard
	meshList[GEO_GUARD_ARM] = MeshBuilder::GenerateOBJ("GEO_GUARD_ARM","Objects//guard_arm.obj");
	meshList[GEO_GUARD_ARM]->textureArray[0] = LoadTGA("Image//guard.tga");

	meshList[GEO_GUARD_LEG] = MeshBuilder::GenerateOBJ("GEO_GUARD_LEG","Objects//guard_leg.obj");
	meshList[GEO_GUARD_LEG]->textureArray[0] = LoadTGA("Image//guard.tga");

	meshList[GEO_GUARD_BODY] = MeshBuilder::GenerateOBJ("GEO_GUARD_BODY","Objects//guard_body.obj");
	meshList[GEO_GUARD_BODY]->textureArray[0] = LoadTGA("Image//guard.tga");

	meshList[GEO_GUARD_HEAD] = MeshBuilder::GenerateOBJ("GEO_GUARD_HEAD","Objects//guard_head.obj");
	meshList[GEO_GUARD_HEAD]->textureArray[0] = LoadTGA("Image//guard.tga");

	//// Warden
	meshList[GEO_WARDEN_ARM] = MeshBuilder::GenerateOBJ("GEO_WARDEN_ARM","Objects//warden_arm.obj");
	meshList[GEO_WARDEN_ARM]->textureArray[0] = LoadTGA("Image//warden.tga");

	meshList[GEO_WARDEN_LEG] = MeshBuilder::GenerateOBJ("GEO_WARDEN_LEG","Objects//warden_leg.obj");
	meshList[GEO_WARDEN_LEG]->textureArray[0] = LoadTGA("Image//warden.tga");

	meshList[GEO_WARDEN_BODY] = MeshBuilder::GenerateOBJ("GEO_WARDEN_BODY","Objects//warden_body.obj");
	meshList[GEO_WARDEN_BODY]->textureArray[0] = LoadTGA("Image//warden.tga");

	meshList[GEO_WARDEN_HEAD] = MeshBuilder::GenerateOBJ("GEO_WARDEN_HEAD","Objects//warden_head.obj");
	meshList[GEO_WARDEN_HEAD]->textureArray[0] = LoadTGA("Image//warden.tga");
}

void SceneSP3::initVariables()
{
	Math::InitRNG();
	m_bLightEnabled = true;
	TERRAIN_SCALE.Set(4000.f,150.f,4000.f);		//this is the set of values for scaling the terrain
	initMap();
	m_Current_Level = 0;
	
	LoadFromTextFileOBJ("Variables/" + m_fileBuffer[m_Current_Level] + "/LoadOBJ.txt");
	LoadFromTextFileEnemy("Variables/"+ m_fileBuffer[m_Current_Level] +"/LoadEnemy.txt");
	LoadFromTextFileItem("Variables/"+ m_fileBuffer[m_Current_Level] +"/LoadItems.txt");
	

	
	//LoadFromTextFileOBJ("Variables/Level Sandbox/LoadOBJ.txt");
	//LoadFromTextFileItem("Variables/Level Sandbox/LoadItems.txt");
}

void SceneSP3::UpdatePlayerStatus(const unsigned char key)
{
	thePlayer->UpdateCameraStatus(key, camera);
}

void SceneSP3::UpdateCameraStatus(const unsigned char key)
{
	camera.UpdateStatus(key);
}

void SceneSP3::checkPickUpItem()
{
	float magnitudeFromTarget = 0.f;
	float magnitudeFromPosition = 0.f;
	float previous = 99.0f;
	int chosen = 0;
	for(unsigned int i = 0; i < myKeyList.size(); ++i)
	{
		if(myKeyList[i]->getActive()) //If Item is available for taking
		{
			//Distance between Camera Target and Item position = Sqrt( (x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2 )
			magnitudeFromTarget = sqrt((camera.target.x - myKeyList[i]->getPosition().x) * (camera.target.x - myKeyList[i]->getPosition().x) + 
									   (camera.target.y - myKeyList[i]->getPosition().y) * (camera.target.y - myKeyList[i]->getPosition().y) +
									   (camera.target.z - myKeyList[i]->getPosition().z) * (camera.target.z - myKeyList[i]->getPosition().z));

			//Get lowest magnitude of Item from target
			if(previous > magnitudeFromTarget)
			{
				previous = magnitudeFromTarget;
				//Distance between Camera Position and Item position= Sqrt( (x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2 )
				magnitudeFromPosition = sqrt((camera.target.x - myKeyList[i]->getPosition().x) * (camera.target.x - myKeyList[i]->getPosition().x)	+ 
											(camera.target.y - myKeyList[i]->getPosition().y) * (camera.target.y - myKeyList[i]->getPosition().y) +
											(camera.target.z - myKeyList[i]->getPosition().z) * (camera.target.z - myKeyList[i]->getPosition().z));

				if(magnitudeFromPosition <= INTERACTION_DISTANCE)
				{
					thePlayer->setKeyList(myKeyList[i]);
					myKeyList[i]->setActive(false);
				}
			}
		}
	}
}
void SceneSP3::UpdateEnemies()
{
	for(std::vector<CEnemy *>::iterator it = myEnemyList.begin(); it != myEnemyList.end(); ++it)
	{
		CEnemy *enemy = (CEnemy *)*it;

		if(enemy->getActive())
		{
			
			int checkPosition_X = (int) ((enemy->getPosition().x+ thePlayer->GetPositionX()) / m_cMap->GetTileSize() );
			int checkPosition_Z = m_cMap->GetNumOfTiles_Width() - (int) ( (enemy->getPosition().z + m_cMap->GetTileSize()) / m_cMap->GetTileSize());


		}

	}
}
void SceneSP3::Update(double dt)
{
	thePlayer->UpdatePosition(dt, camera);
	if (Application::IsKeyPressed(VK_SPACE))
	{
		physicsEngine.setPlayerHeight(camera,thePlayer,m_heightMap,TERRAIN_SCALE, true);
	}
	//physicsEngine.setPlayerHeight(camera,thePlayer,m_heightMap,TERRAIN_SCALE);
	//physicsEngine.getBarycentricCoordinatesAt(m_heightMap,camera,thePlayer); // Testing of Barymetric terrain
	camera.Update(dt);	
	UpdateSceneControls();
	UpdateEnemies();
	for(std::vector<CObj *>::iterator it = myObjList.begin(); it != myObjList.end(); ++it)
	{
		CObj *go = (CObj *)*it;
		if(physicsEngine.checkCollisionBetweenOBJ(thePlayer,go))
		{
			cout << "Collision detected!" << endl;
			physicsEngine.collisionResponseBetweenOBJ(camera,thePlayer,go,dt);
		}
	}


	m_fFps = (float)(1.f / dt);
}

void SceneSP3::UpdateSceneControls()
{
	if(Application::IsKeyPressed(VK_F1))
		glEnable(GL_CULL_FACE);
	if(Application::IsKeyPressed(VK_F2))
		glDisable(GL_CULL_FACE);
	if(Application::IsKeyPressed(VK_F3))
		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	if(Application::IsKeyPressed(VK_F4))
		glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

	if(Application::IsKeyPressed('F'))
	{
		checkPickUpItem();
	}

	if(Application::IsKeyPressed('8'))
	{
		m_bLightEnabled = true;
	}
	if(Application::IsKeyPressed('9'))
	{
		m_bLightEnabled = false;
	}
}
CObj* SceneSP3::FetchOBJ()
{
	for(std::vector<CObj *>::iterator it = myObjList.begin(); it != myObjList.end(); ++it)
	{
		CObj *go = (CObj *)*it;
		if(!go->getActive())
		{
			go->setActive(true);
			return go;
		}
	}
	for(unsigned i = 0; i < 10; ++i)
	{
		CObj *go = new CObj();
		myObjList.push_back(go);
	}
	CObj *go = myObjList.back();
	go->setActive(true);
	return go;
}

CKey* SceneSP3::FetchKey()
{
	for(std::vector<CKey *>::iterator it = myKeyList.begin(); it != myKeyList.end(); ++it)
	{
		CKey *go = (CKey *)*it;
		if(!go->getActive())
		{
			go->setActive(true);
			return go;
		}
	}
	for(unsigned i = 0; i < 10; ++i)
	{
		CKey *go = new CKey();
		myKeyList.push_back(go);
	}
	CKey *go = myKeyList.back();
	go->setActive(true);
	return go;
}

bool SceneSP3::LoadFromTextFileOBJ(const string mapString)
{
	ifstream myfile (mapString);

	Vector3 Pos;
	Vector3 Scale;
	Vector3 Offset;
	int geotype;
	bool active;
	CObj * obj;
	if (myfile.is_open())
	{
		while ( myfile >> Pos.x >> Pos.y  >> Pos.z  >> Scale.x >> Scale.y >> Scale.z >>  Offset.x >> Offset.y >> Offset.z >> geotype >> active)
		{

			obj = FetchOBJ();
			obj->setActive(active);
			obj->setPosition(Pos);
			obj->setPosition_Y(TERRAIN_SCALE.y *ReadHeightMap(m_heightMap,Pos.x,Pos.z) + Pos.y);
			obj->setGeoType(geotype);
			obj->setScale(Scale);
			obj->setOffset(Offset);
			cout << "Objs Loaded: SUCCESS!" << endl;
			
		}
		myfile.close();
		return true;
	}
	else 
		cout << "Objs Loaded: FAILED!"; 
	return false;
}

bool SceneSP3::LoadFromTextFileItem(const string mapString)
{
	ifstream myfile (mapString);

	Vector3 Pos;
	Vector3 Scale;
	int geotype;
	bool active;
	CKey * Key;
	if (myfile.is_open())
	{
		while ( myfile >> Pos.x >> Pos.y  >> Pos.z  >> Scale.x >> Scale.y >> Scale.z  >> geotype >> active)
		{

			Key = FetchKey();
			Key->setActive(active);
			Key->setPosition(Pos);
			Key->setPosition_Y(TERRAIN_SCALE.y *ReadHeightMap(m_heightMap,Pos.x,Pos.z) + Pos.y);
			Key->setGeoType(geotype);
			Key->setScale(Scale);
			cout << "Items Loaded: SUCCESS!" << endl;
		}
		myfile.close();
		
		return true;
	}
	else 
		cout << "Items Loaded: FAILED!"; 
	return false;
}

bool SceneSP3::LoadFromTextFileEnemy(const string mapString)
{
	ifstream myfile (mapString);

	Vector3 Pos;
	Vector3 Scale;
	int geotype;
	bool active;
	CEnemy * enemy;
	if (myfile.is_open())
	{
		while ( myfile >> Pos.x >> Pos.y  >> Pos.z  >> Scale.x >> Scale.y >> Scale.z  >> geotype >> active)
		{

			enemy = new CEnemy(Pos,Scale,geotype,active);
			enemy->setPosition_Y(GetHeightMapY(Pos.x,Pos.z) + Pos.y);
			myEnemyList.push_back(enemy);
			cout << "Enemies Loaded: SUCCESS!" << endl;
		}
		myfile.close();
		
		return true;
	}
	else 
		cout << "Enemies Loaded: FAILED!"; 
	return false;
}
void SceneSP3::RenderSkyPlane(Mesh* mesh, Color color, int slices, float PlanetRadius, float AtmosphereRadius, float hTile, float vTile)
{
	 modelStack.PushMatrix();
	 modelStack.Translate(0, 1800, -0);
	 modelStack.Scale(5,5,5);
	 RenderMesh(meshList[GEO_SKYPLANE], false);
	 modelStack.PopMatrix();
}

void SceneSP3::RenderDebugWireframe()
{
	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	for(std::vector<CObj *>::iterator it = myObjList.begin(); it != myObjList.end(); ++it)
	{
		CObj *go = (CObj *)*it;

		if(go->getActive() == true)
		{
			Vector3 testVector = go->getScale() + go->getOffset();
			modelStack.PushMatrix();
			modelStack.Translate(go->getPosition().x,go->getPosition().y,go->getPosition().z);
			/*modelStack.Scale(go->getScale().x + go->getOffset().x +thePlayer->GetScale().x,
				go->getScale().y + go->getOffset().y +thePlayer->GetScale().y,
				go->getScale().z + go->getOffset().z +thePlayer->GetScale().z);*/
			modelStack.Scale(testVector.x,testVector.y,testVector.z);
			RenderMesh(meshList[GEO_CUBE],false);
			modelStack.PopMatrix();
		}
	}
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
}

void SceneSP3::RenderTerrain()
{
	modelStack.PushMatrix();  
	modelStack.Translate(0, -30, 0);
	modelStack.Scale(TERRAIN_SCALE.x, TERRAIN_SCALE.y, TERRAIN_SCALE.z); // values varies.
	RenderMesh(meshList[GEO_TERRAIN2], false);  
	modelStack.PopMatrix();
}
/********************************************************************************
 Render the tile map. This is a private function for use in this class only
 ********************************************************************************/
void SceneSP3::RenderTileMap()
{
	int m = 0;
	int h = 0;
	
	//mapFineOffset_x = mapOffset_x % m_cMap->GetTileSize();
	//mapFineOffset_y = mapOffset_y % m_cMap->GetTileSize();
	
	
		for(int i = 0; i < m_cMap->GetNumOfTiles_Height(); i ++)
		{
			for(int k = 0; k < m_cMap->GetNumOfTiles_Width(); k ++)
			{
				m = k ;
				h =  i;
				float x = h*m_cMap->GetTileSize() - m_cMap->GetScreenHeight() * 0.5;
				float z = m*m_cMap->GetTileSize() - m_cMap->GetScreenWidth() * 0.5;
				float y = GetHeightMapY(x,z);
				if(CubeInFrustumBool(x,y,z,m_cMap->GetTileSize()))
				{
					switch(m_cMap->theScreenMap[h][m])
					{
					case 7:// Wall
						{

							modelStack.PushMatrix();
							modelStack.Translate(x,GetHeightMapY(x,z),z);
							modelStack.Scale(1,1,1);
							RenderMesh(meshList[GEO_WALL], m_bLightEnabled);
							modelStack.PopMatrix();
						}
						break;
					case 1:
						{
							glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
							modelStack.PushMatrix();
							modelStack.Translate(x,GetHeightMapY(x,z),z);
							modelStack.Scale(m_cMap->GetTileSize(),m_cMap->GetTileSize(),m_cMap->GetTileSize());
							RenderMesh(meshList[GEO_CUBE], false);
							modelStack.PopMatrix();
							glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
						}

					default:
						break;
					}
				}
			}
		}
}
void SceneSP3::RenderEnemyList()
{
	for(std::vector<CEnemy *>::iterator it = myEnemyList.begin(); it != myEnemyList.end(); ++it)
	{
		CEnemy *enemy = (CEnemy *)*it;

		if(enemy->getActive() == true)
		{
			modelStack.PushMatrix();
			modelStack.Translate(enemy->getPosition().x,enemy->getPosition().y,enemy->getPosition().z);
			modelStack.Scale(enemy->getScale().x,enemy->getScale().y,enemy->getScale().z);
			RenderMesh(meshList[enemy->getGeoType()], m_bLightEnabled);
			modelStack.PopMatrix();
		}
	}
}
void SceneSP3::Render()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	Mtx44 perspective;
	perspective.SetToPerspective(45.0f, 4.0f / 3.0f, 0.1f, 10000.0f);
	//perspective.SetToOrtho(-80, 80, -60, 60, -1000, 1000);
	projectionStack.LoadMatrix(perspective);
	
	// Camera matrix
	viewStack.LoadIdentity();
	viewStack.LookAt(
						camera.position.x, camera.position.y, camera.position.z,
						camera.target.x, camera.target.y, camera.target.z,
						camera.up.x, camera.up.y, camera.up.z
					);
	// Model matrix : an identity matrix (model will be at the origin)
	modelStack.LoadIdentity();
	//glUniform1i(m_uiParameters[U_FOG_ENABLE], 0);
	
	
	Mtx44 modelView = viewStack.Top() * modelStack.Top(); 
	ExtractFrustum(perspective,modelView);
	//============================PRE RENDER PASS =============================
	
	RenderPassGPass();

	//============================ MAIN RENDER PASS ===========================
	RenderPassMain();

	for(std::vector<CObj *>::iterator it = myObjList.begin(); it != myObjList.end(); ++it)
	{
		CObj *go = (CObj *)*it;
		if(physicsEngine.checkCollisionBetweenOBJ(thePlayer,go))
		{
			RenderTextOnScreen(meshList[GEO_TEXT],"Collision Detected!",Color(1,1,1),2,2,2);
			//cout << "Collision detected!" << endl;
		}
	}
	for(std::vector<CKey *>::iterator it = myKeyList.begin(); it != myKeyList.end(); ++it)
	{
		CKey *go = (CKey *)*it;
		if(physicsEngine.checkCollisionBetweenKey(thePlayer,go))
		{
			RenderTextOnScreen(meshList[GEO_TEXT],"Stop walking into the item!",Color(1,1,1),2,2,2);
			//cout << "Collision detected!" << endl;
		}
	}
	RenderDebugWireframe();
	//============================= HUD displayed on screen ====================================
	SetHUD(true);

	modelStack.PushMatrix();
	RenderMeshIn2D(meshList[GEO_ITEM_UI], 32.f, 32.f, 32.f);
	modelStack.PopMatrix();

	std::ostringstream playerpos;
	playerpos.precision(3);
	playerpos << "Pos_X: " << camera.position.x;
	RenderTextOnScreen(meshList[GEO_TEXT], playerpos.str(), Color(0, 1, 0), 2.5, 0.9, 54);

	std::ostringstream playerposY;
	playerposY.precision(3);
	playerposY << "Pos_Y: " << camera.position.y;
	RenderTextOnScreen(meshList[GEO_TEXT], playerposY.str(), Color(0, 1, 0), 2.5, 0.9, 51);

	std::ostringstream ss;
	ss.precision(3);
	ss << "FPS: " << m_fFps;
	RenderTextOnScreen(meshList[GEO_TEXT], ss.str(), Color(0, 1, 0), 2.5f, 0.9f, 57.f);
	
	SetHUD(false);
	
}

void SceneSP3::RenderPassMain()
{
	m_renderPass = RENDER_PASS_MAIN;

	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	glViewport(0,0,Application::GetWindowWidth(), Application::GetWindowHeight());
	//glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glUseProgram(m_programID);

	//pass light depth texture 
	m_lightDepthFBO.BindForReading(GL_TEXTURE8);
	glUniform1i(m_uiParameters[U_SHADOW_MAP] , 8);
	//glActiveTexture(GL_TEXTURE0);

	//... old stuffs

	RenderWorld();
	//Render GEO_LIGHT_DEPTH_QUAD

	//RenderMesh(meshList[GEO_LIGHT_DEPTH_QUAD],false);
}

void SceneSP3::RenderWorld()
{
	switch(lights[0].type)
	{
	case Light::LIGHT_DIRECTIONAL:
		{
			Vector3 lightDir(lights[0].position.x, lights[0].position.y, lights[0].position.z);
			Vector3 lightDirection_cameraspace = viewStack.Top() * lightDir;
			glUniform3fv(m_uiParameters[U_LIGHT0_POSITION], 1, &lightDirection_cameraspace.x);
		}
		break;

	case Light::LIGHT_SPOT:
		{
			Position lightPosition_cameraspace = viewStack.Top() * lights[0].position;
			glUniform3fv(m_uiParameters[U_LIGHT0_POSITION], 1, &lightPosition_cameraspace.x);
			Vector3 spotDirection_cameraspace = viewStack.Top() * lights[0].spotDirection;
			glUniform3fv(m_uiParameters[U_LIGHT0_SPOTDIRECTION], 1, &spotDirection_cameraspace.x);
		}

		break;

	default:
		{
			Position lightPosition_cameraspace = viewStack.Top() * lights[0].position;
			glUniform3fv(m_uiParameters[U_LIGHT0_POSITION], 1, &lightPosition_cameraspace.x);
		}
		break;
	}


	RenderTileMap();

	RenderMesh(meshList[GEO_AXES], false);

	RenderTerrain();

	modelStack.PushMatrix();
	RenderMesh(meshList[GEO_SPHERE],false);
	modelStack.PopMatrix();

	//RenderObjList();
	RenderKeyList();
	RenderEnemyList();

	RenderSkyPlane(meshList[GEO_SKYPLANE], Color(1.f, 1.f, 1.f), 256, 100000.f, 2000.f, 1.f, 1.f);
}
void SceneSP3::RenderObjList()
{
	for(std::vector<CObj *>::iterator it = myObjList.begin(); it != myObjList.end(); ++it)
	{
		CObj *go = (CObj *)*it;

		if(go->getActive() == true)
		{
			modelStack.PushMatrix();
			modelStack.Translate(go->getPosition().x,go->getPosition().y,go->getPosition().z);
			modelStack.Scale(go->getScale().x,go->getScale().y,go->getScale().z);
			RenderMesh(meshList[go->getGeoType()], m_bLightEnabled);
			modelStack.PopMatrix();
		}
	}
}
void SceneSP3::RenderKeyList()
{
	for(std::vector<CKey *>::iterator it = myKeyList.begin(); it != myKeyList.end(); ++it)
	{
		CKey *go = (CKey *)*it;

		if(go->getActive() == true)
		{
			modelStack.PushMatrix();
			modelStack.Translate(go->getPosition().x,go->getPosition().y,go->getPosition().z);
			modelStack.Scale(go->getScale().x,go->getScale().y,go->getScale().z);
			RenderMesh(meshList[go->getGeoType()], m_bLightEnabled);
			modelStack.PopMatrix();
		}
	}
}
void SceneSP3::RenderPassGPass()
{
	m_renderPass = RENDER_PASS_PRE;
	m_lightDepthFBO.BindForWriting();

	//glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glClear(GL_DEPTH_BUFFER_BIT);

	glUseProgram(m_gPassShaderID);

	//These matrices should change when light position or direction changes
	if(lights[0].type == Light::LIGHT_DIRECTIONAL)
		m_lightDepthProj.SetToOrtho(-SKYBOXSIZE,SKYBOXSIZE,-SKYBOXSIZE,SKYBOXSIZE,0.1,10000);
	else
		m_lightDepthProj.SetToPerspective(10,1.f,0.1,20);

	Vector3 lightDir(lights[0].position.x, lights[0].position.y);
	Vector3 lightUp;
	lightUp = Vector3(1,0,0).Cross(lightDir);
	if(lightUp.IsZero())
		lightUp = Vector3(0,1,0);

	m_lightDepthView.SetToLookAt(lightDir.x, lightDir.y, lightDir.z, 
									0,0,0,
									lightUp.x,lightUp.y,lightUp.z);
	RenderWorld();
}
void SceneSP3::SetHUD(const bool m_bHUDmode)
{
	if(m_bHUDmode)
	{
		glDisable(GL_DEPTH_TEST);
		Mtx44 ortho;
		ortho.SetToOrtho(0,80,0,60,-10,10);
		projectionStack.PushMatrix();
		projectionStack.LoadMatrix(ortho);
	}
	else
	{
		projectionStack.PopMatrix();
		glEnable(GL_DEPTH_TEST);
	}
}
void SceneSP3::RenderMesh(Mesh *mesh, bool enableLight, bool enableFog)
{
	Mtx44 MVP, modelView, modelView_inverse_transpose;

	//if(m_renderPass == RENDER_PASS_PRE && !m_is_Nighttime) // Only apply shadow if it's Day Time
	//{
	//	Mtx44 lightDepthMVP = m_lightDepthProj * m_lightDepthView * modelStack.Top();
	//	glUniformMatrix4fv(m_uiParameters[U_LIGHT_DEPTH_MVP_GPASS],1,GL_FALSE, &lightDepthMVP.a[0]);
	//	mesh->Render();
	//	return;
	//}

	MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top();
	glUniformMatrix4fv(m_uiParameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);

	modelView = viewStack.Top() * modelStack.Top(); // Week 6
	glUniformMatrix4fv(m_uiParameters[U_MODELVIEW], 1, GL_FALSE, &modelView.a[0]); 
	if(enableLight && m_bLightEnabled)
	{
		glUniform1i(m_uiParameters[U_LIGHTENABLED], 1);
		modelView_inverse_transpose = modelView.GetInverse().GetTranspose();
		glUniformMatrix4fv(m_uiParameters[U_MODELVIEW_INVERSE_TRANSPOSE], 1,GL_FALSE, &modelView_inverse_transpose.a[0]);
		
		Mtx44 lightDepthMVP = m_lightDepthProj * m_lightDepthView * modelStack.Top();
		glUniformMatrix4fv(m_uiParameters[U_LIGHT_DEPTH_MVP], 1, GL_FALSE, &lightDepthMVP.a[0]);


		//load material
		glUniform3fv(m_uiParameters[U_MATERIAL_AMBIENT], 1, &mesh->material.kAmbient.r);
		glUniform3fv(m_uiParameters[U_MATERIAL_DIFFUSE], 1, &mesh->material.kDiffuse.r);
		glUniform3fv(m_uiParameters[U_MATERIAL_SPECULAR], 1, &mesh->material.kSpecular.r);
		glUniform1f(m_uiParameters[U_MATERIAL_SHININESS], mesh->material.kShininess);
	}
	else
	{	
		glUniform1i(m_uiParameters[U_LIGHTENABLED], 0);
	}
	glUniform1i(m_uiParameters[U_FOG_ENABLE], enableFog);
	for(unsigned i = 0; i < Mesh::MAX_TEXTURES; ++i)
	{
		if(mesh->textureArray[i] > 0)
		{
			glUniform1i(m_uiParameters[U_COLOR_TEXTURE_ENABLED+i], 1);
			glActiveTexture(GL_TEXTURE0 + i);
			glBindTexture(GL_TEXTURE_2D, mesh->textureArray[i]);
			glUniform1i(m_uiParameters[U_COLOR_TEXTURE +i], i);
		}
		else
		{
			glUniform1i(m_uiParameters[U_COLOR_TEXTURE_ENABLED+i], 0);
			
		}
	}

	mesh->Render();
}
void SceneSP3::RenderMeshIn2D(Mesh *mesh, float size, float x, float y, bool rotate, bool m_rotate)
{
	//if(m_rotate)
	//{
	//	//modelStack.PushMatrix();
	//	
	//	modelStack.Translate(67,45,0);

	//	modelStack.Rotate(-camera.m_Yaw,0,0,1);
	//	
	//	
	//	modelStack.Translate(x/64,y/64,0);
	//	//modelStack.PopMatrix();
	//}
	//else
	//{
	//modelStack.Translate(x, y, 0);
	//}
	//modelStack.Scale(size, size, size);
	//if(rotate)
	//{
	//	modelStack.Rotate(-camera.m_Yaw,0,0,1);
	//	
	//}

		Mtx44 ortho;
	ortho.SetToOrtho(0, 800, 0, 600, -10, 10);
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity();
	modelStack.PushMatrix();
	modelStack.LoadIdentity();
	modelStack.Translate(x, y, 0);
	modelStack.Scale(size, size, size);
	/*if (rotate)
		modelStack.Rotate(rotateAngle, 0, 0, 1);*/

	Mtx44 MVP, modelView, modelView_inverse_transpose;

	MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top();
	glUniformMatrix4fv(m_uiParameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);
	if(mesh->textureID > 0)
	{
		glUniform1i(m_uiParameters[U_COLOR_TEXTURE_ENABLED], 1);
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, mesh->textureID);
		glUniform1i(m_uiParameters[U_COLOR_TEXTURE], 0);
	}
	else
	{
		glUniform1i(m_uiParameters[U_COLOR_TEXTURE_ENABLED], 0);
	}
	mesh->Render();
	if(mesh->textureID > 0)
	{
		glBindTexture(GL_TEXTURE_2D, 0);
	}

	modelStack.PopMatrix();
	viewStack.PopMatrix();
	projectionStack.PopMatrix();
}
void SceneSP3::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
{
	if(!mesh || mesh->textureID <= 0)
		return;

	glDisable(GL_DEPTH_TEST);
	Mtx44 ortho;
	ortho.SetToOrtho(0, 80, 0, 60, -10, 10);
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity();
	modelStack.PushMatrix();
	modelStack.LoadIdentity();
	modelStack.Translate(x, y, 0);
	modelStack.Scale(size, size, size);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 1);
	glUniform3fv(m_uiParameters[U_TEXT_COLOR], 1, &color.r);
	glUniform1i(m_uiParameters[U_LIGHTENABLED], 0);
	glUniform1i(m_uiParameters[U_COLOR_TEXTURE_ENABLED], 1);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, mesh->textureID);
	glUniform1i(m_uiParameters[U_COLOR_TEXTURE], 0);
	for(unsigned i = 0; i < text.length(); ++i)
	{
		Mtx44 characterSpacing;
		characterSpacing.SetToTranslation(i * 1.0f + 0.5f, 0.5f, 0); //1.0f is the spacing of each character, you may change this value
		Mtx44 MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top() * characterSpacing;
		glUniformMatrix4fv(m_uiParameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);

		mesh->Render((unsigned)text[i] * 6, 6);
	}
	glBindTexture(GL_TEXTURE_2D, 0);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);
	modelStack.PopMatrix();
	viewStack.PopMatrix();
	projectionStack.PopMatrix();
	glEnable(GL_DEPTH_TEST);
}
const float SceneSP3::GetCameraCurrentY(void)
{
	
	return 350* (ReadHeightMap(m_heightMap, camera.position.x/SKYBOXSIZE, camera.position.z/SKYBOXSIZE));
}
const float SceneSP3::GetHeightMapY(float x, float z)
{
	return TERRAIN_SCALE.y* (ReadHeightMap(m_heightMap, x/TERRAIN_SCALE.x, z/TERRAIN_SCALE.z));
}
const std::vector<unsigned char>SceneSP3::GetHeightMap()
{
	return m_heightMap;
}
void SceneSP3::Exit()
{
	// Cleanup VBO
	for(int i = 0; i < NUM_GEOMETRY; ++i)
	{
		if(meshList[i])
			delete meshList[i];
	}
	for(unsigned int i = 0; i < myObjList.size(); ++i)
	{
		if(myObjList[i] != NULL)
			delete myObjList[i];
	}
	for(unsigned int i = 0; i < myKeyList.size(); ++i)
	{
		if(myKeyList[i] != NULL)
			delete myKeyList[i];
	}
	for(unsigned int i = 0; i < myEnemyList.size(); ++i)
	{
		if(myEnemyList[i] != NULL)
			delete myEnemyList[i];
	}
	if(m_cMap != NULL)
	{
		delete m_cMap;
		m_cMap = NULL;
	}
	//if (music)
	//	music->drop(); // release music stream.
	//if(fire)
	//	fire->drop();
	//engine->drop(); // delete engine

	glDeleteProgram(m_programID);
	glDeleteVertexArrays(1, &m_vertexArrayID);
}