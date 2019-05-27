/*

*/
private [
	"_nbr","_mark","_markEx","_pos","_dir","_group","_veh","_array","_type","_wp","_i","_markPos","_upPos",
	"_side","_unitType","_vehTypes","_VehicleCrew","_VehicleCrewTypes",
	"_r","_tl","_gl","_lat","_at","_mg","_m","_aa","_crew","_hmg",
	"_veharray_light","_veharray_medium","_veharray_heavy","_veharray_transport","_veharray_heli","_veharray_air","_veharray_aa"
];

waitUntil {!isnil "cc_MarkersCreated"};
/*
[
	false,
	[],
	true,
	0.5,
	2000,
	[],
	100,
	70,
	500, //_MCC_GAIA_MAX_SLOW_SPEED_RANGE
	800, //_MCC_GAIA_MAX_MEDIUM_SPEED_RANGE
	80000, //_MCC_GAIA_MAX_FAST_SPEED_RANGE
	40,
	5000,
	350
] call GDC_gaia_fnc_initHC;*/

[] execVM "InitGaia.sqf";
call compile preprocessfilelinenumbers "shk_pos\shk_pos_init.sqf";

/* PARAMETRES */

_side = independent;

_r = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "r");
_tl = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "tl");
_gl = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "gl");
_lat = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "lat");
_at = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "at");
_mg = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "mg");
_m = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "m");
_aa = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "aa");
_crew = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "crew");
_hmg = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "hmg");
_veharray_light = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_light");
_veharray_medium = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_medium");
_veharray_heavy = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_heavy");
_veharray_transport = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_transport");
_veharray_heli = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_heli");
_veharray_air = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_air");
_veharray_aa = getArray (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "veharray_aa");

_unitTypes = [_r,0.9,_mg,0.3,_gl,0.1,_m,0.1];

_array = switch (CC_p_menace_at) do { // menace AT infantry
	case 1: {[_lat,0.4,_at,0.3]};
	case 2: {[_lat,0.6,_at,0.5]};
	default {[]};
};
_unitTypes = _unitTypes + _array;

_array = switch (CC_p_menace_aa) do { // menace AA infantry
	case 1: {[_aa,0.2]};
	default {[]};
};
_unitTypes = _unitTypes + _array;

_vehTypes = _veharray_light; // Seulement des véhicules légers

if (CC_p_menace_veh_type > 0) then { // Présence de véhicules moyens
	_vehTypes = _veharray_medium;
};

if (CC_p_menace_veh_type > 1) then { // Présence de véhicules lourds
	_vehTypes = _vehTypes + _veharray_heavy;
};

if (CC_p_menace_veh_type > 2) then { // Encore plus de véhicules lourds
	_vehTypes = _vehTypes + _veharray_heavy;
};

_VehicleCrewTypes = [_crew,_crew,_crew];

waituntil {time > 10};

/* SPAWN */

// Fait spawn des groupes (jusqu'à 4) qui patrouillent dans la petite zone en NOFOLLOW
_nbr = CC_p_difficulty + 1;
_mark = "2";
_markEx = "1";
for "_n" from 1 to _nbr do {
	_pos = [_mark,0,_markEx,100] call SHK_pos;
	_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	_group setVariable ["GAIA_ZONE_INTEND",[_mark,"NOFOLLOW"],false];
	sleep 0.5;
};

// Fait spawn des technicals (jusqu'à 4) qui patrouillent dans la petite zone en MOVE
_nbr = switch (CC_p_difficulty) do {
	case 0: {2};
	case 1: {2 + (floor random 2)};
	case 2: {3};
	case 3: {4};
};
if (CC_p_menace_veh_nbr > 0) then {
	for "_n" from 1 to _nbr do {
		_type = (selectRandom _veharray_light);
		_pos = [_mark,0,_markEx,[100,_type]] call SHK_pos;
		_veh = [_pos,_side,_type,([_unitTypes,2] call GDC_fnc_creategroupCompo),(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh#0;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"MOVE"],false];
		sleep 0.5;
	};
};

// Fait spawn des groupes (jusqu'à 6) qui restent dans la zone du camp en FORTIFY
if (typecamp == 1) then { //petit camp
	_nbr = switch (CC_p_difficulty) do {
		case 0: {2};
		case 1: {3};
		case 2: {4};
		case 3: {5};
	};
};
if (typecamp == 2) then { //ville
	_nbr = switch (CC_p_difficulty) do {
		case 0: {2 + (floor random 2)};
		case 1: {3 + (floor random 2)};
		case 2: {4 + (floor random 2)};
		case 3: {6 + (floor random 2)};
	};
};
if (typecamp == 3) then { //Base militaire
	_nbr = switch (CC_p_difficulty) do {
		case 0: {2};
		case 1: {3 + (floor random 2)};
		case 2: {4 + (floor random 2)};
		case 3: {6 + (floor random 2)};
	};
};
_mark = "1";
for "_n" from 1 to _nbr do {
	_pos = [_mark,0,[],100] call SHK_pos;
	_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	_group setVariable ["GAIA_ZONE_INTEND",[_mark,"FORTIFY"],false];
	sleep 0.5;
};

// Fait spawn des groupes (minimum 4) qui patrouillent dans la grande zone en MOVE
_nbr = switch (CC_p_difficulty) do {
	case 0: {1};
	case 1: {2};
	case 2: {3};
	case 3: {5};
};
_mark = "3";
_markEx = "2";
for "_n" from 1 to _nbr do {
	{
		_pos = [_mark,0,_markEx,200] call SHK_pos;
		_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"MOVE"],false];
		sleep 0.5;
	} foreach [1,2,3,4];
};
// Fait spawn des véhicules "lourds" (entre 1 et 8) qui patrouillent dans la grande zone en MOVE 
_nbr = switch (CC_p_difficulty) do {
	case 0: {floor random 2};
	case 1: {floor ((random 2)+ 0.5)};
	case 2: {(floor random 1.8) + 1};
	case 3: {(floor random 3) + 2};
};
if (CC_p_menace_veh_nbr > 0) then {
	if (CC_p_menace_veh_nbr == 2) then {_nbr = _nbr + 1 + CC_p_difficulty;}; 
	_mark = "3";
	_markEx = "2";
	for "_n" from 1 to _nbr do {
		_type = selectrandom _vehTypes;
		_pos = [_mark,0,_markEx,[200,_type]] call SHK_pos;
		if ((_type isKindOf "tank") OR (_type isKindOf "Wheeled_APC_F")) then {
			_VehicleCrew = _VehicleCrewTypes;
		} else {
			_VehicleCrew = ([_unitTypes,2] call GDC_fnc_creategroupCompo);
		};
		_veh = [_pos,_side,_type,_VehicleCrew,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh#0;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"MOVE"],false];
		sleep 0.5;
	};
};

// Fait spawn des véhicules AA qui ne sont pas affectés à GAIA :
if (CC_p_menace_aa == 1) then {
	_nbr = switch (CC_p_difficulty) do {
		case 0: {1};
		case 1: {2};
		case 2: {3};
		case 3: {5};
	};
	_mark = "3";
	_markEx = "2";
	for "_n" from 1 to _nbr do {
		_type = selectrandom _veharray_aa;
		_pos = [_mark,0,_markEx,[200,_type]] call SHK_pos;
		if ((_type isKindOf "tank") OR (_type isKindOf "Wheeled_APC_F")) then {
			_VehicleCrew = _VehicleCrewTypes;
		} else {
			_VehicleCrew = ([_unitTypes,2] call GDC_fnc_creategroupCompo);
		};
		_veh = [_pos,_side,_type,_VehicleCrew,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		sleep 0.5;
	};
};

// Fait spawn un mortier qui bombarde la grande zone
if (random 100 < 22) then {
	_dir = [[getMarkerPos "Mark_Inser" select 0,getMarkerPos "Mark_Inser" select 1,0],[getMarkerPos "1" select 0,getMarkerPos "1" select 1,0]] call BIS_fnc_dirTo;
	_pos = [[getmarkerpos "1" select 0, getmarkerpos "1" select 1,0],2000,(_dir + ((random 20)-10)),0] call SHK_pos;
	_veh = [_pos,_side,"B_G_Mortar_01_F",[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
	_group = _veh#0; _veh = _veh#1;
	_group setVariable ["GAIA_ZONE_INTEND",["3","NOFOLLOW"],false];
};

//Fait spawn des petits camps (jusqu'à 4) dans la grande zone avec un groupe dessus en FORTIFY
{
	if (random 100 < _x) then {
		_pos = [[getmarkerpos "1" select 0, getmarkerpos "1" select 1,0],[450,800],random 360,0] call SHK_pos;
		while {((SurfaceNormal _pos) select 2) < 0.955} do {
			_pos = [[getmarkerpos "1" select 0, getmarkerpos "1" select 1,0],[450,800],random 360,0] call SHK_pos;
		};
		[
			_pos
			, selectrandom ["campA","campB","campC","campD","campE","campF"]
		] execVM "scripts\create_camp.sqf";
		_mark = createMarker [format["CPos%1",_x],_pos];
			_mark setmarkerColor "colorRed";
			_mark setMarkerShape "ELLIPSE";
			_mark setMarkerSize [50,51];
			_mark setMarkerAlpha 0;
		_dir = random 360;
		_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"FORTIFY"],false];
		sleep 0.5;
	};
} foreach [40,20,5,2];

// Fait spawn un véhicule de transport de troupes sur une route entre 1000m et 1500m du camp et le fait patrouiller.
if (CC_p_menace_veh_nbr > 0) then {
	if (random 100 < 75) then {
		_type = selectRandom _veharray_transport;
		_pos = [getMarkerPos "1",[1000,1500],random 360,0,[1,500],_type] call SHK_pos;
		_veh = [_pos,_side,_type,[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh#0; _veh = _veh#1;
		//units _group join _veh;
		_wp = _group addWaypoint [(getpos _veh),20];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "SAFE";
			_wp setWaypointSpeed "LIMITED";
		{
			_pos = [getMarkerPos "1",[1500,1800],_x,0,[1,500]] call SHK_pos;
			_wp = _group addWaypoint [_pos,20];
				_wp setWaypointType "MOVE";
				_wp setWaypointBehaviour "SAFE";
				_wp setWaypointSpeed "LIMITED";
		} foreach [[0,90],[90,180],[180,270],[270,360]];
		_wp = _group addWaypoint [(getpos _veh),20];
			_wp setWaypointType "CYCLE";
			_wp setWaypointBehaviour "SAFE";
			_wp setWaypointSpeed "LIMITED";
		_group = [(getpos _veh),_side,([_unitTypes,5,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		{_x assignAsCargo _veh; _x moveInCargo _veh;} foreach units _group;
	};
};

// Fait spawn un poste d'observation au sommet d'un relief avec un groupe en FORTIFY dessus
if (random 100 < 75) then {
	_mark = "3";
	_markPos = markerpos _mark;
	_markSize = (getmarkerSize _mark) select 0;
	_upPos = -1;
	_pos = [0,0,-10];
	for "_x" from ((_markPos select 0)- (_markSize /1.6)) to ((_markPos select 0)+ (_markSize /1.6)) step (_markSize / 100) do {
		for "_y" from ((_markPos select 1)- (_markSize /1.6)) to ((_markPos select 1)+ (_markSize /1.6)) step (_markSize / 100) do {
			_upPos = getTerrainHeightASL [_x,_y];
			if ((_pos select 2) < _upPos) then {
				_Pos = [_x,_y,_upPos];
			};
		};
	};

	_veh = "Land_Cargo_Patrol_V2_F" CreateVehicle [_pos select 0, _pos select 1,-3];
	_veh setdir random 360;
	"4" setmarkerpos _pos;
	_group = [(getpos _veh),_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	(leader _group) setPosATL (_veh buildingPos 1);
	_group setVariable ["GAIA_ZONE_INTEND",["4","FORTIFY"],false];
};

//hélico TODO : changer la fonction, besoin d'une classe pilote
if (CC_p_menace_air == 1) then {
	for "_i" from 1 to 2 do {
		if (((count _veharray_air) != 0) AND (random 100 < 50)) then {
			_mark = "2";
			_markEx = "1";
			_type = selectRandom _veharray_air;
			_pos = [_mark,0,_markEx,[300,_type]] call SHK_pos;
			_veh = [_pos,(random 360),_type,_side] call BIS_fnc_spawnVehicle;
			_group = _veh #2;
			_group setVariable ["GAIA_ZONE_INTEND",["3","MOVE"],false];
		};
	};
};

//Fait spawn des binomes dans les batiments de la grande zone et les assigne en FORTIFY à cette zone
private _houselist = [];
private _houseOutlist = [];
{
	_buildingPos = _x buildingPos -1;
	if ((count _buildingPos) > 0) then {
		_houselist = _houselist + [_x];
	}
} forEach (nearestObjects [(markerPos "3"), ["House","Building"], 1200]);
{
	if (random 100 < 3.5) then {
		_houseOutlist = _houseOutlist + [_x];
		_pos = getpos _x;
		_group = [_pos,_side,([_unitTypes,2] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		_mark = createMarker [format["BPos%1",_x],_pos];
			_mark setmarkerColor "colorPink";
			_mark setMarkerShape "ELLIPSE";
			_mark setMarkerSize [40,40];
			_mark setMarkerAlpha 0;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"FORTIFY"],false];
		if ((!chefIA_create) AND (random 100 < 20) AND !(["1",_pos] call BIS_fnc_inTrigger)) then {
			private _group_chef = [_pos,_side,[_tl]] call GDC_fnc_lucySpawnGroupInf;
			chefIA = (units _group_chef) #0;
			[chefIA] joinSilent _group;
			chefIA allowDamage false;
			[chefIA,["<t color='#ff0000'>Confirmer l'élimination</t>","chefIA_killed = true; publicVariable 'chefIA_killed';(_this select 0) removeAction (_this select 2);",0,1.5,true,true,"","(!alive chefIA) AND ((_target distance _this) < 3)"]] remoteExec ["addaction", 0];
			_mark = createMarker ["Chefmarker",_pos];
			_mark setMarkerType "HD_dot";
			_mark setMarkerColor "colorRed";
			publicVariable "chefIA";
			chefIA_create = true;
			publicVariable "chefIA_create";
		};
		sleep 0.5;
	};
} foreach _houselist;

// Fait spawn des civils dans des batiments de la grande zone et les fait se balader.
_houselist = _houselist - _houseOutlist;
{
	if (random 100 < 3.5) then {
		_pos = getpos _x;
		_type =  switch (CPC_WorldType) do {
			case "vanilla": {["CUP_C_C_Citizen_02","CUP_C_C_Citizen_01","CUP_C_C_Citizen_04","CUP_C_C_Citizen_03""CUP_C_C_Functionary_01","CUP_C_C_Functionary_02","CUP_C_C_Profiteer_02","CUP_C_C_Profiteer_03","CUP_C_C_Profiteer_01","CUP_C_C_Profiteer_04","CUP_C_C_Rocker_01","CUP_C_C_Rocker_03","CUP_C_C_Rocker_02","CUP_C_C_Rocker_04","CUP_C_C_Schoolteacher_01","CUP_C_C_Villager_01","CUP_C_C_Villager_04","CUP_C_C_Villager_02","CUP_C_C_Villager_03","CUP_C_C_Worker_03","CUP_C_C_Worker_04","CUP_C_C_Worker_02","CUP_C_C_Worker_01","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_beggar_F"]};
			case "desert": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro","C_man_p_beggar_F_asia","C_man_polo_1_F_asia","C_man_polo_2_F_asia","C_man_polo_3_F_asia","C_man_polo_4_F_asia","C_man_polo_5_F_asia","C_man_polo_6_F_asia"]};
			case "afrique": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro"]};
			case "jungle": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro"]};
			case "chern": {["CUP_C_C_Citizen_02","CUP_C_C_Citizen_01","CUP_C_C_Citizen_04","CUP_C_C_Citizen_03""CUP_C_C_Functionary_01","CUP_C_C_Functionary_02","CUP_C_C_Priest_01","CUP_C_C_Profiteer_02","CUP_C_C_Profiteer_03","CUP_C_C_Profiteer_01","CUP_C_C_Profiteer_04","CUP_C_C_Rocker_01","CUP_C_C_Rocker_03","CUP_C_C_Rocker_02","CUP_C_C_Rocker_04","CUP_C_C_Schoolteacher_01","CUP_C_C_Villager_01","CUP_C_C_Villager_04","CUP_C_C_Villager_02","CUP_C_C_Villager_03","CUP_C_C_Woodlander_01","CUP_C_C_Woodlander_02","CUP_C_C_Woodlander_03","CUP_C_C_Woodlander_04","CUP_C_C_Worker_03","CUP_C_C_Worker_04","CUP_C_C_Worker_02","CUP_C_C_Worker_01"]};
			case "fidji": {["C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan","C_man_sport_1_F_tanoan""C_man_sport_2_F_tanoan","C_man_sport_3_F_tanoan","C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan"]};
		};
		_group = [_pos,civilian,[(selectrandom _type),(selectrandom _type)]] call GDC_fnc_lucySpawnGroupInf;
		[_group,0] setWaypointType "DISMISS";
		sleep 0.5;
	};
} foreach _houselist;

// Fait spawn des carcasses dans la grande zone
private _wrecklist = ["Land_Wreck_BMP2_F","Land_Wreck_BRDM2_F","Land_Wreck_HMMWV_F","Land_Wreck_Skodovka_F","Land_Wreck_CarDismantled_F","Land_Wreck_Truck_F","Land_Wreck_Car2_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Hunter_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F","Land_Wreck_UAZ_F","Land_Wreck_Ural_F","Land_Wreck_Truck_dropside_F","Land_Wreck_Van_F","Land_Wreck_Slammer_F","Land_Wreck_Slammer_hull_F","Land_Wreck_T72_hull_F","hiluxWreck","datsun01Wreck","datsun02Wreck","SKODAWreck","Mi8Wreck","Mi8Wreck"];
_mark = "3";
_markEx = "1";
{
	if (random 100 < _x) then {
		_type = selectrandom _wrecklist;
		_pos = [_mark,0,_markEx,_type] call SHK_pos;
		_veh = _type createVehicle _pos;
		_veh setdir (random 360);
		_veh setVectorUp surfaceNormal position _veh;
		sleep 0.5;
	};
} foreach [80,70,60,50,40,30,10];

// réglage des skills
[(allUnits select {side _x == _side})] call STDR_fnc_setskill;

// chef IA
if (chefIA_create) then {removeHeadgear chefIA; chefIA addHeadgear "CUP_H_RUS_Beret_Spetsnaz"; chefIA allowDamage true;};

//event fin
[_unitTypes,_tl,_side] spawn {
	params ["_unitTypes","_tl","_side"];
	private ["_nbr","_mark","_markPos","_pos","_group"];
	waitUntil {("Succeeded" == (taskState task1))};

	_nbr = switch (CC_p_difficulty) do {
		case 0: {2};
		case 1: {3};
		case 2: {4};
		case 3: {5};
	};
	for "_n" from 1 to _nbr do {
		_mark = "2";
		_markPos = markerpos _mark;
		_pos = [[_markPos select 0,_markPos select 1,0],1400,random 360,0,[],100] call SHK_pos;
		_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		_group setVariable ["GAIA_ZONE_INTEND",[_mark,"NOFOLLOW"],false];
		sleep 0.5;
		[(units _group)] call STDR_fnc_setskill;
	};
};
hint "SPAWN END";

/* RANDOM EVENTS */

waitUntil {time > (2100 + (random 600))};

// Camion de renfort
if (CC_p_menace_veh_nbr > 0) then {
	_type = selectRandom _veharray_transport;
	_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,200],_type] call SHK_pos;
	_veh = [_pos,_side,_type,[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
	_group = _veh#0; _veh = _veh#1;
	_group = [_pos,_side,([_unitTypes,5,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	{_x assignAsCargo (_veh select 0); _x moveInCargo (_veh select 0);} foreach units _group;
	units _group join (_veh select 2);
	(_veh select 2) setVariable ["GAIA_ZONE_INTEND",["2", "MOVE"], false];
	[(units (_veh select 2))] call STDR_fnc_setskill;
};

// Camion de renfort
if ((random 100 < 50) AND (CC_p_menace_veh_nbr > 0)) then {
	sleep (600 + (random 300));
	_type = selectRandom _veharray_transport;
	_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,200],_type] call SHK_pos;
	_veh = [_pos,_side,_type,[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
	_group = _veh#0; _veh = _veh#1;
	_group = [_pos,_side,([_unitTypes,5,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	{_x assignAsCargo (_veh select 0); _x moveInCargo (_veh select 0);} foreach units _group;
	units _group join (_veh select 2);
	(_veh select 2) setVariable ["GAIA_ZONE_INTEND",["2", "MOVE"], false];
	[(units (_veh select 2))] call STDR_fnc_setskill;
};


/*
if (CC_p_menace_air == 1) then {
	if (((count _veharray_air) != 0) AND (random 100 < 35)) then {
		waitUntil {time > (6100+ (random 300))};
		_mark = "2";
		_markEx = "1";
		_type = selectRandom _veharray_air;
		_pos = [_mark,0,_markEx,[300,_type]] call SHK_pos;
		_veh = [_pos,(random 360),_type,_side] call BIS_fnc_spawnVehicle;
		_group = _veh #2;
		_veh setVariable ["GAIA_ZONE_INTEND",["3","MOVE"],false];
	};
};
*/