waitUntil {CPC_MarkersCreated};

call compile preprocessfilelinenumbers "shk_pos\shk_pos_init.sqf";

task1done = false;
task3done = false;
Fin = false;

if !(isServer) exitwith {};
private ["_marker","_markEx","_pos","_rdir","_deg","_i","_type","_veh"];

//position de la base ennemie
switch (CPC_MAP) do {
	case "altis" : {_marker = str (64 + (floor random 36));};
	case "takistan" : {_marker = str (68 + (floor random 32));};
	case "chernarus" : {_marker = str (70 + (floor random 30));};
	case "chernarus_summer" : {_marker = str (70 + (floor random 30));};
	case "isladuala3" : {_marker = str (75 + (floor random 25));};
	case "sara" : {_marker = str (87 + (floor random 13));};
	case "fdf_isle1_a" : {_marker = str (75 + (floor random 25));};
	case "woodland_acr" : {_marker = str (88 + (floor random 12));};
	case "pja305" : {_marker = str (72 + (floor random 28));};
	case "pja307" : {_marker = str (80 + (floor random 20));};
	case "tanoa" : {_marker = str (84 + (floor random 16));};
	case "noe" : {_marker = str (87 + (floor random 13));};
	case "eden" : {_marker = str (92 + (floor random 8));};
};
_markEx = [];
Random_Position = [_marker,0,_markEx,50] call SHK_pos;
while {((SurfaceNormal Random_Position) select 2) < 0.955} do {
	Random_Position = [_marker,0,_markEx,50] call SHK_pos;
}; // permet de trouver une position plate ?

//creation de la caisse objectif et gestion des marqueurs
{ _x hideObjectGlobal true;} forEach (nearestObjects [Random_Position,[],30]);
_Cargo = "Land_Cargo20_military_green_F" createVehicle [0,0,0];
_Cargo setpos [(Random_Position select 0) + 2,Random_Position select 1,1];
cible setpos [(Random_Position select 0) + 2,Random_Position select 1,1.5];
"Mark_Cible" setmarkerpos [(Random_Position select 0)+(random 300)-150,(Random_Position select 1)+(random 300)-150,0]; "Mark_Cible" setmarkerAlpha 0.6;
_pos = markerpos "Mark_Cible";
"Mark_Cible_1" setmarkerpos _pos;
"1" setmarkerpos getpos cible;
"2" setmarkerpos markerpos "Mark_Cible";
"3" setmarkerpos markerpos "Mark_Cible_1";

//creation du camp
if (random 100 < 70) then {
	[] execVM "scripts\create_base.sqf";
} else {
	["1"] execVM "scripts\create_ville.sqf";
};


//extraction
switch (CC_p_extraction) do {
	case 0 : {
		trig_ext setpos Random_Position;
	};
	case 1 : {
		[] spawn {
			waitUntil {time > 0};
			waitUntil {task1done};
			_dir = [[getMarkerPos "Mark_Inser" select 0,getMarkerPos "Mark_Inser" select 1,0],[getMarkerPos "2" select 0,getMarkerPos "2" select 1,0]] call BIS_fnc_dirTo;
			_pos = [[getmarkerpos "2" select 0, getmarkerpos "2" select 1,0],1150,(_dir + ((random 140)-70)),0] call SHK_pos;
			_mark = createMarker ["RDV",_pos];
				_mark setmarkerColor "colorBlue";
				_mark setMarkerShape "ICON";
				_mark setMarkerType "mil_arrow2";
				_mark setMarkerDir ([[getMarkerPos "2" select 0,getMarkerPos "2" select 1,0],_pos] call BIS_fnc_dirTo);
				_mark setMarkerSize [1,1.4];
				_mark setMarkerText "RDV";
			trig_ext setpos _pos;
		};
	};
	case 2 : {
		[] spawn {
			waitUntil {time > 300};
			trig_ext setpos getMarkerPos "Mark_inser";
		};
	};
};