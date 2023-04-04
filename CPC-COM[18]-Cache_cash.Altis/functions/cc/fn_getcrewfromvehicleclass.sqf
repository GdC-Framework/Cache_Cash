/*
	Author: Sparfell

	Description:
	get a crew array with correct number of crewman for a vehicle type

	Parameter(s):
		STRING : type of vehicle
		STRING : type of crew

	Returns:
	array [_crew,_crew,...]

	example:
	[_type,_crew] call STDR_fnc_getcrewfromvehicleclass;
*/
params ["_vehicle","_crewman"];
private _crew = [];
for "_i" from 1 to ([_vehicle, false] call BIS_fnc_crewCount) do {
	_crew = _crew + [_crewman];
};
_crew;