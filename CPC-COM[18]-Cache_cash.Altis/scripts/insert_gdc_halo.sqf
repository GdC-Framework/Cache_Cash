if (didJIP) exitwith {};

private ["_unitArray"];

if (isserver) then {
	cc_objet_halo = "Land_InfoStand_V1_F" createvehicle (markerpos "mark_inser");
	publicVariable "cc_objet_halo";
};
waitUntil {!isnil "cc_objet_halo"};
[cc_objet_halo,"",true,true,false,"RHS_C130J"] call GDC_fnc_halo;

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