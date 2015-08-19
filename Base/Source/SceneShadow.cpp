#include "SceneShadow.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "MeshBuilder.h"
#include "Application.h"
#include "Utility.h"
#include "LoadTGA.h"
#include "LoadHmap.h"

#include <sstream>

void SceneShadow::bubbleSort(vector<Vector3> & list, Vector3 camPos ,int length)
{

	for(int iter = 1; iter < length; iter++)
	{
		for(int index = 0; index <length - iter; index++)
		{

			if( (list[index]-camPos).Length() < (list[index+1]-camPos).Length())
			{
				//swap around
				Vector3 temp = list[index+1];
				list[index+1] = list[index];
				list[index] = temp;
			}
		}
	}
}


SceneShadow::SceneShadow()
	: m_cMinimap(NULL)
{

}

SceneShadow::~SceneShadow()
{
	if(m_cMinimap)
	{
		delete m_cMinimap;
		m_cMinimap = NULL;
	}
}
void SceneShadow::initUniforms()
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
	
	m_gPassShaderID = LoadShaders("Shader//GPass.vertexshader", "Shader//GPass.fragmentshader");
	m_programID = LoadShaders( "Shader//SHadow.vertexshader", "Shader//SHadow.fragmentshader" );
	
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


	m_uiParameters[U_LIGHT1_TYPE] = glGetUniformLocation(m_programID, "lights[1].type");
	m_uiParameters[U_LIGHT1_POSITION] = glGetUniformLocation(m_programID, "lights[1].position_cameraspace");
	m_uiParameters[U_LIGHT1_COLOR] = glGetUniformLocation(m_programID, "lights[1].color");
	m_uiParameters[U_LIGHT1_POWER] = glGetUniformLocation(m_programID, "lights[1].power");
	m_uiParameters[U_LIGHT1_KC] = glGetUniformLocation(m_programID, "lights[1].kC");
	m_uiParameters[U_LIGHT1_KL] = glGetUniformLocation(m_programID, "lights[1].kL");
	m_uiParameters[U_LIGHT1_KQ] = glGetUniformLocation(m_programID, "lights[1].kQ");
	m_uiParameters[U_LIGHT1_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[1].spotDirection");
	m_uiParameters[U_LIGHT1_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[1].cosCutoff");
	m_uiParameters[U_LIGHT1_COSINNER] = glGetUniformLocation(m_programID, "lights[1].cosInner");
	m_uiParameters[U_LIGHT1_EXPONENT] = glGetUniformLocation(m_programID, "lights[1].exponent");


	m_uiParameters[U_LIGHT2_TYPE] = glGetUniformLocation(m_programID, "lights[2].type");
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


	lights[0].type = Light::LIGHT_DIRECTIONAL;
	lights[0].position.Set(0, 1, 2);
	lights[0].color.Set(1.f, 1.f, 1.f);
	lights[0].power = 2.f;
	lights[0].kC = 1.f;
	lights[0].kL = 0.01f;
	lights[0].kQ = 0.001f;
	lights[0].cosCutoff = cos(Math::DegreeToRadian(45));
	lights[0].cosInner = cos(Math::DegreeToRadian(30));
	lights[0].exponent = 3.f;
	lights[0].spotDirection.Set(0.f, 1.f, 0.f);

	lights[1].type = Light::LIGHT_POINT;
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

	m_lightDepthFBO.Init(1024,1024);

	glUniform1i(m_uiParameters[U_NUMLIGHTS], 1);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);

	glUniform1i(m_uiParameters[U_NUMLIGHTS], 2);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);

	glUniform1i(m_uiParameters[U_NUMLIGHTS], 3);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);
	//Handle fog here
	Color fogColor;
	fogColor.Set(0.8f,0.8f,0.8f);
	glUniform3fv(m_uiParameters[U_FOG_COLOR],1,&fogColor.r);
	glUniform1f(m_uiParameters[U_FOG_START],400);
	glUniform1f(m_uiParameters[U_FOG_END],1800);
	glUniform1f(m_uiParameters[U_FOG_DENSITY],0.1f);
	glUniform1i(m_uiParameters[U_FOG_TYPE], 0);
	glUniform1i(m_uiParameters[U_FOG_ENABLE],1);


	glUniform1i(m_uiParameters[U_LIGHT0_TYPE], lights[0].type);
	glUniform3fv(m_uiParameters[U_LIGHT0_COLOR], 1, &lights[0].color.r);
	glUniform1f(m_uiParameters[U_LIGHT0_POWER], lights[0].power);
	glUniform1f(m_uiParameters[U_LIGHT0_KC], lights[0].kC);
	glUniform1f(m_uiParameters[U_LIGHT0_KL], lights[0].kL);
	glUniform1f(m_uiParameters[U_LIGHT0_KQ], lights[0].kQ);
	glUniform1f(m_uiParameters[U_LIGHT0_COSCUTOFF], lights[0].cosCutoff);
	glUniform1f(m_uiParameters[U_LIGHT0_COSINNER], lights[0].cosInner);
	glUniform1f(m_uiParameters[U_LIGHT0_EXPONENT], lights[0].exponent);
	
	glUniform1i(m_uiParameters[U_LIGHT1_TYPE], lights[1].type);
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
}
void SceneShadow::Init()
{
	
	initUniforms(); // Init the standard Uniforms
	//camera.Init(Vector3(0, -1, 10), Vector3(0, -1, 0), Vector3(0, 1, 0));

	initMeshlist();
	initVariables();


	// Projection matrix : 45° Field of View, 4:3 ratio, display range : 0.1 unit <-> 1000 units
	Mtx44 perspective;
	perspective.SetToPerspective(45.0f, 4.0f / 3.0f, 0.1f, 10000.0f);
	//perspective.SetToOrtho(-80, 80, -60, 60, -1000, 1000);
	projectionStack.LoadMatrix(perspective);
}

void SceneShadow::initMeshlist()
{
	for(int i = 0; i < NUM_GEOMETRY; ++i)
	{
		meshList[i] = NULL;
	}

	meshList[GEO_ANIMATION_BIRD] = MeshBuilder::GenerateSpriteAnimation("bird",3,5);
	meshList[GEO_ANIMATION_BIRD] ->textureArray[0] = LoadTGA("Image//bird.tga");
	SpriteAnimation *sa = dynamic_cast<SpriteAnimation*>(meshList[GEO_ANIMATION_BIRD]);
	if(sa)
	{
		sa->m_anim = new Animation();
		sa->m_anim->Set(0, 13, 0, 1.f);
	} 
	//Init all mesh list type
	meshList[GEO_ANIMATION_FIRE] = MeshBuilder::GenerateSpriteAnimation("fire", 4, 8);
	meshList[GEO_ANIMATION_FIRE]->textureArray[0] = LoadTGA("Image//fire.tga");
	sa = dynamic_cast<SpriteAnimation*>(meshList[GEO_ANIMATION_FIRE]);
	if(sa)
	{
		sa->m_anim = new Animation();
		sa->m_anim->Set(0, 31, 0, 1.f);
	} 

	
	//Init meshlist for Shadow Map
	meshList[GEO_LIGHT_DEPTH_QUAD] = MeshBuilder::GenerateQuad("LIGHT_DEPTH_TEXTURE", Color(1,0,0), 1.f);
	meshList[GEO_LIGHT_DEPTH_QUAD] ->textureArray[0] = m_lightDepthFBO.GetTexture();

	meshList[GEO_AXES] = MeshBuilder::GenerateAxes("reference", 1000, 1000, 1000);
	
	meshList[GEO_QUAD] = MeshBuilder::GenerateQuad("quad", Color(1, 1, 1), 1.f);
	//meshList[GEO_QUAD]->textureID = LoadTGA("Image//calibri.tga");
	meshList[GEO_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT]->textureID = LoadTGA("Image//calibri.tga");
	meshList[GEO_TEXT]->material.kAmbient.Set(1, 0, 0);
	meshList[GEO_OBJECT] = MeshBuilder::GenerateOBJ("OBJ1", "OBJ//chair.obj");//MeshBuilder::GenerateCube("cube", 1);
	meshList[GEO_OBJECT]->textureID = LoadTGA("Image//chair.tga");
	meshList[GEO_RING] = MeshBuilder::GenerateRing("ring", Color(1, 0, 1), 36, 1, 0.5f);
	meshList[GEO_LIGHTBALL] = MeshBuilder::GenerateSphere("lightball", Color(1, 1, 1), 18, 36, 1.f);
	meshList[GEO_SPHERE] = MeshBuilder::GenerateSphere("sphere", Color(1, 0, 0), 18, 36, 5.f);
	
	//meshList[GEO_CUBE] = MeshBuilder::GenerateCube("cube", 1, 1, 1);
	//meshList[GEO_TORUS] = MeshBuilder::GenerateCylinder("torus", 36, 36, 5, 1);
	meshList[GEO_CONE] = MeshBuilder::GenerateCone("cone", Color(0.5f, 1, 0.3f), 36, 10.f, 10.f);
	meshList[GEO_CONE]->material.kDiffuse.Set(0.99f, 0.99f, 0.99f);
	meshList[GEO_CONE]->material.kSpecular.Set(0.f, 0.f, 0.f);

	
	meshList[GEO_LEAF] = MeshBuilder::GenerateQuad("leaf", Color(1,1,1),10.f);
	meshList[GEO_LEAF]->textureArray[0] = LoadTGA("Image//leaf.tga");
	meshList[GEO_SMOKE] = MeshBuilder::GenerateQuad("smoke", Color(1,1,1), 1.f);
	meshList[GEO_SMOKE]->textureArray[0] = LoadTGA("Image//smoke.tga");

	meshList[GEO_TREE] = MeshBuilder::GenerateQuad("tree", Color(1,1,1),100.f);
	meshList[GEO_TREE]->textureArray[0] = LoadTGA("Image//tree.tga");
	meshList[GEO_ROAD] = MeshBuilder::GenerateQuad("road",Color(1,1,1),1.f);
	meshList[GEO_ROAD]->textureArray[0] = LoadTGA("Image//road.tga");
	meshList[GEO_SKYPLANE] = MeshBuilder::GenerateSkyPlane("SKYPLANE",Color(1, 1, 1), 128, 200.0f, 2000.0f, 1.0f, 1.0f);
	meshList[GEO_SKYPLANE]->textureArray[0] = LoadTGA("Image//skyplane.tga"); 
	meshList[GEO_TERRAIN] = MeshBuilder::GenerateTerrain("TERRAIN",  "Image//heightmap.raw", m_heightMap);  
	meshList[GEO_TERRAIN]->textureArray[0] = LoadTGA("Image//road.tga"); 
	meshList[GEO_TERRAIN]->textureArray[1] = LoadTGA("Image//grass.tga"); 

	meshList[GEO_SHOOTING_PARAPET] = MeshBuilder::GenerateOBJ("shooting parapet", "OBJ//shootingWall.obj");
	meshList[GEO_SHOOTING_PARAPET] ->textureArray[0] = LoadTGA("Image//brick.tga");
	meshList[GEO_BARREL] = MeshBuilder::GenerateOBJ("barrel", "OBJ//barrel.obj");
	meshList[GEO_BARREL] ->textureArray[0] = LoadTGA("Image//barrel.tga");
	meshList[GEO_TABLE] = MeshBuilder::GenerateOBJ("table","OBJ//table.obj");
	meshList[GEO_TABLE]->textureArray[0] = LoadTGA("Image//table.tga");
	meshList[GEO_CRATE] = MeshBuilder::GenerateOBJ("crate", "OBJ//crate.obj");
	meshList[GEO_CRATE]->textureArray[0] = LoadTGA("Image//crate.tga");
	meshList[GEO_COMBINED_CRATE] = MeshBuilder::GenerateOBJ("combinedCrate", "OBJ//combinedCrate.obj");
	meshList[GEO_COMBINED_CRATE] ->textureArray[0] = LoadTGA("Image//crate.tga");


	meshList[GEO_CROSSHAIR1] = MeshBuilder::GenerateQuad("firstCrosshair",Color(1,1,1),1.0f);
	meshList[GEO_CROSSHAIR1]->textureID = LoadTGA("Image//firstCrosshair.tga");
	meshList[GEO_CROSSHAIR2] = MeshBuilder::GenerateQuad("secondCrosshair",Color(1,1,1),1.0f);
	meshList[GEO_CROSSHAIR2]->textureID = LoadTGA("Image//secondCrosshair.tga");
	meshList[GEO_CROSSHAIR3] = MeshBuilder::GenerateQuad("thirdCrosshair",Color(1,1,1),1.0f);
	meshList[GEO_CROSSHAIR3]->textureID = LoadTGA("Image//thirdCrosshair.tga");

	meshList[GEO_FIRST_GUN] = MeshBuilder::GenerateOBJ("12-7cmGun", "OBJ//12-7cmGun.obj");
	meshList[GEO_FIRST_GUN]->textureArray[0] = LoadTGA("Image//12-7cmGun.tga");
	meshList[GEO_FIRST_GUN]->textureArray[1] = LoadTGA("Image//road.tga");

	meshList[GEO_SECOND_GUN] = MeshBuilder::GenerateOBJ("bow", "OBJ//bow.obj");
	meshList[GEO_SECOND_GUN]->textureArray[0] = LoadTGA("Image//table.tga");

	meshList[GEO_THIRD_GUN] = MeshBuilder::GenerateOBJ("46cmGun", "OBJ//46cmGun.obj");
	meshList[GEO_THIRD_GUN] ->textureArray[0] = LoadTGA("Image//allGuns.tga");

	meshList[GEO_ARROW] = MeshBuilder::GenerateOBJ("arrow", "OBJ//arrow.obj");
	meshList[GEO_ARROW] ->textureArray[0] = LoadTGA("Image//arrow.tga");

	meshList[GEO_HEROUNDS] = MeshBuilder::GenerateQuad("heRounds",Color(1,1,1),1.0f);
	meshList[GEO_HEROUNDS] ->textureID = LoadTGA("Image//HERounds.tga");

	meshList[GEO_APROUNDS] = MeshBuilder::GenerateQuad("apRounds", Color(1,1,1),1.0f);
	meshList[GEO_APROUNDS] ->textureID = LoadTGA("Image//APRounds.tga");

	meshList[GEO_PLANE] = MeshBuilder::GenerateOBJ("plane","OBJ//plane.obj");
	meshList[GEO_PLANE] -> textureArray[0] = LoadTGA("Image//plane.tga");

	meshList[GEO_ROAD_BLOCK] = MeshBuilder::GenerateOBJ("roadBlock", "OBJ//roadBlock.obj");
	meshList[GEO_ROAD_BLOCK]->textureArray[0] = LoadTGA("Image//road.tga");

	meshList[GEO_CAR] = MeshBuilder::GenerateOBJ("car", "OBJ//car.obj");
	meshList[GEO_CAR]->textureArray[0] = LoadTGA("Image//car.tga");

	meshList[GEO_CAR_SCREEN] = MeshBuilder::GenerateOBJ("carScreen", "OBJ//carScreen.obj");
	meshList[GEO_CAR_SCREEN]->textureArray[0] = LoadTGA("Image//carScreen.tga");

	meshList[GEO_WATCH_TOWER] = MeshBuilder::GenerateOBJ("watchTower", "OBJ//watchTower.obj");
	meshList[GEO_WATCH_TOWER] ->textureArray[0] = LoadTGA("Image//watchTower.tga");

	meshList[GEO_SHEALTER] = MeshBuilder::GenerateOBJ("shealter", "OBJ//shealter.obj");
	meshList[GEO_SHEALTER] -> textureArray[0] = LoadTGA("Image//metal.tga");

	meshList[GEO_BUILDING1] = MeshBuilder::GenerateOBJ("building1", "OBJ//building1.obj");
	meshList[GEO_BUILDING1] ->textureArray[0] = LoadTGA("Image//building1.tga");

	meshList[GEO_SPOTLIGHT] = MeshBuilder::GenerateOBJ("spotlight", "OBJ//spotlight.obj");
	meshList[GEO_SPOTLIGHT]->textureArray[0] = LoadTGA("Image//spotlight.tga");
	//Load the texture for minimap
	m_cMinimap = new CMinimap();
	m_cMinimap -> SetBackground(MeshBuilder::GenerateMinimap("MINIMAP", Color(1,1,1), 1.f));
	m_cMinimap -> GetBackground()->textureID = LoadTGA("Image//minimap.tga");
	m_cMinimap -> SetBorder( MeshBuilder::GenerateQuad("MINIMAPBORDER", Color(1,1,0),1.f) );
	m_cMinimap -> GetBorder()->textureID = LoadTGA("Image//border.tga");
	m_cMinimap -> SetAvatar( MeshBuilder::GenerateMinimapAvatar("MINIMAPAVATAR", Color(1,1,0),0.5f) );
	m_cMinimap -> SetTarget(MeshBuilder::GenerateQuad("MINIMAPTARGET", Color(1,0,0),0.1f) );
}

void SceneShadow::SetHUD(const bool m_bHUDmode)
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
Particle* SceneShadow::FetchParticle()
{
	
	//Exercise 3a: Fetch a game object from m_paList and return it
	for(std::vector<Particle*>::iterator it = m_paList.begin(); it!= m_paList.end(); ++it)
	{
		Particle * go = (Particle*)*it;
		if(go->active == false)
		{
			go->active = true;
			go->pos.SetZero();
			go->vel.Set(0,-1,0);
			return go;
		}
	}
	//Exercise 3b: Handle the situation whenever m_paList runs out of objects
	
	for(unsigned i = 0; i<20; ++i)
	{
		Particle *go = new Particle(PARTICLE_TYPE::PARTICLE_LEAF);
		m_paList.push_back(go);
	}
	return m_paList[m_paList.size() - 1];

}
void SceneShadow::GenerateTrees()
{
	

	double slice = 2 * Math::PI / 50;
	double slice2 = 2 * Math::PI / 30;
	double slice3 = 2 * Math::PI / 20;
    for (int i = -10; i < 40; i++)
    {
		
        double angle = slice * -i;
        int newX = 1500 * cos(angle);
		int newZ = 1500 * sin(angle);
		Vector3 pos = Vector3(newX, GetHeightMapY(newX,newZ)+TREE_OFFSET, newZ);

		m_treeList.push_back(pos);
    }
	for (int j = -7; j < 20; j++)
    {
		
        double angle = slice2 * -j;
        int newX = 1300 * cos(angle);
		int newZ = 1300 * sin(angle);
		Vector3 pos = Vector3(newX, GetHeightMapY(newX,newZ)+TREE_OFFSET, newZ);

		m_treeList.push_back(pos);
    }
	for (int k = -8; k < 25; k++)
    {
		
        double angle = slice3 * -k;
        int newX = 1100 * cos(angle);
		int newZ = 1100 * sin(angle);
		Vector3 pos = Vector3(newX, GetHeightMapY(newX,newZ)+TREE_OFFSET, newZ);

		m_treeList.push_back(pos);
    }
}
void SceneShadow::RenderTrees()
{
	
	//======================FIX Z BUFFER==========================
	bubbleSort(m_treeList, camera.position,m_treeList.size());


	for(int i = 0; i< m_treeList.size(); ++i)
	{
		Vector3 posP;
		posP.x = camera.position.x - m_treeList[i].x;
		posP.z = camera.position.z - m_treeList[i].z;

		modelStack.PushMatrix();
		modelStack.Translate(m_treeList[i].x,m_treeList[i].y,m_treeList[i].z);
		float theta = Math::RadianToDegree(atan2(posP.x, posP.z));
		modelStack.Rotate(theta,0,1,0);
		modelStack.Scale(1,1,1);
		RenderMesh(meshList[GEO_TREE],false);
		modelStack.PopMatrix();
	}
}
void SceneShadow::RenderGO(Particle *go)
{
	switch(go->type)
	{
		
	case PARTICLE_TYPE::PARTICLE_LEAF:
		{
			Vector3 posP;
			posP.x = camera.position.x - go->pos.x;
			posP.z = camera.position.z - go->pos.z;

			

			modelStack.PushMatrix();
			modelStack.Translate(go->pos.x, go->pos.y, go->pos.z);
			float theta = Math::RadianToDegree(atan2(posP.x, posP.z));
			modelStack.Rotate(theta,0,1,0);
			modelStack.Scale(go->scale.x, go->scale.y, go->scale.z);
			RenderMesh(meshList[GEO_LEAF],false);
			modelStack.PopMatrix();
		}
		break;

	case PARTICLE_TYPE::PARTICLE_SMOKE:
		{
			Vector3 posP;
			posP.x = camera.position.x - go->pos.x;
			posP.z = camera.position.z - go->pos.z;

			modelStack.PushMatrix();
			modelStack.Translate(go->pos.x, go->pos.y, go->pos.z);
			float theta = Math::RadianToDegree(atan2(posP.x, posP.z));
			modelStack.Rotate(theta,0,1,0);
			modelStack.Scale(go->scale.x, go->scale.y, go->scale.z);
			RenderMesh(meshList[GEO_SMOKE],false);
			modelStack.PopMatrix();
		}
	}
}
void SceneShadow::initVariables()
{
	//Physics stuff
	m_speed = 1.f;
	m_objectCount = 0;
	m_gravity = Vector3(0,-9.8f,0);
	CAMPFIRE1 = Vector3(-120,35,-10);
	Math::InitRNG();

	 engine = createIrrKlangDevice();
	 engine->setDefault3DSoundMinDistance(100);

   if (!engine)
   {
      cout << "ERROR STARTING UP THE ENGINE";// error starting up the engine
   }

    music = engine->play2D("Sound\\Background.ogg", true, false, true);
	fire = engine->play3D("Sound\\Fire.ogg", vec3df(-120,35,-10), true, false, true);

	
	engine->setListenerPosition(vec3df(camera.position.x,camera.position.y,camera.position.z),vec3df(0,0,1));

	if (fire)
		fire->setMinDistance(30);

	m_SmokeLastSpawned = 0.f;
	m_LeafLastSpawned = 0.f;
	m_Bullets_Hit = 0;
	m_Bullets_Fired = 0;
	m_accuracy = 100.f;
	m_Reload_Timer = 0.f;
	m_Sound_Reloading = false;
	m_Is_Reloading = false;
	m_CurrentGunHeld = GUN_SLOT_ONE;
	//Init the array of bullets
	arrBullets = new CBullet[ARR_BULLET_SIZE];
	arrTarget = new Target[ARR_TARGET_SIZE];
	m_bLightEnabled = true;
	m_ArrowReadyToFire = false;
	m_ArrowWhileMouseDown = false;
	m_LastFiredBullet = 20.f;
	m_CurrentArrowPullBack = 0.f;
	m_Score = 0;
	m_Weapon_Recoil = 0.f;


	m_Ammo_Total_12_7 = 150;
	m_Ammo_Total_Reppu = 30;
	m_Ammo_Total_46 = 50;

	m_Ammo_Current_12_7 = 2;
	m_Ammo_Current_Reppu = 1;
	m_Ammo_Current_46 = 3;
	GenerateTrees();
}
void SceneShadow::UpdateArrowDrawBack(double dt)
{
	if(m_ArrowWhileMouseDown)
	{
		
		if(m_CurrentArrowPullBack > MAX_ARROW_PULL_BACK_TIME)
			m_ArrowReadyToFire = true;
		else
			m_CurrentArrowPullBack+= (float)dt;
		
	}
}
void SceneShadow::UpdateReloading(double dt)
{
		if(m_Is_Reloading)
	{
		m_Reload_Timer+= (float)dt;
		if(!m_Sound_Reloading && !(m_CurrentGunHeld == GUN_SLOT_TWO))
		{
			const char* filename;
			filename = "Sound//Reloading.ogg";
			//vec3df pos(camera.position.x, camera.position.y,camera.position.z);
			engine->play2D(filename);
			m_Sound_Reloading = true;
		}
	}
	if(m_Is_Reloading == true && m_Reload_Timer > RELOAD_TIME)
	{
		if(m_CurrentGunHeld == GUN_SLOT_ONE && m_Ammo_Current_12_7 < 2 && m_Ammo_Total_12_7 > 0)
		{

			//Shift remaining ammo into total ammo left
			m_Ammo_Total_12_7 += m_Ammo_Current_12_7;
			//Set back to zero
			if(m_Ammo_Total_12_7 >=2)
			{
				m_Ammo_Total_12_7-=2;
				m_Ammo_Current_12_7 = 2;
			}
			else
			{
				--m_Ammo_Total_12_7;
				++m_Ammo_Current_12_7;
			}
		}
		
		else if(m_CurrentGunHeld == GUN_SLOT_THREE && m_Ammo_Current_46 < 3 && m_Ammo_Total_46 > 0)
		{
			//Shift remaining ammo into total ammo left
			m_Ammo_Total_46 += m_Ammo_Current_46;
			//Set back to zero

			if(m_Ammo_Total_46 >= 3)
			{
				m_Ammo_Total_46-=3;
				m_Ammo_Current_46 = 3;
			}
			else if(m_Ammo_Total_46 == 2)
			{
				m_Ammo_Total_46-=2;
				m_Ammo_Current_46 = 2;
			}
			else
			{
				--m_Ammo_Total_46;
				++m_Ammo_Current_46;
			}
			
		}
		m_Is_Reloading = false;
		m_Reload_Timer = 0;
		m_Sound_Reloading = false;
	}
}
void SceneShadow::UpdateSceneControls()
{
	if(Application::IsKeyPressed(VK_F1))
		glEnable(GL_CULL_FACE);
	if(Application::IsKeyPressed(VK_F2))
		glDisable(GL_CULL_FACE);
	if(Application::IsKeyPressed(VK_F3))
		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	if(Application::IsKeyPressed(VK_F4))
		glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

	
		


	if(Application::IsKeyPressed('8'))
	{
		m_bLightEnabled = true;
	}
	if(Application::IsKeyPressed('9'))
	{
		m_bLightEnabled = false;
	}

	if(Application::IsKeyPressed('1'))
	{
		m_CurrentGunHeld = GUN_SLOT_ONE;
		m_Is_Reloading = false;
	}
	if(Application::IsKeyPressed('2'))
	{
		m_CurrentGunHeld = GUN_SLOT_TWO;
		m_Is_Reloading = false;
	}
	if(Application::IsKeyPressed('3'))
	{
		m_CurrentGunHeld = GUN_SLOT_THREE;
		m_Is_Reloading = false;
	}
}
void SceneShadow::Update(double dt)
{
	dt *= m_speed;
	
	engine->setListenerPosition(vec3df(camera.position.x,camera.position.y,camera.position.z),vec3df(0,0,1));

	m_SmokeLastSpawned += (float)dt;
	m_LeafLastSpawned += (float)dt;

	//UpdateArrowDrawBack(dt);
	//UpdateReloading(dt);
	UpdateSceneControls();
	//UpdateParticle(dt);
	
	
	m_LastFiredBullet+= (float)dt;
	
	//if(m_Weapon_Recoil > 0)
	//{
	//	camera.target.y -= dt;
	//	m_Weapon_Recoil-= dt;
	//	camera.m_Pitch_Limiter -=dt;
	//}

	camera.Update(dt);	
	/*if(camera.sCameraType == Camera3::LAND_CAM)
	{
		camera.position.y = GetCameraCurrentY() + cameraYoffset;
		camera.target.y = GetCameraCurrentY() +cameraYoffset;
	}*/
	m_fFps = (float)(1.f / dt);

	//SpriteAnimation *sa = dynamic_cast<SpriteAnimation*>(meshList[GEO_ANIMATION_FIRE]);
	//if(sa)
	//{
	//	sa->Update(dt);
	//} 
	//sa = dynamic_cast<SpriteAnimation*>(meshList[GEO_ANIMATION_BIRD]);
	//if(sa)
	//{
	//	sa->Update(dt);
	//} 

	if(Application::IsKeyPressed('I'))
		lights[0].position.z -= (float)(10.f * dt);
	if(Application::IsKeyPressed('K'))
		lights[0].position.z += (float)(10.f * dt);
	if(Application::IsKeyPressed('J'))
		lights[0].position.x -= (float)(10.f * dt);
	if(Application::IsKeyPressed('L'))
		lights[0].position.x += (float)(10.f * dt);
	if(Application::IsKeyPressed('O'))
		lights[0].position.y -= (float)(10.f * dt);
	if(Application::IsKeyPressed('P'))
		lights[0].position.y += (float)(10.f * dt);



	//================= UPDATE BULLETS ==============================

	/*for(int i = 0; i< 30; ++i)
	{
		arrBullets[i].Update(dt);
	}
	UpdateCollision();*/
}

void SceneShadow::RenderText(Mesh* mesh, std::string text, Color color)
{
	if(!mesh || mesh->textureID <= 0)
		return;
	
	glDisable(GL_DEPTH_TEST);
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
		characterSpacing.SetToTranslation(i * 1.0f, 0, 0); //1.0f is the spacing of each character, you may change this value
		Mtx44 MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top() * characterSpacing;
		glUniformMatrix4fv(m_uiParameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);
	
		mesh->Render((unsigned)text[i] * 6, 6);
	}
	glBindTexture(GL_TEXTURE_2D, 0);
	glUniform1i(m_uiParameters[U_TEXT_ENABLED], 0);
	glEnable(GL_DEPTH_TEST);
}

void SceneShadow::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
{
	if(!mesh || mesh->textureID <= 0)
		return;
	
	/*glDisable(GL_DEPTH_TEST);
	Mtx44 ortho;
	ortho.SetToOrtho(0, 80, 0, 60, -10, 10);
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);*/
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
	//projectionStack.PopMatrix();
	viewStack.PopMatrix();
	modelStack.PopMatrix();
	//glEnable(GL_DEPTH_TEST);
}

void SceneShadow::RenderMesh(Mesh *mesh, bool enableLight)
{
	Mtx44 MVP, modelView, modelView_inverse_transpose;

	if(m_renderPass == RENDER_PASS_PRE)
	{
		Mtx44 lightDepthMVP = m_lightDepthProj * m_lightDepthView * modelStack.Top();
		glUniformMatrix4fv(m_uiParameters[U_LIGHT_DEPTH_MVP_GPASS],1,GL_FALSE, &lightDepthMVP.a[0]);
		mesh->Render();
		return;
	}

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
		/*glActiveTexture(GL_TEXTURE0+i);
		glBindTexture(GL_TEXTURE_2D, mesh->textureArray[i]);
		glUniform1i(m_uiParameters[U_COLOR_TEXTURE+i], i);*/
		
		
	}

	
	mesh->Render();
	//glBindTexture(GL_TEXTURE_2D,0);
}
void SceneShadow::RenderWorld()
{
	//Render some primitive objects, including a (10 by 10) ground and a (radius 1) sphere
	modelStack.PushMatrix();
	modelStack.Translate(0,-5,0);
	modelStack.Rotate(-45,1,0,0);
	modelStack.Scale(50,50,1);
	RenderMesh(meshList[GEO_QUAD],true);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(0,-3,0);
	modelStack.Scale(0.1,0.1,0.1);
	RenderMesh(meshList[GEO_SPHERE],true);
	modelStack.PopMatrix();
}


void SceneShadow::RenderMeshIn2D(Mesh *mesh, bool enableLight, float size, float x, float y, bool rotate, bool m_rotate)
{
	Mtx44 ortho;
	ortho.SetToOrtho(-80, 80, -60, 60, -10, 10);
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity();
	modelStack.PushMatrix();
	modelStack.LoadIdentity();
	if(m_rotate)
	{
		//modelStack.PushMatrix();
		
		modelStack.Translate(67,45,0);

		modelStack.Rotate(-camera.m_Yaw,0,0,1);
		
		
		modelStack.Translate(x/64,y/64,0);
		//modelStack.PopMatrix();
	}
	else
	{
	modelStack.Translate(x, y, 0);
	}
	modelStack.Scale(size, size, size);
	if(rotate)
	{
		modelStack.Rotate(-camera.m_Yaw,0,0,1);
		
	}
	Mtx44 MVP, modelView, modelView_inverse_transpose;
	MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top();
	if(enableLight && m_bLightEnabled)
	{
		glUniform1i(m_uiParameters[U_LIGHTENABLED], 1);
		modelView = viewStack.Top() * modelStack.Top();
		glUniformMatrix4fv(m_uiParameters[U_MODELVIEW], 1, GL_FALSE, &modelView.a[0]);
		modelView_inverse_transpose = modelView.GetInverse().GetTranspose();
		glUniformMatrix4fv(m_uiParameters[U_MODELVIEW_INVERSE_TRANSPOSE], 1, GL_FALSE, &modelView.a[0]);
		
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
void SceneShadow::RenderTerrain()
{
	modelStack.PushMatrix();  
	modelStack.Scale((float)SKYBOXSIZE, 350.f, (float)SKYBOXSIZE); // values varies.  
	RenderMesh(meshList[GEO_TERRAIN], m_bLightEnabled);  
	modelStack.PopMatrix();
}

void SceneShadow::RenderSkyPlane(Mesh* mesh, Color color, int slices, float PlanetRadius, float AtmosphereRadius, float hTile, float vTile)
{
	modelStack.PushMatrix();
	modelStack.Translate(0, 1800, 0);
	//modelStack.Rotate(0,0,1,0);
	RenderMesh(meshList[GEO_SKYPLANE], false);
	modelStack.PopMatrix();
} 
void SceneShadow::RenderParticle()
{
	for(std::vector<Particle *>::iterator it = m_paList.begin(); it != m_paList.end(); ++it)
	{
		Particle *go = (Particle *)*it;
		if(go->active)
		{
			RenderGO(go);
		}
	}
}

void SceneShadow::Render()
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
	//============================PRE RENDER PASS =============================
	RenderPassGPass();

	//============================ MAIN RENDER PASS ===========================
	RenderPassMain();
	
	/*
	glUniform1i(m_uiParameters[U_FOG_ENABLE], 1);
	
	//RenderMesh(meshList[GEO_AXES], false);
	RenderSkyPlane(meshList[GEO_SKYPLANE],Color (1,1,1), 128, 300.0f, (float)SKYBOXSIZE, 1.0f, 1.0f);
	RenderBullets();
	RenderTargets();
	//Apply fog
	RenderTerrain();
	
	RenderGuns();
	RenderStartZone();
	RenderTrees();
	RenderParticle();
	
	glDisable(GL_CULL_FACE);
	modelStack.PushMatrix();
	modelStack.Translate(0,35,0);
	modelStack.Scale(20,20,20);
	RenderMesh(meshList[GEO_ANIMATION_BIRD],false);
	modelStack.PopMatrix();
	glEnable(GL_CULL_FACE);

	modelStack.PushMatrix();
	modelStack.Translate(CAMPFIRE1.x,CAMPFIRE1.y,CAMPFIRE1.z);
	Vector3 posP;
	posP.x = camera.position.x -CAMPFIRE1.x;
	posP.z = camera.position.z -CAMPFIRE1.z;
	float theta = Math::RadianToDegree(atan2(posP.x, posP.z));
	modelStack.Rotate(theta,0,1,0);
	modelStack.Scale(20,20,20);
	RenderMesh(meshList[GEO_ANIMATION_FIRE],false);
	
	modelStack.PopMatrix();

	glUniform1i(m_uiParameters[U_FOG_ENABLE], 0);
	RenderMeshIn2D( m_cMinimap->GetAvatar(), false, 20.f, 68.f, 48.f);
	*/

	/*
	for(int i = 0; i< 10; ++i)
	{		
		if( (arrTarget[i].GetPosition() - camera.position).Length() < 800)
		RenderMeshIn2D( m_cMinimap->GetTarget(), false, 10.f, 68.f + arrTarget[i].GetPosition().x -camera.position.x, 48.f - arrTarget[i].GetPosition().z + camera.position.z,false,true);
	}
	RenderMeshIn2D( m_cMinimap->GetBackground(), false, 30.f, 68.f, 48.f, true);
	RenderMeshIn2D( m_cMinimap->GetBorder(), false, 30.f, 68.f, 48.f, true);
	//RenderMeshIn2D( m_cMinimap->GetBackground(), false, 30.f, 68.f, 48.f, true);
	
	*/


	//============================= HUD ====================================
	/*
	SetHUD(true);

	if(m_CurrentGunHeld == GUN_SLOT_ONE)
	{
		RenderMeshIn2D(meshList[GEO_CROSSHAIR1],false,50.f,0.f,0.f);
		std::ostringstream ssGunAmmo;
		ssGunAmmo << m_Ammo_Current_12_7 << "/" << m_Ammo_Total_12_7;
		RenderTextOnScreen(meshList[GEO_TEXT], ssGunAmmo.str(), Color(0, 1, 0), 3, 60, 4);
		RenderMeshIn2D(meshList[GEO_HEROUNDS], false, 10.f,70.f,-50.f);

	}
	else if(m_CurrentGunHeld == GUN_SLOT_TWO)
	{
		RenderMeshIn2D(meshList[GEO_CROSSHAIR2],false,10.f,0.f,0.f);
		std::ostringstream ssGunAmmo;
		ssGunAmmo << m_Ammo_Current_Reppu << "/" << m_Ammo_Total_Reppu;
		RenderTextOnScreen(meshList[GEO_TEXT], ssGunAmmo.str(), Color(0, 1, 0), 3, 60, 4);

	}
	else if(m_CurrentGunHeld == GUN_SLOT_THREE)
	{
		RenderMeshIn2D(meshList[GEO_CROSSHAIR3],false,100.f,0.f,0.f);
		std::ostringstream ssGunAmmo;
		ssGunAmmo << m_Ammo_Current_46 << "/" << m_Ammo_Total_46;
		RenderTextOnScreen(meshList[GEO_TEXT], ssGunAmmo.str(), Color(0, 1, 0), 3, 60, 4);
		RenderMeshIn2D(meshList[GEO_APROUNDS], false, 10.f,70.f,-50.f);
	}
	*/
	
	//On screen text
	//if(m_Bullets_Fired != 0)
	//	m_accuracy = m_Bullets_Hit *  (1/m_Bullets_Fired) * 100.f;
	//else
	//	m_accuracy = 100.f;
	//std::ostringstream ssAcc;
	//ssAcc.precision(4);
	//ssAcc << "Accuracy: " << m_accuracy <<"%";
	//RenderTextOnScreen(meshList[GEO_TEXT], ssAcc.str(), Color(0, 1, 0), 3, 0, 9);

	//std::ostringstream ss;
	//ss.precision(3);
	//ss << "FPS: " << m_fFps;
	//RenderTextOnScreen(meshList[GEO_TEXT], ss.str(), Color(0, 1, 0), 3, 0, 6);
	////=======================================
	//m_objectCount = 0;
	//for(unsigned int i = 0; i< m_paList.size(); ++i)
	//{
	//	if(m_paList[i]->active == true)
	//	{
	//		++m_objectCount;
	//	}
	//}
	//std::ostringstream ssActiveObj;
	//ssActiveObj << "Objects: " << m_objectCount;
	//RenderTextOnScreen(meshList[GEO_TEXT], ssActiveObj.str(), Color(0, 1, 0), 3, 0, 12);

	////========================================
	//std::ostringstream ssScore;
	//ssScore << "Score: " << m_Score;
	//RenderTextOnScreen(meshList[GEO_TEXT], ssScore.str(), Color(1, 0, 0), 3, 0, 3);
	//std::ostringstream ssGun;
	//if(m_CurrentGunHeld == GUN_SLOT_ONE)
	//	ssGun << "12.7cm Cannon";
	//else if(m_CurrentGunHeld == GUN_SLOT_TWO)
	//	ssGun << "Reppu LongBow";
	//else if(m_CurrentGunHeld == GUN_SLOT_THREE)
	//	ssGun << "46cm Cannon";
	//RenderTextOnScreen(meshList[GEO_TEXT], ssGun.str(), Color(1, 1, 0), 3, 3, 57);

	//SetHUD(false);
}

void SceneShadow::RenderPassGPass()
{
	m_renderPass = RENDER_PASS_PRE;
	m_lightDepthFBO.BindForWriting();

	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glClear(GL_DEPTH_BUFFER_BIT);
	glUseProgram(m_gPassShaderID);

	//These matrices should change when light position or direction changes
	if(lights[0].type == Light::LIGHT_DIRECTIONAL)
		m_lightDepthProj.SetToOrtho(-100,100,-100,100,-100,200);
	else
		m_lightDepthProj.SetToPerspective(10,1.f,0.1,20);
	m_lightDepthView.SetToLookAt(lights[0].position.x, lights[0].position.y, lights[0].position.z, 0,0,0,0,1,0);
	RenderWorld();
}

void SceneShadow::RenderPassMain()
{
	m_renderPass = RENDER_PASS_MAIN;

	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	glViewport(0,0,Application::GetWindowWidth(), Application::GetWindowHeight());
	glEnable(GL_CULL_FACE);
	glCullFace(GL_BACK);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glUseProgram(m_programID);

	//pass light depth texture 
	m_lightDepthFBO.BindForReading(GL_TEXTURE8);
	glUniform1i(m_uiParameters[U_SHADOW_MAP] , 8);
	//glActiveTexture(GL_TEXTURE0);

	//... old stuffs



	RenderMesh(meshList[GEO_AXES], false);
	RenderWorld();
	//Render lightball
	modelStack.PushMatrix();
	modelStack.Translate(lights[0].position.x,lights[0].position.y,lights[0].position.z);
	RenderMesh(meshList[GEO_LIGHTBALL],false);
	modelStack.PopMatrix();
	//Render GEO_LIGHT_DEPTH_QUAD

	RenderMesh(meshList[GEO_LIGHT_DEPTH_QUAD],false);
}



void SceneShadow::RenderBullets()
{
	for(int i = 0; i< ARR_BULLET_SIZE; ++i)
	{
		if(arrBullets[i].GetStatus())
		{
			modelStack.PushMatrix();
			modelStack.Translate((float)arrBullets[i].GetPosition().x,(float)arrBullets[i].GetPosition().y,(float)arrBullets[i].GetPosition().z);
			modelStack.Scale(1,1,1);
			if(arrBullets[i].GetType() ==  0)
				RenderMesh(meshList[GEO_SPHERE],false);
			else if(arrBullets[i].GetType() == 1)
				RenderMesh(meshList[GEO_ARROW],false);
				//RenderMesh(meshList[GEO_SPHERE],false);
			modelStack.PopMatrix();
		}
		if(arrBullets[i].GetPosition().y < GetHeightMapY(arrBullets[i].GetPosition().x,arrBullets[i].GetPosition().z))
		{
			arrBullets[i].SetStatus(false);
		}
	}
}
void SceneShadow::RenderTargets()
{
	for(int i = 0; i < ARR_TARGET_SIZE; ++i)
	{
		if(arrTarget[i].GetActive())
		{
			modelStack.PushMatrix();
			modelStack.Translate(arrTarget[i].GetPosition().x,arrTarget[i].GetPosition().y,arrTarget[i].GetPosition().z);
			
			RenderMesh(meshList[GEO_BARREL],m_bLightEnabled);
			modelStack.PopMatrix();
		}
		if(arrTarget[i].GetActive() == false)
		{
			Vector3 position(0,0,0);
			position.x = (float)(rand()%600-300);
			position.z = (float)(rand()%600-1000);
			position.y = GetHeightMapY(position.x,position.z);
			arrTarget[i].Init(position,true);
		
		}
		
	}


}
void SceneShadow::RenderGuns()
{
	//Do checking conditions for diffient type of gun

	
	modelStack.PushMatrix();
		modelStack.Translate(camera.position.x,camera.position.y,camera.position.z);
		modelStack.Rotate(camera.m_Yaw+185,0,1,0);
		
		modelStack.PushMatrix();
		modelStack.Rotate(-camera.m_Pitch_Limiter,1,0,0);
			modelStack.Translate(-2,-1.5f,3);
			modelStack.Scale(1,1,1);
			switch(m_CurrentGunHeld)
			{
			case GUN_SLOT_ONE:
				RenderMesh(meshList[GEO_FIRST_GUN], m_bLightEnabled);
				break;
			case GUN_SLOT_TWO:
				RenderMesh(meshList[GEO_SECOND_GUN], m_bLightEnabled);
				modelStack.PushMatrix();
				modelStack.Translate(0,0,-m_CurrentArrowPullBack );
				if(m_Ammo_Total_Reppu > 0 && m_Ammo_Current_Reppu > 0)
				RenderMesh(meshList[GEO_ARROW],m_bLightEnabled);
				modelStack.PopMatrix();
				break;
			case GUN_SLOT_THREE:
				RenderMesh(meshList[GEO_THIRD_GUN], m_bLightEnabled);

				break;
			}
			
		modelStack.PopMatrix();
	modelStack.PopMatrix();
	
}
void SceneShadow::RenderStartZone()
{
	modelStack.PushMatrix();
		
		//Front left piece
		modelStack.PushMatrix();
		modelStack.Translate(79,7.0f,-30);
		modelStack.Rotate(90.f,0.f,1.f,0.f);
		RenderMesh(meshList[GEO_SHOOTING_PARAPET],m_bLightEnabled);
		modelStack.PopMatrix();
		//Front right piece
		modelStack.PushMatrix();
		modelStack.Translate(-78,7.0f,-30);
		modelStack.Rotate(90.f,0.f,1.f,0.f);
		RenderMesh(meshList[GEO_SHOOTING_PARAPET],m_bLightEnabled);
		modelStack.PopMatrix();

		//Left Front piece
		modelStack.PushMatrix();
		modelStack.Translate(-163.5f,7.0f,42);
		RenderMesh(meshList[GEO_SHOOTING_PARAPET],m_bLightEnabled);
		modelStack.PopMatrix();

		//Right Front piece
		modelStack.PushMatrix();
		modelStack.Translate(163.5f,7.0f,42);
		RenderMesh(meshList[GEO_SHOOTING_PARAPET],m_bLightEnabled);
		modelStack.PopMatrix();


		//Starting area ROAD
		modelStack.PushMatrix();
		modelStack.Translate(0,GetHeightMapY(0,40)+0.3f,40);
		modelStack.Rotate(-90.f,1,0,0);
		modelStack.Scale(300,300,300);
		RenderMesh(meshList[GEO_ROAD],m_bLightEnabled);
		modelStack.PopMatrix();



		//Left Barrels
		modelStack.PushMatrix();
		modelStack.Translate(-120,GetHeightMapY(-120,-10),-10);
		RenderMesh(meshList[GEO_BARREL],m_bLightEnabled);
		
		modelStack.PopMatrix();

		//Left Barrels
		modelStack.PushMatrix();
		modelStack.Translate(-140,GetHeightMapY(-140,-10),-10);
		RenderMesh(meshList[GEO_BARREL],m_bLightEnabled);
		modelStack.PopMatrix();

		//Left Barrels
		modelStack.PushMatrix();
		modelStack.Translate(-140,GetHeightMapY(-140,10),10);
		RenderMesh(meshList[GEO_BARREL],m_bLightEnabled);
		modelStack.PopMatrix();

		//Left Combined Crate
		modelStack.PushMatrix();
		modelStack.Translate(-140,GetHeightMapY(-140,50),50);
		modelStack.Rotate(90,0,1,0);
		RenderMesh(meshList[GEO_COMBINED_CRATE],m_bLightEnabled);
		modelStack.PopMatrix();
		
		//Right Combined Crate
		modelStack.PushMatrix();
		modelStack.Translate(140,GetHeightMapY(140,50),50);
		modelStack.Rotate(90,0,1,0);
		RenderMesh(meshList[GEO_COMBINED_CRATE],m_bLightEnabled);
		modelStack.PopMatrix();

		//Table
		modelStack.PushMatrix();
		modelStack.Translate(100,GetHeightMapY(100,-5),-5);
		modelStack.Rotate(90,0,1,0);
		RenderMesh(meshList[GEO_TABLE],m_bLightEnabled);
		modelStack.PopMatrix();

		//Right Crate
		modelStack.PushMatrix();
		modelStack.Translate(123,GetHeightMapY(120,-5),-5);
		RenderMesh(meshList[GEO_CRATE],m_bLightEnabled);
		modelStack.PopMatrix();
		//Right Crate
		modelStack.PushMatrix();
		modelStack.Translate(145,GetHeightMapY(120,-5),-5);
		RenderMesh(meshList[GEO_CRATE],m_bLightEnabled);
		modelStack.PopMatrix();

		//Road Blocks right
		modelStack.PushMatrix();
		modelStack.Translate(400, GetHeightMapY(400,-400), -400);
		RenderMesh(meshList[GEO_ROAD_BLOCK],m_bLightEnabled);
		modelStack.PushMatrix();
		modelStack.Translate(0, 25, -0);
		RenderMesh(meshList[GEO_ROAD_BLOCK],m_bLightEnabled);
		modelStack.PopMatrix();
		modelStack.PopMatrix();

		//Road block left
		modelStack.PushMatrix();
		modelStack.Translate(-200, GetHeightMapY(-200,-400), -400);
		modelStack.Rotate(20.f,0,1,0);
		RenderMesh(meshList[GEO_ROAD_BLOCK],m_bLightEnabled);
		modelStack.PopMatrix();


		//Car
		modelStack.PushMatrix();
		modelStack.Translate(300,GetHeightMapY(300,-700)-5,-700);
		modelStack.Rotate(90.f,0,1,0);
		modelStack.Scale(0.7f,0.7f,0.7f);
		RenderMesh(meshList[GEO_CAR],m_bLightEnabled);
		RenderMesh(meshList[GEO_CAR_SCREEN], m_bLightEnabled);
		modelStack.PopMatrix();

		//Watchtower
		modelStack.PushMatrix();
		modelStack.Translate(-250,GetHeightMapY(-250,50),50);
		modelStack.Rotate(180,0,1,0);
		RenderMesh(meshList[GEO_WATCH_TOWER],m_bLightEnabled);
		modelStack.PopMatrix();

		//Shealther
		modelStack.PushMatrix();
		modelStack.Translate(0,GetHeightMapY(0,180),180);
		modelStack.Rotate(180,0,1,0);
		RenderMesh(meshList[GEO_SHEALTER],m_bLightEnabled);
		modelStack.PopMatrix();



		//BUilding
		modelStack.PushMatrix();
		modelStack.Translate(400,GetHeightMapY(400,300),300);
		modelStack.Rotate(-180,0,1,0);
		RenderMesh(meshList[GEO_BUILDING1],m_bLightEnabled);
		modelStack.PopMatrix();

		//Spotlight
		modelStack.PushMatrix();
		modelStack.Translate(55,GetHeightMapY(40,30),140);
		modelStack.Rotate(-30,0,1,0);
		RenderMesh(meshList[GEO_SPOTLIGHT],m_bLightEnabled);
		modelStack.PopMatrix();

		
		


	modelStack.PopMatrix();
}

void SceneShadow::Exit()
{
	// Cleanup VBO
	for(int i = 0; i < NUM_GEOMETRY; ++i)
	{
		if(meshList[i])
			delete meshList[i];
	}


	if (music)
		music->drop(); // release music stream.
	if(fire)
		fire->drop();
	engine->drop(); // delete engine

	glDeleteProgram(m_programID);
	glDeleteProgram(m_gPassShaderID);
	glDeleteVertexArrays(1, &m_vertexArrayID);
}

void SceneShadow::UpdateCameraStatus(const unsigned char key)
{
	camera.UpdateStatus(key);
}
void SceneShadow::UpdateWeaponStatus(const unsigned char key)
{
	if(key == WA_FIRE)
	{
		//Add a bullet object which start at the camera position and moves in the camera's direction 
		if(m_CurrentGunHeld == GUN_SLOT_ONE && m_Ammo_Current_12_7>0)//12.7cm cannon here
				for(int i = 0; i < ARR_BULLET_SIZE; ++i)
				{
					if(arrBullets[i].GetStatus() == false && m_LastFiredBullet > AUTO_FIRE_RATE*0.25)
					{
						const char* filename;
						filename = "Sound//Cannon.ogg";
						vec3df pos(camera.position.x, camera.position.y,camera.position.z);
						engine->play3D(filename,pos);
						arrBullets[i].Init(camera.position,camera.target-camera.position,500.f,5.0f,0);
						m_LastFiredBullet = 0;
						--m_Ammo_Current_12_7;
						++m_Bullets_Fired;
						//Recoil AFTER the bullet comes out
						m_Weapon_Recoil+= 0.15f;
						camera.target.y += 0.15f;
						camera.m_Pitch_Limiter += 0.15f;
						break;
					}
				}
		
		else if(m_CurrentGunHeld == GUN_SLOT_TWO)//Aircraft lauching bow here
		{
			
				m_ArrowWhileMouseDown = true;
			
		}
		
		else if(m_CurrentGunHeld == GUN_SLOT_THREE && m_Ammo_Current_46 > 0)
			for(int i = 0; i < ARR_BULLET_SIZE; ++i)
			{
				if(arrBullets[i].GetStatus() == false && m_LastFiredBullet > AUTO_FIRE_RATE * 0.5)
				{
					const char* filename;
					filename = "Sound//Cannon2.ogg";
					vec3df pos(camera.position.x, camera.position.y,camera.position.z);
					engine->play3D(filename,pos);
					
					arrBullets[i].Init(camera.position,camera.target-camera.position,1000.f,5.0f,0);
					m_LastFiredBullet = 0;
					--m_Ammo_Current_46;
					++m_Bullets_Fired;
					//Recoil AFTER the bullet comes out
					m_Weapon_Recoil+= 0.15f;
					camera.target.y += 0.15f;
					camera.m_Pitch_Limiter += 0.15f;
					break;
				}
			}
	}
	//If Left mouse is released
	if(key == WA_RELEASE)
	{
		//If arrow is ready to fire
		if(m_ArrowReadyToFire == true &&  m_Ammo_Current_Reppu > 0)
		{
			//Check bullet array for non-active bullet
			for(int i = 0; i < ARR_BULLET_SIZE; ++i)
			{
				if(arrBullets[i].GetStatus() == false)
				{
					arrBullets[i].Init(camera.position,camera.target-camera.position,400.f,10.0f,1);
					++m_Bullets_Fired;
					--m_Ammo_Current_Reppu;
					break;
				}
			}
		}
		m_CurrentArrowPullBack = 0;
		m_ArrowReadyToFire = false; 
		m_ArrowWhileMouseDown = false;
	}

	if(key == WA_RELOAD)
	{
		if((m_CurrentGunHeld == GUN_SLOT_THREE && m_Ammo_Current_46 < 3) ||(m_CurrentGunHeld == GUN_SLOT_ONE && m_Ammo_Current_12_7 < 2))
			m_Is_Reloading = true;
		if (m_CurrentGunHeld == GUN_SLOT_TWO && m_Ammo_Current_Reppu < 1)
		{
			--m_Ammo_Total_Reppu;
			++m_Ammo_Current_Reppu;
		}
		
	}
	
}
void SceneShadow::UpdateParticle(double dt)
{
	if(m_LeafLastSpawned > 0.1f)
	{
		Particle *pa = FetchParticle();

		pa->type = PARTICLE_TYPE::PARTICLE_LEAF;
		pa->pos.Set(Math::RandFloatMinMax(-SKYBOXSIZE*0.5,SKYBOXSIZE*0.5),1000,Math::RandFloatMinMax(-SKYBOXSIZE*0.5,SKYBOXSIZE*0.5));
		pa->vel.Set(Math::RandFloatMinMax(-100,100),Math::RandFloatMinMax(5,10),Math::RandFloatMinMax(-100,100));
		pa->scale.Set(1,1,1);

		m_LeafLastSpawned = 0;
	}
	

	if(m_SmokeLastSpawned > 1.f)
	{
		Particle *pa = FetchParticle();

		pa->type = PARTICLE_TYPE::PARTICLE_SMOKE;
		pa->pos.Set(CAMPFIRE1.x,CAMPFIRE1.y+13,CAMPFIRE1.z);
		pa->vel.Set(Math::RandFloatMinMax(-2,2),1,Math::RandFloatMinMax(-2,2));
		pa->scale.Set(1,1,1);
		pa->m_LifeTime = 3;
		m_SmokeLastSpawned = 0;
	}

	for(std::vector<Particle *>::iterator it = m_paList.begin(); it != m_paList.end(); ++it)
	{
		Particle *go = (Particle *)*it;

		if(go->active)
		{
			if(go->type == PARTICLE_TYPE::PARTICLE_LEAF)
			{
				go->vel += m_gravity*dt;
				go->scale.Set(1,1,1);
				go->pos += go->vel * (float)dt;

				if(go->pos.y < GetHeightMapY(go->pos.x,go->pos.z))
				{
					go->active = false;
				}
			}
			else if(go->type == PARTICLE_TYPE::PARTICLE_SMOKE)
			{
				go->vel -= m_gravity*dt;
				go->pos += go->vel * (float)dt;
				go->scale.x += 0.1;
				go->scale.y += 0.1;
				go->m_LifeTime-=dt;
				if(go->m_LifeTime <= 0)
				{
					go->active = false;
				}
			}
		}
		



	}


}
void SceneShadow::UpdateCollision()
{
	for(int i = 0; i< ARR_BULLET_SIZE; ++i)
	{
		if(arrBullets[i].GetStatus())
			for(int j = 0; j<ARR_TARGET_SIZE; ++j)
			{
				if(arrTarget[j].GetActive())
				{
					Vector3 v1 = arrBullets[i].GetPosition();
					Vector3 v2 = arrTarget[j].GetPosition();
					v2.y += 10.f;

					if( (v1 - v2).Length() < 12)
					{
						m_Score+=100;
						++m_Bullets_Hit;
						const char* filename;
						filename = "Sound//Explosion.ogg";
						vec3df pos(camera.position.x, camera.position.y,camera.position.z);
						engine->play3D(filename,pos);

						arrBullets[i].SetStatus(false);
						arrTarget[j].SetActive(false);

						break;
					}
				}
			}
	}

}
const float SceneShadow::GetCameraCurrentY(void)
{
	
	return 350* (ReadHeightMap(m_heightMap, camera.position.x/SKYBOXSIZE, camera.position.z/SKYBOXSIZE));
}

const float SceneShadow::GetHeightMapY(float x, float z)
{
	return 350* (ReadHeightMap(m_heightMap, x/SKYBOXSIZE, z/SKYBOXSIZE));
}

const std::vector<unsigned char>SceneShadow::GetHeightMap()
{
	return m_heightMap;
}