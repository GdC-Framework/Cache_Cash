/*
	Author: Sparfell

	Description:
	function that handle the group spawn HICOM

	Parameter(s):
		POSITION : spawn position
		STRING : type of group
		STRING : group ID

	Returns:
	nothing
*/


params ["_pos","_type","_id"];
private ["_group","_objects"];
_group = grpNull;
_objects = [];

switch (_type) do {
	case "b_inf": {
		//spawn du group
		_group = [
			_pos,
			blufor,
			["B_Soldier_TL_F","B_soldier_AR_F","B_soldier_AT_F","B_soldier_M_F","B_HeavyGunner_F","B_soldier_LAT_F","B_soldier_AAR_F","B_Soldier_GL_F"],
			0.7
		] call GDC_fnc_lucySpawnGroupInf;
		_objects = (units _group);
	};
	case "b_motor_inf": {
		private _class = getText (missionConfigFile >> "CC_hicom" >> ("cc_hicom_" + CC_loadout) >> "transport");
		private _veh = [_pos,blufor,_class,["B_Soldier_F"],0,["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh #0;
		private _veh = _veh #1;
		_objects = (units _group) + [_veh];
	};
	case "b_unknown": {
		private _class = getText (missionConfigFile >> "CC_hicom" >> ("cc_hicom_" + CC_loadout) >> "transport");
		private _veh = _class createVehicle _pos;
		_objects = [_veh];
	};
	case "b_air": {
		private _class = getText (missionConfigFile >> "CC_hicom" >> ("cc_hicom_" + CC_loadout) >> "helico");
		private _veh = [_pos,blufor,_class,["B_Helipilot_F","B_Helipilot_F"],0,["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
		_group = _veh #0;
		private _veh = _veh #1;
		_objects = (units _group) + [_veh];
	};
	default {hint "error"};
};

//loadouts
{
	call compile preprocessFileLineNumbers ("loadout\loadout_" + CC_loadout + ".sqf");
	private _loadout = switch (typeOf _x) do {
		case "B_Soldier_TL_F": {"cc_tl"};
		case "B_soldier_AR_F": {"cc_ar"};
		case "B_soldier_AT_F": {"cc_at"};
		case "B_soldier_M_F": {"cc_m"};
		case "B_soldier_LAT_F": {"cc_lat"};
		case "B_HeavyGunner_F": {"cc_mg"};
		case "B_soldier_AAR_F": {"cc_amg"};
		case "B_Soldier_GL_F": {"cc_gl"};
		case "B_Helipilot_F": {"cc_pilot"};
		default {"cc_r"};
	};
	_x setVariable ["loadout", _loadout];
	[_x] call hard_setLoadout;
} forEach (units _group);

//group id
_group setGroupIdGlobal [_id];

//ajout au Zeus
cpc_hicom_logic_1 synchronizeObjectsAdd _objects;
{
	_x addCuratorEditableObjects [_objects,false];
} forEach gdc_zeushicommodules;