/*
 * Heure et date de la mission
*/
if !(isServer) exitWith {};
private ["_day","_month"];

// DAL : adhérence inutile avec une variable globale, devrait être passé en paramètre de la fonction
if (CC_p_fullmoon == 1) then {
	_day = CPC_FullMoon select 2;
	_month = CPC_FullMoon select 1;
} else {
// DAL : il s'est passé quoi, le 24 juin 2016 :-D ?
	_day = 24;
	_month = 6;
};
setDate [2016,_month,_day, CC_p_time,0];