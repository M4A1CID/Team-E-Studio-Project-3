//Maya ASCII 2015 scene
//Name: cell_door.ma
//Last modified: Wed, Aug 19, 2015 11:19:36 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5110514662484533 9.3022166065087912 -27.583805617152731 ;
	setAttr ".r" -type "double3" -23.138352729272068 -174.19999999994252 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.682733438431114;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pCube1" -p "group";
	setAttr ".t" -type "double3" 0 3.1946511592698146 0 ;
	setAttr ".s" -type "double3" 1.1958990718316596 0.068591301806149321 0.10642042164332545 ;
createNode mesh -n "pasted__pCubeShape1" -p "|group|pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002235174179 0.52083327434957027 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0 -7 0 ;
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "group2";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pCube1" -p "group2";
	setAttr ".t" -type "double3" -3.4932282144213223 1.6059489073806492 0 ;
	setAttr ".s" -type "double3" 2.485724421826315 0.14920590635435718 0.10642042164332545 ;
createNode mesh -n "pasted__pCubeShape1" -p "|group2|pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group3";
	setAttr ".t" -type "double3" -3.6963602328820135 0 0 ;
	setAttr ".rp" -type "double3" 1.7788076977818563 0.0067717855786768588 0 ;
	setAttr ".sp" -type "double3" 1.7788076977818563 0.0067717855786768588 0 ;
createNode transform -n "pasted__group2" -p "group3";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 1.2689888221071068 0 0 ;
	setAttr ".s" -type "double3" 0.138281305376519 3.7113093502813701 0.138 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	setAttr ".rp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
	setAttr ".sp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
createNode transform -n "pasted__pCylinder1" -p "group4";
	setAttr ".s" -type "double3" 0.138281305376519 3.7113093502813701 0.138 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group4|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".t" -type "double3" -1.1542156248868678 0 0 ;
	setAttr ".rp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
	setAttr ".sp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
createNode transform -n "pasted__pCylinder1" -p "group5";
	setAttr ".s" -type "double3" 0.138281305376519 3.7113093502813701 0.138 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group5|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	setAttr ".t" -type "double3" 0.64611381229336917 0 0 ;
	setAttr ".rp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
	setAttr ".sp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
createNode transform -n "pasted__pCylinder1" -p "group6";
	setAttr ".s" -type "double3" 0.138281305376519 3.7113093502813701 0.138 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group6|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	setAttr ".t" -type "double3" -0.55398944314152265 0 0 ;
	setAttr ".rp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
	setAttr ".sp" -type "double3" -1.6484416165418736e-008 0 -2.4726624262005892e-008 ;
createNode transform -n "pasted__pCylinder1" -p "group7";
	setAttr ".s" -type "double3" 0.138281305376519 3.7113093502813701 0.138 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group7|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
	setAttr ".t" -type "double3" 0 -2.6348466984627352 0 ;
	setAttr ".rp" -type "double3" 0 0.8199602898355276 0 ;
	setAttr ".sp" -type "double3" 0 0.8199602898355276 0 ;
createNode transform -n "group9";
	setAttr ".t" -type "double3" 0 -0.84041118328569375 0 ;
	setAttr ".rp" -type "double3" 0 0.8199602898355276 0 ;
	setAttr ".sp" -type "double3" 0 0.8199602898355276 0 ;
createNode transform -n "group10";
	setAttr ".t" -type "double3" -3.8207816291655501 0 0 ;
	setAttr ".rp" -type "double3" 1.8940510036856995 0.0067717855786770809 1.2686302855446918e-008 ;
	setAttr ".sp" -type "double3" 1.8940510036856995 0.0067717855786770809 1.2686302855446918e-008 ;
createNode transform -n "pasted__group2" -p "group10";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group10|pasted__group2";
	setAttr ".t" -type "double3" -3.4932282144213223 1.6059489073806492 0 ;
	setAttr ".s" -type "double3" 2.485724421826315 0.14920590635435718 0.10642042164332545 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group10|pasted__group2|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11";
	setAttr ".t" -type "double3" 0 -2.7452116819267487 0 ;
	setAttr ".rp" -type "double3" 0 3.6379101068856907 0 ;
	setAttr ".sp" -type "double3" 0 3.6379101068856907 0 ;
createNode transform -n "pasted__group" -p "group11";
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group11|pasted__group";
	setAttr ".t" -type "double3" 0 3.1946511592698146 0 ;
	setAttr ".s" -type "double3" 1.1958990718316596 0.068591301806149321 0.10642042164332545 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group11|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002235174179 0.52083327434957027 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12";
	setAttr ".t" -type "double3" 0 -3.6056742435029405 0 ;
	setAttr ".rp" -type "double3" 0 3.6379101068856907 0 ;
	setAttr ".sp" -type "double3" 0 3.6379101068856907 0 ;
createNode transform -n "pasted__group" -p "group12";
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group12|pasted__group";
	setAttr ".t" -type "double3" 0 3.1946511592698146 0 ;
	setAttr ".s" -type "double3" 1.1958990718316596 0.068591301806149321 0.10642042164332545 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group12|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002235174179 0.52083327434957027 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group13";
	setAttr ".t" -type "double3" 0 -5.4430547249103709 0 ;
	setAttr ".rp" -type "double3" 0 3.6379101068856907 0 ;
	setAttr ".sp" -type "double3" 0 3.6379101068856907 0 ;
createNode transform -n "pasted__group" -p "group13";
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group13|pasted__group";
	setAttr ".t" -type "double3" 0 3.1946511592698146 0 ;
	setAttr ".s" -type "double3" 1.1958990718316596 0.068591301806149321 0.10642042164332545 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group13|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002235174179 0.52083327434957027 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group14";
	setAttr ".t" -type "double3" 0 -7.2287565938431886 0 ;
	setAttr ".rp" -type "double3" 0 3.6379101068856907 0 ;
	setAttr ".sp" -type "double3" 0 3.6379101068856907 0 ;
createNode transform -n "pasted__group" -p "group14";
	setAttr ".rp" -type "double3" 0 3.5 0 ;
	setAttr ".sp" -type "double3" 0 3.5 0 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group14|pasted__group";
	setAttr ".t" -type "double3" 0 3.1635741199472678 0 ;
	setAttr ".s" -type "double3" 1.1958990718316596 0.068591301806149321 0.10642042164332545 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group14|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002235174179 0.52083327434957027 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "pasted__polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube3";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder2";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder3";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder4";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[46]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[42]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[44]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  1.7881393e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[41]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  1.7881393e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[42]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  -1.1920929e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  -1.1920929e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[37]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  1.7881393e-007 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[29]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  1.7881393e-007 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[35]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1.1920929e-007 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[28]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  -1.1920929e-007 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1.000000238419 -1.1920929e-007 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.000000238419 8.3446503e-007 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000238419 -1.1920929e-007 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.000000119209 2.9802322e-007 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1.000000119209 9.5367432e-007 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  -1.000000119209 1.5497208e-006 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1.1920929e-007 1.000001072884 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1.1920929e-007 -1.000000476837 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 1.000001549721 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -1.000000357628 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1.1920929e-007 1.000001549721 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1.1920929e-007 -1.000000357628 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.1920929e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[23:24]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  -1.1920929e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -1.1920929e-007 1.5497208e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.1920929e-007 1.5497208e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.1920929e-007 1.000001549721 1.000003457069;
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[24]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  -1.1920929e-007 9.5367432e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[22]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 2.9802322e-007 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -1.1920929e-007 1.000001072884 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  -1.1920929e-007 -1.000000476837 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  -1.1920929e-007 -1.000000357628 1.000003457069;
createNode polyMergeVert -n "polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[19]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  0 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert34";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert35";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999988 -1.1920929e-007 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert36";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999988 8.3446503e-007 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert37";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999988 -1.1920929e-007 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0.99999988 8.3446503e-007 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak38";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0.99999988 8.3446503e-007 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert37";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak37";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999988 -1.1920929e-007 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert36";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak36";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999988 8.3446503e-007 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert35";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak35";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999988 -1.1920929e-007 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert34";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak34";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[19]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak33";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  0 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak32";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  -1.1920929e-007 -1.000000357628 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak31";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  -1.1920929e-007 -1.000000476837 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak30";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -1.1920929e-007 1.000001072884 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[22]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak29";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 2.9802322e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[24]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak28";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  -1.1920929e-007 9.5367432e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak27";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.1920929e-007 1.000001549721 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak26";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.1920929e-007 1.5497208e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak25";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -1.1920929e-007 1.5497208e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[23:24]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak24";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  -1.1920929e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak23";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.1920929e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert22";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak22";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1.1920929e-007 -1.000000357628 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak21";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1.1920929e-007 1.000001549721 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak20";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -1.000000357628 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak19";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 1.000001549721 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[3]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak18";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1.1920929e-007 -1.000000476837 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak17";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1.1920929e-007 1.000001072884 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert16";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak16";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  -1.000000119209 1.5497208e-006 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert15";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak15";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1.000000119209 9.5367432e-007 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert14";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak14";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.000000119209 2.9802322e-007 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert13";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak13";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000238419 -1.1920929e-007 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert12";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak12";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1.000000238419 8.3446503e-007 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert11";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak11";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1.000000238419 -1.1920929e-007 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[28]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak10";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  -1.1920929e-007 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[35]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak9";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1.1920929e-007 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[29]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak8";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  1.7881393e-007 1.000001549721 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[37]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak7";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  1.7881393e-007 -1.000000357628 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak6";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  -1.1920929e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[42]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak5";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  -1.1920929e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[41]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak4";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  1.7881393e-007 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[44]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  1.7881393e-007 -3.5762787e-007 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[42]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak2";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 -3.5762787e-007 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[46]";
	setAttr ".ix" -type "matrix" 5.5194169719692599e-016 2.485724421826315 0 0 -0.14920590635435718 3.3130366528934459e-017 0 0
		 0 0 0.10642042164332545 0 1.8940510926193501 0.0067717855786773029 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak1";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 -3.5762787e-007 1.000003457069;
createNode polyCube -n "pasted__pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo1";
createNode shadingEngine -n "pasted__lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert2";
createNode file -n "pasted__file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture1";
createNode polyMergeVert -n "polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert42";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert43";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert44";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[43]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  -3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert56";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert57";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert58";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert59";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert60";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert61";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 4.1723251e-007 1.0000032 -3.4570694e-006 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-007 0 ;
createNode polyMergeVert -n "polyMergeVert62";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 -0.99999845 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert63";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert64";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert69";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert70";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  4.1723251e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  4.1723251e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "polyMergeVert75";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak75";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 -4.1723251e-007 7.46230936
		 -3.4570694e-006 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0;
createNode polyMergeVert -n "polyMergeVert76";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -4.1723251e-007 -1.000007152557 -3.4570694e-006;
createNode polyMergeVert -n "polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 6.6757202e-006 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 6.1988831e-006 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 6.1988831e-006 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert81";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.1444092e-005 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.000000119209 1.0967255e-005 -1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert83";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000119209 6.6757202e-006 1.7881393e-006;
createNode polyMergeVert -n "polyMergeVert85";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 -1.000003457069;
createNode polyMergeVert -n "polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert85";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000119209 6.6757202e-006 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert83";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.000000119209 1.0967255e-005 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert81";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.1444092e-005 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 6.1988831e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 6.1988831e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 6.6757202e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert76";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -4.1723251e-007 -1.000007152557 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert75";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak75";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 -4.1723251e-007 7.46230936
		 -3.4570694e-006 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0;
createNode polyMergeVert -n "pasted__polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  4.1723251e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  4.1723251e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert70";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert69";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert64";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert63";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert62";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 -0.99999845 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert61";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 4.1723251e-007 1.0000032 -3.4570694e-006 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-007 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert60";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert59";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert58";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert57";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert56";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  -3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[43]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak48";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak47";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak46";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak45";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert44";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak44";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert43";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak43";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert42";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak42";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak41";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak40";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak39";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyCube -n "pasted__pasted__polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo2";
createNode shadingEngine -n "pasted__lambert2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert3";
createNode file -n "pasted__file2";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture2";
createNode materialInfo -n "pasted__materialInfo3";
createNode shadingEngine -n "pasted__lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert4";
createNode file -n "pasted__file3";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture3";
createNode polyMergeVert -n "pasted__polyMergeVert182";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak182";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert181";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak181";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert180";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak180";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000119209 6.6757202e-006 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert179";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak179";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert178";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak178";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.000000119209 1.0967255e-005 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert177";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak177";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.1444092e-005 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert176";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak176";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 6.1988831e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert175";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak175";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 6.1988831e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert174";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak174";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert173";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak173";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 6.6757202e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert172";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak172";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -4.1723251e-007 -1.000007152557 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert171";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak171";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 -4.1723251e-007 7.46230936
		 -3.4570694e-006 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0;
createNode polyMergeVert -n "pasted__polyMergeVert170";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak170";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  4.1723251e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert169";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak169";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  4.1723251e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert168";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak168";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert167";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak167";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert166";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak166";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert165";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak165";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert164";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak164";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert163";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak163";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert162";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak162";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert161";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak161";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert160";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak160";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert159";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak159";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert158";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak158";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 -0.99999845 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert157";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak157";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 4.1723251e-007 1.0000032 -3.4570694e-006 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-007 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert156";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak156";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert155";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak155";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert154";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak154";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert153";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak153";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert152";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak152";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert151";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak151";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert150";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak150";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert149";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak149";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert148";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak148";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  -3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert147";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[43]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak147";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert146";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak146";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert145";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak145";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert144";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak144";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert143";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak143";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert142";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak142";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert141";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak141";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert140";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak140";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert139";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak139";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert138";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak138";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert137";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak137";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert136";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak136";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert135";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak135";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyCube -n "pasted__pasted__polyCube6";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo4";
createNode shadingEngine -n "pasted__lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert5";
createNode file -n "pasted__file4";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture4";
createNode polyMergeVert -n "pasted__polyMergeVert230";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak230";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert229";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak229";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert228";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak228";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000119209 6.6757202e-006 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert227";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak227";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert226";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak226";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.000000119209 1.0967255e-005 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert225";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak225";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.1444092e-005 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert224";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak224";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 6.1988831e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert223";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak223";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 6.1988831e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert222";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak222";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert221";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak221";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 6.6757202e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert220";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak220";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -4.1723251e-007 -1.000007152557 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert219";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak219";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 -4.1723251e-007 7.46230936
		 -3.4570694e-006 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0;
createNode polyMergeVert -n "pasted__polyMergeVert218";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak218";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  4.1723251e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert217";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak217";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  4.1723251e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert216";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak216";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert215";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak215";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert214";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak214";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert213";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak213";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert212";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak212";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert211";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak211";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert210";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak210";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert209";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak209";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert208";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak208";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert207";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak207";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert206";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak206";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 -0.99999845 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert205";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak205";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 4.1723251e-007 1.0000032 -3.4570694e-006 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-007 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert204";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak204";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert203";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak203";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert202";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak202";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert201";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak201";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert200";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak200";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert199";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak199";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert198";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak198";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert197";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak197";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert196";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak196";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  -3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert195";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[43]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak195";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert194";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak194";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert193";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak193";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert192";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak192";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert191";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak191";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert190";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak190";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert189";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak189";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert188";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak188";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert187";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak187";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert186";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak186";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert185";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak185";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert184";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak184";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert183";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak183";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyCube -n "pasted__pasted__polyCube7";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo5";
createNode shadingEngine -n "pasted__lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert6";
createNode file -n "pasted__file5";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture5";
createNode polyMergeVert -n "pasted__polyMergeVert134";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak134";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert133";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak133";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.000000357628 7.6293945e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert132";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak132";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1.000000119209 6.6757202e-006 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert131";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak131";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert130";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak130";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.000000119209 1.0967255e-005 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert129";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak129";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.1444092e-005 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert128";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak128";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 6.1988831e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert127";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak127";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 6.1988831e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert126";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak126";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 6.6757202e-006 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert125";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak125";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 6.6757202e-006 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert124";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak124";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -4.1723251e-007 -1.000007152557 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert123";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak123";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 -4.1723251e-007 7.46230936
		 -3.4570694e-006 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508 0 0 6.46231508
		 0 0 6.46231508 0 0 6.46231508 0;
createNode polyMergeVert -n "pasted__polyMergeVert122";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak122";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  4.1723251e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert121";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak121";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  4.1723251e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert120";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak120";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert119";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak119";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert118";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak118";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert117";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak117";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert116";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak116";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert115";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak115";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert114";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak114";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert113";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak113";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert112";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak112";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert111";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak111";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert110";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak110";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 -0.99999845 -3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert109";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak109";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[15]" -type "float3" 4.1723251e-007 1.0000032 -3.4570694e-006 ;
	setAttr ".tk[19]" -type "float3" 0 2.3841858e-007 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert108";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak108";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert107";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak107";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert106";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak106";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -4.1723251e-007 -0.99999821 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert105";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak105";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -4.1723251e-007 1.000003218651 3.4570694e-006;
createNode polyMergeVert -n "pasted__polyMergeVert104";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak104";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1.1920929e-007 -0.9999969 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert103";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak103";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1.1920929e-007 -0.9999969 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert102";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak102";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1.1920929e-007 1.00000667572 -1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert101";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak101";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1.1920929e-007 1.00000667572 1.7881393e-006;
createNode polyMergeVert -n "pasted__polyMergeVert100";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak100";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  -3.5762787e-007 1.7881393e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert99";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[43]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak99";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.5762787e-007 -2.6226044e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert98";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak98";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert97";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak97";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -7.0035458e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert96";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -3.5762787e-007 1.7881393e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  -3.5762787e-007 -2.6226044e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.5762787e-007 -7.0035458e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  3.5762787e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  3.5762787e-007 3.2186508e-006 -1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert88";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak88";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  4.1723251e-007 3.2186508e-006 1.000003457069;
createNode polyMergeVert -n "pasted__polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.1958990718316596 0 0 0 0 0.068591301806149321 0 0
		 0 0 0.10642042164332545 0 0 3.6330398298866537 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  4.1723251e-007 3.2186508e-006 -1.000003457069;
createNode polyCube -n "pasted__pasted__polyCube5";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex2";
	setAttr ".uopa" yes;
	setAttr -s 18 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[0].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[0].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[1].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 5 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[2].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[2].vfnl[17].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[3].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[3].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[4].vfnl[17].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[5].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[6].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[7].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[7].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[8].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[8].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr -s 3 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[9].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[9].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[10].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr ".vn[10].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 5 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[11].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr ".vn[11].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[11].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[11].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[12].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[13].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[14].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[15].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" -1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex3";
	setAttr ".uopa" yes;
	setAttr -s 42 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[0].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[0].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[0].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[1].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[1].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[1].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[2].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[3].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[3].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[3].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[4].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[5].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[5].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[6].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[7].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[7].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[8].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[8].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[8].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[9].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[9].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[9].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[10].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[10].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[11].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[11].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[11].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[12].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[13].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[13].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[14].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[14].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[14].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[15].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[15].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[15].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[16].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[16].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[17].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[17].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[18].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[18].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[18].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[19].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[19].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[19].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[20].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[20].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[20].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[21].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[21].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[21].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[22].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[22].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[22].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[23].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[23].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[23].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[24].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[25].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[25].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[25].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[26].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[26].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[26].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[27].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[27].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[27].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[28].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[28].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[28].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[29].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[29].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[29].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[30].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[30].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[30].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[31].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[31].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[31].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[32].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[32].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[32].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[33].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[33].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[33].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[34].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[34].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[34].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[35].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[35].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[35].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[36].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[36].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[37].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[37].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[38].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[38].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[38].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[39].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[39].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 20 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 20 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[59].fnxy" -type "float3" 0 1 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex4";
	setAttr ".uopa" yes;
	setAttr -s 42 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[0].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[0].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[0].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[1].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[1].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[1].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[2].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[3].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[3].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[3].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[4].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[5].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[5].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[6].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[7].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[7].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[8].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[8].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[8].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[9].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[9].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[9].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[10].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[10].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[11].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[11].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[11].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[12].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[13].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[13].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[14].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[14].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[14].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[15].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[15].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[15].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[16].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[16].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[17].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[17].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[18].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[18].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[18].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[19].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[19].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[19].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[20].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[20].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[20].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[21].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[21].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[21].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[22].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[22].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[22].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[23].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[23].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[23].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[24].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[25].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[25].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[25].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[26].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[26].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[26].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[27].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[27].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[27].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[28].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[28].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[28].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[29].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[29].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[29].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[30].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[30].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[30].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[31].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[31].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[31].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[32].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[32].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[32].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[33].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[33].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[33].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[34].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[34].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[34].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[35].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[35].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[35].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[36].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[36].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[37].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[37].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[38].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[38].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[38].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[39].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[39].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 20 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 20 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[59].fnxy" -type "float3" 0 1 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex5";
	setAttr ".uopa" yes;
	setAttr -s 42 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[0].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[0].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[0].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[1].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[1].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[1].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[2].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[3].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[3].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[3].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[4].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[5].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[5].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[6].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[7].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[7].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[8].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[8].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[8].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[9].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[9].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[9].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[10].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[10].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[11].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[11].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[11].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[12].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[13].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[13].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[14].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[14].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[14].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[15].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[15].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[15].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[16].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[16].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[17].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[17].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[18].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[18].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[18].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[19].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[19].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[19].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[20].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[20].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[20].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[21].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[21].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[21].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[22].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[22].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[22].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[23].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[23].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[23].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[24].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[25].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[25].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[25].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[26].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[26].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[26].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[27].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[27].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[27].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[28].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[28].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[28].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[29].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[29].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[29].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[30].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[30].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[30].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[31].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[31].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[31].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[32].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[32].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[32].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[33].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[33].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[33].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[34].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[34].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[34].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[35].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[35].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[35].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[36].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[36].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[37].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[37].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[38].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[38].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[38].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[39].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[39].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 20 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 20 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[59].fnxy" -type "float3" 0 1 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex6";
	setAttr ".uopa" yes;
	setAttr -s 42 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[0].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[0].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[0].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[1].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[1].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[1].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[2].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[3].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[3].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[3].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[4].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[5].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[5].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[6].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[7].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[7].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[8].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[8].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[8].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[9].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[9].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[9].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[10].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[10].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[11].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[11].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[11].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[12].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[13].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[13].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[14].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[14].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[14].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[15].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[15].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[15].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[16].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[16].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[17].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[17].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[18].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[18].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[18].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[19].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[19].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[19].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[20].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[20].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[20].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[21].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[21].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[21].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[22].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[22].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[22].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[23].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[23].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[23].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[24].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[25].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[25].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[25].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[26].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[26].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[26].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[27].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[27].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[27].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[28].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[28].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[28].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[29].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[29].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[29].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[30].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[30].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[30].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[31].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[31].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[31].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[32].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[32].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[32].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[33].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[33].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[33].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[34].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[34].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[34].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[35].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[35].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[35].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[36].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[36].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[37].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[37].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[38].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[38].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[38].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[39].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[39].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 20 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 20 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[59].fnxy" -type "float3" 0 1 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex7";
	setAttr ".uopa" yes;
	setAttr -s 42 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[0].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[0].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[0].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[1].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[1].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[1].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[2].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[2].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[3].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[3].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[3].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[4].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[4].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[5].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[5].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[6].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[6].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[7].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[7].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[8].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[8].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[8].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[9].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[9].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[9].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[10].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[10].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[11].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[11].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[11].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[12].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[13].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[13].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[14].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[14].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[14].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[15].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[15].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[15].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[16].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[16].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[17].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[17].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[18].vfnl";
	setAttr ".vn[18].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[18].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[18].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[18].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[19].vfnl";
	setAttr ".vn[19].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[19].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[19].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[19].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 4 ".vn[20].vfnl";
	setAttr ".vn[20].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[20].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[20].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[20].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[21].vfnl";
	setAttr ".vn[21].vfnl[0].fnxy" -type "float3" 0.89100659 0 -0.45399049 ;
	setAttr ".vn[21].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[21].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[21].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[22].vfnl";
	setAttr ".vn[22].vfnl[1].fnxy" -type "float3" 0.70710671 0 -0.70710689 ;
	setAttr ".vn[22].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[22].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[22].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[23].vfnl";
	setAttr ".vn[23].vfnl[2].fnxy" -type "float3" 0.45399031 0 -0.89100665 ;
	setAttr ".vn[23].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[23].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[23].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[24].vfnl";
	setAttr ".vn[24].vfnl[3].fnxy" -type "float3" 0.15643431 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[24].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[24].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr -s 4 ".vn[25].vfnl";
	setAttr ".vn[25].vfnl[4].fnxy" -type "float3" -0.15643449 0 -0.9876883 ;
	setAttr ".vn[25].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[25].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[25].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[26].vfnl";
	setAttr ".vn[26].vfnl[5].fnxy" -type "float3" -0.45399076 0 -0.89100641 ;
	setAttr ".vn[26].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[26].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[26].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[27].vfnl";
	setAttr ".vn[27].vfnl[6].fnxy" -type "float3" -0.70710695 0 -0.70710659 ;
	setAttr ".vn[27].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[27].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[27].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[28].vfnl";
	setAttr ".vn[28].vfnl[7].fnxy" -type "float3" -0.89100665 0 -0.45399046 ;
	setAttr ".vn[28].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[28].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[28].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[29].vfnl";
	setAttr ".vn[29].vfnl[8].fnxy" -type "float3" -0.98768842 0 -0.15643437 ;
	setAttr ".vn[29].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[29].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[29].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[30].vfnl";
	setAttr ".vn[30].vfnl[9].fnxy" -type "float3" -0.98768842 0 0.15643437 ;
	setAttr ".vn[30].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[30].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[30].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[31].vfnl";
	setAttr ".vn[31].vfnl[10].fnxy" -type "float3" -0.89100647 0 0.45399064 ;
	setAttr ".vn[31].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[31].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[31].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[32].vfnl";
	setAttr ".vn[32].vfnl[11].fnxy" -type "float3" -0.70710671 0 0.70710689 ;
	setAttr ".vn[32].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[32].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[32].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[33].vfnl";
	setAttr ".vn[33].vfnl[12].fnxy" -type "float3" -0.45399049 0 0.89100653 ;
	setAttr ".vn[33].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[33].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[33].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[34].vfnl";
	setAttr ".vn[34].vfnl[13].fnxy" -type "float3" -0.15643437 0 0.9876883 ;
	setAttr ".vn[34].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[34].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[34].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[35].vfnl";
	setAttr ".vn[35].vfnl[14].fnxy" -type "float3" 0.15643458 0 0.98768836 ;
	setAttr ".vn[35].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[35].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[35].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[36].vfnl";
	setAttr ".vn[36].vfnl[15].fnxy" -type "float3" 0.45399052 0 0.89100647 ;
	setAttr ".vn[36].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[36].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[36].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[37].vfnl";
	setAttr ".vn[37].vfnl[16].fnxy" -type "float3" 0.70710677 0 0.70710677 ;
	setAttr ".vn[37].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[37].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[37].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[38].vfnl";
	setAttr ".vn[38].vfnl[17].fnxy" -type "float3" 0.89100653 0 0.45399049 ;
	setAttr ".vn[38].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[38].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[38].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 4 ".vn[39].vfnl";
	setAttr ".vn[39].vfnl[18].fnxy" -type "float3" 0.98768836 0 0.15643439 ;
	setAttr ".vn[39].vfnl[19].fnxy" -type "float3" 0.98768872 0 -0.15643245 ;
	setAttr ".vn[39].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[39].vfnl[59].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 20 ".vn[40].vfnl";
	setAttr ".vn[40].vfnl[20].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[21].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[22].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[23].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[24].fnxy" -type "float3" 0 -0.99999994 0 ;
	setAttr ".vn[40].vfnl[25].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[26].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[27].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[28].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[29].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[30].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[31].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[32].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[33].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[34].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[35].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[36].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[37].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[38].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[40].vfnl[39].fnxy" -type "float3" 0 -1 0 ;
	setAttr -s 20 ".vn[41].vfnl";
	setAttr ".vn[41].vfnl[40].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[41].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[42].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[43].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[44].fnxy" -type "float3" 0 0.99999994 0 ;
	setAttr ".vn[41].vfnl[45].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[46].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[47].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[48].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[49].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[50].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[51].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[52].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[53].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[54].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[55].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[56].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[57].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[58].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[41].vfnl[59].fnxy" -type "float3" 0 1 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex8";
	setAttr ".uopa" yes;
	setAttr -s 18 ".vn";
	setAttr -s 4 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[0].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[0].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[1].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 5 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[2].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[2].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[2].vfnl[17].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -1.0596376e-007 7.9472819e-008 1 ;
	setAttr ".vn[3].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[3].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[3].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 4 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[4].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[4].vfnl[17].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.1920897e-006 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[5].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.960441e-008 1 -1.2516938e-006 ;
	setAttr ".vn[6].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr -s 4 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[7].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[7].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[3].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[8].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[8].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[8].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr -s 3 ".vn[9].vfnl";
	setAttr ".vn[9].vfnl[4].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[9].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[9].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr -s 4 ".vn[10].vfnl";
	setAttr ".vn[10].vfnl[5].fnxy" -type "float3" -1.4305115e-006 1 0 ;
	setAttr ".vn[10].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr ".vn[10].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[10].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 5 ".vn[11].vfnl";
	setAttr ".vn[11].vfnl[6].fnxy" -type "float3" 0 1 1.1920897e-006 ;
	setAttr ".vn[11].vfnl[7].fnxy" -type "float3" -5.9604474e-008 1 1.2516939e-006 ;
	setAttr ".vn[11].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[11].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[11].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[12].vfnl";
	setAttr ".vn[12].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[12].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[12].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[12].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[13].vfnl";
	setAttr ".vn[13].vfnl[8].fnxy" -type "float3" -5.2981878e-008 7.9472819e-008 -1 ;
	setAttr ".vn[13].vfnl[9].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[13].vfnl[10].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[14].vfnl";
	setAttr ".vn[14].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[14].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[14].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[15].vfnl";
	setAttr ".vn[15].vfnl[11].fnxy" -type "float3" -1 5.9604538e-008 0 ;
	setAttr ".vn[15].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[15].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[16].vfnl";
	setAttr ".vn[16].vfnl[12].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[15].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[16].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 4 ".vn[17].vfnl";
	setAttr ".vn[17].vfnl[13].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[14].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[16].fnxy" -type "float3" -1 0 0 ;
	setAttr ".vn[17].vfnl[17].fnxy" -type "float3" -1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 1.3245444e-008 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 5.2981886e-008 3.973642e-008 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -6.3578273e-007 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate10";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate12";
	setAttr ".ics" -type "componentList" 1 "f[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyTriangulate1.out" "|group|pasted__pCube1|pasted__pCubeShape1.i";
connectAttr "polyTriangulate2.out" "|group2|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "polyTriangulate3.out" "pCylinderShape1.i";
connectAttr "polyTriangulate4.out" "|group4|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyTriangulate5.out" "|group5|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyTriangulate6.out" "|group6|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyTriangulate7.out" "|group7|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyTriangulate8.out" "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "polyTriangulate9.out" "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "polyTriangulate10.out" "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "polyTriangulate11.out" "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "polyTriangulate12.out" "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|group7|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|group6|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|group5|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|group4|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.iog" "lambert2SG.dsm" -na
		;
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.iog" "lambert2SG.dsm" -na
		;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "pasted__polyCube3.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert9.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert10.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert10.mp"
		;
connectAttr "polyMergeVert9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert11.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert11.mp"
		;
connectAttr "polyMergeVert10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert12.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert12.mp"
		;
connectAttr "polyMergeVert11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert13.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert13.mp"
		;
connectAttr "polyMergeVert12.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert14.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert14.mp"
		;
connectAttr "polyMergeVert13.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert15.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert15.mp"
		;
connectAttr "polyMergeVert14.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert16.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert16.mp"
		;
connectAttr "polyMergeVert15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert17.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert17.mp"
		;
connectAttr "polyMergeVert16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert18.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert18.mp"
		;
connectAttr "polyMergeVert17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert19.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert19.mp"
		;
connectAttr "polyMergeVert18.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert20.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert20.mp"
		;
connectAttr "polyMergeVert19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert21.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert21.mp"
		;
connectAttr "polyMergeVert20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert22.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert22.mp"
		;
connectAttr "polyMergeVert21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert23.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert23.mp"
		;
connectAttr "polyMergeVert22.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyMergeVert24.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert24.mp"
		;
connectAttr "polyMergeVert23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyMergeVert25.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert25.mp"
		;
connectAttr "polyMergeVert24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyMergeVert26.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert26.mp"
		;
connectAttr "polyMergeVert25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyMergeVert27.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert27.mp"
		;
connectAttr "polyMergeVert26.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyMergeVert28.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert28.mp"
		;
connectAttr "polyMergeVert27.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyMergeVert29.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert29.mp"
		;
connectAttr "polyMergeVert28.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyMergeVert30.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert30.mp"
		;
connectAttr "polyMergeVert29.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyMergeVert31.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert31.mp"
		;
connectAttr "polyMergeVert30.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyMergeVert32.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert32.mp"
		;
connectAttr "polyMergeVert31.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyMergeVert33.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert33.mp"
		;
connectAttr "polyMergeVert32.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyMergeVert34.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert34.mp"
		;
connectAttr "polyMergeVert33.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyMergeVert35.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert35.mp"
		;
connectAttr "polyMergeVert34.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyMergeVert36.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert36.mp"
		;
connectAttr "polyMergeVert35.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyMergeVert37.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert37.mp"
		;
connectAttr "polyMergeVert36.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyMergeVert38.ip";
connectAttr "|group2|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert38.mp"
		;
connectAttr "polyMergeVert37.out" "polyTweak38.ip";
connectAttr "pasted__polyTweak38.out" "pasted__polyMergeVert38.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert38.mp"
		;
connectAttr "pasted__polyMergeVert37.out" "pasted__polyTweak38.ip";
connectAttr "pasted__polyTweak37.out" "pasted__polyMergeVert37.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert37.mp"
		;
connectAttr "pasted__polyMergeVert36.out" "pasted__polyTweak37.ip";
connectAttr "pasted__polyTweak36.out" "pasted__polyMergeVert36.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert36.mp"
		;
connectAttr "pasted__polyMergeVert35.out" "pasted__polyTweak36.ip";
connectAttr "pasted__polyTweak35.out" "pasted__polyMergeVert35.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert35.mp"
		;
connectAttr "pasted__polyMergeVert34.out" "pasted__polyTweak35.ip";
connectAttr "pasted__polyTweak34.out" "pasted__polyMergeVert34.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert34.mp"
		;
connectAttr "pasted__polyMergeVert33.out" "pasted__polyTweak34.ip";
connectAttr "pasted__polyTweak33.out" "pasted__polyMergeVert33.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert33.mp"
		;
connectAttr "pasted__polyMergeVert32.out" "pasted__polyTweak33.ip";
connectAttr "pasted__polyTweak32.out" "pasted__polyMergeVert32.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert32.mp"
		;
connectAttr "pasted__polyMergeVert31.out" "pasted__polyTweak32.ip";
connectAttr "pasted__polyTweak31.out" "pasted__polyMergeVert31.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert31.mp"
		;
connectAttr "pasted__polyMergeVert30.out" "pasted__polyTweak31.ip";
connectAttr "pasted__polyTweak30.out" "pasted__polyMergeVert30.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert30.mp"
		;
connectAttr "pasted__polyMergeVert29.out" "pasted__polyTweak30.ip";
connectAttr "pasted__polyTweak29.out" "pasted__polyMergeVert29.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert29.mp"
		;
connectAttr "pasted__polyMergeVert28.out" "pasted__polyTweak29.ip";
connectAttr "pasted__polyTweak28.out" "pasted__polyMergeVert28.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert28.mp"
		;
connectAttr "pasted__polyMergeVert27.out" "pasted__polyTweak28.ip";
connectAttr "pasted__polyTweak27.out" "pasted__polyMergeVert27.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert27.mp"
		;
connectAttr "pasted__polyMergeVert26.out" "pasted__polyTweak27.ip";
connectAttr "pasted__polyTweak26.out" "pasted__polyMergeVert26.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert26.mp"
		;
connectAttr "pasted__polyMergeVert25.out" "pasted__polyTweak26.ip";
connectAttr "pasted__polyTweak25.out" "pasted__polyMergeVert25.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert25.mp"
		;
connectAttr "pasted__polyMergeVert24.out" "pasted__polyTweak25.ip";
connectAttr "pasted__polyTweak24.out" "pasted__polyMergeVert24.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert24.mp"
		;
connectAttr "pasted__polyMergeVert23.out" "pasted__polyTweak24.ip";
connectAttr "pasted__polyTweak23.out" "pasted__polyMergeVert23.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert23.mp"
		;
connectAttr "pasted__polyMergeVert22.out" "pasted__polyTweak23.ip";
connectAttr "pasted__polyTweak22.out" "pasted__polyMergeVert22.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert22.mp"
		;
connectAttr "pasted__polyMergeVert21.out" "pasted__polyTweak22.ip";
connectAttr "pasted__polyTweak21.out" "pasted__polyMergeVert21.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert21.mp"
		;
connectAttr "pasted__polyMergeVert20.out" "pasted__polyTweak21.ip";
connectAttr "pasted__polyTweak20.out" "pasted__polyMergeVert20.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert20.mp"
		;
connectAttr "pasted__polyMergeVert19.out" "pasted__polyTweak20.ip";
connectAttr "pasted__polyTweak19.out" "pasted__polyMergeVert19.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert19.mp"
		;
connectAttr "pasted__polyMergeVert18.out" "pasted__polyTweak19.ip";
connectAttr "pasted__polyTweak18.out" "pasted__polyMergeVert18.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert18.mp"
		;
connectAttr "pasted__polyMergeVert17.out" "pasted__polyTweak18.ip";
connectAttr "pasted__polyTweak17.out" "pasted__polyMergeVert17.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert17.mp"
		;
connectAttr "pasted__polyMergeVert16.out" "pasted__polyTweak17.ip";
connectAttr "pasted__polyTweak16.out" "pasted__polyMergeVert16.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert16.mp"
		;
connectAttr "pasted__polyMergeVert15.out" "pasted__polyTweak16.ip";
connectAttr "pasted__polyTweak15.out" "pasted__polyMergeVert15.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert15.mp"
		;
connectAttr "pasted__polyMergeVert14.out" "pasted__polyTweak15.ip";
connectAttr "pasted__polyTweak14.out" "pasted__polyMergeVert14.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert14.mp"
		;
connectAttr "pasted__polyMergeVert13.out" "pasted__polyTweak14.ip";
connectAttr "pasted__polyTweak13.out" "pasted__polyMergeVert13.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert13.mp"
		;
connectAttr "pasted__polyMergeVert12.out" "pasted__polyTweak13.ip";
connectAttr "pasted__polyTweak12.out" "pasted__polyMergeVert12.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert12.mp"
		;
connectAttr "pasted__polyMergeVert11.out" "pasted__polyTweak12.ip";
connectAttr "pasted__polyTweak11.out" "pasted__polyMergeVert11.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert11.mp"
		;
connectAttr "pasted__polyMergeVert10.out" "pasted__polyTweak11.ip";
connectAttr "pasted__polyTweak10.out" "pasted__polyMergeVert10.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert10.mp"
		;
connectAttr "pasted__polyMergeVert9.out" "pasted__polyTweak10.ip";
connectAttr "pasted__polyTweak9.out" "pasted__polyMergeVert9.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert9.mp"
		;
connectAttr "pasted__polyMergeVert8.out" "pasted__polyTweak9.ip";
connectAttr "pasted__polyTweak8.out" "pasted__polyMergeVert8.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert8.mp"
		;
connectAttr "pasted__polyMergeVert7.out" "pasted__polyTweak8.ip";
connectAttr "pasted__polyTweak7.out" "pasted__polyMergeVert7.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert7.mp"
		;
connectAttr "pasted__polyMergeVert6.out" "pasted__polyTweak7.ip";
connectAttr "pasted__polyTweak6.out" "pasted__polyMergeVert6.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert6.mp"
		;
connectAttr "pasted__polyMergeVert5.out" "pasted__polyTweak6.ip";
connectAttr "pasted__polyTweak5.out" "pasted__polyMergeVert5.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert5.mp"
		;
connectAttr "pasted__polyMergeVert4.out" "pasted__polyTweak5.ip";
connectAttr "pasted__polyTweak4.out" "pasted__polyMergeVert4.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert4.mp"
		;
connectAttr "pasted__polyMergeVert3.out" "pasted__polyTweak4.ip";
connectAttr "pasted__polyTweak3.out" "pasted__polyMergeVert3.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert3.mp"
		;
connectAttr "pasted__polyMergeVert2.out" "pasted__polyTweak3.ip";
connectAttr "pasted__polyTweak2.out" "pasted__polyMergeVert2.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert2.mp"
		;
connectAttr "pasted__polyMergeVert1.out" "pasted__polyTweak2.ip";
connectAttr "pasted__polyTweak1.out" "pasted__polyMergeVert1.ip";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert1.mp"
		;
connectAttr "pasted__pasted__polyCube4.out" "pasted__polyTweak1.ip";
connectAttr "pasted__lambert2SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__lambert2.msg" "pasted__materialInfo1.m";
connectAttr "pasted__file1.msg" "pasted__materialInfo1.t" -na;
connectAttr "pasted__lambert2.oc" "pasted__lambert2SG.ss";
connectAttr "|group10|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__lambert2SG.dsm"
		 -na;
connectAttr "pasted__file1.oc" "pasted__lambert2.c";
connectAttr "pasted__place2dTexture1.c" "pasted__file1.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file1.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file1.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file1.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file1.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file1.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file1.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file1.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file1.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file1.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file1.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file1.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file1.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file1.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file1.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file1.vc1";
connectAttr "pasted__place2dTexture1.o" "pasted__file1.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file1.fs";
connectAttr "polyTweak39.out" "polyMergeVert39.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert39.mp";
connectAttr "pasted__polyCube1.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyMergeVert40.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert40.mp";
connectAttr "polyMergeVert39.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyMergeVert41.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert40.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyMergeVert42.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert41.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polyMergeVert43.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert42.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polyMergeVert44.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert43.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyMergeVert45.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert45.mp";
connectAttr "polyMergeVert44.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyMergeVert46.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert45.out" "polyTweak46.ip";
connectAttr "polyTweak47.out" "polyMergeVert47.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert47.mp";
connectAttr "polyMergeVert46.out" "polyTweak47.ip";
connectAttr "polyTweak48.out" "polyMergeVert48.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert47.out" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyMergeVert49.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert49.mp";
connectAttr "polyMergeVert48.out" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyMergeVert50.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert49.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyMergeVert51.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert50.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyMergeVert52.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert51.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyMergeVert53.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert52.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyMergeVert54.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert53.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyMergeVert55.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert55.mp";
connectAttr "polyMergeVert54.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyMergeVert56.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert56.mp";
connectAttr "polyMergeVert55.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polyMergeVert57.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert57.mp";
connectAttr "polyMergeVert56.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polyMergeVert58.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert58.mp";
connectAttr "polyMergeVert57.out" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyMergeVert59.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert59.mp";
connectAttr "polyMergeVert58.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyMergeVert60.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert60.mp";
connectAttr "polyMergeVert59.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyMergeVert61.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert61.mp";
connectAttr "polyMergeVert60.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyMergeVert62.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert62.mp";
connectAttr "polyMergeVert61.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyMergeVert63.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert63.mp";
connectAttr "polyMergeVert62.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyMergeVert64.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert64.mp";
connectAttr "polyMergeVert63.out" "polyTweak64.ip";
connectAttr "polyTweak65.out" "polyMergeVert65.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert65.mp";
connectAttr "polyMergeVert64.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyMergeVert66.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert66.mp";
connectAttr "polyMergeVert65.out" "polyTweak66.ip";
connectAttr "polyTweak67.out" "polyMergeVert67.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert67.mp";
connectAttr "polyMergeVert66.out" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polyMergeVert68.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert68.mp";
connectAttr "polyMergeVert67.out" "polyTweak68.ip";
connectAttr "polyTweak69.out" "polyMergeVert69.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert69.mp";
connectAttr "polyMergeVert68.out" "polyTweak69.ip";
connectAttr "polyTweak70.out" "polyMergeVert70.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert70.mp";
connectAttr "polyMergeVert69.out" "polyTweak70.ip";
connectAttr "polyTweak71.out" "polyMergeVert71.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert71.mp";
connectAttr "polyMergeVert70.out" "polyTweak71.ip";
connectAttr "polyTweak72.out" "polyMergeVert72.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert72.mp";
connectAttr "polyMergeVert71.out" "polyTweak72.ip";
connectAttr "polyTweak73.out" "polyMergeVert73.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert73.mp";
connectAttr "polyMergeVert72.out" "polyTweak73.ip";
connectAttr "polyTweak74.out" "polyMergeVert74.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert74.mp";
connectAttr "polyMergeVert73.out" "polyTweak74.ip";
connectAttr "polyTweak75.out" "polyMergeVert75.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert75.mp";
connectAttr "polyMergeVert74.out" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polyMergeVert76.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert76.mp";
connectAttr "polyMergeVert75.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyMergeVert77.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert77.mp";
connectAttr "polyMergeVert76.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyMergeVert78.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert78.mp";
connectAttr "polyMergeVert77.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyMergeVert79.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert79.mp";
connectAttr "polyMergeVert78.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyMergeVert80.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert80.mp";
connectAttr "polyMergeVert79.out" "polyTweak80.ip";
connectAttr "polyTweak81.out" "polyMergeVert81.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert81.mp";
connectAttr "polyMergeVert80.out" "polyTweak81.ip";
connectAttr "polyTweak82.out" "polyMergeVert82.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert82.mp";
connectAttr "polyMergeVert81.out" "polyTweak82.ip";
connectAttr "polyTweak83.out" "polyMergeVert83.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert83.mp";
connectAttr "polyMergeVert82.out" "polyTweak83.ip";
connectAttr "polyTweak84.out" "polyMergeVert84.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert84.mp";
connectAttr "polyMergeVert83.out" "polyTweak84.ip";
connectAttr "polyTweak85.out" "polyMergeVert85.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert85.mp";
connectAttr "polyMergeVert84.out" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyMergeVert86.ip";
connectAttr "|group|pasted__pCube1|pasted__pCubeShape1.wm" "polyMergeVert86.mp";
connectAttr "polyMergeVert85.out" "polyTweak86.ip";
connectAttr "pasted__polyTweak86.out" "pasted__polyMergeVert86.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert86.mp"
		;
connectAttr "pasted__polyMergeVert85.out" "pasted__polyTweak86.ip";
connectAttr "pasted__polyTweak85.out" "pasted__polyMergeVert85.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert85.mp"
		;
connectAttr "pasted__polyMergeVert84.out" "pasted__polyTweak85.ip";
connectAttr "pasted__polyTweak84.out" "pasted__polyMergeVert84.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert84.mp"
		;
connectAttr "pasted__polyMergeVert83.out" "pasted__polyTweak84.ip";
connectAttr "pasted__polyTweak83.out" "pasted__polyMergeVert83.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert83.mp"
		;
connectAttr "pasted__polyMergeVert82.out" "pasted__polyTweak83.ip";
connectAttr "pasted__polyTweak82.out" "pasted__polyMergeVert82.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert82.mp"
		;
connectAttr "pasted__polyMergeVert81.out" "pasted__polyTweak82.ip";
connectAttr "pasted__polyTweak81.out" "pasted__polyMergeVert81.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert81.mp"
		;
connectAttr "pasted__polyMergeVert80.out" "pasted__polyTweak81.ip";
connectAttr "pasted__polyTweak80.out" "pasted__polyMergeVert80.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert80.mp"
		;
connectAttr "pasted__polyMergeVert79.out" "pasted__polyTweak80.ip";
connectAttr "pasted__polyTweak79.out" "pasted__polyMergeVert79.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert79.mp"
		;
connectAttr "pasted__polyMergeVert78.out" "pasted__polyTweak79.ip";
connectAttr "pasted__polyTweak78.out" "pasted__polyMergeVert78.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert78.mp"
		;
connectAttr "pasted__polyMergeVert77.out" "pasted__polyTweak78.ip";
connectAttr "pasted__polyTweak77.out" "pasted__polyMergeVert77.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert77.mp"
		;
connectAttr "pasted__polyMergeVert76.out" "pasted__polyTweak77.ip";
connectAttr "pasted__polyTweak76.out" "pasted__polyMergeVert76.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert76.mp"
		;
connectAttr "pasted__polyMergeVert75.out" "pasted__polyTweak76.ip";
connectAttr "pasted__polyTweak75.out" "pasted__polyMergeVert75.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert75.mp"
		;
connectAttr "pasted__polyMergeVert74.out" "pasted__polyTweak75.ip";
connectAttr "pasted__polyTweak74.out" "pasted__polyMergeVert74.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert74.mp"
		;
connectAttr "pasted__polyMergeVert73.out" "pasted__polyTweak74.ip";
connectAttr "pasted__polyTweak73.out" "pasted__polyMergeVert73.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert73.mp"
		;
connectAttr "pasted__polyMergeVert72.out" "pasted__polyTweak73.ip";
connectAttr "pasted__polyTweak72.out" "pasted__polyMergeVert72.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert72.mp"
		;
connectAttr "pasted__polyMergeVert71.out" "pasted__polyTweak72.ip";
connectAttr "pasted__polyTweak71.out" "pasted__polyMergeVert71.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert71.mp"
		;
connectAttr "pasted__polyMergeVert70.out" "pasted__polyTweak71.ip";
connectAttr "pasted__polyTweak70.out" "pasted__polyMergeVert70.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert70.mp"
		;
connectAttr "pasted__polyMergeVert69.out" "pasted__polyTweak70.ip";
connectAttr "pasted__polyTweak69.out" "pasted__polyMergeVert69.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert69.mp"
		;
connectAttr "pasted__polyMergeVert68.out" "pasted__polyTweak69.ip";
connectAttr "pasted__polyTweak68.out" "pasted__polyMergeVert68.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert68.mp"
		;
connectAttr "pasted__polyMergeVert67.out" "pasted__polyTweak68.ip";
connectAttr "pasted__polyTweak67.out" "pasted__polyMergeVert67.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert67.mp"
		;
connectAttr "pasted__polyMergeVert66.out" "pasted__polyTweak67.ip";
connectAttr "pasted__polyTweak66.out" "pasted__polyMergeVert66.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert66.mp"
		;
connectAttr "pasted__polyMergeVert65.out" "pasted__polyTweak66.ip";
connectAttr "pasted__polyTweak65.out" "pasted__polyMergeVert65.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert65.mp"
		;
connectAttr "pasted__polyMergeVert64.out" "pasted__polyTweak65.ip";
connectAttr "pasted__polyTweak64.out" "pasted__polyMergeVert64.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert64.mp"
		;
connectAttr "pasted__polyMergeVert63.out" "pasted__polyTweak64.ip";
connectAttr "pasted__polyTweak63.out" "pasted__polyMergeVert63.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert63.mp"
		;
connectAttr "pasted__polyMergeVert62.out" "pasted__polyTweak63.ip";
connectAttr "pasted__polyTweak62.out" "pasted__polyMergeVert62.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert62.mp"
		;
connectAttr "pasted__polyMergeVert61.out" "pasted__polyTweak62.ip";
connectAttr "pasted__polyTweak61.out" "pasted__polyMergeVert61.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert61.mp"
		;
connectAttr "pasted__polyMergeVert60.out" "pasted__polyTweak61.ip";
connectAttr "pasted__polyTweak60.out" "pasted__polyMergeVert60.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert60.mp"
		;
connectAttr "pasted__polyMergeVert59.out" "pasted__polyTweak60.ip";
connectAttr "pasted__polyTweak59.out" "pasted__polyMergeVert59.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert59.mp"
		;
connectAttr "pasted__polyMergeVert58.out" "pasted__polyTweak59.ip";
connectAttr "pasted__polyTweak58.out" "pasted__polyMergeVert58.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert58.mp"
		;
connectAttr "pasted__polyMergeVert57.out" "pasted__polyTweak58.ip";
connectAttr "pasted__polyTweak57.out" "pasted__polyMergeVert57.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert57.mp"
		;
connectAttr "pasted__polyMergeVert56.out" "pasted__polyTweak57.ip";
connectAttr "pasted__polyTweak56.out" "pasted__polyMergeVert56.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert56.mp"
		;
connectAttr "pasted__polyMergeVert55.out" "pasted__polyTweak56.ip";
connectAttr "pasted__polyTweak55.out" "pasted__polyMergeVert55.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert55.mp"
		;
connectAttr "pasted__polyMergeVert54.out" "pasted__polyTweak55.ip";
connectAttr "pasted__polyTweak54.out" "pasted__polyMergeVert54.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert54.mp"
		;
connectAttr "pasted__polyMergeVert53.out" "pasted__polyTweak54.ip";
connectAttr "pasted__polyTweak53.out" "pasted__polyMergeVert53.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert53.mp"
		;
connectAttr "pasted__polyMergeVert52.out" "pasted__polyTweak53.ip";
connectAttr "pasted__polyTweak52.out" "pasted__polyMergeVert52.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert52.mp"
		;
connectAttr "pasted__polyMergeVert51.out" "pasted__polyTweak52.ip";
connectAttr "pasted__polyTweak51.out" "pasted__polyMergeVert51.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert51.mp"
		;
connectAttr "pasted__polyMergeVert50.out" "pasted__polyTweak51.ip";
connectAttr "pasted__polyTweak50.out" "pasted__polyMergeVert50.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert50.mp"
		;
connectAttr "pasted__polyMergeVert49.out" "pasted__polyTweak50.ip";
connectAttr "pasted__polyTweak49.out" "pasted__polyMergeVert49.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert49.mp"
		;
connectAttr "pasted__polyMergeVert48.out" "pasted__polyTweak49.ip";
connectAttr "pasted__polyTweak48.out" "pasted__polyMergeVert48.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert48.mp"
		;
connectAttr "pasted__polyMergeVert47.out" "pasted__polyTweak48.ip";
connectAttr "pasted__polyTweak47.out" "pasted__polyMergeVert47.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert47.mp"
		;
connectAttr "pasted__polyMergeVert46.out" "pasted__polyTweak47.ip";
connectAttr "pasted__polyTweak46.out" "pasted__polyMergeVert46.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert46.mp"
		;
connectAttr "pasted__polyMergeVert45.out" "pasted__polyTweak46.ip";
connectAttr "pasted__polyTweak45.out" "pasted__polyMergeVert45.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert45.mp"
		;
connectAttr "pasted__polyMergeVert44.out" "pasted__polyTweak45.ip";
connectAttr "pasted__polyTweak44.out" "pasted__polyMergeVert44.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert44.mp"
		;
connectAttr "pasted__polyMergeVert43.out" "pasted__polyTweak44.ip";
connectAttr "pasted__polyTweak43.out" "pasted__polyMergeVert43.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert43.mp"
		;
connectAttr "pasted__polyMergeVert42.out" "pasted__polyTweak43.ip";
connectAttr "pasted__polyTweak42.out" "pasted__polyMergeVert42.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert42.mp"
		;
connectAttr "pasted__polyMergeVert41.out" "pasted__polyTweak42.ip";
connectAttr "pasted__polyTweak41.out" "pasted__polyMergeVert41.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert41.mp"
		;
connectAttr "pasted__polyMergeVert40.out" "pasted__polyTweak41.ip";
connectAttr "pasted__polyTweak40.out" "pasted__polyMergeVert40.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert40.mp"
		;
connectAttr "pasted__polyMergeVert39.out" "pasted__polyTweak40.ip";
connectAttr "pasted__polyTweak39.out" "pasted__polyMergeVert39.ip";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert39.mp"
		;
connectAttr "pasted__pasted__polyCube1.out" "pasted__polyTweak39.ip";
connectAttr "pasted__lambert2SG1.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__lambert3.msg" "pasted__materialInfo2.m";
connectAttr "pasted__file2.msg" "pasted__materialInfo2.t" -na;
connectAttr "pasted__lambert3.oc" "pasted__lambert2SG1.ss";
connectAttr "|group11|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__lambert2SG1.dsm"
		 -na;
connectAttr "pasted__file2.oc" "pasted__lambert3.c";
connectAttr "pasted__place2dTexture2.c" "pasted__file2.c";
connectAttr "pasted__place2dTexture2.tf" "pasted__file2.tf";
connectAttr "pasted__place2dTexture2.rf" "pasted__file2.rf";
connectAttr "pasted__place2dTexture2.mu" "pasted__file2.mu";
connectAttr "pasted__place2dTexture2.mv" "pasted__file2.mv";
connectAttr "pasted__place2dTexture2.s" "pasted__file2.s";
connectAttr "pasted__place2dTexture2.wu" "pasted__file2.wu";
connectAttr "pasted__place2dTexture2.wv" "pasted__file2.wv";
connectAttr "pasted__place2dTexture2.re" "pasted__file2.re";
connectAttr "pasted__place2dTexture2.of" "pasted__file2.of";
connectAttr "pasted__place2dTexture2.r" "pasted__file2.ro";
connectAttr "pasted__place2dTexture2.n" "pasted__file2.n";
connectAttr "pasted__place2dTexture2.vt1" "pasted__file2.vt1";
connectAttr "pasted__place2dTexture2.vt2" "pasted__file2.vt2";
connectAttr "pasted__place2dTexture2.vt3" "pasted__file2.vt3";
connectAttr "pasted__place2dTexture2.vc1" "pasted__file2.vc1";
connectAttr "pasted__place2dTexture2.o" "pasted__file2.uv";
connectAttr "pasted__place2dTexture2.ofs" "pasted__file2.fs";
connectAttr "pasted__lambert2SG2.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__lambert4.msg" "pasted__materialInfo3.m";
connectAttr "pasted__file3.msg" "pasted__materialInfo3.t" -na;
connectAttr "pasted__lambert4.oc" "pasted__lambert2SG2.ss";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__lambert2SG2.dsm"
		 -na;
connectAttr "pasted__file3.oc" "pasted__lambert4.c";
connectAttr "pasted__place2dTexture3.c" "pasted__file3.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file3.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file3.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file3.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file3.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file3.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file3.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file3.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file3.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file3.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file3.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file3.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file3.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file3.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file3.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file3.vc1";
connectAttr "pasted__place2dTexture3.o" "pasted__file3.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file3.fs";
connectAttr "pasted__polyTweak182.out" "pasted__polyMergeVert182.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert182.mp"
		;
connectAttr "pasted__polyMergeVert181.out" "pasted__polyTweak182.ip";
connectAttr "pasted__polyTweak181.out" "pasted__polyMergeVert181.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert181.mp"
		;
connectAttr "pasted__polyMergeVert180.out" "pasted__polyTweak181.ip";
connectAttr "pasted__polyTweak180.out" "pasted__polyMergeVert180.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert180.mp"
		;
connectAttr "pasted__polyMergeVert179.out" "pasted__polyTweak180.ip";
connectAttr "pasted__polyTweak179.out" "pasted__polyMergeVert179.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert179.mp"
		;
connectAttr "pasted__polyMergeVert178.out" "pasted__polyTweak179.ip";
connectAttr "pasted__polyTweak178.out" "pasted__polyMergeVert178.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert178.mp"
		;
connectAttr "pasted__polyMergeVert177.out" "pasted__polyTweak178.ip";
connectAttr "pasted__polyTweak177.out" "pasted__polyMergeVert177.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert177.mp"
		;
connectAttr "pasted__polyMergeVert176.out" "pasted__polyTweak177.ip";
connectAttr "pasted__polyTweak176.out" "pasted__polyMergeVert176.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert176.mp"
		;
connectAttr "pasted__polyMergeVert175.out" "pasted__polyTweak176.ip";
connectAttr "pasted__polyTweak175.out" "pasted__polyMergeVert175.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert175.mp"
		;
connectAttr "pasted__polyMergeVert174.out" "pasted__polyTweak175.ip";
connectAttr "pasted__polyTweak174.out" "pasted__polyMergeVert174.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert174.mp"
		;
connectAttr "pasted__polyMergeVert173.out" "pasted__polyTweak174.ip";
connectAttr "pasted__polyTweak173.out" "pasted__polyMergeVert173.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert173.mp"
		;
connectAttr "pasted__polyMergeVert172.out" "pasted__polyTweak173.ip";
connectAttr "pasted__polyTweak172.out" "pasted__polyMergeVert172.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert172.mp"
		;
connectAttr "pasted__polyMergeVert171.out" "pasted__polyTweak172.ip";
connectAttr "pasted__polyTweak171.out" "pasted__polyMergeVert171.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert171.mp"
		;
connectAttr "pasted__polyMergeVert170.out" "pasted__polyTweak171.ip";
connectAttr "pasted__polyTweak170.out" "pasted__polyMergeVert170.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert170.mp"
		;
connectAttr "pasted__polyMergeVert169.out" "pasted__polyTweak170.ip";
connectAttr "pasted__polyTweak169.out" "pasted__polyMergeVert169.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert169.mp"
		;
connectAttr "pasted__polyMergeVert168.out" "pasted__polyTweak169.ip";
connectAttr "pasted__polyTweak168.out" "pasted__polyMergeVert168.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert168.mp"
		;
connectAttr "pasted__polyMergeVert167.out" "pasted__polyTweak168.ip";
connectAttr "pasted__polyTweak167.out" "pasted__polyMergeVert167.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert167.mp"
		;
connectAttr "pasted__polyMergeVert166.out" "pasted__polyTweak167.ip";
connectAttr "pasted__polyTweak166.out" "pasted__polyMergeVert166.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert166.mp"
		;
connectAttr "pasted__polyMergeVert165.out" "pasted__polyTweak166.ip";
connectAttr "pasted__polyTweak165.out" "pasted__polyMergeVert165.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert165.mp"
		;
connectAttr "pasted__polyMergeVert164.out" "pasted__polyTweak165.ip";
connectAttr "pasted__polyTweak164.out" "pasted__polyMergeVert164.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert164.mp"
		;
connectAttr "pasted__polyMergeVert163.out" "pasted__polyTweak164.ip";
connectAttr "pasted__polyTweak163.out" "pasted__polyMergeVert163.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert163.mp"
		;
connectAttr "pasted__polyMergeVert162.out" "pasted__polyTweak163.ip";
connectAttr "pasted__polyTweak162.out" "pasted__polyMergeVert162.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert162.mp"
		;
connectAttr "pasted__polyMergeVert161.out" "pasted__polyTweak162.ip";
connectAttr "pasted__polyTweak161.out" "pasted__polyMergeVert161.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert161.mp"
		;
connectAttr "pasted__polyMergeVert160.out" "pasted__polyTweak161.ip";
connectAttr "pasted__polyTweak160.out" "pasted__polyMergeVert160.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert160.mp"
		;
connectAttr "pasted__polyMergeVert159.out" "pasted__polyTweak160.ip";
connectAttr "pasted__polyTweak159.out" "pasted__polyMergeVert159.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert159.mp"
		;
connectAttr "pasted__polyMergeVert158.out" "pasted__polyTweak159.ip";
connectAttr "pasted__polyTweak158.out" "pasted__polyMergeVert158.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert158.mp"
		;
connectAttr "pasted__polyMergeVert157.out" "pasted__polyTweak158.ip";
connectAttr "pasted__polyTweak157.out" "pasted__polyMergeVert157.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert157.mp"
		;
connectAttr "pasted__polyMergeVert156.out" "pasted__polyTweak157.ip";
connectAttr "pasted__polyTweak156.out" "pasted__polyMergeVert156.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert156.mp"
		;
connectAttr "pasted__polyMergeVert155.out" "pasted__polyTweak156.ip";
connectAttr "pasted__polyTweak155.out" "pasted__polyMergeVert155.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert155.mp"
		;
connectAttr "pasted__polyMergeVert154.out" "pasted__polyTweak155.ip";
connectAttr "pasted__polyTweak154.out" "pasted__polyMergeVert154.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert154.mp"
		;
connectAttr "pasted__polyMergeVert153.out" "pasted__polyTweak154.ip";
connectAttr "pasted__polyTweak153.out" "pasted__polyMergeVert153.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert153.mp"
		;
connectAttr "pasted__polyMergeVert152.out" "pasted__polyTweak153.ip";
connectAttr "pasted__polyTweak152.out" "pasted__polyMergeVert152.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert152.mp"
		;
connectAttr "pasted__polyMergeVert151.out" "pasted__polyTweak152.ip";
connectAttr "pasted__polyTweak151.out" "pasted__polyMergeVert151.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert151.mp"
		;
connectAttr "pasted__polyMergeVert150.out" "pasted__polyTweak151.ip";
connectAttr "pasted__polyTweak150.out" "pasted__polyMergeVert150.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert150.mp"
		;
connectAttr "pasted__polyMergeVert149.out" "pasted__polyTweak150.ip";
connectAttr "pasted__polyTweak149.out" "pasted__polyMergeVert149.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert149.mp"
		;
connectAttr "pasted__polyMergeVert148.out" "pasted__polyTweak149.ip";
connectAttr "pasted__polyTweak148.out" "pasted__polyMergeVert148.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert148.mp"
		;
connectAttr "pasted__polyMergeVert147.out" "pasted__polyTweak148.ip";
connectAttr "pasted__polyTweak147.out" "pasted__polyMergeVert147.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert147.mp"
		;
connectAttr "pasted__polyMergeVert146.out" "pasted__polyTweak147.ip";
connectAttr "pasted__polyTweak146.out" "pasted__polyMergeVert146.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert146.mp"
		;
connectAttr "pasted__polyMergeVert145.out" "pasted__polyTweak146.ip";
connectAttr "pasted__polyTweak145.out" "pasted__polyMergeVert145.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert145.mp"
		;
connectAttr "pasted__polyMergeVert144.out" "pasted__polyTweak145.ip";
connectAttr "pasted__polyTweak144.out" "pasted__polyMergeVert144.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert144.mp"
		;
connectAttr "pasted__polyMergeVert143.out" "pasted__polyTweak144.ip";
connectAttr "pasted__polyTweak143.out" "pasted__polyMergeVert143.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert143.mp"
		;
connectAttr "pasted__polyMergeVert142.out" "pasted__polyTweak143.ip";
connectAttr "pasted__polyTweak142.out" "pasted__polyMergeVert142.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert142.mp"
		;
connectAttr "pasted__polyMergeVert141.out" "pasted__polyTweak142.ip";
connectAttr "pasted__polyTweak141.out" "pasted__polyMergeVert141.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert141.mp"
		;
connectAttr "pasted__polyMergeVert140.out" "pasted__polyTweak141.ip";
connectAttr "pasted__polyTweak140.out" "pasted__polyMergeVert140.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert140.mp"
		;
connectAttr "pasted__polyMergeVert139.out" "pasted__polyTweak140.ip";
connectAttr "pasted__polyTweak139.out" "pasted__polyMergeVert139.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert139.mp"
		;
connectAttr "pasted__polyMergeVert138.out" "pasted__polyTweak139.ip";
connectAttr "pasted__polyTweak138.out" "pasted__polyMergeVert138.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert138.mp"
		;
connectAttr "pasted__polyMergeVert137.out" "pasted__polyTweak138.ip";
connectAttr "pasted__polyTweak137.out" "pasted__polyMergeVert137.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert137.mp"
		;
connectAttr "pasted__polyMergeVert136.out" "pasted__polyTweak137.ip";
connectAttr "pasted__polyTweak136.out" "pasted__polyMergeVert136.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert136.mp"
		;
connectAttr "pasted__polyMergeVert135.out" "pasted__polyTweak136.ip";
connectAttr "pasted__polyTweak135.out" "pasted__polyMergeVert135.ip";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert135.mp"
		;
connectAttr "pasted__pasted__polyCube6.out" "pasted__polyTweak135.ip";
connectAttr "pasted__lambert2SG3.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__lambert5.msg" "pasted__materialInfo4.m";
connectAttr "pasted__file4.msg" "pasted__materialInfo4.t" -na;
connectAttr "pasted__lambert5.oc" "pasted__lambert2SG3.ss";
connectAttr "|group13|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__lambert2SG3.dsm"
		 -na;
connectAttr "pasted__file4.oc" "pasted__lambert5.c";
connectAttr "pasted__place2dTexture4.c" "pasted__file4.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file4.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file4.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file4.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file4.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file4.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file4.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file4.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file4.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file4.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file4.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file4.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file4.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file4.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file4.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file4.vc1";
connectAttr "pasted__place2dTexture4.o" "pasted__file4.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file4.fs";
connectAttr "pasted__polyTweak230.out" "pasted__polyMergeVert230.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert230.mp"
		;
connectAttr "pasted__polyMergeVert229.out" "pasted__polyTweak230.ip";
connectAttr "pasted__polyTweak229.out" "pasted__polyMergeVert229.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert229.mp"
		;
connectAttr "pasted__polyMergeVert228.out" "pasted__polyTweak229.ip";
connectAttr "pasted__polyTweak228.out" "pasted__polyMergeVert228.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert228.mp"
		;
connectAttr "pasted__polyMergeVert227.out" "pasted__polyTweak228.ip";
connectAttr "pasted__polyTweak227.out" "pasted__polyMergeVert227.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert227.mp"
		;
connectAttr "pasted__polyMergeVert226.out" "pasted__polyTweak227.ip";
connectAttr "pasted__polyTweak226.out" "pasted__polyMergeVert226.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert226.mp"
		;
connectAttr "pasted__polyMergeVert225.out" "pasted__polyTweak226.ip";
connectAttr "pasted__polyTweak225.out" "pasted__polyMergeVert225.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert225.mp"
		;
connectAttr "pasted__polyMergeVert224.out" "pasted__polyTweak225.ip";
connectAttr "pasted__polyTweak224.out" "pasted__polyMergeVert224.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert224.mp"
		;
connectAttr "pasted__polyMergeVert223.out" "pasted__polyTweak224.ip";
connectAttr "pasted__polyTweak223.out" "pasted__polyMergeVert223.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert223.mp"
		;
connectAttr "pasted__polyMergeVert222.out" "pasted__polyTweak223.ip";
connectAttr "pasted__polyTweak222.out" "pasted__polyMergeVert222.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert222.mp"
		;
connectAttr "pasted__polyMergeVert221.out" "pasted__polyTweak222.ip";
connectAttr "pasted__polyTweak221.out" "pasted__polyMergeVert221.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert221.mp"
		;
connectAttr "pasted__polyMergeVert220.out" "pasted__polyTweak221.ip";
connectAttr "pasted__polyTweak220.out" "pasted__polyMergeVert220.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert220.mp"
		;
connectAttr "pasted__polyMergeVert219.out" "pasted__polyTweak220.ip";
connectAttr "pasted__polyTweak219.out" "pasted__polyMergeVert219.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert219.mp"
		;
connectAttr "pasted__polyMergeVert218.out" "pasted__polyTweak219.ip";
connectAttr "pasted__polyTweak218.out" "pasted__polyMergeVert218.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert218.mp"
		;
connectAttr "pasted__polyMergeVert217.out" "pasted__polyTweak218.ip";
connectAttr "pasted__polyTweak217.out" "pasted__polyMergeVert217.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert217.mp"
		;
connectAttr "pasted__polyMergeVert216.out" "pasted__polyTweak217.ip";
connectAttr "pasted__polyTweak216.out" "pasted__polyMergeVert216.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert216.mp"
		;
connectAttr "pasted__polyMergeVert215.out" "pasted__polyTweak216.ip";
connectAttr "pasted__polyTweak215.out" "pasted__polyMergeVert215.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert215.mp"
		;
connectAttr "pasted__polyMergeVert214.out" "pasted__polyTweak215.ip";
connectAttr "pasted__polyTweak214.out" "pasted__polyMergeVert214.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert214.mp"
		;
connectAttr "pasted__polyMergeVert213.out" "pasted__polyTweak214.ip";
connectAttr "pasted__polyTweak213.out" "pasted__polyMergeVert213.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert213.mp"
		;
connectAttr "pasted__polyMergeVert212.out" "pasted__polyTweak213.ip";
connectAttr "pasted__polyTweak212.out" "pasted__polyMergeVert212.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert212.mp"
		;
connectAttr "pasted__polyMergeVert211.out" "pasted__polyTweak212.ip";
connectAttr "pasted__polyTweak211.out" "pasted__polyMergeVert211.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert211.mp"
		;
connectAttr "pasted__polyMergeVert210.out" "pasted__polyTweak211.ip";
connectAttr "pasted__polyTweak210.out" "pasted__polyMergeVert210.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert210.mp"
		;
connectAttr "pasted__polyMergeVert209.out" "pasted__polyTweak210.ip";
connectAttr "pasted__polyTweak209.out" "pasted__polyMergeVert209.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert209.mp"
		;
connectAttr "pasted__polyMergeVert208.out" "pasted__polyTweak209.ip";
connectAttr "pasted__polyTweak208.out" "pasted__polyMergeVert208.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert208.mp"
		;
connectAttr "pasted__polyMergeVert207.out" "pasted__polyTweak208.ip";
connectAttr "pasted__polyTweak207.out" "pasted__polyMergeVert207.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert207.mp"
		;
connectAttr "pasted__polyMergeVert206.out" "pasted__polyTweak207.ip";
connectAttr "pasted__polyTweak206.out" "pasted__polyMergeVert206.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert206.mp"
		;
connectAttr "pasted__polyMergeVert205.out" "pasted__polyTweak206.ip";
connectAttr "pasted__polyTweak205.out" "pasted__polyMergeVert205.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert205.mp"
		;
connectAttr "pasted__polyMergeVert204.out" "pasted__polyTweak205.ip";
connectAttr "pasted__polyTweak204.out" "pasted__polyMergeVert204.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert204.mp"
		;
connectAttr "pasted__polyMergeVert203.out" "pasted__polyTweak204.ip";
connectAttr "pasted__polyTweak203.out" "pasted__polyMergeVert203.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert203.mp"
		;
connectAttr "pasted__polyMergeVert202.out" "pasted__polyTweak203.ip";
connectAttr "pasted__polyTweak202.out" "pasted__polyMergeVert202.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert202.mp"
		;
connectAttr "pasted__polyMergeVert201.out" "pasted__polyTweak202.ip";
connectAttr "pasted__polyTweak201.out" "pasted__polyMergeVert201.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert201.mp"
		;
connectAttr "pasted__polyMergeVert200.out" "pasted__polyTweak201.ip";
connectAttr "pasted__polyTweak200.out" "pasted__polyMergeVert200.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert200.mp"
		;
connectAttr "pasted__polyMergeVert199.out" "pasted__polyTweak200.ip";
connectAttr "pasted__polyTweak199.out" "pasted__polyMergeVert199.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert199.mp"
		;
connectAttr "pasted__polyMergeVert198.out" "pasted__polyTweak199.ip";
connectAttr "pasted__polyTweak198.out" "pasted__polyMergeVert198.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert198.mp"
		;
connectAttr "pasted__polyMergeVert197.out" "pasted__polyTweak198.ip";
connectAttr "pasted__polyTweak197.out" "pasted__polyMergeVert197.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert197.mp"
		;
connectAttr "pasted__polyMergeVert196.out" "pasted__polyTweak197.ip";
connectAttr "pasted__polyTweak196.out" "pasted__polyMergeVert196.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert196.mp"
		;
connectAttr "pasted__polyMergeVert195.out" "pasted__polyTweak196.ip";
connectAttr "pasted__polyTweak195.out" "pasted__polyMergeVert195.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert195.mp"
		;
connectAttr "pasted__polyMergeVert194.out" "pasted__polyTweak195.ip";
connectAttr "pasted__polyTweak194.out" "pasted__polyMergeVert194.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert194.mp"
		;
connectAttr "pasted__polyMergeVert193.out" "pasted__polyTweak194.ip";
connectAttr "pasted__polyTweak193.out" "pasted__polyMergeVert193.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert193.mp"
		;
connectAttr "pasted__polyMergeVert192.out" "pasted__polyTweak193.ip";
connectAttr "pasted__polyTweak192.out" "pasted__polyMergeVert192.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert192.mp"
		;
connectAttr "pasted__polyMergeVert191.out" "pasted__polyTweak192.ip";
connectAttr "pasted__polyTweak191.out" "pasted__polyMergeVert191.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert191.mp"
		;
connectAttr "pasted__polyMergeVert190.out" "pasted__polyTweak191.ip";
connectAttr "pasted__polyTweak190.out" "pasted__polyMergeVert190.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert190.mp"
		;
connectAttr "pasted__polyMergeVert189.out" "pasted__polyTweak190.ip";
connectAttr "pasted__polyTweak189.out" "pasted__polyMergeVert189.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert189.mp"
		;
connectAttr "pasted__polyMergeVert188.out" "pasted__polyTweak189.ip";
connectAttr "pasted__polyTweak188.out" "pasted__polyMergeVert188.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert188.mp"
		;
connectAttr "pasted__polyMergeVert187.out" "pasted__polyTweak188.ip";
connectAttr "pasted__polyTweak187.out" "pasted__polyMergeVert187.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert187.mp"
		;
connectAttr "pasted__polyMergeVert186.out" "pasted__polyTweak187.ip";
connectAttr "pasted__polyTweak186.out" "pasted__polyMergeVert186.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert186.mp"
		;
connectAttr "pasted__polyMergeVert185.out" "pasted__polyTweak186.ip";
connectAttr "pasted__polyTweak185.out" "pasted__polyMergeVert185.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert185.mp"
		;
connectAttr "pasted__polyMergeVert184.out" "pasted__polyTweak185.ip";
connectAttr "pasted__polyTweak184.out" "pasted__polyMergeVert184.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert184.mp"
		;
connectAttr "pasted__polyMergeVert183.out" "pasted__polyTweak184.ip";
connectAttr "pasted__polyTweak183.out" "pasted__polyMergeVert183.ip";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert183.mp"
		;
connectAttr "pasted__pasted__polyCube7.out" "pasted__polyTweak183.ip";
connectAttr "pasted__lambert2SG4.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__lambert6.msg" "pasted__materialInfo5.m";
connectAttr "pasted__file5.msg" "pasted__materialInfo5.t" -na;
connectAttr "pasted__lambert6.oc" "pasted__lambert2SG4.ss";
connectAttr "|group14|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" "pasted__lambert2SG4.dsm"
		 -na;
connectAttr "pasted__file5.oc" "pasted__lambert6.c";
connectAttr "pasted__place2dTexture5.c" "pasted__file5.c";
connectAttr "pasted__place2dTexture5.tf" "pasted__file5.tf";
connectAttr "pasted__place2dTexture5.rf" "pasted__file5.rf";
connectAttr "pasted__place2dTexture5.mu" "pasted__file5.mu";
connectAttr "pasted__place2dTexture5.mv" "pasted__file5.mv";
connectAttr "pasted__place2dTexture5.s" "pasted__file5.s";
connectAttr "pasted__place2dTexture5.wu" "pasted__file5.wu";
connectAttr "pasted__place2dTexture5.wv" "pasted__file5.wv";
connectAttr "pasted__place2dTexture5.re" "pasted__file5.re";
connectAttr "pasted__place2dTexture5.of" "pasted__file5.of";
connectAttr "pasted__place2dTexture5.r" "pasted__file5.ro";
connectAttr "pasted__place2dTexture5.n" "pasted__file5.n";
connectAttr "pasted__place2dTexture5.vt1" "pasted__file5.vt1";
connectAttr "pasted__place2dTexture5.vt2" "pasted__file5.vt2";
connectAttr "pasted__place2dTexture5.vt3" "pasted__file5.vt3";
connectAttr "pasted__place2dTexture5.vc1" "pasted__file5.vc1";
connectAttr "pasted__place2dTexture5.o" "pasted__file5.uv";
connectAttr "pasted__place2dTexture5.ofs" "pasted__file5.fs";
connectAttr "pasted__polyTweak134.out" "pasted__polyMergeVert134.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert134.mp"
		;
connectAttr "pasted__polyMergeVert133.out" "pasted__polyTweak134.ip";
connectAttr "pasted__polyTweak133.out" "pasted__polyMergeVert133.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert133.mp"
		;
connectAttr "pasted__polyMergeVert132.out" "pasted__polyTweak133.ip";
connectAttr "pasted__polyTweak132.out" "pasted__polyMergeVert132.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert132.mp"
		;
connectAttr "pasted__polyMergeVert131.out" "pasted__polyTweak132.ip";
connectAttr "pasted__polyTweak131.out" "pasted__polyMergeVert131.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert131.mp"
		;
connectAttr "pasted__polyMergeVert130.out" "pasted__polyTweak131.ip";
connectAttr "pasted__polyTweak130.out" "pasted__polyMergeVert130.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert130.mp"
		;
connectAttr "pasted__polyMergeVert129.out" "pasted__polyTweak130.ip";
connectAttr "pasted__polyTweak129.out" "pasted__polyMergeVert129.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert129.mp"
		;
connectAttr "pasted__polyMergeVert128.out" "pasted__polyTweak129.ip";
connectAttr "pasted__polyTweak128.out" "pasted__polyMergeVert128.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert128.mp"
		;
connectAttr "pasted__polyMergeVert127.out" "pasted__polyTweak128.ip";
connectAttr "pasted__polyTweak127.out" "pasted__polyMergeVert127.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert127.mp"
		;
connectAttr "pasted__polyMergeVert126.out" "pasted__polyTweak127.ip";
connectAttr "pasted__polyTweak126.out" "pasted__polyMergeVert126.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert126.mp"
		;
connectAttr "pasted__polyMergeVert125.out" "pasted__polyTweak126.ip";
connectAttr "pasted__polyTweak125.out" "pasted__polyMergeVert125.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert125.mp"
		;
connectAttr "pasted__polyMergeVert124.out" "pasted__polyTweak125.ip";
connectAttr "pasted__polyTweak124.out" "pasted__polyMergeVert124.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert124.mp"
		;
connectAttr "pasted__polyMergeVert123.out" "pasted__polyTweak124.ip";
connectAttr "pasted__polyTweak123.out" "pasted__polyMergeVert123.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert123.mp"
		;
connectAttr "pasted__polyMergeVert122.out" "pasted__polyTweak123.ip";
connectAttr "pasted__polyTweak122.out" "pasted__polyMergeVert122.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert122.mp"
		;
connectAttr "pasted__polyMergeVert121.out" "pasted__polyTweak122.ip";
connectAttr "pasted__polyTweak121.out" "pasted__polyMergeVert121.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert121.mp"
		;
connectAttr "pasted__polyMergeVert120.out" "pasted__polyTweak121.ip";
connectAttr "pasted__polyTweak120.out" "pasted__polyMergeVert120.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert120.mp"
		;
connectAttr "pasted__polyMergeVert119.out" "pasted__polyTweak120.ip";
connectAttr "pasted__polyTweak119.out" "pasted__polyMergeVert119.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert119.mp"
		;
connectAttr "pasted__polyMergeVert118.out" "pasted__polyTweak119.ip";
connectAttr "pasted__polyTweak118.out" "pasted__polyMergeVert118.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert118.mp"
		;
connectAttr "pasted__polyMergeVert117.out" "pasted__polyTweak118.ip";
connectAttr "pasted__polyTweak117.out" "pasted__polyMergeVert117.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert117.mp"
		;
connectAttr "pasted__polyMergeVert116.out" "pasted__polyTweak117.ip";
connectAttr "pasted__polyTweak116.out" "pasted__polyMergeVert116.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert116.mp"
		;
connectAttr "pasted__polyMergeVert115.out" "pasted__polyTweak116.ip";
connectAttr "pasted__polyTweak115.out" "pasted__polyMergeVert115.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert115.mp"
		;
connectAttr "pasted__polyMergeVert114.out" "pasted__polyTweak115.ip";
connectAttr "pasted__polyTweak114.out" "pasted__polyMergeVert114.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert114.mp"
		;
connectAttr "pasted__polyMergeVert113.out" "pasted__polyTweak114.ip";
connectAttr "pasted__polyTweak113.out" "pasted__polyMergeVert113.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert113.mp"
		;
connectAttr "pasted__polyMergeVert112.out" "pasted__polyTweak113.ip";
connectAttr "pasted__polyTweak112.out" "pasted__polyMergeVert112.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert112.mp"
		;
connectAttr "pasted__polyMergeVert111.out" "pasted__polyTweak112.ip";
connectAttr "pasted__polyTweak111.out" "pasted__polyMergeVert111.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert111.mp"
		;
connectAttr "pasted__polyMergeVert110.out" "pasted__polyTweak111.ip";
connectAttr "pasted__polyTweak110.out" "pasted__polyMergeVert110.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert110.mp"
		;
connectAttr "pasted__polyMergeVert109.out" "pasted__polyTweak110.ip";
connectAttr "pasted__polyTweak109.out" "pasted__polyMergeVert109.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert109.mp"
		;
connectAttr "pasted__polyMergeVert108.out" "pasted__polyTweak109.ip";
connectAttr "pasted__polyTweak108.out" "pasted__polyMergeVert108.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert108.mp"
		;
connectAttr "pasted__polyMergeVert107.out" "pasted__polyTweak108.ip";
connectAttr "pasted__polyTweak107.out" "pasted__polyMergeVert107.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert107.mp"
		;
connectAttr "pasted__polyMergeVert106.out" "pasted__polyTweak107.ip";
connectAttr "pasted__polyTweak106.out" "pasted__polyMergeVert106.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert106.mp"
		;
connectAttr "pasted__polyMergeVert105.out" "pasted__polyTweak106.ip";
connectAttr "pasted__polyTweak105.out" "pasted__polyMergeVert105.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert105.mp"
		;
connectAttr "pasted__polyMergeVert104.out" "pasted__polyTweak105.ip";
connectAttr "pasted__polyTweak104.out" "pasted__polyMergeVert104.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert104.mp"
		;
connectAttr "pasted__polyMergeVert103.out" "pasted__polyTweak104.ip";
connectAttr "pasted__polyTweak103.out" "pasted__polyMergeVert103.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert103.mp"
		;
connectAttr "pasted__polyMergeVert102.out" "pasted__polyTweak103.ip";
connectAttr "pasted__polyTweak102.out" "pasted__polyMergeVert102.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert102.mp"
		;
connectAttr "pasted__polyMergeVert101.out" "pasted__polyTweak102.ip";
connectAttr "pasted__polyTweak101.out" "pasted__polyMergeVert101.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert101.mp"
		;
connectAttr "pasted__polyMergeVert100.out" "pasted__polyTweak101.ip";
connectAttr "pasted__polyTweak100.out" "pasted__polyMergeVert100.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert100.mp"
		;
connectAttr "pasted__polyMergeVert99.out" "pasted__polyTweak100.ip";
connectAttr "pasted__polyTweak99.out" "pasted__polyMergeVert99.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert99.mp"
		;
connectAttr "pasted__polyMergeVert98.out" "pasted__polyTweak99.ip";
connectAttr "pasted__polyTweak98.out" "pasted__polyMergeVert98.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert98.mp"
		;
connectAttr "pasted__polyMergeVert97.out" "pasted__polyTweak98.ip";
connectAttr "pasted__polyTweak97.out" "pasted__polyMergeVert97.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert97.mp"
		;
connectAttr "pasted__polyMergeVert96.out" "pasted__polyTweak97.ip";
connectAttr "pasted__polyTweak96.out" "pasted__polyMergeVert96.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert96.mp"
		;
connectAttr "pasted__polyMergeVert95.out" "pasted__polyTweak96.ip";
connectAttr "pasted__polyTweak95.out" "pasted__polyMergeVert95.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert95.mp"
		;
connectAttr "pasted__polyMergeVert94.out" "pasted__polyTweak95.ip";
connectAttr "pasted__polyTweak94.out" "pasted__polyMergeVert94.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert94.mp"
		;
connectAttr "pasted__polyMergeVert93.out" "pasted__polyTweak94.ip";
connectAttr "pasted__polyTweak93.out" "pasted__polyMergeVert93.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert93.mp"
		;
connectAttr "pasted__polyMergeVert92.out" "pasted__polyTweak93.ip";
connectAttr "pasted__polyTweak92.out" "pasted__polyMergeVert92.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert92.mp"
		;
connectAttr "pasted__polyMergeVert91.out" "pasted__polyTweak92.ip";
connectAttr "pasted__polyTweak91.out" "pasted__polyMergeVert91.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert91.mp"
		;
connectAttr "pasted__polyMergeVert90.out" "pasted__polyTweak91.ip";
connectAttr "pasted__polyTweak90.out" "pasted__polyMergeVert90.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert90.mp"
		;
connectAttr "pasted__polyMergeVert89.out" "pasted__polyTweak90.ip";
connectAttr "pasted__polyTweak89.out" "pasted__polyMergeVert89.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert89.mp"
		;
connectAttr "pasted__polyMergeVert88.out" "pasted__polyTweak89.ip";
connectAttr "pasted__polyTweak88.out" "pasted__polyMergeVert88.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert88.mp"
		;
connectAttr "pasted__polyMergeVert87.out" "pasted__polyTweak88.ip";
connectAttr "pasted__polyTweak87.out" "pasted__polyMergeVert87.ip";
connectAttr "|group12|pasted__group|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__polyMergeVert87.mp"
		;
connectAttr "pasted__pasted__polyCube5.out" "pasted__polyTweak87.ip";
connectAttr "polyMergeVert86.out" "polyNormalPerVertex1.ip";
connectAttr "polyMergeVert38.out" "polyNormalPerVertex2.ip";
connectAttr "polyCylinder1.out" "polyNormalPerVertex3.ip";
connectAttr "pasted__polyCylinder1.out" "polyNormalPerVertex4.ip";
connectAttr "pasted__polyCylinder2.out" "polyNormalPerVertex5.ip";
connectAttr "pasted__polyCylinder3.out" "polyNormalPerVertex6.ip";
connectAttr "pasted__polyCylinder4.out" "polyNormalPerVertex7.ip";
connectAttr "pasted__polyMergeVert38.out" "polyNormalPerVertex8.ip";
connectAttr "pasted__polyMergeVert86.out" "polyNormalPerVertex9.ip";
connectAttr "pasted__polyMergeVert134.out" "polyNormalPerVertex10.ip";
connectAttr "pasted__polyMergeVert182.out" "polyNormalPerVertex11.ip";
connectAttr "pasted__polyMergeVert230.out" "polyNormalPerVertex12.ip";
connectAttr "polyNormalPerVertex1.out" "polyTriangulate1.ip";
connectAttr "polyNormalPerVertex2.out" "polyTriangulate2.ip";
connectAttr "polyNormalPerVertex3.out" "polyTriangulate3.ip";
connectAttr "polyNormalPerVertex4.out" "polyTriangulate4.ip";
connectAttr "polyNormalPerVertex5.out" "polyTriangulate5.ip";
connectAttr "polyNormalPerVertex6.out" "polyTriangulate6.ip";
connectAttr "polyNormalPerVertex7.out" "polyTriangulate7.ip";
connectAttr "polyNormalPerVertex8.out" "polyTriangulate8.ip";
connectAttr "polyNormalPerVertex9.out" "polyTriangulate9.ip";
connectAttr "polyNormalPerVertex10.out" "polyTriangulate10.ip";
connectAttr "polyNormalPerVertex11.out" "polyTriangulate11.ip";
connectAttr "polyNormalPerVertex12.out" "polyTriangulate12.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n1\n\"pasted__file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n2\n\"pasted__file2\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n3\n\"pasted__file3\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n4\n\"pasted__file4\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n5\n\"pasted__file5\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of cell_door.ma
