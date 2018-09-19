/*
 * Search for town positions around a position
 *
 * Parameters
 * 0 - ARRAY - position of the search center
 * 1 (optionnal) - NUMBER - search radius (default:99999)
 * 2 (optionnal) - Array of strings - town types (default:["NameCity","NameVillage","NameCityCapital"])
 * 3 (optionnal) - ARRAY of strings - exclude list containing location names (default:[])
 * 4 (optionnal) - BOLEAN - debug mod with markers (default:false)
 *
 * Return :
 * Array of town positions
*/

//TODO : Faire en sorte que le param 1 puisse être un STRING (nom de marqueur) dans ce cas le script cherche les villes dans le marqueur

params ["_center",["_radius",99999],["_type",["NameCity","NameVillage","NameCityCapital"]],["_excludeList",[]],["_debug",false]];
private ["_townlist","_posList","_mk"];
_townlist = nearestLocations [_center,_type,_radius,_center];
_townlist = _townlist select {!(text _x in _excludeList)};
_posList = [];
{
	_posList = _posList + [locationPosition _x];
} forEach _townlist;
if (_debug) then {
	{
		_mk = createMarker [(format ["mk_townpos%1",_x]),_x];
		_mk setMarkerShape "ICON";
		_mk setMarkerType "mil_triangle";
		_mk setMarkerColor "colorBlue";
	} forEach _posList;
};
_posList
