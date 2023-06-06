/*
	Author: Sparfell

	Description:
	function that handle the group spawn HICOM

	Parameter(s):
		POSITION : spawn position
		STRING : type of group
		STRING : group ID
		NUMBER : direction

	Returns:
	nothing
*/


params ["_pos","_type","_id","_dir"];
private ["_group","_objects","_cs"];
_group = grpNull;
_objects = [];

if (_type in ["b_inf","b_motor_inf","b_unknown","b_air"]) then { // Infanterie et transports 
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
			_cs = "Foxtrot";
		};
		case "b_motor_inf": {
			private _class = getText (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> "transport");
			private _veh = [_pos,blufor,_class,["B_Soldier_F"],_dir,["NONE",0,0]] call GDC_fnc_lucySpawnVehicle;
			_group = _veh #0;
			private _veh = _veh #1;
			{
				_x disableAI "AUTOCOMBAT";_x disableAI "AUTOTARGET"; _x disableAI "SUPPRESSION";
			} forEach (units _group);
			_objects = (units _group) + [_veh];
			_cs = "Victor";
		};
		case "b_unknown": {
			private _class = getText (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> "transport");
			private _veh = _class createVehicle _pos;
			_veh setdir _dir;
			_objects = [_veh];
			_cs = "Victor";
		};
		case "b_air": {
			private _class = getText (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> "helico");
			private _VehicleCrew = [_class,"B_Helipilot_F"] call STDR_fnc_getcrewfromvehicleclass;
			private _flyparam = if (surfaceIsWater _pos) then {["FLY",30,0]} else {["NONE",0,0]};
			private _veh = [_pos,blufor,_class,_VehicleCrew,_dir,_flyparam] call GDC_fnc_lucySpawnVehicle;
			_group = _veh #0;
			private _veh = _veh #1;
			{
				_x disableAI "AUTOCOMBAT";_x disableAI "AUTOTARGET"; _x disableAI "SUPPRESSION";
			} forEach (units _group);
			_objects = (units _group) + [_veh];
			_cs = "Hotel";
		};
		default {hint "error"};
	};
} else { // techniclas, blindés, AA, helicos
	private _crew = "B_Soldier_F";
	private _flyparam = ["NONE",0,0];
	_cs = "Victor";
	if ((_type isKindOf "tank") OR (_type isKindOf "Wheeled_APC_F")) then {
		_crew = "B_Crew_F";
		_cs = "Romeo";
	};
	if (_type isKindOf "Air") then {
		_crew = "B_Helipilot_F";
		if (surfaceIsWater _pos) then {_flyparam = ["FLY",30,0];};
		_cs = "Hotel";
	};
	private _VehicleCrew = [_type,_crew] call STDR_fnc_getcrewfromvehicleclass;
	private _veh = [_pos,blufor,_type,_VehicleCrew,_dir,_flyparam] call GDC_fnc_lucySpawnVehicle;
	_group = _veh #0;
	private _veh = _veh #1;
	_objects = (units _group) + [_veh];
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
if (_id == "") then {
	switch (_cs) do {
		case "Foxtrot": {_id = format ["%1 %2",_cs,cc_hicom_cs_foxtrot];cc_hicom_cs_foxtrot = cc_hicom_cs_foxtrot+1; publicVariable "cc_hicom_cs_foxtrot";};
		case "Victor": {_id = format ["%1 %2",_cs,cc_hicom_cs_victor];cc_hicom_cs_victor = cc_hicom_cs_victor+1; publicVariable "cc_hicom_cs_victor";};
		case "Romeo": {_id = format ["%1 %2",_cs,cc_hicom_cs_romeo];cc_hicom_cs_romeo = cc_hicom_cs_romeo+1; publicVariable "cc_hicom_cs_romeo";};
		case "Hotel": {_id = format ["%1 %2",_cs,cc_hicom_cs_hotel];cc_hicom_cs_hotel = cc_hicom_cs_hotel+1; publicVariable "cc_hicom_cs_hotel";};
	};
};
_group setGroupIdGlobal [_id];

//ajout au Zeus
[cpc_hicom_logic_1,_objects] remoteExec ["synchronizeObjectsAdd"];
{
	_x addCuratorEditableObjects [_objects,false];
} forEach gdc_zeushicommodules;