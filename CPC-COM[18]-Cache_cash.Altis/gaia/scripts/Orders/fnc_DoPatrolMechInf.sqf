//==================================================================fnc_DoInfPatrol===============================================================================================
// Generate some stuff to do for our awesome patrol
// Example: [_group, _zone] call gaia_fnc_DoInfPatrol
// spirit 14-1-2014
//===========================================================================================================================================================================
private ["_group", "_NrOfBuildingWp", "_zone", "_pos"];

_group 			= _this select 0;
_zone				=	_this select 1;



[_group] call gaia_fnc_RemoveWayPoints;


//Go somewhere
_pos= [_group, _zone, "VEH_HILLS_ROAD_FLAT"] call gaia_fnc_CreateWP;



if (count (waypoints _group) != (currentWaypoint _group)) then
	{
			//_dummy 	=  [_group,(position leader _group), "GETIN NEAREST"] call gaia_fnc_addWaypoint;
			_dummy 	=  [_group, _pos, "MOVE"] call gaia_fnc_addWaypoint;

	};

//Our result is waypoints
((count (waypoints _group)) - currentWaypoint _group)