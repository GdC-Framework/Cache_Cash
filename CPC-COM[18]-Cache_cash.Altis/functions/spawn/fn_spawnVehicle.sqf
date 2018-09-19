/*
 * Create a vehicle with crew at given position
 * 
 * Parameters
 * 0 - POSITION spawn position
 * 1 - SIDE
 * 2 - STRING vehicle classnames
 * 3 - ARRAY of STRING crew classnames
 * 3 (optionnal) - NUMBER direction
 * 4 (optionnal) - NUMBER skill
 * 4 (optionnal) - STRING special ("NONE", "FLY", "FORM", "CAN_COLLIDE")
 *
 * Return : the new group created
*/
params ["_pos","_side","_vehtype","_crew",["_dir",0],["_skill",0.5],["_special","NONE"]];
private ["_veh","_group"];

_veh = createVehicle [_vehtype,_pos,[],0,_special];

_group = [_veh,_side,_crew,_skill] call STDR_fnc_spawnVehicleCrew;

_group;