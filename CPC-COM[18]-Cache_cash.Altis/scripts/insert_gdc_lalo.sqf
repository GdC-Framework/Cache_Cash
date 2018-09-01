if (didJIP) exitwith {};

private ["_unitArray","_type"];

if (isserver) then {
	cc_objet_lalo = "Land_InfoStand_V1_F" createvehicle (markerpos "mark_inser");
	publicVariable "cc_objet_lalo";
};
waitUntil {!isnil "cc_objet_lalo"};
_type = switch (CC_p_loaout) do {
	case 0 : {"B_T_VTOL_01_infantry_F"}; //NATO
	case 1 : {"B_T_VTOL_01_infantry_F"}; //CSAT
	case 2 : {"CUP_I_C130J_AAF"}; //AAF
	case 3 : {"RHS_C130J"}; //USA
	case 4 : {"RHS_C130J"}; //USMC
	case 5 : {"RHS_C130J"}; //USSF
	case 6 : {"RHS_C130J"}; //RU
	case 7 : {"RHS_C130J"}; //RU
	case 8 : {"RHS_C130J"}; //RUSF
	case 9 : {"RHS_C130J"}; //KSK
	case 10 : {"CUP_B_C130J_GB"}; //BAF
	case 11 : {"CUP_I_C130J_RACS"}; //RACS
	case 12 : {"CUP_O_AN2_TK"}; //TAK
	case 13 : {"CUP_C_AN2_CIV"}; //INS
	case 14 : {"CUP_C_AN2_CIV"}; //TAK INS
	case 15 : {"RHS_C130J"}; //SAF
	case 16 : {"RHS_AN2_B"}; //CDF
	case 17 : {"CUP_C_C47_CIV"}; //PMC
	case 18 : {"RHS_C130J"}; //FR
	case 19 : {"RHS_C130J"}; //occident
	default {"RHS_C130J"};
};
[cc_objet_lalo,"",false,true,true,_type] call GDC_fnc_halo;

if (!isMultiplayer) then {
	_unitArray = switchableUnits;
} else {
	_unitArray = PlayableUnits;
};

waitUntil {time > 0};

if (hasInterface) then {
	player setpos [(markerpos "mark_inser" select 0) + (random 30) -15,(markerpos "mark_inser" select 1)+ (random 30) -15,1.5];
};

if (isServer) then {
	{
		if !(isPlayer _x) then {
			_x setpos [(markerpos "mark_inser" select 0) + (random 30) -15,(markerpos "mark_inser" select 1)+ (random 30) -15,1.5];
		};
	} foreach _unitArray;
};