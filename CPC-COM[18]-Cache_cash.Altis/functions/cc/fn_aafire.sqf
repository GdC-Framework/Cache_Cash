/*
 * Faire tirer un AA dans le ciel
 *
 * Parameters
 * 0 - OBJECT - AA vehicle
 * 1 (optionnal) - ARRAY of numbers - Temps entre chaque tir [Min,Moy,Max] (default [0,20,60])
 * 2 (optionnal) - STRING - Marqueur dans lequel l'AA doit tirer (default ""). Si "" l'aa tire dans un cercle de 1000m autour de sa position.
*/
params ["_veh",["_freq",[0,20,60]],["_mk",""]];
private ["_pos"];

waitUntil {time > 0 };

while {alive _veh} do {
	sleep (2 + (random _freq));
	if (_mk == "") then {
		_pos = _veh getpos [(50 + random 1000),(random 360)];
	} else {
		_pos = _mk call BIS_fnc_randomPosTrigger;
	};
	_pos = [(_pos select 0),(_pos select 1),1000];
	_veh doSuppressiveFire _pos;
	_veh setVehicleAmmo 1;
};