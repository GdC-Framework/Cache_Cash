/*

*/
private [
	"_nbr","_mark","_markEx","_pos","_dir","_group","_veh","_array","_type","_wp","_i","_markPos","_upPos",
	"_side","_unitType","_vehTypes","_VehicleCrew",
	"_r","_tl","_gl","_lat","_at","_mg","_m","_aa","_crew","_pilot","_hmg","_plane",
	"_veharray_light","_veharray_medium","_veharray_heavy","_veharray_transport","_veharray_heli","_veharray_air","_veharray_aa"
];

waitUntil {!isnil "cc_MarkersCreated"};

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
_pilot = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "pilot");
_hmg = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "hmg");
_plane = getText (missionConfigFile >> "CC_ennemy" >> CC_faction_ia >> cc_IAcamo >> "plane");
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

waituntil {time > 10};

/* SPAWN */

// Fait spawn des groupes (jusqu'à 4) qui patrouillent dans la petite zone
_nbr = CC_p_difficulty + 1;
_mark = "2";
_markEx = "1";
for "_n" from 1 to _nbr do {
	_pos = [_mark,0,_markEx,100] call SHK_pos;
	_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
	[_group,_mark,["MOVE","LIMITED","SAFE","YELLOW","WEDGE"]] call GDC_fnc_lucyGroupRandomPatrol;
};

// Fait spawn des technicals (jusqu'à 4) qui patrouillent dans la petite zone 
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
		[_group,_mark,["MOVE","LIMITED","SAFE","YELLOW","WEDGE"]] call GDC_fnc_lucyGroupRandomPatrol;
		_group setVariable ["PLUTO_ORDER","QRF"];
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
	[_group,(MarkerPos _mark),100,2,0.2,0] call CBA_fnc_taskDefend;
};

// Fait spawn des groupes (minimum 4) qui patrouillent dans la grande zone
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
		[_group,_mark,["MOVE","LIMITED","SAFE","YELLOW","WEDGE"]] call GDC_fnc_lucyGroupRandomPatrol;
		_group setVariable ["PLUTO_ORDER","QRF"];
	} foreach [1,2,3,4];
};
// Fait spawn des véhicules "lourds" (entre 1 et 8) qui patrouillent dans la grande zone
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
		private _roads = _pos nearroads 500;
		_roads = _roads select {_x inArea _mark};
		if (count _roads > 0) then {
			_pos = getpos (selectrandom _roads);
		};
		if ((_type isKindOf "tank") OR (_type isKindOf "Wheeled_APC_F")) then {
			_VehicleCrew = [_crew];
			{
				_VehicleCrew = _VehicleCrew + [_crew];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
		} else {
			_VehicleCrew = 1 + (count ([_type,false] call BIS_fnc_allTurrets));
			_VehicleCrew = ([_unitTypes,_VehicleCrew] call GDC_fnc_creategroupCompo);
		};
		_veh = [_pos,_side,_type,_VehicleCrew,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh#0;
		[_group,(markerPos _mark),1200,["MOVE","LIMITED","SAFE","YELLOW","WEDGE"]] call STDR_fnc_lucyGroupRandomPatrolOnRoad;
		_group setVariable ["PLUTO_ORDER","QRF"];
	};
};

// Fait spawn des véhicules AA qui ne sont pas affectés à PLUTO :
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
			_VehicleCrew = [_crew];
			{
				_VehicleCrew = _VehicleCrew + [_crew];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
		} else {
			_VehicleCrew = 1 + (count ([_type,false] call BIS_fnc_allTurrets));
			_VehicleCrew = ([_unitTypes,_VehicleCrew] call GDC_fnc_creategroupCompo);
		};
		_veh = [_pos,_side,_type,_VehicleCrew,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group setVariable ["PLUTO_ORDER","IGNORE"];
	};
};

// Fait spawn un mortier qui bombarde la grande zone
if (random 100 < 22) then {
	_dir = [[getMarkerPos "Mark_Inser" select 0,getMarkerPos "Mark_Inser" select 1,0],[getMarkerPos "1" select 0,getMarkerPos "1" select 1,0]] call BIS_fnc_dirTo;
	_pos = [[getmarkerpos "1" select 0, getmarkerpos "1" select 1,0],2000,(_dir + ((random 20)-10)),0] call SHK_pos;
	_veh = [_pos,_side,"B_G_Mortar_01_F",[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
	_group = _veh#0; _veh = _veh#1;
	_group setVariable ["PLUTO_ORDER","ARTY"];
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
		_group = [_pos,_side,([_unitTypes,[2,3,5],_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
		[_group,_pos,50,2,0.2,0] call CBA_fnc_taskDefend;
	};
} foreach [40,20,5,2];

// Fait spawn un véhicule de transport de troupes sur une route entre 1000m et 1500m du camp et le fait patrouiller.
if (CC_p_menace_veh_nbr > 0) then {
	if (random 100 < 75) then {
		_mark = "3";
		_type = selectRandom _veharray_transport;
		_pos = [getMarkerPos "1",[1000,1500],random 360,0,[1,500],_type] call SHK_pos;
		_veh = [_pos,_side,_type,([_unitTypes,5,_tl] call GDC_fnc_creategroupCompo),(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh#0; _veh = _veh#1;
		[_group,(markerPos _mark),1200,["MOVE","NORMAL","SAFE","YELLOW","WEDGE"]] call STDR_fnc_lucyGroupRandomPatrolOnRoad;
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
	[_group,_pos,50,1,0.1,0] call CBA_fnc_taskDefend;
};

//hélico qui patrouille dans la grande zone
if (CC_p_menace_air == 1) then {
	for "_i" from 1 to 2 do {
		if (((count _veharray_air) != 0) AND (random 100 < 50)) then {
			_mark = "2";
			_markEx = "1";
			_type = selectRandom _veharray_air;
			_group = [_pilot];
			{
				_group = _group + [_pilot];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_pos = [_mark,0,_markEx,[300,_type]] call SHK_pos;
			//_veh = [_pos,(random 360),_type,_side] call BIS_fnc_spawnVehicle;
			_veh = [_pos,_side,_type,_group,(random 360),["FLY",30,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh #0;
			[_group,"3",["MOVE","LIMITED","SAFE","YELLOW","WEDGE"]] call GDC_fnc_lucyGroupRandomPatrol;
			_group setVariable ["PLUTO_ORDER","QRF"];
			[(units _group)] call STDR_fnc_setskill;
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
		[_group,_pos,50,3,0.2,0] call CBA_fnc_taskDefend;
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
	};
} foreach _houselist;

// Fait spawn des civils dans des batiments de la grande zone et les fait se balader.
_houselist = _houselist - _houseOutlist;
{
	if (random 100 < 3.5) then {
		_pos = getpos _x;
		_type =  switch (CPC_WorldType) do {
			case "vanilla": {["CUP_C_C_Citizen_02","CUP_C_C_Citizen_01","CUP_C_C_Citizen_04","CUP_C_C_Citizen_03","CUP_C_C_Functionary_01","CUP_C_C_Functionary_02","CUP_C_C_Profiteer_02","CUP_C_C_Profiteer_03","CUP_C_C_Profiteer_01","CUP_C_C_Profiteer_04","CUP_C_C_Rocker_01","CUP_C_C_Rocker_03","CUP_C_C_Rocker_02","CUP_C_C_Rocker_04","CUP_C_C_Schoolteacher_01","CUP_C_C_Villager_01","CUP_C_C_Villager_04","CUP_C_C_Villager_02","CUP_C_C_Villager_03","CUP_C_C_Worker_03","CUP_C_C_Worker_04","CUP_C_C_Worker_02","CUP_C_C_Worker_01","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_beggar_F"]};
			case "desert": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro","C_man_p_beggar_F_asia","C_man_polo_1_F_asia","C_man_polo_2_F_asia","C_man_polo_3_F_asia","C_man_polo_4_F_asia","C_man_polo_5_F_asia","C_man_polo_6_F_asia"]};
			case "afrique": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro"]};
			case "jungle": {["C_man_p_beggar_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro"]};
			case "chern": {["CUP_C_C_Worker_01","CUP_C_C_Worker_02","CUP_C_C_Worker_04","CUP_C_C_Worker_03","CUP_C_C_Woodlander_04","CUP_C_C_Woodlander_03","CUP_C_C_Woodlander_02","CUP_C_C_Woodlander_01","CUP_C_C_Villager_03","CUP_C_C_Villager_02","CUP_C_C_Villager_04","CUP_C_C_Villager_01","CUP_C_C_Schoolteacher_01","CUP_C_C_Rocker_04","CUP_C_C_Rocker_02","CUP_C_C_Rocker_03","CUP_C_C_Rocker_01","CUP_C_C_Racketeer_04","CUP_C_C_Racketeer_03","CUP_C_C_Racketeer_02","CUP_C_C_Racketeer_01","CUP_C_C_Profiteer_04","CUP_C_C_Profiteer_01","CUP_C_C_Profiteer_03","CUP_C_C_Profiteer_02","CUP_C_C_Priest_01","CUP_C_C_Worker_05","CUP_C_C_Functionary_jacket_02","CUP_C_C_Functionary_jacket_01","CUP_C_C_Functionary_jacket_03","CUP_C_C_Citizen_03","CUP_C_C_Citizen_04","CUP_C_C_Citizen_02","CUP_C_C_Assistant_01","CUP_C_C_Functionary_01","CUP_C_C_Functionary_02","CUP_C_C_Functionary_03"]};
			case "fidji": {["C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan","C_man_sport_1_F_tanoan""C_man_sport_2_F_tanoan","C_man_sport_3_F_tanoan","C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan"]};
		};
		_group = [_pos,civilian,[(selectrandom _type),(selectrandom _type)]] call GDC_fnc_lucySpawnGroupInf;
		[_group,0] setWaypointType "DISMISS";
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
	};
} foreach [100,90,80,70,60,50,40,30,10];

// réglage des skills
[(allUnits select {side _x == _side})] call STDR_fnc_setskill;

// chef IA
if (chefIA_create) then {removeHeadgear chefIA; chefIA addHeadgear "CUP_H_RUS_Beret_Spetsnaz"; chefIA allowDamage true;};

hint "FIN DU SPAWN";
private _total_ennemis = count (allunits select {side _x == _side});

// PLUTO
gdc_plutoDebug = false;
[
	[_side],				//0 camp
	[1000,2000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,				//3 QRFtimeout
	[1000,2000,6000],	//4 QRFrange [man,land,air]
	[20,30,60],			//5 QRFdelay [min,mid,max]
	240,				//6 ARTYtimeout
	[20,30,60],			//7 ARTYdelay [min,mid,max]
	[1,2,4],			//8 ARTYrounds [min,mid,max]
	[0,40,100]			//9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

/* RENFORTS */

// trigger d'alarme qui se déclenche quand indep détecte blufor à - de 500m de l'objectif
private _trg = createTrigger ["EmptyDetector",(markerpos "2")];
_trg setTriggerArea [500, 500, 0, false, 100];
_trg setTriggerActivation ["WEST", "GUER D", false];
_trg setTriggerStatements ["this", "cpc_alarme = true; publicVariable 'cpc_alarme';", "hint 'no civilian near'"];

// Types de renforts en fonction de la difficulté et de la faction ennemie
private _types_renforts = [];
if (CC_p_menace_veh_nbr > 0) then {
	_types_renforts = _types_renforts + [["camion",0.8],["technical",0.5]];
	if (CC_p_menace_veh_type > 0) then {
		_types_renforts = _types_renforts + [["blinde",0.5]];
	};
	if (CC_p_menace_veh_type > 1) then {
		_types_renforts = _types_renforts + [["tank",0.3]];
	};
	if ((count _veharray_heli) > 0) then {
		_types_renforts = _types_renforts + [["heliportes",0.3]];
	};
} else {
	_types_renforts = _types_renforts + [["infanterie",1]];
};
if (_plane != "") then {
	_types_renforts = _types_renforts + [["paras",0.3]];
};
if ((CC_p_menace_air > 0) && ((count _veharray_air) > 0)) then {
	_types_renforts = _types_renforts + [["air",0.3]];
};

waitUntil {sleep 1;cpc_alarme};

// boucle de déclenchement des renforts toutes les X minutes
while {true} do {
	waitUntil {(count (allunits select {side _x == _side})) < (_total_ennemis * 0.75)}; // attente de perte ennemies (25% de pertes)
	private _thisrenf = selectRandomWeighted (flatten _types_renforts);
	//_thisrenf = "infanterie";
	switch (_thisrenf) do {
		case "camion": {
			// Infanterie transportée par camions
			_type = selectRandom _veharray_transport;
			_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,500],_type] call SHK_pos;
			_veh = [_pos,_side,_type,[_r],(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh#0; _veh = _veh#1;
			_group setVariable ["PLUTO_ORDER","IGNORE"];
			_group = [_pos,_side,([_unitTypes,6,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
			_dir = (getMarkerPos "1") getdir _pos;
			_pos = [(getMarkerPos "1"),[250,500],[(_dir-45),(_dir+45)],0,[1,500],_type] call SHK_pos;
			[
				_veh,_group,
				[_pos],
				[],
				["NORMAL","CARELESS","GREEN"],"true",[0,0,0],"",false,0
			] call GDC_fnc_lucyTransportReinforcement;
			[
				_group,
				[(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"SAD",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];","2",0
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
		case "technical": {
			// technical
			_type = selectRandom _veharray_light;
			_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,500],_type] call SHK_pos;
			_group = [_r];
			{
				_group = _group + [_r];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_veh = [_pos,_side,_type,_group,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh#0; _veh = _veh#1;
			_group setVariable ["PLUTO_ORDER","IGNORE"];
			_dir = (getMarkerPos "1") getdir _pos;
			_pos = [(getMarkerPos "1"),[250,500],[(_dir-45),(_dir+45)],0,[1,500],_type] call SHK_pos;
			[
				_group,
				[_pos,(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"MOVE",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];",500,100
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
		case "blinde": {
			// blindé
			_type = selectRandom _veharray_medium;
			_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,500],_type] call SHK_pos;
			_group = [_crew];
			{
				_group = _group + [_crew];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_veh = [_pos,_side,_type,_group,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh#0; _veh = _veh#1;
			_group setVariable ["PLUTO_ORDER","IGNORE"];
			_dir = (getMarkerPos "1") getdir _pos;
			_pos = [(getMarkerPos "1"),[250,500],[(_dir-45),(_dir+45)],0,[1,500],_type] call SHK_pos;
			[
				_group,
				[_pos,(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"MOVE",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];",500,100
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
		case "tank": {
			// tank
			_type = selectRandom _veharray_heavy;
			_pos = [getMarkerPos "1",[1500,1800],random 360,0,[1,500],_type] call SHK_pos;
			_group = [_crew];
			{
				_group = _group + [_crew];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_veh = [_pos,_side,_type,_group,(random 360),["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh#0; _veh = _veh#1;
			_group setVariable ["PLUTO_ORDER","IGNORE"];
			_dir = (getMarkerPos "1") getdir _pos;
			_pos = [(getMarkerPos "1"),[250,500],[(_dir-45),(_dir+45)],0,[1,500],_type] call SHK_pos;
			[
				_group,
				[_pos,(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"MOVE",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];",500,100
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
		case "heliportes": {
			// Infanterie transportée par hélicoptère
			_type = selectRandom _veharray_heli;
			_group = [_pilot];
			{
				_group = _group + [_pilot];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_pos = (getMarkerPos "1") getPos [8000,random 360];
			_veh = [_pos,_side,_type,_group,(random 360),["FLY",30,20]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh#0; _veh = _veh#1;
			_group setVariable ["PLUTO_ORDER","IGNORE"];
			_group = [_pos,_side,([_unitTypes,6,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
			_pos = (getMarkerPos "1");
			_pos = [_pos, 300, 600, 10, 0, 0.25, 0, [], [_pos,_pos]] call BIS_fnc_findSafePos;
			if !(_pos isEqualTo (getMarkerPos "1")) then {
				"Land_HelipadEmpty_F" createVehicle _pos;
			};
			[
				_veh,_group,
				[_pos],
				[(getMarkerPos "1") getPos [8000,random 360]],
				["NORMAL","CARELESS","GREEN"],"true",[0,0,0],"",true,0
			] call GDC_fnc_lucyTransportReinforcement;
			[
				_group,
				[(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"SAD",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];","2",0
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
		case "paras": {
			// parachutistes
			_type = _plane;
			_pos = (getMarkerPos "1");
			private _posB = _pos getPos [(300 + (random 200)),(selectrandom [0,90,180,270])];
			_dir = _pos getdir _posB;
			private _posA = _posB getPos [8000,(_dir-90)];
			private _posC = _posB getPos [8000,(_dir+90)];
			_dir = _posB getdir _posA;
			_posB = _posB getPos [300,_dir];
			_group = [
				_posA,_posB,_posC,
				_side,[_type,_pilot,300],
				([_unitTypes,8,_tl] call GDC_fnc_creategroupCompo),
				"LIMITED"
			] call GDC_fnc_lucySpawnGroupInfParadrop;
			_group = _group #0;
			[
				_group,
				[(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"SAD",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];","2",0
			] call GDC_fnc_lucyReinforcement;
		};
		case "air": {
			// Hélicoptère ou avion de combat
			_type = selectRandom _veharray_air;
			_group = [_pilot];
			{
				_group = _group + [_pilot];
			} forEach ([_type,false] call BIS_fnc_allTurrets);
			_pos = (getMarkerPos "1") getPos [8000,random 360];
			if (_type isKindOf "plane") then {
				_veh = [_pos,_side,_type,_group,(random 360),["FLY",50,90]] call GDC_fnc_lucySpawnVehicle;
			} else {
				_veh = [_pos,_side,_type,_group,(random 360),["FLY",30,20]] call GDC_fnc_lucySpawnVehicle;
			};
			_group = _veh#0; _veh = _veh#1;
			[_group,"3",["MOVE","NORMAL","SAFE","YELLOW","WEDGE"]] call GDC_fnc_lucyGroupRandomPatrol;
			_group setVariable ["PLUTO_ORDER","QRF"];
			[(units _group)] call STDR_fnc_setskill;
		};
		case "infanterie";
		default {
			// Infanterie à pieds
			_pos = [getMarkerPos "1",[1200,1500],random 360,0,[0,200],_type] call SHK_pos;
			_group = [_pos,_side,([_unitTypes,6,_tl] call GDC_fnc_creategroupCompo)] call GDC_fnc_lucySpawnGroupInf;
			[
				_group,
				[(getMarkerPos "1")],
				"true",[0,0,0],
				["NORMAL","AWARE","YELLOW"],"NO CHANGE",
				"SAD",["NORMAL","AWARE","RED"],"NO CHANGE","(group this) setVariable ['PLUTO_ORDER','QRF'];","2",0
			] call GDC_fnc_lucyReinforcement;
			[(units _group)] call STDR_fnc_setskill;
		};
	};
	if (CC_p_debug) then {
		sleep 30;
	} else {
		switch (CC_p_difficulty) do { // délai entre chaque renfort selon la difficulté.
			case 0: {sleep (600 + (random 300));};
			case 1: {sleep (300 + (random 600));};
			case 2: {sleep (300 + (random 300));};
			case 3: {sleep (random 600);};
		};
	};	
};