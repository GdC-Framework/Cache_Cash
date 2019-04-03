/*
 * Create a crew for a given vehicle
 * 
 * Parameters
 * 0 - OBJECT vehicle that need a crew
 * 1 - SIDE
 * 2 - ARRAY of STRING crew classnames
 * 3 (optionnal) - NUMBER skill (default=0.5)
 *
 * Return : the new group created
*/

params ["_veh","_side","_crew",["_skill",0.5]];
private ["_group","_u"];

_group = createGroup _side;
{
	_x createUnit [[0,0,0],_group,"",_skill];
	_u = (units _group) select _foreachindex;
	[_u,_veh] remoteExecCall ["moveinAny",_veh];
} forEach _crew;
_group selectLeader (effectiveCommander _veh);
_group setFormDir (getdir _veh);

_group;