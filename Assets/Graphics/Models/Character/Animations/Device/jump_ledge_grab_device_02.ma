//Maya ASCII 2016 scene
//Name: jump_ledge_grab_device_02.ma
//Last modified: Wed, Apr 19, 2017 04:28:49 PM
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
	setAttr ".t" -type "double3" 13.191675783310894 4.594490647185296 8.1283762770639445 ;
	setAttr ".r" -type "double3" -3.3383527315063977 781.80000000004952 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CF085DCB-48B3-9775-91DA-739CE5E0D841";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.601217144639957;
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
	rename -uid "0C352194-4C34-70B9-32AB-F0A04E2C7398";
	setAttr ".t" -type "double3" 0 6.601 -0.456 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "FB7EDE67-4F73-81FC-696C-438911B4E6D4";
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
	rename -uid "3DB49074-49B9-47AF-B22F-0EAEAA5F96F7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "723F092C-4020-EEF4-12C4-8F872733EAF5";
createNode displayLayer -n "defaultLayer";
	rename -uid "56AE1E1B-41D7-FD36-C594-6F91AE737C7B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F177BE56-4639-FE87-CDEA-D88FB534C36D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "96848207-4401-11B8-6B2B-CE857CEB0453";
	setAttr ".g" yes;
createNode reference -n "handrigg_device_skinnedRN";
	rename -uid "A79072B3-4D1D-55AD-148E-CF9725C5239B";
	setAttr -s 303 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"handrigg_device_skinnedRN"
		"handrigg_device_skinnedRN" 0
		"handrigg_device_skinnedRN" 413
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl" 
		"rotateOrder" " 5"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotate" " -type \"double3\" -5.5428349238027241 -13.437777155251677 17.174840107784821"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotate" " -type \"double3\" 12.06654141313175 -11.191272807893826 67.077975745012949"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotate" " -type \"double3\" -8.008477044453139 -35.117203047213629 179.86071893827565"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotate" " -type \"double3\" -25.983620004462715 -0.68729662559236859 81.723202272576245"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03" 
		"rotate" " -type \"double3\" -63.651940830119273 4.3100777133493766 169.18640264934231"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotate" " -type \"double3\" -4.3598035434148921 4.5726662921401591 0.6423635798922066"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotate" " -type \"double3\" 28.664466617800901 3.3579582626385625 103.39051393121184"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotate" " -type \"double3\" 45.950710734278779 49.062067853492898 160.38743459551557"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotate" " -type \"double3\" 1.4766086732766048 12.547656251707874 2.9256942498040317"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotate" " -type \"double3\" -0.73258387004084213 10.567960303063597 92.438598020569728"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotate" " -type \"double3\" -13.6723624138967 51.901004804648387 146.31792724287806"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotate" " -type \"double3\" 18.592552083769103 -28.151628753058326 19.586945721061099"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotate" " -type \"double3\" 36.436984292675653 -29.320423678401291 -14.776995481650877"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl" 
		"rotateOrder" " 5"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02" 
		"rotate" " -type \"double3\" 11.695107369269511 12.973882114649175 -7.968246595673234"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03" 
		"rotate" " -type \"double3\" 60.895460274708682 38.292404068168857 32.471290973806873"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl" 
		"rotate" " -type \"double3\" -6.0785220787787493 -6.357973369296694 -2.7201735606768751"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02" 
		"rotate" " -type \"double3\" -19.451723559603451 8.859807501135224 -93.760549708115846"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03" 
		"rotate" " -type \"double3\" -6.2307750794072332 -18.898404964155194 -161.35971054065683"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl" 
		"rotate" " -type \"double3\" -6.165657693682018 -6.6526092598597231 -0.75383690934876657"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02" 
		"rotate" " -type \"double3\" -24.625525297985146 4.7842002544204423 -105.11014635977936"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03" 
		"rotate" " -type \"double3\" -20.233880517049485 4.9593904769408788 -164.09407882295886"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl" 
		"rotate" " -type \"double3\" 0.22960215924845323 1.3334216832858989 -9.7074024758112678"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02" 
		"rotate" " -type \"double3\" -7.0909692415237577 9.9194428812763107 -100.29870566823698"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03" 
		"rotate" " -type \"double3\" -15.018721556382847 5.0923247804612988 -171.9635116760706"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl" 
		"rotate" " -type \"double3\" 3.1571415485456527 7.9400785629531763 -15.55241855081173"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02" 
		"rotate" " -type \"double3\" 2.3315579911537503 20.472978199051663 -88.978043297859685"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02" 
		"rotateZ" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03" 
		"rotate" " -type \"double3\" -5.6715751769688829 32.222406045259973 -159.73987583984459"
		
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03" 
		"rotateX" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03" 
		"rotateY" " -av"
		2 "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03" 
		"rotateZ" " -av"
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[1]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[2]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[3]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[4]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[5]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[6]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[7]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[8]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[9]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[10]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[11]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[12]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[13]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[14]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[15]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[16]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[17]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[18]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[19]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[20]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[21]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[22]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[23]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[24]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[25]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[26]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[27]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[28]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[29]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[30]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[31]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[32]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[33]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[34]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[35]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[36]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[37]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[38]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[39]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_group|handrigg_device_skinned:R_indexFinger_ctrl|handrigg_device_skinned:R_indexFinger_ctrl_02_group|handrigg_device_skinned:R_indexFinger_ctrl_02|handrigg_device_skinned:R_indexFinger_ctrl_03_group|handrigg_device_skinned:R_indexFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[40]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[41]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[42]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[43]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[44]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[45]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[46]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[47]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[48]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[49]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[50]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[51]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[52]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[53]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[54]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[55]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[56]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[57]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[58]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[59]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[60]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[61]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[62]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[63]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[64]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[65]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[66]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[67]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[68]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[69]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_middleFinger_ctrl_group|handrigg_device_skinned:R_middleFinger_ctrl|handrigg_device_skinned:R_middle_finger_ctrl_02_group|handrigg_device_skinned:R_middleFinger_ctrl_02|handrigg_device_skinned:R_middleFinger_ctrl_03_group|handrigg_device_skinned:R_middleFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[70]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[71]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[72]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[73]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[74]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[75]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[76]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[77]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[78]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[79]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[80]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[81]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[82]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[83]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[84]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[85]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[86]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[87]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[88]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[89]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[90]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[91]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[92]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[93]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[94]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[95]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[96]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[97]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[98]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[99]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_group|handrigg_device_skinned:R_ringFinger_ctrl|handrigg_device_skinned:R_ringFinger_ctrl_02_group|handrigg_device_skinned:R_ringFinger_ctrl_02|handrigg_device_skinned:R_ringFinger_ctrl_03_group|handrigg_device_skinned:R_ringFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[100]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[101]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[102]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[103]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[104]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[105]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[106]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[107]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[108]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[109]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[110]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[111]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[112]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[113]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[114]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[115]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[116]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[117]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[118]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[119]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[120]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[121]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[122]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[123]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[124]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[125]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[126]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[127]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[128]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[129]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_group|handrigg_device_skinned:R_pinkyFinger_ctrl|handrigg_device_skinned:R_pinkyFinger_ctrl_02_group|handrigg_device_skinned:R_pinkyFinger_ctrl_02|handrigg_device_skinned:R_pinkyFinger_ctrl_03_group|handrigg_device_skinned:R_pinkyFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[130]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[131]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[132]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[133]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[134]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[135]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[136]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[137]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[138]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[139]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[140]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[141]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[142]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[143]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[144]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[145]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[146]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[147]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[148]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[149]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:R_shoulder_ctrl_group|handrigg_device_skinned:R_shoulder_ctrl|handrigg_device_skinned:R_elbow_ctrl_group|handrigg_device_skinned:R_elbow_ctrl|handrigg_device_skinned:R_wrist_ctrl_group|handrigg_device_skinned:R_wrist_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_group|handrigg_device_skinned:R_thumbFinger_ctrl|handrigg_device_skinned:R_thumbFinger_ctrl_02_group|handrigg_device_skinned:R_thumbFinger_ctrl_02|handrigg_device_skinned:R_thumbFinger_ctrl_03_group|handrigg_device_skinned:R_thumbFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[150]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[151]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[152]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[153]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[154]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[155]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[156]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[157]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[158]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[159]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[160]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[161]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[162]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[163]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[164]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[165]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[166]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[167]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[168]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[169]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[170]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[171]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[172]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[173]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[174]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[175]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[176]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[177]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[178]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[179]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group|handrigg_device_skinned:L_thumbFinger_ctrl|handrigg_device_skinned:L_thumbFinger_ctrl_group_02|handrigg_device_skinned:L_thumbFinger_ctrl_02|handrigg_device_skinned:L_thumb_finger_crl_group_03|handrigg_device_skinned:L_thumbFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[180]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[181]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[182]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[183]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[184]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[185]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[186]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[187]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[188]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[189]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[190]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[191]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[192]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[193]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[194]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[195]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[196]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[197]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[198]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[199]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[200]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[201]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[202]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.Curl" 
		"handrigg_device_skinnedRN.placeHolderList[203]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[204]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[205]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[206]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[207]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[208]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[209]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[210]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[211]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[212]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_pinkyFinger_ctrl_group|handrigg_device_skinned:L_pinkeyFinger_ctrl|handrigg_device_skinned:L_pinkeyFinger_ctrl_02_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_02|handrigg_device_skinned:L_pinkeyFinger_ctrl_03_group|handrigg_device_skinned:L_pinkeyFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[213]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[214]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[215]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[216]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[217]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[218]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[219]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[220]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[221]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[222]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[223]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[224]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[225]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[226]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[227]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[228]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[229]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[230]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[231]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[232]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[233]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[234]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[235]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[236]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[237]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[238]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[239]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[240]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[241]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[242]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_group|handrigg_device_skinned:L_ringFinger_ctrl|handrigg_device_skinned:L_ringFinger_ctrl_02_group|handrigg_device_skinned:L_ringFinger_ctrl_02|handrigg_device_skinned:L_ringFinger_ctrl_03_group|handrigg_device_skinned:L_ringFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[243]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[244]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[245]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[246]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[247]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[248]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[249]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[250]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[251]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[252]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[253]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[254]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[255]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[256]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[257]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[258]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[259]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[260]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[261]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[262]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[263]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[264]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[265]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[266]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[267]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[268]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[269]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[270]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[271]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[272]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_group|handrigg_device_skinned:L_middleFinger_ctrl|handrigg_device_skinned:L_middleFinger_ctrl_02_group|handrigg_device_skinned:L_middleFinger_ctrl_02|handrigg_device_skinned:L_middleFinger_ctrl_03_group|handrigg_device_skinned:L_middleFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[273]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[274]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[275]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[276]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[277]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[278]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[279]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[280]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[281]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[282]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[283]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[284]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[285]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[286]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[287]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[288]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[289]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[290]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[291]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[292]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[293]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateX" 
		"handrigg_device_skinnedRN.placeHolderList[294]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateY" 
		"handrigg_device_skinnedRN.placeHolderList[295]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.rotateZ" 
		"handrigg_device_skinnedRN.placeHolderList[296]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.visibility" 
		"handrigg_device_skinnedRN.placeHolderList[297]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateX" 
		"handrigg_device_skinnedRN.placeHolderList[298]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateY" 
		"handrigg_device_skinnedRN.placeHolderList[299]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.translateZ" 
		"handrigg_device_skinnedRN.placeHolderList[300]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleX" 
		"handrigg_device_skinnedRN.placeHolderList[301]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleY" 
		"handrigg_device_skinnedRN.placeHolderList[302]" ""
		5 4 "handrigg_device_skinnedRN" "|handrigg_device_skinned:Full_body_ctrl|handrigg_device_skinned:L_shoulder_ctrl_group|handrigg_device_skinned:L_shoulder_ctrl|handrigg_device_skinned:L_elbow_ctrl_group|handrigg_device_skinned:L_elbow_ctrl|handrigg_device_skinned:L_wrist_ctrl_group|handrigg_device_skinned:L_wrist_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_group|handrigg_device_skinned:L_indexFinger_ctrl|handrigg_device_skinned:L_indexFinger_ctrl_02_group|handrigg_device_skinned:L_indexFinger_ctrl_02|handrigg_device_skinned:L_indexFinger_ctrl_03_group|handrigg_device_skinned:L_indexFinger_ctrl_03.scaleZ" 
		"handrigg_device_skinnedRN.placeHolderList[303]" "";
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
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 614\n                -height 707\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 614\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1321\n                -height 707\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1321\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1321\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1321\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 2 -size 20 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3E996841-4E23-599C-EFCB-57963777F269";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 35 -ast 1 -aet 35 ";
	setAttr ".st" 6;
createNode animCurveTA -n "R_shoulder_ctrl_rotateX";
	rename -uid "CE59E828-495C-BAE6-82D3-52934D098CFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -21.226027496010538 8 -67.016200626720916
		 16 10.640986092204871;
createNode animCurveTA -n "R_shoulder_ctrl_rotateY";
	rename -uid "61292A7C-489F-B4AE-FF1F-9A99133001D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.3823658950818376 8 3.6340306230609709
		 16 -0.37392102541155547;
createNode animCurveTA -n "R_shoulder_ctrl_rotateZ";
	rename -uid "C489DBED-4AC9-2C11-3FA3-288E9B1FF96A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 88.676908431001976 8 77.028899586846791
		 16 88.674497453871282;
createNode animCurveTU -n "R_shoulder_ctrl_visibility";
	rename -uid "6C059C58-4DA1-6373-EAE3-88BFBA96CC52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 16 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_elbow_ctrl_rotateY";
	rename -uid "D9B9CEA8-4A67-2094-4BC8-1E84FD6DF65B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 40.691912213640506 5 104.74879448195685
		 8 63.050096686782219;
createNode animCurveTU -n "R_elbow_ctrl_visibility";
	rename -uid "225CB5C3-49BC-7A00-F9BD-AFBB331C4079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_wrist_ctrl_rotateX";
	rename -uid "FD265C03-483B-42F1-0A6D-00B333E1D8B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 54.422657859956956 3 63.717479177843536
		 5 63.621248830498672 7 54.019032350503707 9 83.794385007946701;
createNode animCurveTA -n "R_wrist_ctrl_rotateY";
	rename -uid "DFF66362-47AC-2127-1D68-1FACCCE5C199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -48.733860277108263 3 -62.701476115474073
		 5 -19.200041399042004 7 49.221107274714718 9 -25.43632327687552;
createNode animCurveTA -n "R_wrist_ctrl_rotateZ";
	rename -uid "4571FCFC-48DB-5824-2AD5-3EA75BE620E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 25.048265176012588 3 15.66776446932205
		 5 4.9158221470268817 7 -32.018956459931744 9 3.5227306061354842;
createNode animCurveTU -n "R_wrist_ctrl_visibility";
	rename -uid "62093C43-48AF-4887-9CE9-0E90EFE80531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 3 1 5 1 7 1 9 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_shoulder_ctrl_rotateX";
	rename -uid "23947EB6-43F0-18DC-AD54-5FBF6EC02A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.542762042859341 8 -64.939971208579863
		 16 21.991313824855954;
createNode animCurveTA -n "L_shoulder_ctrl_rotateY";
	rename -uid "B0AAA541-445B-5871-E680-4B8D4BC7F349";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3319341625986105 8 -0.56512816658711396
		 16 0.46586535431163728;
createNode animCurveTA -n "L_shoulder_ctrl_rotateZ";
	rename -uid "33725BFD-4909-A202-2286-5D84A92CD119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.840768973212121 8 -79.463868667312624
		 16 -91.504603967670121;
createNode animCurveTU -n "L_shoulder_ctrl_visibility";
	rename -uid "A8AEA122-4A02-605D-5A93-39A64574A84D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 16 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_elbow_ctrl_rotateY";
	rename -uid "C2FA7CD7-44AE-7DE9-E8BC-68A28AE98EF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -44.746962490474608 5 -107.14080926241181
		 8 -71.898731501040217;
createNode animCurveTU -n "L_elbow_ctrl_visibility";
	rename -uid "A96D1F7E-4091-EC8D-3073-0A8120FF53D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 5 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_wrist_ctrl_rotateX";
	rename -uid "40A836ED-4A48-AE79-2CFE-2790166F9F49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 74.108926558181523 3 67.654462911874006
		 5 76.820020440560285 7 75.222788213349432 9 84.059244850446063;
createNode animCurveTA -n "L_wrist_ctrl_rotateY";
	rename -uid "33CB8349-48A2-5658-0309-0491094436E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 42.266297179661649 3 58.370003989278473
		 5 21.151378375194678 7 -37.399281664103718 9 22.321467157465257;
createNode animCurveTA -n "L_wrist_ctrl_rotateZ";
	rename -uid "740A7D6F-4D56-BDAC-B940-BCA2B60A23B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -4.723243217368803 3 -13.374881914778381
		 5 1.5035187468902302 7 15.218555408007759 9 -3.2914042310287246;
createNode animCurveTU -n "L_wrist_ctrl_visibility";
	rename -uid "A129E18E-4B1F-467A-1C38-A0969A149CA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 3 1 5 1 7 1 9 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "R_indexFinger_ctrl_02_visibility";
	rename -uid "66BC1F0D-4947-F746-6F52-52994F9F7364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateX";
	rename -uid "9102C461-4F2A-827D-0432-C0B2DE3F103A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateY";
	rename -uid "0C3B0CFC-4B0C-BB10-7BC0-EEA984E1D5F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_02_translateZ";
	rename -uid "80B857B6-4BFB-90E5-0E3F-199DA5193FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateX";
	rename -uid "10235474-4E44-D9E0-E5B0-12ABEBC00642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 12.06654141313175 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateY";
	rename -uid "6D7F1F3C-4485-7011-DD98-8EAF24416FD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -11.191272807893826 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_02_rotateZ";
	rename -uid "877845AA-447E-6256-1FB1-668275C31459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 67.077975745012949 9 0;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleX";
	rename -uid "F7E36F57-43FF-015B-7D28-27BB9C3360BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleY";
	rename -uid "8F658FE4-4683-ECC0-EFC9-57AB99DDC86F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_02_scaleZ";
	rename -uid "D9303D5D-4D89-555F-13CD-11B22D6748C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_03_visibility";
	rename -uid "B93C504B-46E0-AE04-F7F1-6780C15BEE66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateX";
	rename -uid "39044C0E-45FB-B22A-CC26-778871346A8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateY";
	rename -uid "DE7E73D5-44AF-5F6F-387E-D8B6A5C8C905";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_03_translateZ";
	rename -uid "300A37A6-4186-C28B-AA99-B68F41ED4098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateX";
	rename -uid "234BCCDF-44B9-E003-C101-EEA28393B6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -8.008477044453139 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateY";
	rename -uid "5941605A-45A8-DD81-A018-90BD20A2E1ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -35.117203047213629 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_03_rotateZ";
	rename -uid "87C70DEE-47D6-7BBB-FD6E-C3801777EEDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 179.86071893827565 9 0;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleX";
	rename -uid "62408AF7-4B1E-E393-5678-4AABEC5ABCBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleY";
	rename -uid "827DAC08-4E9A-1AE2-9AE9-C587EF9DB88B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_03_scaleZ";
	rename -uid "A0D5C96E-4780-5152-EE88-58A0C4FE9465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_visibility";
	rename -uid "18705B95-4FFC-B665-45CD-E0A07872253F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_indexFinger_ctrl_translateX";
	rename -uid "C36F4510-4691-3C67-A2FC-5F803A5BDDA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_translateY";
	rename -uid "0B1FB047-48B2-2109-F06C-7D81E40624BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_indexFinger_ctrl_translateZ";
	rename -uid "979E0A9F-430A-CBC6-D177-33A9E62A1CE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateX";
	rename -uid "4EB9C8F5-4F0D-1DD6-4E4E-70A2923DF984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -5.5428349238027241 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateY";
	rename -uid "0A1F15C2-40BA-6C68-7E3E-7D8B86A3694A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -13.437777155251677 9 0;
createNode animCurveTA -n "R_indexFinger_ctrl_rotateZ";
	rename -uid "93B3BD56-4D5D-5A87-252E-90A66451156B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 17.174840107784821 9 0;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleX";
	rename -uid "B6864C7A-460F-75DE-B3EB-F78E0AE49550";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleY";
	rename -uid "5CE0BACF-415C-769E-EF07-9AA8102758F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_indexFinger_ctrl_scaleZ";
	rename -uid "172733EA-4A45-E620-915D-2080C6A17B71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_visibility";
	rename -uid "51984174-4FCB-4DB9-EB8B-E69553095877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "R_middleFinger_ctrl_translateX";
	rename -uid "D45696BA-47F7-9BE4-7F93-97995880BFB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_translateY";
	rename -uid "EAE007F8-486A-AD29-03BF-D0A422AD8D3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_translateZ";
	rename -uid "FB62F86F-4F09-1C7C-4FA3-048F3FC80CE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateX";
	rename -uid "BB8DA747-44B7-6032-3820-089C564CF217";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateY";
	rename -uid "24DE0784-4CFA-4107-DE09-B4BBD3C589B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_rotateZ";
	rename -uid "EE529F6C-4135-317D-272E-CAB405ADE92B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleX";
	rename -uid "7712835B-45E6-9F03-9ABE-3AB36BF261DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleY";
	rename -uid "AD67D882-4503-52DD-A5C9-528E3BF2644B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_scaleZ";
	rename -uid "FEE47359-4CFF-0FB7-51CB-EA819B8D4771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_02_visibility";
	rename -uid "207FB51E-424C-4F64-3CF4-62805ABAD22C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateX";
	rename -uid "E3A8F1B5-4A41-8CA8-DBA0-EFABB58C95D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateY";
	rename -uid "B6245679-454C-4046-494E-24B774BA1876";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_02_translateZ";
	rename -uid "F99DF0A5-49B0-D44F-BBA3-90A6268FAC15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateX";
	rename -uid "0319C42B-43E6-51DE-DF2C-03B72B9B4925";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -25.983620004462715 9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateY";
	rename -uid "9567F3A2-42B5-5ABC-B685-C1A930FF3B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -0.68729662559236859 9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_02_rotateZ";
	rename -uid "CBF5ED29-44B4-D7C4-FFB9-14A0497531DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 81.723202272576245 9 0;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleX";
	rename -uid "BDF0FECC-45FD-DD55-C712-2DB2F44901D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleY";
	rename -uid "14420394-4A0A-777B-559A-B2B326D3E74F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_02_scaleZ";
	rename -uid "08959673-4ED5-92AD-0B64-EE9D2267C730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_03_visibility";
	rename -uid "2C187FDC-4F77-17E1-0E09-E89259F2F961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateX";
	rename -uid "5DFB1605-45B6-19C4-7572-79988F2F8E38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateY";
	rename -uid "B2C3DD18-4273-47F2-56F7-ED8CAD11B328";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_middleFinger_ctrl_03_translateZ";
	rename -uid "F89172DB-410B-3A18-675D-588504D74964";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateX";
	rename -uid "78B278CA-451D-BBBD-DCAA-65A04651D3FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -63.651940830119273 9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateY";
	rename -uid "8A43D207-4A72-69C2-50D5-65BF5F514255";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 4.3100777133493766 9 0;
createNode animCurveTA -n "R_middleFinger_ctrl_03_rotateZ";
	rename -uid "A0F2843E-4B09-BB79-D50F-C890FC7AF2E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 169.18640264934231 9 0;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleX";
	rename -uid "7EB5748A-48EC-8152-97CD-8BBF3D6078A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleY";
	rename -uid "6B736ED6-4153-C180-A382-6EB5A909A2D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_middleFinger_ctrl_03_scaleZ";
	rename -uid "B478156C-4F24-5601-33DA-26A152358560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_visibility";
	rename -uid "5542406C-449E-73CB-8BE8-14AED3D8C66C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_translateX";
	rename -uid "3AE70024-4F7B-26FE-2640-279A1FDD607B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_translateY";
	rename -uid "11FC2B6E-4003-54C9-07FC-85BD60C8B3D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_translateZ";
	rename -uid "EA2E47DE-4444-FFE5-B2F8-5BA4377435C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateX";
	rename -uid "7A5650D6-498E-F6E4-F199-25A5BBAB365F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.3598035434148921 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateY";
	rename -uid "D1184DBC-4F09-D363-E7BF-DDAF3FE98832";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 4.5726662921401591 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_rotateZ";
	rename -uid "0B18ED40-4BC0-9469-6303-89843C3A94A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0.6423635798922066 9 0;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleX";
	rename -uid "EFB5F362-47AC-8B51-0BE4-2AAE1C171F2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleY";
	rename -uid "678798BF-4FC0-4BBD-1BA2-F491026939A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_scaleZ";
	rename -uid "7E6D789D-42CE-DD4D-1622-B6918A52AEB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_02_visibility";
	rename -uid "9CCB25E6-47A7-A9D4-8B33-6AA122718CC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateX";
	rename -uid "14F3BEDA-4E68-9739-8CA6-48A93D478F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateY";
	rename -uid "F3B14172-49E6-8022-6E3A-E39EC3C1093B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_02_translateZ";
	rename -uid "FB72069E-4209-1B2F-C9FE-53936A0B34B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1.2325951644078309e-032 9 1.2325951644078309e-032;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateX";
	rename -uid "6860816D-4C28-65ED-FFE0-FC9C8529D553";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 28.664466617800901 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateY";
	rename -uid "0E5DB70B-4866-0A68-E7CB-CA8CD385D9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 3.3579582626385625 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_02_rotateZ";
	rename -uid "281E1751-4417-43DC-B95F-3CBADF7FCD7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 103.39051393121184 9 0;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleX";
	rename -uid "0F4E82F0-4123-FB95-CE33-FD92AAC17C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleY";
	rename -uid "F84021E2-4867-B9E2-E235-F2B043265F3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_02_scaleZ";
	rename -uid "ABF3F27A-426F-BF47-9564-C99E20A261E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_03_visibility";
	rename -uid "C053DED4-48BD-5F6A-E3EF-C291A9D32C6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateX";
	rename -uid "4CF6E757-4367-54CD-29F0-01B9CD8849E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateY";
	rename -uid "D26B31D7-4598-920D-766B-4A92C3793BAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_ringFinger_ctrl_03_translateZ";
	rename -uid "4C792B18-4594-A70F-F5E7-1E8F61D7AFE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1.2325951644078309e-032 9 1.2325951644078309e-032;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateX";
	rename -uid "BEE3B0D3-4C30-BD73-4EAE-EFA201AD58D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 45.950710734278779 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateY";
	rename -uid "FBB5808C-4EF6-7DBA-05F8-F7A58BE12247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 49.062067853492898 9 0;
createNode animCurveTA -n "R_ringFinger_ctrl_03_rotateZ";
	rename -uid "18FD8795-4D56-8D4A-E119-9E87B87911CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 160.38743459551557 9 0;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleX";
	rename -uid "D3FBE9A2-454F-F274-7918-15BD024C0173";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleY";
	rename -uid "D300BC1D-4808-9910-E65F-2BA1154D9447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_ringFinger_ctrl_03_scaleZ";
	rename -uid "47FB6189-4404-6FE0-6561-5AAEF6619D34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_visibility";
	rename -uid "7DE618E0-45EA-D317-8984-80A78502238D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateX";
	rename -uid "4A61597C-4106-F4C8-D55A-AB8936ABC271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateY";
	rename -uid "DC884A59-402A-85EA-626F-0A80345F2D7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_translateZ";
	rename -uid "F86C0F45-4E28-B53F-C860-24BC7918892D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 0 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateX";
	rename -uid "19A0173F-4C4B-43D0-8462-FDB452CC4978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1.4766086732766048 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateY";
	rename -uid "F85B22E7-48EF-013B-FA6C-6688E252B35F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 12.547656251707874 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_rotateZ";
	rename -uid "1392DD4B-4446-7DD3-76C7-319055C512C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 2.9256942498040317 9 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleX";
	rename -uid "9B23A3C4-40F9-6C68-5936-468DFB5C6204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleY";
	rename -uid "5C2A9284-4D8C-047B-C9AA-318C74628150";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_scaleZ";
	rename -uid "0BDBD4B2-40ED-661F-0A89-FC8641449D4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_visibility";
	rename -uid "008BE87D-483C-6F37-D2BB-7F8E6D94913E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateX";
	rename -uid "90E12633-4930-8A3B-7784-43845F81A336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateY";
	rename -uid "0D3CA0C4-46D3-AAA4-6C78-7D9B0984F218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_02_translateZ";
	rename -uid "3F21D066-4468-BEF7-E214-FCB6E8489A87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateX";
	rename -uid "17F3047F-43FF-C59B-53B7-DF98576F2DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -0.73258387004084213 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateY";
	rename -uid "CA6201A1-4CB7-15B4-EAD2-77A607C26ADD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 10.567960303063597 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_02_rotateZ";
	rename -uid "69DB08EC-496E-8B4E-7E73-58A934204CBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 92.438598020569728 9 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleX";
	rename -uid "83C5F889-4702-7AF5-A76F-A9909DE8505C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleY";
	rename -uid "0ED80CE4-4135-F70D-0616-B1B8323A4C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_02_scaleZ";
	rename -uid "1C35949E-4E6B-FF76-42AD-808818EC3EDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_visibility";
	rename -uid "AB440FF1-461F-536D-54C7-72882F9B3D46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateX";
	rename -uid "76FCEB32-42B8-9E54-8A0E-BDADA10BA36A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateY";
	rename -uid "77097180-47E4-9941-1390-48A65D5C587A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_pinkyFinger_ctrl_03_translateZ";
	rename -uid "2B451DFB-41A3-1ACD-6110-B0979EBFFBF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -4.9303806576313238e-032 9 -4.9303806576313238e-032;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateX";
	rename -uid "27B8A306-4C49-AB89-C660-DABB0AA09F41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -13.6723624138967 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateY";
	rename -uid "E615CBBC-4D16-DBAC-8C34-43B56BE8CF1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 51.901004804648387 9 0;
createNode animCurveTA -n "R_pinkyFinger_ctrl_03_rotateZ";
	rename -uid "54D6A706-48AD-6415-B063-D39EB92A017B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 146.31792724287806 9 0;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleX";
	rename -uid "303D3ADA-4AAF-C173-5B3E-4ABF202A0D7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleY";
	rename -uid "0472377B-4597-E031-3FDC-CCB078D4A42F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_pinkyFinger_ctrl_03_scaleZ";
	rename -uid "A83AA1B5-4D4D-D07A-C699-ACA0BB2E9EED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_visibility";
	rename -uid "52F92F8D-4D53-500E-8F01-5CBED1CB6167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_translateX";
	rename -uid "860E074F-4B6B-63FB-16AA-0CA0DDACC5AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_translateY";
	rename -uid "AACAF4D8-4A45-2E92-AF2A-72ABCB60090B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_translateZ";
	rename -uid "5BD20DB0-4B59-2690-0C27-F0A413300CE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateX";
	rename -uid "B44F7323-4E4F-6A26-46E2-1897ABA1AE52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 3.1571415485456527 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateY";
	rename -uid "F26FEDD6-4A6C-FB91-BCB7-57BD82A721B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 7.9400785629531763 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_rotateZ";
	rename -uid "FA85D6D0-46EC-EA86-7A5B-7AB0CA4847CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -15.55241855081173 9 0;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleX";
	rename -uid "17FE46A6-44A9-1154-4258-1D8F953E1DE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleY";
	rename -uid "CC204407-421B-6CF1-1D58-83A42AC69238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_scaleZ";
	rename -uid "5CD6CE93-4F97-E439-4B62-1CA0A376B46D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_02_visibility";
	rename -uid "DAFA5A04-4344-9B8C-9B26-A0A228F63016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateX";
	rename -uid "8ECE3D36-4E0E-95B2-2FC5-1EBC35FD3030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateY";
	rename -uid "C87F7F3D-45AC-4101-2860-E2A2B204840D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_02_translateZ";
	rename -uid "EFF65308-4EEA-D444-506C-A5B7801E21E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateX";
	rename -uid "E0D44108-4BA2-ACD4-2B85-5998CBA77FBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.3315579911537503 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateY";
	rename -uid "B867598B-475C-A609-FA60-D1A8FD90E3A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 20.472978199051663 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_02_rotateZ";
	rename -uid "B6A6AEF5-4707-A20D-36B6-83820E1AA60F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -88.978043297859685 9 0;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleX";
	rename -uid "1A8FE8D4-4FC2-9285-0368-0381D829476D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleY";
	rename -uid "BF7CD955-45D6-5B50-1FC8-018B3CFB133D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_02_scaleZ";
	rename -uid "41EF1CF4-4941-00B9-163A-8A86B3E6A58B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_03_visibility";
	rename -uid "B9BFDDED-46ED-5026-07D3-679E71D3CB05";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateX";
	rename -uid "38130FB7-4682-D444-8E8A-95A2AD913152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateY";
	rename -uid "E25E7CC9-48CE-DDEC-31DC-3EBE337A8477";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_indexFinger_ctrl_03_translateZ";
	rename -uid "86BB3138-4ECC-D10A-DC98-CDA50410234D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateX";
	rename -uid "B2CCAB9D-4F8D-C1EF-CCB7-6A806DA8DCC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -5.6715751769688829 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateY";
	rename -uid "68B5D087-4366-5FE6-9A9F-10A120251B7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 32.222406045259973 9 0;
createNode animCurveTA -n "L_indexFinger_ctrl_03_rotateZ";
	rename -uid "E53D91BF-48CF-8436-5B43-D1A79572D1AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -159.73987583984459 9 0;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleX";
	rename -uid "F509A0C9-4C7E-FA68-B65D-20967E24F80B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleY";
	rename -uid "A06BDADD-4AB7-742A-AF51-F8AF7E2BC34A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_indexFinger_ctrl_03_scaleZ";
	rename -uid "66F5C358-4E1A-D3E5-5EC6-EF96A990E531";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_visibility";
	rename -uid "ACBFC026-4A33-0B1B-AE69-CA969AB39671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_translateX";
	rename -uid "9A9268BC-43FC-E90C-8295-F2B2E2F14AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_middleFinger_ctrl_translateY";
	rename -uid "82C67CB9-4A3A-85E6-30C1-6B8EFB7582E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_middleFinger_ctrl_translateZ";
	rename -uid "ECA0685A-4FE0-3614-8B07-2B9FB5CFC030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateX";
	rename -uid "60FB8CED-4E2C-D692-7AB0-0A94A31C8D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0.22960215924845323 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateY";
	rename -uid "680E1139-48DA-88F9-9470-A2B1AFF57A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1.3334216832858989 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_rotateZ";
	rename -uid "6D7BBD69-4FFB-B3E0-3F0F-B3ADBC668CF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.7074024758112678 9 0;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleX";
	rename -uid "80C6C776-4855-38E2-EA2E-9CA58FF23D85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleY";
	rename -uid "C56B3933-48A4-05A6-31F6-C1A60AF2F9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_scaleZ";
	rename -uid "62D85684-42C2-E967-0675-0E986313E351";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_02_visibility";
	rename -uid "240DD9E3-427C-D400-7FDB-B3A697B4D21C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateX";
	rename -uid "C4BCD3DA-4C00-4F6A-5FD7-709C31C07595";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateY";
	rename -uid "9C02D787-4EEE-D559-C3AC-E09B8D76BE6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_02_translateZ";
	rename -uid "8A29AA71-45C5-2DD2-CE38-53A0A5060058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateX";
	rename -uid "C8549EDE-4A2D-F18A-B684-B081B895DE15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -7.0909692415237577 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateY";
	rename -uid "ADCC37FF-4C81-24D0-8663-94A55CC9BDD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 9.9194428812763107 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_02_rotateZ";
	rename -uid "DC3BA76D-4775-4AF3-472A-F7AFC825D5AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -100.29870566823698 9 0;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleX";
	rename -uid "DC344B14-43B6-5640-14F4-568EF24C32D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleY";
	rename -uid "6FF31C4A-46EF-5377-B6D8-ABA540BD96A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_02_scaleZ";
	rename -uid "6BEB4C60-48A2-D1AB-9E65-21945034465E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_03_visibility";
	rename -uid "6C506D58-48D7-D983-2F74-D8B672D7503C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateX";
	rename -uid "DB269AE7-4524-F09C-B0BE-439077CE2A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateY";
	rename -uid "B6F662BD-479C-7AE8-3966-05985DEF4278";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_middleFinger_ctrl_03_translateZ";
	rename -uid "8164F524-486F-342F-87C6-E7916C489A27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateX";
	rename -uid "A54BE0BA-4CB6-72DB-CFF5-F583EFB7DE14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -15.018721556382847 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateY";
	rename -uid "6FFE5722-40D6-2A3E-A2E0-B5904DFEC8F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 5.0923247804612988 9 0;
createNode animCurveTA -n "L_middleFinger_ctrl_03_rotateZ";
	rename -uid "477A2691-461D-10DE-9792-769F3C1862B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -171.9635116760706 9 0;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleX";
	rename -uid "4F14BFB5-4CBA-5C72-2AAC-B692D5770141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleY";
	rename -uid "E67806D4-4AE3-E51F-52AC-9EB2950796F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_middleFinger_ctrl_03_scaleZ";
	rename -uid "4A3F9A57-4A67-C856-AE63-53BEF21B05C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_visibility";
	rename -uid "C27EDE22-4B29-CDAD-1E94-FD99240412D4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_translateX";
	rename -uid "D9AECA78-4FF3-8ECF-4E2A-8A838DBE5F5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_ringFinger_ctrl_translateY";
	rename -uid "93A21550-4CCE-3C88-C7A9-7AA0966C22D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_ringFinger_ctrl_translateZ";
	rename -uid "8BD4D99C-4187-BE8E-6B3B-A7B22ECFF4A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateX";
	rename -uid "D3639738-4490-0E3E-C772-9C8993FB573D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -6.165657693682018 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateY";
	rename -uid "AB14F8C0-418D-4DCA-B316-A8B303623827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -6.6526092598597231 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_rotateZ";
	rename -uid "CE8879BC-4363-B2E9-9B5D-4981E85143D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -0.75383690934876657 9 0;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleX";
	rename -uid "3242EFC3-4349-300F-1B05-0B8D12F0CF33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleY";
	rename -uid "EC92AB0D-4BA9-5FA1-4071-A2B5B2D712FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_scaleZ";
	rename -uid "9EAA8198-42AC-3619-3F08-479BD0C74CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_02_visibility";
	rename -uid "20A2ADC9-4390-11B8-0304-66891DBDDDAB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateX";
	rename -uid "049E5CE6-450C-739A-7EEF-BF842668A7E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateY";
	rename -uid "03C7B359-4131-BA06-BBE3-00A62ED00A0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_02_translateZ";
	rename -uid "2B77A0AA-4CFA-1C29-A2C6-53AAC497502E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateX";
	rename -uid "7F333B89-4E06-E76B-2422-2CB9E9DE4B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -24.625525297985146 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateY";
	rename -uid "F713CD72-41B9-F01D-AE85-E09C109AB7C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 4.7842002544204423 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_02_rotateZ";
	rename -uid "D09381FE-417D-5B7F-9318-96B7D34563C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -105.11014635977936 9 0;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleX";
	rename -uid "F06DE6D9-459B-4C16-6332-50AFF9F7B8A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleY";
	rename -uid "99452D4B-42E0-2959-3959-20BE2EA20851";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_02_scaleZ";
	rename -uid "4D288AAB-4895-0C2F-6F7A-58927BA905D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_03_visibility";
	rename -uid "14E31E72-4B7A-B921-56FA-75BD9A65A675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateX";
	rename -uid "F92FAD81-42C8-C552-8109-4181ECBB5EC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateY";
	rename -uid "7A6ED51B-4CE3-CD3C-F96C-7F8AE8634447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_ringFinger_ctrl_03_translateZ";
	rename -uid "853C68FB-425A-3AA4-0E83-42B18182F3E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateX";
	rename -uid "CB1BDCB8-452A-FBFF-4450-DB89CD086C59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -20.233880517049485 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateY";
	rename -uid "6E20F70B-4E59-A55A-20B3-0FBB97321401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 4.9593904769408788 9 0;
createNode animCurveTA -n "L_ringFinger_ctrl_03_rotateZ";
	rename -uid "35407EBC-4F19-A305-701C-A6BF8F0AEFF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -164.09407882295886 9 0;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleX";
	rename -uid "75A969F4-4866-E985-0317-298430F92EEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleY";
	rename -uid "F7A4A686-433B-DB42-3142-34A2A5CEF9C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_ringFinger_ctrl_03_scaleZ";
	rename -uid "BC3C4703-4A50-8A39-575D-6097558AF672";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_visibility";
	rename -uid "CF220B29-47A5-7EDC-7F88-8C955ACF6F2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateX";
	rename -uid "7466790C-4B1D-2A56-0667-C98A8F5ABD44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateY";
	rename -uid "58D9C07B-430B-1DE8-3CE5-7980EA8C29BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_translateZ";
	rename -uid "7737D972-47CE-7BDF-069D-1BAFE1B52E71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateX";
	rename -uid "39397A91-4803-A06F-E4F6-5688318447D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -6.0785220787787493 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateY";
	rename -uid "B9DB333D-47BE-7953-7C8A-5FA7A11F3A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -6.357973369296694 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_rotateZ";
	rename -uid "FEB19460-4885-96C1-90D2-93BACC18FE7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -2.7201735606768751 9 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleX";
	rename -uid "F984B396-4510-074D-522C-D69E6DD28120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleY";
	rename -uid "C3B0C68A-4C27-9BAE-6C74-998FBF7E91F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_scaleZ";
	rename -uid "773931E7-4A6C-EE8A-4F8F-D089E9E3DACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_Curl";
	rename -uid "2B132BF8-4272-DF21-0C52-80AD3EF56CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_visibility";
	rename -uid "E1098E07-4200-9ABB-4B1F-6A9EF03A7231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateX";
	rename -uid "3AB8BD55-47AF-F711-4E30-FAA277E25FAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateY";
	rename -uid "0134B7EE-4226-1E4A-F72E-A285D8556B37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_02_translateZ";
	rename -uid "AED06D24-4511-9035-1C44-0BAE2F775CE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateX";
	rename -uid "1FAB35FF-496E-39E1-FB5B-E8967F2A5943";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -19.451723559603451 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateY";
	rename -uid "EFB2E0EF-46C5-3EC5-4C11-44886CFC10AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 8.859807501135224 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_02_rotateZ";
	rename -uid "6079729A-48AD-3E3B-5D4C-CA813E80DABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -93.760549708115846 9 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleX";
	rename -uid "8024A9B7-492D-E852-00BB-02AC544E2582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleY";
	rename -uid "EF544E00-4B6E-7F7B-A872-AE894083FF14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_scaleZ";
	rename -uid "F425D78A-42DD-AE26-B861-05939D3543A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_02_Curl";
	rename -uid "920096C1-4104-E910-ADFF-D38A23D26844";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_visibility";
	rename -uid "8F4E4BD6-4D42-A545-1481-CC9A841DE781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateX";
	rename -uid "F703FAAC-4C17-4A6A-2FAF-B88D1F3C72B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateY";
	rename -uid "7F3D7C8C-4026-B97C-E5C9-3B8478994030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -9.8607613152626476e-032 9 -9.8607613152626476e-032;
createNode animCurveTL -n "L_pinkeyFinger_ctrl_03_translateZ";
	rename -uid "A3B56703-42A6-794F-0EC7-44A75902D6E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateX";
	rename -uid "3A8DF54B-4D13-AB19-188C-EFB860AE3110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -6.2307750794072332 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateY";
	rename -uid "E262E477-4146-49E8-5544-FCA20572ED66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -18.898404964155194 9 0;
createNode animCurveTA -n "L_pinkeyFinger_ctrl_03_rotateZ";
	rename -uid "B241B32F-4786-92C7-4F36-9A801DE9ED74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -161.35971054065683 9 0;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleX";
	rename -uid "4398F75E-4031-B550-76D7-A7864E69D01B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleY";
	rename -uid "242A10D3-47A3-FE28-97E0-3484935C981E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_scaleZ";
	rename -uid "5BB49B42-43A8-DF6A-2D4C-1F890D4D6A90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_pinkeyFinger_ctrl_03_Curl";
	rename -uid "E7D4FFCC-40BE-1F5F-38BB-7FA13EC37773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateX";
	rename -uid "F12538C1-4528-8C6C-915E-CFB5D25B6F80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 18.592552083769103 9 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateY";
	rename -uid "24A79345-40FC-06D0-5B20-C29764872B78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -28.151628753058326 9 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_02_rotateZ";
	rename -uid "6A0B3630-4631-48B5-7356-E48F52F75592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 19.586945721061099 9 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_visibility";
	rename -uid "A9B33595-458D-FE07-0AB9-FEA3EDF45E38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateX";
	rename -uid "FD269D2B-4A30-B1F5-B46A-8BB0D9E166FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateY";
	rename -uid "EAA9BD54-4F24-770F-D9EF-22BB8FB3DCAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_02_translateZ";
	rename -uid "E5DBDF78-4B53-2C58-5983-F0839CD512FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleX";
	rename -uid "33930C45-468A-FFBC-A7DB-D3B6A6512DB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleY";
	rename -uid "1B3EAABB-43A9-DF86-24CB-1F8279F177FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_02_scaleZ";
	rename -uid "F751BD73-4275-9C1E-647E-99AB61ABE090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateX";
	rename -uid "1DA9B6D8-4AD1-2111-9526-009940A3612E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 36.436984292675653 9 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateY";
	rename -uid "9F679CB8-42F5-A5C5-DE3D-DE9210DEC7F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -29.320423678401291 9 0;
createNode animCurveTA -n "R_thumbFinger_ctrl_03_rotateZ";
	rename -uid "4130D850-4076-4524-0D8E-F78ED7CAC344";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -14.776995481650877 9 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_visibility";
	rename -uid "776BCA06-4D56-DEF9-DFE4-19BA31DC7EF7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateX";
	rename -uid "38287A4B-428E-598D-8E50-8CA7FD453555";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateY";
	rename -uid "2DF54212-433D-47CB-225C-B98AAA0B64DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "R_thumbFinger_ctrl_03_translateZ";
	rename -uid "45DB3D46-4FED-B7E0-E5C3-44B1827FFD12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleX";
	rename -uid "92A02526-4205-BBB7-01B8-4CB4E5B27E1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleY";
	rename -uid "ECB2DCB7-4FBC-101F-B7E3-B9A81BD01F8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "R_thumbFinger_ctrl_03_scaleZ";
	rename -uid "FD1596B1-4FF6-3F84-8A9B-FBB4BCCD32D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateX";
	rename -uid "423A825B-4D55-E72F-985C-E2966E20CB30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 11.695107369269511 9 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateY";
	rename -uid "16A73514-4015-A049-78B1-799FBFF7C4FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 12.973882114649175 9 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_02_rotateZ";
	rename -uid "73CD3257-4D57-70FE-7C1A-15A4FB83CB96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 -7.968246595673234 9 0;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_visibility";
	rename -uid "D7D0782B-4BCB-2DD7-1AF5-8AB63C78D190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateX";
	rename -uid "276625DB-4126-4358-6466-10BF7095E183";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateY";
	rename -uid "7029DC8B-4371-C6C2-0690-A899D9804E6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_02_translateZ";
	rename -uid "0FDCFF5C-4325-F2F0-B8B4-C38D25CCDA8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleX";
	rename -uid "67B8B0BC-47AD-4A0D-7E10-A183146A8C61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleY";
	rename -uid "3817FADC-4F0F-9DC5-EF75-EB8F2481C680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_02_scaleZ";
	rename -uid "0A52F2EE-4610-A840-5F99-8ABC1C8808DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTA -n "L_thumbFinger_ctrl_03_rotateX";
	rename -uid "99F0B124-4682-C4C9-BBD7-E1B848B31A8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 60.895460274708682 9 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_03_rotateY";
	rename -uid "7DB8C901-4996-6BAA-3B75-C6A73173442E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 38.292404068168857 9 0;
createNode animCurveTA -n "L_thumbFinger_ctrl_03_rotateZ";
	rename -uid "EC3E59C4-4A57-D837-363E-85B5D807B7F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 32.471290973806873 9 0;
createNode animCurveTU -n "L_thumbFinger_ctrl_03_visibility";
	rename -uid "154EFA57-427E-FF22-385D-9BB578042C19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_thumbFinger_ctrl_03_translateX";
	rename -uid "51651B1A-4BF1-B782-E5FB-D0A913BDAFB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_03_translateY";
	rename -uid "BA0906F9-4097-B3E2-9B95-D6A57350D855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 9 0;
createNode animCurveTL -n "L_thumbFinger_ctrl_03_translateZ";
	rename -uid "0AF6269B-4781-D3C1-B2D4-B7A5BC210C06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 2.5243548967072378e-029 9 2.5243548967072378e-029;
createNode animCurveTU -n "L_thumbFinger_ctrl_03_scaleX";
	rename -uid "ABFBEECD-4010-ED30-D171-FFBE66AC1A3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_03_scaleY";
	rename -uid "31D7CE38-424A-D535-361C-8291925E6F04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
createNode animCurveTU -n "L_thumbFinger_ctrl_03_scaleZ";
	rename -uid "37FF4C70-40C4-B970-6021-F2A6172BBCBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 1 9 1;
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
connectAttr "R_shoulder_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[1]";
connectAttr "R_shoulder_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[2]";
connectAttr "R_shoulder_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[3]";
connectAttr "R_shoulder_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[4]";
connectAttr "R_elbow_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[5]";
connectAttr "R_elbow_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[6]";
connectAttr "R_wrist_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[7]";
connectAttr "R_wrist_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[8]";
connectAttr "R_wrist_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[9]";
connectAttr "R_wrist_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[10]";
connectAttr "R_indexFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[11]";
connectAttr "R_indexFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[12]";
connectAttr "R_indexFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[13]";
connectAttr "R_indexFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[14]"
		;
connectAttr "R_indexFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[15]"
		;
connectAttr "R_indexFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[16]"
		;
connectAttr "R_indexFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[17]"
		;
connectAttr "R_indexFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[18]";
connectAttr "R_indexFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[19]";
connectAttr "R_indexFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[20]";
connectAttr "R_indexFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[21]"
		;
connectAttr "R_indexFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[22]"
		;
connectAttr "R_indexFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[23]"
		;
connectAttr "R_indexFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[24]"
		;
connectAttr "R_indexFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[25]"
		;
connectAttr "R_indexFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[26]"
		;
connectAttr "R_indexFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[27]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[28]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[29]"
		;
connectAttr "R_indexFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[30]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[31]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[32]"
		;
connectAttr "R_indexFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[33]"
		;
connectAttr "R_indexFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[34]"
		;
connectAttr "R_indexFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[35]"
		;
connectAttr "R_indexFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[36]"
		;
connectAttr "R_indexFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[37]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[38]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[39]"
		;
connectAttr "R_indexFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[40]"
		;
connectAttr "R_middleFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[41]";
connectAttr "R_middleFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[42]";
connectAttr "R_middleFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[43]";
connectAttr "R_middleFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[44]"
		;
connectAttr "R_middleFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[45]"
		;
connectAttr "R_middleFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[46]"
		;
connectAttr "R_middleFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[47]"
		;
connectAttr "R_middleFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[48]";
connectAttr "R_middleFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[49]";
connectAttr "R_middleFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[50]";
connectAttr "R_middleFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[51]"
		;
connectAttr "R_middleFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[52]"
		;
connectAttr "R_middleFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[53]"
		;
connectAttr "R_middleFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[54]"
		;
connectAttr "R_middleFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[55]"
		;
connectAttr "R_middleFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[56]"
		;
connectAttr "R_middleFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[57]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[58]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[59]"
		;
connectAttr "R_middleFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[60]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[61]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[62]"
		;
connectAttr "R_middleFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[63]"
		;
connectAttr "R_middleFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[64]"
		;
connectAttr "R_middleFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[65]"
		;
connectAttr "R_middleFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[66]"
		;
connectAttr "R_middleFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[67]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[68]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[69]"
		;
connectAttr "R_middleFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[70]"
		;
connectAttr "R_ringFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[71]";
connectAttr "R_ringFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[72]";
connectAttr "R_ringFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[73]";
connectAttr "R_ringFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[74]"
		;
connectAttr "R_ringFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[75]"
		;
connectAttr "R_ringFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[76]"
		;
connectAttr "R_ringFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[77]"
		;
connectAttr "R_ringFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[78]";
connectAttr "R_ringFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[79]";
connectAttr "R_ringFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[80]";
connectAttr "R_ringFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[81]"
		;
connectAttr "R_ringFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[82]"
		;
connectAttr "R_ringFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[83]"
		;
connectAttr "R_ringFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[84]"
		;
connectAttr "R_ringFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[85]"
		;
connectAttr "R_ringFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[86]"
		;
connectAttr "R_ringFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[87]"
		;
connectAttr "R_ringFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[88]";
connectAttr "R_ringFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[89]";
connectAttr "R_ringFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[90]";
connectAttr "R_ringFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[91]"
		;
connectAttr "R_ringFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[92]"
		;
connectAttr "R_ringFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[93]"
		;
connectAttr "R_ringFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[94]"
		;
connectAttr "R_ringFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[95]"
		;
connectAttr "R_ringFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[96]"
		;
connectAttr "R_ringFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[97]"
		;
connectAttr "R_ringFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[98]";
connectAttr "R_ringFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[99]";
connectAttr "R_ringFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[100]"
		;
connectAttr "R_pinkyFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[101]";
connectAttr "R_pinkyFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[102]";
connectAttr "R_pinkyFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[103]";
connectAttr "R_pinkyFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[104]"
		;
connectAttr "R_pinkyFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[105]"
		;
connectAttr "R_pinkyFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[106]"
		;
connectAttr "R_pinkyFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[107]"
		;
connectAttr "R_pinkyFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[108]";
connectAttr "R_pinkyFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[109]";
connectAttr "R_pinkyFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[110]";
connectAttr "R_pinkyFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[111]"
		;
connectAttr "R_pinkyFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[112]"
		;
connectAttr "R_pinkyFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[113]"
		;
connectAttr "R_pinkyFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[114]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[115]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[116]"
		;
connectAttr "R_pinkyFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[117]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[118]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[119]"
		;
connectAttr "R_pinkyFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[120]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[121]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[122]"
		;
connectAttr "R_pinkyFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[123]"
		;
connectAttr "R_pinkyFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[124]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[125]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[126]"
		;
connectAttr "R_pinkyFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[127]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[128]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[129]"
		;
connectAttr "R_pinkyFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[130]"
		;
connectAttr "R_thumbFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[131]"
		;
connectAttr "R_thumbFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[132]"
		;
connectAttr "R_thumbFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[133]"
		;
connectAttr "R_thumbFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[134]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[135]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[136]"
		;
connectAttr "R_thumbFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[137]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[138]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[139]"
		;
connectAttr "R_thumbFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[140]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[141]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[142]"
		;
connectAttr "R_thumbFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[143]"
		;
connectAttr "R_thumbFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[144]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[145]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[146]"
		;
connectAttr "R_thumbFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[147]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[148]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[149]"
		;
connectAttr "R_thumbFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[150]"
		;
connectAttr "L_shoulder_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[151]";
connectAttr "L_shoulder_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[152]";
connectAttr "L_shoulder_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[153]";
connectAttr "L_shoulder_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[154]";
connectAttr "L_elbow_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[155]";
connectAttr "L_elbow_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[156]";
connectAttr "L_wrist_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[157]";
connectAttr "L_wrist_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[158]";
connectAttr "L_wrist_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[159]";
connectAttr "L_wrist_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[160]";
connectAttr "L_thumbFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[161]"
		;
connectAttr "L_thumbFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[162]"
		;
connectAttr "L_thumbFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[163]"
		;
connectAttr "L_thumbFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[164]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[165]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[166]"
		;
connectAttr "L_thumbFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[167]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[168]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[169]"
		;
connectAttr "L_thumbFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[170]"
		;
connectAttr "L_thumbFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[171]"
		;
connectAttr "L_thumbFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[172]"
		;
connectAttr "L_thumbFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[173]"
		;
connectAttr "L_thumbFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[174]"
		;
connectAttr "L_thumbFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[175]"
		;
connectAttr "L_thumbFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[176]"
		;
connectAttr "L_thumbFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[177]"
		;
connectAttr "L_thumbFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[178]"
		;
connectAttr "L_thumbFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[179]"
		;
connectAttr "L_thumbFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[180]"
		;
connectAttr "L_pinkeyFinger_ctrl_Curl.o" "handrigg_device_skinnedRN.phl[181]";
connectAttr "L_pinkeyFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[182]"
		;
connectAttr "L_pinkeyFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[183]"
		;
connectAttr "L_pinkeyFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[184]"
		;
connectAttr "L_pinkeyFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[185]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[186]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[187]"
		;
connectAttr "L_pinkeyFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[188]"
		;
connectAttr "L_pinkeyFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[189]";
connectAttr "L_pinkeyFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[190]";
connectAttr "L_pinkeyFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[191]";
connectAttr "L_pinkeyFinger_ctrl_02_Curl.o" "handrigg_device_skinnedRN.phl[192]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[193]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[194]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[195]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[196]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[197]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[198]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[199]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[200]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[201]"
		;
connectAttr "L_pinkeyFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[202]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_Curl.o" "handrigg_device_skinnedRN.phl[203]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[204]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[205]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[206]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[207]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[208]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[209]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[210]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[211]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[212]"
		;
connectAttr "L_pinkeyFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[213]"
		;
connectAttr "L_ringFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[214]";
connectAttr "L_ringFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[215]";
connectAttr "L_ringFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[216]";
connectAttr "L_ringFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[217]"
		;
connectAttr "L_ringFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[218]"
		;
connectAttr "L_ringFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[219]"
		;
connectAttr "L_ringFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[220]"
		;
connectAttr "L_ringFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[221]";
connectAttr "L_ringFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[222]";
connectAttr "L_ringFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[223]";
connectAttr "L_ringFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[224]"
		;
connectAttr "L_ringFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[225]"
		;
connectAttr "L_ringFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[226]"
		;
connectAttr "L_ringFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[227]"
		;
connectAttr "L_ringFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[228]"
		;
connectAttr "L_ringFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[229]"
		;
connectAttr "L_ringFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[230]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[231]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[232]"
		;
connectAttr "L_ringFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[233]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[234]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[235]"
		;
connectAttr "L_ringFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[236]"
		;
connectAttr "L_ringFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[237]"
		;
connectAttr "L_ringFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[238]"
		;
connectAttr "L_ringFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[239]"
		;
connectAttr "L_ringFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[240]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[241]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[242]"
		;
connectAttr "L_ringFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[243]"
		;
connectAttr "L_middleFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[244]"
		;
connectAttr "L_middleFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[245]"
		;
connectAttr "L_middleFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[246]"
		;
connectAttr "L_middleFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[247]"
		;
connectAttr "L_middleFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[248]"
		;
connectAttr "L_middleFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[249]"
		;
connectAttr "L_middleFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[250]"
		;
connectAttr "L_middleFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[251]";
connectAttr "L_middleFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[252]";
connectAttr "L_middleFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[253]";
connectAttr "L_middleFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[254]"
		;
connectAttr "L_middleFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[255]"
		;
connectAttr "L_middleFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[256]"
		;
connectAttr "L_middleFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[257]"
		;
connectAttr "L_middleFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[258]"
		;
connectAttr "L_middleFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[259]"
		;
connectAttr "L_middleFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[260]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[261]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[262]"
		;
connectAttr "L_middleFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[263]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[264]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[265]"
		;
connectAttr "L_middleFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[266]"
		;
connectAttr "L_middleFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[267]"
		;
connectAttr "L_middleFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[268]"
		;
connectAttr "L_middleFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[269]"
		;
connectAttr "L_middleFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[270]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[271]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[272]"
		;
connectAttr "L_middleFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[273]"
		;
connectAttr "L_indexFinger_ctrl_rotateX.o" "handrigg_device_skinnedRN.phl[274]";
connectAttr "L_indexFinger_ctrl_rotateY.o" "handrigg_device_skinnedRN.phl[275]";
connectAttr "L_indexFinger_ctrl_rotateZ.o" "handrigg_device_skinnedRN.phl[276]";
connectAttr "L_indexFinger_ctrl_visibility.o" "handrigg_device_skinnedRN.phl[277]"
		;
connectAttr "L_indexFinger_ctrl_translateX.o" "handrigg_device_skinnedRN.phl[278]"
		;
connectAttr "L_indexFinger_ctrl_translateY.o" "handrigg_device_skinnedRN.phl[279]"
		;
connectAttr "L_indexFinger_ctrl_translateZ.o" "handrigg_device_skinnedRN.phl[280]"
		;
connectAttr "L_indexFinger_ctrl_scaleX.o" "handrigg_device_skinnedRN.phl[281]";
connectAttr "L_indexFinger_ctrl_scaleY.o" "handrigg_device_skinnedRN.phl[282]";
connectAttr "L_indexFinger_ctrl_scaleZ.o" "handrigg_device_skinnedRN.phl[283]";
connectAttr "L_indexFinger_ctrl_02_rotateX.o" "handrigg_device_skinnedRN.phl[284]"
		;
connectAttr "L_indexFinger_ctrl_02_rotateY.o" "handrigg_device_skinnedRN.phl[285]"
		;
connectAttr "L_indexFinger_ctrl_02_rotateZ.o" "handrigg_device_skinnedRN.phl[286]"
		;
connectAttr "L_indexFinger_ctrl_02_visibility.o" "handrigg_device_skinnedRN.phl[287]"
		;
connectAttr "L_indexFinger_ctrl_02_translateX.o" "handrigg_device_skinnedRN.phl[288]"
		;
connectAttr "L_indexFinger_ctrl_02_translateY.o" "handrigg_device_skinnedRN.phl[289]"
		;
connectAttr "L_indexFinger_ctrl_02_translateZ.o" "handrigg_device_skinnedRN.phl[290]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleX.o" "handrigg_device_skinnedRN.phl[291]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleY.o" "handrigg_device_skinnedRN.phl[292]"
		;
connectAttr "L_indexFinger_ctrl_02_scaleZ.o" "handrigg_device_skinnedRN.phl[293]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateX.o" "handrigg_device_skinnedRN.phl[294]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateY.o" "handrigg_device_skinnedRN.phl[295]"
		;
connectAttr "L_indexFinger_ctrl_03_rotateZ.o" "handrigg_device_skinnedRN.phl[296]"
		;
connectAttr "L_indexFinger_ctrl_03_visibility.o" "handrigg_device_skinnedRN.phl[297]"
		;
connectAttr "L_indexFinger_ctrl_03_translateX.o" "handrigg_device_skinnedRN.phl[298]"
		;
connectAttr "L_indexFinger_ctrl_03_translateY.o" "handrigg_device_skinnedRN.phl[299]"
		;
connectAttr "L_indexFinger_ctrl_03_translateZ.o" "handrigg_device_skinnedRN.phl[300]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleX.o" "handrigg_device_skinnedRN.phl[301]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleY.o" "handrigg_device_skinnedRN.phl[302]"
		;
connectAttr "L_indexFinger_ctrl_03_scaleZ.o" "handrigg_device_skinnedRN.phl[303]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of jump_ledge_grab_device_02.ma
