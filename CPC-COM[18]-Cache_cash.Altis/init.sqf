
// définition manuelle des paramètres pour le débug
if (isNil "paramsArray") then {
	paramsArray = [
		12,		//Heure
		1,		//Difficulté
		1,		//Skill
		1,		//Insertion
		0,		//extraction
		19,		//Loadout
		0,		//NVG
		0,		//Caisse
		0,		//Véhicule
		100,	//Faction IA
		0,		//ennemyveh
		1,		//météo
		0,		//brouillard
		0		//Moon
	];
};

// Variables liées au paramètres de la mission
if (isNil "CC_p_time") then {
	CC_p_time = (paramsArray select 0);
	CC_p_difficulty = (paramsArray select 1);
	CC_p_skillia = (paramsArray select 2);
	CC_p_insertion = (paramsArray select 3);
	CC_p_extraction = (paramsArray select 4);
	CC_p_loaout = (paramsArray select 5);
	CC_p_nvg = (paramsArray select 6);
	CC_p_ammocrate = (paramsArray select 7);
	CC_p_vehicle = (paramsArray select 8);
	CC_p_ennemy = (paramsArray select 9);
	CC_p_ennemyveh = (paramsArray select 10);
	CC_p_overcast = (paramsArray select 11);
	CC_p_fog = (paramsArray select 12);
	CC_p_fullmoon = (paramsArray select 13);
};
cc_night = if (CC_p_time in [1,2,3,4,20,21,22,23,0]) then {true} else {false};
cc_playerCount = if (isMultiplayer) then {count playableUnits} else {count switchableUnits};

// déterminer la localité pour faire pop les IAs(HC ou éditeur)
MODE_EDITEUR = false;
MODE_HC = false;
HC_IsPresent = false;

if !(isMultiplayer) then {
	MODE_EDITEUR = true;
	null = [] execVM "scripts\spawn_ia.sqf";
} else {
	if !(hasInterface or isServer) then {
		MODE_HC = true;
		HC_IsPresent = true;
		publicVariableServer "HC_IsPresent";
		null = [] execVM "scripts\spawn_ia.sqf";
	};
};

waitUntil {!isnil "cc_MarkersCreated"};

// Date et heure
[] call STDR_fnc_setdate;

//METEO
[] call STDR_fnc_meteo;

/*SCRIPTS*/
switch (CC_p_insertion) do {
	case 0 : {null = [] execVM "scripts\insert_random.sqf";};
	case 1 : {null = [] execVM "scripts\insert_gdc_choose.sqf";};
	case 3 : {null = [] execVM "scripts\insert_gdc_helico.sqf";};
	case 4 : {null = [] execVM "scripts\insert_gdc_lalo.sqf";};
	case 5 : {null = [] execVM "scripts\insert_gdc_halo.sqf";};
	default {null = [] execVM "scripts\insert_gdc_choose.sqf";};
};

if (CC_p_extraction == 2) then {
	_type = switch (CC_p_loaout) do {
		case 0 : {if (cc_playerCount > 8) then {"B_Heli_Transport_03_unarmed_F"} else {"B_Heli_Transport_01_F"}}; // NATO
		case 1 : {if (cc_playerCount > 8) then {"O_Heli_Transport_04_covered_F"} else {"O_Heli_Light_02_unarmed_F"}}; // CSAT
		case 2 : {if (cc_playerCount > 8) then {"I_Heli_Transport_02_F"} else {"MU_AAF_Orca_unarmed"}}; // AAF
		case 3 : {if (cc_playerCount > 12) then {"RHS_CH_47F"} else {"RHS_UH60M"}}; // US Army RHS
		case 4 : {if (cc_playerCount > 12) then {"RHS_CH_47F"} else {"RHS_UH60M"}}; // USMC RHS
		case 5 : {if (cc_playerCount > 12) then {"RHS_CH_47F"} else {"RHS_UH60M"}}; // US SF RHS
		case 6 : {"RHS_Mi8AMT_vvsc"}; // RU 2000
		case 7 : {"RHS_Mi8AMT_vvsc"}; // RU 2015
		case 8 : {if (cc_playerCount > 8) then {"RHS_Mi8AMT_vvsc"} else {"rhs_ka60_c"}}; // RU SF
		case 9 : {if (cc_playerCount > 8) then {"CUP_B_CH53E_GER"} else {"CUP_B_UH1D_slick_GER_KSK_Des"}}; // KSK
		case 10 : {if (cc_playerCount > 8) then {"CUP_B_Merlin_HC3_GB"} else {"CUP_B_AW159_Unarmed_GB"}}; // BAF
		case 11 : {if (cc_playerCount > 12) then {"CUP_I_CH47F_RACS"} else {"CUP_B_AW159_Unarmed_GB"}}; // RACS
		case 12 : {if (cc_playerCount > 8) then {"CUP_O_Mi17_TK"} else {"CUP_O_UH1H_slick_TKA"}}; // TAK
		case 13 : {"rhsgref_ins_Mi8amt"}; // INS
		case 14 : {"CUP_C_Mi17_Civilian_RU"}; // TAK INS
		case 15 : {"rhssaf_airforce_ht48"}; // SAF
		case 16 : {"rhsgref_cdf_b_reg_Mi8amt"}; // CDF
		case 17 : {if (cc_playerCount > 8) then {"MU_MERC_Mohawk"} else {"CPC_JUN_B_AMIL_UH1H_unarmed"}}; // PMC
		case 18 : {"CUP_B_SA330_Puma_HC2_BAF"}; // FR
		case 19 : {if (cc_playerCount > 8) then {"RHS_CH_47F"} else {"CPC_JUN_B_AMIL_UH1H_unarmed"}}; // occident
		default {"RHS_CH_47F"};
	};
	["ACRE_PRC148",5,blufor,_type,"Mark_Cible",true] call GDC_fnc_extra;
};

// Trigger de fin de mission
_trg = createTrigger ["EmptyDetector",[0,0,0],true];
_trg setTriggerActivation ["ALPHA","PRESENT",false];
_trg setTriggerText "Couper la mission";
_trg setTriggerStatements ["this","['end1',true,4] call BIS_fnc_endMission;",""];

finishMissionInit;
waitUntil {time > 0};

// véhicle creator
if (CC_p_vehicle > 0) then {
	null = [] execVM "scripts\vehicle_creator.sqf";
};

//METEO
[] call STDR_fnc_meteo;
