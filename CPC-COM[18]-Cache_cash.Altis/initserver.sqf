/*

** Refactoring **
Etat initial du script :
- Initialise les variables globales côté serveur
- Paramètre l'heure et la pleine lune
- Paramètre la météo
- Lance le build de la cache (obj_cache.sqf) et des triggers d'objectifs accomplis 
- Créé un marqueur d'extraction aléatoire sous condition
- Paramètre le loadout des IA
- Ajoute la caisse de matériel sous condition
- Ajoute SSS sous condition

TODO : éviter d'avoir à broadcaster des variables et d'avoir des waituntil attendant l'init de variables publiques (broadcastées)

DONE :
- Initialiser les variables statiques (paramètres de mission, en particulier) uniquement dans le init.sqf
- En conséquence, deplacer les appels de fonction serveur dans le init.sqf

** Refactoring **

*/

private ["_txt","_trg","_pos","_mk"];


/* Déplacé dans le init.sqf */
	/* Server global variables */
	//	[] call STDR_fnc_commonVariables;
	/* Server global variables */

	/* Mission date and time */
	//	[] call STDR_fnc_setDate;
	/* Mission date and time */

	/* Weather */
	//	[] call STDR_fnc_setWeather;
	/* Weather */
/* Déplacé dans le init.sqf */

chefIA_create = false;
publicVariable "chefIA_create";
chefIA_killed = false;
publicVariable "chefIA_killed";


/* DAL : non fonctionnel
// Sélection du type de mission
cc_p_mission = 1;
if (cc_p_mission isEqualTo 0) then {
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
*/

/* Déplacé dans le init.sqf */
	//null = [] execVM "scripts\create_markers.sqf";
	//[] execVM "scripts\obj_cache.sqf";
/* Déplacé dans le init.sqf */

_txt = "Caisse en feu";
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

// loadout pour les IA
call compile preprocessFileLineNumbers ("loadout\loadout_" + CC_loadout + ".sqf");
{
	if !(isNil {_x getVariable "loadout"}) then 
	{
		if (isNil {_x getVariable "loadout_done"}) then 
		{
			[_x] call hard_setLoadout;
			_x setVariable ["loadout_done", true, true];
		};
	};
} foreach (allUnits select {((side _x) == blufor) && (!isPlayer _x)});


[] call STDR_fnc_ammocrate;

//SSS
if (CC_P_ssscas > 0) then {
	[] call STDR_fnc_setupssscas;
};
if (CC_P_sssdrone > 0) then {
	[] call STDR_fnc_setupsssdrone;
};
