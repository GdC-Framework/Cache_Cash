/*
Author = Sparfell
Description = setup off the SSS drone support system
*/
private _vehtype = switch (CC_P_sssdrone) do {
	case 1: {"CUP_B_USMC_DYN_MQ9"};
	case 2: {"B_UAV_02_dynamicLoadout_F"};
	case 3: {"O_T_UAV_04_CAS_F"};
	default {"CUP_B_USMC_DYN_MQ9"};
};
[_vehtype,"",60,600,{},blufor,[],{[player,"ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio},{true}] call SSS_support_fnc_addCASDrone;