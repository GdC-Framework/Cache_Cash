/*
	Script d'insertion terrestre aléatoire
*/

if (didJIP) exitwith {};

private ["_pos","_unitArray"];

if (isServer) then {
	_pos = (markerpos "Mark_Cible") getpos [1750,(random 360)];
	_pos = [_pos,0,200,0,0,0.4,0,[],_pos] call BIS_fnc_findSafePos;
	"Mark_inser" setmarkerpos _pos;
};
if (!isMultiplayer) then {
	_unitArray = switchableUnits;
} else {
	_unitArray = PlayableUnits;
};

waitUntil {time > 0};

if (hasInterface) then {
	player setpos [(markerpos "mark_inser" select 0) + (random 30) -15,(markerpos "mark_inser" select 1)+ (random 30) -15,1.5];
};

if (isServer) then {
	{
		if !(isPlayer _x) then {
			_x setpos [(markerpos "mark_inser" select 0) + (random 30) -15,(markerpos "mark_inser" select 1)+ (random 30) -15,1.5];
		};
	} foreach _unitArray;
};