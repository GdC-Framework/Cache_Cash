/*
Author = Sparfell
Description = setup off the SSS CAS support system
*/
private _vehtype = switch (CC_P_ssscas) do {
	case 1: {"RHS_A10"};
	case 2: {"RHS_Su25SM_vvsc"};
	case 3: {"B_Plane_CAS_01_dynamicLoadout_F"};
	case 4: {"O_Plane_CAS_02_dynamicLoadout_F"};
	case 5: {"I_Plane_Fighter_03_dynamicLoadout_F"};
	default {"RHS_A10"};
};
private _ammo = switch (_vehtype) do {
	case "B_Plane_CAS_01_dynamicLoadout_F": {["Gatling_30mm_Plane_CAS_01_F","Rocket_04_HE_Plane_CAS_01_F","Bomb_04_Plane_CAS_01_F"]};
	case "O_Plane_CAS_02_dynamicLoadout_F": {["Cannon_30mm_Plane_CAS_02_F","Rocket_03_HE_Plane_CAS_02_F","Bomb_03_Plane_CAS_02_F"]};
	case "I_Plane_Fighter_03_dynamicLoadout_F": {["Twin_Cannon_20mm","Rocket_04_HE_Plane_CAS_01_F","Bomb_04_Plane_CAS_01_F"]};
	case "RHS_A10": {["RHS_weap_gau8","rhs_weap_FFARLauncher","rhs_weap_gbu12"]};
	case "CPC_ME_O_KAM_Su25";
	case "rhsgref_cdf_b_su25";
	case "RHS_Su25SM_vvsc": {["rhs_weap_gsh302","rhs_weap_s8","rhs_weap_kh29_Launcher"]};
	default{[]};
};
[_vehtype,"",_ammo,300,{},blufor,[],{[player,"ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio},{true}] call SSS_support_fnc_addCASPlane;






/*
_ammo = ["RHS_weap_gau8","rhs_weap_FFARLauncher","rhs_weap_gbu12"];
["RHSGREF_A29B_HIDF","",_ammo,30,{},blufor,[],{[player,"ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio},{true}] call SSS_support_fnc_addCASPlane;
*/