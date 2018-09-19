/*
 * The group will wait at its first waypoint until the given condition is reached. Then, he'll proceed the next waypoint to SAD
 * 
 * Parameters
 * 0 - GROUP
 * 1 - ARRAY of 2 positions (waypoints)
 * 2 - STRING of a global variable
 *
 * Optional parameters
 * 3 - ARRAY waypoint timeout for the first one (default = [0,0,0])
 * 4 - STRING Type of the last WP (default = "SAD")
 * 5 - ARRAY the group will search the area around the last WP [radius, number of waypoints]. if radius = 0 : no search. (default = [0,3])
 *
 * Return : nothing
*/
params ["_group","_wps","_condition",["_wait",[0,0,0]],["_wpType","SAD"],["_search",[0,3]]];
private ["_wp","_last"];

_last = _wps select ((count _wps) + 1);
_wps = _wps - [_last];

// WP d'attente
_wp = _group addWaypoint [(getpos leader _group), 0];
_wp setWaypointType "MOVE";
_wp setWaypointStatements [_condition,""];
_wp setWaypointTimeout _wait;

// WP de marche
{
	_wp = _group addWaypoint [(_wps select 0), 0];
	_wp setWaypointType "MOVE";
} forEach _wps;

// WP d'assaut
_wp = _group addWaypoint [_last, 0];
_wp setWaypointType _wpType;
_wp setWaypointSpeed "FULL";
_wp setWaypointBehaviour "COMBAT";

if ((_search select 0) > 0) then {
	for "_i" from 1 to (_search select 1) do {
		_wp = _group addWaypoint [_last, 0];
		_wp setWaypointType _wpType;
		_wp setWaypointPosition [_last,(_search select 0)];
	};
	_wp = _group addWaypoint [_last, 0];
	_wp setWaypointType _wpType;
};
