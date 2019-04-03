/*
 * Create a group at given position
 * 
 * Parameters
 * 0 - POSITION spawn position
 * 1 - SIDE
 * 2 - ARRAY of STRING classnames of units
 * 3 (optionnal) - NUMBER direction
 * 4 (optionnal) - NUMBER skill
 *
 * Return : the new group created
_group = [_pos,_side,_types] call STDR_fnc_spawnGroup;
*/
params ["_pos","_side","_units",["_dir",0],["_skill",0.5]];
private ["_group"];

_group = createGroup _side;
{
	_x createUnit [_pos,_group,"",_skill];
} forEach _units;
_group setFormDir _dir;

_group;