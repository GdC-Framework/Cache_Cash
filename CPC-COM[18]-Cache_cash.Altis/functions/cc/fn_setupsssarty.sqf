/*
	Author: Sparfell

	Description:
	function that handle the spawn of SSS_arty

	Parameter(s):
		POSITION : spawn position
		STRING : type of group
		STRING : group ID

	Returns:
	nothing
*/


params ["_pos","_type","_id"];

private _crew = "B_Soldier_F";
if ((_type isKindOf "tank") OR (_type isKindOf "Wheeled_APC_F")) then {
	_crew = "B_crew_F";
};
private _VehicleCrew = [_type,_crew] call STDR_fnc_getcrewfromvehicleclass;
private _veh = [_pos,blufor,_type,_VehicleCrew,0,["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
private _group = _veh #0;
private _veh = _veh #1;
_id = format ["%1 - %2",_id,gettext (configFile >> "CfgVehicles" >> _type >> "Displayname")];
private _mk = createMarker [(format ["mk_arty_%1",_pos]),_pos];
_mk setMarkerType "b_art";
_mk setMarkerText _id;

//loadouts
{
	call compile preprocessFileLineNumbers ("loadout\loadout_" + CC_loadout + ".sqf");
	_x setVariable ["loadout", "cc_r"];
	[_x] call hard_setLoadout;
} forEach (units _group);

//SSS
[
	_veh,
	_id,
	[], // specific ammo
	-1,
	[0,60], //cooldown and additionnal cooldown per round fired
	10, //max rounds
	100, //coordination distance
	2,
	{},
	["ACRE_PRC148"],
	{true},
	{true}
] call SSS_support_fnc_addArtillery;