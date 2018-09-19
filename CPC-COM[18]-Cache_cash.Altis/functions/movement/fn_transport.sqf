/*
 * The group will wait at its first waypoint until the given condition is reached. Then, he'll proceed the next waypoint to SAD
 * 
 * Parameters
 * 0 - VEHICLE
 * 1 - GROUP
 * 1 - ARRAY of POSITIONs (waypoints)
 *
 * Optional parameters
 * 2 - STRING of a global variable
 * 3 - ARRAY waypoint timeout for the first one (default = [0,0,0])
 *
 * Return : nothing
*/
params ["_veh","_cargo","_wps",["_condition",true],["_wait",[0,0,0]]];
private ["_wp","_group"];

_group = group _veh;

{
	_x assignascargo _veh;
	_x moveInCargo _veh;
} forEach (units _cargo);

_group setBehaviour "CARELESS";
_group setSpeedMode "NORMAL";

// WP d'attente
_wp = _group addWaypoint [(getpos _veh), 0];
_wp setWaypointType "MOVE";
_wp setWaypointStatements [_condition,""];
_wp setWaypointTimeout _wait;

// WPs de mouvement
{
	_wp = _group addWaypoint [_x, 0];
	_wp setWaypointType "MOVE";
} forEach _wps;

// WP de débarquement
_wp = _group addWaypoint [(_wps select ((count _wps) - 1)), 0];
_wp setWaypointType "TR UNLOAD";
_wp setWaypointBehaviour "AWARE";
