private ["_txt","_trg","_pos","_mk"];

// Variables liées au paramètres de la mission
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

cc_night = if (CC_p_time in [1,2,3,4,20,21,22,23,0]) then {true} else {false};
cc_rhsennemy = false;
if (CC_p_ennemy in [0,2,14,17,18,19,20,21,100,106,108,109]) then {cc_rhsennemy = true};

chefIA_create = false;
publicVariable "chefIA_create";
chefIA_killed = false;
publicVariable "chefIA_killed";

null = [] execVM "scripts\create_markers.sqf";

// Sélection du type de mission
cc_p_mission = 1;
if (cc_p_mission == 0) then {
	cc_p_mission = selectrandom [1,2];
};
cc_p_mission_server = cc_p_mission;
publicVariable "cc_p_mission_server";
switch (cc_p_mission_server) do {
	case 1: {
		null = [] execVM "scripts\obj_cache.sqf";
		_txt = "Caisse en feu";
	};
	case 2: { // Pas encore fonctionnel
		null = [] execVM "scripts\obj_off.sqf";
		_txt = "Trouver les documents";
	};
	default {
		null = [] execVM "scripts\obj_cache.sqf";
		_txt = "Caisse en feu";
	};
};

// Trigger d'objectif
_trg = createTrigger ["EmptyDetector",[0,0,0],true];
_trg setTriggerStatements ["!alive cible","task1 setTaskState 'Succeeded';['TaskSucceeded',['','"+_txt+"']] call BIS_fnc_showNotification;",""];
_trg setTriggerTimeout [0,0,0,false];
// Trigger d'objectif
_trg = createTrigger ["EmptyDetector",[0,0,0],true];
_trg setTriggerStatements ["(time > 120) AND ((resistance countSide allUnits) < 2)","task2 setTaskState 'Succeeded';",""];
_trg setTriggerTimeout [0,0,0,false];

waitUntil {!isnil "cc_objOK"};
// Marker d'extraction aléatoire.
if (CC_p_extraction == 1) then {
	_pos = (MarkerPos "2") getpos [1150,(random 360)];
	while {surfaceIsWater _pos} do {
		_pos = (MarkerPos "2") getpos [1400,(random 360)];
	};
	_mk = createMarker ["RDV",_pos];
	_mk setMarkerShape "ICON";
	_mk setMarkerType "mil_end";
	_mk setmarkerColor "colorBlue";
	_mk setMarkerText "RDV";
};

[] call STDR_fnc_ammocrate;
