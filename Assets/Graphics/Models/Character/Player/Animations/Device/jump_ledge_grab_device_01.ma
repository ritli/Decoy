//Maya ASCII 2016 scene
//Name: jump_ledge_grab_device_01.ma
//Last modified: Wed, Apr 19, 2017 03:56:39 PM
//Codeset: 1252
file -rdi 1 -ns "handrigg_device_skinned" -rfn "handrigg_device_skinnedRN" -op
		 "v=0;" -typ "mayaAscii" "P://Documents/maya/projects/SP2/Riggar/handrigg_device_skinned.ma";
file -r -ns "handrigg_device_skinned" -dr 1 -rfn "handrigg_device_skinnedRN" -op
		 "v=0;" -typ "mayaAscii" "P://Documents/maya/projects/SP2/Riggar/handrigg_device_skinned.ma";
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "10209DA5-4987-2863-9BA1-F4B154CF80FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7331209330349937 9.3870351364185751 -10.479751129057608 ;
	setAttr ".r" -type "double3" -21.338352729621477 515.79999999980248 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CF085DCB-48B3-9775-91DA-739CE5E0D841";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.004750633879508;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3D625478-4208-B6E4-EF90-749C20516BB9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5D374B91-4024-3424-65B3-D8AA474E9E80";
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
	rename -uid "A488EAB7-4E5A-8931-CE47-80AA6464FC94";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "737780A6-403E-6D67-0E00-48BB2418CBB1";
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
	rename -uid "723D5838-482D-66AA-087B-5D897F899800";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B58F8CEB-4EA0-6AD6-F8F2-5898B76C00B6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "camera1";
	rename -uid "F2B5F36A-4752-E9DC-52C4-059813936E6A";
	setAttr ".t" -type "double3" 0 6.601 -0.456 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "403AD651-4E37-FECC-DA14-B29CEA645019";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.4173 0.9449 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dfg" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EFC51BD8-4DCC-1905-9269-6BAD4EB3A906";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A11A0869-429A-B8F8-48DC-FC98D57DB50D";
createNode displayLayer -n "defaultLayer";
	rename -uid "56AE1E1B-41D7-FD36-C594-6F91AE737C7B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1A1AC860-48A9-D1B6-5303-3C913A280FF7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "96848207-4401-11B8-6B2B-CE857CEB0453";
	setAttr ".g" yes;
createNode reference -n "handrigg_device_skinnedRN";
	rename -uid "A79072B3-4D1D-55AD-148E-CF9725C5239B";
	setAttr ".fn[0]" -type "string" "P://Documents/maya/projects/SP2/Riggar/handrigg_device_skinned.ma";
	setAttr -s 351 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"handrigg_device_skinnedRN"
		"handrigg_device_skinnedRN" 0
		"handrigg_device_skinnedRN" 441
		1 |handrigg_device_skinned:Full_body_ctrl "blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		1 |handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint 
		"blendOrient1" "blendOrient1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		1 |handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint 
		"blendOrient1" "blendOrient1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|handrigg_device_skinned:Full_body_ctrl" "translate" " -type \"double3\" 0 -0.22752281616943559 0"
		
		2 "|handrigg_device_skinned:Full_body_ctrl" "translateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|handrigg_device_skinned:Full_body_ctrl" "rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl" "rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl" "blendParent1" " -k 1"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl" 
		"rotateOrder" " 5"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotate" " -type \"double3\" -1.5281232522510941 -12.033839788223892 84.116810047775189"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotate" " -type \"double3\" -66.030231983365624 -7.7262741134153154 175.42619815866735"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotate" " -type \"double3\" -7.8847852885822665 -2.3499056297376124 67.820783594755753"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotate" " -type \"double3\" -6.2133185104587811 4.6442821602129145 -0.55159893062024234"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotate" " -type \"double3\" -0.10082441026985742 2.7924800977259414 79.672275673093537"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotate" " -type \"double3\" 4.6517380479971111 17.1006144557801 167.90603092768583"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotate" " -type \"double3\" -2.959498285990029 5.862050911693335 0.11803717388434087"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotate" " -type \"double3\" -0.28994224476121616 1.7526778404623575 91.725177371756203"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotate" " -type \"double3\" 17.357802019141936 23.03186884746054 160.78927044657334"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotate" " -type \"double3\" 4.7968505265243637 -15.606349132577344 -1.6868655531100138"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotate" " -type \"double3\" 30.162972758586104 -56.656369422747723 -20.815205091974324"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl" 
		"rotateOrder" " 5"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"segmentScaleCompensate" " 1"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint" 
		"blendOrient1" " -k 1"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"visibility" " 1"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"translate" " -type \"double3\" -0.16369706178417087 -2.972767400244436e-006 4.8133477705339378e-008"
		
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"rotate" " -type \"double3\" -188.62510744884278 178.6356624554123 112.29430723581885"
		
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint" 
		"segmentScaleCompensate" " 1"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint" 
		"rotate" " -type \"double3\" -8.3532906254451067 28.648645130049921 -173.19575677346367"
		
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint" 
		"blendOrient1" " -k 1"
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateX" 
		"|handrigg_device_skinned:Full_body_ctrl.translateX" ""
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateY" 
		"|handrigg_device_skinned:Full_body_ctrl.translateY" ""
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateZ" 
		"|handrigg_device_skinned:Full_body_ctrl.translateZ" ""
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateX" 
		"|handrigg_device_skinned:Full_body_ctrl.rotateX" ""
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateY" 
		"|handrigg_device_skinned:Full_body_ctrl.rotateY" ""
		3 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateZ" 
		"|handrigg_device_skinned:Full_body_ctrl.rotateZ" ""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateX" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateX" 
		""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateY" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateY" 
		""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateZ" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateZ" 
		""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateX" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateX" 
		""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateY" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateY" 
		""
		3 "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateZ" 
		"|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateZ" 
		""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[1]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[2]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[3]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[4]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[5]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[6]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[7]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[8]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[9]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.blendParent1" 
		"handrigg_device_skinnedRN.placeHolderList[10]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.blendParent1" 
		"handrigg_device_skinnedRN.placeHolderList[11]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[12]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[13]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[14]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[15]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[16]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[17]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[18]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[19]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[20]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[21]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[22]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[23]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[24]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[25]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[26]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[27]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[28]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[29]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[30]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[31]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[32]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[33]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[34]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[35]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[36]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[37]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[38]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[39]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[40]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[41]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[42]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[43]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[44]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[45]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[46]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[47]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[48]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[49]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[50]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[51]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[52]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[53]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[54]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[55]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[56]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[57]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[58]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[59]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[60]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[61]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[62]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[63]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[64]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[65]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[66]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[67]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[68]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[69]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[70]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[71]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[72]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[73]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[74]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[75]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[76]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[77]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[78]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[79]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[80]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[81]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[82]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[83]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[84]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[85]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[86]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[87]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[88]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[89]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[90]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[91]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[92]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[93]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[94]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[95]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[96]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[97]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[98]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[99]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[100]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[101]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[102]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[103]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[104]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[105]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[106]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[107]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[108]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[109]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[110]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[111]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[112]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[113]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[114]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[115]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[116]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[117]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[118]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[119]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[120]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[121]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[122]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[123]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[124]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[125]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[126]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[127]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[128]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[129]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[130]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[131]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[132]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[133]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[134]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[135]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[136]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[137]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[138]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[139]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[140]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[141]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[142]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[143]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[144]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[145]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[146]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[147]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[148]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[149]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[150]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[151]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[152]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[153]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[154]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[155]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[156]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[157]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[158]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[159]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[160]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[161]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[162]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[163]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[164]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[165]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[166]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[167]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[168]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[169]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[170]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[171]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[172]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[173]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[174]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[175]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[176]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[177]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[178]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[179]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[180]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[181]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[182]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[183]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[184]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[185]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[186]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[187]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[188]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[189]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[190]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[191]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[192]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[193]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[194]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[195]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[196]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[197]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[198]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[199]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[200]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[201]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[202]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[203]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[204]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[205]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[206]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[207]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[208]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[209]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[210]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[211]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[212]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[213]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[214]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[215]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[216]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[217]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[218]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[219]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[220]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[221]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[222]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[223]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[224]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[225]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[226]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[227]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[228]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[229]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[230]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[231]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[232]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[233]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[234]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[235]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[236]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[237]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[238]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[239]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[240]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[241]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[242]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[243]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[244]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[245]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[246]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[247]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[248]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[249]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[250]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[251]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[252]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[253]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[254]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[255]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[256]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[257]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[258]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[259]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[260]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[261]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[262]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[263]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[264]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[265]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[266]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[267]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[268]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[269]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[270]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[271]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[272]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[273]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[274]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[275]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[276]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[277]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[278]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[279]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[280]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[281]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[282]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[283]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[284]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[285]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[286]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[287]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[288]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[289]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[290]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[291]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[292]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[293]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[294]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[295]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[296]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[297]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[298]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[299]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[300]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[301]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[302]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[303]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[304]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[305]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[306]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[307]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[308]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[309]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[310]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[311]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[312]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[313]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[314]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[315]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateY" 
		"handrigg_device_skinnedRN.placeHolderList[316]" "handrigg_device_skinned:Full_body_ctrl.ty"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateX" 
		"handrigg_device_skinnedRN.placeHolderList[317]" "handrigg_device_skinned:Full_body_ctrl.tx"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintTranslateZ" 
		"handrigg_device_skinnedRN.placeHolderList[318]" "handrigg_device_skinned:Full_body_ctrl.tz"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateX" 
		"handrigg_device_skinnedRN.placeHolderList[319]" "handrigg_device_skinned:Full_body_ctrl.rx"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateY" 
		"handrigg_device_skinnedRN.placeHolderList[320]" "handrigg_device_skinned:Full_body_ctrl.ry"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:Full_body_ctrl_parentConstraint1.constraintRotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[321]" "handrigg_device_skinned:Full_body_ctrl.rz"
		
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[322]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[323]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[324]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[325]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[326]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[327]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.blendOrient1" 
		"handrigg_device_skinnedRN.placeHolderList[328]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.blendOrient1" 
		"handrigg_device_skinnedRN.placeHolderList[329]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[330]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[331]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[332]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[333]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateX" 
		"handrigg_device_skinnedRN.placeHolderList[334]" "handrigg_device_skinned:R_indexFinger_01_joint.rx"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateY" 
		"handrigg_device_skinnedRN.placeHolderList[335]" "handrigg_device_skinned:R_indexFinger_01_joint.ry"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_indexFinger_01_joint|handrigg_device_skinned:R_indexFinger_01_joint_orientConstraint1.constraintRotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[336]" "handrigg_device_skinned:R_indexFinger_01_joint.rz"
		
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[337]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[338]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[339]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.blendOrient1" 
		"handrigg_device_skinnedRN.placeHolderList[340]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.blendOrient1" 
		"handrigg_device_skinnedRN.placeHolderList[341]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[342]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[343]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[344]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[345]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[346]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[347]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[348]" ""
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateX" 
		"handrigg_device_skinnedRN.placeHolderList[349]" "handrigg_device_skinned:R_middleFinger_03_joint.rx"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateY" 
		"handrigg_device_skinnedRN.placeHolderList[350]" "handrigg_device_skinned:R_middleFinger_03_joint.ry"
		
		5 3 "handrigg_device_skinnedRN" "|handrigg_device_skinned:root_joint|handrigg_device_skinned:master_joint|handrigg_device_skinned:R_shoulder_joint|handrigg_device_skinned:R_elbow_joint|handrigg_device_skinned:R_forearm_joint|handrigg_device_skinned:R_wrist_joint|handrigg_device_skinned:R_middleFinger_01_joint|handrigg_device_skinned:R_middleFinger_02_joint|handrigg_device_skinned:R_middleFinger_03_joint|handrigg_device_skinned:R_middleFinger_03_joint_orientConstraint1.constraintRotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[351]" "handrigg_device_skinned:R_middleFinger_03_joint.rz";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FDF63707-4613-2DBB-BE27-B6ACF55FAD7F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 757\n                -height 707\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 757\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1023\n                -height 707\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1023\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1023\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1023\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 2 -size 20 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3E996841-4E23-599C-EFCB-57963777F269";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 45 -ast 1 -aet 45 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Full_body_ctrl_scaleX";
	rename -uid "F2049E6B-4B14-480F-7B20-50847E75F474";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 29 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Full_body_ctrl_scaleY";
	rename -uid "450D3C0C-428D-0CD6-F11F-07984816B43F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 29 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Full_body_ctrl_scaleZ";
	rename -uid "EF920658-49E9-D1FA-75D7-B2A444F8691D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 29 1;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Full_body_ctrl_visibility";
	rename -uid "74410700-4694-BA84-D599-5A9924D9C1D3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 29 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateX";
	rename -uid "C6D2F505-4D97-39C5-6969-4589A0196CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 -19.141706402890751 5 41.595823382265031
		 18 16.192330892621595 27 -111.28295544353524 33 -78.524294408196781 40 16.085375980181354;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  0.29403525590896606 0.19133085012435913 
		1;
	setAttr -s 6 ".kiy[3:5]"  0.9557945728302002 0.98152565956115723 
		0;
	setAttr -s 6 ".kox[3:5]"  0.29403525590896606 0.19133083522319794 
		1;
	setAttr -s 6 ".koy[3:5]"  0.9557945728302002 0.98152559995651245 
		0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateY";
	rename -uid "C3867DF7-40E5-4AF2-3001-E3ACC50EC2CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 -3.483933875836581 5 -3.0964972923490097
		 18 -0.3746593627373665 27 1.4618398135431214 33 -0.32758118553565774 40 -3.7659960027823067;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  0.89404571056365967 0.9785429835319519 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.44797584414482117 -0.20604261755943298 
		0;
	setAttr -s 6 ".kox[3:5]"  0.89404571056365967 0.97854304313659668 
		1;
	setAttr -s 6 ".koy[3:5]"  -0.44797584414482117 -0.20604263246059418 
		0;
createNode animCurveTA -n "R_shoulder_ctrl_rotateZ";
	rename -uid "AD498A16-4716-52F7-D902-09BF5E95973D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 88.404965847522121 5 76.771699844891174
		 18 71.963017647011824 27 87.125524527767894 33 86.792104374488289 40 90.704827961126355;
	setAttr -s 6 ".kit[3:5]"  1 18 18;
	setAttr -s 6 ".kot[3:5]"  1 18 18;
	setAttr -s 6 ".kix[3:5]"  0.98839902877807617 1 1;
	setAttr -s 6 ".kiy[3:5]"  0.15187941491603851 0 0;
	setAttr -s 6 ".kox[3:5]"  0.98839902877807617 1 1;
	setAttr -s 6 ".koy[3:5]"  0.15187942981719971 0 0;
createNode animCurveTU -n "R_shoulder_ctrl_visibility";
	rename -uid "91725001-4B67-913A-E73A-F9A3255AA5C7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 1 5 1 18 1 27 1 33 1 40 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 1 9 9;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
createNode animCurveTA -n "R_elbow_ctrl_rotateY";
	rename -uid "23E91B7E-44DC-C849-7725-E1B8ADC668EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1.25 40.572006718694027 7 2.7963615220450375
		 22 73.074120244700367 29 11.345730266491993 38 29.653011309198309;
createNode animCurveTU -n "R_elbow_ctrl_visibility";
	rename -uid "2B5AE124-4E4E-AC52-3230-8F88112B2582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1.25 1 7 1 22 1 29 1 38 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "R_wrist_ctrl_rotateX";
	rename -uid "5F325994-4FAE-7188-C8F7-B58B1B246D70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  13 64.228143682155007 21 69.48843544883367
		 26 68.3375344744085 28 64.161745515392482 32 81.72114783618197 36 85.509177153073267
		 43 82.75458119956825;
createNode animCurveTA -n "R_wrist_ctrl_rotateY";
	rename -uid "804FD61B-4231-B6D6-153D-41B65D88BCE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  13 -15.590767725206639 21 -46.981000513832413
		 26 9.5171011761801729 28 48.085461227400742 32 53.920391976386014 36 73.243930746416623
		 43 25.978170884039905;
createNode animCurveTA -n "R_wrist_ctrl_rotateZ";
	rename -uid "54FEF005-45B1-9E8A-A0E9-A8AF013E302F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  13 7.3935618641589365 21 21.794732350087493
		 26 -9.6766032174873722 28 -21.078043023570675 32 -9.5406119411542587 36 -1.953004988223209
		 43 6.2186805242441574;
createNode animCurveTU -n "R_wrist_ctrl_visibility";
	rename -uid "74752D78-452B-260C-343F-2DA172B00328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  13 1 21 1 26 1 28 1 32 1 36 1 43 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateX";
	rename -uid "3804CE08-47B8-A6FF-B5FE-86A7D9E2FBEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 7.2795415277777407;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateY";
	rename -uid "2ECE2AFB-4FAF-828C-DF17-718FAE33BA55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 -2.4022907126425839;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateZ";
	rename -uid "9F6F01D4-418F-109E-208D-ECB34FDA8223";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0.3107620708540928;
createNode animCurveTU -n "R_indexFinger_ctrl_visibility";
	rename -uid "D57BB41B-4877-1631-3077-62BAEF1905CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_translateX";
	rename -uid "FFF3425C-44A3-B707-9366-C98F547FA2FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_translateY";
	rename -uid "968A56DE-40ED-E5DE-A473-53956B16B543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_translateZ";
	rename -uid "1928013F-4379-E9BF-C79A-0FB79F8668CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleX";
	rename -uid "22FC39E8-4688-C4B6-B6EC-32AB87901747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleY";
	rename -uid "35B2D24B-4BB5-8532-770D-5AB5EF057138";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleZ";
	rename -uid "DBBA43D1-4927-6B6E-A516-54AF71B2971D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateZ";
	rename -uid "D649A48A-4D20-0BB5-D9BB-1EAF6B13C9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 84.116810047775189 28 0 31 23.039145851030085;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateX";
	rename -uid "6B0EAD41-44EB-D994-6388-ED96D328BB58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -1.5281232522510941 28 0 31 0;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateY";
	rename -uid "37F31E69-4CDF-736F-B726-2D88B8ED16D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -12.033839788223892 28 0 31 0;
createNode animCurveTU -n "R_indexFinger_ctrl_02_visibility";
	rename -uid "60C22E86-47A2-C5E7-8078-1C8D57FD5DE2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateX";
	rename -uid "B3BF4D45-48BD-8B61-AA37-5F9077458FD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateY";
	rename -uid "A0BFDC40-46DB-C771-4708-6280F02705A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateZ";
	rename -uid "70ABD92D-4C38-6CC9-A43C-ED9535458254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleX";
	rename -uid "86DDD42E-4F54-CB7D-E74E-9D9934F7A053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleY";
	rename -uid "5DAF1885-4BA8-6A8F-49FA-34855A868AE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleZ";
	rename -uid "28CB73CA-4FFB-A34A-C2F6-D6BB3EFE360F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateX";
	rename -uid "A4683911-485E-D1AE-38CF-44A200058FF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -66.030231983365624 28 0 31 0;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateY";
	rename -uid "A1CE0E83-49AA-E128-D246-F1822662A29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -7.7262741134153154 28 0 31 0;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateZ";
	rename -uid "DF59E909-4B8E-DE41-AC5E-978004BBADA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 175.42619815866735 28 0 31 59.008894300118449;
createNode animCurveTU -n "R_indexFinger_ctrl_03_visibility";
	rename -uid "D51DB2B4-47BC-E589-CBDB-CEA7DC890F85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateX";
	rename -uid "3E6C1FAF-4144-DE3C-3138-DAABDE524E73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateY";
	rename -uid "356A9290-4D36-9AD6-0D94-77984C044EA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateZ";
	rename -uid "C2853E2F-45EB-232E-2919-52830436CA2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleX";
	rename -uid "16E8882E-43DD-675A-3321-AABE7BC8BE05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleY";
	rename -uid "5EBA0B7F-4DF7-0557-CF90-C889D01DD5E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleZ";
	rename -uid "58C74E0B-4B61-741D-7851-4EBE5444843C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateX";
	rename -uid "0C719BB8-4E88-E947-9DAD-C18DE382878B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 7.2743088598788548;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateY";
	rename -uid "CCA87C4E-4FB6-37B9-6962-3BBBA03B8800";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 1.0377216011200627;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateZ";
	rename -uid "6B24DB42-4588-C4CC-1A63-61B6F5D345B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0.7499927652658972;
createNode animCurveTU -n "R_middleFinger_ctrl_visibility";
	rename -uid "C6FBB9AD-49E1-8091-3BBA-1D98C6172CD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_middleFinger_ctrl_translateX";
	rename -uid "39C3C2B2-4EB6-3EB4-9B23-EDB8D86FB946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_translateY";
	rename -uid "2780BA35-4A3D-7054-8CE7-868A92CA2E8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_translateZ";
	rename -uid "1FE60703-4823-0A68-A111-F0B75B93D0FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleX";
	rename -uid "1FB55D59-445B-88CA-ECDB-1BAF4E3AFC28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleY";
	rename -uid "7131F6F4-4CAE-DA2B-72C7-9EBA92F2C258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleZ";
	rename -uid "93DE9204-4D20-991E-EF84-E9B889C0FE0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateZ";
	rename -uid "30A0E6F0-4575-7239-B898-8A9CA4AEBDA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 67.820783594755753 28 0 31 23.039145851030085;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateX";
	rename -uid "F9705CD0-4B03-8A5E-C422-8FBF3C786D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -7.8847852885822665 28 0 31 0;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateY";
	rename -uid "3D1D27E8-4486-E647-B9B7-C6AB1C28F75F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -2.3499056297376124 28 0 31 0;
createNode animCurveTU -n "R_middleFinger_ctrl_02_visibility";
	rename -uid "E1E941FE-42B7-4A10-ED62-159DE113109F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateX";
	rename -uid "F65EA931-4355-4DF5-B6EC-0F90DEBF27EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateY";
	rename -uid "EF545E92-4549-A45E-A4B5-A6BB66D73B29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateZ";
	rename -uid "CB5C45ED-4288-DD5A-B19A-048051FEA1DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleX";
	rename -uid "92BA8FB0-42FF-8D96-A3D4-42A2D74F1659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleY";
	rename -uid "570B17A6-40B7-392C-E3BC-D2B650D8AD5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleZ";
	rename -uid "1CAC10EA-43C6-D37D-E1CA-6CBCAA2387D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateX";
	rename -uid "FF2070A9-4011-1A83-FE88-04BDFAB53BD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateY";
	rename -uid "71ED6C26-4B92-A30C-C66D-3F9BC6D0778B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateZ";
	rename -uid "0DAF7B90-4B9B-6848-5457-088D511BDE2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 59.008894300118449;
createNode animCurveTU -n "R_middleFinger_ctrl_03_visibility";
	rename -uid "9F0DB6C1-4D0E-F03C-466C-2CA5E7E0A710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateX";
	rename -uid "8DA7DD27-444A-BDE0-05E1-CBA0CDF949FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateY";
	rename -uid "84CD03BD-4929-A542-602D-D697584F4556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateZ";
	rename -uid "D5732C95-490F-6F38-FE78-9B9176615608";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 0 31 0;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleX";
	rename -uid "40B56E76-40B5-1601-BF73-4C8D7E02B8D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleY";
	rename -uid "CB2A979D-48EE-A608-DF09-64B925654312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleZ";
	rename -uid "C18ABEED-4D0E-578C-A9DC-598E4C92A284";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  28 1 31 1;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateX";
	rename -uid "239BD3BC-42DA-7474-BBFD-C1B7A7D60322";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -6.2133185104587811 28 0 31 7.2993991196841508;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateY";
	rename -uid "FF67CCC7-492D-FD37-65BC-EFB78E537A6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 4.6442821602129145 28 0 31 4.8511466230778577;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateZ";
	rename -uid "852C6691-4B32-8B04-B061-F6BE7C93C46C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -0.55159893062024234 28 0 31 1.2381660170114801;
createNode animCurveTU -n "R_ringFinger_ctrl_visibility";
	rename -uid "FBC19400-4138-0266-76BA-148E4AE65B40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_translateX";
	rename -uid "AB1C35E1-4109-B204-E8A5-BEB5A6B1466C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_translateY";
	rename -uid "CE9078BE-4D41-13A4-2C09-90831AF5CD95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_translateZ";
	rename -uid "90940781-4AD5-874C-88AA-3E933EC14B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleX";
	rename -uid "C9D57463-4F24-E683-EC5E-F2BFC486F508";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleY";
	rename -uid "A0EC5E00-4C38-1413-BE58-16AEAD6BFCCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleZ";
	rename -uid "0D0E45BB-4B58-A867-6064-BB8E1CD2B0AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateZ";
	rename -uid "E8D078A4-4A65-A19B-0E44-1497EDB8A85D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 79.672275673093537 28 0 31 23.039145851030085;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateX";
	rename -uid "EC9C1019-4D09-3C62-F18C-E1A7E120894D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -0.10082441026985742 28 0 31 0;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateY";
	rename -uid "D2124B07-4748-2E14-A870-76914509C515";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 2.7924800977259414 28 0 31 0;
createNode animCurveTU -n "R_ringFinger_ctrl_02_visibility";
	rename -uid "CCDFC9D1-4346-CE6D-C0E6-BC98718D1B44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateX";
	rename -uid "A7277C76-4426-7530-D4E2-9C8083801C3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateY";
	rename -uid "41E1F45E-4D69-85F8-FA3E-B99F5CFA2362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateZ";
	rename -uid "1491491C-4F21-3533-B5F5-7ABB6AF47E17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleX";
	rename -uid "085207AE-410E-895D-9311-43A809C5989A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleY";
	rename -uid "ABB0E57F-4F0A-E1E7-CB51-E0A3C704BB0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleZ";
	rename -uid "CC5C3BF9-4FEE-3733-E481-7EBDD1589615";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateX";
	rename -uid "6AD158B5-4F3C-719F-0DD7-B9B45BF992E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 4.6517380479971111 28 0 31 0;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateY";
	rename -uid "E5F18188-4AD0-BBC7-F53C-C7B019E94EE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 17.1006144557801 28 0 31 0;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateZ";
	rename -uid "1E885A05-4948-5074-A35E-5CB2F72D6DF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 167.90603092768583 28 0 31 59.008894300118449;
createNode animCurveTU -n "R_ringFinger_ctrl_03_visibility";
	rename -uid "2CA68763-42CE-1A47-1B83-B8808413C4AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateX";
	rename -uid "3F759444-4314-6322-F8F7-ECAECEF7EF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateY";
	rename -uid "00DDAC56-4805-6E42-3A6B-F4BFA69824C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateZ";
	rename -uid "7857584B-48A8-8E27-284A-6ABD71DA1871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleX";
	rename -uid "64ACDC21-4DDC-AF5E-07DF-0392A8F77439";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleY";
	rename -uid "0D93A2A0-436F-28B3-22CC-7289C0AE0304";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleZ";
	rename -uid "257C6EF2-4EE6-8141-A521-308D312D8281";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateX";
	rename -uid "879F57A8-4B81-A7E6-FAF9-F88B5316F572";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -2.959498285990029 28 0 31 7.3417244799009609;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateY";
	rename -uid "27C5A0EE-423A-094F-C5AB-A4A2E9EE7093";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 5.862050911693335 28 0 31 7.8182440957101882;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateZ";
	rename -uid "F9B65B99-4001-73B1-3BBE-058585A4FFB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0.11803717388434087 28 0 31 1.6216396506631956;
createNode animCurveTU -n "R_pinkyFinger_ctrl_visibility";
	rename -uid "006DDE0E-4B26-B9FD-BAE5-38A7EEDCAB36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateX";
	rename -uid "2C4F434C-45AB-BB3B-71E6-FA9470E60DA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateY";
	rename -uid "EF8FC333-47BD-F503-7397-F597E594880A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateZ";
	rename -uid "0CC493A0-4333-6BBC-78D8-35BCF8D134A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleX";
	rename -uid "5A2B8677-4481-033A-C564-CE9D72B08E03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleY";
	rename -uid "5ADE800B-481B-0E02-1089-AF8760AE785D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleZ";
	rename -uid "25CB7CE3-4659-A090-80BE-8B982855689B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateZ";
	rename -uid "863FE859-4DE3-7116-2C90-7EB81EA42F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 91.725177371756203 28 0 31 23.039145851030085;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateX";
	rename -uid "C9BFD9C8-4D46-1515-74A5-AF8DACF36058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -0.28994224476121616 28 0 31 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateY";
	rename -uid "F6029A53-46BE-32EF-F123-298F56411BC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1.7526778404623575 28 0 31 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_visibility";
	rename -uid "A42C3C98-4855-BFFA-3B7D-D983F8EDDDBB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateX";
	rename -uid "0D6E72D8-4CE8-C960-1AB4-72ACF69C3BD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateY";
	rename -uid "179F6EF5-4E9D-02B5-91FA-A4AD4F420F44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateZ";
	rename -uid "829E1AA2-47E1-4B63-C1BC-2091059BB637";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleX";
	rename -uid "9369B24C-4CCF-68E4-49B4-F28CB8752547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleY";
	rename -uid "A203CE01-4D73-A490-816F-C8AFFE1C9D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleZ";
	rename -uid "1860B303-46B1-23D6-5636-B88259976DD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateX";
	rename -uid "62F7BC97-4A43-CE5B-750B-8E978EC17469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 17.357802019141936 28 0 31 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateY";
	rename -uid "DBE40453-4379-C074-0583-E18B119A0883";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 23.03186884746054 28 0 31 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateZ";
	rename -uid "F3E0C551-44FF-9757-9002-32A79949C95A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 160.78927044657334 28 0 31 59.008894300118449;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_visibility";
	rename -uid "DD2E1B55-416C-AB0B-BD4D-928290EBA9FE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateX";
	rename -uid "33C3A41E-4E92-1339-9397-D79808A563CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateY";
	rename -uid "6EE705B8-4C06-F52E-8CDB-5781023E4CCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateZ";
	rename -uid "91652ADB-47D3-D828-CCD5-DBAE8EF0F3F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 28 0 31 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleX";
	rename -uid "212BBE90-4E7F-8FC1-4D00-91893AF9D1BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleY";
	rename -uid "F1D192C2-4B6A-5655-9EFB-FC9443AA2FDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleZ";
	rename -uid "B5EC4F0F-47B9-D655-5D99-BEA2581D3B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 28 1 31 1;
createNode animCurveTA -n "R_thumbFinger_ctrl_rotateX";
	rename -uid "F9C3893C-4C10-A511-5501-25BA41941307";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_rotateY";
	rename -uid "580AC7D7-4C50-5782-CB21-25AAE85CBA54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_rotateZ";
	rename -uid "71B4B801-4C5B-1345-2EA2-ACB595ECDE4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_visibility";
	rename -uid "B296E928-4DEC-EDFF-1BCD-7FB05EB68442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_thumbFinger_ctrl_translateX";
	rename -uid "B541C8AB-4811-559F-504D-91B870AD7F0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_translateY";
	rename -uid "D12E6332-471F-A795-77FB-2181D4CAAD3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_translateZ";
	rename -uid "AF160408-4BDD-B9FE-64F6-339655881071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_scaleX";
	rename -uid "E96A5FEA-4A5F-4B83-3BEF-89BA1BABFDEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_scaleY";
	rename -uid "CB06E428-49CB-232A-B910-48A99037CDB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_scaleZ";
	rename -uid "95B827B3-4A7E-F43E-D37E-7A87897D7E7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateY";
	rename -uid "5A5DBF68-4CCC-7564-9686-6DAD07DD163E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -15.606349132577344 30 0 34 -7.2832490888698276;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateX";
	rename -uid "C92C82BC-46FC-85A5-AA29-AB957E337820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 4.7968505265243637 30 0 34 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateZ";
	rename -uid "C3445374-4C1A-18B6-86D4-B58B6C122CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 -1.6868655531100138 30 0 34 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_visibility";
	rename -uid "BD22921E-4B1F-070E-C450-D0ADB3705772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 30 1 34 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateX";
	rename -uid "3292C233-4CE6-6B6B-5921-4298684EF31D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 30 0 34 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateY";
	rename -uid "6041D206-47EA-2FC6-8EB6-169DF9FBEB22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 30 0 34 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateZ";
	rename -uid "2CB1F5A5-4E09-046F-AFDA-4BAB3F40A7A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 0 30 0 34 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleX";
	rename -uid "212925B6-4802-C31E-C582-1B863400B1F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 30 1 34 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleY";
	rename -uid "68610D0D-4012-435B-B8DE-F1997A6B5B29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 30 1 34 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleZ";
	rename -uid "E9B11D78-4765-4F84-1556-F2AB0220EABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  23 1 30 1 34 1;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateY";
	rename -uid "8447CFAA-46BA-8100-3057-698CABB8C741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 -56.656369422747723 30 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateX";
	rename -uid "BF2EAD6A-4FF6-7785-B3DF-DD86211AD4AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 30.162972758586104 30 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateZ";
	rename -uid "9BB7A6DE-435B-61B6-A9B4-498F40C897D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 -20.815205091974324 30 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_visibility";
	rename -uid "E8FCA4C1-44C2-F913-11FF-36AC3E00230E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 1 30 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateX";
	rename -uid "98BACE75-4967-8B9B-245E-C79741F42FE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 0 30 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateY";
	rename -uid "138628AD-4824-2F25-7DCC-EAB92024C127";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 0 30 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateZ";
	rename -uid "DE333B73-4210-F742-404F-2AAF228C3716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 0 30 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleX";
	rename -uid "6A4A6F16-4883-200D-2E99-9AB8AE44AAA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 1 30 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleY";
	rename -uid "85EE4E82-4149-10A6-75FB-BEBA45C026D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 1 30 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleZ";
	rename -uid "562CF810-4B07-F442-295F-67A8D513FE64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  23 1 30 1;
createNode animCurveTA -n "L_shoulder_ctrl_rotateX";
	rename -uid "1F6CB9E8-437D-9B32-FB9B-4DBDEFD9B875";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 18.748314679970314 10 -8.0368162825554101
		 17 -107.14763606483064 20 -61.875748211258994 27 16.536669943258435 33 4.8693135339454647;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 0.23238854110240936 1 0.15260539948940277 
		1 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.97262305021286011 0 0.98828721046447754 
		0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.23238854110240936 1 0.15260541439056396 
		1 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.97262305021286011 0 0.98828721046447754 
		0 0;
createNode animCurveTA -n "L_shoulder_ctrl_rotateY";
	rename -uid "CDDC4EAE-4DAD-2E57-F075-71A7C1B6C7BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 1.861898842241515 10 -0.43576342779292582
		 17 -4.7452711089848973 20 -5.0972087931051293 27 1.6489464859210219 33 0.49187976418058466;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 0.97671592235565186 0.98344206809997559 
		1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.21453681588172913 -0.18122288584709167 
		0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.97671586275100708 0.98344206809997559 
		1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.21453680098056793 -0.18122290074825287 
		0 0 0;
createNode animCurveTA -n "L_shoulder_ctrl_rotateZ";
	rename -uid "F6962C66-42A7-8347-9293-92B9DE59DDD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 -84.532118225484027 10 -86.892731870543088
		 17 -91.903656846923056 20 -87.281205474744965 27 -84.464360141376943 33 -84.245633352091076;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 0.97126048803329468 1 0.93180572986602783 
		0.99836450815200806 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.2380191832780838 0 0.36295759677886963 
		0.057168874889612198 0;
	setAttr -s 6 ".kox[0:5]"  1 0.9712604284286499 1 0.93180567026138306 
		0.99836450815200806 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.23801915347576141 0 0.36295759677886963 
		0.057168874889612198 0;
createNode animCurveTU -n "L_shoulder_ctrl_visibility";
	rename -uid "4552C259-4A1C-CB47-011F-8EBD3C65F6E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 1 10 1 17 1 20 1 27 1 33 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_elbow_ctrl_rotateY";
	rename -uid "75EFD234-473C-9DCF-3AE7-A8A231AB77AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 8.3475232188654651 10 -90.721782743737933
		 17.75 9.6789556746571641 20 -22.592808464512434 23 -66.310421739347973 33 -22.014447133061783;
createNode animCurveTU -n "L_elbow_ctrl_visibility";
	rename -uid "628F7D80-4B0E-83E6-850B-55A93DC872AB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.25 1 10 1 17.75 1 20 1 23 1 33 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "L_wrist_ctrl_rotateX";
	rename -uid "7469F0AF-413D-6FA2-8E53-1AB21A15294E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.78964817503888196 6.25 39.325522669455985
		 13 44.63226712491138 15 40.71468931532722 17 48.098052033930038 20 35.554820902417632
		 23 69.212146882494281 31 5.6951301306342978;
	setAttr -s 8 ".kit[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 0.72403538227081299 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0.68976283073425293 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 0.72403544187545776 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0.68976283073425293 0 0 0 0 0 0;
createNode animCurveTA -n "L_wrist_ctrl_rotateY";
	rename -uid "CEDFD68F-4AB2-D1CE-02C8-48A5C8BBC5CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 12.822852461685319 6.25 1.7657028660971879
		 13 -64.677754889842092 15 -64.761736780934868 17 -59.00951988912761 20 -59.777425786266313
		 23 -63.485102514459186 31 -6.0224487746846114;
	setAttr -s 8 ".kit[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 0.30508756637573242 0.99783176183700562 
		1 1 0.93147528171539307 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95232433080673218 -0.065816208720207214 
		0 0 -0.36380469799041748 0 0;
	setAttr -s 8 ".kox[0:7]"  1 0.30508756637573242 0.99783176183700562 
		1 1 0.93147522211074829 1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.95232433080673218 -0.065816208720207214 
		0 0 -0.36380469799041748 0 0;
createNode animCurveTA -n "L_wrist_ctrl_rotateZ";
	rename -uid "9B2ED8DB-41EA-7E53-F852-67869036D656";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -9.887718729316072 6.25 -3.0307085168485606
		 13 36.650072630768562 15 44.466141955236232 17 38.726893452277679 20 50.403488772958049
		 23 16.73923386571559 31 2.7143632957693722;
	setAttr -s 8 ".kit[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 1 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 0.47070655226707458 0.3318958580493927 
		1 1 1 0.4031442403793335 1;
	setAttr -s 8 ".kiy[0:7]"  0 0.88228976726531982 0.94331598281860352 
		0 0 0 -0.91513639688491821 0;
	setAttr -s 8 ".kox[0:7]"  1 0.47070658206939697 0.33189588785171509 
		1 1 1 0.4031442403793335 1;
	setAttr -s 8 ".koy[0:7]"  0 0.8822898268699646 0.94331604242324829 
		0 0 0 -0.91513639688491821 0;
createNode animCurveTU -n "L_wrist_ctrl_visibility";
	rename -uid "5DAA7B32-4EA1-A3C0-853B-CE857255192D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 6.25 1 13 1 15 1 17 1 20 1 23 1 31 1;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateZ";
	rename -uid "47043BD1-4A0B-6F4B-C3E9-F1B267199A87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 18 8.193875517232307;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateX";
	rename -uid "9C29224B-45B1-6D49-AC6E-EDB08C49DA62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 18 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateY";
	rename -uid "B4C796E7-4502-075C-3591-CBB716A3B632";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 18 0;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_visibility";
	rename -uid "8955AAD5-4AAE-325E-5C11-CAB563F5E806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 18 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateX";
	rename -uid "B0BA7132-4DDC-C8E7-2905-4681630C2A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 18 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateY";
	rename -uid "57D6D78A-4041-CB72-EC15-78BDD12F7709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 18 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateZ";
	rename -uid "4EE6C409-4DAD-ADEE-6ED0-35A04064AEC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 2.5243548967072378e-029 18 2.5243548967072378e-029;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleX";
	rename -uid "E17A6B90-464E-9EF6-04BA-C4B1FDC0845F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 18 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleY";
	rename -uid "FFA99EB8-4EC4-E27C-165B-72B812C71340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 18 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleZ";
	rename -uid "1B921380-470E-2C25-F56D-3D849DF1457E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 18 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_Curl";
	rename -uid "59D06E39-4F17-35E6-E58A-90A8FB790CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateX";
	rename -uid "4212EAD6-40E8-1263-A99B-79804744B15D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0.55693839348636198;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateY";
	rename -uid "DEE85E4C-4FB6-A9D0-10BE-84BD8DFD5E18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 3.387784078466793;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateZ";
	rename -uid "7F648735-4412-6432-26C2-EAA5381307C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 18.573297636309015 13 0 15 1.7755151563384366;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_visibility";
	rename -uid "EBCD70BD-41D2-E194-6221-048BBC73D516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateX";
	rename -uid "1F8C70E4-4B51-D014-0851-BD8EBA71E12A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateY";
	rename -uid "24D22032-440B-B226-ED8D-91B818427C09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateZ";
	rename -uid "72DA1807-4B27-3062-E6C2-AC91DD14217E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleX";
	rename -uid "E3C20379-44D9-C108-75F5-409058F450C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleY";
	rename -uid "CACA4D85-4B2B-B0FD-319E-48991A23FADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleZ";
	rename -uid "E5B64C3D-4969-7111-2426-5EA96BAB0D95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_Curl";
	rename -uid "810B6299-4F5A-5F2D-C9B5-38BDBAD4F704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 14 0 16 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateZ";
	rename -uid "68437077-484F-09F6-C0A9-44A0136BB0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 14 0 16 -13.171868741143591;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateX";
	rename -uid "E89C1A8B-4389-9D56-25B6-B798F437A8EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 14 0 16 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateY";
	rename -uid "30E19414-4DD2-6276-F8C3-34BFBBB4FE08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 14 0 16 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_visibility";
	rename -uid "E8853BD1-4FEA-D247-C74D-A89D924A2E90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 14 1 16 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateX";
	rename -uid "C204139B-439B-D5EB-5F79-149043ABD861";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 14 -9.8607613152626476e-032
		 16 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateY";
	rename -uid "0970D38C-44ED-D079-1C88-A68BA90B9928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 14 -9.8607613152626476e-032
		 16 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateZ";
	rename -uid "A6BA2159-484E-1E33-5AC6-588C720EDCC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 2.5243548967072378e-029 14 2.5243548967072378e-029
		 16 2.5243548967072378e-029;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleX";
	rename -uid "2FFA54F7-4AA9-F715-1A51-E7B89C8DF9EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 14 1 16 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleY";
	rename -uid "7271EE31-4EA6-E60C-088A-D182E5A7334E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 14 1 16 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleZ";
	rename -uid "D885F06E-4915-33E9-B473-F4B6E2189270";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 14 1 16 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_Curl";
	rename -uid "49C4B6CC-441D-8931-4331-C2B999FC25C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 16 0 18 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateZ";
	rename -uid "CACCCD65-4982-BA35-7A06-B79EA408C835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 16 0 18 -21.123425112255081;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateX";
	rename -uid "CC858024-41DF-2354-8CEE-9CBA8826C253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 16 0 18 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateY";
	rename -uid "5DD4D2AE-4002-7CA7-B77A-D180E8C9B62A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 16 0 18 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_visibility";
	rename -uid "8282E35E-4426-EF90-A4F8-DEBE9734FDC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 16 1 18 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateX";
	rename -uid "5C698DC3-43F6-DE48-7819-49ACC0C54559";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -9.8607613152626476e-032 16 -9.8607613152626476e-032
		 18 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateY";
	rename -uid "837807EB-4E97-669D-FEBE-B5935837AD04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -9.8607613152626476e-032 16 -9.8607613152626476e-032
		 18 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateZ";
	rename -uid "F5D41C95-4ED8-8A34-6816-418C567C9135";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 2.5243548967072378e-029 16 2.5243548967072378e-029
		 18 2.5243548967072378e-029;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleX";
	rename -uid "61BE1DD8-4CAA-D94E-AD22-37B3A78E8EFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 16 1 18 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleY";
	rename -uid "11BAC2AE-449E-A364-5BFB-4D9B64A109DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 16 1 18 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleZ";
	rename -uid "11F81E20-43E1-3BB6-8AE5-CD87C0E0E16D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 16 1 18 1;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateX";
	rename -uid "4D8B271B-4164-5456-D973-AE9096AFF700";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 -1.9951927157663604e-016 13 0 15 0;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateY";
	rename -uid "6D07B820-45BB-DBF6-E02B-E1865D5DAAC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 -4.9181886850277179 13 -5.2839602323138735
		 15 -1.4551697361861551;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateZ";
	rename -uid "6DF03FAE-4DD6-29D9-D2BB-1DB36AD334D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 18.573297636309022 13 0 15 6.2660574681495156;
createNode animCurveTU -n "L_ringFinger_ctrl_visibility";
	rename -uid "58720791-48F7-D987-00A5-6C899B290E54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_translateX";
	rename -uid "A16E2364-40D3-7EA4-ECCF-A3A50D523B11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTL -n "L_ringFinger_ctrl_translateY";
	rename -uid "C9C1E527-43DA-CE01-A493-33A632079823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTL -n "L_ringFinger_ctrl_translateZ";
	rename -uid "799EDCBA-4A3F-A486-2FD2-43A6AB93007B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 13 0 15 0;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleX";
	rename -uid "1B26D92F-4EE9-54D0-30E6-1484389753BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleY";
	rename -uid "68BEB591-4E82-227A-BD7B-7282B1CB406A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleZ";
	rename -uid "3C3E6E17-4D72-6185-0358-B3B8EDB22C8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 13 1 15 1;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateZ";
	rename -uid "B0DAB7E6-493B-7294-523D-EA9E794920C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 13 0 15 -10.61666424689197;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateX";
	rename -uid "120BEB5F-4092-FB56-0FB2-BEA25C4FFF22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 13 0 15 0;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateY";
	rename -uid "294B1DE1-494C-17C8-380E-3DB59CE1081A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 13 0 15 0;
createNode animCurveTU -n "L_ringFinger_ctrl_02_visibility";
	rename -uid "A275415A-4822-2777-2D34-9CBBA293AC09";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 13 1 15 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateX";
	rename -uid "5F250AF1-46AF-FEB2-5AA9-0C97263C38D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 13 -9.8607613152626476e-032
		 15 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateY";
	rename -uid "A64316F0-4322-3D4F-E4F7-FFB372F8BEC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 13 -9.8607613152626476e-032
		 15 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateZ";
	rename -uid "62DAF00D-4D26-CED5-D837-349077B9E8D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 2.5243548967072378e-029 13 2.5243548967072378e-029
		 15 2.5243548967072378e-029;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleX";
	rename -uid "1DD9376A-4E6E-33B0-4BD0-9386709D6E94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 13 1 15 1;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleY";
	rename -uid "815B1C74-4020-B490-DA46-DCBD3D43C9A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 13 1 15 1;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleZ";
	rename -uid "96049991-4483-A0AE-7403-86B1473B49AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 13 1 15 1;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateX";
	rename -uid "A11A64FC-4BEE-AAEC-3D30-47BF30E6EDE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 14 0 16 0;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateZ";
	rename -uid "B875E3DC-4E6F-376D-2DAB-CEB8417A1000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 14 0 16 -14.387192514218757;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateY";
	rename -uid "7ADD0337-4980-F19B-276B-CA81B5AD4F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 14 0 16 0;
createNode animCurveTU -n "L_ringFinger_ctrl_03_visibility";
	rename -uid "4FF1DD2B-4AB6-6422-986F-1EA7C2349D7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 14 1 16 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateX";
	rename -uid "BB880ABF-40A4-E233-6423-F79E81E1914E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -9.8607613152626476e-032 14 -9.8607613152626476e-032
		 16 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateY";
	rename -uid "4FA17F13-4E66-56B0-6569-479B3B1942E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -9.8607613152626476e-032 14 -9.8607613152626476e-032
		 16 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateZ";
	rename -uid "B290091F-40DC-9FF7-534D-C79CECD7C6AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 2.5243548967072378e-029 14 2.5243548967072378e-029
		 16 2.5243548967072378e-029;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleX";
	rename -uid "CE2099AD-49D1-0DC8-9422-C0A7D6F3C20F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 14 1 16 1;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleY";
	rename -uid "BDFC4933-4DCD-E6FA-513C-4C89553417C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 14 1 16 1;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleZ";
	rename -uid "5B14C7B6-4077-8AAD-BC0E-63B7350C88C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 14 1 16 1;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateX";
	rename -uid "CD5CCD24-464E-774E-D18B-B1B0E084BD5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 14 0 16 6.9119284591248418;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateY";
	rename -uid "58BD2536-42BB-3728-3651-B28C0AB17B38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 14 0 16 1.1182655755062632;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateZ";
	rename -uid "B8035B7A-49E2-8DF7-8DF8-1ABCC65D12F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 18.573297636309015 14 0 16 10.001812634078941;
createNode animCurveTU -n "L_middleFinger_ctrl_visibility";
	rename -uid "D50D7EA5-4E96-A080-78D3-4EBCE3CB14D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 14 1 16 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_translateX";
	rename -uid "B2DC99E1-4825-78B4-F3CE-B7AA9785358A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 14 0 16 0;
createNode animCurveTL -n "L_middleFinger_ctrl_translateY";
	rename -uid "CE3588CA-44E8-DAFE-25BB-61961D3DC182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 14 0 16 0;
createNode animCurveTL -n "L_middleFinger_ctrl_translateZ";
	rename -uid "C3B44ED3-44BF-CDE1-EFEA-09A30B1E50AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 14 0 16 0;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleX";
	rename -uid "35D7049A-43F5-4B9D-FDF5-BDB59B6FAA6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 14 1 16 1;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleY";
	rename -uid "48B3AFC0-48DB-1A08-FF76-008A320D6A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 14 1 16 1;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleZ";
	rename -uid "23A890A1-4E57-D05D-A031-289A304A5C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 14 1 16 1;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateZ";
	rename -uid "B7511D92-458F-B25C-B93D-CDBDC7FDC036";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 15 0 17 -12.940753565069899;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateX";
	rename -uid "19EF2375-4477-73C9-7A33-B2882044D38F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 15 0 17 0;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateY";
	rename -uid "29A84B8D-4457-4EFD-611B-45B4B4074A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 15 0 17 0;
createNode animCurveTU -n "L_middleFinger_ctrl_02_visibility";
	rename -uid "0191C087-439A-D7A8-1F59-BABCCBB6439E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 15 1 17 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateX";
	rename -uid "44AFAE2D-4500-36E8-D975-EBA8C33F9BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 15 -9.8607613152626476e-032
		 17 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateY";
	rename -uid "C5247CC1-4AC5-84CC-183B-618D7E8AA670";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 -9.8607613152626476e-032 15 -9.8607613152626476e-032
		 17 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateZ";
	rename -uid "E2DFA129-442B-6A63-DD48-10A1FF94EE3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 2.5243548967072378e-029 15 2.5243548967072378e-029
		 17 2.5243548967072378e-029;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleX";
	rename -uid "C25F0D00-45C5-BCE4-8909-9CAD0EB3B04B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 15 1 17 1;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleY";
	rename -uid "8E38E9D0-4DCA-E68B-F760-C1B7B1B86CA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 15 1 17 1;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleZ";
	rename -uid "24DC96F6-449D-379C-289E-3CA8D4F925A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 15 1 17 1;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateZ";
	rename -uid "DF005591-4700-9DF9-3FAD-C4A7C6E4B5A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 -30.34407300117736;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateX";
	rename -uid "86E04A0B-42EA-17A1-FC1B-2BA31A878D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 0;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateY";
	rename -uid "701533FF-4BCB-77B2-1CBF-848D3AA76A05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 0;
createNode animCurveTU -n "L_middleFinger_ctrl_03_visibility";
	rename -uid "F4DECF6E-4793-A0CE-E056-319FAF4AE6E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 15 1 17 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateX";
	rename -uid "79325EF2-4BAA-B4C5-EEEA-6EBF403C68FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateY";
	rename -uid "151BF998-4E81-A569-5A38-C09A74775D23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateZ";
	rename -uid "7AF3F30D-4834-F925-1438-64BAAAD172E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 15 0 17 2.5243548967072378e-029;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleX";
	rename -uid "B35A9F3A-4286-F18B-BCBF-F4949D37C517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 15 1 17 1;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleY";
	rename -uid "B8535196-4FB6-84D1-440E-04BEE8FE0563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 15 1 17 1;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleZ";
	rename -uid "8B51FDCB-4941-F464-42F5-088122345D55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 15 1 17 1;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateX";
	rename -uid "81004EA0-445A-CBAD-B1F0-53B261856F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 12 8.5908225387157433 14 0;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateY";
	rename -uid "4A7B79C8-439E-F94C-8BDF-F6B6B292B076";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 12 2.1330306296311847 14 4.3658736016670066;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateZ";
	rename -uid "B67625D6-4811-1030-9276-E4AAF26198AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 18.573297636309015 12 2.0881215544038492
		 14 13.506818706111801;
createNode animCurveTU -n "L_indexFinger_ctrl_visibility";
	rename -uid "04D89F3B-47C0-94F8-4293-E589D8E8B857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 12 1 14 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_translateX";
	rename -uid "D27B17D9-463A-3740-402C-D89536EA59EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 12 0 14 0;
createNode animCurveTL -n "L_indexFinger_ctrl_translateY";
	rename -uid "4871C4A6-4537-4E78-158D-8580FCD6060B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 12 0 14 0;
createNode animCurveTL -n "L_indexFinger_ctrl_translateZ";
	rename -uid "066F4AF1-4C78-C38F-64B9-D6BAFB74D5E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 10 0 12 0 14 0;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleX";
	rename -uid "3FF53A6B-4B90-7774-AE06-3E99BCA5AF16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 12 1 14 1;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleY";
	rename -uid "66A6F72A-4384-1E45-6047-BEA8E6CE2C58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 12 1 14 1;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleZ";
	rename -uid "5090C518-42BC-E3B0-0CCD-B8B3BBB8B7E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 1 10 1 12 1 14 1;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateZ";
	rename -uid "95AA7EF2-46EB-6B3D-EB37-ADB0F3E24B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 13 0 15 -16.58740296594053 18 -18.199385931503468;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateX";
	rename -uid "735EDD27-4E73-85CF-391F-6DB6C35BFE2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 13 0 15 0 18 0;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateY";
	rename -uid "E29AC2B5-47A0-08FE-1EF2-06B019E4E18D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 13 0 15 0 18 0;
createNode animCurveTU -n "L_indexFinger_ctrl_02_visibility";
	rename -uid "89F524AE-483A-DC82-5DB2-A3B89B5D9730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 1 13 1 15 1 18 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateX";
	rename -uid "5B5EAC4B-4ECE-C357-A3D2-E5A2E2A7B459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 13 0 15 0 18 0;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateY";
	rename -uid "18E750C8-42D0-6C7C-2937-38AE3E2848F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 13 0 15 0 18 0;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateZ";
	rename -uid "C6F3B4E1-45E4-51E3-C0DE-DEA42ADE3E83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 2.5243548967072378e-029 13 2.5243548967072378e-029
		 15 2.5243548967072378e-029 18 2.5243548967072378e-029;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleX";
	rename -uid "DF499E1F-4732-7574-00BC-EC83CEA08C0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 1 13 1 15 1 18 1;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleY";
	rename -uid "F56EFD18-44E0-CB86-22EA-02881CE9B1FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 1 13 1 15 1 18 1;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleZ";
	rename -uid "F7A942F6-4838-3AE8-A76C-B2958D9602CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 1 13 1 15 1 18 1;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateZ";
	rename -uid "432B2DB5-4B30-76D7-0465-E78C139DE014";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 -30.197258420988014;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateX";
	rename -uid "FB718A34-4AF1-CE73-62FB-35804EB168D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 0;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateY";
	rename -uid "46950A80-447A-206A-15A2-5EB89E698086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 0;
createNode animCurveTU -n "L_indexFinger_ctrl_03_visibility";
	rename -uid "82A575BC-4143-D761-4188-36BBCDB853A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 18 1 20 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateX";
	rename -uid "750E41AB-4A9F-EC04-5BCF-5E866186AD5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 0;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateY";
	rename -uid "597205C9-4EAB-92AB-D174-3281702CED71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 0;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateZ";
	rename -uid "6FE3734D-4A45-9E14-9032-A8A8C3B4319E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 18 0 20 2.5243548967072378e-029;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleX";
	rename -uid "D4807CE6-4D10-35E4-9763-D28CAF0E0519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 18 1 20 1;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleY";
	rename -uid "5FFEA5C1-40EA-20FE-92D3-C899BA3D30DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 18 1 20 1;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleZ";
	rename -uid "485C57BC-43C0-FA72-07F4-72B9EB0E956C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 18 1 20 1;
createNode pairBlend -n "pairBlend1";
	rename -uid "329A6FCC-431F-00F5-605E-B9AA04616F8B";
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "016538BE-4136-4CE7-E424-19AB73CEF4C9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "0003C351-45D7-DF08-4A66-6CA735AF3A3D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.22752281616943559 29 -0.22752281616943559;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "B006DB06-4A6B-1A2B-DC30-D5BBD8A51614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "6563D1E3-4D84-D44C-9EA1-4B88B3BADE8B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "57473D13-498A-C584-FCA3-BB9AE06BB1D1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "8FA4F889-4769-8BFF-0273-9BBD424C8D34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "Full_body_ctrl_blendParent1";
	rename -uid "30A1ED33-48FE-EE5D-B391-77A7E42252B9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 29 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode reference -n "sharedReferenceNode";
	rename -uid "41C9496E-4532-7B09-BD3F-AB8635147D67";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode pairBlend -n "pairBlend2";
	rename -uid "BA2FD962-451F-BB51-4AC7-EDB44AD87637";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "4B12A77E-4E34-8D69-C90E-E9A2B0576529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -3.7371517507196321e-014;
createNode animCurveTA -n "pairBlend2_inRotateY1";
	rename -uid "A34DFCB1-4C83-5FA0-39EB-5CBB9357EF90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 9.541664044390544e-015;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "F37ACE25-4326-14FD-EFB9-7DA28DB7EDFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -2.0673605429512861e-014;
createNode animCurveTU -n "R_indexFinger_01_joint_visibility";
	rename -uid "3D4267F6-495B-EC4B-A84C-8DB7F063056A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_indexFinger_01_joint_translateX";
	rename -uid "6BC516D5-4C70-09DF-93E3-6FB58B2322CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.44019569536436354;
createNode animCurveTL -n "R_indexFinger_01_joint_translateY";
	rename -uid "2A0AE022-4191-2D5B-515D-31A58AEF8835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.012742544446739501;
createNode animCurveTL -n "R_indexFinger_01_joint_translateZ";
	rename -uid "04651E09-456B-86CB-501E-2CAA4583E9DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.12953025672678886;
createNode animCurveTU -n "R_indexFinger_01_joint_scaleX";
	rename -uid "8F17D5E7-4613-D209-E646-3EB480F13516";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_indexFinger_01_joint_scaleY";
	rename -uid "29574490-44B5-AB94-36D1-1DA027EB642B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_indexFinger_01_joint_scaleZ";
	rename -uid "D1C8D61F-4ABF-403C-F252-D5A2472B1640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_indexFinger_01_joint_blendOrient1";
	rename -uid "8837003F-45E9-0DBF-4CB0-18805BA12F61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode pairBlend -n "pairBlend3";
	rename -uid "C74395FB-4408-1ED1-2A04-A8865498A5D4";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend3_inRotateX1";
	rename -uid "E1F5ACE0-433A-8E88-CBD4-6D8ACA535471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -8.3532906254451067;
createNode animCurveTA -n "pairBlend3_inRotateY1";
	rename -uid "038A0414-4BB1-4625-EE3F-1A91A90B4B18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 28.648645130049921;
createNode animCurveTA -n "pairBlend3_inRotateZ1";
	rename -uid "4E5F4FCB-445B-BB35-74DE-7EA46EF98192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -173.19575677346367;
createNode animCurveTU -n "R_middleFinger_03_joint_visibility";
	rename -uid "1CFB84C2-4E6F-18EA-8BC4-18B97EC0ACD3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_middleFinger_03_joint_translateX";
	rename -uid "8C059166-4D64-34D7-84DD-4E9D406794B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.16342961116929011;
createNode animCurveTL -n "R_middleFinger_03_joint_translateY";
	rename -uid "1C559426-4E3C-F3A8-184C-3AAB67641D74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -3.008049635155885e-006;
createNode animCurveTL -n "R_middleFinger_03_joint_translateZ";
	rename -uid "50E344FA-40BB-6B69-08CF-AA9FB9D92799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 7.597146627069673e-008;
createNode animCurveTU -n "R_middleFinger_03_joint_scaleX";
	rename -uid "03495349-490B-5F89-9C29-6D89103C73CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_middleFinger_03_joint_scaleY";
	rename -uid "78A9DF7C-4EEB-5401-BA17-9094420C0723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_middleFinger_03_joint_scaleZ";
	rename -uid "E8D90FC6-4A8E-5B58-A6A0-249B05FE2581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "R_middleFinger_03_joint_blendOrient1";
	rename -uid "DCE88E7C-41E0-1C22-487C-FAA1B099CC3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
connectAttr "pairBlend1.oty" "handrigg_device_skinnedRN.phl[1]";
connectAttr "pairBlend1.otx" "handrigg_device_skinnedRN.phl[2]";
connectAttr "pairBlend1.otz" "handrigg_device_skinnedRN.phl[3]";
connectAttr "pairBlend1.orx" "handrigg_device_skinnedRN.phl[4]";
connectAttr "pairBlend1.ory" "handrigg_device_skinnedRN.phl[5]";
connectAttr "pairBlend1.orz" "handrigg_device_skinnedRN.phl[6]";
connectAttr "Full_body_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[7]";
connectAttr "Full_body_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[8]";
connectAttr "Full_body_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[9]";
connectAttr "handrigg_device_skinnedRN.phl[10]" "pairBlend1.w";
connectAttr "Full_body_ctrl_blendParent1.o" "handrigg_device_skinnedRN.phl[11]";
connectAttr "Full_body_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[12]";
connectAttr "R_shoulder_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[13]";
connectAttr "R_shoulder_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[14]";
connectAttr "R_shoulder_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[15]";
connectAttr "R_shoulder_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[16]";
connectAttr "R_elbow_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[17]";
connectAttr "R_elbow_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[18]";
connectAttr "R_wrist_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[19]";
connectAttr "R_wrist_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[20]";
connectAttr "R_wrist_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[21]";
connectAttr "R_wrist_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[22]";
connectAttr "R_indexFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[23]";
connectAttr "R_indexFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[24]";
connectAttr "R_indexFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[25]";
connectAttr "R_indexFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[26]"
		;
connectAttr "R_indexFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[27]"
		;
connectAttr "R_indexFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[28]"
		;
connectAttr "R_indexFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[29]"
		;
connectAttr "R_indexFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[30]";
connectAttr "R_indexFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[31]";
connectAttr "R_indexFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[32]";
connectAttr "R_indexFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[33]"
		;
connectAttr "R_indexFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[34]"
		;
connectAttr "R_indexFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[35]"
		;
connectAttr "R_indexFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[36]"
		;
connectAttr "R_indexFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[37]"
		;
connectAttr "R_indexFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[38]"
		;
connectAttr "R_indexFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[39]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[40]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[41]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[42]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[43]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[44]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[45]"
		;
connectAttr "R_indexFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[46]"
		;
connectAttr "R_indexFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[47]"
		;
connectAttr "R_indexFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[48]"
		;
connectAttr "R_indexFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[49]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[50]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[51]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[52]"
		;
connectAttr "R_middleFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[53]";
connectAttr "R_middleFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[54]";
connectAttr "R_middleFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[55]";
connectAttr "R_middleFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[56]"
		;
connectAttr "R_middleFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[57]"
		;
connectAttr "R_middleFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[58]"
		;
connectAttr "R_middleFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[59]"
		;
connectAttr "R_middleFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[60]";
connectAttr "R_middleFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[61]";
connectAttr "R_middleFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[62]";
connectAttr "R_middleFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[63]"
		;
connectAttr "R_middleFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[64]"
		;
connectAttr "R_middleFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[65]"
		;
connectAttr "R_middleFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[66]"
		;
connectAttr "R_middleFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[67]"
		;
connectAttr "R_middleFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[68]"
		;
connectAttr "R_middleFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[69]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[70]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[71]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[72]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[73]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[74]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[75]"
		;
connectAttr "R_middleFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[76]"
		;
connectAttr "R_middleFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[77]"
		;
connectAttr "R_middleFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[78]"
		;
connectAttr "R_middleFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[79]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[80]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[81]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[82]"
		;
connectAttr "R_ringFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[83]";
connectAttr "R_ringFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[84]";
connectAttr "R_ringFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[85]";
connectAttr "R_ringFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[86]"
		;
connectAttr "R_ringFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[87]"
		;
connectAttr "R_ringFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[88]"
		;
connectAttr "R_ringFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[89]"
		;
connectAttr "R_ringFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[90]";
connectAttr "R_ringFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[91]";
connectAttr "R_ringFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[92]";
connectAttr "R_ringFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[93]"
		;
connectAttr "R_ringFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[94]"
		;
connectAttr "R_ringFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[95]"
		;
connectAttr "R_ringFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[96]"
		;
connectAttr "R_ringFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[97]"
		;
connectAttr "R_ringFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[98]"
		;
connectAttr "R_ringFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[99]"
		;
connectAttr "R_ringFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[100]"
		;
connectAttr "R_ringFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[101]"
		;
connectAttr "R_ringFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[102]"
		;
connectAttr "R_ringFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[103]"
		;
connectAttr "R_ringFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[104]"
		;
connectAttr "R_ringFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[105]"
		;
connectAttr "R_ringFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[106]"
		;
connectAttr "R_ringFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[107]"
		;
connectAttr "R_ringFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[108]"
		;
connectAttr "R_ringFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[109]"
		;
connectAttr "R_ringFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[110]"
		;
connectAttr "R_ringFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[111]"
		;
connectAttr "R_ringFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[112]"
		;
connectAttr "R_pinkyFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[113]";
connectAttr "R_pinkyFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[114]";
connectAttr "R_pinkyFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[115]";
connectAttr "R_pinkyFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[116]"
		;
connectAttr "R_pinkyFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[117]"
		;
connectAttr "R_pinkyFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[118]"
		;
connectAttr "R_pinkyFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[119]"
		;
connectAttr "R_pinkyFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[120]";
connectAttr "R_pinkyFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[121]";
connectAttr "R_pinkyFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[122]";
connectAttr "R_pinkyFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[123]"
		;
connectAttr "R_pinkyFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[124]"
		;
connectAttr "R_pinkyFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[125]"
		;
connectAttr "R_pinkyFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[126]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[127]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[128]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[129]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[130]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[131]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[132]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[133]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[134]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[135]"
		;
connectAttr "R_pinkyFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[136]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[137]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[138]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[139]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[140]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[141]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[142]"
		;
connectAttr "R_thumbFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[143]";
connectAttr "R_thumbFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[144]";
connectAttr "R_thumbFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[145]";
connectAttr "R_thumbFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[146]"
		;
connectAttr "R_thumbFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[147]"
		;
connectAttr "R_thumbFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[148]"
		;
connectAttr "R_thumbFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[149]"
		;
connectAttr "R_thumbFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[150]";
connectAttr "R_thumbFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[151]";
connectAttr "R_thumbFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[152]";
connectAttr "R_thumbFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[153]"
		;
connectAttr "R_thumbFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[154]"
		;
connectAttr "R_thumbFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[155]"
		;
connectAttr "R_thumbFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[156]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[157]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[158]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[159]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[160]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[161]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[162]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[163]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[164]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[165]"
		;
connectAttr "R_thumbFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[166]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[167]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[168]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[169]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[170]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[171]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[172]"
		;
connectAttr "L_shoulder_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[173]";
connectAttr "L_shoulder_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[174]";
connectAttr "L_shoulder_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[175]";
connectAttr "L_shoulder_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[176]";
connectAttr "L_elbow_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[177]";
connectAttr "L_elbow_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[178]";
connectAttr "L_wrist_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[179]";
connectAttr "L_wrist_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[180]";
connectAttr "L_wrist_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[181]";
connectAttr "L_wrist_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[182]";
connectAttr "L_thumbFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[183]"
		;
connectAttr "L_thumbFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[184]"
		;
connectAttr "L_thumbFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[185]"
		;
connectAttr "L_thumbFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[186]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[187]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[188]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[189]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[190]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[191]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[192]"
		;
connectAttr "L_pinkeyFinger_ctrl_Curl.o" "handrigg_device_skinnedRN.phl[193]";
connectAttr "L_pinkeyFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[194]"
		;
connectAttr "L_pinkeyFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[195]"
		;
connectAttr "L_pinkeyFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[196]"
		;
connectAttr "L_pinkeyFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[197]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[198]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[199]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[200]"
		;
connectAttr "L_pinkeyFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[201]";
connectAttr "L_pinkeyFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[202]";
connectAttr "L_pinkeyFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[203]";
connectAttr "L_pinkeyFinger_ctrl_02_Curl.o" "handrigg_device_skinnedRN.phl[204]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[205]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[206]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[207]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[208]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[209]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[210]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[211]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[212]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[213]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[214]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_Curl.o" "handrigg_device_skinnedRN.phl[215]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[216]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[217]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[218]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[219]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[220]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[221]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[222]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[223]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[224]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[225]"
		;
connectAttr "L_ringFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[226]";
connectAttr "L_ringFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[227]";
connectAttr "L_ringFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[228]";
connectAttr "L_ringFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[229]"
		;
connectAttr "L_ringFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[230]"
		;
connectAttr "L_ringFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[231]"
		;
connectAttr "L_ringFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[232]"
		;
connectAttr "L_ringFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[233]";
connectAttr "L_ringFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[234]";
connectAttr "L_ringFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[235]";
connectAttr "L_ringFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[236]"
		;
connectAttr "L_ringFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[237]"
		;
connectAttr "L_ringFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[238]"
		;
connectAttr "L_ringFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[239]"
		;
connectAttr "L_ringFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[240]"
		;
connectAttr "L_ringFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[241]"
		;
connectAttr "L_ringFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[242]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[243]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[244]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[245]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[246]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[247]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[248]"
		;
connectAttr "L_ringFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[249]"
		;
connectAttr "L_ringFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[250]"
		;
connectAttr "L_ringFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[251]"
		;
connectAttr "L_ringFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[252]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[253]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[254]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[255]"
		;
connectAttr "L_middleFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[256]"
		;
connectAttr "L_middleFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[257]"
		;
connectAttr "L_middleFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[258]"
		;
connectAttr "L_middleFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[259]"
		;
connectAttr "L_middleFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[260]"
		;
connectAttr "L_middleFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[261]"
		;
connectAttr "L_middleFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[262]"
		;
connectAttr "L_middleFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[263]";
connectAttr "L_middleFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[264]";
connectAttr "L_middleFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[265]";
connectAttr "L_middleFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[266]"
		;
connectAttr "L_middleFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[267]"
		;
connectAttr "L_middleFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[268]"
		;
connectAttr "L_middleFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[269]"
		;
connectAttr "L_middleFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[270]"
		;
connectAttr "L_middleFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[271]"
		;
connectAttr "L_middleFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[272]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[273]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[274]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[275]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[276]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[277]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[278]"
		;
connectAttr "L_middleFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[279]"
		;
connectAttr "L_middleFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[280]"
		;
connectAttr "L_middleFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[281]"
		;
connectAttr "L_middleFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[282]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[283]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[284]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[285]"
		;
connectAttr "L_indexFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[286]";
connectAttr "L_indexFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[287]";
connectAttr "L_indexFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[288]";
connectAttr "L_indexFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[289]"
		;
connectAttr "L_indexFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[290]"
		;
connectAttr "L_indexFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[291]"
		;
connectAttr "L_indexFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[292]"
		;
connectAttr "L_indexFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[293]";
connectAttr "L_indexFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[294]";
connectAttr "L_indexFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[295]";
connectAttr "L_indexFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[296]"
		;
connectAttr "L_indexFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[297]"
		;
connectAttr "L_indexFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[298]"
		;
connectAttr "L_indexFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[299]"
		;
connectAttr "L_indexFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[300]"
		;
connectAttr "L_indexFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[301]"
		;
connectAttr "L_indexFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[302]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[303]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[304]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[305]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[306]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[307]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[308]"
		;
connectAttr "L_indexFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[309]"
		;
connectAttr "L_indexFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[310]"
		;
connectAttr "L_indexFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[311]"
		;
connectAttr "L_indexFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[312]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[313]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[314]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[315]"
		;
connectAttr "handrigg_device_skinnedRN.phl[316]" "pairBlend1.ity2";
connectAttr "handrigg_device_skinnedRN.phl[317]" "pairBlend1.itx2";
connectAttr "handrigg_device_skinnedRN.phl[318]" "pairBlend1.itz2";
connectAttr "handrigg_device_skinnedRN.phl[319]" "pairBlend1.irx2";
connectAttr "handrigg_device_skinnedRN.phl[320]" "pairBlend1.iry2";
connectAttr "handrigg_device_skinnedRN.phl[321]" "pairBlend1.irz2";
connectAttr "pairBlend2.orx" "handrigg_device_skinnedRN.phl[322]";
connectAttr "pairBlend2.ory" "handrigg_device_skinnedRN.phl[323]";
connectAttr "pairBlend2.orz" "handrigg_device_skinnedRN.phl[324]";
connectAttr "R_indexFinger_01_joint_scaleX.o" "handrigg_device_skinnedRN.phl[325]"
		;
connectAttr "R_indexFinger_01_joint_scaleY.o" "handrigg_device_skinnedRN.phl[326]"
		;
connectAttr "R_indexFinger_01_joint_scaleZ.o" "handrigg_device_skinnedRN.phl[327]"
		;
connectAttr "handrigg_device_skinnedRN.phl[328]" "pairBlend2.w";
connectAttr "R_indexFinger_01_joint_blendOrient1.o" "handrigg_device_skinnedRN.phl[329]"
		;
connectAttr "R_indexFinger_01_joint_visibility.o" "handrigg_device_skinnedRN.phl[330]"
		;
connectAttr "R_indexFinger_01_joint_translateX.o" "handrigg_device_skinnedRN.phl[331]"
		;
connectAttr "R_indexFinger_01_joint_translateY.o" "handrigg_device_skinnedRN.phl[332]"
		;
connectAttr "R_indexFinger_01_joint_translateZ.o" "handrigg_device_skinnedRN.phl[333]"
		;
connectAttr "handrigg_device_skinnedRN.phl[334]" "pairBlend2.irx2";
connectAttr "handrigg_device_skinnedRN.phl[335]" "pairBlend2.iry2";
connectAttr "handrigg_device_skinnedRN.phl[336]" "pairBlend2.irz2";
connectAttr "pairBlend3.orx" "handrigg_device_skinnedRN.phl[337]";
connectAttr "pairBlend3.ory" "handrigg_device_skinnedRN.phl[338]";
connectAttr "pairBlend3.orz" "handrigg_device_skinnedRN.phl[339]";
connectAttr "handrigg_device_skinnedRN.phl[340]" "pairBlend3.w";
connectAttr "R_middleFinger_03_joint_blendOrient1.o" "handrigg_device_skinnedRN.phl[341]"
		;
connectAttr "R_middleFinger_03_joint_visibility.o" "handrigg_device_skinnedRN.phl[342]"
		;
connectAttr "R_middleFinger_03_joint_translateX.o" "handrigg_device_skinnedRN.phl[343]"
		;
connectAttr "R_middleFinger_03_joint_translateY.o" "handrigg_device_skinnedRN.phl[344]"
		;
connectAttr "R_middleFinger_03_joint_translateZ.o" "handrigg_device_skinnedRN.phl[345]"
		;
connectAttr "R_middleFinger_03_joint_scaleX.o" "handrigg_device_skinnedRN.phl[346]"
		;
connectAttr "R_middleFinger_03_joint_scaleY.o" "handrigg_device_skinnedRN.phl[347]"
		;
connectAttr "R_middleFinger_03_joint_scaleZ.o" "handrigg_device_skinnedRN.phl[348]"
		;
connectAttr "handrigg_device_skinnedRN.phl[349]" "pairBlend3.irx2";
connectAttr "handrigg_device_skinnedRN.phl[350]" "pairBlend3.iry2";
connectAttr "handrigg_device_skinnedRN.phl[351]" "pairBlend3.irz2";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "handrigg_device_skinnedRN.sr";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "pairBlend2_inRotateX1.o" "pairBlend2.irx1";
connectAttr "pairBlend2_inRotateY1.o" "pairBlend2.iry1";
connectAttr "pairBlend2_inRotateZ1.o" "pairBlend2.irz1";
connectAttr "pairBlend3_inRotateX1.o" "pairBlend3.irx1";
connectAttr "pairBlend3_inRotateY1.o" "pairBlend3.iry1";
connectAttr "pairBlend3_inRotateZ1.o" "pairBlend3.irz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of jump_ledge_grab_device_01.ma
