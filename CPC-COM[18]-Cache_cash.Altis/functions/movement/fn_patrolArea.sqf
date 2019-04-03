/*
 * The group will patrol into the given area
 * 
 * Parameters
 * 0 - GROUP
 * 1 - MARKER
 *
 * Optional parameters
 * 2 - STRING group behaviour (default = "SAFE")
 * 3 - STRING group speed (default = "LIMITED")
 * 4 - STRING waypoint type (default = "MOVE")
 * 5 - NUMBER number of waypoints (default = 4)
 *
 * Return : nothing
[_group,"mkz_tower","SAFE","LIMITED","MOVE",4] call STDR_fnc_patrolArea;
*/
params ["_group","_marker",["_behaviour","SAFE"],["_speed","LIMITED"],["_type","MOVE"],["_nbr",4]];
private ["_pos","_wp"];

if (_nbr < 3) then {_nbr = 3};

_group setBehaviour _behaviour;
_group setSpeedMode _speed;
for "_i" from 1 to _nbr do {
	_pos = _marker call BIS_fnc_randomPosTrigger;
	while {surfaceIsWater _pos} do {_pos = _marker call BIS_fnc_randomPosTrigger;};
	_wp = _group addWaypoint [_pos, 0];
	_wp setWaypointType _type;
	_wp setWaypointCompletionRadius 5;
	_wp setWaypointTimeout [0,15,30];
};
_pos = _marker call BIS_fnc_randomPosTrigger;
while {surfaceIsWater _pos} do {_pos = _marker call BIS_fnc_randomPosTrigger;};
_wp = _group addWaypoint [_pos, 0];
_wp setWaypointType "CYCLE";