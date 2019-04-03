/*
	création d'un objectif de cache cash traditionnelle (cache d'armes à détruire)
*/
private ["_pos","_center"];

waitUntil {!isnil "cc_MarkersCreated"};

// Trouver une position
if ((count cc_mkz_whitelist) > 0) then {
	_pos = [cc_mkz_whitelist,(["water"] + cc_mkz_blacklist),{(count (nearestLocations [_this, ["NameCity","NameVillage","NameCityCapital","NameLocal"],400]) < 1)}] call BIS_fnc_randomPos;
} else {
	_pos = [nil,(["water"] + cc_mkz_blacklist),{(count (nearestLocations [_this, ["NameCity","NameVillage","NameCityCapital","NameLocal"],400]) < 1)}] call BIS_fnc_randomPos;
};

// S'assurer que la position est sûre et pas sur une route :
_center = [_pos,0,150,0,0,0.25,0,[],_pos] call BIS_fnc_findSafePos;
while {isOnRoad _center} do {
	_center = [_pos,0,150,0,0,0.25,0,[],_pos] call BIS_fnc_findSafePos;
};
Random_Position = [(_center #0),(_center #1),0];
publicVariable "Random_Position";

//creation de la caisse objectif et gestion des marqueurs
{ _x hideObjectGlobal true;} forEach (nearestObjects [_center,[],30]);
_Cargo = "Land_Cargo20_military_green_F" createVehicle [0,0,0];
_Cargo setpos [(_center select 0) + 2,_center select 1,1];
cible setpos [(_center select 0) + 2,_center select 1,1.5];
"Mark_Cible" setmarkerpos [(_center select 0)+(random 300)-150,(_center select 1)+(random 300)-150,0];
"Mark_Cible" setmarkerAlpha 0.6;
_pos = markerpos "Mark_Cible";
"Mark_Cible_1" setmarkerpos _pos;
"1" setmarkerpos getpos cible;
"2" setmarkerpos markerpos "Mark_Cible";
"3" setmarkerpos markerpos "Mark_Cible_1";

cc_objOK = true;
publicVariable "cc_objOK";

//creation du camp
if (random 100 < 70) then {
	[] execVM "scripts\create_base.sqf";
} else {
	["1"] execVM "scripts\create_ville.sqf";
};