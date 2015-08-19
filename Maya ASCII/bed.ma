//Maya ASCII 2015 scene
//Name: bed.ma
//Last modified: Wed, Aug 19, 2015 11:19:19 AM
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
	setAttr ".t" -type "double3" 9.4910270147154172 23.881412326953352 6.4503041320316328 ;
	setAttr ".r" -type "double3" -64.538352707291736 1859.3999999995431 6.2481255611239769e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 26.406257827531537;
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
	setAttr ".t" -type "double3" 2.1 0 0 ;
	setAttr ".s" -type "double3" 0.1 0.1 3.25 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -2.1 0 0 ;
	setAttr ".s" -type "double3" 0.1 0.1 3.25 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0 0 -4.75 ;
	setAttr ".s" -type "double3" 1.5 0.1 0.1 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74613769352436066 0.76416298747062683 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0 0 1.978798996808222 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	setAttr ".s" -type "double3" 0.1 0.1 3.25 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25564923882484436 0.75755885243415833 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0 0 2 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 0 0 4 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group4";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group5";
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group6";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "group7";
	setAttr ".t" -type "double3" 0 0 -4 ;
	setAttr ".rp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
	setAttr ".sp" -type "double3" 0 -1.1920928952302567e-008 -1.7881393435392745e-008 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -2.1 -0.61464013185185595 -4.75 ;
	setAttr ".s" -type "double3" 0.1 0.5 0.1 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
createNode transform -n "pasted__pCube6" -p "group8";
	setAttr ".t" -type "double3" 2.1 -0.61464013185185595 -4.75 ;
	setAttr ".s" -type "double3" 0.1 0.5 0.1 ;
createNode mesh -n "pasted__pCubeShape6" -p "|group8|pasted__pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group9";
	setAttr ".t" -type "double3" 2.1 0 4.75 ;
createNode transform -n "pasted__pCube6" -p "group9";
	setAttr ".t" -type "double3" 0 -0.61464013185185595 0 ;
	setAttr ".s" -type "double3" 0.1 0.5 0.1 ;
createNode mesh -n "pasted__pCubeShape6" -p "|group9|pasted__pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group10";
	setAttr ".t" -type "double3" -2.1 0 4.75 ;
createNode transform -n "pasted__pCube6" -p "group10";
	setAttr ".t" -type "double3" 0 -0.61464013185185595 0 ;
	setAttr ".s" -type "double3" 0.1 0.5 0.1 ;
createNode mesh -n "pasted__pCubeShape6" -p "|group10|pasted__pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" 0 0.56938956278338138 1.114940067923808 ;
	setAttr ".s" -type "double3" 1.45 0.3 2.45 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.26885733846575022 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 0 0.5157833773474334 -3.6621508751721645 ;
	setAttr ".s" -type "double3" 1.4 0.275 0.75 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11";
	setAttr ".rp" -type "double3" 0 0 4.75 ;
	setAttr ".sp" -type "double3" 0 0 4.75 ;
createNode transform -n "pasted__pCube4" -p "group11";
	setAttr ".t" -type "double3" 0 0 4.75 ;
	setAttr ".s" -type "double3" 1.5 0.1 0.1 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group11|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12";
	setAttr ".t" -type "double3" 0 0 -0.99579020366019844 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group12";
	setAttr ".t" -type "double3" 0 0 3.9938018115072893 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group12|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group13";
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group13";
	setAttr ".t" -type "double3" 0 0 0.9645125105935719 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group13|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group14";
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group14";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group14|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group15";
	setAttr ".t" -type "double3" 0 0 -4.0070281656578501 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group15";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group15|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group16";
	setAttr ".t" -type "double3" 0 0 -5.0090419978190983 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group16";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group16|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group17";
	setAttr ".t" -type "double3" 0 0 -5.9800281068975867 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group17";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group17|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group18";
	setAttr ".t" -type "double3" 0 0 -6.9804215185593339 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group18";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group18|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group19";
	setAttr ".t" -type "double3" 0 0 -7.9870095430256036 ;
	setAttr ".rp" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".sp" -type "double3" 0 0 3.984339776207559 ;
createNode transform -n "pasted__pCube4" -p "group19";
	setAttr ".t" -type "double3" 0 0 3.984339776207559 ;
	setAttr ".s" -type "double3" 1.3358000162100918 0.1 0.093399128265117176 ;
createNode mesh -n "pasted__pCubeShape4" -p "|group19|pasted__pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
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
createNode polyCube -n "polyCube2";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube6";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube6";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube7";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube8";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube8";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "place2dTexture1";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" -0.033472806 0.023132399
		 -0.011157602 0.023132399 0.011157632 0.023132399 0.033472776 0.023132399 -0.033472806
		 -0.019246751 -0.011157602 -0.019246751 0.011157632 -0.019246751 0.033472776 -0.019246751
		 -0.033472806 -0.061625943 -0.011157602 -0.061625943 0.011157632 -0.061625943 0.033472776
		 -0.061625943 -0.033472806 -0.10400511 -0.011157602 -0.10400511 0.011157632 -0.10400511
		 0.033472776 -0.10400511 -0.033472806 -0.1463843 -0.011157602 -0.1463843 0.011157632
		 -0.1463843 0.033472776 -0.1463843 -0.033472806 -0.18876348 -0.011157602 -0.18876348
		 0.011157632 -0.18876348 0.033472776 -0.18876348 -0.033472806 -0.23114266 -0.011157602
		 -0.23114266 0.011157632 -0.23114266 0.033472776 -0.23114266 -0.033472806 -0.27352178
		 -0.011157602 -0.27352178 0.011157632 -0.27352178 0.033472776 -0.27352178 -0.033472806
		 -0.31590098 -0.011157602 -0.31590098 0.011157632 -0.31590098 0.033472776 -0.31590098
		 -0.033472806 -0.35828018 -0.011157602 -0.35828018 0.011157632 -0.35828018 0.033472776
		 -0.35828018 -0.033472806 -0.40065926 -0.011157602 -0.40065926 0.011157632 -0.40065926
		 0.033472776 -0.40065926 -0.033472806 -0.44303846 -0.011157602 -0.44303846 0.011157632
		 -0.44303846 0.033472776 -0.44303846 -0.033472806 -0.48541757 -0.011157602 -0.48541757
		 0.011157632 -0.48541757 0.033472776 -0.48541757 0.10041845 0.023132399 0.078103244
		 0.023132399 0.05578804 0.023132399 0.10041845 -0.019246751 0.078103244 -0.019246751
		 0.05578804 -0.019246751 0.10041845 -0.061625943 0.078103244 -0.061625943 0.05578804
		 -0.061625943 0.10041845 -0.10400511 0.078103244 -0.10400511 0.05578804 -0.10400511
		 -0.10041842 0.023132399 -0.078103215 0.023132399 -0.05578801 0.023132399 -0.10041842
		 -0.019246751 -0.078103215 -0.019246751 -0.05578801 -0.019246751 -0.10041842 -0.061625943
		 -0.078103215 -0.061625943 -0.05578801 -0.061625943 -0.10041842 -0.10400511 -0.078103215
		 -0.10400511 -0.05578801 -0.10400511;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.22028969 0.7807616 0.16575783
		 0.7807616 0.11122587 0.7807616 0.056693971 0.7807616 0.22028969 0.71172464 0.16575783
		 0.71172464 0.11122587 0.71172464 0.056693971 0.71172464 0.22028969 0.64268768 0.16575783
		 0.64268768 0.11122587 0.64268768 0.056693971 0.64268768 0.22028969 0.57365084 0.16575783
		 0.57365084 0.11122587 0.57365084 0.056693971 0.57365084 0.22028969 0.50461376 0.16575783
		 0.50461376 0.11122587 0.50461376 0.056693971 0.50461376 0.22028969 0.43557689 0.16575783
		 0.43557689 0.11122587 0.43557689 0.056693971 0.43557689 0.22028969 0.3665399 0.16575783
		 0.3665399 0.11122587 0.3665399 0.056693971 0.3665399 0.22028969 0.29750299 0.16575783
		 0.29750299 0.11122587 0.29750299 0.056693971 0.29750299 0.22028969 0.22846609 0.16575783
		 0.22846609 0.11122587 0.22846609 0.056693971 0.22846609 0.22028969 0.15942915 0.16575783
		 0.15942915 0.11122587 0.15942915 0.056693971 0.15942915 0.22028969 0.090392202 0.16575783
		 0.090392202 0.11122587 0.090392202 0.056693971 0.090392202 0.22028969 0.021355316
		 0.16575783 0.021355316 0.11122587 0.021355316 0.056693971 0.021355316 0.22028969
		 -0.047681645 0.16575783 -0.047681645 0.11122587 -0.047681645 0.056693971 -0.047681645
		 -0.10690184 0.7807616 -0.052369967 0.7807616 0.0021619508 0.7807616 -0.10690184 0.71172464
		 -0.052369967 0.71172464 0.0021619508 0.71172464 -0.10690184 0.64268768 -0.052369967
		 0.64268768 0.0021619508 0.64268768 -0.10690184 0.57365084 -0.052369967 0.57365084
		 0.0021619508 0.57365084 0.38388544 0.7807616 0.32935354 0.7807616 0.27482158 0.7807616
		 0.38388544 0.71172464 0.32935354 0.71172464 0.27482158 0.71172464 0.38388544 0.64268768
		 0.32935354 0.64268768 0.27482158 0.64268768 0.38388544 0.57365084 0.32935354 0.57365084
		 0.27482158 0.57365084;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" -0.19693094 0.54175872 -0.22854418
		 0.54175872 -0.26015738 0.54175872 -0.29177055 0.54175872 -0.19693094 0.4943921 -0.22854418
		 0.4943921 -0.26015738 0.4943921 -0.29177055 0.4943921 -0.19693094 0.44702539 -0.22854418
		 0.44702539 -0.26015738 0.44702539 -0.29177055 0.44702539 -0.19693094 0.39965871 -0.22854418
		 0.39965871 -0.26015738 0.39965871 -0.29177055 0.39965871 -0.19693094 0.35229215 -0.22854418
		 0.35229215 -0.26015738 0.35229215 -0.29177055 0.35229215 -0.19693094 0.3049255 -0.22854418
		 0.3049255 -0.26015738 0.3049255 -0.29177055 0.3049255 -0.19693094 0.25755888 -0.22854418
		 0.25755888 -0.26015738 0.25755888 -0.29177055 0.25755888 -0.19693094 0.21019223 -0.22854418
		 0.21019223 -0.26015738 0.21019223 -0.29177055 0.21019223 -0.19693094 0.16282569 -0.22854418
		 0.16282569 -0.26015738 0.16282569 -0.29177055 0.16282569 -0.19693094 0.11545907 -0.22854418
		 0.11545907 -0.26015738 0.11545907 -0.29177055 0.11545907 -0.19693094 0.068092346
		 -0.22854418 0.068092346 -0.26015738 0.068092346 -0.29177055 0.068092346 -0.19693094
		 0.020725787 -0.22854418 0.020725787 -0.26015738 0.020725787 -0.29177055 0.020725787
		 -0.19693094 -0.026640892 -0.22854418 -0.026640892 -0.26015738 -0.026640892 -0.29177055
		 -0.026640892 -0.38661018 0.54175872 -0.35499701 0.54175872 -0.32338378 0.54175872
		 -0.38661018 0.4943921 -0.35499701 0.4943921 -0.32338378 0.4943921 -0.38661018 0.44702539
		 -0.35499701 0.44702539 -0.32338378 0.44702539 -0.38661018 0.39965871 -0.35499701
		 0.39965871 -0.32338378 0.39965871 -0.10209134 0.54175872 -0.13370454 0.54175872 -0.16531774
		 0.54175872 -0.10209134 0.4943921 -0.13370454 0.4943921 -0.16531774 0.4943921 -0.10209134
		 0.44702539 -0.13370454 0.44702539 -0.16531774 0.44702539 -0.10209134 0.39965871 -0.13370454
		 0.39965871 -0.16531774 0.39965871;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyTweakUV -n "polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
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
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 0;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[42]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 -1.000001430511 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 1 "vtx[41:42]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 -1.000001430511 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[7]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr ".tk[39]" -type "float3"  0 -1.000000715256 -8.9406967e-008;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[38]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 -1.000000715256 -5.9604645e-008;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  0 -1.000001430511 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 1 "vtx[39:40]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  0 -1.000001430511 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[7]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[38]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 -1.000000715256 -8.9406967e-008;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 -1.000000715256 -5.9604645e-008;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  -1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  -1 -7.1525574e-007 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[23:24]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  1 -7.1525574e-007 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 1 "vtx[18:19]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  1 -1.4305115e-006 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  1 -1.4305115e-006 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  -1 -1.4305115e-006 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -1 -1.4305115e-006 -1.7881393e-007;
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -7.1525574e-007 -1.000000119209;
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 -7.1525574e-007 -1.000000119209;
createNode polyMergeVert -n "polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -3.5762787e-007 -0.99999994;
createNode polyMergeVert -n "polyMergeVert34";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 -3.5762787e-007 -0.99999994;
createNode polyMergeVert -n "polyMergeVert35";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 -7.1525574e-007 -1.000000119209;
createNode polyMergeVert -n "polyMergeVert36";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 -3.5762787e-007 -0.99999994;
createNode polyMergeVert -n "polyMergeVert37";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  0 -7.1525574e-007 -1.000000119209;
createNode polyMergeVert -n "polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -3.5762787e-007 -0.99999994;
createNode polyMergeVert -n "polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  0 -1.4305115e-006 -1.000000238419;
createNode polyMergeVert -n "polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 -1.4305115e-006 -1.000000238419;
createNode polyMergeVert -n "polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  -1 -7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert42";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert43";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1 -7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert44";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 -1.4305115e-006 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[50]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr ".tk[52]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert49";
	setAttr ".ics" -type "componentList" 1 "vtx[50:51]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  0 -0.99999857 -2.9802322e-008;
createNode polyMergeVert -n "polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 -0.99999928 -2.9802322e-008;
createNode polyMergeVert -n "polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[39]" -type "float3"  0 7.1525574e-007 1;
createNode polyMergeVert -n "polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert56";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert57";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert58";
	setAttr ".ics" -type "componentList" 1 "vtx[21:22]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 1.4305115e-006 -1;
createNode polyMergeVert -n "polyMergeVert59";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert60";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert61";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert62";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 1.4305115e-006 1;
createNode polyMergeVert -n "polyMergeVert63";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[7]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert64";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert65";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert66";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert67";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert68";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert69";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert70";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert71";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert72";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert73";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak73";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert74";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak74";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 7.1525574e-007 0;
createNode polyMergeVert -n "polyMergeVert75";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak75";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -0.99999857 -2.9802322e-008;
createNode polyMergeVert -n "polyMergeVert76";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak76";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 -1.99999857 -2.9802322e-008;
createNode polyMergeVert -n "polyMergeVert77";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak77";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert78";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak78";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert79";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak79";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert80";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak80";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 -0.99999928 0;
createNode polyMergeVert -n "polyMergeVert81";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak81";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert82";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak82";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 3.5762787e-007 1;
createNode polyMergeVert -n "polyMergeVert83";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak83";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert84";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak84";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  1 1.4305115e-006 0;
createNode polyMergeVert -n "polyMergeVert85";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[7]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak85";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 1.000001430511 0;
createNode polyMergeVert -n "polyMergeVert86";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak86";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert87";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak87";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 -0.99999857 0;
createNode polyMergeVert -n "polyMergeVert88";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak88";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[9:10]" -type "float3"  1 1.4305115e-006 0 0 0 0;
createNode polyMergeVert -n "polyMergeVert89";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak89";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  1 7.1525574e-007 -1;
createNode polyMergeVert -n "polyMergeVert90";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak90";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  -1 1.4305115e-006 -2.9802322e-008;
createNode polyMergeVert -n "polyMergeVert91";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.45 0 0 0 0 0.29999999999999999 0 0 0 0 2.4500000000000002 0
		 0 0.56938956278338138 1.114940067923808 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak91";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  2 7.1525574e-007 1;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "vtx[8]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "vtx[8]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "vtx[8]";
createNode polyMergeVert -n "polyMergeVert92";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak92";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert93";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak93";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  -1 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert94";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak94";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -1.000001430511 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert95";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 1.3999999999999999 0 0 0 0 0.27500000000000002 0 0 0 0 0.75 0
		 0 0.5157833773474334 -3.6621508751721645 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak95";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 -1.000000715256 -1.1920929e-007;
createNode polyMergeVert -n "polyMergeVert96";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak96";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert97";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak97";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert98";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak98";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert99";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak99";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert100";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[42]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak100";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert101";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak101";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert102";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[45]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak102";
	setAttr ".uopa" yes;
	setAttr ".tk[45]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert103";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak103";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert104";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak104";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert105";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak105";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert106";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak106";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert107";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak107";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert108";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak108";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert109";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak109";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert110";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak110";
	setAttr ".uopa" yes;
	setAttr ".tk[27]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert111";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak111";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert112";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak112";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert113";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak113";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert114";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak114";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert115";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak115";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert116";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak116";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert117";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak117";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert118";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak118";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert119";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak119";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert120";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[29]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak120";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert121";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak121";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert122";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak122";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert123";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak123";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert124";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak124";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert125";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak125";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert126";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak126";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert127";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak127";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert128";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak128";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert129";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak129";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert130";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak130";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert131";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak131";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert132";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak132";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert133";
	setAttr ".ics" -type "componentList" 1 "vtx[16:17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak133";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert134";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak134";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert135";
	setAttr ".ics" -type "componentList" 1 "vtx[15:16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak135";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert136";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak136";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert137";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak137";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert138";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak138";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert139";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak139";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert140";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak140";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert141";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak141";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert142";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak142";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert143";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak143";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert144";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak144";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert145";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak145";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert146";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak146";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert147";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak147";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert148";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak148";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert149";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[46]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak149";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert150";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak150";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert151";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak151";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert152";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak152";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert153";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak153";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert154";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[41]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak154";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert155";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak155";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert156";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak156";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert157";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak157";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert158";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak158";
	setAttr ".uopa" yes;
	setAttr ".tk[27]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert159";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak159";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert160";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak160";
	setAttr ".uopa" yes;
	setAttr ".tk[27]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert161";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak161";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert162";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak162";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert163";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak163";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert164";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak164";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert165";
	setAttr ".ics" -type "componentList" 1 "vtx[21:22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak165";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert166";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak166";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert167";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak167";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert168";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak168";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert169";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak169";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert170";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak170";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert171";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak171";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert172";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak172";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert173";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak173";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert174";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak174";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert175";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak175";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert176";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak176";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert177";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak177";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert178";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak178";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert179";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak179";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert180";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak180";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert181";
	setAttr ".ics" -type "componentList" 1 "vtx[16:17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak181";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert182";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak182";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert183";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak183";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert184";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak184";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  -2 0 0;
createNode polyMergeVert -n "polyMergeVert185";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak185";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -2 0 0;
createNode polyMergeVert -n "polyMergeVert186";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak186";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -2 0 0;
createNode polyMergeVert -n "polyMergeVert187";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak187";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  -2 0 0;
createNode polyMergeVert -n "polyMergeVert188";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak188";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert189";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak189";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert190";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak190";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert191";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak191";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert192";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[49]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak192";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert193";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[48]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak193";
	setAttr ".uopa" yes;
	setAttr ".tk[48]" -type "float3"  0 2.682209e-007 2;
createNode polyMergeVert -n "polyMergeVert194";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak194";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert195";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak195";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  0 2.3841858e-007 2;
createNode polyMergeVert -n "polyMergeVert196";
	setAttr ".ics" -type "componentList" 1 "vtx[46:47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak196";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert197";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[46]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak197";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert198";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak198";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert199";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak199";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert200";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak200";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 1.000000119209 0;
createNode polyMergeVert -n "polyMergeVert201";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak201";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 1.000000238419 0;
createNode polyMergeVert -n "polyMergeVert202";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak202";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert203";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[34]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak203";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert204";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[39]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak204";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert205";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak205";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert206";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak206";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert207";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[35]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak207";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 2.3841858e-007 2;
createNode polyMergeVert -n "polyMergeVert208";
	setAttr ".ics" -type "componentList" 1 "vtx[34:35]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak208";
	setAttr ".uopa" yes;
	setAttr ".tk[34]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert209";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[34]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak209";
	setAttr ".uopa" yes;
	setAttr ".tk[34]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert210";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak210";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert211";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak211";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert212";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak212";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert213";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak213";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 1.1920929e-007 0;
createNode polyMergeVert -n "polyMergeVert214";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak214";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert215";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak215";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 1.4901161e-007 1;
createNode polyMergeVert -n "polyMergeVert216";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak216";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert217";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak217";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert218";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak218";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert219";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak219";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert220";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak220";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert221";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak221";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 1.000000238419 0;
createNode polyMergeVert -n "polyMergeVert222";
	setAttr ".ics" -type "componentList" 1 "vtx[17:18]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak222";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  -1 1.1920929e-007 0;
createNode polyMergeVert -n "polyMergeVert223";
	setAttr ".ics" -type "componentList" 1 "vtx[17:18]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak223";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  2 1.1920929e-007 0;
createNode polyMergeVert -n "polyMergeVert224";
	setAttr ".ics" -type "componentList" 1 "vtx[21:22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak224";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  1 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert225";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak225";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  -1 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert226";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[18]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak226";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 1.000000119209 0;
createNode polyMergeVert -n "polyMergeVert227";
	setAttr ".ics" -type "componentList" 1 "vtx[18:19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak227";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert228";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak228";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -0.99999988 0;
createNode polyMergeVert -n "polyMergeVert229";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak229";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 1.000000119209 0;
createNode polyMergeVert -n "polyMergeVert230";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak230";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  -1 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert231";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak231";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 -0.99999976 0;
createNode polyMergeVert -n "polyMergeVert232";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak232";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1 1.000000238419 0;
createNode polyMergeVert -n "polyMergeVert233";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak233";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  1 1.000000238419 0;
createNode polyMergeVert -n "polyMergeVert234";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak234";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert235";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak235";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert236";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak236";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert237";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak237";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 2.3841858e-007 2;
createNode polyMergeVert -n "polyMergeVert238";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak238";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 -3 0;
createNode polyMergeVert -n "polyMergeVert239";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak239";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1 1.1920929e-007 0;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[2:3]";
createNode polyMergeVert -n "polyMergeVert240";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak240";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert241";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak241";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert242";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak242";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert243";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak243";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert244";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak244";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert245";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak245";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert246";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak246";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert247";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak247";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert248";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak248";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert249";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[42]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak249";
	setAttr ".uopa" yes;
	setAttr ".tk[42]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert250";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[41]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak250";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert251";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[40]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak251";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert252";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak252";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert253";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak253";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert254";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak254";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert255";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak255";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert256";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak256";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert257";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak257";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert258";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak258";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert259";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak259";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert260";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak260";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert261";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak261";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert262";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak262";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert263";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak263";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert264";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak264";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert265";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak265";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert266";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak266";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert267";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak267";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  -1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert268";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak268";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert269";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak269";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert270";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak270";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert271";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak271";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert272";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak272";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert273";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak273";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert274";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak274";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert275";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[18]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak275";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert276";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak276";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert277";
	setAttr ".ics" -type "componentList" 1 "vtx[15:16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak277";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert278";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak278";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert279";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak279";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert280";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak280";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert281";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak281";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert282";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak282";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert283";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak283";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert284";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak284";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert285";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak285";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert286";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak286";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert287";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 -4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak287";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert288";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak288";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert289";
	setAttr ".ics" -type "componentList" 1 "vtx[28:29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak289";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert290";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak290";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert291";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak291";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert292";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak292";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert293";
	setAttr ".ics" -type "componentList" 1 "vtx[33:34]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak293";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert294";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak294";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert295";
	setAttr ".ics" -type "componentList" 1 "vtx[27:28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak295";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert296";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak296";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert297";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak297";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert298";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak298";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert299";
	setAttr ".ics" -type "componentList" 1 "vtx[29:30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak299";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert300";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak300";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert301";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak301";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert302";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak302";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert303";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak303";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert304";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak304";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert305";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak305";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert306";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak306";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert307";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak307";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert308";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak308";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert309";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak309";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert310";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak310";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert311";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak311";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert312";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak312";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert313";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak313";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert314";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak314";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert315";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak315";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert316";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak316";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert317";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak317";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert318";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak318";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert319";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak319";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert320";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[22]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak320";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert321";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak321";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert322";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak322";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert323";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak323";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert324";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak324";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert325";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak325";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert326";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak326";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert327";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak327";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert328";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak328";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert329";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak329";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert330";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak330";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert331";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak331";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert332";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak332";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert333";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak333";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert334";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak334";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert335";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 -2.1000000000000001 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak335";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert336";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak336";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert337";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak337";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert338";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak338";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert339";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[46]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak339";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert340";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak340";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert341";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[46]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak341";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert342";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak342";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert343";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[26]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak343";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert344";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak344";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert345";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak345";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert346";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak346";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert347";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak347";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert348";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak348";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert349";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak349";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert350";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak350";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert351";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak351";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert352";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak352";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert353";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[38]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak353";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert354";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak354";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert355";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak355";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert356";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak356";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert357";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak357";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert358";
	setAttr ".ics" -type "componentList" 1 "vtx[18:19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak358";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert359";
	setAttr ".ics" -type "componentList" 1 "vtx[19:20]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak359";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert360";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak360";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert361";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak361";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert362";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak362";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert363";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak363";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert364";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak364";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert365";
	setAttr ".ics" -type "componentList" 1 "vtx[15:16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak365";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert366";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak366";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert367";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak367";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert368";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak368";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert369";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak369";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert370";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak370";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1.1920929e-007 1;
createNode polyMergeVert -n "polyMergeVert371";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak371";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1.1920929e-007 -1;
createNode polyMergeVert -n "polyMergeVert372";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak372";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert373";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak373";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert374";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak374";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert375";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak375";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert376";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak376";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  -1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert377";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak377";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert378";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak378";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert379";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak379";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  -1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert380";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak380";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert381";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak381";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert382";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak382";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert383";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak383";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert384";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[52]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak384";
	setAttr ".uopa" yes;
	setAttr ".tk[52]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert385";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[52]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak385";
	setAttr ".uopa" yes;
	setAttr ".tk[52]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert386";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak386";
	setAttr ".uopa" yes;
	setAttr ".tk[40]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert387";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak387";
	setAttr ".uopa" yes;
	setAttr ".tk[43]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert388";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak388";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert389";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[50]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak389";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert390";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak390";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert391";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak391";
	setAttr ".uopa" yes;
	setAttr ".tk[16]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert392";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak392";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert393";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak393";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert394";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak394";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert395";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak395";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert396";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak396";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert397";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak397";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert398";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak398";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert399";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak399";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert400";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak400";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 2.682209e-007 1;
createNode polyMergeVert -n "polyMergeVert401";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak401";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 2.682209e-007 -1;
createNode polyMergeVert -n "polyMergeVert402";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[37]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak402";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert403";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[36]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak403";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert404";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[35]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak404";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert405";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak405";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert406";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak406";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert407";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak407";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert408";
	setAttr ".ics" -type "componentList" 1 "vtx[18:19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak408";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert409";
	setAttr ".ics" -type "componentList" 1 "vtx[16:17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak409";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert410";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak410";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert411";
	setAttr ".ics" -type "componentList" 1 "vtx[18:19]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak411";
	setAttr ".uopa" yes;
	setAttr ".tk[19]" -type "float3"  -1 2.682209e-007 0;
createNode polyMergeVert -n "polyMergeVert412";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak412";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert413";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak413";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert414";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak414";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert415";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak415";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  -1 2.3841858e-007 0;
createNode polyMergeVert -n "polyMergeVert416";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak416";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert417";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak417";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  -1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert418";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak418";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert419";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak419";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert420";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak420";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert421";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak421";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert422";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak422";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert423";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak423";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert424";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak424";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert425";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[14]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak425";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert426";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak426";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  -1 2.3841858e-007 -1;
createNode polyMergeVert -n "polyMergeVert427";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak427";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  -1 2.3841858e-007 1;
createNode polyMergeVert -n "polyMergeVert428";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak428";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert429";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak429";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert430";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak430";
	setAttr ".uopa" yes;
	setAttr ".tk[3]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert431";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.5 0 0 0 0 0.10000000000000001 0
		 -2.1000000000000001 -0.61464013185185595 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak431";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -0.99999994 0;
createNode polyMergeVert -n "polyMergeVert432";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak432";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert433";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak433";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert434";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak434";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert435";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak435";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert436";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak436";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert437";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak437";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert438";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak438";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert439";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak439";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert440";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak440";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert441";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak441";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert442";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak442";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert443";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak443";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert444";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak444";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert445";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak445";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert446";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak446";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert447";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak447";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert448";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak448";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert449";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak449";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert450";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak450";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert451";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak451";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert452";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak452";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert453";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak453";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert454";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak454";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert455";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak455";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert456";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak456";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert457";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak457";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert458";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak458";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert459";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak459";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert460";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak460";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert461";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak461";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert462";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak462";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert463";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak463";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert464";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak464";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert465";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak465";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert466";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak466";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert467";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak467";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert468";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak468";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert469";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak469";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert470";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak470";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert471";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak471";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert472";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak472";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert473";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak473";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert474";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak474";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert475";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak475";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert476";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak476";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert477";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak477";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert478";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak478";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert479";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak479";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert480";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak480";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert481";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak481";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert482";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak482";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert483";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak483";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert484";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak484";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert485";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak485";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert486";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak486";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert487";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak487";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert488";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak488";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert489";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak489";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2:3]" -type "float3"  0 -1 0 0 0 0;
createNode polyMergeVert -n "polyMergeVert490";
	setAttr ".ics" -type "componentList" 1 "vtx[1:2]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak490";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert491";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak491";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert492";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak492";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert493";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak493";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert494";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[41]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak494";
	setAttr ".uopa" yes;
	setAttr ".tk[41]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert495";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[39]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak495";
	setAttr ".uopa" yes;
	setAttr ".tk[39]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert496";
	setAttr ".ics" -type "componentList" 1 "vtx[30:31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak496";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert497";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak497";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert498";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[35]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak498";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert499";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak499";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert500";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak500";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert501";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak501";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert502";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[31]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak502";
	setAttr ".uopa" yes;
	setAttr ".tk[31]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert503";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[30]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak503";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert504";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak504";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert505";
	setAttr ".ics" -type "componentList" 1 "vtx[24:25]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak505";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert506";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[29]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak506";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert507";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[28]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak507";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert508";
	setAttr ".ics" -type "componentList" 1 "vtx[22:23]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak508";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert509";
	setAttr ".ics" -type "componentList" 1 "vtx[20:21]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak509";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert510";
	setAttr ".ics" -type "componentList" 1 "vtx[16:17]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak510";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert511";
	setAttr ".ics" -type "componentList" 1 "vtx[17:18]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak511";
	setAttr ".uopa" yes;
	setAttr ".tk[17]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert512";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak512";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert513";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak513";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  1 0 0;
createNode polyMergeVert -n "polyMergeVert514";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak514";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert515";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak515";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "polyMergeVert516";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak516";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert517";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak517";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 1 0;
createNode polyMergeVert -n "polyMergeVert518";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak518";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert519";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak519";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "polyMergeVert520";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak520";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert521";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak521";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert522";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak522";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert523";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak523";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "polyMergeVert524";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak524";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert525";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak525";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert526";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[9]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak526";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "polyMergeVert527";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 3.25 0 0 0 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak527";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert479";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak479";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert478";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak478";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert477";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak477";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert476";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak476";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert475";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak475";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert474";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak474";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert473";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak473";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert472";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak472";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert471";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak471";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert470";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak470";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert469";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak469";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert468";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak468";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert467";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak467";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert466";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak466";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert465";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak465";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert464";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak464";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert463";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak463";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert462";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak462";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert461";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak461";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert460";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak460";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert459";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak459";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert458";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak458";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert457";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak457";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert456";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak456";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert455";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak455";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert454";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak454";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert453";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak453";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert452";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak452";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert451";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak451";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert450";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak450";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert449";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak449";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert448";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak448";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert447";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak447";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert446";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak446";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert445";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak445";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert444";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak444";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert443";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak443";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert442";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak442";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert441";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak441";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert440";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak440";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert439";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak439";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert438";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak438";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert437";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak437";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert436";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak436";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert435";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak435";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert434";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak434";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert433";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak433";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert432";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak432";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube4";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo2";
createNode shadingEngine -n "pasted__lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert3";
createNode file -n "pasted__file1";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture1";
createNode polyMergeVert -n "pasted__polyMergeVert527";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak527";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert526";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak526";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert525";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak525";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert524";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak524";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert523";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak523";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert522";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak522";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert521";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak521";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert520";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak520";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert519";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak519";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert518";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak518";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert517";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak517";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert516";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak516";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert515";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak515";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert514";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak514";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert513";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak513";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert512";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak512";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert511";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak511";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert510";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak510";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert509";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak509";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert508";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak508";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert507";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak507";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert506";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak506";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert505";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak505";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert504";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak504";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert503";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak503";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert502";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak502";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert501";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak501";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert500";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak500";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert499";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak499";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert498";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak498";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert497";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak497";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert496";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak496";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert495";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak495";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert494";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak494";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert493";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak493";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert492";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak492";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert491";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak491";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert490";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak490";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert489";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak489";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert488";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak488";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert487";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak487";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert486";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak486";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert485";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak485";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert484";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak484";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert483";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak483";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert482";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak482";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert481";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak481";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert480";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak480";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube9";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo3";
createNode shadingEngine -n "pasted__lambert3SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert4";
createNode file -n "pasted__file2";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture2";
createNode polyMergeVert -n "pasted__polyMergeVert575";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak575";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert574";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak574";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert573";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak573";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert572";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak572";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert571";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak571";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert570";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak570";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert569";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak569";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert568";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak568";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert567";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak567";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert566";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak566";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert565";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak565";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert564";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak564";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert563";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak563";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert562";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak562";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert561";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak561";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert560";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak560";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert559";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak559";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert558";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak558";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert557";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak557";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert556";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak556";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert555";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak555";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert554";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak554";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert553";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak553";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert552";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak552";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert551";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak551";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert550";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak550";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert549";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak549";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert548";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak548";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert547";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak547";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert546";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak546";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert545";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak545";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert544";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak544";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert543";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak543";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert542";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak542";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert541";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak541";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert540";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak540";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert539";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak539";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert538";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak538";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert537";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak537";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert536";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak536";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert535";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak535";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert534";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak534";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert533";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak533";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert532";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak532";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert531";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak531";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert530";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak530";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert529";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak529";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert528";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak528";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube10";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo4";
createNode shadingEngine -n "pasted__lambert3SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert5";
createNode file -n "pasted__file3";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture3";
createNode polyMergeVert -n "pasted__polyMergeVert623";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak623";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert622";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak622";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert621";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak621";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert620";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak620";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert619";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak619";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert618";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak618";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert617";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak617";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert616";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak616";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert615";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak615";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert614";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak614";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert613";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak613";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert612";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak612";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert611";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak611";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert610";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak610";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert609";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak609";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert608";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak608";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert607";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak607";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert606";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak606";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert605";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak605";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert604";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak604";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert603";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak603";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert602";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak602";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert601";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak601";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert600";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak600";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert599";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak599";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert598";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak598";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert597";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak597";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert596";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak596";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert595";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak595";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert594";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak594";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert593";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak593";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert592";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak592";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert591";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak591";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert590";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak590";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert589";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak589";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert588";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak588";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert587";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak587";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert586";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak586";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert585";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak585";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert584";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak584";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert583";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak583";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert582";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak582";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert581";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak581";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert580";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak580";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert579";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak579";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert578";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak578";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert577";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak577";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert576";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak576";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube11";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo5";
createNode shadingEngine -n "pasted__lambert3SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert6";
createNode file -n "pasted__file4";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture4";
createNode polyMergeVert -n "pasted__polyMergeVert671";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak671";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert670";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak670";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert669";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak669";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert668";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak668";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert667";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak667";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert666";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak666";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert665";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak665";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert664";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak664";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert663";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak663";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert662";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak662";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert661";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak661";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert660";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak660";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert659";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak659";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert658";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak658";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert657";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak657";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert656";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak656";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert655";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak655";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert654";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak654";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert653";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak653";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert652";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak652";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert651";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak651";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert650";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak650";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert649";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak649";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert648";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak648";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert647";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak647";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert646";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak646";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert645";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak645";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert644";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak644";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert643";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak643";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert642";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak642";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert641";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak641";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert640";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak640";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert639";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak639";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert638";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak638";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert637";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak637";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert636";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak636";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert635";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak635";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert634";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak634";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert633";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak633";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert632";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak632";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert631";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak631";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert630";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak630";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert629";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak629";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert628";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak628";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert627";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak627";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert626";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak626";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert625";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak625";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert624";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak624";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube12";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo6";
createNode shadingEngine -n "pasted__lambert3SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert7";
createNode file -n "pasted__file5";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture5";
createNode polyMergeVert -n "pasted__polyMergeVert719";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak719";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert718";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak718";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert717";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak717";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert716";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak716";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert715";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak715";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert714";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak714";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert713";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak713";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert712";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak712";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert711";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak711";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert710";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak710";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert709";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak709";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert708";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak708";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert707";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak707";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert706";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak706";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert705";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak705";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert704";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak704";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert703";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak703";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert702";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak702";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert701";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak701";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert700";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak700";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert699";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak699";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert698";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak698";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert697";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak697";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert696";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak696";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert695";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak695";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert694";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak694";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert693";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak693";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert692";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak692";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert691";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak691";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert690";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak690";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert689";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak689";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert688";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak688";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert687";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak687";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert686";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak686";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert685";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak685";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert684";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak684";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert683";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak683";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert682";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak682";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert681";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak681";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert680";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak680";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert679";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak679";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert678";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak678";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert677";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak677";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert676";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak676";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert675";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak675";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert674";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak674";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert673";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak673";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert672";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak672";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube13";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo7";
createNode shadingEngine -n "pasted__lambert3SG5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert8";
createNode file -n "pasted__file6";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture6";
createNode polyMergeVert -n "pasted__polyMergeVert767";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak767";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert766";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak766";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert765";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak765";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert764";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak764";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert763";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak763";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert762";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak762";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert761";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak761";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert760";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak760";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert759";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak759";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert758";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak758";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert757";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak757";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert756";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak756";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert755";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak755";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert754";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak754";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert753";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak753";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert752";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak752";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert751";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak751";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert750";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak750";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert749";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak749";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert748";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak748";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert747";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak747";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert746";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak746";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert745";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak745";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert744";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak744";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert743";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak743";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert742";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak742";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert741";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak741";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert740";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak740";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert739";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak739";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert738";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak738";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert737";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak737";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert736";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak736";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert735";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak735";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert734";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak734";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert733";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak733";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert732";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak732";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert731";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak731";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert730";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak730";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert729";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak729";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert728";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak728";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert727";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak727";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert726";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak726";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert725";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak725";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert724";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak724";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert723";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak723";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert722";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak722";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert721";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak721";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert720";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak720";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV21";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube14";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo8";
createNode shadingEngine -n "pasted__lambert3SG6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert9";
createNode file -n "pasted__file7";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture7";
createNode polyMergeVert -n "pasted__polyMergeVert815";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak815";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert814";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak814";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert813";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak813";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert812";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak812";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert811";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak811";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert810";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak810";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert809";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak809";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert808";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak808";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert807";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak807";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert806";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak806";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert805";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak805";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert804";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak804";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert803";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak803";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert802";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak802";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert801";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak801";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert800";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak800";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert799";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak799";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert798";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak798";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert797";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak797";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert796";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak796";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert795";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak795";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert794";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak794";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert793";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak793";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert792";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak792";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert791";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak791";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert790";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak790";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert789";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak789";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert788";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak788";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert787";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak787";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert786";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak786";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert785";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak785";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert784";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak784";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert783";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak783";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert782";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak782";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert781";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak781";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert780";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak780";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert779";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak779";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert778";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak778";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert777";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak777";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert776";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak776";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert775";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak775";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert774";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak774";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert773";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak773";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert772";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak772";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert771";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak771";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert770";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak770";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert769";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak769";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert768";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak768";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV22";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube15";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo9";
createNode shadingEngine -n "pasted__lambert3SG7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert10";
createNode file -n "pasted__file8";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture8";
createNode polyMergeVert -n "pasted__polyMergeVert863";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak863";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert862";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak862";
	setAttr ".uopa" yes;
	setAttr ".tk[1]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert861";
	setAttr ".ics" -type "componentList" 1 "vtx[5:6]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak861";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert860";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak860";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  -1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert859";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak859";
	setAttr ".uopa" yes;
	setAttr ".tk[11]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert858";
	setAttr ".ics" -type "componentList" 1 "vtx[8:9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak858";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert857";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak857";
	setAttr ".uopa" yes;
	setAttr ".tk[2]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert856";
	setAttr ".ics" -type "componentList" 1 "vtx[6:7]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak856";
	setAttr ".uopa" yes;
	setAttr ".tk[6]" -type "float3"  1 0 0;
createNode polyMergeVert -n "pasted__polyMergeVert855";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak855";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert854";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak854";
	setAttr ".uopa" yes;
	setAttr ".tk[15]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert853";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak853";
	setAttr ".uopa" yes;
	setAttr ".tk[14]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert852";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak852";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert851";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak851";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert850";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak850";
	setAttr ".uopa" yes;
	setAttr ".tk[21]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert849";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak849";
	setAttr ".uopa" yes;
	setAttr ".tk[8]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert848";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak848";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert847";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak847";
	setAttr ".uopa" yes;
	setAttr ".tk[24]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert846";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak846";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert845";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak845";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert844";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak844";
	setAttr ".uopa" yes;
	setAttr ".tk[12]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert843";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak843";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert842";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak842";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert841";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak841";
	setAttr ".uopa" yes;
	setAttr ".tk[30]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert840";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[28]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak840";
	setAttr ".uopa" yes;
	setAttr ".tk[28]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert839";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak839";
	setAttr ".uopa" yes;
	setAttr ".tk[23]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert838";
	setAttr ".ics" -type "componentList" 1 "vtx[32:33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak838";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert837";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak837";
	setAttr ".uopa" yes;
	setAttr ".tk[33]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert836";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak836";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert835";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak835";
	setAttr ".uopa" yes;
	setAttr ".tk[36]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert834";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak834";
	setAttr ".uopa" yes;
	setAttr ".tk[37]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert833";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak833";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert832";
	setAttr ".ics" -type "componentList" 1 "vtx[3:4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak832";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert831";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[17]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak831";
	setAttr ".uopa" yes;
	setAttr ".tk[13]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert830";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[10]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak830";
	setAttr ".uopa" yes;
	setAttr ".tk[10]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert829";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[35]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak829";
	setAttr ".uopa" yes;
	setAttr ".tk[35]" -type "float3"  0 0 1;
createNode polyMergeVert -n "pasted__polyMergeVert828";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak828";
	setAttr ".uopa" yes;
	setAttr ".tk[32]" -type "float3"  0 0 -1;
createNode polyMergeVert -n "pasted__polyMergeVert827";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak827";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert826";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak826";
	setAttr ".uopa" yes;
	setAttr ".tk[44]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert825";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[46]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak825";
	setAttr ".uopa" yes;
	setAttr ".tk[46]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert824";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[47]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak824";
	setAttr ".uopa" yes;
	setAttr ".tk[47]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert823";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak823";
	setAttr ".uopa" yes;
	setAttr ".tk[22]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert822";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak822";
	setAttr ".uopa" yes;
	setAttr ".tk[26]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert821";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak821";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert820";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[4]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak820";
	setAttr ".uopa" yes;
	setAttr ".tk[4]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert819";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak819";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert818";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[12]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak818";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyMergeVert -n "pasted__polyMergeVert817";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak817";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0 -1 0;
createNode polyMergeVert -n "pasted__polyMergeVert816";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1.5 0 0 0 0 0.10000000000000001 0 0 0 0 0.10000000000000001 0
		 0 0 4.75 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "pasted__polyTweak816";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 1 0;
createNode polyTweakUV -n "pasted__polyTweakUV23";
	setAttr ".uopa" yes;
	setAttr -s 76 ".uvtk[0:75]" -type "float2" 0.32995468 0.56541824 0.29302716
		 0.56541824 0.25609976 0.56541824 0.21917236 0.56541824 0.32995468 0.51520902 0.29302716
		 0.51520902 0.25609976 0.51520902 0.21917236 0.51520902 0.32995468 0.46499977 0.29302716
		 0.46499977 0.25609976 0.46499977 0.21917236 0.46499977 0.32995468 0.4147906 0.29302716
		 0.4147906 0.25609976 0.4147906 0.21917236 0.4147906 0.32995468 0.36458135 0.29302716
		 0.36458135 0.25609976 0.36458135 0.21917236 0.36458135 0.32995468 0.31437215 0.29302716
		 0.31437215 0.25609976 0.31437215 0.21917236 0.31437215 0.32995468 0.26416293 0.29302716
		 0.26416293 0.25609976 0.26416293 0.21917236 0.26416293 0.32995468 0.21395376 0.29302716
		 0.21395376 0.25609976 0.21395376 0.21917236 0.21395376 0.32995468 0.1637446 0.29302716
		 0.1637446 0.25609976 0.1637446 0.21917236 0.1637446 0.32995468 0.11353537 0.29302716
		 0.11353537 0.25609976 0.11353537 0.21917236 0.11353537 0.32995468 0.063326225 0.29302716
		 0.063326225 0.25609976 0.063326225 0.21917236 0.063326225 0.32995468 0.013117 0.29302716
		 0.013117 0.25609976 0.013117 0.21917236 0.013117 0.32995468 -0.037092164 0.29302716
		 -0.037092164 0.25609976 -0.037092164 0.21917236 -0.037092164 0.10838997 0.56541824
		 0.14531738 0.56541824 0.18224488 0.56541824 0.10838997 0.51520902 0.14531738 0.51520902
		 0.18224488 0.51520902 0.10838997 0.46499977 0.14531738 0.46499977 0.18224488 0.46499977
		 0.10838997 0.4147906 0.14531738 0.4147906 0.18224488 0.4147906 0.44073707 0.56541824
		 0.40380964 0.56541824 0.36688218 0.56541824 0.44073707 0.51520902 0.40380964 0.51520902
		 0.36688218 0.51520902 0.44073707 0.46499977 0.40380964 0.46499977 0.36688218 0.46499977
		 0.44073707 0.4147906 0.40380964 0.4147906 0.36688218 0.4147906;
createNode polyCube -n "pasted__polyCube16";
	setAttr ".w" 3;
	setAttr ".h" 3;
	setAttr ".d" 3;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo10";
createNode shadingEngine -n "pasted__lambert3SG8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__lambert11";
createNode file -n "pasted__file9";
	setAttr ".ftn" -type "string" "C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga";
createNode place2dTexture -n "pasted__place2dTexture9";
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" -1.9868216e-008 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" -1.9868216e-008 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" -1.9868216e-008 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" -1.9868216e-008 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex10";
	setAttr ".uopa" yes;
	setAttr -s 9 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 5.2981907e-008 0 1 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" 5.9604645e-008 -1 0 ;
	setAttr ".vn[0].vfnl[7].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 5.2981907e-008 0 1 ;
	setAttr ".vn[1].vfnl[5].fnxy" -type "float3" 5.9604645e-008 -1 0 ;
	setAttr ".vn[1].vfnl[6].fnxy" -type "float3" 0.99999994 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 5.2981907e-008 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 5.2981907e-008 ;
	setAttr ".vn[2].vfnl[7].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 5.2981907e-008 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 5.2981907e-008 ;
	setAttr ".vn[3].vfnl[6].fnxy" -type "float3" 0.99999994 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 5.2981907e-008 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[7].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 5.2981907e-008 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[6].fnxy" -type "float3" 0.99999994 0 0 ;
	setAttr -s 5 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[4].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" 5.9604645e-008 -1 0 ;
	setAttr ".vn[6].vfnl[7].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 5 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[7].vfnl[5].fnxy" -type "float3" 5.9604645e-008 -1 0 ;
	setAttr ".vn[7].vfnl[6].fnxy" -type "float3" 0.99999994 0 0 ;
	setAttr -s 2 ".vn[8].vfnl";
	setAttr ".vn[8].vfnl[3].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[8].vfnl[4].fnxy" -type "float3" 0 0 1 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 -1.5894572e-007 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 -1.5894572e-007 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 -1.5894572e-007 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 -1.5894572e-007 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex13";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex15";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex17";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[7].vfnl[4].fnxy" -type "float3" 1 0 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex20";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vn";
	setAttr -s 3 ".vn[0].vfnl";
	setAttr ".vn[0].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[0].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[0].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[1].vfnl";
	setAttr ".vn[1].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[1].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[1].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[2].vfnl";
	setAttr ".vn[2].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[2].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[2].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[3].vfnl";
	setAttr ".vn[3].vfnl[0].fnxy" -type "float3" 0 0 1 ;
	setAttr ".vn[3].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[3].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[4].vfnl";
	setAttr ".vn[4].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[4].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[4].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[5].vfnl";
	setAttr ".vn[5].vfnl[1].fnxy" -type "float3" 0 1 0 ;
	setAttr ".vn[5].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[5].vfnl[4].fnxy" -type "float3" 1 0 0 ;
	setAttr -s 3 ".vn[6].vfnl";
	setAttr ".vn[6].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[6].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
	setAttr ".vn[6].vfnl[5].fnxy" -type "float3" -1 0 0 ;
	setAttr -s 3 ".vn[7].vfnl";
	setAttr ".vn[7].vfnl[2].fnxy" -type "float3" 0 0 -1 ;
	setAttr ".vn[7].vfnl[3].fnxy" -type "float3" 0 -1 0 ;
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
createNode polyTriangulate -n "polyTriangulate13";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate14";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate15";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate16";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate17";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate18";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate19";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate20";
	setAttr ".ics" -type "componentList" 1 "f[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 13 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 10 ".tx";
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
connectAttr "polyTweakUV16.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polyTriangulate2.out" "pCubeShape2.i";
connectAttr "polyTweakUV18.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyTriangulate3.out" "pCubeShape3.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
connectAttr "polyTriangulate4.out" "pCubeShape4.i";
connectAttr "polyTweakUV15.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "polyTriangulate5.out" "pCubeShape5.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape5.uvst[0].uvtw";
connectAttr "polyTriangulate6.out" "pCubeShape6.i";
connectAttr "polyTweakUV6.uvtk[0]" "pCubeShape6.uvst[0].uvtw";
connectAttr "polyTriangulate7.out" "|group8|pasted__pCube6|pasted__pCubeShape6.i"
		;
connectAttr "polyTweakUV17.uvtk[0]" "|group8|pasted__pCube6|pasted__pCubeShape6.uvst[0].uvtw"
		;
connectAttr "polyTriangulate8.out" "|group9|pasted__pCube6|pasted__pCubeShape6.i"
		;
connectAttr "polyTweakUV19.uvtk[0]" "|group9|pasted__pCube6|pasted__pCubeShape6.uvst[0].uvtw"
		;
connectAttr "polyTriangulate9.out" "|group10|pasted__pCube6|pasted__pCubeShape6.i"
		;
connectAttr "polyTweakUV20.uvtk[0]" "|group10|pasted__pCube6|pasted__pCubeShape6.uvst[0].uvtw"
		;
connectAttr "polyTriangulate10.out" "pCubeShape7.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape7.uvst[0].uvtw";
connectAttr "polyTriangulate11.out" "pCubeShape8.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape8.uvst[0].uvtw";
connectAttr "polyTriangulate12.out" "|group11|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV15.uvtk[0]" "|group11|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate13.out" "|group12|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV16.uvtk[0]" "|group12|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate14.out" "|group13|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV17.uvtk[0]" "|group13|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate15.out" "|group14|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV18.uvtk[0]" "|group14|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate16.out" "|group15|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV19.uvtk[0]" "|group15|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate17.out" "|group16|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV20.uvtk[0]" "|group16|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate18.out" "|group17|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV21.uvtk[0]" "|group17|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate19.out" "|group18|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV22.uvtk[0]" "|group18|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
connectAttr "polyTriangulate20.out" "|group19|pasted__pCube4|pasted__pCubeShape4.i"
		;
connectAttr "pasted__polyTweakUV23.uvtk[0]" "|group19|pasted__pCube4|pasted__pCubeShape4.uvst[0].uvtw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG8.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape8.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.iog" "lambert3SG.dsm" -na
		;
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.iog" "lambert3SG.dsm" -na
		;
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.iog" "lambert3SG.dsm" -na
		;
connectAttr "pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape2.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape1.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
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
connectAttr "polyCube7.out" "polyTweakUV1.ip";
connectAttr "polyCube5.out" "polyTweakUV2.ip";
connectAttr "polyCube8.out" "polyTweakUV3.ip";
connectAttr "polyCube3.out" "polyTweakUV4.ip";
connectAttr "polyCube6.out" "polyTweakUV6.ip";
connectAttr "polyCube4.out" "polyTweakUV15.ip";
connectAttr "polyCube1.out" "polyTweakUV16.ip";
connectAttr "pasted__polyCube6.out" "polyTweakUV17.ip";
connectAttr "polyCube2.out" "polyTweakUV18.ip";
connectAttr "pasted__polyCube7.out" "polyTweakUV19.ip";
connectAttr "pasted__polyCube8.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV3.out" "deleteComponent1.ig";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert1.mp";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert9.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert10.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert11.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert12.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyMergeVert13.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert14.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert13.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert15.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert14.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert16.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert17.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert18.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert19.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert18.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert20.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert21.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert22.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert23.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert22.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyMergeVert24.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyMergeVert25.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyMergeVert26.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert26.mp";
connectAttr "polyMergeVert25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyMergeVert27.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert26.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyMergeVert28.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert27.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyMergeVert29.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert28.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyMergeVert30.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert29.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polyMergeVert31.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert30.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyMergeVert32.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert32.mp";
connectAttr "polyMergeVert31.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyMergeVert33.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert33.mp";
connectAttr "polyMergeVert32.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyMergeVert34.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert34.mp";
connectAttr "polyMergeVert33.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyMergeVert35.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert35.mp";
connectAttr "polyMergeVert34.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyMergeVert36.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert36.mp";
connectAttr "polyMergeVert35.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyMergeVert37.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert37.mp";
connectAttr "polyMergeVert36.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyMergeVert38.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert38.mp";
connectAttr "polyMergeVert37.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyMergeVert39.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert39.mp";
connectAttr "polyMergeVert38.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyMergeVert40.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert40.mp";
connectAttr "polyMergeVert39.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyMergeVert41.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert40.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyMergeVert42.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert41.out" "polyTweak42.ip";
connectAttr "polyTweak43.out" "polyMergeVert43.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert42.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polyMergeVert44.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert43.out" "polyTweak44.ip";
connectAttr "polyTweak45.out" "polyMergeVert45.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert45.mp";
connectAttr "polyTweakUV1.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyMergeVert46.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert45.out" "polyTweak46.ip";
connectAttr "polyTweak47.out" "polyMergeVert47.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert47.mp";
connectAttr "polyMergeVert46.out" "polyTweak47.ip";
connectAttr "polyTweak48.out" "polyMergeVert48.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert47.out" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyMergeVert49.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert49.mp";
connectAttr "polyMergeVert48.out" "polyTweak49.ip";
connectAttr "polyTweak50.out" "polyMergeVert50.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert49.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyMergeVert51.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert50.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyMergeVert52.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert51.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyMergeVert53.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert52.out" "polyTweak53.ip";
connectAttr "polyTweak54.out" "polyMergeVert54.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert53.out" "polyTweak54.ip";
connectAttr "polyTweak55.out" "polyMergeVert55.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert55.mp";
connectAttr "polyMergeVert54.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyMergeVert56.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert56.mp";
connectAttr "polyMergeVert55.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polyMergeVert57.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert57.mp";
connectAttr "polyMergeVert56.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polyMergeVert58.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert58.mp";
connectAttr "polyMergeVert57.out" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyMergeVert59.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert59.mp";
connectAttr "polyMergeVert58.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyMergeVert60.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert60.mp";
connectAttr "polyMergeVert59.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyMergeVert61.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert61.mp";
connectAttr "polyMergeVert60.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyMergeVert62.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert62.mp";
connectAttr "polyMergeVert61.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyMergeVert63.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert63.mp";
connectAttr "polyMergeVert62.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyMergeVert64.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert64.mp";
connectAttr "polyMergeVert63.out" "polyTweak64.ip";
connectAttr "polyTweak65.out" "polyMergeVert65.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert65.mp";
connectAttr "polyMergeVert64.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyMergeVert66.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert66.mp";
connectAttr "polyMergeVert65.out" "polyTweak66.ip";
connectAttr "polyTweak67.out" "polyMergeVert67.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert67.mp";
connectAttr "polyMergeVert66.out" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polyMergeVert68.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert68.mp";
connectAttr "polyMergeVert67.out" "polyTweak68.ip";
connectAttr "polyTweak69.out" "polyMergeVert69.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert69.mp";
connectAttr "polyMergeVert68.out" "polyTweak69.ip";
connectAttr "polyTweak70.out" "polyMergeVert70.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert70.mp";
connectAttr "polyMergeVert69.out" "polyTweak70.ip";
connectAttr "polyTweak71.out" "polyMergeVert71.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert71.mp";
connectAttr "polyMergeVert70.out" "polyTweak71.ip";
connectAttr "polyTweak72.out" "polyMergeVert72.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert72.mp";
connectAttr "polyMergeVert71.out" "polyTweak72.ip";
connectAttr "polyTweak73.out" "polyMergeVert73.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert73.mp";
connectAttr "polyMergeVert72.out" "polyTweak73.ip";
connectAttr "polyTweak74.out" "polyMergeVert74.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert74.mp";
connectAttr "polyMergeVert73.out" "polyTweak74.ip";
connectAttr "polyTweak75.out" "polyMergeVert75.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert75.mp";
connectAttr "polyMergeVert74.out" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polyMergeVert76.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert76.mp";
connectAttr "polyMergeVert75.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyMergeVert77.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert77.mp";
connectAttr "polyMergeVert76.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyMergeVert78.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert78.mp";
connectAttr "polyMergeVert77.out" "polyTweak78.ip";
connectAttr "polyTweak79.out" "polyMergeVert79.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert79.mp";
connectAttr "polyMergeVert78.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyMergeVert80.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert80.mp";
connectAttr "polyMergeVert79.out" "polyTweak80.ip";
connectAttr "polyTweak81.out" "polyMergeVert81.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert81.mp";
connectAttr "polyMergeVert80.out" "polyTweak81.ip";
connectAttr "polyTweak82.out" "polyMergeVert82.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert82.mp";
connectAttr "polyMergeVert81.out" "polyTweak82.ip";
connectAttr "polyTweak83.out" "polyMergeVert83.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert83.mp";
connectAttr "polyMergeVert82.out" "polyTweak83.ip";
connectAttr "polyTweak84.out" "polyMergeVert84.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert84.mp";
connectAttr "polyMergeVert83.out" "polyTweak84.ip";
connectAttr "polyTweak85.out" "polyMergeVert85.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert85.mp";
connectAttr "polyMergeVert84.out" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyMergeVert86.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert86.mp";
connectAttr "polyMergeVert85.out" "polyTweak86.ip";
connectAttr "polyTweak87.out" "polyMergeVert87.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert87.mp";
connectAttr "polyMergeVert86.out" "polyTweak87.ip";
connectAttr "polyTweak88.out" "polyMergeVert88.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert88.mp";
connectAttr "polyMergeVert87.out" "polyTweak88.ip";
connectAttr "polyTweak89.out" "polyMergeVert89.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert89.mp";
connectAttr "polyMergeVert88.out" "polyTweak89.ip";
connectAttr "polyTweak90.out" "polyMergeVert90.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert90.mp";
connectAttr "polyMergeVert89.out" "polyTweak90.ip";
connectAttr "polyTweak91.out" "polyMergeVert91.ip";
connectAttr "pCubeShape7.wm" "polyMergeVert91.mp";
connectAttr "polyMergeVert90.out" "polyTweak91.ip";
connectAttr "polyMergeVert91.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyTweak92.out" "polyMergeVert92.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert92.mp";
connectAttr "polyMergeVert44.out" "polyTweak92.ip";
connectAttr "polyTweak93.out" "polyMergeVert93.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert93.mp";
connectAttr "polyMergeVert92.out" "polyTweak93.ip";
connectAttr "polyTweak94.out" "polyMergeVert94.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert94.mp";
connectAttr "polyMergeVert93.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyMergeVert95.ip";
connectAttr "pCubeShape8.wm" "polyMergeVert95.mp";
connectAttr "polyMergeVert94.out" "polyTweak95.ip";
connectAttr "polyTweak96.out" "polyMergeVert96.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert96.mp";
connectAttr "polyTweakUV4.out" "polyTweak96.ip";
connectAttr "polyTweak97.out" "polyMergeVert97.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert97.mp";
connectAttr "polyMergeVert96.out" "polyTweak97.ip";
connectAttr "polyTweak98.out" "polyMergeVert98.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert98.mp";
connectAttr "polyMergeVert97.out" "polyTweak98.ip";
connectAttr "polyTweak99.out" "polyMergeVert99.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert99.mp";
connectAttr "polyMergeVert98.out" "polyTweak99.ip";
connectAttr "polyTweak100.out" "polyMergeVert100.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert100.mp";
connectAttr "polyMergeVert99.out" "polyTweak100.ip";
connectAttr "polyTweak101.out" "polyMergeVert101.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert101.mp";
connectAttr "polyMergeVert100.out" "polyTweak101.ip";
connectAttr "polyTweak102.out" "polyMergeVert102.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert102.mp";
connectAttr "polyMergeVert101.out" "polyTweak102.ip";
connectAttr "polyTweak103.out" "polyMergeVert103.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert103.mp";
connectAttr "polyMergeVert102.out" "polyTweak103.ip";
connectAttr "polyTweak104.out" "polyMergeVert104.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert104.mp";
connectAttr "polyMergeVert103.out" "polyTweak104.ip";
connectAttr "polyTweak105.out" "polyMergeVert105.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert105.mp";
connectAttr "polyMergeVert104.out" "polyTweak105.ip";
connectAttr "polyTweak106.out" "polyMergeVert106.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert106.mp";
connectAttr "polyMergeVert105.out" "polyTweak106.ip";
connectAttr "polyTweak107.out" "polyMergeVert107.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert107.mp";
connectAttr "polyMergeVert106.out" "polyTweak107.ip";
connectAttr "polyTweak108.out" "polyMergeVert108.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert108.mp";
connectAttr "polyMergeVert107.out" "polyTweak108.ip";
connectAttr "polyTweak109.out" "polyMergeVert109.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert109.mp";
connectAttr "polyMergeVert108.out" "polyTweak109.ip";
connectAttr "polyTweak110.out" "polyMergeVert110.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert110.mp";
connectAttr "polyMergeVert109.out" "polyTweak110.ip";
connectAttr "polyTweak111.out" "polyMergeVert111.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert111.mp";
connectAttr "polyMergeVert110.out" "polyTweak111.ip";
connectAttr "polyTweak112.out" "polyMergeVert112.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert112.mp";
connectAttr "polyMergeVert111.out" "polyTweak112.ip";
connectAttr "polyTweak113.out" "polyMergeVert113.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert113.mp";
connectAttr "polyMergeVert112.out" "polyTweak113.ip";
connectAttr "polyTweak114.out" "polyMergeVert114.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert114.mp";
connectAttr "polyMergeVert113.out" "polyTweak114.ip";
connectAttr "polyTweak115.out" "polyMergeVert115.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert115.mp";
connectAttr "polyMergeVert114.out" "polyTweak115.ip";
connectAttr "polyTweak116.out" "polyMergeVert116.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert116.mp";
connectAttr "polyMergeVert115.out" "polyTweak116.ip";
connectAttr "polyTweak117.out" "polyMergeVert117.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert117.mp";
connectAttr "polyMergeVert116.out" "polyTweak117.ip";
connectAttr "polyTweak118.out" "polyMergeVert118.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert118.mp";
connectAttr "polyMergeVert117.out" "polyTweak118.ip";
connectAttr "polyTweak119.out" "polyMergeVert119.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert119.mp";
connectAttr "polyMergeVert118.out" "polyTweak119.ip";
connectAttr "polyTweak120.out" "polyMergeVert120.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert120.mp";
connectAttr "polyMergeVert119.out" "polyTweak120.ip";
connectAttr "polyTweak121.out" "polyMergeVert121.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert121.mp";
connectAttr "polyMergeVert120.out" "polyTweak121.ip";
connectAttr "polyTweak122.out" "polyMergeVert122.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert122.mp";
connectAttr "polyMergeVert121.out" "polyTweak122.ip";
connectAttr "polyTweak123.out" "polyMergeVert123.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert123.mp";
connectAttr "polyMergeVert122.out" "polyTweak123.ip";
connectAttr "polyTweak124.out" "polyMergeVert124.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert124.mp";
connectAttr "polyMergeVert123.out" "polyTweak124.ip";
connectAttr "polyTweak125.out" "polyMergeVert125.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert125.mp";
connectAttr "polyMergeVert124.out" "polyTweak125.ip";
connectAttr "polyTweak126.out" "polyMergeVert126.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert126.mp";
connectAttr "polyMergeVert125.out" "polyTweak126.ip";
connectAttr "polyTweak127.out" "polyMergeVert127.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert127.mp";
connectAttr "polyMergeVert126.out" "polyTweak127.ip";
connectAttr "polyTweak128.out" "polyMergeVert128.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert128.mp";
connectAttr "polyMergeVert127.out" "polyTweak128.ip";
connectAttr "polyTweak129.out" "polyMergeVert129.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert129.mp";
connectAttr "polyMergeVert128.out" "polyTweak129.ip";
connectAttr "polyTweak130.out" "polyMergeVert130.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert130.mp";
connectAttr "polyMergeVert129.out" "polyTweak130.ip";
connectAttr "polyTweak131.out" "polyMergeVert131.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert131.mp";
connectAttr "polyMergeVert130.out" "polyTweak131.ip";
connectAttr "polyTweak132.out" "polyMergeVert132.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert132.mp";
connectAttr "polyMergeVert131.out" "polyTweak132.ip";
connectAttr "polyTweak133.out" "polyMergeVert133.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert133.mp";
connectAttr "polyMergeVert132.out" "polyTweak133.ip";
connectAttr "polyTweak134.out" "polyMergeVert134.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert134.mp";
connectAttr "polyMergeVert133.out" "polyTweak134.ip";
connectAttr "polyTweak135.out" "polyMergeVert135.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert135.mp";
connectAttr "polyMergeVert134.out" "polyTweak135.ip";
connectAttr "polyTweak136.out" "polyMergeVert136.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert136.mp";
connectAttr "polyMergeVert135.out" "polyTweak136.ip";
connectAttr "polyTweak137.out" "polyMergeVert137.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert137.mp";
connectAttr "polyMergeVert136.out" "polyTweak137.ip";
connectAttr "polyTweak138.out" "polyMergeVert138.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert138.mp";
connectAttr "polyMergeVert137.out" "polyTweak138.ip";
connectAttr "polyTweak139.out" "polyMergeVert139.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert139.mp";
connectAttr "polyMergeVert138.out" "polyTweak139.ip";
connectAttr "polyTweak140.out" "polyMergeVert140.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert140.mp";
connectAttr "polyMergeVert139.out" "polyTweak140.ip";
connectAttr "polyTweak141.out" "polyMergeVert141.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert141.mp";
connectAttr "polyMergeVert140.out" "polyTweak141.ip";
connectAttr "polyTweak142.out" "polyMergeVert142.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert142.mp";
connectAttr "polyMergeVert141.out" "polyTweak142.ip";
connectAttr "polyTweak143.out" "polyMergeVert143.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert143.mp";
connectAttr "polyMergeVert142.out" "polyTweak143.ip";
connectAttr "polyTweak144.out" "polyMergeVert144.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert144.mp";
connectAttr "polyTweakUV16.out" "polyTweak144.ip";
connectAttr "polyTweak145.out" "polyMergeVert145.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert145.mp";
connectAttr "polyMergeVert144.out" "polyTweak145.ip";
connectAttr "polyTweak146.out" "polyMergeVert146.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert146.mp";
connectAttr "polyMergeVert145.out" "polyTweak146.ip";
connectAttr "polyTweak147.out" "polyMergeVert147.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert147.mp";
connectAttr "polyMergeVert146.out" "polyTweak147.ip";
connectAttr "polyTweak148.out" "polyMergeVert148.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert148.mp";
connectAttr "polyMergeVert147.out" "polyTweak148.ip";
connectAttr "polyTweak149.out" "polyMergeVert149.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert149.mp";
connectAttr "polyMergeVert148.out" "polyTweak149.ip";
connectAttr "polyTweak150.out" "polyMergeVert150.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert150.mp";
connectAttr "polyMergeVert149.out" "polyTweak150.ip";
connectAttr "polyTweak151.out" "polyMergeVert151.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert151.mp";
connectAttr "polyMergeVert150.out" "polyTweak151.ip";
connectAttr "polyTweak152.out" "polyMergeVert152.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert152.mp";
connectAttr "polyMergeVert151.out" "polyTweak152.ip";
connectAttr "polyTweak153.out" "polyMergeVert153.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert153.mp";
connectAttr "polyMergeVert152.out" "polyTweak153.ip";
connectAttr "polyTweak154.out" "polyMergeVert154.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert154.mp";
connectAttr "polyMergeVert153.out" "polyTweak154.ip";
connectAttr "polyTweak155.out" "polyMergeVert155.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert155.mp";
connectAttr "polyMergeVert154.out" "polyTweak155.ip";
connectAttr "polyTweak156.out" "polyMergeVert156.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert156.mp";
connectAttr "polyMergeVert155.out" "polyTweak156.ip";
connectAttr "polyTweak157.out" "polyMergeVert157.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert157.mp";
connectAttr "polyMergeVert156.out" "polyTweak157.ip";
connectAttr "polyTweak158.out" "polyMergeVert158.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert158.mp";
connectAttr "polyMergeVert157.out" "polyTweak158.ip";
connectAttr "polyTweak159.out" "polyMergeVert159.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert159.mp";
connectAttr "polyMergeVert158.out" "polyTweak159.ip";
connectAttr "polyTweak160.out" "polyMergeVert160.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert160.mp";
connectAttr "polyMergeVert159.out" "polyTweak160.ip";
connectAttr "polyTweak161.out" "polyMergeVert161.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert161.mp";
connectAttr "polyMergeVert160.out" "polyTweak161.ip";
connectAttr "polyTweak162.out" "polyMergeVert162.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert162.mp";
connectAttr "polyMergeVert161.out" "polyTweak162.ip";
connectAttr "polyTweak163.out" "polyMergeVert163.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert163.mp";
connectAttr "polyMergeVert162.out" "polyTweak163.ip";
connectAttr "polyTweak164.out" "polyMergeVert164.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert164.mp";
connectAttr "polyMergeVert163.out" "polyTweak164.ip";
connectAttr "polyTweak165.out" "polyMergeVert165.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert165.mp";
connectAttr "polyMergeVert164.out" "polyTweak165.ip";
connectAttr "polyTweak166.out" "polyMergeVert166.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert166.mp";
connectAttr "polyMergeVert165.out" "polyTweak166.ip";
connectAttr "polyTweak167.out" "polyMergeVert167.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert167.mp";
connectAttr "polyMergeVert166.out" "polyTweak167.ip";
connectAttr "polyTweak168.out" "polyMergeVert168.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert168.mp";
connectAttr "polyMergeVert167.out" "polyTweak168.ip";
connectAttr "polyTweak169.out" "polyMergeVert169.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert169.mp";
connectAttr "polyMergeVert168.out" "polyTweak169.ip";
connectAttr "polyTweak170.out" "polyMergeVert170.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert170.mp";
connectAttr "polyMergeVert169.out" "polyTweak170.ip";
connectAttr "polyTweak171.out" "polyMergeVert171.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert171.mp";
connectAttr "polyMergeVert170.out" "polyTweak171.ip";
connectAttr "polyTweak172.out" "polyMergeVert172.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert172.mp";
connectAttr "polyMergeVert171.out" "polyTweak172.ip";
connectAttr "polyTweak173.out" "polyMergeVert173.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert173.mp";
connectAttr "polyMergeVert172.out" "polyTweak173.ip";
connectAttr "polyTweak174.out" "polyMergeVert174.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert174.mp";
connectAttr "polyMergeVert173.out" "polyTweak174.ip";
connectAttr "polyTweak175.out" "polyMergeVert175.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert175.mp";
connectAttr "polyMergeVert174.out" "polyTweak175.ip";
connectAttr "polyTweak176.out" "polyMergeVert176.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert176.mp";
connectAttr "polyMergeVert175.out" "polyTweak176.ip";
connectAttr "polyTweak177.out" "polyMergeVert177.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert177.mp";
connectAttr "polyMergeVert176.out" "polyTweak177.ip";
connectAttr "polyTweak178.out" "polyMergeVert178.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert178.mp";
connectAttr "polyMergeVert177.out" "polyTweak178.ip";
connectAttr "polyTweak179.out" "polyMergeVert179.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert179.mp";
connectAttr "polyMergeVert178.out" "polyTweak179.ip";
connectAttr "polyTweak180.out" "polyMergeVert180.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert180.mp";
connectAttr "polyMergeVert179.out" "polyTweak180.ip";
connectAttr "polyTweak181.out" "polyMergeVert181.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert181.mp";
connectAttr "polyMergeVert180.out" "polyTweak181.ip";
connectAttr "polyTweak182.out" "polyMergeVert182.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert182.mp";
connectAttr "polyMergeVert181.out" "polyTweak182.ip";
connectAttr "polyTweak183.out" "polyMergeVert183.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert183.mp";
connectAttr "polyMergeVert182.out" "polyTweak183.ip";
connectAttr "polyTweak184.out" "polyMergeVert184.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert184.mp";
connectAttr "polyMergeVert183.out" "polyTweak184.ip";
connectAttr "polyTweak185.out" "polyMergeVert185.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert185.mp";
connectAttr "polyMergeVert184.out" "polyTweak185.ip";
connectAttr "polyTweak186.out" "polyMergeVert186.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert186.mp";
connectAttr "polyMergeVert185.out" "polyTweak186.ip";
connectAttr "polyTweak187.out" "polyMergeVert187.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert187.mp";
connectAttr "polyMergeVert186.out" "polyTweak187.ip";
connectAttr "polyTweak188.out" "polyMergeVert188.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert188.mp";
connectAttr "polyMergeVert187.out" "polyTweak188.ip";
connectAttr "polyTweak189.out" "polyMergeVert189.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert189.mp";
connectAttr "polyMergeVert188.out" "polyTweak189.ip";
connectAttr "polyTweak190.out" "polyMergeVert190.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert190.mp";
connectAttr "polyMergeVert189.out" "polyTweak190.ip";
connectAttr "polyTweak191.out" "polyMergeVert191.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert191.mp";
connectAttr "polyMergeVert190.out" "polyTweak191.ip";
connectAttr "polyTweak192.out" "polyMergeVert192.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert192.mp"
		;
connectAttr "polyTweakUV17.out" "polyTweak192.ip";
connectAttr "polyTweak193.out" "polyMergeVert193.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert193.mp"
		;
connectAttr "polyMergeVert192.out" "polyTweak193.ip";
connectAttr "polyTweak194.out" "polyMergeVert194.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert194.mp"
		;
connectAttr "polyMergeVert193.out" "polyTweak194.ip";
connectAttr "polyTweak195.out" "polyMergeVert195.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert195.mp"
		;
connectAttr "polyMergeVert194.out" "polyTweak195.ip";
connectAttr "polyTweak196.out" "polyMergeVert196.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert196.mp"
		;
connectAttr "polyMergeVert195.out" "polyTweak196.ip";
connectAttr "polyTweak197.out" "polyMergeVert197.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert197.mp"
		;
connectAttr "polyMergeVert196.out" "polyTweak197.ip";
connectAttr "polyTweak198.out" "polyMergeVert198.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert198.mp"
		;
connectAttr "polyMergeVert197.out" "polyTweak198.ip";
connectAttr "polyTweak199.out" "polyMergeVert199.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert199.mp"
		;
connectAttr "polyMergeVert198.out" "polyTweak199.ip";
connectAttr "polyTweak200.out" "polyMergeVert200.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert200.mp"
		;
connectAttr "polyMergeVert199.out" "polyTweak200.ip";
connectAttr "polyTweak201.out" "polyMergeVert201.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert201.mp"
		;
connectAttr "polyMergeVert200.out" "polyTweak201.ip";
connectAttr "polyTweak202.out" "polyMergeVert202.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert202.mp"
		;
connectAttr "polyMergeVert201.out" "polyTweak202.ip";
connectAttr "polyTweak203.out" "polyMergeVert203.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert203.mp"
		;
connectAttr "polyMergeVert202.out" "polyTweak203.ip";
connectAttr "polyTweak204.out" "polyMergeVert204.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert204.mp"
		;
connectAttr "polyMergeVert203.out" "polyTweak204.ip";
connectAttr "polyTweak205.out" "polyMergeVert205.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert205.mp"
		;
connectAttr "polyMergeVert204.out" "polyTweak205.ip";
connectAttr "polyTweak206.out" "polyMergeVert206.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert206.mp"
		;
connectAttr "polyMergeVert205.out" "polyTweak206.ip";
connectAttr "polyTweak207.out" "polyMergeVert207.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert207.mp"
		;
connectAttr "polyMergeVert206.out" "polyTweak207.ip";
connectAttr "polyTweak208.out" "polyMergeVert208.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert208.mp"
		;
connectAttr "polyMergeVert207.out" "polyTweak208.ip";
connectAttr "polyTweak209.out" "polyMergeVert209.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert209.mp"
		;
connectAttr "polyMergeVert208.out" "polyTweak209.ip";
connectAttr "polyTweak210.out" "polyMergeVert210.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert210.mp"
		;
connectAttr "polyMergeVert209.out" "polyTweak210.ip";
connectAttr "polyTweak211.out" "polyMergeVert211.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert211.mp"
		;
connectAttr "polyMergeVert210.out" "polyTweak211.ip";
connectAttr "polyTweak212.out" "polyMergeVert212.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert212.mp"
		;
connectAttr "polyMergeVert211.out" "polyTweak212.ip";
connectAttr "polyTweak213.out" "polyMergeVert213.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert213.mp"
		;
connectAttr "polyMergeVert212.out" "polyTweak213.ip";
connectAttr "polyTweak214.out" "polyMergeVert214.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert214.mp"
		;
connectAttr "polyMergeVert213.out" "polyTweak214.ip";
connectAttr "polyTweak215.out" "polyMergeVert215.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert215.mp"
		;
connectAttr "polyMergeVert214.out" "polyTweak215.ip";
connectAttr "polyTweak216.out" "polyMergeVert216.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert216.mp"
		;
connectAttr "polyMergeVert215.out" "polyTweak216.ip";
connectAttr "polyTweak217.out" "polyMergeVert217.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert217.mp"
		;
connectAttr "polyMergeVert216.out" "polyTweak217.ip";
connectAttr "polyTweak218.out" "polyMergeVert218.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert218.mp"
		;
connectAttr "polyMergeVert217.out" "polyTweak218.ip";
connectAttr "polyTweak219.out" "polyMergeVert219.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert219.mp"
		;
connectAttr "polyMergeVert218.out" "polyTweak219.ip";
connectAttr "polyTweak220.out" "polyMergeVert220.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert220.mp"
		;
connectAttr "polyMergeVert219.out" "polyTweak220.ip";
connectAttr "polyTweak221.out" "polyMergeVert221.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert221.mp"
		;
connectAttr "polyMergeVert220.out" "polyTweak221.ip";
connectAttr "polyTweak222.out" "polyMergeVert222.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert222.mp"
		;
connectAttr "polyMergeVert221.out" "polyTweak222.ip";
connectAttr "polyTweak223.out" "polyMergeVert223.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert223.mp"
		;
connectAttr "polyMergeVert222.out" "polyTweak223.ip";
connectAttr "polyTweak224.out" "polyMergeVert224.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert224.mp"
		;
connectAttr "polyMergeVert223.out" "polyTweak224.ip";
connectAttr "polyTweak225.out" "polyMergeVert225.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert225.mp"
		;
connectAttr "polyMergeVert224.out" "polyTweak225.ip";
connectAttr "polyTweak226.out" "polyMergeVert226.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert226.mp"
		;
connectAttr "polyMergeVert225.out" "polyTweak226.ip";
connectAttr "polyTweak227.out" "polyMergeVert227.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert227.mp"
		;
connectAttr "polyMergeVert226.out" "polyTweak227.ip";
connectAttr "polyTweak228.out" "polyMergeVert228.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert228.mp"
		;
connectAttr "polyMergeVert227.out" "polyTweak228.ip";
connectAttr "polyTweak229.out" "polyMergeVert229.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert229.mp"
		;
connectAttr "polyMergeVert228.out" "polyTweak229.ip";
connectAttr "polyTweak230.out" "polyMergeVert230.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert230.mp"
		;
connectAttr "polyMergeVert229.out" "polyTweak230.ip";
connectAttr "polyTweak231.out" "polyMergeVert231.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert231.mp"
		;
connectAttr "polyMergeVert230.out" "polyTweak231.ip";
connectAttr "polyTweak232.out" "polyMergeVert232.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert232.mp"
		;
connectAttr "polyMergeVert231.out" "polyTweak232.ip";
connectAttr "polyTweak233.out" "polyMergeVert233.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert233.mp"
		;
connectAttr "polyMergeVert232.out" "polyTweak233.ip";
connectAttr "polyTweak234.out" "polyMergeVert234.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert234.mp"
		;
connectAttr "polyMergeVert233.out" "polyTweak234.ip";
connectAttr "polyTweak235.out" "polyMergeVert235.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert235.mp"
		;
connectAttr "polyMergeVert234.out" "polyTweak235.ip";
connectAttr "polyTweak236.out" "polyMergeVert236.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert236.mp"
		;
connectAttr "polyMergeVert235.out" "polyTweak236.ip";
connectAttr "polyTweak237.out" "polyMergeVert237.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert237.mp"
		;
connectAttr "polyMergeVert236.out" "polyTweak237.ip";
connectAttr "polyTweak238.out" "polyMergeVert238.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert238.mp"
		;
connectAttr "polyMergeVert237.out" "polyTweak238.ip";
connectAttr "polyTweak239.out" "polyMergeVert239.ip";
connectAttr "|group8|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert239.mp"
		;
connectAttr "polyMergeVert238.out" "polyTweak239.ip";
connectAttr "polyMergeVert239.out" "deleteComponent5.ig";
connectAttr "polyTweak240.out" "polyMergeVert240.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert240.mp";
connectAttr "polyTweakUV6.out" "polyTweak240.ip";
connectAttr "polyTweak241.out" "polyMergeVert241.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert241.mp";
connectAttr "polyMergeVert240.out" "polyTweak241.ip";
connectAttr "polyTweak242.out" "polyMergeVert242.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert242.mp";
connectAttr "polyMergeVert241.out" "polyTweak242.ip";
connectAttr "polyTweak243.out" "polyMergeVert243.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert243.mp";
connectAttr "polyMergeVert242.out" "polyTweak243.ip";
connectAttr "polyTweak244.out" "polyMergeVert244.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert244.mp";
connectAttr "polyMergeVert243.out" "polyTweak244.ip";
connectAttr "polyTweak245.out" "polyMergeVert245.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert245.mp";
connectAttr "polyMergeVert244.out" "polyTweak245.ip";
connectAttr "polyTweak246.out" "polyMergeVert246.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert246.mp";
connectAttr "polyMergeVert245.out" "polyTweak246.ip";
connectAttr "polyTweak247.out" "polyMergeVert247.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert247.mp";
connectAttr "polyMergeVert246.out" "polyTweak247.ip";
connectAttr "polyTweak248.out" "polyMergeVert248.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert248.mp";
connectAttr "polyMergeVert247.out" "polyTweak248.ip";
connectAttr "polyTweak249.out" "polyMergeVert249.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert249.mp";
connectAttr "polyMergeVert248.out" "polyTweak249.ip";
connectAttr "polyTweak250.out" "polyMergeVert250.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert250.mp";
connectAttr "polyMergeVert249.out" "polyTweak250.ip";
connectAttr "polyTweak251.out" "polyMergeVert251.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert251.mp";
connectAttr "polyMergeVert250.out" "polyTweak251.ip";
connectAttr "polyTweak252.out" "polyMergeVert252.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert252.mp";
connectAttr "polyMergeVert251.out" "polyTweak252.ip";
connectAttr "polyTweak253.out" "polyMergeVert253.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert253.mp";
connectAttr "polyMergeVert252.out" "polyTweak253.ip";
connectAttr "polyTweak254.out" "polyMergeVert254.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert254.mp";
connectAttr "polyMergeVert253.out" "polyTweak254.ip";
connectAttr "polyTweak255.out" "polyMergeVert255.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert255.mp";
connectAttr "polyMergeVert254.out" "polyTweak255.ip";
connectAttr "polyTweak256.out" "polyMergeVert256.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert256.mp";
connectAttr "polyMergeVert255.out" "polyTweak256.ip";
connectAttr "polyTweak257.out" "polyMergeVert257.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert257.mp";
connectAttr "polyMergeVert256.out" "polyTweak257.ip";
connectAttr "polyTweak258.out" "polyMergeVert258.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert258.mp";
connectAttr "polyMergeVert257.out" "polyTweak258.ip";
connectAttr "polyTweak259.out" "polyMergeVert259.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert259.mp";
connectAttr "polyMergeVert258.out" "polyTweak259.ip";
connectAttr "polyTweak260.out" "polyMergeVert260.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert260.mp";
connectAttr "polyMergeVert259.out" "polyTweak260.ip";
connectAttr "polyTweak261.out" "polyMergeVert261.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert261.mp";
connectAttr "polyMergeVert260.out" "polyTweak261.ip";
connectAttr "polyTweak262.out" "polyMergeVert262.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert262.mp";
connectAttr "polyMergeVert261.out" "polyTweak262.ip";
connectAttr "polyTweak263.out" "polyMergeVert263.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert263.mp";
connectAttr "polyMergeVert262.out" "polyTweak263.ip";
connectAttr "polyTweak264.out" "polyMergeVert264.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert264.mp";
connectAttr "polyMergeVert263.out" "polyTweak264.ip";
connectAttr "polyTweak265.out" "polyMergeVert265.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert265.mp";
connectAttr "polyMergeVert264.out" "polyTweak265.ip";
connectAttr "polyTweak266.out" "polyMergeVert266.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert266.mp";
connectAttr "polyMergeVert265.out" "polyTweak266.ip";
connectAttr "polyTweak267.out" "polyMergeVert267.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert267.mp";
connectAttr "polyMergeVert266.out" "polyTweak267.ip";
connectAttr "polyTweak268.out" "polyMergeVert268.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert268.mp";
connectAttr "polyMergeVert267.out" "polyTweak268.ip";
connectAttr "polyTweak269.out" "polyMergeVert269.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert269.mp";
connectAttr "polyMergeVert268.out" "polyTweak269.ip";
connectAttr "polyTweak270.out" "polyMergeVert270.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert270.mp";
connectAttr "polyMergeVert269.out" "polyTweak270.ip";
connectAttr "polyTweak271.out" "polyMergeVert271.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert271.mp";
connectAttr "polyMergeVert270.out" "polyTweak271.ip";
connectAttr "polyTweak272.out" "polyMergeVert272.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert272.mp";
connectAttr "polyMergeVert271.out" "polyTweak272.ip";
connectAttr "polyTweak273.out" "polyMergeVert273.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert273.mp";
connectAttr "polyMergeVert272.out" "polyTweak273.ip";
connectAttr "polyTweak274.out" "polyMergeVert274.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert274.mp";
connectAttr "polyMergeVert273.out" "polyTweak274.ip";
connectAttr "polyTweak275.out" "polyMergeVert275.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert275.mp";
connectAttr "polyMergeVert274.out" "polyTweak275.ip";
connectAttr "polyTweak276.out" "polyMergeVert276.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert276.mp";
connectAttr "polyMergeVert275.out" "polyTweak276.ip";
connectAttr "polyTweak277.out" "polyMergeVert277.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert277.mp";
connectAttr "polyMergeVert276.out" "polyTweak277.ip";
connectAttr "polyTweak278.out" "polyMergeVert278.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert278.mp";
connectAttr "polyMergeVert277.out" "polyTweak278.ip";
connectAttr "polyTweak279.out" "polyMergeVert279.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert279.mp";
connectAttr "polyMergeVert278.out" "polyTweak279.ip";
connectAttr "polyTweak280.out" "polyMergeVert280.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert280.mp";
connectAttr "polyMergeVert279.out" "polyTweak280.ip";
connectAttr "polyTweak281.out" "polyMergeVert281.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert281.mp";
connectAttr "polyMergeVert280.out" "polyTweak281.ip";
connectAttr "polyTweak282.out" "polyMergeVert282.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert282.mp";
connectAttr "polyMergeVert281.out" "polyTweak282.ip";
connectAttr "polyTweak283.out" "polyMergeVert283.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert283.mp";
connectAttr "polyMergeVert282.out" "polyTweak283.ip";
connectAttr "polyTweak284.out" "polyMergeVert284.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert284.mp";
connectAttr "polyMergeVert283.out" "polyTweak284.ip";
connectAttr "polyTweak285.out" "polyMergeVert285.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert285.mp";
connectAttr "polyMergeVert284.out" "polyTweak285.ip";
connectAttr "polyTweak286.out" "polyMergeVert286.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert286.mp";
connectAttr "polyMergeVert285.out" "polyTweak286.ip";
connectAttr "polyTweak287.out" "polyMergeVert287.ip";
connectAttr "pCubeShape6.wm" "polyMergeVert287.mp";
connectAttr "polyMergeVert286.out" "polyTweak287.ip";
connectAttr "polyTweak288.out" "polyMergeVert288.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert288.mp";
connectAttr "polyTweakUV18.out" "polyTweak288.ip";
connectAttr "polyTweak289.out" "polyMergeVert289.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert289.mp";
connectAttr "polyMergeVert288.out" "polyTweak289.ip";
connectAttr "polyTweak290.out" "polyMergeVert290.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert290.mp";
connectAttr "polyMergeVert289.out" "polyTweak290.ip";
connectAttr "polyTweak291.out" "polyMergeVert291.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert291.mp";
connectAttr "polyMergeVert290.out" "polyTweak291.ip";
connectAttr "polyTweak292.out" "polyMergeVert292.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert292.mp";
connectAttr "polyMergeVert291.out" "polyTweak292.ip";
connectAttr "polyTweak293.out" "polyMergeVert293.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert293.mp";
connectAttr "polyMergeVert292.out" "polyTweak293.ip";
connectAttr "polyTweak294.out" "polyMergeVert294.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert294.mp";
connectAttr "polyMergeVert293.out" "polyTweak294.ip";
connectAttr "polyTweak295.out" "polyMergeVert295.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert295.mp";
connectAttr "polyMergeVert294.out" "polyTweak295.ip";
connectAttr "polyTweak296.out" "polyMergeVert296.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert296.mp";
connectAttr "polyMergeVert295.out" "polyTweak296.ip";
connectAttr "polyTweak297.out" "polyMergeVert297.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert297.mp";
connectAttr "polyMergeVert296.out" "polyTweak297.ip";
connectAttr "polyTweak298.out" "polyMergeVert298.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert298.mp";
connectAttr "polyMergeVert297.out" "polyTweak298.ip";
connectAttr "polyTweak299.out" "polyMergeVert299.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert299.mp";
connectAttr "polyMergeVert298.out" "polyTweak299.ip";
connectAttr "polyTweak300.out" "polyMergeVert300.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert300.mp";
connectAttr "polyMergeVert299.out" "polyTweak300.ip";
connectAttr "polyTweak301.out" "polyMergeVert301.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert301.mp";
connectAttr "polyMergeVert300.out" "polyTweak301.ip";
connectAttr "polyTweak302.out" "polyMergeVert302.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert302.mp";
connectAttr "polyMergeVert301.out" "polyTweak302.ip";
connectAttr "polyTweak303.out" "polyMergeVert303.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert303.mp";
connectAttr "polyMergeVert302.out" "polyTweak303.ip";
connectAttr "polyTweak304.out" "polyMergeVert304.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert304.mp";
connectAttr "polyMergeVert303.out" "polyTweak304.ip";
connectAttr "polyTweak305.out" "polyMergeVert305.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert305.mp";
connectAttr "polyMergeVert304.out" "polyTweak305.ip";
connectAttr "polyTweak306.out" "polyMergeVert306.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert306.mp";
connectAttr "polyMergeVert305.out" "polyTweak306.ip";
connectAttr "polyTweak307.out" "polyMergeVert307.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert307.mp";
connectAttr "polyMergeVert306.out" "polyTweak307.ip";
connectAttr "polyTweak308.out" "polyMergeVert308.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert308.mp";
connectAttr "polyMergeVert307.out" "polyTweak308.ip";
connectAttr "polyTweak309.out" "polyMergeVert309.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert309.mp";
connectAttr "polyMergeVert308.out" "polyTweak309.ip";
connectAttr "polyTweak310.out" "polyMergeVert310.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert310.mp";
connectAttr "polyMergeVert309.out" "polyTweak310.ip";
connectAttr "polyTweak311.out" "polyMergeVert311.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert311.mp";
connectAttr "polyMergeVert310.out" "polyTweak311.ip";
connectAttr "polyTweak312.out" "polyMergeVert312.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert312.mp";
connectAttr "polyMergeVert311.out" "polyTweak312.ip";
connectAttr "polyTweak313.out" "polyMergeVert313.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert313.mp";
connectAttr "polyMergeVert312.out" "polyTweak313.ip";
connectAttr "polyTweak314.out" "polyMergeVert314.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert314.mp";
connectAttr "polyMergeVert313.out" "polyTweak314.ip";
connectAttr "polyTweak315.out" "polyMergeVert315.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert315.mp";
connectAttr "polyMergeVert314.out" "polyTweak315.ip";
connectAttr "polyTweak316.out" "polyMergeVert316.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert316.mp";
connectAttr "polyMergeVert315.out" "polyTweak316.ip";
connectAttr "polyTweak317.out" "polyMergeVert317.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert317.mp";
connectAttr "polyMergeVert316.out" "polyTweak317.ip";
connectAttr "polyTweak318.out" "polyMergeVert318.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert318.mp";
connectAttr "polyMergeVert317.out" "polyTweak318.ip";
connectAttr "polyTweak319.out" "polyMergeVert319.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert319.mp";
connectAttr "polyMergeVert318.out" "polyTweak319.ip";
connectAttr "polyTweak320.out" "polyMergeVert320.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert320.mp";
connectAttr "polyMergeVert319.out" "polyTweak320.ip";
connectAttr "polyTweak321.out" "polyMergeVert321.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert321.mp";
connectAttr "polyMergeVert320.out" "polyTweak321.ip";
connectAttr "polyTweak322.out" "polyMergeVert322.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert322.mp";
connectAttr "polyMergeVert321.out" "polyTweak322.ip";
connectAttr "polyTweak323.out" "polyMergeVert323.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert323.mp";
connectAttr "polyMergeVert322.out" "polyTweak323.ip";
connectAttr "polyTweak324.out" "polyMergeVert324.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert324.mp";
connectAttr "polyMergeVert323.out" "polyTweak324.ip";
connectAttr "polyTweak325.out" "polyMergeVert325.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert325.mp";
connectAttr "polyMergeVert324.out" "polyTweak325.ip";
connectAttr "polyTweak326.out" "polyMergeVert326.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert326.mp";
connectAttr "polyMergeVert325.out" "polyTweak326.ip";
connectAttr "polyTweak327.out" "polyMergeVert327.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert327.mp";
connectAttr "polyMergeVert326.out" "polyTweak327.ip";
connectAttr "polyTweak328.out" "polyMergeVert328.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert328.mp";
connectAttr "polyMergeVert327.out" "polyTweak328.ip";
connectAttr "polyTweak329.out" "polyMergeVert329.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert329.mp";
connectAttr "polyMergeVert328.out" "polyTweak329.ip";
connectAttr "polyTweak330.out" "polyMergeVert330.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert330.mp";
connectAttr "polyMergeVert329.out" "polyTweak330.ip";
connectAttr "polyTweak331.out" "polyMergeVert331.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert331.mp";
connectAttr "polyMergeVert330.out" "polyTweak331.ip";
connectAttr "polyTweak332.out" "polyMergeVert332.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert332.mp";
connectAttr "polyMergeVert331.out" "polyTweak332.ip";
connectAttr "polyTweak333.out" "polyMergeVert333.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert333.mp";
connectAttr "polyMergeVert332.out" "polyTweak333.ip";
connectAttr "polyTweak334.out" "polyMergeVert334.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert334.mp";
connectAttr "polyMergeVert333.out" "polyTweak334.ip";
connectAttr "polyTweak335.out" "polyMergeVert335.ip";
connectAttr "pCubeShape2.wm" "polyMergeVert335.mp";
connectAttr "polyMergeVert334.out" "polyTweak335.ip";
connectAttr "polyTweak336.out" "polyMergeVert336.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert336.mp"
		;
connectAttr "polyTweakUV19.out" "polyTweak336.ip";
connectAttr "polyTweak337.out" "polyMergeVert337.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert337.mp"
		;
connectAttr "polyMergeVert336.out" "polyTweak337.ip";
connectAttr "polyTweak338.out" "polyMergeVert338.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert338.mp"
		;
connectAttr "polyMergeVert337.out" "polyTweak338.ip";
connectAttr "polyTweak339.out" "polyMergeVert339.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert339.mp"
		;
connectAttr "polyMergeVert338.out" "polyTweak339.ip";
connectAttr "polyTweak340.out" "polyMergeVert340.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert340.mp"
		;
connectAttr "polyMergeVert339.out" "polyTweak340.ip";
connectAttr "polyTweak341.out" "polyMergeVert341.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert341.mp"
		;
connectAttr "polyMergeVert340.out" "polyTweak341.ip";
connectAttr "polyTweak342.out" "polyMergeVert342.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert342.mp"
		;
connectAttr "polyMergeVert341.out" "polyTweak342.ip";
connectAttr "polyTweak343.out" "polyMergeVert343.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert343.mp"
		;
connectAttr "polyMergeVert342.out" "polyTweak343.ip";
connectAttr "polyTweak344.out" "polyMergeVert344.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert344.mp"
		;
connectAttr "polyMergeVert343.out" "polyTweak344.ip";
connectAttr "polyTweak345.out" "polyMergeVert345.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert345.mp"
		;
connectAttr "polyMergeVert344.out" "polyTweak345.ip";
connectAttr "polyTweak346.out" "polyMergeVert346.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert346.mp"
		;
connectAttr "polyMergeVert345.out" "polyTweak346.ip";
connectAttr "polyTweak347.out" "polyMergeVert347.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert347.mp"
		;
connectAttr "polyMergeVert346.out" "polyTweak347.ip";
connectAttr "polyTweak348.out" "polyMergeVert348.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert348.mp"
		;
connectAttr "polyMergeVert347.out" "polyTweak348.ip";
connectAttr "polyTweak349.out" "polyMergeVert349.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert349.mp"
		;
connectAttr "polyMergeVert348.out" "polyTweak349.ip";
connectAttr "polyTweak350.out" "polyMergeVert350.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert350.mp"
		;
connectAttr "polyMergeVert349.out" "polyTweak350.ip";
connectAttr "polyTweak351.out" "polyMergeVert351.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert351.mp"
		;
connectAttr "polyMergeVert350.out" "polyTweak351.ip";
connectAttr "polyTweak352.out" "polyMergeVert352.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert352.mp"
		;
connectAttr "polyMergeVert351.out" "polyTweak352.ip";
connectAttr "polyTweak353.out" "polyMergeVert353.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert353.mp"
		;
connectAttr "polyMergeVert352.out" "polyTweak353.ip";
connectAttr "polyTweak354.out" "polyMergeVert354.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert354.mp"
		;
connectAttr "polyMergeVert353.out" "polyTweak354.ip";
connectAttr "polyTweak355.out" "polyMergeVert355.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert355.mp"
		;
connectAttr "polyMergeVert354.out" "polyTweak355.ip";
connectAttr "polyTweak356.out" "polyMergeVert356.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert356.mp"
		;
connectAttr "polyMergeVert355.out" "polyTweak356.ip";
connectAttr "polyTweak357.out" "polyMergeVert357.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert357.mp"
		;
connectAttr "polyMergeVert356.out" "polyTweak357.ip";
connectAttr "polyTweak358.out" "polyMergeVert358.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert358.mp"
		;
connectAttr "polyMergeVert357.out" "polyTweak358.ip";
connectAttr "polyTweak359.out" "polyMergeVert359.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert359.mp"
		;
connectAttr "polyMergeVert358.out" "polyTweak359.ip";
connectAttr "polyTweak360.out" "polyMergeVert360.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert360.mp"
		;
connectAttr "polyMergeVert359.out" "polyTweak360.ip";
connectAttr "polyTweak361.out" "polyMergeVert361.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert361.mp"
		;
connectAttr "polyMergeVert360.out" "polyTweak361.ip";
connectAttr "polyTweak362.out" "polyMergeVert362.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert362.mp"
		;
connectAttr "polyMergeVert361.out" "polyTweak362.ip";
connectAttr "polyTweak363.out" "polyMergeVert363.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert363.mp"
		;
connectAttr "polyMergeVert362.out" "polyTweak363.ip";
connectAttr "polyTweak364.out" "polyMergeVert364.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert364.mp"
		;
connectAttr "polyMergeVert363.out" "polyTweak364.ip";
connectAttr "polyTweak365.out" "polyMergeVert365.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert365.mp"
		;
connectAttr "polyMergeVert364.out" "polyTweak365.ip";
connectAttr "polyTweak366.out" "polyMergeVert366.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert366.mp"
		;
connectAttr "polyMergeVert365.out" "polyTweak366.ip";
connectAttr "polyTweak367.out" "polyMergeVert367.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert367.mp"
		;
connectAttr "polyMergeVert366.out" "polyTweak367.ip";
connectAttr "polyTweak368.out" "polyMergeVert368.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert368.mp"
		;
connectAttr "polyMergeVert367.out" "polyTweak368.ip";
connectAttr "polyTweak369.out" "polyMergeVert369.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert369.mp"
		;
connectAttr "polyMergeVert368.out" "polyTweak369.ip";
connectAttr "polyTweak370.out" "polyMergeVert370.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert370.mp"
		;
connectAttr "polyMergeVert369.out" "polyTweak370.ip";
connectAttr "polyTweak371.out" "polyMergeVert371.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert371.mp"
		;
connectAttr "polyMergeVert370.out" "polyTweak371.ip";
connectAttr "polyTweak372.out" "polyMergeVert372.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert372.mp"
		;
connectAttr "polyMergeVert371.out" "polyTweak372.ip";
connectAttr "polyTweak373.out" "polyMergeVert373.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert373.mp"
		;
connectAttr "polyMergeVert372.out" "polyTweak373.ip";
connectAttr "polyTweak374.out" "polyMergeVert374.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert374.mp"
		;
connectAttr "polyMergeVert373.out" "polyTweak374.ip";
connectAttr "polyTweak375.out" "polyMergeVert375.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert375.mp"
		;
connectAttr "polyMergeVert374.out" "polyTweak375.ip";
connectAttr "polyTweak376.out" "polyMergeVert376.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert376.mp"
		;
connectAttr "polyMergeVert375.out" "polyTweak376.ip";
connectAttr "polyTweak377.out" "polyMergeVert377.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert377.mp"
		;
connectAttr "polyMergeVert376.out" "polyTweak377.ip";
connectAttr "polyTweak378.out" "polyMergeVert378.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert378.mp"
		;
connectAttr "polyMergeVert377.out" "polyTweak378.ip";
connectAttr "polyTweak379.out" "polyMergeVert379.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert379.mp"
		;
connectAttr "polyMergeVert378.out" "polyTweak379.ip";
connectAttr "polyTweak380.out" "polyMergeVert380.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert380.mp"
		;
connectAttr "polyMergeVert379.out" "polyTweak380.ip";
connectAttr "polyTweak381.out" "polyMergeVert381.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert381.mp"
		;
connectAttr "polyMergeVert380.out" "polyTweak381.ip";
connectAttr "polyTweak382.out" "polyMergeVert382.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert382.mp"
		;
connectAttr "polyMergeVert381.out" "polyTweak382.ip";
connectAttr "polyTweak383.out" "polyMergeVert383.ip";
connectAttr "|group9|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert383.mp"
		;
connectAttr "polyMergeVert382.out" "polyTweak383.ip";
connectAttr "polyTweak384.out" "polyMergeVert384.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert384.mp"
		;
connectAttr "polyTweakUV20.out" "polyTweak384.ip";
connectAttr "polyTweak385.out" "polyMergeVert385.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert385.mp"
		;
connectAttr "polyMergeVert384.out" "polyTweak385.ip";
connectAttr "polyTweak386.out" "polyMergeVert386.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert386.mp"
		;
connectAttr "polyMergeVert385.out" "polyTweak386.ip";
connectAttr "polyTweak387.out" "polyMergeVert387.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert387.mp"
		;
connectAttr "polyMergeVert386.out" "polyTweak387.ip";
connectAttr "polyTweak388.out" "polyMergeVert388.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert388.mp"
		;
connectAttr "polyMergeVert387.out" "polyTweak388.ip";
connectAttr "polyTweak389.out" "polyMergeVert389.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert389.mp"
		;
connectAttr "polyMergeVert388.out" "polyTweak389.ip";
connectAttr "polyTweak390.out" "polyMergeVert390.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert390.mp"
		;
connectAttr "polyMergeVert389.out" "polyTweak390.ip";
connectAttr "polyTweak391.out" "polyMergeVert391.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert391.mp"
		;
connectAttr "polyMergeVert390.out" "polyTweak391.ip";
connectAttr "polyTweak392.out" "polyMergeVert392.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert392.mp"
		;
connectAttr "polyMergeVert391.out" "polyTweak392.ip";
connectAttr "polyTweak393.out" "polyMergeVert393.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert393.mp"
		;
connectAttr "polyMergeVert392.out" "polyTweak393.ip";
connectAttr "polyTweak394.out" "polyMergeVert394.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert394.mp"
		;
connectAttr "polyMergeVert393.out" "polyTweak394.ip";
connectAttr "polyTweak395.out" "polyMergeVert395.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert395.mp"
		;
connectAttr "polyMergeVert394.out" "polyTweak395.ip";
connectAttr "polyTweak396.out" "polyMergeVert396.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert396.mp"
		;
connectAttr "polyMergeVert395.out" "polyTweak396.ip";
connectAttr "polyTweak397.out" "polyMergeVert397.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert397.mp"
		;
connectAttr "polyMergeVert396.out" "polyTweak397.ip";
connectAttr "polyTweak398.out" "polyMergeVert398.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert398.mp"
		;
connectAttr "polyMergeVert397.out" "polyTweak398.ip";
connectAttr "polyTweak399.out" "polyMergeVert399.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert399.mp"
		;
connectAttr "polyMergeVert398.out" "polyTweak399.ip";
connectAttr "polyTweak400.out" "polyMergeVert400.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert400.mp"
		;
connectAttr "polyMergeVert399.out" "polyTweak400.ip";
connectAttr "polyTweak401.out" "polyMergeVert401.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert401.mp"
		;
connectAttr "polyMergeVert400.out" "polyTweak401.ip";
connectAttr "polyTweak402.out" "polyMergeVert402.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert402.mp"
		;
connectAttr "polyMergeVert401.out" "polyTweak402.ip";
connectAttr "polyTweak403.out" "polyMergeVert403.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert403.mp"
		;
connectAttr "polyMergeVert402.out" "polyTweak403.ip";
connectAttr "polyTweak404.out" "polyMergeVert404.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert404.mp"
		;
connectAttr "polyMergeVert403.out" "polyTweak404.ip";
connectAttr "polyTweak405.out" "polyMergeVert405.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert405.mp"
		;
connectAttr "polyMergeVert404.out" "polyTweak405.ip";
connectAttr "polyTweak406.out" "polyMergeVert406.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert406.mp"
		;
connectAttr "polyMergeVert405.out" "polyTweak406.ip";
connectAttr "polyTweak407.out" "polyMergeVert407.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert407.mp"
		;
connectAttr "polyMergeVert406.out" "polyTweak407.ip";
connectAttr "polyTweak408.out" "polyMergeVert408.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert408.mp"
		;
connectAttr "polyMergeVert407.out" "polyTweak408.ip";
connectAttr "polyTweak409.out" "polyMergeVert409.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert409.mp"
		;
connectAttr "polyMergeVert408.out" "polyTweak409.ip";
connectAttr "polyTweak410.out" "polyMergeVert410.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert410.mp"
		;
connectAttr "polyMergeVert409.out" "polyTweak410.ip";
connectAttr "polyTweak411.out" "polyMergeVert411.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert411.mp"
		;
connectAttr "polyMergeVert410.out" "polyTweak411.ip";
connectAttr "polyTweak412.out" "polyMergeVert412.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert412.mp"
		;
connectAttr "polyMergeVert411.out" "polyTweak412.ip";
connectAttr "polyTweak413.out" "polyMergeVert413.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert413.mp"
		;
connectAttr "polyMergeVert412.out" "polyTweak413.ip";
connectAttr "polyTweak414.out" "polyMergeVert414.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert414.mp"
		;
connectAttr "polyMergeVert413.out" "polyTweak414.ip";
connectAttr "polyTweak415.out" "polyMergeVert415.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert415.mp"
		;
connectAttr "polyMergeVert414.out" "polyTweak415.ip";
connectAttr "polyTweak416.out" "polyMergeVert416.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert416.mp"
		;
connectAttr "polyMergeVert415.out" "polyTweak416.ip";
connectAttr "polyTweak417.out" "polyMergeVert417.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert417.mp"
		;
connectAttr "polyMergeVert416.out" "polyTweak417.ip";
connectAttr "polyTweak418.out" "polyMergeVert418.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert418.mp"
		;
connectAttr "polyMergeVert417.out" "polyTweak418.ip";
connectAttr "polyTweak419.out" "polyMergeVert419.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert419.mp"
		;
connectAttr "polyMergeVert418.out" "polyTweak419.ip";
connectAttr "polyTweak420.out" "polyMergeVert420.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert420.mp"
		;
connectAttr "polyMergeVert419.out" "polyTweak420.ip";
connectAttr "polyTweak421.out" "polyMergeVert421.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert421.mp"
		;
connectAttr "polyMergeVert420.out" "polyTweak421.ip";
connectAttr "polyTweak422.out" "polyMergeVert422.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert422.mp"
		;
connectAttr "polyMergeVert421.out" "polyTweak422.ip";
connectAttr "polyTweak423.out" "polyMergeVert423.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert423.mp"
		;
connectAttr "polyMergeVert422.out" "polyTweak423.ip";
connectAttr "polyTweak424.out" "polyMergeVert424.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert424.mp"
		;
connectAttr "polyMergeVert423.out" "polyTweak424.ip";
connectAttr "polyTweak425.out" "polyMergeVert425.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert425.mp"
		;
connectAttr "polyMergeVert424.out" "polyTweak425.ip";
connectAttr "polyTweak426.out" "polyMergeVert426.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert426.mp"
		;
connectAttr "polyMergeVert425.out" "polyTweak426.ip";
connectAttr "polyTweak427.out" "polyMergeVert427.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert427.mp"
		;
connectAttr "polyMergeVert426.out" "polyTweak427.ip";
connectAttr "polyTweak428.out" "polyMergeVert428.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert428.mp"
		;
connectAttr "polyMergeVert427.out" "polyTweak428.ip";
connectAttr "polyTweak429.out" "polyMergeVert429.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert429.mp"
		;
connectAttr "polyMergeVert428.out" "polyTweak429.ip";
connectAttr "polyTweak430.out" "polyMergeVert430.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert430.mp"
		;
connectAttr "polyMergeVert429.out" "polyTweak430.ip";
connectAttr "polyTweak431.out" "polyMergeVert431.ip";
connectAttr "|group10|pasted__pCube6|pasted__pCubeShape6.wm" "polyMergeVert431.mp"
		;
connectAttr "polyMergeVert430.out" "polyTweak431.ip";
connectAttr "polyTweak432.out" "polyMergeVert432.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert432.mp";
connectAttr "polyTweakUV15.out" "polyTweak432.ip";
connectAttr "polyTweak433.out" "polyMergeVert433.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert433.mp";
connectAttr "polyMergeVert432.out" "polyTweak433.ip";
connectAttr "polyTweak434.out" "polyMergeVert434.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert434.mp";
connectAttr "polyMergeVert433.out" "polyTweak434.ip";
connectAttr "polyTweak435.out" "polyMergeVert435.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert435.mp";
connectAttr "polyMergeVert434.out" "polyTweak435.ip";
connectAttr "polyTweak436.out" "polyMergeVert436.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert436.mp";
connectAttr "polyMergeVert435.out" "polyTweak436.ip";
connectAttr "polyTweak437.out" "polyMergeVert437.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert437.mp";
connectAttr "polyMergeVert436.out" "polyTweak437.ip";
connectAttr "polyTweak438.out" "polyMergeVert438.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert438.mp";
connectAttr "polyMergeVert437.out" "polyTweak438.ip";
connectAttr "polyTweak439.out" "polyMergeVert439.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert439.mp";
connectAttr "polyMergeVert438.out" "polyTweak439.ip";
connectAttr "polyTweak440.out" "polyMergeVert440.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert440.mp";
connectAttr "polyMergeVert439.out" "polyTweak440.ip";
connectAttr "polyTweak441.out" "polyMergeVert441.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert441.mp";
connectAttr "polyMergeVert440.out" "polyTweak441.ip";
connectAttr "polyTweak442.out" "polyMergeVert442.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert442.mp";
connectAttr "polyMergeVert441.out" "polyTweak442.ip";
connectAttr "polyTweak443.out" "polyMergeVert443.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert443.mp";
connectAttr "polyMergeVert442.out" "polyTweak443.ip";
connectAttr "polyTweak444.out" "polyMergeVert444.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert444.mp";
connectAttr "polyMergeVert443.out" "polyTweak444.ip";
connectAttr "polyTweak445.out" "polyMergeVert445.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert445.mp";
connectAttr "polyMergeVert444.out" "polyTweak445.ip";
connectAttr "polyTweak446.out" "polyMergeVert446.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert446.mp";
connectAttr "polyMergeVert445.out" "polyTweak446.ip";
connectAttr "polyTweak447.out" "polyMergeVert447.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert447.mp";
connectAttr "polyMergeVert446.out" "polyTweak447.ip";
connectAttr "polyTweak448.out" "polyMergeVert448.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert448.mp";
connectAttr "polyMergeVert447.out" "polyTweak448.ip";
connectAttr "polyTweak449.out" "polyMergeVert449.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert449.mp";
connectAttr "polyMergeVert448.out" "polyTweak449.ip";
connectAttr "polyTweak450.out" "polyMergeVert450.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert450.mp";
connectAttr "polyMergeVert449.out" "polyTweak450.ip";
connectAttr "polyTweak451.out" "polyMergeVert451.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert451.mp";
connectAttr "polyMergeVert450.out" "polyTweak451.ip";
connectAttr "polyTweak452.out" "polyMergeVert452.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert452.mp";
connectAttr "polyMergeVert451.out" "polyTweak452.ip";
connectAttr "polyTweak453.out" "polyMergeVert453.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert453.mp";
connectAttr "polyMergeVert452.out" "polyTweak453.ip";
connectAttr "polyTweak454.out" "polyMergeVert454.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert454.mp";
connectAttr "polyMergeVert453.out" "polyTweak454.ip";
connectAttr "polyTweak455.out" "polyMergeVert455.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert455.mp";
connectAttr "polyMergeVert454.out" "polyTweak455.ip";
connectAttr "polyTweak456.out" "polyMergeVert456.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert456.mp";
connectAttr "polyMergeVert455.out" "polyTweak456.ip";
connectAttr "polyTweak457.out" "polyMergeVert457.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert457.mp";
connectAttr "polyMergeVert456.out" "polyTweak457.ip";
connectAttr "polyTweak458.out" "polyMergeVert458.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert458.mp";
connectAttr "polyMergeVert457.out" "polyTweak458.ip";
connectAttr "polyTweak459.out" "polyMergeVert459.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert459.mp";
connectAttr "polyMergeVert458.out" "polyTweak459.ip";
connectAttr "polyTweak460.out" "polyMergeVert460.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert460.mp";
connectAttr "polyMergeVert459.out" "polyTweak460.ip";
connectAttr "polyTweak461.out" "polyMergeVert461.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert461.mp";
connectAttr "polyMergeVert460.out" "polyTweak461.ip";
connectAttr "polyTweak462.out" "polyMergeVert462.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert462.mp";
connectAttr "polyMergeVert461.out" "polyTweak462.ip";
connectAttr "polyTweak463.out" "polyMergeVert463.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert463.mp";
connectAttr "polyMergeVert462.out" "polyTweak463.ip";
connectAttr "polyTweak464.out" "polyMergeVert464.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert464.mp";
connectAttr "polyMergeVert463.out" "polyTweak464.ip";
connectAttr "polyTweak465.out" "polyMergeVert465.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert465.mp";
connectAttr "polyMergeVert464.out" "polyTweak465.ip";
connectAttr "polyTweak466.out" "polyMergeVert466.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert466.mp";
connectAttr "polyMergeVert465.out" "polyTweak466.ip";
connectAttr "polyTweak467.out" "polyMergeVert467.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert467.mp";
connectAttr "polyMergeVert466.out" "polyTweak467.ip";
connectAttr "polyTweak468.out" "polyMergeVert468.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert468.mp";
connectAttr "polyMergeVert467.out" "polyTweak468.ip";
connectAttr "polyTweak469.out" "polyMergeVert469.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert469.mp";
connectAttr "polyMergeVert468.out" "polyTweak469.ip";
connectAttr "polyTweak470.out" "polyMergeVert470.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert470.mp";
connectAttr "polyMergeVert469.out" "polyTweak470.ip";
connectAttr "polyTweak471.out" "polyMergeVert471.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert471.mp";
connectAttr "polyMergeVert470.out" "polyTweak471.ip";
connectAttr "polyTweak472.out" "polyMergeVert472.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert472.mp";
connectAttr "polyMergeVert471.out" "polyTweak472.ip";
connectAttr "polyTweak473.out" "polyMergeVert473.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert473.mp";
connectAttr "polyMergeVert472.out" "polyTweak473.ip";
connectAttr "polyTweak474.out" "polyMergeVert474.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert474.mp";
connectAttr "polyMergeVert473.out" "polyTweak474.ip";
connectAttr "polyTweak475.out" "polyMergeVert475.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert475.mp";
connectAttr "polyMergeVert474.out" "polyTweak475.ip";
connectAttr "polyTweak476.out" "polyMergeVert476.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert476.mp";
connectAttr "polyMergeVert475.out" "polyTweak476.ip";
connectAttr "polyTweak477.out" "polyMergeVert477.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert477.mp";
connectAttr "polyMergeVert476.out" "polyTweak477.ip";
connectAttr "polyTweak478.out" "polyMergeVert478.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert478.mp";
connectAttr "polyMergeVert477.out" "polyTweak478.ip";
connectAttr "polyTweak479.out" "polyMergeVert479.ip";
connectAttr "pCubeShape4.wm" "polyMergeVert479.mp";
connectAttr "polyMergeVert478.out" "polyTweak479.ip";
connectAttr "polyTweak480.out" "polyMergeVert480.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert480.mp";
connectAttr "polyTweakUV2.out" "polyTweak480.ip";
connectAttr "polyTweak481.out" "polyMergeVert481.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert481.mp";
connectAttr "polyMergeVert480.out" "polyTweak481.ip";
connectAttr "polyTweak482.out" "polyMergeVert482.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert482.mp";
connectAttr "polyMergeVert481.out" "polyTweak482.ip";
connectAttr "polyTweak483.out" "polyMergeVert483.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert483.mp";
connectAttr "polyMergeVert482.out" "polyTweak483.ip";
connectAttr "polyTweak484.out" "polyMergeVert484.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert484.mp";
connectAttr "polyMergeVert483.out" "polyTweak484.ip";
connectAttr "polyTweak485.out" "polyMergeVert485.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert485.mp";
connectAttr "polyMergeVert484.out" "polyTweak485.ip";
connectAttr "polyTweak486.out" "polyMergeVert486.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert486.mp";
connectAttr "polyMergeVert485.out" "polyTweak486.ip";
connectAttr "polyTweak487.out" "polyMergeVert487.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert487.mp";
connectAttr "polyMergeVert486.out" "polyTweak487.ip";
connectAttr "polyTweak488.out" "polyMergeVert488.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert488.mp";
connectAttr "polyMergeVert487.out" "polyTweak488.ip";
connectAttr "polyTweak489.out" "polyMergeVert489.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert489.mp";
connectAttr "polyMergeVert488.out" "polyTweak489.ip";
connectAttr "polyTweak490.out" "polyMergeVert490.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert490.mp";
connectAttr "polyMergeVert489.out" "polyTweak490.ip";
connectAttr "polyTweak491.out" "polyMergeVert491.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert491.mp";
connectAttr "polyMergeVert490.out" "polyTweak491.ip";
connectAttr "polyTweak492.out" "polyMergeVert492.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert492.mp";
connectAttr "polyMergeVert491.out" "polyTweak492.ip";
connectAttr "polyTweak493.out" "polyMergeVert493.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert493.mp";
connectAttr "polyMergeVert492.out" "polyTweak493.ip";
connectAttr "polyTweak494.out" "polyMergeVert494.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert494.mp";
connectAttr "polyMergeVert493.out" "polyTweak494.ip";
connectAttr "polyTweak495.out" "polyMergeVert495.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert495.mp";
connectAttr "polyMergeVert494.out" "polyTweak495.ip";
connectAttr "polyTweak496.out" "polyMergeVert496.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert496.mp";
connectAttr "polyMergeVert495.out" "polyTweak496.ip";
connectAttr "polyTweak497.out" "polyMergeVert497.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert497.mp";
connectAttr "polyMergeVert496.out" "polyTweak497.ip";
connectAttr "polyTweak498.out" "polyMergeVert498.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert498.mp";
connectAttr "polyMergeVert497.out" "polyTweak498.ip";
connectAttr "polyTweak499.out" "polyMergeVert499.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert499.mp";
connectAttr "polyMergeVert498.out" "polyTweak499.ip";
connectAttr "polyTweak500.out" "polyMergeVert500.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert500.mp";
connectAttr "polyMergeVert499.out" "polyTweak500.ip";
connectAttr "polyTweak501.out" "polyMergeVert501.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert501.mp";
connectAttr "polyMergeVert500.out" "polyTweak501.ip";
connectAttr "polyTweak502.out" "polyMergeVert502.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert502.mp";
connectAttr "polyMergeVert501.out" "polyTweak502.ip";
connectAttr "polyTweak503.out" "polyMergeVert503.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert503.mp";
connectAttr "polyMergeVert502.out" "polyTweak503.ip";
connectAttr "polyTweak504.out" "polyMergeVert504.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert504.mp";
connectAttr "polyMergeVert503.out" "polyTweak504.ip";
connectAttr "polyTweak505.out" "polyMergeVert505.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert505.mp";
connectAttr "polyMergeVert504.out" "polyTweak505.ip";
connectAttr "polyTweak506.out" "polyMergeVert506.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert506.mp";
connectAttr "polyMergeVert505.out" "polyTweak506.ip";
connectAttr "polyTweak507.out" "polyMergeVert507.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert507.mp";
connectAttr "polyMergeVert506.out" "polyTweak507.ip";
connectAttr "polyTweak508.out" "polyMergeVert508.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert508.mp";
connectAttr "polyMergeVert507.out" "polyTweak508.ip";
connectAttr "polyTweak509.out" "polyMergeVert509.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert509.mp";
connectAttr "polyMergeVert508.out" "polyTweak509.ip";
connectAttr "polyTweak510.out" "polyMergeVert510.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert510.mp";
connectAttr "polyMergeVert509.out" "polyTweak510.ip";
connectAttr "polyTweak511.out" "polyMergeVert511.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert511.mp";
connectAttr "polyMergeVert510.out" "polyTweak511.ip";
connectAttr "polyTweak512.out" "polyMergeVert512.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert512.mp";
connectAttr "polyMergeVert511.out" "polyTweak512.ip";
connectAttr "polyTweak513.out" "polyMergeVert513.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert513.mp";
connectAttr "polyMergeVert512.out" "polyTweak513.ip";
connectAttr "polyTweak514.out" "polyMergeVert514.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert514.mp";
connectAttr "polyMergeVert513.out" "polyTweak514.ip";
connectAttr "polyTweak515.out" "polyMergeVert515.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert515.mp";
connectAttr "polyMergeVert514.out" "polyTweak515.ip";
connectAttr "polyTweak516.out" "polyMergeVert516.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert516.mp";
connectAttr "polyMergeVert515.out" "polyTweak516.ip";
connectAttr "polyTweak517.out" "polyMergeVert517.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert517.mp";
connectAttr "polyMergeVert516.out" "polyTweak517.ip";
connectAttr "polyTweak518.out" "polyMergeVert518.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert518.mp";
connectAttr "polyMergeVert517.out" "polyTweak518.ip";
connectAttr "polyTweak519.out" "polyMergeVert519.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert519.mp";
connectAttr "polyMergeVert518.out" "polyTweak519.ip";
connectAttr "polyTweak520.out" "polyMergeVert520.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert520.mp";
connectAttr "polyMergeVert519.out" "polyTweak520.ip";
connectAttr "polyTweak521.out" "polyMergeVert521.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert521.mp";
connectAttr "polyMergeVert520.out" "polyTweak521.ip";
connectAttr "polyTweak522.out" "polyMergeVert522.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert522.mp";
connectAttr "polyMergeVert521.out" "polyTweak522.ip";
connectAttr "polyTweak523.out" "polyMergeVert523.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert523.mp";
connectAttr "polyMergeVert522.out" "polyTweak523.ip";
connectAttr "polyTweak524.out" "polyMergeVert524.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert524.mp";
connectAttr "polyMergeVert523.out" "polyTweak524.ip";
connectAttr "polyTweak525.out" "polyMergeVert525.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert525.mp";
connectAttr "polyMergeVert524.out" "polyTweak525.ip";
connectAttr "polyTweak526.out" "polyMergeVert526.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert526.mp";
connectAttr "polyMergeVert525.out" "polyTweak526.ip";
connectAttr "polyTweak527.out" "polyMergeVert527.ip";
connectAttr "pCubeShape5.wm" "polyMergeVert527.mp";
connectAttr "polyMergeVert526.out" "polyTweak527.ip";
connectAttr "pasted__polyTweak479.out" "pasted__polyMergeVert479.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert479.mp"
		;
connectAttr "pasted__polyMergeVert478.out" "pasted__polyTweak479.ip";
connectAttr "pasted__polyTweak478.out" "pasted__polyMergeVert478.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert478.mp"
		;
connectAttr "pasted__polyMergeVert477.out" "pasted__polyTweak478.ip";
connectAttr "pasted__polyTweak477.out" "pasted__polyMergeVert477.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert477.mp"
		;
connectAttr "pasted__polyMergeVert476.out" "pasted__polyTweak477.ip";
connectAttr "pasted__polyTweak476.out" "pasted__polyMergeVert476.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert476.mp"
		;
connectAttr "pasted__polyMergeVert475.out" "pasted__polyTweak476.ip";
connectAttr "pasted__polyTweak475.out" "pasted__polyMergeVert475.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert475.mp"
		;
connectAttr "pasted__polyMergeVert474.out" "pasted__polyTweak475.ip";
connectAttr "pasted__polyTweak474.out" "pasted__polyMergeVert474.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert474.mp"
		;
connectAttr "pasted__polyMergeVert473.out" "pasted__polyTweak474.ip";
connectAttr "pasted__polyTweak473.out" "pasted__polyMergeVert473.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert473.mp"
		;
connectAttr "pasted__polyMergeVert472.out" "pasted__polyTweak473.ip";
connectAttr "pasted__polyTweak472.out" "pasted__polyMergeVert472.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert472.mp"
		;
connectAttr "pasted__polyMergeVert471.out" "pasted__polyTweak472.ip";
connectAttr "pasted__polyTweak471.out" "pasted__polyMergeVert471.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert471.mp"
		;
connectAttr "pasted__polyMergeVert470.out" "pasted__polyTweak471.ip";
connectAttr "pasted__polyTweak470.out" "pasted__polyMergeVert470.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert470.mp"
		;
connectAttr "pasted__polyMergeVert469.out" "pasted__polyTweak470.ip";
connectAttr "pasted__polyTweak469.out" "pasted__polyMergeVert469.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert469.mp"
		;
connectAttr "pasted__polyMergeVert468.out" "pasted__polyTweak469.ip";
connectAttr "pasted__polyTweak468.out" "pasted__polyMergeVert468.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert468.mp"
		;
connectAttr "pasted__polyMergeVert467.out" "pasted__polyTweak468.ip";
connectAttr "pasted__polyTweak467.out" "pasted__polyMergeVert467.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert467.mp"
		;
connectAttr "pasted__polyMergeVert466.out" "pasted__polyTweak467.ip";
connectAttr "pasted__polyTweak466.out" "pasted__polyMergeVert466.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert466.mp"
		;
connectAttr "pasted__polyMergeVert465.out" "pasted__polyTweak466.ip";
connectAttr "pasted__polyTweak465.out" "pasted__polyMergeVert465.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert465.mp"
		;
connectAttr "pasted__polyMergeVert464.out" "pasted__polyTweak465.ip";
connectAttr "pasted__polyTweak464.out" "pasted__polyMergeVert464.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert464.mp"
		;
connectAttr "pasted__polyMergeVert463.out" "pasted__polyTweak464.ip";
connectAttr "pasted__polyTweak463.out" "pasted__polyMergeVert463.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert463.mp"
		;
connectAttr "pasted__polyMergeVert462.out" "pasted__polyTweak463.ip";
connectAttr "pasted__polyTweak462.out" "pasted__polyMergeVert462.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert462.mp"
		;
connectAttr "pasted__polyMergeVert461.out" "pasted__polyTweak462.ip";
connectAttr "pasted__polyTweak461.out" "pasted__polyMergeVert461.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert461.mp"
		;
connectAttr "pasted__polyMergeVert460.out" "pasted__polyTweak461.ip";
connectAttr "pasted__polyTweak460.out" "pasted__polyMergeVert460.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert460.mp"
		;
connectAttr "pasted__polyMergeVert459.out" "pasted__polyTweak460.ip";
connectAttr "pasted__polyTweak459.out" "pasted__polyMergeVert459.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert459.mp"
		;
connectAttr "pasted__polyMergeVert458.out" "pasted__polyTweak459.ip";
connectAttr "pasted__polyTweak458.out" "pasted__polyMergeVert458.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert458.mp"
		;
connectAttr "pasted__polyMergeVert457.out" "pasted__polyTweak458.ip";
connectAttr "pasted__polyTweak457.out" "pasted__polyMergeVert457.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert457.mp"
		;
connectAttr "pasted__polyMergeVert456.out" "pasted__polyTweak457.ip";
connectAttr "pasted__polyTweak456.out" "pasted__polyMergeVert456.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert456.mp"
		;
connectAttr "pasted__polyMergeVert455.out" "pasted__polyTweak456.ip";
connectAttr "pasted__polyTweak455.out" "pasted__polyMergeVert455.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert455.mp"
		;
connectAttr "pasted__polyMergeVert454.out" "pasted__polyTweak455.ip";
connectAttr "pasted__polyTweak454.out" "pasted__polyMergeVert454.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert454.mp"
		;
connectAttr "pasted__polyMergeVert453.out" "pasted__polyTweak454.ip";
connectAttr "pasted__polyTweak453.out" "pasted__polyMergeVert453.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert453.mp"
		;
connectAttr "pasted__polyMergeVert452.out" "pasted__polyTweak453.ip";
connectAttr "pasted__polyTweak452.out" "pasted__polyMergeVert452.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert452.mp"
		;
connectAttr "pasted__polyMergeVert451.out" "pasted__polyTweak452.ip";
connectAttr "pasted__polyTweak451.out" "pasted__polyMergeVert451.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert451.mp"
		;
connectAttr "pasted__polyMergeVert450.out" "pasted__polyTweak451.ip";
connectAttr "pasted__polyTweak450.out" "pasted__polyMergeVert450.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert450.mp"
		;
connectAttr "pasted__polyMergeVert449.out" "pasted__polyTweak450.ip";
connectAttr "pasted__polyTweak449.out" "pasted__polyMergeVert449.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert449.mp"
		;
connectAttr "pasted__polyMergeVert448.out" "pasted__polyTweak449.ip";
connectAttr "pasted__polyTweak448.out" "pasted__polyMergeVert448.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert448.mp"
		;
connectAttr "pasted__polyMergeVert447.out" "pasted__polyTweak448.ip";
connectAttr "pasted__polyTweak447.out" "pasted__polyMergeVert447.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert447.mp"
		;
connectAttr "pasted__polyMergeVert446.out" "pasted__polyTweak447.ip";
connectAttr "pasted__polyTweak446.out" "pasted__polyMergeVert446.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert446.mp"
		;
connectAttr "pasted__polyMergeVert445.out" "pasted__polyTweak446.ip";
connectAttr "pasted__polyTweak445.out" "pasted__polyMergeVert445.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert445.mp"
		;
connectAttr "pasted__polyMergeVert444.out" "pasted__polyTweak445.ip";
connectAttr "pasted__polyTweak444.out" "pasted__polyMergeVert444.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert444.mp"
		;
connectAttr "pasted__polyMergeVert443.out" "pasted__polyTweak444.ip";
connectAttr "pasted__polyTweak443.out" "pasted__polyMergeVert443.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert443.mp"
		;
connectAttr "pasted__polyMergeVert442.out" "pasted__polyTweak443.ip";
connectAttr "pasted__polyTweak442.out" "pasted__polyMergeVert442.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert442.mp"
		;
connectAttr "pasted__polyMergeVert441.out" "pasted__polyTweak442.ip";
connectAttr "pasted__polyTweak441.out" "pasted__polyMergeVert441.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert441.mp"
		;
connectAttr "pasted__polyMergeVert440.out" "pasted__polyTweak441.ip";
connectAttr "pasted__polyTweak440.out" "pasted__polyMergeVert440.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert440.mp"
		;
connectAttr "pasted__polyMergeVert439.out" "pasted__polyTweak440.ip";
connectAttr "pasted__polyTweak439.out" "pasted__polyMergeVert439.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert439.mp"
		;
connectAttr "pasted__polyMergeVert438.out" "pasted__polyTweak439.ip";
connectAttr "pasted__polyTweak438.out" "pasted__polyMergeVert438.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert438.mp"
		;
connectAttr "pasted__polyMergeVert437.out" "pasted__polyTweak438.ip";
connectAttr "pasted__polyTweak437.out" "pasted__polyMergeVert437.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert437.mp"
		;
connectAttr "pasted__polyMergeVert436.out" "pasted__polyTweak437.ip";
connectAttr "pasted__polyTweak436.out" "pasted__polyMergeVert436.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert436.mp"
		;
connectAttr "pasted__polyMergeVert435.out" "pasted__polyTweak436.ip";
connectAttr "pasted__polyTweak435.out" "pasted__polyMergeVert435.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert435.mp"
		;
connectAttr "pasted__polyMergeVert434.out" "pasted__polyTweak435.ip";
connectAttr "pasted__polyTweak434.out" "pasted__polyMergeVert434.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert434.mp"
		;
connectAttr "pasted__polyMergeVert433.out" "pasted__polyTweak434.ip";
connectAttr "pasted__polyTweak433.out" "pasted__polyMergeVert433.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert433.mp"
		;
connectAttr "pasted__polyMergeVert432.out" "pasted__polyTweak433.ip";
connectAttr "pasted__polyTweak432.out" "pasted__polyMergeVert432.ip";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert432.mp"
		;
connectAttr "pasted__polyTweakUV15.out" "pasted__polyTweak432.ip";
connectAttr "pasted__polyCube4.out" "pasted__polyTweakUV15.ip";
connectAttr "pasted__lambert3SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__lambert3.msg" "pasted__materialInfo2.m";
connectAttr "pasted__file1.msg" "pasted__materialInfo2.t" -na;
connectAttr "pasted__lambert3.oc" "pasted__lambert3SG.ss";
connectAttr "|group11|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG.dsm"
		 -na;
connectAttr "pasted__file1.oc" "pasted__lambert3.c";
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
connectAttr "pasted__polyTweak527.out" "pasted__polyMergeVert527.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert527.mp"
		;
connectAttr "pasted__polyMergeVert526.out" "pasted__polyTweak527.ip";
connectAttr "pasted__polyTweak526.out" "pasted__polyMergeVert526.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert526.mp"
		;
connectAttr "pasted__polyMergeVert525.out" "pasted__polyTweak526.ip";
connectAttr "pasted__polyTweak525.out" "pasted__polyMergeVert525.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert525.mp"
		;
connectAttr "pasted__polyMergeVert524.out" "pasted__polyTweak525.ip";
connectAttr "pasted__polyTweak524.out" "pasted__polyMergeVert524.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert524.mp"
		;
connectAttr "pasted__polyMergeVert523.out" "pasted__polyTweak524.ip";
connectAttr "pasted__polyTweak523.out" "pasted__polyMergeVert523.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert523.mp"
		;
connectAttr "pasted__polyMergeVert522.out" "pasted__polyTweak523.ip";
connectAttr "pasted__polyTweak522.out" "pasted__polyMergeVert522.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert522.mp"
		;
connectAttr "pasted__polyMergeVert521.out" "pasted__polyTweak522.ip";
connectAttr "pasted__polyTweak521.out" "pasted__polyMergeVert521.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert521.mp"
		;
connectAttr "pasted__polyMergeVert520.out" "pasted__polyTweak521.ip";
connectAttr "pasted__polyTweak520.out" "pasted__polyMergeVert520.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert520.mp"
		;
connectAttr "pasted__polyMergeVert519.out" "pasted__polyTweak520.ip";
connectAttr "pasted__polyTweak519.out" "pasted__polyMergeVert519.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert519.mp"
		;
connectAttr "pasted__polyMergeVert518.out" "pasted__polyTweak519.ip";
connectAttr "pasted__polyTweak518.out" "pasted__polyMergeVert518.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert518.mp"
		;
connectAttr "pasted__polyMergeVert517.out" "pasted__polyTweak518.ip";
connectAttr "pasted__polyTweak517.out" "pasted__polyMergeVert517.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert517.mp"
		;
connectAttr "pasted__polyMergeVert516.out" "pasted__polyTweak517.ip";
connectAttr "pasted__polyTweak516.out" "pasted__polyMergeVert516.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert516.mp"
		;
connectAttr "pasted__polyMergeVert515.out" "pasted__polyTweak516.ip";
connectAttr "pasted__polyTweak515.out" "pasted__polyMergeVert515.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert515.mp"
		;
connectAttr "pasted__polyMergeVert514.out" "pasted__polyTweak515.ip";
connectAttr "pasted__polyTweak514.out" "pasted__polyMergeVert514.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert514.mp"
		;
connectAttr "pasted__polyMergeVert513.out" "pasted__polyTweak514.ip";
connectAttr "pasted__polyTweak513.out" "pasted__polyMergeVert513.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert513.mp"
		;
connectAttr "pasted__polyMergeVert512.out" "pasted__polyTweak513.ip";
connectAttr "pasted__polyTweak512.out" "pasted__polyMergeVert512.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert512.mp"
		;
connectAttr "pasted__polyMergeVert511.out" "pasted__polyTweak512.ip";
connectAttr "pasted__polyTweak511.out" "pasted__polyMergeVert511.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert511.mp"
		;
connectAttr "pasted__polyMergeVert510.out" "pasted__polyTweak511.ip";
connectAttr "pasted__polyTweak510.out" "pasted__polyMergeVert510.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert510.mp"
		;
connectAttr "pasted__polyMergeVert509.out" "pasted__polyTweak510.ip";
connectAttr "pasted__polyTweak509.out" "pasted__polyMergeVert509.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert509.mp"
		;
connectAttr "pasted__polyMergeVert508.out" "pasted__polyTweak509.ip";
connectAttr "pasted__polyTweak508.out" "pasted__polyMergeVert508.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert508.mp"
		;
connectAttr "pasted__polyMergeVert507.out" "pasted__polyTweak508.ip";
connectAttr "pasted__polyTweak507.out" "pasted__polyMergeVert507.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert507.mp"
		;
connectAttr "pasted__polyMergeVert506.out" "pasted__polyTweak507.ip";
connectAttr "pasted__polyTweak506.out" "pasted__polyMergeVert506.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert506.mp"
		;
connectAttr "pasted__polyMergeVert505.out" "pasted__polyTweak506.ip";
connectAttr "pasted__polyTweak505.out" "pasted__polyMergeVert505.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert505.mp"
		;
connectAttr "pasted__polyMergeVert504.out" "pasted__polyTweak505.ip";
connectAttr "pasted__polyTweak504.out" "pasted__polyMergeVert504.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert504.mp"
		;
connectAttr "pasted__polyMergeVert503.out" "pasted__polyTweak504.ip";
connectAttr "pasted__polyTweak503.out" "pasted__polyMergeVert503.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert503.mp"
		;
connectAttr "pasted__polyMergeVert502.out" "pasted__polyTweak503.ip";
connectAttr "pasted__polyTweak502.out" "pasted__polyMergeVert502.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert502.mp"
		;
connectAttr "pasted__polyMergeVert501.out" "pasted__polyTweak502.ip";
connectAttr "pasted__polyTweak501.out" "pasted__polyMergeVert501.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert501.mp"
		;
connectAttr "pasted__polyMergeVert500.out" "pasted__polyTweak501.ip";
connectAttr "pasted__polyTweak500.out" "pasted__polyMergeVert500.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert500.mp"
		;
connectAttr "pasted__polyMergeVert499.out" "pasted__polyTweak500.ip";
connectAttr "pasted__polyTweak499.out" "pasted__polyMergeVert499.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert499.mp"
		;
connectAttr "pasted__polyMergeVert498.out" "pasted__polyTweak499.ip";
connectAttr "pasted__polyTweak498.out" "pasted__polyMergeVert498.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert498.mp"
		;
connectAttr "pasted__polyMergeVert497.out" "pasted__polyTweak498.ip";
connectAttr "pasted__polyTweak497.out" "pasted__polyMergeVert497.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert497.mp"
		;
connectAttr "pasted__polyMergeVert496.out" "pasted__polyTweak497.ip";
connectAttr "pasted__polyTweak496.out" "pasted__polyMergeVert496.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert496.mp"
		;
connectAttr "pasted__polyMergeVert495.out" "pasted__polyTweak496.ip";
connectAttr "pasted__polyTweak495.out" "pasted__polyMergeVert495.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert495.mp"
		;
connectAttr "pasted__polyMergeVert494.out" "pasted__polyTweak495.ip";
connectAttr "pasted__polyTweak494.out" "pasted__polyMergeVert494.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert494.mp"
		;
connectAttr "pasted__polyMergeVert493.out" "pasted__polyTweak494.ip";
connectAttr "pasted__polyTweak493.out" "pasted__polyMergeVert493.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert493.mp"
		;
connectAttr "pasted__polyMergeVert492.out" "pasted__polyTweak493.ip";
connectAttr "pasted__polyTweak492.out" "pasted__polyMergeVert492.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert492.mp"
		;
connectAttr "pasted__polyMergeVert491.out" "pasted__polyTweak492.ip";
connectAttr "pasted__polyTweak491.out" "pasted__polyMergeVert491.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert491.mp"
		;
connectAttr "pasted__polyMergeVert490.out" "pasted__polyTweak491.ip";
connectAttr "pasted__polyTweak490.out" "pasted__polyMergeVert490.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert490.mp"
		;
connectAttr "pasted__polyMergeVert489.out" "pasted__polyTweak490.ip";
connectAttr "pasted__polyTweak489.out" "pasted__polyMergeVert489.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert489.mp"
		;
connectAttr "pasted__polyMergeVert488.out" "pasted__polyTweak489.ip";
connectAttr "pasted__polyTweak488.out" "pasted__polyMergeVert488.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert488.mp"
		;
connectAttr "pasted__polyMergeVert487.out" "pasted__polyTweak488.ip";
connectAttr "pasted__polyTweak487.out" "pasted__polyMergeVert487.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert487.mp"
		;
connectAttr "pasted__polyMergeVert486.out" "pasted__polyTweak487.ip";
connectAttr "pasted__polyTweak486.out" "pasted__polyMergeVert486.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert486.mp"
		;
connectAttr "pasted__polyMergeVert485.out" "pasted__polyTweak486.ip";
connectAttr "pasted__polyTweak485.out" "pasted__polyMergeVert485.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert485.mp"
		;
connectAttr "pasted__polyMergeVert484.out" "pasted__polyTweak485.ip";
connectAttr "pasted__polyTweak484.out" "pasted__polyMergeVert484.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert484.mp"
		;
connectAttr "pasted__polyMergeVert483.out" "pasted__polyTweak484.ip";
connectAttr "pasted__polyTweak483.out" "pasted__polyMergeVert483.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert483.mp"
		;
connectAttr "pasted__polyMergeVert482.out" "pasted__polyTweak483.ip";
connectAttr "pasted__polyTweak482.out" "pasted__polyMergeVert482.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert482.mp"
		;
connectAttr "pasted__polyMergeVert481.out" "pasted__polyTweak482.ip";
connectAttr "pasted__polyTweak481.out" "pasted__polyMergeVert481.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert481.mp"
		;
connectAttr "pasted__polyMergeVert480.out" "pasted__polyTweak481.ip";
connectAttr "pasted__polyTweak480.out" "pasted__polyMergeVert480.ip";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert480.mp"
		;
connectAttr "pasted__polyTweakUV16.out" "pasted__polyTweak480.ip";
connectAttr "pasted__polyCube9.out" "pasted__polyTweakUV16.ip";
connectAttr "pasted__lambert3SG1.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__lambert4.msg" "pasted__materialInfo3.m";
connectAttr "pasted__file2.msg" "pasted__materialInfo3.t" -na;
connectAttr "pasted__lambert4.oc" "pasted__lambert3SG1.ss";
connectAttr "|group12|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG1.dsm"
		 -na;
connectAttr "pasted__file2.oc" "pasted__lambert4.c";
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
connectAttr "pasted__polyTweak575.out" "pasted__polyMergeVert575.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert575.mp"
		;
connectAttr "pasted__polyMergeVert574.out" "pasted__polyTweak575.ip";
connectAttr "pasted__polyTweak574.out" "pasted__polyMergeVert574.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert574.mp"
		;
connectAttr "pasted__polyMergeVert573.out" "pasted__polyTweak574.ip";
connectAttr "pasted__polyTweak573.out" "pasted__polyMergeVert573.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert573.mp"
		;
connectAttr "pasted__polyMergeVert572.out" "pasted__polyTweak573.ip";
connectAttr "pasted__polyTweak572.out" "pasted__polyMergeVert572.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert572.mp"
		;
connectAttr "pasted__polyMergeVert571.out" "pasted__polyTweak572.ip";
connectAttr "pasted__polyTweak571.out" "pasted__polyMergeVert571.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert571.mp"
		;
connectAttr "pasted__polyMergeVert570.out" "pasted__polyTweak571.ip";
connectAttr "pasted__polyTweak570.out" "pasted__polyMergeVert570.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert570.mp"
		;
connectAttr "pasted__polyMergeVert569.out" "pasted__polyTweak570.ip";
connectAttr "pasted__polyTweak569.out" "pasted__polyMergeVert569.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert569.mp"
		;
connectAttr "pasted__polyMergeVert568.out" "pasted__polyTweak569.ip";
connectAttr "pasted__polyTweak568.out" "pasted__polyMergeVert568.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert568.mp"
		;
connectAttr "pasted__polyMergeVert567.out" "pasted__polyTweak568.ip";
connectAttr "pasted__polyTweak567.out" "pasted__polyMergeVert567.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert567.mp"
		;
connectAttr "pasted__polyMergeVert566.out" "pasted__polyTweak567.ip";
connectAttr "pasted__polyTweak566.out" "pasted__polyMergeVert566.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert566.mp"
		;
connectAttr "pasted__polyMergeVert565.out" "pasted__polyTweak566.ip";
connectAttr "pasted__polyTweak565.out" "pasted__polyMergeVert565.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert565.mp"
		;
connectAttr "pasted__polyMergeVert564.out" "pasted__polyTweak565.ip";
connectAttr "pasted__polyTweak564.out" "pasted__polyMergeVert564.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert564.mp"
		;
connectAttr "pasted__polyMergeVert563.out" "pasted__polyTweak564.ip";
connectAttr "pasted__polyTweak563.out" "pasted__polyMergeVert563.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert563.mp"
		;
connectAttr "pasted__polyMergeVert562.out" "pasted__polyTweak563.ip";
connectAttr "pasted__polyTweak562.out" "pasted__polyMergeVert562.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert562.mp"
		;
connectAttr "pasted__polyMergeVert561.out" "pasted__polyTweak562.ip";
connectAttr "pasted__polyTweak561.out" "pasted__polyMergeVert561.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert561.mp"
		;
connectAttr "pasted__polyMergeVert560.out" "pasted__polyTweak561.ip";
connectAttr "pasted__polyTweak560.out" "pasted__polyMergeVert560.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert560.mp"
		;
connectAttr "pasted__polyMergeVert559.out" "pasted__polyTweak560.ip";
connectAttr "pasted__polyTweak559.out" "pasted__polyMergeVert559.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert559.mp"
		;
connectAttr "pasted__polyMergeVert558.out" "pasted__polyTweak559.ip";
connectAttr "pasted__polyTweak558.out" "pasted__polyMergeVert558.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert558.mp"
		;
connectAttr "pasted__polyMergeVert557.out" "pasted__polyTweak558.ip";
connectAttr "pasted__polyTweak557.out" "pasted__polyMergeVert557.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert557.mp"
		;
connectAttr "pasted__polyMergeVert556.out" "pasted__polyTweak557.ip";
connectAttr "pasted__polyTweak556.out" "pasted__polyMergeVert556.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert556.mp"
		;
connectAttr "pasted__polyMergeVert555.out" "pasted__polyTweak556.ip";
connectAttr "pasted__polyTweak555.out" "pasted__polyMergeVert555.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert555.mp"
		;
connectAttr "pasted__polyMergeVert554.out" "pasted__polyTweak555.ip";
connectAttr "pasted__polyTweak554.out" "pasted__polyMergeVert554.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert554.mp"
		;
connectAttr "pasted__polyMergeVert553.out" "pasted__polyTweak554.ip";
connectAttr "pasted__polyTweak553.out" "pasted__polyMergeVert553.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert553.mp"
		;
connectAttr "pasted__polyMergeVert552.out" "pasted__polyTweak553.ip";
connectAttr "pasted__polyTweak552.out" "pasted__polyMergeVert552.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert552.mp"
		;
connectAttr "pasted__polyMergeVert551.out" "pasted__polyTweak552.ip";
connectAttr "pasted__polyTweak551.out" "pasted__polyMergeVert551.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert551.mp"
		;
connectAttr "pasted__polyMergeVert550.out" "pasted__polyTweak551.ip";
connectAttr "pasted__polyTweak550.out" "pasted__polyMergeVert550.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert550.mp"
		;
connectAttr "pasted__polyMergeVert549.out" "pasted__polyTweak550.ip";
connectAttr "pasted__polyTweak549.out" "pasted__polyMergeVert549.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert549.mp"
		;
connectAttr "pasted__polyMergeVert548.out" "pasted__polyTweak549.ip";
connectAttr "pasted__polyTweak548.out" "pasted__polyMergeVert548.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert548.mp"
		;
connectAttr "pasted__polyMergeVert547.out" "pasted__polyTweak548.ip";
connectAttr "pasted__polyTweak547.out" "pasted__polyMergeVert547.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert547.mp"
		;
connectAttr "pasted__polyMergeVert546.out" "pasted__polyTweak547.ip";
connectAttr "pasted__polyTweak546.out" "pasted__polyMergeVert546.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert546.mp"
		;
connectAttr "pasted__polyMergeVert545.out" "pasted__polyTweak546.ip";
connectAttr "pasted__polyTweak545.out" "pasted__polyMergeVert545.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert545.mp"
		;
connectAttr "pasted__polyMergeVert544.out" "pasted__polyTweak545.ip";
connectAttr "pasted__polyTweak544.out" "pasted__polyMergeVert544.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert544.mp"
		;
connectAttr "pasted__polyMergeVert543.out" "pasted__polyTweak544.ip";
connectAttr "pasted__polyTweak543.out" "pasted__polyMergeVert543.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert543.mp"
		;
connectAttr "pasted__polyMergeVert542.out" "pasted__polyTweak543.ip";
connectAttr "pasted__polyTweak542.out" "pasted__polyMergeVert542.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert542.mp"
		;
connectAttr "pasted__polyMergeVert541.out" "pasted__polyTweak542.ip";
connectAttr "pasted__polyTweak541.out" "pasted__polyMergeVert541.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert541.mp"
		;
connectAttr "pasted__polyMergeVert540.out" "pasted__polyTweak541.ip";
connectAttr "pasted__polyTweak540.out" "pasted__polyMergeVert540.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert540.mp"
		;
connectAttr "pasted__polyMergeVert539.out" "pasted__polyTweak540.ip";
connectAttr "pasted__polyTweak539.out" "pasted__polyMergeVert539.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert539.mp"
		;
connectAttr "pasted__polyMergeVert538.out" "pasted__polyTweak539.ip";
connectAttr "pasted__polyTweak538.out" "pasted__polyMergeVert538.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert538.mp"
		;
connectAttr "pasted__polyMergeVert537.out" "pasted__polyTweak538.ip";
connectAttr "pasted__polyTweak537.out" "pasted__polyMergeVert537.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert537.mp"
		;
connectAttr "pasted__polyMergeVert536.out" "pasted__polyTweak537.ip";
connectAttr "pasted__polyTweak536.out" "pasted__polyMergeVert536.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert536.mp"
		;
connectAttr "pasted__polyMergeVert535.out" "pasted__polyTweak536.ip";
connectAttr "pasted__polyTweak535.out" "pasted__polyMergeVert535.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert535.mp"
		;
connectAttr "pasted__polyMergeVert534.out" "pasted__polyTweak535.ip";
connectAttr "pasted__polyTweak534.out" "pasted__polyMergeVert534.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert534.mp"
		;
connectAttr "pasted__polyMergeVert533.out" "pasted__polyTweak534.ip";
connectAttr "pasted__polyTweak533.out" "pasted__polyMergeVert533.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert533.mp"
		;
connectAttr "pasted__polyMergeVert532.out" "pasted__polyTweak533.ip";
connectAttr "pasted__polyTweak532.out" "pasted__polyMergeVert532.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert532.mp"
		;
connectAttr "pasted__polyMergeVert531.out" "pasted__polyTweak532.ip";
connectAttr "pasted__polyTweak531.out" "pasted__polyMergeVert531.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert531.mp"
		;
connectAttr "pasted__polyMergeVert530.out" "pasted__polyTweak531.ip";
connectAttr "pasted__polyTweak530.out" "pasted__polyMergeVert530.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert530.mp"
		;
connectAttr "pasted__polyMergeVert529.out" "pasted__polyTweak530.ip";
connectAttr "pasted__polyTweak529.out" "pasted__polyMergeVert529.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert529.mp"
		;
connectAttr "pasted__polyMergeVert528.out" "pasted__polyTweak529.ip";
connectAttr "pasted__polyTweak528.out" "pasted__polyMergeVert528.ip";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert528.mp"
		;
connectAttr "pasted__polyTweakUV17.out" "pasted__polyTweak528.ip";
connectAttr "pasted__polyCube10.out" "pasted__polyTweakUV17.ip";
connectAttr "pasted__lambert3SG2.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__lambert5.msg" "pasted__materialInfo4.m";
connectAttr "pasted__file3.msg" "pasted__materialInfo4.t" -na;
connectAttr "pasted__lambert5.oc" "pasted__lambert3SG2.ss";
connectAttr "|group13|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG2.dsm"
		 -na;
connectAttr "pasted__file3.oc" "pasted__lambert5.c";
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
connectAttr "pasted__polyTweak623.out" "pasted__polyMergeVert623.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert623.mp"
		;
connectAttr "pasted__polyMergeVert622.out" "pasted__polyTweak623.ip";
connectAttr "pasted__polyTweak622.out" "pasted__polyMergeVert622.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert622.mp"
		;
connectAttr "pasted__polyMergeVert621.out" "pasted__polyTweak622.ip";
connectAttr "pasted__polyTweak621.out" "pasted__polyMergeVert621.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert621.mp"
		;
connectAttr "pasted__polyMergeVert620.out" "pasted__polyTweak621.ip";
connectAttr "pasted__polyTweak620.out" "pasted__polyMergeVert620.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert620.mp"
		;
connectAttr "pasted__polyMergeVert619.out" "pasted__polyTweak620.ip";
connectAttr "pasted__polyTweak619.out" "pasted__polyMergeVert619.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert619.mp"
		;
connectAttr "pasted__polyMergeVert618.out" "pasted__polyTweak619.ip";
connectAttr "pasted__polyTweak618.out" "pasted__polyMergeVert618.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert618.mp"
		;
connectAttr "pasted__polyMergeVert617.out" "pasted__polyTweak618.ip";
connectAttr "pasted__polyTweak617.out" "pasted__polyMergeVert617.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert617.mp"
		;
connectAttr "pasted__polyMergeVert616.out" "pasted__polyTweak617.ip";
connectAttr "pasted__polyTweak616.out" "pasted__polyMergeVert616.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert616.mp"
		;
connectAttr "pasted__polyMergeVert615.out" "pasted__polyTweak616.ip";
connectAttr "pasted__polyTweak615.out" "pasted__polyMergeVert615.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert615.mp"
		;
connectAttr "pasted__polyMergeVert614.out" "pasted__polyTweak615.ip";
connectAttr "pasted__polyTweak614.out" "pasted__polyMergeVert614.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert614.mp"
		;
connectAttr "pasted__polyMergeVert613.out" "pasted__polyTweak614.ip";
connectAttr "pasted__polyTweak613.out" "pasted__polyMergeVert613.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert613.mp"
		;
connectAttr "pasted__polyMergeVert612.out" "pasted__polyTweak613.ip";
connectAttr "pasted__polyTweak612.out" "pasted__polyMergeVert612.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert612.mp"
		;
connectAttr "pasted__polyMergeVert611.out" "pasted__polyTweak612.ip";
connectAttr "pasted__polyTweak611.out" "pasted__polyMergeVert611.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert611.mp"
		;
connectAttr "pasted__polyMergeVert610.out" "pasted__polyTweak611.ip";
connectAttr "pasted__polyTweak610.out" "pasted__polyMergeVert610.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert610.mp"
		;
connectAttr "pasted__polyMergeVert609.out" "pasted__polyTweak610.ip";
connectAttr "pasted__polyTweak609.out" "pasted__polyMergeVert609.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert609.mp"
		;
connectAttr "pasted__polyMergeVert608.out" "pasted__polyTweak609.ip";
connectAttr "pasted__polyTweak608.out" "pasted__polyMergeVert608.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert608.mp"
		;
connectAttr "pasted__polyMergeVert607.out" "pasted__polyTweak608.ip";
connectAttr "pasted__polyTweak607.out" "pasted__polyMergeVert607.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert607.mp"
		;
connectAttr "pasted__polyMergeVert606.out" "pasted__polyTweak607.ip";
connectAttr "pasted__polyTweak606.out" "pasted__polyMergeVert606.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert606.mp"
		;
connectAttr "pasted__polyMergeVert605.out" "pasted__polyTweak606.ip";
connectAttr "pasted__polyTweak605.out" "pasted__polyMergeVert605.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert605.mp"
		;
connectAttr "pasted__polyMergeVert604.out" "pasted__polyTweak605.ip";
connectAttr "pasted__polyTweak604.out" "pasted__polyMergeVert604.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert604.mp"
		;
connectAttr "pasted__polyMergeVert603.out" "pasted__polyTweak604.ip";
connectAttr "pasted__polyTweak603.out" "pasted__polyMergeVert603.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert603.mp"
		;
connectAttr "pasted__polyMergeVert602.out" "pasted__polyTweak603.ip";
connectAttr "pasted__polyTweak602.out" "pasted__polyMergeVert602.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert602.mp"
		;
connectAttr "pasted__polyMergeVert601.out" "pasted__polyTweak602.ip";
connectAttr "pasted__polyTweak601.out" "pasted__polyMergeVert601.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert601.mp"
		;
connectAttr "pasted__polyMergeVert600.out" "pasted__polyTweak601.ip";
connectAttr "pasted__polyTweak600.out" "pasted__polyMergeVert600.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert600.mp"
		;
connectAttr "pasted__polyMergeVert599.out" "pasted__polyTweak600.ip";
connectAttr "pasted__polyTweak599.out" "pasted__polyMergeVert599.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert599.mp"
		;
connectAttr "pasted__polyMergeVert598.out" "pasted__polyTweak599.ip";
connectAttr "pasted__polyTweak598.out" "pasted__polyMergeVert598.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert598.mp"
		;
connectAttr "pasted__polyMergeVert597.out" "pasted__polyTweak598.ip";
connectAttr "pasted__polyTweak597.out" "pasted__polyMergeVert597.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert597.mp"
		;
connectAttr "pasted__polyMergeVert596.out" "pasted__polyTweak597.ip";
connectAttr "pasted__polyTweak596.out" "pasted__polyMergeVert596.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert596.mp"
		;
connectAttr "pasted__polyMergeVert595.out" "pasted__polyTweak596.ip";
connectAttr "pasted__polyTweak595.out" "pasted__polyMergeVert595.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert595.mp"
		;
connectAttr "pasted__polyMergeVert594.out" "pasted__polyTweak595.ip";
connectAttr "pasted__polyTweak594.out" "pasted__polyMergeVert594.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert594.mp"
		;
connectAttr "pasted__polyMergeVert593.out" "pasted__polyTweak594.ip";
connectAttr "pasted__polyTweak593.out" "pasted__polyMergeVert593.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert593.mp"
		;
connectAttr "pasted__polyMergeVert592.out" "pasted__polyTweak593.ip";
connectAttr "pasted__polyTweak592.out" "pasted__polyMergeVert592.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert592.mp"
		;
connectAttr "pasted__polyMergeVert591.out" "pasted__polyTweak592.ip";
connectAttr "pasted__polyTweak591.out" "pasted__polyMergeVert591.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert591.mp"
		;
connectAttr "pasted__polyMergeVert590.out" "pasted__polyTweak591.ip";
connectAttr "pasted__polyTweak590.out" "pasted__polyMergeVert590.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert590.mp"
		;
connectAttr "pasted__polyMergeVert589.out" "pasted__polyTweak590.ip";
connectAttr "pasted__polyTweak589.out" "pasted__polyMergeVert589.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert589.mp"
		;
connectAttr "pasted__polyMergeVert588.out" "pasted__polyTweak589.ip";
connectAttr "pasted__polyTweak588.out" "pasted__polyMergeVert588.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert588.mp"
		;
connectAttr "pasted__polyMergeVert587.out" "pasted__polyTweak588.ip";
connectAttr "pasted__polyTweak587.out" "pasted__polyMergeVert587.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert587.mp"
		;
connectAttr "pasted__polyMergeVert586.out" "pasted__polyTweak587.ip";
connectAttr "pasted__polyTweak586.out" "pasted__polyMergeVert586.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert586.mp"
		;
connectAttr "pasted__polyMergeVert585.out" "pasted__polyTweak586.ip";
connectAttr "pasted__polyTweak585.out" "pasted__polyMergeVert585.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert585.mp"
		;
connectAttr "pasted__polyMergeVert584.out" "pasted__polyTweak585.ip";
connectAttr "pasted__polyTweak584.out" "pasted__polyMergeVert584.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert584.mp"
		;
connectAttr "pasted__polyMergeVert583.out" "pasted__polyTweak584.ip";
connectAttr "pasted__polyTweak583.out" "pasted__polyMergeVert583.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert583.mp"
		;
connectAttr "pasted__polyMergeVert582.out" "pasted__polyTweak583.ip";
connectAttr "pasted__polyTweak582.out" "pasted__polyMergeVert582.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert582.mp"
		;
connectAttr "pasted__polyMergeVert581.out" "pasted__polyTweak582.ip";
connectAttr "pasted__polyTweak581.out" "pasted__polyMergeVert581.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert581.mp"
		;
connectAttr "pasted__polyMergeVert580.out" "pasted__polyTweak581.ip";
connectAttr "pasted__polyTweak580.out" "pasted__polyMergeVert580.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert580.mp"
		;
connectAttr "pasted__polyMergeVert579.out" "pasted__polyTweak580.ip";
connectAttr "pasted__polyTweak579.out" "pasted__polyMergeVert579.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert579.mp"
		;
connectAttr "pasted__polyMergeVert578.out" "pasted__polyTweak579.ip";
connectAttr "pasted__polyTweak578.out" "pasted__polyMergeVert578.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert578.mp"
		;
connectAttr "pasted__polyMergeVert577.out" "pasted__polyTweak578.ip";
connectAttr "pasted__polyTweak577.out" "pasted__polyMergeVert577.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert577.mp"
		;
connectAttr "pasted__polyMergeVert576.out" "pasted__polyTweak577.ip";
connectAttr "pasted__polyTweak576.out" "pasted__polyMergeVert576.ip";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert576.mp"
		;
connectAttr "pasted__polyTweakUV18.out" "pasted__polyTweak576.ip";
connectAttr "pasted__polyCube11.out" "pasted__polyTweakUV18.ip";
connectAttr "pasted__lambert3SG3.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__lambert6.msg" "pasted__materialInfo5.m";
connectAttr "pasted__file4.msg" "pasted__materialInfo5.t" -na;
connectAttr "pasted__lambert6.oc" "pasted__lambert3SG3.ss";
connectAttr "|group14|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG3.dsm"
		 -na;
connectAttr "pasted__file4.oc" "pasted__lambert6.c";
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
connectAttr "pasted__polyTweak671.out" "pasted__polyMergeVert671.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert671.mp"
		;
connectAttr "pasted__polyMergeVert670.out" "pasted__polyTweak671.ip";
connectAttr "pasted__polyTweak670.out" "pasted__polyMergeVert670.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert670.mp"
		;
connectAttr "pasted__polyMergeVert669.out" "pasted__polyTweak670.ip";
connectAttr "pasted__polyTweak669.out" "pasted__polyMergeVert669.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert669.mp"
		;
connectAttr "pasted__polyMergeVert668.out" "pasted__polyTweak669.ip";
connectAttr "pasted__polyTweak668.out" "pasted__polyMergeVert668.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert668.mp"
		;
connectAttr "pasted__polyMergeVert667.out" "pasted__polyTweak668.ip";
connectAttr "pasted__polyTweak667.out" "pasted__polyMergeVert667.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert667.mp"
		;
connectAttr "pasted__polyMergeVert666.out" "pasted__polyTweak667.ip";
connectAttr "pasted__polyTweak666.out" "pasted__polyMergeVert666.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert666.mp"
		;
connectAttr "pasted__polyMergeVert665.out" "pasted__polyTweak666.ip";
connectAttr "pasted__polyTweak665.out" "pasted__polyMergeVert665.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert665.mp"
		;
connectAttr "pasted__polyMergeVert664.out" "pasted__polyTweak665.ip";
connectAttr "pasted__polyTweak664.out" "pasted__polyMergeVert664.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert664.mp"
		;
connectAttr "pasted__polyMergeVert663.out" "pasted__polyTweak664.ip";
connectAttr "pasted__polyTweak663.out" "pasted__polyMergeVert663.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert663.mp"
		;
connectAttr "pasted__polyMergeVert662.out" "pasted__polyTweak663.ip";
connectAttr "pasted__polyTweak662.out" "pasted__polyMergeVert662.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert662.mp"
		;
connectAttr "pasted__polyMergeVert661.out" "pasted__polyTweak662.ip";
connectAttr "pasted__polyTweak661.out" "pasted__polyMergeVert661.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert661.mp"
		;
connectAttr "pasted__polyMergeVert660.out" "pasted__polyTweak661.ip";
connectAttr "pasted__polyTweak660.out" "pasted__polyMergeVert660.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert660.mp"
		;
connectAttr "pasted__polyMergeVert659.out" "pasted__polyTweak660.ip";
connectAttr "pasted__polyTweak659.out" "pasted__polyMergeVert659.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert659.mp"
		;
connectAttr "pasted__polyMergeVert658.out" "pasted__polyTweak659.ip";
connectAttr "pasted__polyTweak658.out" "pasted__polyMergeVert658.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert658.mp"
		;
connectAttr "pasted__polyMergeVert657.out" "pasted__polyTweak658.ip";
connectAttr "pasted__polyTweak657.out" "pasted__polyMergeVert657.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert657.mp"
		;
connectAttr "pasted__polyMergeVert656.out" "pasted__polyTweak657.ip";
connectAttr "pasted__polyTweak656.out" "pasted__polyMergeVert656.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert656.mp"
		;
connectAttr "pasted__polyMergeVert655.out" "pasted__polyTweak656.ip";
connectAttr "pasted__polyTweak655.out" "pasted__polyMergeVert655.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert655.mp"
		;
connectAttr "pasted__polyMergeVert654.out" "pasted__polyTweak655.ip";
connectAttr "pasted__polyTweak654.out" "pasted__polyMergeVert654.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert654.mp"
		;
connectAttr "pasted__polyMergeVert653.out" "pasted__polyTweak654.ip";
connectAttr "pasted__polyTweak653.out" "pasted__polyMergeVert653.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert653.mp"
		;
connectAttr "pasted__polyMergeVert652.out" "pasted__polyTweak653.ip";
connectAttr "pasted__polyTweak652.out" "pasted__polyMergeVert652.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert652.mp"
		;
connectAttr "pasted__polyMergeVert651.out" "pasted__polyTweak652.ip";
connectAttr "pasted__polyTweak651.out" "pasted__polyMergeVert651.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert651.mp"
		;
connectAttr "pasted__polyMergeVert650.out" "pasted__polyTweak651.ip";
connectAttr "pasted__polyTweak650.out" "pasted__polyMergeVert650.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert650.mp"
		;
connectAttr "pasted__polyMergeVert649.out" "pasted__polyTweak650.ip";
connectAttr "pasted__polyTweak649.out" "pasted__polyMergeVert649.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert649.mp"
		;
connectAttr "pasted__polyMergeVert648.out" "pasted__polyTweak649.ip";
connectAttr "pasted__polyTweak648.out" "pasted__polyMergeVert648.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert648.mp"
		;
connectAttr "pasted__polyMergeVert647.out" "pasted__polyTweak648.ip";
connectAttr "pasted__polyTweak647.out" "pasted__polyMergeVert647.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert647.mp"
		;
connectAttr "pasted__polyMergeVert646.out" "pasted__polyTweak647.ip";
connectAttr "pasted__polyTweak646.out" "pasted__polyMergeVert646.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert646.mp"
		;
connectAttr "pasted__polyMergeVert645.out" "pasted__polyTweak646.ip";
connectAttr "pasted__polyTweak645.out" "pasted__polyMergeVert645.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert645.mp"
		;
connectAttr "pasted__polyMergeVert644.out" "pasted__polyTweak645.ip";
connectAttr "pasted__polyTweak644.out" "pasted__polyMergeVert644.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert644.mp"
		;
connectAttr "pasted__polyMergeVert643.out" "pasted__polyTweak644.ip";
connectAttr "pasted__polyTweak643.out" "pasted__polyMergeVert643.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert643.mp"
		;
connectAttr "pasted__polyMergeVert642.out" "pasted__polyTweak643.ip";
connectAttr "pasted__polyTweak642.out" "pasted__polyMergeVert642.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert642.mp"
		;
connectAttr "pasted__polyMergeVert641.out" "pasted__polyTweak642.ip";
connectAttr "pasted__polyTweak641.out" "pasted__polyMergeVert641.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert641.mp"
		;
connectAttr "pasted__polyMergeVert640.out" "pasted__polyTweak641.ip";
connectAttr "pasted__polyTweak640.out" "pasted__polyMergeVert640.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert640.mp"
		;
connectAttr "pasted__polyMergeVert639.out" "pasted__polyTweak640.ip";
connectAttr "pasted__polyTweak639.out" "pasted__polyMergeVert639.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert639.mp"
		;
connectAttr "pasted__polyMergeVert638.out" "pasted__polyTweak639.ip";
connectAttr "pasted__polyTweak638.out" "pasted__polyMergeVert638.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert638.mp"
		;
connectAttr "pasted__polyMergeVert637.out" "pasted__polyTweak638.ip";
connectAttr "pasted__polyTweak637.out" "pasted__polyMergeVert637.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert637.mp"
		;
connectAttr "pasted__polyMergeVert636.out" "pasted__polyTweak637.ip";
connectAttr "pasted__polyTweak636.out" "pasted__polyMergeVert636.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert636.mp"
		;
connectAttr "pasted__polyMergeVert635.out" "pasted__polyTweak636.ip";
connectAttr "pasted__polyTweak635.out" "pasted__polyMergeVert635.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert635.mp"
		;
connectAttr "pasted__polyMergeVert634.out" "pasted__polyTweak635.ip";
connectAttr "pasted__polyTweak634.out" "pasted__polyMergeVert634.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert634.mp"
		;
connectAttr "pasted__polyMergeVert633.out" "pasted__polyTweak634.ip";
connectAttr "pasted__polyTweak633.out" "pasted__polyMergeVert633.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert633.mp"
		;
connectAttr "pasted__polyMergeVert632.out" "pasted__polyTweak633.ip";
connectAttr "pasted__polyTweak632.out" "pasted__polyMergeVert632.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert632.mp"
		;
connectAttr "pasted__polyMergeVert631.out" "pasted__polyTweak632.ip";
connectAttr "pasted__polyTweak631.out" "pasted__polyMergeVert631.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert631.mp"
		;
connectAttr "pasted__polyMergeVert630.out" "pasted__polyTweak631.ip";
connectAttr "pasted__polyTweak630.out" "pasted__polyMergeVert630.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert630.mp"
		;
connectAttr "pasted__polyMergeVert629.out" "pasted__polyTweak630.ip";
connectAttr "pasted__polyTweak629.out" "pasted__polyMergeVert629.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert629.mp"
		;
connectAttr "pasted__polyMergeVert628.out" "pasted__polyTweak629.ip";
connectAttr "pasted__polyTweak628.out" "pasted__polyMergeVert628.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert628.mp"
		;
connectAttr "pasted__polyMergeVert627.out" "pasted__polyTweak628.ip";
connectAttr "pasted__polyTweak627.out" "pasted__polyMergeVert627.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert627.mp"
		;
connectAttr "pasted__polyMergeVert626.out" "pasted__polyTweak627.ip";
connectAttr "pasted__polyTweak626.out" "pasted__polyMergeVert626.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert626.mp"
		;
connectAttr "pasted__polyMergeVert625.out" "pasted__polyTweak626.ip";
connectAttr "pasted__polyTweak625.out" "pasted__polyMergeVert625.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert625.mp"
		;
connectAttr "pasted__polyMergeVert624.out" "pasted__polyTweak625.ip";
connectAttr "pasted__polyTweak624.out" "pasted__polyMergeVert624.ip";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert624.mp"
		;
connectAttr "pasted__polyTweakUV19.out" "pasted__polyTweak624.ip";
connectAttr "pasted__polyCube12.out" "pasted__polyTweakUV19.ip";
connectAttr "pasted__lambert3SG4.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__lambert7.msg" "pasted__materialInfo6.m";
connectAttr "pasted__file5.msg" "pasted__materialInfo6.t" -na;
connectAttr "pasted__lambert7.oc" "pasted__lambert3SG4.ss";
connectAttr "|group15|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG4.dsm"
		 -na;
connectAttr "pasted__file5.oc" "pasted__lambert7.c";
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
connectAttr "pasted__polyTweak719.out" "pasted__polyMergeVert719.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert719.mp"
		;
connectAttr "pasted__polyMergeVert718.out" "pasted__polyTweak719.ip";
connectAttr "pasted__polyTweak718.out" "pasted__polyMergeVert718.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert718.mp"
		;
connectAttr "pasted__polyMergeVert717.out" "pasted__polyTweak718.ip";
connectAttr "pasted__polyTweak717.out" "pasted__polyMergeVert717.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert717.mp"
		;
connectAttr "pasted__polyMergeVert716.out" "pasted__polyTweak717.ip";
connectAttr "pasted__polyTweak716.out" "pasted__polyMergeVert716.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert716.mp"
		;
connectAttr "pasted__polyMergeVert715.out" "pasted__polyTweak716.ip";
connectAttr "pasted__polyTweak715.out" "pasted__polyMergeVert715.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert715.mp"
		;
connectAttr "pasted__polyMergeVert714.out" "pasted__polyTweak715.ip";
connectAttr "pasted__polyTweak714.out" "pasted__polyMergeVert714.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert714.mp"
		;
connectAttr "pasted__polyMergeVert713.out" "pasted__polyTweak714.ip";
connectAttr "pasted__polyTweak713.out" "pasted__polyMergeVert713.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert713.mp"
		;
connectAttr "pasted__polyMergeVert712.out" "pasted__polyTweak713.ip";
connectAttr "pasted__polyTweak712.out" "pasted__polyMergeVert712.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert712.mp"
		;
connectAttr "pasted__polyMergeVert711.out" "pasted__polyTweak712.ip";
connectAttr "pasted__polyTweak711.out" "pasted__polyMergeVert711.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert711.mp"
		;
connectAttr "pasted__polyMergeVert710.out" "pasted__polyTweak711.ip";
connectAttr "pasted__polyTweak710.out" "pasted__polyMergeVert710.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert710.mp"
		;
connectAttr "pasted__polyMergeVert709.out" "pasted__polyTweak710.ip";
connectAttr "pasted__polyTweak709.out" "pasted__polyMergeVert709.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert709.mp"
		;
connectAttr "pasted__polyMergeVert708.out" "pasted__polyTweak709.ip";
connectAttr "pasted__polyTweak708.out" "pasted__polyMergeVert708.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert708.mp"
		;
connectAttr "pasted__polyMergeVert707.out" "pasted__polyTweak708.ip";
connectAttr "pasted__polyTweak707.out" "pasted__polyMergeVert707.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert707.mp"
		;
connectAttr "pasted__polyMergeVert706.out" "pasted__polyTweak707.ip";
connectAttr "pasted__polyTweak706.out" "pasted__polyMergeVert706.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert706.mp"
		;
connectAttr "pasted__polyMergeVert705.out" "pasted__polyTweak706.ip";
connectAttr "pasted__polyTweak705.out" "pasted__polyMergeVert705.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert705.mp"
		;
connectAttr "pasted__polyMergeVert704.out" "pasted__polyTweak705.ip";
connectAttr "pasted__polyTweak704.out" "pasted__polyMergeVert704.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert704.mp"
		;
connectAttr "pasted__polyMergeVert703.out" "pasted__polyTweak704.ip";
connectAttr "pasted__polyTweak703.out" "pasted__polyMergeVert703.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert703.mp"
		;
connectAttr "pasted__polyMergeVert702.out" "pasted__polyTweak703.ip";
connectAttr "pasted__polyTweak702.out" "pasted__polyMergeVert702.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert702.mp"
		;
connectAttr "pasted__polyMergeVert701.out" "pasted__polyTweak702.ip";
connectAttr "pasted__polyTweak701.out" "pasted__polyMergeVert701.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert701.mp"
		;
connectAttr "pasted__polyMergeVert700.out" "pasted__polyTweak701.ip";
connectAttr "pasted__polyTweak700.out" "pasted__polyMergeVert700.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert700.mp"
		;
connectAttr "pasted__polyMergeVert699.out" "pasted__polyTweak700.ip";
connectAttr "pasted__polyTweak699.out" "pasted__polyMergeVert699.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert699.mp"
		;
connectAttr "pasted__polyMergeVert698.out" "pasted__polyTweak699.ip";
connectAttr "pasted__polyTweak698.out" "pasted__polyMergeVert698.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert698.mp"
		;
connectAttr "pasted__polyMergeVert697.out" "pasted__polyTweak698.ip";
connectAttr "pasted__polyTweak697.out" "pasted__polyMergeVert697.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert697.mp"
		;
connectAttr "pasted__polyMergeVert696.out" "pasted__polyTweak697.ip";
connectAttr "pasted__polyTweak696.out" "pasted__polyMergeVert696.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert696.mp"
		;
connectAttr "pasted__polyMergeVert695.out" "pasted__polyTweak696.ip";
connectAttr "pasted__polyTweak695.out" "pasted__polyMergeVert695.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert695.mp"
		;
connectAttr "pasted__polyMergeVert694.out" "pasted__polyTweak695.ip";
connectAttr "pasted__polyTweak694.out" "pasted__polyMergeVert694.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert694.mp"
		;
connectAttr "pasted__polyMergeVert693.out" "pasted__polyTweak694.ip";
connectAttr "pasted__polyTweak693.out" "pasted__polyMergeVert693.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert693.mp"
		;
connectAttr "pasted__polyMergeVert692.out" "pasted__polyTweak693.ip";
connectAttr "pasted__polyTweak692.out" "pasted__polyMergeVert692.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert692.mp"
		;
connectAttr "pasted__polyMergeVert691.out" "pasted__polyTweak692.ip";
connectAttr "pasted__polyTweak691.out" "pasted__polyMergeVert691.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert691.mp"
		;
connectAttr "pasted__polyMergeVert690.out" "pasted__polyTweak691.ip";
connectAttr "pasted__polyTweak690.out" "pasted__polyMergeVert690.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert690.mp"
		;
connectAttr "pasted__polyMergeVert689.out" "pasted__polyTweak690.ip";
connectAttr "pasted__polyTweak689.out" "pasted__polyMergeVert689.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert689.mp"
		;
connectAttr "pasted__polyMergeVert688.out" "pasted__polyTweak689.ip";
connectAttr "pasted__polyTweak688.out" "pasted__polyMergeVert688.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert688.mp"
		;
connectAttr "pasted__polyMergeVert687.out" "pasted__polyTweak688.ip";
connectAttr "pasted__polyTweak687.out" "pasted__polyMergeVert687.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert687.mp"
		;
connectAttr "pasted__polyMergeVert686.out" "pasted__polyTweak687.ip";
connectAttr "pasted__polyTweak686.out" "pasted__polyMergeVert686.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert686.mp"
		;
connectAttr "pasted__polyMergeVert685.out" "pasted__polyTweak686.ip";
connectAttr "pasted__polyTweak685.out" "pasted__polyMergeVert685.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert685.mp"
		;
connectAttr "pasted__polyMergeVert684.out" "pasted__polyTweak685.ip";
connectAttr "pasted__polyTweak684.out" "pasted__polyMergeVert684.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert684.mp"
		;
connectAttr "pasted__polyMergeVert683.out" "pasted__polyTweak684.ip";
connectAttr "pasted__polyTweak683.out" "pasted__polyMergeVert683.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert683.mp"
		;
connectAttr "pasted__polyMergeVert682.out" "pasted__polyTweak683.ip";
connectAttr "pasted__polyTweak682.out" "pasted__polyMergeVert682.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert682.mp"
		;
connectAttr "pasted__polyMergeVert681.out" "pasted__polyTweak682.ip";
connectAttr "pasted__polyTweak681.out" "pasted__polyMergeVert681.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert681.mp"
		;
connectAttr "pasted__polyMergeVert680.out" "pasted__polyTweak681.ip";
connectAttr "pasted__polyTweak680.out" "pasted__polyMergeVert680.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert680.mp"
		;
connectAttr "pasted__polyMergeVert679.out" "pasted__polyTweak680.ip";
connectAttr "pasted__polyTweak679.out" "pasted__polyMergeVert679.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert679.mp"
		;
connectAttr "pasted__polyMergeVert678.out" "pasted__polyTweak679.ip";
connectAttr "pasted__polyTweak678.out" "pasted__polyMergeVert678.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert678.mp"
		;
connectAttr "pasted__polyMergeVert677.out" "pasted__polyTweak678.ip";
connectAttr "pasted__polyTweak677.out" "pasted__polyMergeVert677.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert677.mp"
		;
connectAttr "pasted__polyMergeVert676.out" "pasted__polyTweak677.ip";
connectAttr "pasted__polyTweak676.out" "pasted__polyMergeVert676.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert676.mp"
		;
connectAttr "pasted__polyMergeVert675.out" "pasted__polyTweak676.ip";
connectAttr "pasted__polyTweak675.out" "pasted__polyMergeVert675.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert675.mp"
		;
connectAttr "pasted__polyMergeVert674.out" "pasted__polyTweak675.ip";
connectAttr "pasted__polyTweak674.out" "pasted__polyMergeVert674.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert674.mp"
		;
connectAttr "pasted__polyMergeVert673.out" "pasted__polyTweak674.ip";
connectAttr "pasted__polyTweak673.out" "pasted__polyMergeVert673.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert673.mp"
		;
connectAttr "pasted__polyMergeVert672.out" "pasted__polyTweak673.ip";
connectAttr "pasted__polyTweak672.out" "pasted__polyMergeVert672.ip";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert672.mp"
		;
connectAttr "pasted__polyTweakUV20.out" "pasted__polyTweak672.ip";
connectAttr "pasted__polyCube13.out" "pasted__polyTweakUV20.ip";
connectAttr "pasted__lambert3SG5.msg" "pasted__materialInfo7.sg";
connectAttr "pasted__lambert8.msg" "pasted__materialInfo7.m";
connectAttr "pasted__file6.msg" "pasted__materialInfo7.t" -na;
connectAttr "pasted__lambert8.oc" "pasted__lambert3SG5.ss";
connectAttr "|group16|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG5.dsm"
		 -na;
connectAttr "pasted__file6.oc" "pasted__lambert8.c";
connectAttr "pasted__place2dTexture6.c" "pasted__file6.c";
connectAttr "pasted__place2dTexture6.tf" "pasted__file6.tf";
connectAttr "pasted__place2dTexture6.rf" "pasted__file6.rf";
connectAttr "pasted__place2dTexture6.mu" "pasted__file6.mu";
connectAttr "pasted__place2dTexture6.mv" "pasted__file6.mv";
connectAttr "pasted__place2dTexture6.s" "pasted__file6.s";
connectAttr "pasted__place2dTexture6.wu" "pasted__file6.wu";
connectAttr "pasted__place2dTexture6.wv" "pasted__file6.wv";
connectAttr "pasted__place2dTexture6.re" "pasted__file6.re";
connectAttr "pasted__place2dTexture6.of" "pasted__file6.of";
connectAttr "pasted__place2dTexture6.r" "pasted__file6.ro";
connectAttr "pasted__place2dTexture6.n" "pasted__file6.n";
connectAttr "pasted__place2dTexture6.vt1" "pasted__file6.vt1";
connectAttr "pasted__place2dTexture6.vt2" "pasted__file6.vt2";
connectAttr "pasted__place2dTexture6.vt3" "pasted__file6.vt3";
connectAttr "pasted__place2dTexture6.vc1" "pasted__file6.vc1";
connectAttr "pasted__place2dTexture6.o" "pasted__file6.uv";
connectAttr "pasted__place2dTexture6.ofs" "pasted__file6.fs";
connectAttr "pasted__polyTweak767.out" "pasted__polyMergeVert767.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert767.mp"
		;
connectAttr "pasted__polyMergeVert766.out" "pasted__polyTweak767.ip";
connectAttr "pasted__polyTweak766.out" "pasted__polyMergeVert766.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert766.mp"
		;
connectAttr "pasted__polyMergeVert765.out" "pasted__polyTweak766.ip";
connectAttr "pasted__polyTweak765.out" "pasted__polyMergeVert765.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert765.mp"
		;
connectAttr "pasted__polyMergeVert764.out" "pasted__polyTweak765.ip";
connectAttr "pasted__polyTweak764.out" "pasted__polyMergeVert764.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert764.mp"
		;
connectAttr "pasted__polyMergeVert763.out" "pasted__polyTweak764.ip";
connectAttr "pasted__polyTweak763.out" "pasted__polyMergeVert763.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert763.mp"
		;
connectAttr "pasted__polyMergeVert762.out" "pasted__polyTweak763.ip";
connectAttr "pasted__polyTweak762.out" "pasted__polyMergeVert762.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert762.mp"
		;
connectAttr "pasted__polyMergeVert761.out" "pasted__polyTweak762.ip";
connectAttr "pasted__polyTweak761.out" "pasted__polyMergeVert761.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert761.mp"
		;
connectAttr "pasted__polyMergeVert760.out" "pasted__polyTweak761.ip";
connectAttr "pasted__polyTweak760.out" "pasted__polyMergeVert760.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert760.mp"
		;
connectAttr "pasted__polyMergeVert759.out" "pasted__polyTweak760.ip";
connectAttr "pasted__polyTweak759.out" "pasted__polyMergeVert759.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert759.mp"
		;
connectAttr "pasted__polyMergeVert758.out" "pasted__polyTweak759.ip";
connectAttr "pasted__polyTweak758.out" "pasted__polyMergeVert758.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert758.mp"
		;
connectAttr "pasted__polyMergeVert757.out" "pasted__polyTweak758.ip";
connectAttr "pasted__polyTweak757.out" "pasted__polyMergeVert757.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert757.mp"
		;
connectAttr "pasted__polyMergeVert756.out" "pasted__polyTweak757.ip";
connectAttr "pasted__polyTweak756.out" "pasted__polyMergeVert756.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert756.mp"
		;
connectAttr "pasted__polyMergeVert755.out" "pasted__polyTweak756.ip";
connectAttr "pasted__polyTweak755.out" "pasted__polyMergeVert755.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert755.mp"
		;
connectAttr "pasted__polyMergeVert754.out" "pasted__polyTweak755.ip";
connectAttr "pasted__polyTweak754.out" "pasted__polyMergeVert754.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert754.mp"
		;
connectAttr "pasted__polyMergeVert753.out" "pasted__polyTweak754.ip";
connectAttr "pasted__polyTweak753.out" "pasted__polyMergeVert753.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert753.mp"
		;
connectAttr "pasted__polyMergeVert752.out" "pasted__polyTweak753.ip";
connectAttr "pasted__polyTweak752.out" "pasted__polyMergeVert752.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert752.mp"
		;
connectAttr "pasted__polyMergeVert751.out" "pasted__polyTweak752.ip";
connectAttr "pasted__polyTweak751.out" "pasted__polyMergeVert751.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert751.mp"
		;
connectAttr "pasted__polyMergeVert750.out" "pasted__polyTweak751.ip";
connectAttr "pasted__polyTweak750.out" "pasted__polyMergeVert750.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert750.mp"
		;
connectAttr "pasted__polyMergeVert749.out" "pasted__polyTweak750.ip";
connectAttr "pasted__polyTweak749.out" "pasted__polyMergeVert749.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert749.mp"
		;
connectAttr "pasted__polyMergeVert748.out" "pasted__polyTweak749.ip";
connectAttr "pasted__polyTweak748.out" "pasted__polyMergeVert748.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert748.mp"
		;
connectAttr "pasted__polyMergeVert747.out" "pasted__polyTweak748.ip";
connectAttr "pasted__polyTweak747.out" "pasted__polyMergeVert747.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert747.mp"
		;
connectAttr "pasted__polyMergeVert746.out" "pasted__polyTweak747.ip";
connectAttr "pasted__polyTweak746.out" "pasted__polyMergeVert746.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert746.mp"
		;
connectAttr "pasted__polyMergeVert745.out" "pasted__polyTweak746.ip";
connectAttr "pasted__polyTweak745.out" "pasted__polyMergeVert745.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert745.mp"
		;
connectAttr "pasted__polyMergeVert744.out" "pasted__polyTweak745.ip";
connectAttr "pasted__polyTweak744.out" "pasted__polyMergeVert744.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert744.mp"
		;
connectAttr "pasted__polyMergeVert743.out" "pasted__polyTweak744.ip";
connectAttr "pasted__polyTweak743.out" "pasted__polyMergeVert743.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert743.mp"
		;
connectAttr "pasted__polyMergeVert742.out" "pasted__polyTweak743.ip";
connectAttr "pasted__polyTweak742.out" "pasted__polyMergeVert742.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert742.mp"
		;
connectAttr "pasted__polyMergeVert741.out" "pasted__polyTweak742.ip";
connectAttr "pasted__polyTweak741.out" "pasted__polyMergeVert741.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert741.mp"
		;
connectAttr "pasted__polyMergeVert740.out" "pasted__polyTweak741.ip";
connectAttr "pasted__polyTweak740.out" "pasted__polyMergeVert740.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert740.mp"
		;
connectAttr "pasted__polyMergeVert739.out" "pasted__polyTweak740.ip";
connectAttr "pasted__polyTweak739.out" "pasted__polyMergeVert739.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert739.mp"
		;
connectAttr "pasted__polyMergeVert738.out" "pasted__polyTweak739.ip";
connectAttr "pasted__polyTweak738.out" "pasted__polyMergeVert738.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert738.mp"
		;
connectAttr "pasted__polyMergeVert737.out" "pasted__polyTweak738.ip";
connectAttr "pasted__polyTweak737.out" "pasted__polyMergeVert737.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert737.mp"
		;
connectAttr "pasted__polyMergeVert736.out" "pasted__polyTweak737.ip";
connectAttr "pasted__polyTweak736.out" "pasted__polyMergeVert736.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert736.mp"
		;
connectAttr "pasted__polyMergeVert735.out" "pasted__polyTweak736.ip";
connectAttr "pasted__polyTweak735.out" "pasted__polyMergeVert735.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert735.mp"
		;
connectAttr "pasted__polyMergeVert734.out" "pasted__polyTweak735.ip";
connectAttr "pasted__polyTweak734.out" "pasted__polyMergeVert734.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert734.mp"
		;
connectAttr "pasted__polyMergeVert733.out" "pasted__polyTweak734.ip";
connectAttr "pasted__polyTweak733.out" "pasted__polyMergeVert733.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert733.mp"
		;
connectAttr "pasted__polyMergeVert732.out" "pasted__polyTweak733.ip";
connectAttr "pasted__polyTweak732.out" "pasted__polyMergeVert732.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert732.mp"
		;
connectAttr "pasted__polyMergeVert731.out" "pasted__polyTweak732.ip";
connectAttr "pasted__polyTweak731.out" "pasted__polyMergeVert731.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert731.mp"
		;
connectAttr "pasted__polyMergeVert730.out" "pasted__polyTweak731.ip";
connectAttr "pasted__polyTweak730.out" "pasted__polyMergeVert730.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert730.mp"
		;
connectAttr "pasted__polyMergeVert729.out" "pasted__polyTweak730.ip";
connectAttr "pasted__polyTweak729.out" "pasted__polyMergeVert729.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert729.mp"
		;
connectAttr "pasted__polyMergeVert728.out" "pasted__polyTweak729.ip";
connectAttr "pasted__polyTweak728.out" "pasted__polyMergeVert728.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert728.mp"
		;
connectAttr "pasted__polyMergeVert727.out" "pasted__polyTweak728.ip";
connectAttr "pasted__polyTweak727.out" "pasted__polyMergeVert727.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert727.mp"
		;
connectAttr "pasted__polyMergeVert726.out" "pasted__polyTweak727.ip";
connectAttr "pasted__polyTweak726.out" "pasted__polyMergeVert726.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert726.mp"
		;
connectAttr "pasted__polyMergeVert725.out" "pasted__polyTweak726.ip";
connectAttr "pasted__polyTweak725.out" "pasted__polyMergeVert725.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert725.mp"
		;
connectAttr "pasted__polyMergeVert724.out" "pasted__polyTweak725.ip";
connectAttr "pasted__polyTweak724.out" "pasted__polyMergeVert724.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert724.mp"
		;
connectAttr "pasted__polyMergeVert723.out" "pasted__polyTweak724.ip";
connectAttr "pasted__polyTweak723.out" "pasted__polyMergeVert723.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert723.mp"
		;
connectAttr "pasted__polyMergeVert722.out" "pasted__polyTweak723.ip";
connectAttr "pasted__polyTweak722.out" "pasted__polyMergeVert722.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert722.mp"
		;
connectAttr "pasted__polyMergeVert721.out" "pasted__polyTweak722.ip";
connectAttr "pasted__polyTweak721.out" "pasted__polyMergeVert721.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert721.mp"
		;
connectAttr "pasted__polyMergeVert720.out" "pasted__polyTweak721.ip";
connectAttr "pasted__polyTweak720.out" "pasted__polyMergeVert720.ip";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert720.mp"
		;
connectAttr "pasted__polyTweakUV21.out" "pasted__polyTweak720.ip";
connectAttr "pasted__polyCube14.out" "pasted__polyTweakUV21.ip";
connectAttr "pasted__lambert3SG6.msg" "pasted__materialInfo8.sg";
connectAttr "pasted__lambert9.msg" "pasted__materialInfo8.m";
connectAttr "pasted__file7.msg" "pasted__materialInfo8.t" -na;
connectAttr "pasted__lambert9.oc" "pasted__lambert3SG6.ss";
connectAttr "|group17|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG6.dsm"
		 -na;
connectAttr "pasted__file7.oc" "pasted__lambert9.c";
connectAttr "pasted__place2dTexture7.c" "pasted__file7.c";
connectAttr "pasted__place2dTexture7.tf" "pasted__file7.tf";
connectAttr "pasted__place2dTexture7.rf" "pasted__file7.rf";
connectAttr "pasted__place2dTexture7.mu" "pasted__file7.mu";
connectAttr "pasted__place2dTexture7.mv" "pasted__file7.mv";
connectAttr "pasted__place2dTexture7.s" "pasted__file7.s";
connectAttr "pasted__place2dTexture7.wu" "pasted__file7.wu";
connectAttr "pasted__place2dTexture7.wv" "pasted__file7.wv";
connectAttr "pasted__place2dTexture7.re" "pasted__file7.re";
connectAttr "pasted__place2dTexture7.of" "pasted__file7.of";
connectAttr "pasted__place2dTexture7.r" "pasted__file7.ro";
connectAttr "pasted__place2dTexture7.n" "pasted__file7.n";
connectAttr "pasted__place2dTexture7.vt1" "pasted__file7.vt1";
connectAttr "pasted__place2dTexture7.vt2" "pasted__file7.vt2";
connectAttr "pasted__place2dTexture7.vt3" "pasted__file7.vt3";
connectAttr "pasted__place2dTexture7.vc1" "pasted__file7.vc1";
connectAttr "pasted__place2dTexture7.o" "pasted__file7.uv";
connectAttr "pasted__place2dTexture7.ofs" "pasted__file7.fs";
connectAttr "pasted__polyTweak815.out" "pasted__polyMergeVert815.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert815.mp"
		;
connectAttr "pasted__polyMergeVert814.out" "pasted__polyTweak815.ip";
connectAttr "pasted__polyTweak814.out" "pasted__polyMergeVert814.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert814.mp"
		;
connectAttr "pasted__polyMergeVert813.out" "pasted__polyTweak814.ip";
connectAttr "pasted__polyTweak813.out" "pasted__polyMergeVert813.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert813.mp"
		;
connectAttr "pasted__polyMergeVert812.out" "pasted__polyTweak813.ip";
connectAttr "pasted__polyTweak812.out" "pasted__polyMergeVert812.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert812.mp"
		;
connectAttr "pasted__polyMergeVert811.out" "pasted__polyTweak812.ip";
connectAttr "pasted__polyTweak811.out" "pasted__polyMergeVert811.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert811.mp"
		;
connectAttr "pasted__polyMergeVert810.out" "pasted__polyTweak811.ip";
connectAttr "pasted__polyTweak810.out" "pasted__polyMergeVert810.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert810.mp"
		;
connectAttr "pasted__polyMergeVert809.out" "pasted__polyTweak810.ip";
connectAttr "pasted__polyTweak809.out" "pasted__polyMergeVert809.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert809.mp"
		;
connectAttr "pasted__polyMergeVert808.out" "pasted__polyTweak809.ip";
connectAttr "pasted__polyTweak808.out" "pasted__polyMergeVert808.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert808.mp"
		;
connectAttr "pasted__polyMergeVert807.out" "pasted__polyTweak808.ip";
connectAttr "pasted__polyTweak807.out" "pasted__polyMergeVert807.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert807.mp"
		;
connectAttr "pasted__polyMergeVert806.out" "pasted__polyTweak807.ip";
connectAttr "pasted__polyTweak806.out" "pasted__polyMergeVert806.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert806.mp"
		;
connectAttr "pasted__polyMergeVert805.out" "pasted__polyTweak806.ip";
connectAttr "pasted__polyTweak805.out" "pasted__polyMergeVert805.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert805.mp"
		;
connectAttr "pasted__polyMergeVert804.out" "pasted__polyTweak805.ip";
connectAttr "pasted__polyTweak804.out" "pasted__polyMergeVert804.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert804.mp"
		;
connectAttr "pasted__polyMergeVert803.out" "pasted__polyTweak804.ip";
connectAttr "pasted__polyTweak803.out" "pasted__polyMergeVert803.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert803.mp"
		;
connectAttr "pasted__polyMergeVert802.out" "pasted__polyTweak803.ip";
connectAttr "pasted__polyTweak802.out" "pasted__polyMergeVert802.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert802.mp"
		;
connectAttr "pasted__polyMergeVert801.out" "pasted__polyTweak802.ip";
connectAttr "pasted__polyTweak801.out" "pasted__polyMergeVert801.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert801.mp"
		;
connectAttr "pasted__polyMergeVert800.out" "pasted__polyTweak801.ip";
connectAttr "pasted__polyTweak800.out" "pasted__polyMergeVert800.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert800.mp"
		;
connectAttr "pasted__polyMergeVert799.out" "pasted__polyTweak800.ip";
connectAttr "pasted__polyTweak799.out" "pasted__polyMergeVert799.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert799.mp"
		;
connectAttr "pasted__polyMergeVert798.out" "pasted__polyTweak799.ip";
connectAttr "pasted__polyTweak798.out" "pasted__polyMergeVert798.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert798.mp"
		;
connectAttr "pasted__polyMergeVert797.out" "pasted__polyTweak798.ip";
connectAttr "pasted__polyTweak797.out" "pasted__polyMergeVert797.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert797.mp"
		;
connectAttr "pasted__polyMergeVert796.out" "pasted__polyTweak797.ip";
connectAttr "pasted__polyTweak796.out" "pasted__polyMergeVert796.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert796.mp"
		;
connectAttr "pasted__polyMergeVert795.out" "pasted__polyTweak796.ip";
connectAttr "pasted__polyTweak795.out" "pasted__polyMergeVert795.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert795.mp"
		;
connectAttr "pasted__polyMergeVert794.out" "pasted__polyTweak795.ip";
connectAttr "pasted__polyTweak794.out" "pasted__polyMergeVert794.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert794.mp"
		;
connectAttr "pasted__polyMergeVert793.out" "pasted__polyTweak794.ip";
connectAttr "pasted__polyTweak793.out" "pasted__polyMergeVert793.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert793.mp"
		;
connectAttr "pasted__polyMergeVert792.out" "pasted__polyTweak793.ip";
connectAttr "pasted__polyTweak792.out" "pasted__polyMergeVert792.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert792.mp"
		;
connectAttr "pasted__polyMergeVert791.out" "pasted__polyTweak792.ip";
connectAttr "pasted__polyTweak791.out" "pasted__polyMergeVert791.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert791.mp"
		;
connectAttr "pasted__polyMergeVert790.out" "pasted__polyTweak791.ip";
connectAttr "pasted__polyTweak790.out" "pasted__polyMergeVert790.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert790.mp"
		;
connectAttr "pasted__polyMergeVert789.out" "pasted__polyTweak790.ip";
connectAttr "pasted__polyTweak789.out" "pasted__polyMergeVert789.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert789.mp"
		;
connectAttr "pasted__polyMergeVert788.out" "pasted__polyTweak789.ip";
connectAttr "pasted__polyTweak788.out" "pasted__polyMergeVert788.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert788.mp"
		;
connectAttr "pasted__polyMergeVert787.out" "pasted__polyTweak788.ip";
connectAttr "pasted__polyTweak787.out" "pasted__polyMergeVert787.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert787.mp"
		;
connectAttr "pasted__polyMergeVert786.out" "pasted__polyTweak787.ip";
connectAttr "pasted__polyTweak786.out" "pasted__polyMergeVert786.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert786.mp"
		;
connectAttr "pasted__polyMergeVert785.out" "pasted__polyTweak786.ip";
connectAttr "pasted__polyTweak785.out" "pasted__polyMergeVert785.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert785.mp"
		;
connectAttr "pasted__polyMergeVert784.out" "pasted__polyTweak785.ip";
connectAttr "pasted__polyTweak784.out" "pasted__polyMergeVert784.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert784.mp"
		;
connectAttr "pasted__polyMergeVert783.out" "pasted__polyTweak784.ip";
connectAttr "pasted__polyTweak783.out" "pasted__polyMergeVert783.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert783.mp"
		;
connectAttr "pasted__polyMergeVert782.out" "pasted__polyTweak783.ip";
connectAttr "pasted__polyTweak782.out" "pasted__polyMergeVert782.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert782.mp"
		;
connectAttr "pasted__polyMergeVert781.out" "pasted__polyTweak782.ip";
connectAttr "pasted__polyTweak781.out" "pasted__polyMergeVert781.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert781.mp"
		;
connectAttr "pasted__polyMergeVert780.out" "pasted__polyTweak781.ip";
connectAttr "pasted__polyTweak780.out" "pasted__polyMergeVert780.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert780.mp"
		;
connectAttr "pasted__polyMergeVert779.out" "pasted__polyTweak780.ip";
connectAttr "pasted__polyTweak779.out" "pasted__polyMergeVert779.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert779.mp"
		;
connectAttr "pasted__polyMergeVert778.out" "pasted__polyTweak779.ip";
connectAttr "pasted__polyTweak778.out" "pasted__polyMergeVert778.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert778.mp"
		;
connectAttr "pasted__polyMergeVert777.out" "pasted__polyTweak778.ip";
connectAttr "pasted__polyTweak777.out" "pasted__polyMergeVert777.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert777.mp"
		;
connectAttr "pasted__polyMergeVert776.out" "pasted__polyTweak777.ip";
connectAttr "pasted__polyTweak776.out" "pasted__polyMergeVert776.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert776.mp"
		;
connectAttr "pasted__polyMergeVert775.out" "pasted__polyTweak776.ip";
connectAttr "pasted__polyTweak775.out" "pasted__polyMergeVert775.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert775.mp"
		;
connectAttr "pasted__polyMergeVert774.out" "pasted__polyTweak775.ip";
connectAttr "pasted__polyTweak774.out" "pasted__polyMergeVert774.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert774.mp"
		;
connectAttr "pasted__polyMergeVert773.out" "pasted__polyTweak774.ip";
connectAttr "pasted__polyTweak773.out" "pasted__polyMergeVert773.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert773.mp"
		;
connectAttr "pasted__polyMergeVert772.out" "pasted__polyTweak773.ip";
connectAttr "pasted__polyTweak772.out" "pasted__polyMergeVert772.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert772.mp"
		;
connectAttr "pasted__polyMergeVert771.out" "pasted__polyTweak772.ip";
connectAttr "pasted__polyTweak771.out" "pasted__polyMergeVert771.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert771.mp"
		;
connectAttr "pasted__polyMergeVert770.out" "pasted__polyTweak771.ip";
connectAttr "pasted__polyTweak770.out" "pasted__polyMergeVert770.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert770.mp"
		;
connectAttr "pasted__polyMergeVert769.out" "pasted__polyTweak770.ip";
connectAttr "pasted__polyTweak769.out" "pasted__polyMergeVert769.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert769.mp"
		;
connectAttr "pasted__polyMergeVert768.out" "pasted__polyTweak769.ip";
connectAttr "pasted__polyTweak768.out" "pasted__polyMergeVert768.ip";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert768.mp"
		;
connectAttr "pasted__polyTweakUV22.out" "pasted__polyTweak768.ip";
connectAttr "pasted__polyCube15.out" "pasted__polyTweakUV22.ip";
connectAttr "pasted__lambert3SG7.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__lambert10.msg" "pasted__materialInfo9.m";
connectAttr "pasted__file8.msg" "pasted__materialInfo9.t" -na;
connectAttr "pasted__lambert10.oc" "pasted__lambert3SG7.ss";
connectAttr "|group18|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG7.dsm"
		 -na;
connectAttr "pasted__file8.oc" "pasted__lambert10.c";
connectAttr "pasted__place2dTexture8.c" "pasted__file8.c";
connectAttr "pasted__place2dTexture8.tf" "pasted__file8.tf";
connectAttr "pasted__place2dTexture8.rf" "pasted__file8.rf";
connectAttr "pasted__place2dTexture8.mu" "pasted__file8.mu";
connectAttr "pasted__place2dTexture8.mv" "pasted__file8.mv";
connectAttr "pasted__place2dTexture8.s" "pasted__file8.s";
connectAttr "pasted__place2dTexture8.wu" "pasted__file8.wu";
connectAttr "pasted__place2dTexture8.wv" "pasted__file8.wv";
connectAttr "pasted__place2dTexture8.re" "pasted__file8.re";
connectAttr "pasted__place2dTexture8.of" "pasted__file8.of";
connectAttr "pasted__place2dTexture8.r" "pasted__file8.ro";
connectAttr "pasted__place2dTexture8.n" "pasted__file8.n";
connectAttr "pasted__place2dTexture8.vt1" "pasted__file8.vt1";
connectAttr "pasted__place2dTexture8.vt2" "pasted__file8.vt2";
connectAttr "pasted__place2dTexture8.vt3" "pasted__file8.vt3";
connectAttr "pasted__place2dTexture8.vc1" "pasted__file8.vc1";
connectAttr "pasted__place2dTexture8.o" "pasted__file8.uv";
connectAttr "pasted__place2dTexture8.ofs" "pasted__file8.fs";
connectAttr "pasted__polyTweak863.out" "pasted__polyMergeVert863.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert863.mp"
		;
connectAttr "pasted__polyMergeVert862.out" "pasted__polyTweak863.ip";
connectAttr "pasted__polyTweak862.out" "pasted__polyMergeVert862.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert862.mp"
		;
connectAttr "pasted__polyMergeVert861.out" "pasted__polyTweak862.ip";
connectAttr "pasted__polyTweak861.out" "pasted__polyMergeVert861.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert861.mp"
		;
connectAttr "pasted__polyMergeVert860.out" "pasted__polyTweak861.ip";
connectAttr "pasted__polyTweak860.out" "pasted__polyMergeVert860.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert860.mp"
		;
connectAttr "pasted__polyMergeVert859.out" "pasted__polyTweak860.ip";
connectAttr "pasted__polyTweak859.out" "pasted__polyMergeVert859.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert859.mp"
		;
connectAttr "pasted__polyMergeVert858.out" "pasted__polyTweak859.ip";
connectAttr "pasted__polyTweak858.out" "pasted__polyMergeVert858.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert858.mp"
		;
connectAttr "pasted__polyMergeVert857.out" "pasted__polyTweak858.ip";
connectAttr "pasted__polyTweak857.out" "pasted__polyMergeVert857.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert857.mp"
		;
connectAttr "pasted__polyMergeVert856.out" "pasted__polyTweak857.ip";
connectAttr "pasted__polyTweak856.out" "pasted__polyMergeVert856.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert856.mp"
		;
connectAttr "pasted__polyMergeVert855.out" "pasted__polyTweak856.ip";
connectAttr "pasted__polyTweak855.out" "pasted__polyMergeVert855.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert855.mp"
		;
connectAttr "pasted__polyMergeVert854.out" "pasted__polyTweak855.ip";
connectAttr "pasted__polyTweak854.out" "pasted__polyMergeVert854.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert854.mp"
		;
connectAttr "pasted__polyMergeVert853.out" "pasted__polyTweak854.ip";
connectAttr "pasted__polyTweak853.out" "pasted__polyMergeVert853.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert853.mp"
		;
connectAttr "pasted__polyMergeVert852.out" "pasted__polyTweak853.ip";
connectAttr "pasted__polyTweak852.out" "pasted__polyMergeVert852.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert852.mp"
		;
connectAttr "pasted__polyMergeVert851.out" "pasted__polyTweak852.ip";
connectAttr "pasted__polyTweak851.out" "pasted__polyMergeVert851.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert851.mp"
		;
connectAttr "pasted__polyMergeVert850.out" "pasted__polyTweak851.ip";
connectAttr "pasted__polyTweak850.out" "pasted__polyMergeVert850.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert850.mp"
		;
connectAttr "pasted__polyMergeVert849.out" "pasted__polyTweak850.ip";
connectAttr "pasted__polyTweak849.out" "pasted__polyMergeVert849.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert849.mp"
		;
connectAttr "pasted__polyMergeVert848.out" "pasted__polyTweak849.ip";
connectAttr "pasted__polyTweak848.out" "pasted__polyMergeVert848.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert848.mp"
		;
connectAttr "pasted__polyMergeVert847.out" "pasted__polyTweak848.ip";
connectAttr "pasted__polyTweak847.out" "pasted__polyMergeVert847.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert847.mp"
		;
connectAttr "pasted__polyMergeVert846.out" "pasted__polyTweak847.ip";
connectAttr "pasted__polyTweak846.out" "pasted__polyMergeVert846.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert846.mp"
		;
connectAttr "pasted__polyMergeVert845.out" "pasted__polyTweak846.ip";
connectAttr "pasted__polyTweak845.out" "pasted__polyMergeVert845.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert845.mp"
		;
connectAttr "pasted__polyMergeVert844.out" "pasted__polyTweak845.ip";
connectAttr "pasted__polyTweak844.out" "pasted__polyMergeVert844.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert844.mp"
		;
connectAttr "pasted__polyMergeVert843.out" "pasted__polyTweak844.ip";
connectAttr "pasted__polyTweak843.out" "pasted__polyMergeVert843.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert843.mp"
		;
connectAttr "pasted__polyMergeVert842.out" "pasted__polyTweak843.ip";
connectAttr "pasted__polyTweak842.out" "pasted__polyMergeVert842.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert842.mp"
		;
connectAttr "pasted__polyMergeVert841.out" "pasted__polyTweak842.ip";
connectAttr "pasted__polyTweak841.out" "pasted__polyMergeVert841.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert841.mp"
		;
connectAttr "pasted__polyMergeVert840.out" "pasted__polyTweak841.ip";
connectAttr "pasted__polyTweak840.out" "pasted__polyMergeVert840.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert840.mp"
		;
connectAttr "pasted__polyMergeVert839.out" "pasted__polyTweak840.ip";
connectAttr "pasted__polyTweak839.out" "pasted__polyMergeVert839.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert839.mp"
		;
connectAttr "pasted__polyMergeVert838.out" "pasted__polyTweak839.ip";
connectAttr "pasted__polyTweak838.out" "pasted__polyMergeVert838.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert838.mp"
		;
connectAttr "pasted__polyMergeVert837.out" "pasted__polyTweak838.ip";
connectAttr "pasted__polyTweak837.out" "pasted__polyMergeVert837.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert837.mp"
		;
connectAttr "pasted__polyMergeVert836.out" "pasted__polyTweak837.ip";
connectAttr "pasted__polyTweak836.out" "pasted__polyMergeVert836.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert836.mp"
		;
connectAttr "pasted__polyMergeVert835.out" "pasted__polyTweak836.ip";
connectAttr "pasted__polyTweak835.out" "pasted__polyMergeVert835.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert835.mp"
		;
connectAttr "pasted__polyMergeVert834.out" "pasted__polyTweak835.ip";
connectAttr "pasted__polyTweak834.out" "pasted__polyMergeVert834.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert834.mp"
		;
connectAttr "pasted__polyMergeVert833.out" "pasted__polyTweak834.ip";
connectAttr "pasted__polyTweak833.out" "pasted__polyMergeVert833.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert833.mp"
		;
connectAttr "pasted__polyMergeVert832.out" "pasted__polyTweak833.ip";
connectAttr "pasted__polyTweak832.out" "pasted__polyMergeVert832.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert832.mp"
		;
connectAttr "pasted__polyMergeVert831.out" "pasted__polyTweak832.ip";
connectAttr "pasted__polyTweak831.out" "pasted__polyMergeVert831.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert831.mp"
		;
connectAttr "pasted__polyMergeVert830.out" "pasted__polyTweak831.ip";
connectAttr "pasted__polyTweak830.out" "pasted__polyMergeVert830.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert830.mp"
		;
connectAttr "pasted__polyMergeVert829.out" "pasted__polyTweak830.ip";
connectAttr "pasted__polyTweak829.out" "pasted__polyMergeVert829.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert829.mp"
		;
connectAttr "pasted__polyMergeVert828.out" "pasted__polyTweak829.ip";
connectAttr "pasted__polyTweak828.out" "pasted__polyMergeVert828.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert828.mp"
		;
connectAttr "pasted__polyMergeVert827.out" "pasted__polyTweak828.ip";
connectAttr "pasted__polyTweak827.out" "pasted__polyMergeVert827.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert827.mp"
		;
connectAttr "pasted__polyMergeVert826.out" "pasted__polyTweak827.ip";
connectAttr "pasted__polyTweak826.out" "pasted__polyMergeVert826.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert826.mp"
		;
connectAttr "pasted__polyMergeVert825.out" "pasted__polyTweak826.ip";
connectAttr "pasted__polyTweak825.out" "pasted__polyMergeVert825.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert825.mp"
		;
connectAttr "pasted__polyMergeVert824.out" "pasted__polyTweak825.ip";
connectAttr "pasted__polyTweak824.out" "pasted__polyMergeVert824.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert824.mp"
		;
connectAttr "pasted__polyMergeVert823.out" "pasted__polyTweak824.ip";
connectAttr "pasted__polyTweak823.out" "pasted__polyMergeVert823.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert823.mp"
		;
connectAttr "pasted__polyMergeVert822.out" "pasted__polyTweak823.ip";
connectAttr "pasted__polyTweak822.out" "pasted__polyMergeVert822.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert822.mp"
		;
connectAttr "pasted__polyMergeVert821.out" "pasted__polyTweak822.ip";
connectAttr "pasted__polyTweak821.out" "pasted__polyMergeVert821.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert821.mp"
		;
connectAttr "pasted__polyMergeVert820.out" "pasted__polyTweak821.ip";
connectAttr "pasted__polyTweak820.out" "pasted__polyMergeVert820.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert820.mp"
		;
connectAttr "pasted__polyMergeVert819.out" "pasted__polyTweak820.ip";
connectAttr "pasted__polyTweak819.out" "pasted__polyMergeVert819.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert819.mp"
		;
connectAttr "pasted__polyMergeVert818.out" "pasted__polyTweak819.ip";
connectAttr "pasted__polyTweak818.out" "pasted__polyMergeVert818.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert818.mp"
		;
connectAttr "pasted__polyMergeVert817.out" "pasted__polyTweak818.ip";
connectAttr "pasted__polyTweak817.out" "pasted__polyMergeVert817.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert817.mp"
		;
connectAttr "pasted__polyMergeVert816.out" "pasted__polyTweak817.ip";
connectAttr "pasted__polyTweak816.out" "pasted__polyMergeVert816.ip";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.wm" "pasted__polyMergeVert816.mp"
		;
connectAttr "pasted__polyTweakUV23.out" "pasted__polyTweak816.ip";
connectAttr "pasted__polyCube16.out" "pasted__polyTweakUV23.ip";
connectAttr "pasted__lambert3SG8.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__lambert11.msg" "pasted__materialInfo10.m";
connectAttr "pasted__file9.msg" "pasted__materialInfo10.t" -na;
connectAttr "pasted__lambert11.oc" "pasted__lambert3SG8.ss";
connectAttr "|group19|pasted__pCube4|pasted__pCubeShape4.iog" "pasted__lambert3SG8.dsm"
		 -na;
connectAttr "pasted__file9.oc" "pasted__lambert11.c";
connectAttr "pasted__place2dTexture9.c" "pasted__file9.c";
connectAttr "pasted__place2dTexture9.tf" "pasted__file9.tf";
connectAttr "pasted__place2dTexture9.rf" "pasted__file9.rf";
connectAttr "pasted__place2dTexture9.mu" "pasted__file9.mu";
connectAttr "pasted__place2dTexture9.mv" "pasted__file9.mv";
connectAttr "pasted__place2dTexture9.s" "pasted__file9.s";
connectAttr "pasted__place2dTexture9.wu" "pasted__file9.wu";
connectAttr "pasted__place2dTexture9.wv" "pasted__file9.wv";
connectAttr "pasted__place2dTexture9.re" "pasted__file9.re";
connectAttr "pasted__place2dTexture9.of" "pasted__file9.of";
connectAttr "pasted__place2dTexture9.r" "pasted__file9.ro";
connectAttr "pasted__place2dTexture9.n" "pasted__file9.n";
connectAttr "pasted__place2dTexture9.vt1" "pasted__file9.vt1";
connectAttr "pasted__place2dTexture9.vt2" "pasted__file9.vt2";
connectAttr "pasted__place2dTexture9.vt3" "pasted__file9.vt3";
connectAttr "pasted__place2dTexture9.vc1" "pasted__file9.vc1";
connectAttr "pasted__place2dTexture9.o" "pasted__file9.uv";
connectAttr "pasted__place2dTexture9.ofs" "pasted__file9.fs";
connectAttr "polyMergeVert191.out" "polyNormalPerVertex1.ip";
connectAttr "polyMergeVert335.out" "polyNormalPerVertex2.ip";
connectAttr "polyMergeVert143.out" "polyNormalPerVertex3.ip";
connectAttr "polyMergeVert479.out" "polyNormalPerVertex4.ip";
connectAttr "polyMergeVert527.out" "polyNormalPerVertex5.ip";
connectAttr "polyMergeVert287.out" "polyNormalPerVertex6.ip";
connectAttr "deleteComponent5.og" "polyNormalPerVertex7.ip";
connectAttr "polyMergeVert383.out" "polyNormalPerVertex8.ip";
connectAttr "polyMergeVert431.out" "polyNormalPerVertex9.ip";
connectAttr "deleteComponent4.og" "polyNormalPerVertex10.ip";
connectAttr "polyMergeVert95.out" "polyNormalPerVertex11.ip";
connectAttr "pasted__polyMergeVert479.out" "polyNormalPerVertex12.ip";
connectAttr "pasted__polyMergeVert527.out" "polyNormalPerVertex13.ip";
connectAttr "pasted__polyMergeVert575.out" "polyNormalPerVertex14.ip";
connectAttr "pasted__polyMergeVert623.out" "polyNormalPerVertex15.ip";
connectAttr "pasted__polyMergeVert671.out" "polyNormalPerVertex16.ip";
connectAttr "pasted__polyMergeVert719.out" "polyNormalPerVertex17.ip";
connectAttr "pasted__polyMergeVert767.out" "polyNormalPerVertex18.ip";
connectAttr "pasted__polyMergeVert815.out" "polyNormalPerVertex19.ip";
connectAttr "pasted__polyMergeVert863.out" "polyNormalPerVertex20.ip";
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
connectAttr "polyNormalPerVertex13.out" "polyTriangulate13.ip";
connectAttr "polyNormalPerVertex14.out" "polyTriangulate14.ip";
connectAttr "polyNormalPerVertex15.out" "polyTriangulate15.ip";
connectAttr "polyNormalPerVertex16.out" "polyTriangulate16.ip";
connectAttr "polyNormalPerVertex17.out" "polyTriangulate17.ip";
connectAttr "polyNormalPerVertex18.out" "polyTriangulate18.ip";
connectAttr "polyNormalPerVertex19.out" "polyTriangulate19.ip";
connectAttr "polyNormalPerVertex20.out" "polyTriangulate20.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG3.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG8.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file9.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n1\n\"pasted__file1\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n2\n\"pasted__file2\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n3\n\"pasted__file3\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n4\n\"pasted__file4\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n5\n\"pasted__file5\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n6\n\"pasted__file6\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n7\n\"pasted__file7\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n8\n\"pasted__file8\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\n9\n\"pasted__file9\" \"fileTextureName\" \"C:/Users/Gerald/Desktop/Personal/Projects/Sem 3/SP-3/Base/Image/bed.tga\" 155640464 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of bed.ma
