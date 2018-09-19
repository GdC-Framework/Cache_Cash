/*
 * Create a static sentry unit at the given location
 * 
 * Parameters
 * 0 - ARRAY positionASL [x,y,z,dir]
 * 1 - SIDE
 * 2 - STRING unit classname
 *
 * Return : the new group created
*/
params ["_pos","_side","_type"];
private ["_group"];

_group = createGroup _side;
_veh = _group createUnit [_type,[0,0,0],[],0,"NONE"];
_veh setPosASL [_pos select 0,_pos select 1,_pos select 2];
_veh setDir (_pos select 3);
_veh setFormDir (_pos select 3);

_group;