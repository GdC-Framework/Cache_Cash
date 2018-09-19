/*
 * The group will patrol the given waypoints
 * 
 * Parameters
 * 0 - GROUP
 * 1 - ARRAY of POS : waypoint list
 *
 * Optional parameters
 * 2 - STRING group behaviour (default = "SAFE")
 * 3 - STRING group speed (default = "LIMITED")
 * 4 - STRING waypoint type (default = "MOVE")
 * 5 - ARRAY waypoint timeout (default = [0,15,30])
 *
 * Return : nothing
*/
params ["_group","_wplist",["_behaviour","SAFE"],["_speed","LIMITED"],["_type","MOVE"],["_time",[0,15,30]]];
private ["_pos","_wp"];

_group setBehaviour _behaviour;
_group setSpeedMode _speed;
{
	_wp = _group addWaypoint [_x, 0];
	_wp setWaypointType _type;
	_wp setWaypointTimeout _time;
} forEach _wplist;
_wp = _group addWaypoint [(getpos (leader _group)), 0];
_wp setWaypointType "CYCLE";
_wp setWaypointTimeout _time;