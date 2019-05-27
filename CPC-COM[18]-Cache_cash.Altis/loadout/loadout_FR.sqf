/*-----------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
***	Author: Hardballer

***	Description : 
	Loadouts de la mission

*** Utilisation :
	1/ Copiez les fichiers 'loadout.sqf', 'initPlayerLocal.sqf' et 'inventory_briefing.sqf' dans le dossier de votre mission.
	2/ Modifiez le fichier loadout.sqf à votre convenance.
		- Vous pouvez creer vos loadouts dans l'arsenal virtuel de Arma 3, les exporter avec la commande ingame et les coller dans le script comme ci-dessous.
		- Une fois ceci fait, remplacez tout les 'this' par '_unit'.
	3/ Dans l'éditeur, placez la commande ci-dessous dans les init d'unités jouables pour leur attribuer le loadout souhaité :
		this setVariable ["loadout", "cc_sl"];
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------*/


hard_setLoadout = 
{
	_unit = _this select 0;
	_loadout = _unit getVariable "loadout";
	_uniform = "";
	_backpack_big = "";
	_backpack_med = "";
	_backpack_small = "";
	_helmet = "";
	_vest_1 = "";
	_vest_2 = "";
	_hat = "";
	_nvg = "";
	_lamp = "";
	_weap_lat = [];
	_weap_at = [];
	_mun_at = [];
	_facewear =  "";

	switch (CC_p_nvg) do {
		case 0: {_nvg = ""; _lamp = "";};
		case 1: {_nvg = "CUP_NVG_PVS15_black"; _lamp = "rhsusf_acc_anpeq15_bk_top";};
		case 2: {_nvg = ""; _lamp = "rhsusf_acc_wmx_bk";};
		default {_nvg = ""; _lamp = "";};
	};
	
	switch (cc_loadoutcamo) do {
		case "woodland";
		case "winter";
		case "desert";
		case "jungle";
		case "polyvalent";
		default {
			_uniform = selectRandom ["U_MU_B_soldier_wdl","U_MU_B_soldier_wdl_vest"];
			_backpack_big = "B_Carryall_oli";
			_backpack_med = "rhssaf_kitbag_md2camo";
			_backpack_small = "B_AssaultPack_rgr";
			if (CC_p_nvg == 1) then {
				_helmet = "rhssaf_helmet_m97_woodland";
			} else {
				_helmet = selectRandom ["rhssaf_helmet_m97_woodland","rhssaf_helmet_m97_woodland_black_ess","rhssaf_helmet_m97_woodland_black_ess_bare"];
			};
			_hat = "rhssaf_booniehat_woodland";
			_vest_1 = "rhssaf_vest_otv_md2camo";
			_vest_2 = "V_I_G_resistanceLeader_F";
		};
	};
	switch (cc_rhsennemy) do {
		case false: {
			_weap_lat = ["CUP_launch_M136","","","",[],[],""];
			_weap_at = ["CUP_launch_Mk153Mod0","","","cup_optic_smaw_scope",["CUP_SMAW_HEAA_M",1],[],""];
			_mun_at = [["CUP_SMAW_HEAA_M",2,1],["CUP_SMAW_Spotting",2,5]];
		};
		case true;
		default {
			_weap_lat = ["rhs_weap_M136","","","",[],[],""];
			_weap_at = ["rhs_weap_smaw","","","rhs_weap_optic_smaw",["rhs_mag_smaw_HEAA",1],[],""];
			_mun_at = [["rhs_mag_smaw_HEAA",2,1],["rhs_mag_smaw_SR",2,5]];
		};
	};

	if (CC_p_nvg < 1) then {
		_facewear = selectrandom ["CUP_TK_NeckScarf","CUP_FR_NeckScarf","CUP_FR_NeckScarf2","rhs_googles_yellow","rhs_googles_black","G_Shades_Green","G_Shades_Black",""];
	} else {
		_facewear = selectRandomWeighted ["CUP_TK_NeckScarf",0.5,"CUP_FR_NeckScarf",0.5,"CUP_FR_NeckScarf2",0.5,"",0.9];
	};

	_weap_cco = ["rhs_weap_hk416d145","",_lamp,"rhsusf_acc_eotech_552",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"bipod_01_f_blk"];
	_weap_cco_s = ["rhs_weap_hk416d10_LMT","",_lamp,"rhsusf_acc_eotech_552",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""];
	_weap_rco = ["rhs_weap_hk416d145","",_lamp,"rhsusf_acc_acog2",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"bipod_01_f_blk"];
	_pistol = ["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""];

	_itemsU_base = [["ACE_fieldDressing",4],["ACE_tourniquet",1],["ACE_EarPlugs",1],["ACE_Flashlight_MX991",1],["ACRE_PRC343",1],["ACE_CableTie",1],["ACE_IR_Strobe_Item",1],["SmokeShell",2,1]];
	_itemsU_tl = _itemsU_base + [["ACRE_PRC148",1],["ACE_microDAGR",1],["ACE_MapTools",1]];
	_itemsV_base = [["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30]];
	_itemsB_medic = [["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_salineIV",2],["ACE_salineIV_250",2],["ACE_salineIV_500",2],["ACE_packingBandage",15],["ACE_fieldDressing",15],["ACE_elasticBandage",10],["ACE_quikclot",10],["ACE_morphine",8],["ACE_epinephrine",4],["ACE_tourniquet",4]];
	
	switch _loadout do 
	{
		case "cc_off": {[_unit] call loadoutCC_OFF}; // 1
		case "cc_tl": {[_unit] call loadoutCC_TL}; // 2
		case "cc_doc": {[_unit] call loadoutCC_DOC}; //3
		case "cc_ar": {[_unit] call loadoutCC_AR}; //4
		case "cc_aar": {[_unit] call loadoutCC_AAR}; //5
		case "cc_mg": {[_unit] call loadoutCC_MG}; //6
		case "cc_amg": {[_unit] call loadoutCC_AMG}; //7
		case "cc_at": {[_unit] call loadoutCC_AT}; //8
		case "cc_aat": {[_unit] call loadoutCC_AAT}; //9
		case "cc_demo": {[_unit] call loadoutCC_DEMO}; //10
		case "cc_m": {[_unit] call loadoutCC_M}; //11
		case "cc_gl": {[_unit] call loadoutCC_GL}; //12
		case "cc_a": {[_unit] call loadoutCC_A}; //13
		case "cc_lat": {[_unit] call loadoutCC_LAT}; //14
		case "cc_r": {[_unit] call loadoutCC_R}; //15
		case "cc_crew": {[_unit] call loadoutCC_CREW}; //16
		case "cc_pilot": {[_unit] call loadoutCC_PILOT}; //17
		case "cc_sniper": {[_unit] call loadoutCC_SNIPER}; //18
		case "cc_obs": {[_unit] call loadoutCC_OBS}; //19
		case "cc_jtac": {[_unit] call loadoutCC_JTAC}; //20
		default {[_unit] call loadoutCC_R};
	};
};



loadoutCC_OFF = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_tl],
		[_vest_1,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,30],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,30]]],
		[_backpack_small,[["ACRE_PRC117F",1],["SmokeShellPurple",2,1],["SmokeShellGreen",2,1]]],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};


loadoutCC_TL = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_rco,
		_weap_lat,
		_pistol,
		[_uniform,_itemsU_tl],
		[_vest_1,[["HandGrenade",2,1],["SmokeShellGreen",1,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",3,30],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,30]]],
		[],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_DOC = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_med,_itemsB_medic],
		_helmet,
		_facewear,
		["Binocular","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_AR = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["rhs_weap_minimi_para_railed","",_lamp,"rhsusf_acc_eotech_552",["rhsusf_100Rnd_556x45_mixed_soft_pouch",100],[],""],
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,[["HandGrenade",2,1],["rhsusf_100Rnd_556x45_mixed_soft_pouch",2,100]]],
		[_backpack_small,[["rhsusf_100Rnd_556x45_mixed_soft_pouch",5,100]]],
		_helmet,
		_facewear,
		[],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_AAR = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_med,[["rhsusf_100Rnd_556x45_mixed_soft_pouch",6,100]]],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};
loadoutCC_MG = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["rhs_weap_m240G","",_lamp,"optic_tws_mg",["rhsusf_50Rnd_762x51_m62_tracer",50],[],""],
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,[["HandGrenade",2,1],["rhsusf_50Rnd_762x51_m62_tracer",2,50]]],
		[_backpack_small,[["rhsusf_50Rnd_762x51_m62_tracer",5,50]]],
		_helmet,
		_facewear,
		["Binocular","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_AMG = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_med,[["rhsusf_50Rnd_762x51_m62_tracer",6,50]]],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_AT = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		_weap_at,
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_big,_mun_at],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_AAT = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_rco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_big,_mun_at],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_DEMO = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_med,[["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1]]],
		_helmet,
		_facewear,
		["Binocular","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_M = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["rhs_weap_hk416d145","",_lamp,"optic_tws",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"bipod_01_f_blk"],
		[],
		_pistol,
		[_uniform,(_itemsU_base + [["rhsusf_acc_acog2",1],["ACE_Kestrel4500",1],["ACE_RangeCard",1]])],
		[_vest_1,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30]]],
		[],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_GL = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["rhs_weap_hk416d145_m320","",_lamp,"rhsusf_acc_eotech_552",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["rhs_mag_M433_HEDP",1],""],
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_M433_HEDP",4,1]]],
		[_backpack_med,[["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,30],["rhs_mag_M433_HEDP",10,1],["rhs_mag_m713_Red",6,1],["rhs_mag_M585_white",6,1],["ACE_HandFlare_Green",2,1],["HandGrenade",2,1],["SmokeShell",2,1]]],
		_helmet,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_A = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_rco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[_backpack_med,[["rhs_mag_30Rnd_556x45_M855A1_Stanag",8,30],["SmokeShell",2,1],["HandGrenade",2,1],["ACE_HandFlare_Green",2,1]]],
		_helmet,
		_facewear,
		["Binocular","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_LAT = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		_weap_lat,
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[],
		_helmet,
		_facewear,
		[],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_R = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_base],
		[_vest_1,_itemsV_base],
		[],
		_helmet,
		_facewear,
		[],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_CREW = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco_s,
		[],
		_pistol,
		[_uniform,_itemsU_tl],
		[_vest_2,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],
		[],
		"H_HelmetCrew_I",
		_facewear,
		["Binocular","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};

loadoutCC_PILOT = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco_s,
		[],
		_pistol,
		[_uniform,_itemsU_tl],
		[_vest_2,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],
		[],
		"H_PilotHelmetHeli_B",
		"",
		[],
		["ItemMap","","","ItemCompass","ACE_Altimeter",(if (CC_p_nvg > 0) then {"CUP_NVG_PVS15_black"} else {""})]
	];
};

loadoutCC_SNIPER = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["srifle_GM6_F","","","rhsusf_acc_premier",["5Rnd_127x108_Mag",5],[],""],
		[],
		["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],
		[_uniform,_itemsU_tl],
		[_vest_2,[["ACE_Kestrel4500",1],["ACE_RangeCard",1],["ACE_ATragMX",1],["HandGrenade",2,1],["5Rnd_127x108_Mag",1,5],["rhsusf_mag_17Rnd_9x19_JHP",4,17]]],
		[_backpack_small,[["optic_tws",1],["5Rnd_127x108_Mag",4,5],["5Rnd_127x108_APDS_Mag",4,5]]],
		_hat,
		_facewear,
		["ACE_Vector","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",(if (CC_p_nvg > 0) then {"CUP_NVG_PVS15_black"} else {""})]
	];
};

loadoutCC_OBS = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		["rhs_weap_hk416d10_LMT","rhsusf_acc_nt4_black","rhsusf_acc_anpeq16a_top","optic_tws",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"bipod_01_f_blk"],
		[],
		["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],
		[_uniform,_itemsU_tl],
		[_vest_2,[["ACE_Kestrel4500",1],["ACE_ATragMX",1],["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhsusf_mag_17Rnd_9x19_JHP",2,17]]],
		[_backpack_med,[["rhsusf_acc_eotech_552",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",2,30]]],
		_hat,
		_facewear,
		["Rangefinder","","","",[],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",(if (CC_p_nvg > 0) then {"CUP_NVG_PVS15_black"} else {""})]
	];
};

loadoutCC_JTAC = //
{
	_unit = _this select 0;
	_unit setUnitLoadout [
		_weap_cco,
		[],
		_pistol,
		[_uniform,_itemsU_tl],
		[_vest_1,[["HandGrenade",2,1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",7,30]]],
		[_backpack_small,[["ACRE_PRC117F",1],["SmokeShellGreen",4,1],["ACE_HandFlare_Green",1,1]]],
		_helmet,
		_facewear,
		["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],
		["ItemMap","","","ItemCompass","ACE_Altimeter",_nvg]
	];
};
