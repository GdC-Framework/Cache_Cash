if (didJIP) exitwith {};

private ["_unitArray","_dir","_pos"];

// les joueurs peuvvent quand même choisir la position de départ
["Mark_inser",[],"SERGEANT",["Mark_cible"],1,30,4] call GDC_fnc_chooseSpawnPos;

waitUntil {time > 0};

if (isserver) then {
	cc_objet_halo = "Land_InfoStand_V1_F" createvehicle (markerpos "mark_inser");
	publicVariable "cc_objet_halo";
	// Flares autour de la zone :
	if (cc_night) then {
		_dir = random 360;
		_pos = (getpos cc_objet_halo) getpos [4,_dir];
		"ACE_G_Chemlight_HiWhite_Infinite" createvehicle _pos;
		_pos = (getpos cc_objet_halo) getpos [4,(_dir+90)];
		"ACE_G_Chemlight_HiWhite_Infinite" createvehicle _pos;
		_pos = (getpos cc_objet_halo) getpos [4,(_dir+180)];
		"ACE_G_Chemlight_HiWhite_Infinite" createvehicle _pos;
		_pos = (getpos cc_objet_halo) getpos [4,(_dir-90)];
		"ACE_G_Chemlight_HiWhite_Infinite" createvehicle _pos;
	};
};
waitUntil {!isnil "cc_objet_halo"};
[cc_objet_halo,"",true,true,false,"RHS_C130J"] call GDC_fnc_halo;


if (!isMultiplayer) then {
	_unitArray = switchableUnits;
} else {
	_unitArray = PlayableUnits;
};


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