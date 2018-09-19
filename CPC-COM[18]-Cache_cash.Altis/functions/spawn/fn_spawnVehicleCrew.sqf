/*
 * Create a crew for a given vehicle
 * 
 * Parameters
 * 0 - OBJECT vehicle that need a crew
 * 1 - SIDE
 * 2 - ARRAY of STRING crew classnames
 * 3 (optionnal) - NUMBER skill
 *
 * Return : the new group created
*/

params ["_veh","_side","_crew",["_skill",0.5]];
private ["_group","_u"];

_group = createGroup _side;
{
	_u = _group createUnit [_x,[0,0,0],[],0,"NONE"];
	_u setSkill _skill;
	[_u,_veh] remoteExecCall ["moveinAny",_veh];
} forEach _crew;
_group setFormDir (getdir _veh);

_group;