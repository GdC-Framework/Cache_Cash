/*
 * Create a static sentry unit at the given location
 * 
 * Parameters
 * 0 - ARRAY positionASL [x,y,z,dir]
 * 1 - SIDE
 * 2 - STRING unit classname
 * 3 (optional) - STRING unit position ("UP","MIDDLE","DOWN") (default="AUTO")
 * 4 (optional) - NUMBER unit skill (default=0.5)
 *
 * Return : the new group created
_group = [_pos,_side,_type] call STDR_fnc_spawnStaticUnit;
*/
params ["_pos","_side","_type",["_unitpos","AUTO"],["_skill",0.5]];
private ["_group"];

_group = createGroup _side;
_type createUnit [[0,0,0],_group];
_veh = (units _group) select 0;
_veh setPosASL [_pos select 0,_pos select 1,_pos select 2];
_veh setDir (_pos select 3);
_veh setFormDir (_pos select 3);
_veh setUnitPos _unitpos;
_veh setSkill _skill;


_group;