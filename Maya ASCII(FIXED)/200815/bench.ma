//Maya ASCII 2015 scene
//Name: bench.ma
//Last modified: Wed, Aug 19, 2015 11:19:05 AM
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
	setAttr ".t" -type "double3" -9.2839332809851349 29.287734121651546 -32.831374621004159 ;
	setAttr ".r" -type "double3" 318.86164726978581 915.3999999997792 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 46.84600441290479;
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 1.3575469826755815 0 ;
	setAttr ".s" -type "double3" 7.3 0.18605514366637346 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
createNode transform -n "group1";
	setAttr ".t" -type "double3" 10 0 0.8 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pCube2" -p "group2";
	setAttr ".t" -type "double3" 0 0 1.6084885238283539 ;
	setAttr ".s" -type "double3" 0.13307095567731098 1 0.13307095567731098 ;
createNode mesh -n "pasted__pCubeShape2" -p "pasted__pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70312502980232239 0.38802080415189266 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "group3";
	setAttr ".rp" -type "double3" 10 0 -0.8 ;
	setAttr ".sp" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__group2" -p "group3";
	setAttr ".t" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__group2";
	setAttr ".s" -type "double3" 0.13307095567731098 1 0.13307095567731098 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "pasted__pasted__pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70312502980232239 0.38802080415189266 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "group4";
	setAttr ".t" -type "double3" -20.024034479229684 0 0 ;
	setAttr ".rp" -type "double3" 10 0 -0.8 ;
	setAttr ".sp" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__group3" -p "group4";
	setAttr ".rp" -type "double3" 10 0 -0.8 ;
	setAttr ".sp" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__group2" -p "pasted__group3";
	setAttr ".t" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "pasted__pasted__group2";
	setAttr ".t" -type "double3" 0 0 1.6780236050584754 ;
	setAttr ".s" -type "double3" 0.13307095567731098 1 0.13307095567731098 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "pasted__pasted__pasted__pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70312502980232239 0.38802080415189266 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "group5";
	setAttr ".rp" -type "double3" -10.024034479229684 0 -0.8 ;
	setAttr ".sp" -type "double3" -10.024034479229684 0 -0.8 ;
createNode transform -n "pasted__group4" -p "group5";
	setAttr ".t" -type "double3" -20.024034479229684 0 0 ;
	setAttr ".rp" -type "double3" 10 0 -0.8 ;
	setAttr ".sp" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__group3" -p "pasted__group4";
	setAttr ".rp" -type "double3" 10 0 -0.8 ;
	setAttr ".sp" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "pasted__pasted__group3";
	setAttr ".t" -type "double3" 10 0 -0.8 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "pasted__pasted__pasted__group2";
	setAttr ".s" -type "double3" 0.13307095567731098 1 0.13307095567731098 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "pasted__pasted__pasted__pasted__pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70312502980232239 0.38802080415189266 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode blinn -n "blinn2";
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
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[13]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 1.6689301e-006 1;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[20]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 1.6689301e-006 -1;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[13]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 1.6689301e-006 1;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[19]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 1.6689301e-006 -1;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1.6689301e-006 1;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 1.6689301e-006 -1;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[44]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 2.3841858e-006 -1;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[42]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 -2.2053719e-006 -1;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[42]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 2.3841858e-006 1;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[41]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  0 -2.2053719e-006 1;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[33]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1.000000357628 0;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1.000000476837 0;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[24]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 -1.000000357628 0;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[16]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 1.000000476837 0;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 4.7683716e-007 0;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[15]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  -1 4.7683716e-007 0;
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 1 "vtx[16:17]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -1 -7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 -7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1.6689301e-006 1;
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1.6689301e-006 -1;
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[25]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 1.00000166893 1;
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[23]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1.000001430511 1;
createNode polyMergeVert -n "polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[21]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 -1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert34";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert35";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[21]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 1.00000166893 -1;
createNode polyMergeVert -n "polyMergeVert36";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[18]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 -7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert37";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[14]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert39";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1.00000166893 0;
createNode polyMergeVert -n "polyMergeVert40";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert41";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 -7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert42";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 4.7683716e-007 0;
createNode polyMergeVert -n "polyMergeVert43";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1 4.7683716e-007 0;
createNode polyMergeVert -n "polyMergeVert44";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 -7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[11]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 -1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  1 -1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[9]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1 -1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 7.2999999999999998 0 0 0 0 0.18605514366637346 0 0 0 0 1 0
		 0 1.3575469826755815 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1 -1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[51]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[48]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[48]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert55";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert56";
	setAttr ".ics" -type "componentList" 1 "vtx[29:30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert57";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert58";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert59";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert60";
	setAttr ".ics" -type "componentList" 1 "vtx[33:34]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert61";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert62";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert63";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert64";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -0.99999678 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -3.5762787e-006 0 0.99999678;
createNode polyMergeVert -n "polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert75";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak75";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert76";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999857 0 -1.5497208e-006;
createNode polyMergeVert -n "polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -0.99999678 0 -3.5762787e-006;
createNode polyMergeVert -n "polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0.99999678 0 -0.99999642;
createNode polyMergeVert -n "polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[13:14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "polyMergeVert85";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999464;
createNode polyMergeVert -n "polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "polyMergeVert88";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak88";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode polyMergeVert -n "polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -8.3446503e-007 -1 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  8.3446503e-007 -1 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "polyMergeVert96";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert96";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  8.3446503e-007 -1 8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -8.3446503e-007 -1 8.3446503e-007;
createNode deleteComponent -n "pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode polyMergeVert -n "pasted__polyMergeVert88";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak88";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__polyMergeVert85";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999464;
createNode polyMergeVert -n "pasted__polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[13:14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0.99999678 0 -0.99999642;
createNode polyMergeVert -n "pasted__polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -0.99999678 0 -3.5762787e-006;
createNode polyMergeVert -n "pasted__polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert76";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999857 0 -1.5497208e-006;
createNode polyMergeVert -n "pasted__polyMergeVert75";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak75";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -3.5762787e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -0.99999678 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert64";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert63";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert62";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert61";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak61";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert60";
	setAttr ".ics" -type "componentList" 1 "vtx[33:34]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert59";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert58";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert57";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert56";
	setAttr ".ics" -type "componentList" 1 "vtx[29:30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert55";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[48]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[48]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[51]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyCube -n "pasted__pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo1";
createNode shadingEngine -n "pasted__blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "pasted__blinn2";
createNode file -n "pasted__file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__place2dTexture1";
createNode polyMergeVert -n "pasted__pasted__polyMergeVert96";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  8.3446503e-007 -1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -8.3446503e-007 -1 8.3446503e-007;
createNode deleteComponent -n "pasted__pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode polyMergeVert -n "pasted__pasted__polyMergeVert88";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak88";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert85";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999464;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[13:14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0.99999678 0 -0.99999642;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -0.99999678 0 -3.5762787e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert76";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999857 0 -1.5497208e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert75";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak75";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -3.5762787e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -0.99999678 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert64";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert63";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert62";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert61";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak61";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert60";
	setAttr ".ics" -type "componentList" 1 "vtx[33:34]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert59";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert58";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert57";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert56";
	setAttr ".ics" -type "componentList" 1 "vtx[29:30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert55";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[48]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[48]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[51]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyCube -n "pasted__pasted__pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__materialInfo1";
createNode shadingEngine -n "pasted__pasted__blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "pasted__pasted__blinn2";
createNode file -n "pasted__pasted__file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__pasted__place2dTexture1";
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert96";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert95";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert94";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -8.3446503e-007 1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  8.3446503e-007 -1 8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert90";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -8.3446503e-007 -1 -8.3446503e-007;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -8.3446503e-007 -1 8.3446503e-007;
createNode deleteComponent -n "pasted__pasted__pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert88";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak88";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert87";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999857;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert85";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1.5497208e-006 0 0.99999464;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert84";
	setAttr ".ics" -type "componentList" 1 "vtx[13:14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0.99999678 0 -0.99999642;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert82";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -0.99999678 0 -3.5762787e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert80";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert79";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert78";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert76";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  0.99999857 0 -1.5497208e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert75";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak75";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert74";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  -0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert73";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert72";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -3.5762787e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert71";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -0.99999678 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert70";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert69";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert68";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert67";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert64";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert63";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0.99999678 0 -3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert62";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert61";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak61";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert60";
	setAttr ".ics" -type "componentList" 1 "vtx[33:34]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert59";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert58";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert57";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert56";
	setAttr ".ics" -type "componentList" 1 "vtx[29:30]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert55";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -0.99999678 0 3.2186508e-006;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[48]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[48]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  -3.2186508e-006 0 -0.99999678;
createNode polyMergeVert -n "pasted__pasted__pasted__polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[51]";
	setAttr ".ix" -type "matrix" 0.13307095567731098 0 0 0 0 1 0 0 0 0 0.13307095567731098 0
		 10 0 -0.80000000000000004 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__pasted__pasted__polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  -3.2186508e-006 0 0.99999678;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo1";
createNode shadingEngine -n "pasted__pasted__pasted__blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode blinn -n "pasted__pasted__pasted__blinn2";
createNode file -n "pasted__pasted__pasted__file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga";
createNode place2dTexture -n "pasted__pasted__pasted__place2dTexture1";
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" -1.9868216e-008 -1 -5.2981907e-008 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" -1.9868216e-008 -1 -5.2981907e-008 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" -3.9736431e-008 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" -3.9736431e-008 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" -3.9736431e-008 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" -3.9736431e-008 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" -1.9868216e-008 -1 -5.2981907e-008 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" -1.9868216e-008 -1 -5.2981907e-008 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" -5.2982006e-008 -3.9736427e-008 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.3245527e-008 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -0.99999994 -5.2982017e-008 -3.9736513e-008 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" -5.2982017e-008 -3.9736431e-008 -0.99999994 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 -3.9736506e-008 ;
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
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "polyTriangulate1.out" "pCubeShape1.i";
connectAttr "polyTriangulate2.out" "pasted__pCubeShape2.i";
connectAttr "polyTriangulate3.out" "pasted__pasted__pCubeShape2.i";
connectAttr "polyTriangulate4.out" "pasted__pasted__pasted__pCubeShape2.i";
connectAttr "polyTriangulate5.out" "pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn2.oc" "blinn1SG.ss";
connectAttr "pasted__pCubeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file1.oc" "blinn2.c";
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
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert9.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert10.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert11.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert12.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert13.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert14.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert13.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert15.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert14.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert16.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert17.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert18.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert19.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert18.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert20.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert21.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert22.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert23.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert22.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyMergeVert24.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyMergeVert25.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyMergeVert26.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert26.mp";
connectAttr "polyMergeVert25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyMergeVert27.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert26.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyMergeVert28.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert27.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyMergeVert29.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert28.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyMergeVert30.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert29.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyMergeVert31.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert30.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyMergeVert32.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert32.mp";
connectAttr "polyMergeVert31.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyMergeVert33.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert33.mp";
connectAttr "polyMergeVert32.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyMergeVert34.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert34.mp";
connectAttr "polyMergeVert33.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyMergeVert35.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert35.mp";
connectAttr "polyMergeVert34.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyMergeVert36.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert36.mp";
connectAttr "polyMergeVert35.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyMergeVert37.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert37.mp";
connectAttr "polyMergeVert36.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyMergeVert38.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert38.mp";
connectAttr "polyMergeVert37.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyMergeVert39.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert39.mp";
connectAttr "polyMergeVert38.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyMergeVert40.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert40.mp";
connectAttr "polyMergeVert39.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyMergeVert41.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert40.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyMergeVert42.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert41.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polyMergeVert43.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert42.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polyMergeVert44.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert43.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyMergeVert45.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert45.mp";
connectAttr "polyMergeVert44.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyMergeVert46.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert45.out" "polyTweak46.ip";
connectAttr "polyTweak47.out" "polyMergeVert47.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert47.mp";
connectAttr "polyMergeVert46.out" "polyTweak47.ip";
connectAttr "polyTweak48.out" "polyMergeVert48.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert47.out" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyMergeVert49.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert49.mp";
connectAttr "pasted__polyCube4.out" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyMergeVert50.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert49.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyMergeVert51.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert50.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyMergeVert52.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert51.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyMergeVert53.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert52.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyMergeVert54.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert53.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyMergeVert55.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert55.mp";
connectAttr "polyMergeVert54.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyMergeVert56.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert56.mp";
connectAttr "polyMergeVert55.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polyMergeVert57.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert57.mp";
connectAttr "polyMergeVert56.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polyMergeVert58.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert58.mp";
connectAttr "polyMergeVert57.out" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyMergeVert59.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert59.mp";
connectAttr "polyMergeVert58.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyMergeVert60.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert60.mp";
connectAttr "polyMergeVert59.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyMergeVert61.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert61.mp";
connectAttr "polyMergeVert60.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyMergeVert62.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert62.mp";
connectAttr "polyMergeVert61.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyMergeVert63.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert63.mp";
connectAttr "polyMergeVert62.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyMergeVert64.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert64.mp";
connectAttr "polyMergeVert63.out" "polyTweak64.ip";
connectAttr "polyTweak65.out" "polyMergeVert65.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert65.mp";
connectAttr "polyMergeVert64.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyMergeVert66.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert66.mp";
connectAttr "polyMergeVert65.out" "polyTweak66.ip";
connectAttr "polyTweak67.out" "polyMergeVert67.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert67.mp";
connectAttr "polyMergeVert66.out" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polyMergeVert68.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert68.mp";
connectAttr "polyMergeVert67.out" "polyTweak68.ip";
connectAttr "polyTweak69.out" "polyMergeVert69.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert69.mp";
connectAttr "polyMergeVert68.out" "polyTweak69.ip";
connectAttr "polyTweak70.out" "polyMergeVert70.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert70.mp";
connectAttr "polyMergeVert69.out" "polyTweak70.ip";
connectAttr "polyTweak71.out" "polyMergeVert71.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert71.mp";
connectAttr "polyMergeVert70.out" "polyTweak71.ip";
connectAttr "polyTweak72.out" "polyMergeVert72.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert72.mp";
connectAttr "polyMergeVert71.out" "polyTweak72.ip";
connectAttr "polyTweak73.out" "polyMergeVert73.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert73.mp";
connectAttr "polyMergeVert72.out" "polyTweak73.ip";
connectAttr "polyTweak74.out" "polyMergeVert74.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert74.mp";
connectAttr "polyMergeVert73.out" "polyTweak74.ip";
connectAttr "polyTweak75.out" "polyMergeVert75.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert75.mp";
connectAttr "polyMergeVert74.out" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polyMergeVert76.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert76.mp";
connectAttr "polyMergeVert75.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyMergeVert77.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert77.mp";
connectAttr "polyMergeVert76.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyMergeVert78.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert78.mp";
connectAttr "polyMergeVert77.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyMergeVert79.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert79.mp";
connectAttr "polyMergeVert78.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyMergeVert80.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert80.mp";
connectAttr "polyMergeVert79.out" "polyTweak80.ip";
connectAttr "polyTweak81.out" "polyMergeVert81.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert81.mp";
connectAttr "polyMergeVert80.out" "polyTweak81.ip";
connectAttr "polyTweak82.out" "polyMergeVert82.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert82.mp";
connectAttr "polyMergeVert81.out" "polyTweak82.ip";
connectAttr "polyTweak83.out" "polyMergeVert83.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert83.mp";
connectAttr "polyMergeVert82.out" "polyTweak83.ip";
connectAttr "polyTweak84.out" "polyMergeVert84.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert84.mp";
connectAttr "polyMergeVert83.out" "polyTweak84.ip";
connectAttr "polyTweak85.out" "polyMergeVert85.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert85.mp";
connectAttr "polyMergeVert84.out" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyMergeVert86.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert86.mp";
connectAttr "polyMergeVert85.out" "polyTweak86.ip";
connectAttr "polyTweak87.out" "polyMergeVert87.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert87.mp";
connectAttr "polyMergeVert86.out" "polyTweak87.ip";
connectAttr "polyTweak88.out" "polyMergeVert88.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert88.mp";
connectAttr "polyMergeVert87.out" "polyTweak88.ip";
connectAttr "polyMergeVert88.out" "deleteComponent1.ig";
connectAttr "polyTweak89.out" "polyMergeVert89.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert89.mp";
connectAttr "deleteComponent1.og" "polyTweak89.ip";
connectAttr "polyTweak90.out" "polyMergeVert90.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert90.mp";
connectAttr "polyMergeVert89.out" "polyTweak90.ip";
connectAttr "polyTweak91.out" "polyMergeVert91.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert91.mp";
connectAttr "polyMergeVert90.out" "polyTweak91.ip";
connectAttr "polyTweak92.out" "polyMergeVert92.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert92.mp";
connectAttr "polyMergeVert91.out" "polyTweak92.ip";
connectAttr "polyTweak93.out" "polyMergeVert93.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert93.mp";
connectAttr "polyMergeVert92.out" "polyTweak93.ip";
connectAttr "polyTweak94.out" "polyMergeVert94.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert94.mp";
connectAttr "polyMergeVert93.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyMergeVert95.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert95.mp";
connectAttr "polyMergeVert94.out" "polyTweak95.ip";
connectAttr "polyTweak96.out" "polyMergeVert96.ip";
connectAttr "pasted__pCubeShape2.wm" "polyMergeVert96.mp";
connectAttr "polyMergeVert95.out" "polyTweak96.ip";
connectAttr "pasted__polyTweak96.out" "pasted__polyMergeVert96.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert96.mp";
connectAttr "pasted__polyMergeVert95.out" "pasted__polyTweak96.ip";
connectAttr "pasted__polyTweak95.out" "pasted__polyMergeVert95.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert95.mp";
connectAttr "pasted__polyMergeVert94.out" "pasted__polyTweak95.ip";
connectAttr "pasted__polyTweak94.out" "pasted__polyMergeVert94.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert94.mp";
connectAttr "pasted__polyMergeVert93.out" "pasted__polyTweak94.ip";
connectAttr "pasted__polyTweak93.out" "pasted__polyMergeVert93.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert93.mp";
connectAttr "pasted__polyMergeVert92.out" "pasted__polyTweak93.ip";
connectAttr "pasted__polyTweak92.out" "pasted__polyMergeVert92.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert92.mp";
connectAttr "pasted__polyMergeVert91.out" "pasted__polyTweak92.ip";
connectAttr "pasted__polyTweak91.out" "pasted__polyMergeVert91.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert91.mp";
connectAttr "pasted__polyMergeVert90.out" "pasted__polyTweak91.ip";
connectAttr "pasted__polyTweak90.out" "pasted__polyMergeVert90.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert90.mp";
connectAttr "pasted__polyMergeVert89.out" "pasted__polyTweak90.ip";
connectAttr "pasted__polyTweak89.out" "pasted__polyMergeVert89.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert89.mp";
connectAttr "pasted__deleteComponent1.og" "pasted__polyTweak89.ip";
connectAttr "pasted__polyMergeVert88.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polyTweak88.out" "pasted__polyMergeVert88.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert88.mp";
connectAttr "pasted__polyMergeVert87.out" "pasted__polyTweak88.ip";
connectAttr "pasted__polyTweak87.out" "pasted__polyMergeVert87.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert87.mp";
connectAttr "pasted__polyMergeVert86.out" "pasted__polyTweak87.ip";
connectAttr "pasted__polyTweak86.out" "pasted__polyMergeVert86.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert86.mp";
connectAttr "pasted__polyMergeVert85.out" "pasted__polyTweak86.ip";
connectAttr "pasted__polyTweak85.out" "pasted__polyMergeVert85.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert85.mp";
connectAttr "pasted__polyMergeVert84.out" "pasted__polyTweak85.ip";
connectAttr "pasted__polyTweak84.out" "pasted__polyMergeVert84.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert84.mp";
connectAttr "pasted__polyMergeVert83.out" "pasted__polyTweak84.ip";
connectAttr "pasted__polyTweak83.out" "pasted__polyMergeVert83.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert83.mp";
connectAttr "pasted__polyMergeVert82.out" "pasted__polyTweak83.ip";
connectAttr "pasted__polyTweak82.out" "pasted__polyMergeVert82.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert82.mp";
connectAttr "pasted__polyMergeVert81.out" "pasted__polyTweak82.ip";
connectAttr "pasted__polyTweak81.out" "pasted__polyMergeVert81.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert81.mp";
connectAttr "pasted__polyMergeVert80.out" "pasted__polyTweak81.ip";
connectAttr "pasted__polyTweak80.out" "pasted__polyMergeVert80.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert80.mp";
connectAttr "pasted__polyMergeVert79.out" "pasted__polyTweak80.ip";
connectAttr "pasted__polyTweak79.out" "pasted__polyMergeVert79.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert79.mp";
connectAttr "pasted__polyMergeVert78.out" "pasted__polyTweak79.ip";
connectAttr "pasted__polyTweak78.out" "pasted__polyMergeVert78.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert78.mp";
connectAttr "pasted__polyMergeVert77.out" "pasted__polyTweak78.ip";
connectAttr "pasted__polyTweak77.out" "pasted__polyMergeVert77.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert77.mp";
connectAttr "pasted__polyMergeVert76.out" "pasted__polyTweak77.ip";
connectAttr "pasted__polyTweak76.out" "pasted__polyMergeVert76.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert76.mp";
connectAttr "pasted__polyMergeVert75.out" "pasted__polyTweak76.ip";
connectAttr "pasted__polyTweak75.out" "pasted__polyMergeVert75.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert75.mp";
connectAttr "pasted__polyMergeVert74.out" "pasted__polyTweak75.ip";
connectAttr "pasted__polyTweak74.out" "pasted__polyMergeVert74.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert74.mp";
connectAttr "pasted__polyMergeVert73.out" "pasted__polyTweak74.ip";
connectAttr "pasted__polyTweak73.out" "pasted__polyMergeVert73.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert73.mp";
connectAttr "pasted__polyMergeVert72.out" "pasted__polyTweak73.ip";
connectAttr "pasted__polyTweak72.out" "pasted__polyMergeVert72.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert72.mp";
connectAttr "pasted__polyMergeVert71.out" "pasted__polyTweak72.ip";
connectAttr "pasted__polyTweak71.out" "pasted__polyMergeVert71.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert71.mp";
connectAttr "pasted__polyMergeVert70.out" "pasted__polyTweak71.ip";
connectAttr "pasted__polyTweak70.out" "pasted__polyMergeVert70.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert70.mp";
connectAttr "pasted__polyMergeVert69.out" "pasted__polyTweak70.ip";
connectAttr "pasted__polyTweak69.out" "pasted__polyMergeVert69.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert69.mp";
connectAttr "pasted__polyMergeVert68.out" "pasted__polyTweak69.ip";
connectAttr "pasted__polyTweak68.out" "pasted__polyMergeVert68.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert68.mp";
connectAttr "pasted__polyMergeVert67.out" "pasted__polyTweak68.ip";
connectAttr "pasted__polyTweak67.out" "pasted__polyMergeVert67.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert67.mp";
connectAttr "pasted__polyMergeVert66.out" "pasted__polyTweak67.ip";
connectAttr "pasted__polyTweak66.out" "pasted__polyMergeVert66.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert66.mp";
connectAttr "pasted__polyMergeVert65.out" "pasted__polyTweak66.ip";
connectAttr "pasted__polyTweak65.out" "pasted__polyMergeVert65.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert65.mp";
connectAttr "pasted__polyMergeVert64.out" "pasted__polyTweak65.ip";
connectAttr "pasted__polyTweak64.out" "pasted__polyMergeVert64.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert64.mp";
connectAttr "pasted__polyMergeVert63.out" "pasted__polyTweak64.ip";
connectAttr "pasted__polyTweak63.out" "pasted__polyMergeVert63.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert63.mp";
connectAttr "pasted__polyMergeVert62.out" "pasted__polyTweak63.ip";
connectAttr "pasted__polyTweak62.out" "pasted__polyMergeVert62.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert62.mp";
connectAttr "pasted__polyMergeVert61.out" "pasted__polyTweak62.ip";
connectAttr "pasted__polyTweak61.out" "pasted__polyMergeVert61.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert61.mp";
connectAttr "pasted__polyMergeVert60.out" "pasted__polyTweak61.ip";
connectAttr "pasted__polyTweak60.out" "pasted__polyMergeVert60.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert60.mp";
connectAttr "pasted__polyMergeVert59.out" "pasted__polyTweak60.ip";
connectAttr "pasted__polyTweak59.out" "pasted__polyMergeVert59.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert59.mp";
connectAttr "pasted__polyMergeVert58.out" "pasted__polyTweak59.ip";
connectAttr "pasted__polyTweak58.out" "pasted__polyMergeVert58.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert58.mp";
connectAttr "pasted__polyMergeVert57.out" "pasted__polyTweak58.ip";
connectAttr "pasted__polyTweak57.out" "pasted__polyMergeVert57.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert57.mp";
connectAttr "pasted__polyMergeVert56.out" "pasted__polyTweak57.ip";
connectAttr "pasted__polyTweak56.out" "pasted__polyMergeVert56.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert56.mp";
connectAttr "pasted__polyMergeVert55.out" "pasted__polyTweak56.ip";
connectAttr "pasted__polyTweak55.out" "pasted__polyMergeVert55.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert55.mp";
connectAttr "pasted__polyMergeVert54.out" "pasted__polyTweak55.ip";
connectAttr "pasted__polyTweak54.out" "pasted__polyMergeVert54.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert54.mp";
connectAttr "pasted__polyMergeVert53.out" "pasted__polyTweak54.ip";
connectAttr "pasted__polyTweak53.out" "pasted__polyMergeVert53.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert53.mp";
connectAttr "pasted__polyMergeVert52.out" "pasted__polyTweak53.ip";
connectAttr "pasted__polyTweak52.out" "pasted__polyMergeVert52.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert52.mp";
connectAttr "pasted__polyMergeVert51.out" "pasted__polyTweak52.ip";
connectAttr "pasted__polyTweak51.out" "pasted__polyMergeVert51.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert51.mp";
connectAttr "pasted__polyMergeVert50.out" "pasted__polyTweak51.ip";
connectAttr "pasted__polyTweak50.out" "pasted__polyMergeVert50.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert50.mp";
connectAttr "pasted__polyMergeVert49.out" "pasted__polyTweak50.ip";
connectAttr "pasted__polyTweak49.out" "pasted__polyMergeVert49.ip";
connectAttr "pasted__pasted__pCubeShape2.wm" "pasted__polyMergeVert49.mp";
connectAttr "pasted__pasted__polyCube4.out" "pasted__polyTweak49.ip";
connectAttr "pasted__blinn1SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__blinn2.msg" "pasted__materialInfo1.m";
connectAttr "pasted__file1.msg" "pasted__materialInfo1.t" -na;
connectAttr "pasted__blinn2.oc" "pasted__blinn1SG.ss";
connectAttr "pasted__pasted__pCubeShape2.iog" "pasted__blinn1SG.dsm" -na;
connectAttr "pasted__file1.oc" "pasted__blinn2.c";
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
connectAttr "pasted__pasted__polyTweak96.out" "pasted__pasted__polyMergeVert96.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert96.mp"
		;
connectAttr "pasted__pasted__polyMergeVert95.out" "pasted__pasted__polyTweak96.ip"
		;
connectAttr "pasted__pasted__polyTweak95.out" "pasted__pasted__polyMergeVert95.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert95.mp"
		;
connectAttr "pasted__pasted__polyMergeVert94.out" "pasted__pasted__polyTweak95.ip"
		;
connectAttr "pasted__pasted__polyTweak94.out" "pasted__pasted__polyMergeVert94.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert94.mp"
		;
connectAttr "pasted__pasted__polyMergeVert93.out" "pasted__pasted__polyTweak94.ip"
		;
connectAttr "pasted__pasted__polyTweak93.out" "pasted__pasted__polyMergeVert93.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert93.mp"
		;
connectAttr "pasted__pasted__polyMergeVert92.out" "pasted__pasted__polyTweak93.ip"
		;
connectAttr "pasted__pasted__polyTweak92.out" "pasted__pasted__polyMergeVert92.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert92.mp"
		;
connectAttr "pasted__pasted__polyMergeVert91.out" "pasted__pasted__polyTweak92.ip"
		;
connectAttr "pasted__pasted__polyTweak91.out" "pasted__pasted__polyMergeVert91.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert91.mp"
		;
connectAttr "pasted__pasted__polyMergeVert90.out" "pasted__pasted__polyTweak91.ip"
		;
connectAttr "pasted__pasted__polyTweak90.out" "pasted__pasted__polyMergeVert90.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert90.mp"
		;
connectAttr "pasted__pasted__polyMergeVert89.out" "pasted__pasted__polyTweak90.ip"
		;
connectAttr "pasted__pasted__polyTweak89.out" "pasted__pasted__polyMergeVert89.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert89.mp"
		;
connectAttr "pasted__pasted__deleteComponent1.og" "pasted__pasted__polyTweak89.ip"
		;
connectAttr "pasted__pasted__polyMergeVert88.out" "pasted__pasted__deleteComponent1.ig"
		;
connectAttr "pasted__pasted__polyTweak88.out" "pasted__pasted__polyMergeVert88.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert88.mp"
		;
connectAttr "pasted__pasted__polyMergeVert87.out" "pasted__pasted__polyTweak88.ip"
		;
connectAttr "pasted__pasted__polyTweak87.out" "pasted__pasted__polyMergeVert87.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert87.mp"
		;
connectAttr "pasted__pasted__polyMergeVert86.out" "pasted__pasted__polyTweak87.ip"
		;
connectAttr "pasted__pasted__polyTweak86.out" "pasted__pasted__polyMergeVert86.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert86.mp"
		;
connectAttr "pasted__pasted__polyMergeVert85.out" "pasted__pasted__polyTweak86.ip"
		;
connectAttr "pasted__pasted__polyTweak85.out" "pasted__pasted__polyMergeVert85.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert85.mp"
		;
connectAttr "pasted__pasted__polyMergeVert84.out" "pasted__pasted__polyTweak85.ip"
		;
connectAttr "pasted__pasted__polyTweak84.out" "pasted__pasted__polyMergeVert84.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert84.mp"
		;
connectAttr "pasted__pasted__polyMergeVert83.out" "pasted__pasted__polyTweak84.ip"
		;
connectAttr "pasted__pasted__polyTweak83.out" "pasted__pasted__polyMergeVert83.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert83.mp"
		;
connectAttr "pasted__pasted__polyMergeVert82.out" "pasted__pasted__polyTweak83.ip"
		;
connectAttr "pasted__pasted__polyTweak82.out" "pasted__pasted__polyMergeVert82.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert82.mp"
		;
connectAttr "pasted__pasted__polyMergeVert81.out" "pasted__pasted__polyTweak82.ip"
		;
connectAttr "pasted__pasted__polyTweak81.out" "pasted__pasted__polyMergeVert81.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert81.mp"
		;
connectAttr "pasted__pasted__polyMergeVert80.out" "pasted__pasted__polyTweak81.ip"
		;
connectAttr "pasted__pasted__polyTweak80.out" "pasted__pasted__polyMergeVert80.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert80.mp"
		;
connectAttr "pasted__pasted__polyMergeVert79.out" "pasted__pasted__polyTweak80.ip"
		;
connectAttr "pasted__pasted__polyTweak79.out" "pasted__pasted__polyMergeVert79.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert79.mp"
		;
connectAttr "pasted__pasted__polyMergeVert78.out" "pasted__pasted__polyTweak79.ip"
		;
connectAttr "pasted__pasted__polyTweak78.out" "pasted__pasted__polyMergeVert78.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert78.mp"
		;
connectAttr "pasted__pasted__polyMergeVert77.out" "pasted__pasted__polyTweak78.ip"
		;
connectAttr "pasted__pasted__polyTweak77.out" "pasted__pasted__polyMergeVert77.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert77.mp"
		;
connectAttr "pasted__pasted__polyMergeVert76.out" "pasted__pasted__polyTweak77.ip"
		;
connectAttr "pasted__pasted__polyTweak76.out" "pasted__pasted__polyMergeVert76.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert76.mp"
		;
connectAttr "pasted__pasted__polyMergeVert75.out" "pasted__pasted__polyTweak76.ip"
		;
connectAttr "pasted__pasted__polyTweak75.out" "pasted__pasted__polyMergeVert75.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert75.mp"
		;
connectAttr "pasted__pasted__polyMergeVert74.out" "pasted__pasted__polyTweak75.ip"
		;
connectAttr "pasted__pasted__polyTweak74.out" "pasted__pasted__polyMergeVert74.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert74.mp"
		;
connectAttr "pasted__pasted__polyMergeVert73.out" "pasted__pasted__polyTweak74.ip"
		;
connectAttr "pasted__pasted__polyTweak73.out" "pasted__pasted__polyMergeVert73.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert73.mp"
		;
connectAttr "pasted__pasted__polyMergeVert72.out" "pasted__pasted__polyTweak73.ip"
		;
connectAttr "pasted__pasted__polyTweak72.out" "pasted__pasted__polyMergeVert72.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert72.mp"
		;
connectAttr "pasted__pasted__polyMergeVert71.out" "pasted__pasted__polyTweak72.ip"
		;
connectAttr "pasted__pasted__polyTweak71.out" "pasted__pasted__polyMergeVert71.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert71.mp"
		;
connectAttr "pasted__pasted__polyMergeVert70.out" "pasted__pasted__polyTweak71.ip"
		;
connectAttr "pasted__pasted__polyTweak70.out" "pasted__pasted__polyMergeVert70.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert70.mp"
		;
connectAttr "pasted__pasted__polyMergeVert69.out" "pasted__pasted__polyTweak70.ip"
		;
connectAttr "pasted__pasted__polyTweak69.out" "pasted__pasted__polyMergeVert69.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert69.mp"
		;
connectAttr "pasted__pasted__polyMergeVert68.out" "pasted__pasted__polyTweak69.ip"
		;
connectAttr "pasted__pasted__polyTweak68.out" "pasted__pasted__polyMergeVert68.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert68.mp"
		;
connectAttr "pasted__pasted__polyMergeVert67.out" "pasted__pasted__polyTweak68.ip"
		;
connectAttr "pasted__pasted__polyTweak67.out" "pasted__pasted__polyMergeVert67.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert67.mp"
		;
connectAttr "pasted__pasted__polyMergeVert66.out" "pasted__pasted__polyTweak67.ip"
		;
connectAttr "pasted__pasted__polyTweak66.out" "pasted__pasted__polyMergeVert66.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert66.mp"
		;
connectAttr "pasted__pasted__polyMergeVert65.out" "pasted__pasted__polyTweak66.ip"
		;
connectAttr "pasted__pasted__polyTweak65.out" "pasted__pasted__polyMergeVert65.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert65.mp"
		;
connectAttr "pasted__pasted__polyMergeVert64.out" "pasted__pasted__polyTweak65.ip"
		;
connectAttr "pasted__pasted__polyTweak64.out" "pasted__pasted__polyMergeVert64.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert64.mp"
		;
connectAttr "pasted__pasted__polyMergeVert63.out" "pasted__pasted__polyTweak64.ip"
		;
connectAttr "pasted__pasted__polyTweak63.out" "pasted__pasted__polyMergeVert63.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert63.mp"
		;
connectAttr "pasted__pasted__polyMergeVert62.out" "pasted__pasted__polyTweak63.ip"
		;
connectAttr "pasted__pasted__polyTweak62.out" "pasted__pasted__polyMergeVert62.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert62.mp"
		;
connectAttr "pasted__pasted__polyMergeVert61.out" "pasted__pasted__polyTweak62.ip"
		;
connectAttr "pasted__pasted__polyTweak61.out" "pasted__pasted__polyMergeVert61.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert61.mp"
		;
connectAttr "pasted__pasted__polyMergeVert60.out" "pasted__pasted__polyTweak61.ip"
		;
connectAttr "pasted__pasted__polyTweak60.out" "pasted__pasted__polyMergeVert60.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert60.mp"
		;
connectAttr "pasted__pasted__polyMergeVert59.out" "pasted__pasted__polyTweak60.ip"
		;
connectAttr "pasted__pasted__polyTweak59.out" "pasted__pasted__polyMergeVert59.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert59.mp"
		;
connectAttr "pasted__pasted__polyMergeVert58.out" "pasted__pasted__polyTweak59.ip"
		;
connectAttr "pasted__pasted__polyTweak58.out" "pasted__pasted__polyMergeVert58.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert58.mp"
		;
connectAttr "pasted__pasted__polyMergeVert57.out" "pasted__pasted__polyTweak58.ip"
		;
connectAttr "pasted__pasted__polyTweak57.out" "pasted__pasted__polyMergeVert57.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert57.mp"
		;
connectAttr "pasted__pasted__polyMergeVert56.out" "pasted__pasted__polyTweak57.ip"
		;
connectAttr "pasted__pasted__polyTweak56.out" "pasted__pasted__polyMergeVert56.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert56.mp"
		;
connectAttr "pasted__pasted__polyMergeVert55.out" "pasted__pasted__polyTweak56.ip"
		;
connectAttr "pasted__pasted__polyTweak55.out" "pasted__pasted__polyMergeVert55.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert55.mp"
		;
connectAttr "pasted__pasted__polyMergeVert54.out" "pasted__pasted__polyTweak55.ip"
		;
connectAttr "pasted__pasted__polyTweak54.out" "pasted__pasted__polyMergeVert54.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert54.mp"
		;
connectAttr "pasted__pasted__polyMergeVert53.out" "pasted__pasted__polyTweak54.ip"
		;
connectAttr "pasted__pasted__polyTweak53.out" "pasted__pasted__polyMergeVert53.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert53.mp"
		;
connectAttr "pasted__pasted__polyMergeVert52.out" "pasted__pasted__polyTweak53.ip"
		;
connectAttr "pasted__pasted__polyTweak52.out" "pasted__pasted__polyMergeVert52.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert52.mp"
		;
connectAttr "pasted__pasted__polyMergeVert51.out" "pasted__pasted__polyTweak52.ip"
		;
connectAttr "pasted__pasted__polyTweak51.out" "pasted__pasted__polyMergeVert51.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert51.mp"
		;
connectAttr "pasted__pasted__polyMergeVert50.out" "pasted__pasted__polyTweak51.ip"
		;
connectAttr "pasted__pasted__polyTweak50.out" "pasted__pasted__polyMergeVert50.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert50.mp"
		;
connectAttr "pasted__pasted__polyMergeVert49.out" "pasted__pasted__polyTweak50.ip"
		;
connectAttr "pasted__pasted__polyTweak49.out" "pasted__pasted__polyMergeVert49.ip"
		;
connectAttr "pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__polyMergeVert49.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube4.out" "pasted__pasted__polyTweak49.ip"
		;
connectAttr "pasted__pasted__blinn1SG.msg" "pasted__pasted__materialInfo1.sg";
connectAttr "pasted__pasted__blinn2.msg" "pasted__pasted__materialInfo1.m";
connectAttr "pasted__pasted__file1.msg" "pasted__pasted__materialInfo1.t" -na;
connectAttr "pasted__pasted__blinn2.oc" "pasted__pasted__blinn1SG.ss";
connectAttr "pasted__pasted__pasted__pCubeShape2.iog" "pasted__pasted__blinn1SG.dsm"
		 -na;
connectAttr "pasted__pasted__file1.oc" "pasted__pasted__blinn2.c";
connectAttr "pasted__pasted__place2dTexture1.c" "pasted__pasted__file1.c";
connectAttr "pasted__pasted__place2dTexture1.tf" "pasted__pasted__file1.tf";
connectAttr "pasted__pasted__place2dTexture1.rf" "pasted__pasted__file1.rf";
connectAttr "pasted__pasted__place2dTexture1.mu" "pasted__pasted__file1.mu";
connectAttr "pasted__pasted__place2dTexture1.mv" "pasted__pasted__file1.mv";
connectAttr "pasted__pasted__place2dTexture1.s" "pasted__pasted__file1.s";
connectAttr "pasted__pasted__place2dTexture1.wu" "pasted__pasted__file1.wu";
connectAttr "pasted__pasted__place2dTexture1.wv" "pasted__pasted__file1.wv";
connectAttr "pasted__pasted__place2dTexture1.re" "pasted__pasted__file1.re";
connectAttr "pasted__pasted__place2dTexture1.of" "pasted__pasted__file1.of";
connectAttr "pasted__pasted__place2dTexture1.r" "pasted__pasted__file1.ro";
connectAttr "pasted__pasted__place2dTexture1.n" "pasted__pasted__file1.n";
connectAttr "pasted__pasted__place2dTexture1.vt1" "pasted__pasted__file1.vt1";
connectAttr "pasted__pasted__place2dTexture1.vt2" "pasted__pasted__file1.vt2";
connectAttr "pasted__pasted__place2dTexture1.vt3" "pasted__pasted__file1.vt3";
connectAttr "pasted__pasted__place2dTexture1.vc1" "pasted__pasted__file1.vc1";
connectAttr "pasted__pasted__place2dTexture1.o" "pasted__pasted__file1.uv";
connectAttr "pasted__pasted__place2dTexture1.ofs" "pasted__pasted__file1.fs";
connectAttr "pasted__pasted__pasted__polyTweak96.out" "pasted__pasted__pasted__polyMergeVert96.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert96.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert95.out" "pasted__pasted__pasted__polyTweak96.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak95.out" "pasted__pasted__pasted__polyMergeVert95.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert95.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert94.out" "pasted__pasted__pasted__polyTweak95.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak94.out" "pasted__pasted__pasted__polyMergeVert94.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert94.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert93.out" "pasted__pasted__pasted__polyTweak94.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak93.out" "pasted__pasted__pasted__polyMergeVert93.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert93.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert92.out" "pasted__pasted__pasted__polyTweak93.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak92.out" "pasted__pasted__pasted__polyMergeVert92.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert92.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert91.out" "pasted__pasted__pasted__polyTweak92.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak91.out" "pasted__pasted__pasted__polyMergeVert91.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert91.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert90.out" "pasted__pasted__pasted__polyTweak91.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak90.out" "pasted__pasted__pasted__polyMergeVert90.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert90.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert89.out" "pasted__pasted__pasted__polyTweak90.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak89.out" "pasted__pasted__pasted__polyMergeVert89.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert89.mp"
		;
connectAttr "pasted__pasted__pasted__deleteComponent1.og" "pasted__pasted__pasted__polyTweak89.ip"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert88.out" "pasted__pasted__pasted__deleteComponent1.ig"
		;
connectAttr "pasted__pasted__pasted__polyTweak88.out" "pasted__pasted__pasted__polyMergeVert88.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert88.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert87.out" "pasted__pasted__pasted__polyTweak88.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak87.out" "pasted__pasted__pasted__polyMergeVert87.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert87.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert86.out" "pasted__pasted__pasted__polyTweak87.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak86.out" "pasted__pasted__pasted__polyMergeVert86.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert86.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert85.out" "pasted__pasted__pasted__polyTweak86.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak85.out" "pasted__pasted__pasted__polyMergeVert85.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert85.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert84.out" "pasted__pasted__pasted__polyTweak85.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak84.out" "pasted__pasted__pasted__polyMergeVert84.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert84.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert83.out" "pasted__pasted__pasted__polyTweak84.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak83.out" "pasted__pasted__pasted__polyMergeVert83.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert83.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert82.out" "pasted__pasted__pasted__polyTweak83.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak82.out" "pasted__pasted__pasted__polyMergeVert82.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert82.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert81.out" "pasted__pasted__pasted__polyTweak82.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak81.out" "pasted__pasted__pasted__polyMergeVert81.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert81.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert80.out" "pasted__pasted__pasted__polyTweak81.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak80.out" "pasted__pasted__pasted__polyMergeVert80.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert80.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert79.out" "pasted__pasted__pasted__polyTweak80.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak79.out" "pasted__pasted__pasted__polyMergeVert79.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert79.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert78.out" "pasted__pasted__pasted__polyTweak79.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak78.out" "pasted__pasted__pasted__polyMergeVert78.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert78.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert77.out" "pasted__pasted__pasted__polyTweak78.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak77.out" "pasted__pasted__pasted__polyMergeVert77.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert77.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert76.out" "pasted__pasted__pasted__polyTweak77.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak76.out" "pasted__pasted__pasted__polyMergeVert76.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert76.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert75.out" "pasted__pasted__pasted__polyTweak76.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak75.out" "pasted__pasted__pasted__polyMergeVert75.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert75.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert74.out" "pasted__pasted__pasted__polyTweak75.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak74.out" "pasted__pasted__pasted__polyMergeVert74.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert74.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert73.out" "pasted__pasted__pasted__polyTweak74.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak73.out" "pasted__pasted__pasted__polyMergeVert73.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert73.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert72.out" "pasted__pasted__pasted__polyTweak73.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak72.out" "pasted__pasted__pasted__polyMergeVert72.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert72.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert71.out" "pasted__pasted__pasted__polyTweak72.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak71.out" "pasted__pasted__pasted__polyMergeVert71.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert71.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert70.out" "pasted__pasted__pasted__polyTweak71.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak70.out" "pasted__pasted__pasted__polyMergeVert70.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert70.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert69.out" "pasted__pasted__pasted__polyTweak70.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak69.out" "pasted__pasted__pasted__polyMergeVert69.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert69.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert68.out" "pasted__pasted__pasted__polyTweak69.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak68.out" "pasted__pasted__pasted__polyMergeVert68.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert68.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert67.out" "pasted__pasted__pasted__polyTweak68.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak67.out" "pasted__pasted__pasted__polyMergeVert67.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert67.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert66.out" "pasted__pasted__pasted__polyTweak67.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak66.out" "pasted__pasted__pasted__polyMergeVert66.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert66.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert65.out" "pasted__pasted__pasted__polyTweak66.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak65.out" "pasted__pasted__pasted__polyMergeVert65.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert65.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert64.out" "pasted__pasted__pasted__polyTweak65.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak64.out" "pasted__pasted__pasted__polyMergeVert64.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert64.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert63.out" "pasted__pasted__pasted__polyTweak64.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak63.out" "pasted__pasted__pasted__polyMergeVert63.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert63.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert62.out" "pasted__pasted__pasted__polyTweak63.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak62.out" "pasted__pasted__pasted__polyMergeVert62.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert62.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert61.out" "pasted__pasted__pasted__polyTweak62.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak61.out" "pasted__pasted__pasted__polyMergeVert61.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert61.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert60.out" "pasted__pasted__pasted__polyTweak61.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak60.out" "pasted__pasted__pasted__polyMergeVert60.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert60.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert59.out" "pasted__pasted__pasted__polyTweak60.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak59.out" "pasted__pasted__pasted__polyMergeVert59.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert59.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert58.out" "pasted__pasted__pasted__polyTweak59.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak58.out" "pasted__pasted__pasted__polyMergeVert58.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert58.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert57.out" "pasted__pasted__pasted__polyTweak58.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak57.out" "pasted__pasted__pasted__polyMergeVert57.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert57.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert56.out" "pasted__pasted__pasted__polyTweak57.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak56.out" "pasted__pasted__pasted__polyMergeVert56.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert56.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert55.out" "pasted__pasted__pasted__polyTweak56.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak55.out" "pasted__pasted__pasted__polyMergeVert55.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert55.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert54.out" "pasted__pasted__pasted__polyTweak55.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak54.out" "pasted__pasted__pasted__polyMergeVert54.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert54.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert53.out" "pasted__pasted__pasted__polyTweak54.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak53.out" "pasted__pasted__pasted__polyMergeVert53.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert53.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert52.out" "pasted__pasted__pasted__polyTweak53.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak52.out" "pasted__pasted__pasted__polyMergeVert52.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert52.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert51.out" "pasted__pasted__pasted__polyTweak52.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak51.out" "pasted__pasted__pasted__polyMergeVert51.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert51.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert50.out" "pasted__pasted__pasted__polyTweak51.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak50.out" "pasted__pasted__pasted__polyMergeVert50.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert50.mp"
		;
connectAttr "pasted__pasted__pasted__polyMergeVert49.out" "pasted__pasted__pasted__polyTweak50.ip"
		;
connectAttr "pasted__pasted__pasted__polyTweak49.out" "pasted__pasted__pasted__polyMergeVert49.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.wm" "pasted__pasted__pasted__polyMergeVert49.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube4.out" "pasted__pasted__pasted__polyTweak49.ip"
		;
connectAttr "pasted__pasted__pasted__blinn1SG.msg" "pasted__pasted__pasted__materialInfo1.sg"
		;
connectAttr "pasted__pasted__pasted__blinn2.msg" "pasted__pasted__pasted__materialInfo1.m"
		;
connectAttr "pasted__pasted__pasted__file1.msg" "pasted__pasted__pasted__materialInfo1.t"
		 -na;
connectAttr "pasted__pasted__pasted__blinn2.oc" "pasted__pasted__pasted__blinn1SG.ss"
		;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape2.iog" "pasted__pasted__pasted__blinn1SG.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__file1.oc" "pasted__pasted__pasted__blinn2.c"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.c" "pasted__pasted__pasted__file1.c"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.tf" "pasted__pasted__pasted__file1.tf"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.rf" "pasted__pasted__pasted__file1.rf"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.mu" "pasted__pasted__pasted__file1.mu"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.mv" "pasted__pasted__pasted__file1.mv"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.s" "pasted__pasted__pasted__file1.s"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.wu" "pasted__pasted__pasted__file1.wu"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.wv" "pasted__pasted__pasted__file1.wv"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.re" "pasted__pasted__pasted__file1.re"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.of" "pasted__pasted__pasted__file1.of"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.r" "pasted__pasted__pasted__file1.ro"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.n" "pasted__pasted__pasted__file1.n"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.vt1" "pasted__pasted__pasted__file1.vt1"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.vt2" "pasted__pasted__pasted__file1.vt2"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.vt3" "pasted__pasted__pasted__file1.vt3"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.vc1" "pasted__pasted__pasted__file1.vc1"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.o" "pasted__pasted__pasted__file1.uv"
		;
connectAttr "pasted__pasted__pasted__place2dTexture1.ofs" "pasted__pasted__pasted__file1.fs"
		;
connectAttr "polyMergeVert48.out" "polyNormalPerVertex1.ip";
connectAttr "polyMergeVert96.out" "polyNormalPerVertex2.ip";
connectAttr "pasted__polyMergeVert96.out" "polyNormalPerVertex3.ip";
connectAttr "pasted__pasted__polyMergeVert96.out" "polyNormalPerVertex4.ip";
connectAttr "pasted__pasted__pasted__polyMergeVert96.out" "polyNormalPerVertex5.ip"
		;
connectAttr "polyNormalPerVertex1.out" "polyTriangulate1.ip";
connectAttr "polyNormalPerVertex2.out" "polyTriangulate2.ip";
connectAttr "polyNormalPerVertex3.out" "polyTriangulate3.ip";
connectAttr "polyNormalPerVertex4.out" "polyTriangulate4.ip";
connectAttr "polyNormalPerVertex5.out" "polyTriangulate5.ip";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "pasted__pasted__pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__pasted__file1.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n1\n\"pasted__file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n2\n\"pasted__pasted__file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\n3\n\"pasted__pasted__pasted__file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/metal2.tga\" 1369874194 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of bench.ma
