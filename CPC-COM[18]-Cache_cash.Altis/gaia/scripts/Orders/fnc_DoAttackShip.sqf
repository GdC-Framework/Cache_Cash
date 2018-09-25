//==================================================================fnc_DoInfPatrol===============================================================================================
// Generate some stuff to do for our attack
// Example: [_group, _targetpos] call gaia_fnc_DoAttackInf
// spirit 20-1-2014
//===========================================================================================================================================================================
private ["_group", "_TargetPos", "_pos", "_Degree", "_NrOfBuildingWp"];

_group 			= _this select 0;
_TargetPos	=	_this select 1;



[_group] call gaia_fnc_RemoveWayPoints;

_dummy	=[_group, _TargetPos, "SAD"] call gaia_fnc_AddAttackWaypoint;

((count (waypoints _group)) - currentWaypoint _group)



