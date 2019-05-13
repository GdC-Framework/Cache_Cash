/*
Script pour créer une caisse avec du matos en plus près du spawn des joueurs
*/
private ["_pos","_veh","_weap","_lat","_at","_mag_at1","_mag_at2","_mag_at3","_hat","_mag_hat","_gre","_mag1","_mag2","_mag_ar","_mag_mg","_arsenal_items_faction","_arsenal_items_base"];


switch (CC_p_loaout) do {
	//OTAN
	case 0 : {
		_weap = "arifle_MX_ACO_F";
		_gre = "HandGrenade";
		_mag1 = "30Rnd_65x39_caseless_mag";
		_mag2 = "30Rnd_65x39_caseless_mag";
		_mag_ar = "100Rnd_65x39_caseless_mag_Tracer";
		_mag_mg = "130Rnd_338_Mag";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "launch_I_Titan_short_F";
			_mag_at1 = "Titan_AT";
			_mag_at2 = "Titan_AP";
			_mag_at3 = "";
			_hat = "launch_I_Titan_short_F";
			_mag_hat = "Titan_AT";
		} else {
			_lat = "launch_NLAW_F";
			_at = "launch_I_Titan_short_F";
			_mag_at1 = "Titan_AT";
			_mag_at2 = "Titan_AP";
			_mag_at3 = "";
			_hat = "launch_I_Titan_short_F";
			_mag_hat = "Titan_AT";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_B_T_Soldier_SL_F","U_B_T_Soldier_F","U_B_T_Soldier_AR_F","U_MU_B_soldier_sage","U_MU_B_soldier_sage_vest","U_MU_B_soldier_sage_tshirt","U_MU_B_soldier_wdl","U_MU_B_soldier_wdl_vest","U_MU_B_soldier_wdl_tshirt","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam",
			//vests
			"V_Chestrig_rgr","V_TacVest_blk","V_TacVest_khk","V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F","V_PlateCarrier1_rgr","V_PlateCarrier2_rgr",
			//backpacks
			"B_AssaultPack_tna_F","B_Carryall_cbr","B_Carryall_oli","B_Kitbag_rgr","B_AssaultPack_rgr","B_Carryall_mcamo","B_Kitbag_mcamo","B_AssaultPack_mcamo",
			//headgears
			"H_MilCap_mcamo","H_Booniehat_mcamo","H_Booniehat_oli","H_MU_MilCap_blk","H_Booniehat_khk","H_MilCap_gry","H_Booniehat_tna_F","H_MilCap_tna_F","H_HelmetB_Light_tna_F","H_HelmetB_tna_F","H_HelmetB_Enh_tna_F","H_HelmetB_light_grass","H_HelmetB_light_black","H_HelmetB_light_snakeskin","H_HelmetB_light","H_HelmetB","H_HelmetSpecB_snakeskin","H_HelmetSpecB_sand","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB","H_HelmetB_camo",
			//facewar
			"","","","","","",
			//weapons
			"","","","","","","","","","","","",
			//weapon items
			"","","","","","","","","","","","",
			//magazines
			"","","","","","","","","","","","",
			//grenades
			"","","","","","","","","","","","",
			//items
			"","","","","",""
		];
	};
	//CSAT
	case 1 : {
		_weap = "arifle_Katiba_F";
		_gre = "HandGrenade";
		_mag1 = "30Rnd_65x39_caseless_green";
		_mag2 = "10Rnd_762x54_Mag";
		_mag_ar = "150Rnd_762x54_Box_Tracer";
		_mag_mg = "150Rnd_762x54_Box_Tracer";
		if (cc_rhsennemy) then {
			_lat = "";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VL_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_PG7VL_mag";
			_hat = "launch_O_Titan_short_F";
			_mag_hat = "Titan_AT";
		} else {
			_lat = "";
			_at = "launch_RPG32_F";
			_mag_at1 = "RPG32_F";
			_mag_at2 = "RPG32_HE_F";
			_mag_at3 = "RPG32_F";
			_hat = "launch_O_Titan_short_F";
			_mag_hat = "Titan_AT";
		};
		_arsenal_items_faction = [
			//uniforms
			"","","","","","",
			//vests
			"","","","","","",
			//backpacks
			"","","","","","",
			//headgears
			"","","","","","",
			//facewar
			"","","","","","",
			//weapons
			"","","","","","","","","","","","",
			//weapon items
			"","","","","","","","","","","","",
			//magazines
			"","","","","","","","","","","","",
			//grenades
			"","","","","","","","","","","","",
			//items
			"","","","","",""
		];
	};
	//AAF
	case 2 : {
		_weap = "arifle_Mk20_Holo_F";
		_gre = "HandGrenade";
		_mag1 = "30Rnd_556x45_Stanag";
		_mag2 = "20Rnd_762x51_Mag";
		_mag_ar = "200Rnd_65x39_cased_Box";
		_mag_mg = "200Rnd_65x39_cased_Box_Tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_m72a7";
			_at = "launch_I_Titan_short_F";
			_mag_at1 = "Titan_AT";
			_mag_at2 = "";
			_mag_at3 = "";
			_hat = "launch_I_Titan_short_F";
			_mag_hat = "Titan_AT";
		} else {
			_lat = "launch_NLAW_F";
			_at = "launch_I_Titan_short_F";
			_mag_at1 = "Titan_AT";
			_mag_at2 = "";
			_mag_at3 = "";
			_hat = "launch_I_Titan_short_F";
			_mag_hat = "Titan_AT";
		};
		_arsenal_items_faction = [];
	};
	//USArmy
	case 3 : {
		_weap = "rhs_weap_m4_carryhandle";
		_gre = "rhs_mag_m67";
		_mag1 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_mag2 = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_mag_ar = "rhsusf_200rnd_556x45_mixed_box";
		_mag_mg = "rhsusf_50Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_B_PilotCoveralls","rhs_uniform_cu_ocp","rhs_uniform_acu_ucp",
			//vests
			"rhsusf_spcs_ucp","rhsusf_spcs_ucp_teamleader","rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ucp_teamleader_alt","rhsusf_spcs_ocp_teamleader_alt","rhsusf_spcs_ucp_squadleader","rhsusf_spcs_ocp_squadleader","rhsusf_spcs_ucp_sniper","rhsusf_spcs_ocp_sniper","rhsusf_spcs_ucp_saw","rhsusf_spcs_ocp_saw","rhsusf_spcs_ucp_rifleman","rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ucp_rifleman_alt","rhsusf_spcs_ocp_rifleman_alt","rhsusf_spcs_ocp","rhsusf_spcs_ucp_medic","rhsusf_spcs_ocp_medic","rhsusf_spcs_ucp_machinegunner","rhsusf_spcs_ocp_machinegunner","rhsusf_spcs_ucp_grenadier","rhsusf_spcs_ocp_grenadier","rhsusf_spcs_ucp_crewman","rhsusf_spcs_ocp_crewman",
			//backpacks
			"rhsusf_falconii_mc","rhsusf_assault_eagleaiii_ucp","rhsusf_assault_eagleaiii_ocp","B_rhsusf_B_BACKPACK","B_Carryall_mcamo","B_Carryall_cbr","B_AssaultPack_rgr",
			//headgears
			"RHS_jetpilot_usaf","rhsusf_ihadss","rhsusf_hgu56p_visor_mask","rhsusf_hgu56p_visor","rhsusf_hgu56p","rhs_Booniehat_ucp","rhs_Booniehat_ocp","rhsusf_cvc_ess","rhsusf_cvc_alt_helmet","rhsusf_cvc_green_ess","rhsusf_cvc_green_alt_helmet","rhsusf_ach_helmet_ucp_norotos","rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ocp_norotos","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_ocp",
			//facewar
			"CUP_TK_NeckScarf","CUP_FR_NeckScarf","CUP_FR_NeckScarf2","rhsusf_oakley_goggles_ylw","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_blk","rhs_ess_black","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear","rhs_googles_black","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black",
			//weapons
			"CUP_launch_Javelin","CUP_launch_M136","CUP_launch_MAAWS","rhs_weap_smaw_green","rhs_weap_m72a7","rhs_weap_maaws","rhs_weap_M136_hp","rhs_weap_M136_hedp","rhs_weap_M136","rhs_weap_fim92","rhs_weap_fgm148","rhsusf_weap_glock17g4","rhsusf_weap_m9","rhs_weap_m4a1_carryhandle_mstock","rhs_weap_m4a1_carryhandle_m203S","rhs_weap_m4a1_carryhandle","rhs_weap_m249_pip_L_para","rhs_weap_m249_pip_L","rhs_weap_m240G","rhs_weap_m240B","rhs_weap_XM2010","rhs_weap_XM2010_wd","rhs_weap_XM2010_d","rhs_weap_XM2010_sa","rhs_weap_M107","rhs_weap_m14ebrri",
			//weapon items
			"cup_optic_maaws_scope","rhs_weap_optic_smaw","rhs_optic_maaws","acc_flashlight_pistol","rhsusf_acc_anpeq16a_top","rhsusf_acc_anpeq15_bk","rhsusf_acc_anpeq15","rhsusf_acc_ardec_m240","rhsusf_acc_rotex5_grey","rhsusf_acc_nt4_black","rhsusf_acc_sfmb556","rhsusf_acc_sf3p556","rhsusf_acc_acog_rmr","rhsusf_acc_acog_mdo","rhsusf_acc_su230a","rhsusf_acc_anpas13gv1","rhsusf_acc_acog3","rhsusf_acc_acog2","rhsusf_acc_acog","rhsusf_acc_elcan_ard","rhsusf_acc_elcan","rhsusf_acc_compm4","rhsusf_acc_eotech_552","rhsusf_acc_premier","rhsusf_acc_premier_anpvs27","rhsusf_acc_leupoldmk4_2_d","rhsusf_acc_leupoldmk4_2","rhsusf_acc_leupoldmk4","rhsusf_acc_wmx_bk","rhsusf_acc_wmx","rhsusf_acc_m952v","rhsusf_acc_anpeq16a","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15side","rhsusf_acc_m2010s_wd","rhsusf_acc_m2010s_sa","rhsusf_acc_m2010s_d","rhsusf_acc_m2010s","rhsusf_acc_harris_bipod",
			//magazines
			"CUP_Javelin_M","CUP_MAAWS_HEAT_M","CUP_MAAWS_HEDP_M","rhs_mag_smaw_SR","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_fgm148_magazine_AT","rhsusf_mag_15Rnd_9x19_FMJ","rhsusf_mag_17Rnd_9x19_FMJ","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhsusf_200rnd_556x45_mixed_box","rhsusf_100Rnd_762x51_m61_ap","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_100Rnd_762x51","rhsusf_100Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m61_ap","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51","rhsusf_5Rnd_300winmag_xm2010","rhsusf_20Rnd_762x51_m993_Mag","rhsusf_20Rnd_762x51_m62_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_mag_10Rnd_STD_50BMG_mk211","rhsusf_mag_10Rnd_STD_50BMG_M33",
			//grenades
			"rhs_mag_mk84","rhs_mag_m18_yellow","rhs_mag_m18_red","rhs_mag_m18_purple","rhs_mag_m18_green","rhs_mag_m67","B_IR_Grenade","rhs_mag_an_m8hc","rhs_mag_an_m14_th3",
			//items
			"rhsusf_ANPVS_15","rhsusf_ANPVS_14","NVGoggles_OPFOR","rhsusf_bino_lerca_1200_tan","rhsusf_bino_lerca_1200_black","Rangefinder","ACE_Vector"
		];
	};
	//USMC
	case 4 : {
		_weap = "rhs_weap_m16a4_carryhandle";
		_gre = "rhs_mag_m67";
		_mag1 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_mag2 = "rhsusf_20Rnd_762x51_m118_special_Mag";
		_mag_ar = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_mag_mg = "rhsusf_50Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_B_PilotCoveralls","rhs_uniform_FROG01_d","rhs_uniform_FROG01_wd",
			//vests
			"rhsusf_spc_teamleader","rhsusf_spc_squadleader","rhsusf_spc_rifleman","rhsusf_spc_patchless_radio","rhsusf_spc_patchless","rhsusf_spc_marksman","rhsusf_spc_mg","rhsusf_spc_light","rhsusf_spc_iar","rhsusf_spc_crewman","rhsusf_spc_corpsman","rhsusf_spc",
			//backpacks
			"rhsusf_falconii_coy","rhsusf_assault_eagleaiii_coy","B_rhsusf_B_BACKPACK","B_Carryall_khk","B_Carryall_cbr",
			//headgears
			"RHS_jetpilot_usaf","rhsusf_ihadss","rhsusf_hgu56p_visor_mask","rhsusf_hgu56p_visor","rhsusf_hgu56p","rhs_booniehat2_marpatd","rhs_booniehat2_marpatwd","rhs_8point_marpatwd","rhs_8point_marpatd","rhsusf_lwh_helmet_marpatwd_ess","rhsusf_lwh_helmet_marpatwd_headset","rhsusf_lwh_helmet_marpatwd_headset_blk","rhsusf_lwh_helmet_marpatwd_blk_ess","rhsusf_lwh_helmet_marpatwd","rhsusf_lwh_helmet_marpatd_headset","rhsusf_lwh_helmet_marpatd_ess","rhsusf_lwh_helmet_marpatd",
			//facewar
			"CUP_TK_NeckScarf","CUP_FR_NeckScarf","CUP_FR_NeckScarf2","rhsusf_oakley_goggles_ylw","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_blk","rhs_ess_black","rhs_googles_orange","rhs_googles_yellow","rhs_googles_clear","rhs_googles_black","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black",
			//weapons
			"rhs_weap_m4a1_carryhandle","CUP_launch_Javelin","CUP_launch_M136","CUP_launch_Mk153Mod0","rhs_weap_smaw_green","rhs_weap_m72a7","rhs_weap_maaws","rhs_weap_M136_hp","rhs_weap_M136_hedp","rhs_weap_M136","rhs_weap_fim92","rhs_weap_fgm148","rhsusf_weap_glock17g4","rhsusf_weap_m9","rhs_weap_m4a1_carryhandle_mstock","rhs_weap_m16a4_carryhandle","rhs_weap_m16a4_carryhandle_M203","rhs_weap_m249_pip","rhs_weap_m240G","rhs_weap_m240B","rhs_weap_m27iar_grip","rhs_weap_m40a5_wd","rhs_weap_m40a5_d","rhs_weap_m40a5","rhs_weap_M107","rhs_weap_m14ebrri",
			//weapon items
			"cup_optic_smaw_scope","rhs_weap_optic_smaw","rhs_optic_maaws","acc_flashlight_pistol","rhsusf_acc_anpeq16a_top","rhsusf_acc_anpeq15_bk","rhsusf_acc_anpeq15","rhsusf_acc_ardec_m240","rhsusf_acc_rotex5_grey","rhsusf_acc_nt4_black","rhsusf_acc_sfmb556","rhsusf_acc_sf3p556","rhsusf_acc_acog_rmr","rhsusf_acc_acog_mdo","rhsusf_acc_su230a","rhsusf_acc_anpas13gv1","rhsusf_acc_acog3_usmc","rhsusf_acc_acog2_usmc","rhsusf_acc_acog_usmc","rhsusf_acc_elcan_ard","rhsusf_acc_elcan","rhsusf_acc_compm4","rhsusf_acc_eotech_552","rhsusf_acc_premier","rhsusf_acc_premier_anpvs27","rhsusf_acc_leupoldmk4","rhsusf_acc_wmx_bk","rhsusf_acc_wmx","rhsusf_acc_m952v","rhsusf_acc_anpeq16a","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15side","rhsusf_acc_harris_swivel","rhsusf_acc_m8541_low_wd","rhsusf_acc_m8541_low_d","rhsusf_acc_m8541_low","rhsusf_acc_harris_bipod",
			//magazines
			"CUP_Javelin_M","CUP_SMAW_HEAA_M","CUP_SMAW_HEDP_M","rhs_mag_smaw_SR","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_fgm148_magazine_AT","rhsusf_mag_15Rnd_9x19_FMJ","rhsusf_mag_17Rnd_9x19_FMJ","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhsusf_200rnd_556x45_mixed_box","rhsusf_100Rnd_762x51_m61_ap","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_100Rnd_762x51","rhsusf_100Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m61_ap","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_50Rnd_762x51","rhsusf_5Rnd_762x51_AICS_m993_Mag","rhsusf_5Rnd_762x51_AICS_m62_Mag","rhsusf_5Rnd_762x51_AICS_m118_special_Mag","rhsusf_20Rnd_762x51_m993_Mag","rhsusf_20Rnd_762x51_m62_Mag","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_mag_10Rnd_STD_50BMG_mk211","rhsusf_mag_10Rnd_STD_50BMG_M33",
			//grenades
			"rhs_mag_mk84","rhs_mag_m18_yellow","rhs_mag_m18_red","rhs_mag_m18_purple","rhs_mag_m18_green","rhs_mag_m67","B_IR_Grenade","rhs_mag_an_m8hc","rhs_mag_an_m14_th3",
			//items
			"rhsusf_ANPVS_15","rhsusf_ANPVS_14","NVGoggles_OPFOR","rhsusf_bino_lerca_1200_tan","rhsusf_bino_lerca_1200_black","Rangefinder","ACE_Vector"
		];
	};
	//USSF
	case 5 : {
		_weap = "rhs_weap_mk18_eotech_sup";
		_gre = "rhs_mag_m67";
		_mag1 = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		_mag2 = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_mag_ar = "rhsusf_100Rnd_556x45_mixed_soft_pouch";
		_mag_mg = "rhsusf_50Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_maaws_optic";
			_mag_at1 = "rhs_mag_maaws_HEAT";
			_mag_at2 = "rhs_mag_maaws_HEDP";
			_mag_at3 = "rhs_mag_maaws_HEAT";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_MAAWS_Scope";
			_mag_at1 = "CUP_MAAWS_HEAT_M";
			_mag_at2 = "CUP_MAAWS_HEDP_M";
			_mag_at3 = "CUP_MAAWS_HEAT_M";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_B_Wetsuit","U_B_HeliPilotCoveralls","U_B_PilotCoveralls","rhs_uniform_g3_blk","rhs_uniform_g3_rgr","rhs_uniform_g3_tan","rhs_uniform_g3_m81","rhs_uniform_g3_mc",
			//vests
			"V_RebreatherB","V_TacVest_oli","V_Chestrig_khk","V_Chestrig_rgr","V_Chestrig_blk","V_TacVest_blk","V_TacVest_khk","rhsusf_mbav_light","rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman",
			//backpacks
			"rhsusf_assault_eagleaiii_ucp","rhsusf_falconii","rhsusf_falconii_mc","rhsusf_falconii_coy","rhsusf_assault_eagleaiii_ocp","B_rhsusf_B_BACKPACK","rhsusf_assault_eagleaiii_coy","B_Kitbag_mcamo","B_Kitbag_rgr","B_Kitbag_cbr","B_Carryall_oli","B_Carryall_mcamo","B_Carryall_khk","B_Carryall_cbr","B_AssaultPack_mcamo","B_AssaultPack_khk","B_AssaultPack_rgr","B_AssaultPack_cbr",
			//headgears
			"H_Watchcap_khk","H_Watchcap_camo","H_Watchcap_cbr","H_Watchcap_blk","H_Booniehat_tan","H_Booniehat_oli","H_Booniehat_khk","H_Booniehat_khk_hs","rhsusf_protech_helmet_rhino_ess","rhsusf_protech_helmet_rhino",
			"rhsusf_protech_helmet_ess","rhsusf_protech_helmet","rhsusf_mich_bare_norotos_tan_headset","rhsusf_mich_bare_norotos_arc_alt_tan_headset","rhsusf_mich_bare_norotos_arc_alt_tan","rhsusf_mich_bare_norotos_arc_tan",
			"rhsusf_mich_bare_norotos_alt_tan_headset","rhsusf_mich_bare_norotos_alt_tan","rhsusf_mich_bare_norotos_tan","rhsusf_mich_bare_tan_headset","rhsusf_mich_bare_alt_tan","rhsusf_mich_bare_tan","rhsusf_mich_bare_norotos_semi_headset",
			"rhsusf_mich_bare_norotos_arc_semi_headset","rhsusf_mich_bare_norotos_arc_alt_semi_headset","rhsusf_mich_bare_norotos_arc_alt_semi","rhsusf_mich_bare_norotos_arc_semi","rhsusf_mich_bare_norotos_alt_semi_headset",
			"rhsusf_mich_bare_norotos_alt_semi","rhsusf_mich_bare_norotos_semi","rhsusf_mich_bare_semi_headset","rhsusf_mich_bare_alt_semi","rhsusf_mich_bare_semi","rhsusf_mich_bare_norotos_headset","rhsusf_mich_bare_norotos_arc_headset",
			"rhsusf_mich_bare_norotos_arc_alt_headset","rhsusf_mich_bare_norotos_arc_alt","rhsusf_mich_bare_norotos_arc","rhsusf_mich_bare_norotos_alt_headset","rhsusf_mich_bare_norotos_alt","rhsusf_mich_bare_norotos","rhsusf_mich_bare_headset",
			"rhsusf_mich_bare_alt","rhsusf_mich_bare","RHS_jetpilot_usaf","rhsusf_ihadss","rhsusf_hgu56p_visor_usa","rhsusf_hgu56p_visor_mask_smiley","rhsusf_hgu56p_visor_mask_skull","rhsusf_hgu56p_visor_mask","rhsusf_hgu56p_visor",
			"rhsusf_hgu56p","rhsusf_opscore_mar_ut_pelt","rhsusf_opscore_mar_ut","rhsusf_opscore_mar_fg_pelt","rhsusf_opscore_mar_fg","rhsusf_opscore_ut_pelt_nsw_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_cam",
			"rhsusf_opscore_ut_pelt","rhsusf_opscore_ut","rhsusf_opscore_rg_cover_pelt","rhsusf_opscore_rg_cover","rhsusf_opscore_paint_pelt_nsw_cam","rhsusf_opscore_paint_pelt_nsw","rhsusf_opscore_paint_pelt","rhsusf_opscore_paint",
			"rhsusf_opscore_mc_pelt_nsw","rhsusf_opscore_mc_pelt","rhsusf_opscore_mc","rhsusf_opscore_mc_cover_pelt_cam","rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_mc_cover_pelt","rhsusf_opscore_mc_cover","rhsusf_opscore_fg_pelt_nsw",
			"rhsusf_opscore_fg_pelt_cam","rhsusf_opscore_fg_pelt","rhsusf_opscore_fg","rhsusf_opscore_coy_cover_pelt","rhsusf_opscore_coy_cover","rhsusf_opscore_bk_pelt","rhsusf_opscore_bk","rhsusf_opscore_aor2_pelt_nsw","rhsusf_opscore_aor2_pelt",
			"rhsusf_opscore_aor2","rhsusf_opscore_aor1_pelt_nsw","rhsusf_opscore_aor1_pelt","rhsusf_opscore_aor1","rhsusf_cvc_ess","rhsusf_cvc_alt_helmet","rhsusf_cvc_green_ess","rhsusf_cvc_green_alt_helmet","rhsusf_ach_bare_wood_headset_ess",
			"rhsusf_ach_bare_wood_headset","rhsusf_ach_bare_wood_ess","rhsusf_ach_bare_wood","rhsusf_ach_bare_tan_headset_ess","rhsusf_ach_bare_tan_headset","rhsusf_ach_bare_tan_ess","rhsusf_ach_bare_tan","rhsusf_ach_bare_semi_headset_ess",
			"rhsusf_ach_bare_semi_headset","rhsusf_ach_bare_semi_ess","rhsusf_ach_bare_semi","rhsusf_ach_bare_headset_ess","rhsusf_ach_bare_headset","rhsusf_ach_bare_ess","rhsusf_ach_bare_des_headset_ess","rhsusf_ach_bare_des_headset",
			"rhsusf_ach_bare_des_ess","rhsusf_ach_bare_des","rhsusf_ach_bare","rhs_Booniehat_ucp","rhs_booniehat2_marpatwd","rhs_booniehat2_marpatd","rhsusf_bowman_cap","rhsusf_Bowman","rhs_Booniehat_ocp","rhs_Booniehat_m81",
			//facewar
			"G_B_Diving","CUP_TK_NeckScarf","CUP_FR_NeckScarf","CUP_FR_NeckScarf2","rhsusf_oakley_goggles_ylw","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_blk","rhsusf_shemagh2_gogg_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_gogg_od",
			"rhsusf_shemagh2_gogg_grn","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_od","rhsusf_shemagh_od","rhsusf_shemagh2_grn","rhsusf_shemagh_grn","rhs_ess_black","rhs_googles_orange","rhs_googles_yellow",
			"rhs_googles_clear","rhs_googles_black","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black",
			//weapons
			"CUP_launch_Mk153Mod0","CUP_launch_M136","rhs_weap_smaw_green","rhs_weap_m72a7","rhs_weap_maaws","rhs_weap_M136_hp","rhs_weap_M136_hedp","rhs_weap_M136","rhs_weap_fim92","rhs_weap_fgm148","rhs_weap_M320","rhsusf_weap_m1911a1",
			"rhsusf_weap_glock17g4","rhs_weap_hk416d10_LMT_wd","rhs_weap_hk416d10_LMT_d","rhs_weap_hk416d10_LMT","rhs_weap_hk416d10_m320","rhs_weap_hk416d10","rhs_weap_M107","rhs_weap_M107_d","rhs_weap_M107_w","rhs_weap_XM2010","rhs_weap_XM2010_wd",
			"rhs_weap_XM2010_d","rhs_weap_XM2010_sa","rhs_weap_m24sws","rhs_weap_m24sws_d","rhs_weap_m249_pip_S_vfg","rhs_weap_m249_pip_S_para","rhs_weap_m240G","rhs_weap_m240B","rhs_weap_m24sws_wd","rhs_weap_m32","rhs_weap_m40a5_d","rhs_weap_m40a5_wd",
			"rhs_weap_m4a1_wd_mstock","rhs_weap_m4a1_m203s_wd","rhs_weap_m4a1_wd","rhs_weap_m4a1_mstock","rhs_weap_m4a1_m320","rhs_weap_m4a1_m203s","rhs_weap_m4a1_m203","rhs_weap_m4a1_d_mstock","rhs_weap_m4a1_m203s_d","rhs_weap_m4a1_d","rhs_weap_m4a1",
			"rhs_weap_sr25_ec_wd","rhs_weap_sr25_ec_d","rhs_weap_sr25_ec","rhsusf_weap_MP7A2_desert","rhsusf_weap_MP7A2","rhs_weap_mk18_KAC_wd","rhs_weap_mk18_wd","rhs_weap_mk18_KAC","rhs_weap_mk18_m320","rhs_weap_mk18_KAC_d","rhs_weap_mk18_d","rhs_weap_mk18_KAC_bk","rhs_weap_mk18_bk","rhs_weap_mk18",
			//weapon items
			"rhsusf_acc_m24_silencer_wd","rhsusf_acc_harris_swivel","rhsusf_acc_m24_silencer_d","cup_optic_smaw_scope","rhs_weap_optic_smaw","rhs_optic_maaws","acc_flashlight_pistol","rhsusf_acc_omega9k","rhsusf_acc_anpeq15_wmx","rhsusf_acc_anpeq15_bk","rhsusf_acc_anpeq15","rhsusf_acc_m2010s_wd","rhsusf_acc_m2010s_sa",
			"rhsusf_acc_m2010s_d","rhsusf_acc_m2010s","rhsusf_acc_grip3","rhsusf_acc_tdstubby_tan","rhsusf_acc_tdstubby_blk","rhsusf_acc_rvg_de","rhsusf_acc_rvg_blk","rhsusf_acc_grip1","rhsusf_acc_grip2_wd","rhsusf_acc_grip2","rhsusf_acc_sfmb556",
			"rhsusf_acc_sf3p556","rhsusf_acc_rotex5_grey","rhsusf_acc_nt4_tan","rhsusf_acc_nt4_black","rhsusf_acc_m8541","rhsusf_acc_m8541_low","rhsusf_acc_m8541_low_d","rhsusf_acc_m8541_low_wd","rhsusf_acc_premier_low","rhsusf_acc_premier_anpvs27",
			"rhsusf_acc_premier","rhsusf_acc_leupoldmk4_2_d","rhsusf_acc_leupoldmk4_2","rhsusf_acc_leupoldmk4","rhsusf_acc_leupoldmk4_d","rhsusf_acc_leupoldmk4_wd","rhsusf_acc_wmx_bk","rhsusf_acc_wmx","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15side",
			"rhsusf_acc_m952v","rhsusf_acc_anpeq16a","bipod_01_f_blk","rhsusf_acc_harris_bipod","rhsusf_acc_sr25s_wd","rhsusf_acc_sr25s_d","rhsusf_acc_sr25s","rhsusf_acc_acog_mdo","rhsusf_acc_t1_high","rhsusf_acc_t1_low","rhsusf_acc_anpas13gv1",
			"rhsusf_acc_eotech","rhsusf_acc_g33_t1","rhsusf_acc_g33_xps3","rhsusf_acc_g33_xps3_tan","rhsusf_acc_elcan","rhsusf_acc_elcan_ard","rhsusf_acc_acog","rhsusf_acc_acog2","rhsusf_acc_acog3","rhsusf_acc_m2a1","rhsusf_acc_eotech_552",
			"rhsusf_acc_eotech_552_d","rhsusf_acc_eotech_552_wd","rhsusf_acc_compm4","rhsusf_acc_mrds","rhsusf_acc_mrds_c","rhsusf_acc_rx01_nofilter","rhsusf_acc_rx01","rhsusf_acc_rx01_nofilter_tan","rhsusf_acc_rx01_tan","rhsusf_acc_eotech_xps3",
			"rhsusf_acc_acog_wd","rhsusf_acc_acog_d","rhsusf_acc_acog_rmr","rhsusf_acc_su230a_mrds_c","rhsusf_acc_su230a_mrds","rhsusf_acc_su230a_c","rhsusf_acc_su230a","rhsusf_acc_su230_mrds_c","rhsusf_acc_su230_mrds","rhsusf_acc_su230_c",
			"rhsusf_acc_su230","rhsusf_acc_rotex_mp7_desert","rhsusf_acc_rotex_mp7",
			//magazines
			"CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_fgm148_magazine_AT","rhs_mag_m576","rhs_mag_m4009","rhsusf_mag_7x45acp_MHP",
			"rhsusf_mag_17Rnd_9x19_FMJ","rhsusf_mag_17Rnd_9x19_JHP","rhsusf_5Rnd_300winmag_xm2010","rhsusf_5Rnd_762x51_m118_special_Mag","rhsusf_5Rnd_762x51_m62_Mag","","","rhsusf_5Rnd_762x51_m993_Mag","","rhsusf_mag_6Rnd_M716_yellow","rhsusf_mag_6Rnd_M715_green",
			"rhsusf_mag_6Rnd_M714_white","rhsusf_mag_6Rnd_M713_red","rhsusf_mag_6Rnd_m662_red","rhsusf_mag_6Rnd_m661_green","rhsusf_mag_6Rnd_M585_white","rhsusf_mag_6Rnd_M576_Buckshot","rhsusf_mag_6Rnd_m4009","rhsusf_mag_6Rnd_M441_HE","rhsusf_mag_6Rnd_M433_HEDP",
			"rhsusf_mag_6Rnd_M397_HET","rhsusf_5Rnd_762x51_AICS_m993_Mag","rhsusf_5Rnd_762x51_AICS_m62_Mag","rhsusf_5Rnd_762x51_AICS_m118_special_Mag","ACE_HuntIR_M203","rhs_mag_m716_yellow","rhs_mag_m715_Green","rhs_mag_m714_White","rhs_mag_m713_Red",
			"rhs_mag_m662_red","rhs_mag_m661_green","rhs_mag_M585_white","rhs_mag_M441_HE","rhs_mag_M397_HET","rhs_mag_M433_HEDP","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
			"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_100Rnd_556x45_M855A1_cmag_mixed","rhsusf_mag_40Rnd_46x30_JHP","rhsusf_mag_40Rnd_46x30_FMJ","rhsusf_mag_40Rnd_46x30_AP",
			"rhsusf_20Rnd_762x51_SR25_m993_Mag","rhsusf_20Rnd_762x51_SR25_m62_Mag","rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
			"rhsusf_100Rnd_762x51_m61_ap","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_100Rnd_762x51","rhsusf_100Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m80a1epr","rhsusf_50Rnd_762x51_m61_ap","rhsusf_50Rnd_762x51","rhsusf_50Rnd_762x51_m62_tracer","rhsusf_200Rnd_556x45_mixed_soft_pouch","rhsusf_200rnd_556x45_mixed_box","rhsusf_100Rnd_556x45_mixed_soft_pouch",
			//grenades
			"rhs_mag_mk3a2","rhs_mag_mk84","rhs_mag_m67","rhs_mag_m18_yellow","rhs_mag_m18_red","rhs_mag_m18_purple","rhs_mag_m18_green","B_IR_Grenade","rhs_mag_an_m8hc","rhs_mag_an_m14_th3",
			//items
			"rhsusf_ANPVS_15","NVGoggles_OPFOR","Rangefinder","ACE_HuntIR_monitor"
		];
	};
	//RUS2000
	case 6 : {
		_weap = "rhs_weap_ak74m";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhs_30Rnd_545x39_AK";
		_mag2 = "rhs_10Rnd_762x54mmR_7N1";
		_mag_ar = "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg26";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VR_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_TBG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VR_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_TBG7V_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};	
		_arsenal_items_faction = [];
	};
	//RUS2015
	case 7 : {
		_weap = "rhs_weap_ak74m";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhs_30Rnd_545x39_AK";
		_mag2 = "rhs_10Rnd_762x54mmR_7N1";
		_mag_ar = "rhs_100Rnd_762x54mmR_green";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg26";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VR_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_TBG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VR_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_TBG7V_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};
		_arsenal_items_faction = [];
	};
	//RUSF
	case 8 : {
		_weap = "rhs_weap_ak74mr_1p87";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhs_30Rnd_545x39_7N22_AK";
		_mag2 = "rhs_10Rnd_762x54mmR_7N14";
		_mag_ar = "rhs_45Rnd_545X39_7N22_AK";
		_mag_mg = "rhs_100Rnd_762x54mmR_7N26";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg26";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VR_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_TBG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VR_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_TBG7V_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_I_Wetsuit","rhs_uniform_df15_tan","rhs_uniform_df15","rhs_uniform_flora_patchless","rhs_uniform_m88_patchless","rhs_uniform_mflora_patchless","rhs_uniform_mvd_izlom","rhs_uniform_emr_patchless","rhs_uniform_emr_des_patchless","rhs_uniform_gorka_r_y","rhs_uniform_gorka_r_g",
			//vests
			"V_RebreatherIA","rhs_6b23_vydra_3m","rhs_6b23_sniper","rhs_6b23_rifleman","rhs_6b23_engineer","rhs_6sh92_vsr_vog","rhs_6sh92_vsr","rhs_6sh92_digi","rhs_6sh92","rhs_6sh92_radio","rhs_6b23_digi_medic","rhs_6b23_digi_engineer","rhs_6sh92_vsr_radio","rhs_6sh92_digi_radio","rhs_6b23_digi_crew","rhs_6b23_digi_rifleman","rhs_6b23_digi_sniper","rhs_6b23_digi_6sh92_Vog_Spetsnaz","rhs_6b23_digi_6sh92_Spetsnaz","rhs_6b23_digi_6sh92_spetsnaz2",
			//backpacks
			"rhs_sidor","CUP_B_RPGPack_Khaki","rhs_rpg_empty","rhs_assault_umbts_engineer_empty","rhs_assault_umbts","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_Carryall_cbr","B_Carryall_khk","B_Carryall_oli",
			//headgears
			"rhs_6b47_ess","rhs_6b47","rhs_beanie_green","rhs_fieldcap_digi","rhs_fieldcap_vsr","rhs_fieldcap_khk","rhs_fieldcap","H_Booniehat_tan","rhs_Booniehat_digi","rhs_Booniehat_flora","rhs_6b47_bala","rhs_6b47_bala","rhs_6b47_ess_bala",
			//facewar
			"G_I_Diving",
			//weapons
			"CUP_launch_RPG7V","CUP_launch_RPG18","rhs_weap_rpg7","rhs_weap_rpg26","rhs_weap_pb_6p9","rhs_weap_t5000","rhs_weap_aks74u","rhs_weap_ak74mr_gp25","rhs_weap_svds","rhs_weap_pkp","rhs_weap_ak74mr",
			"rhs_weap_ak74n","rhs_weap_aks74n_gp25","rhs_weap_aks74n","rhs_weap_akms_gp25","rhs_weap_akmn_gp25","rhs_weap_akms","rhs_weap_akmn","rhs_weap_pkm","rhs_weap_ak74m_gp25","rhs_weap_ak74m","rhs_weap_ak105","rhs_weap_ak105_zenitco01","rhs_weap_ak105_zenitco01_b33","rhs_weap_rshg2","rhs_weap_vss_grip_npz","rhs_weap_vss_grip","rhs_weap_asval_grip_npz","rhs_weap_asval_grip","rhs_weap_ak74m_zenitco01_b33","rhs_weap_ak74m_zenitco01",
			//weapon items
			"rhs_acc_1pn93_2","rhs_acc_pgo7v3","cup_optic_pgo7v3","rhs_acc_6p9_suppressor","rhs_acc_harris_swivel","rhsusf_acc_premier_anpvs27","rhsusf_acc_premier","optic_arco_blk_f","rhs_acc_grip_ffg2","rhs_acc_2dpzenit","rhs_acc_2dpzenit_ris","rhs_acc_perst3","rhs_acc_perst3_2dp_h","rhs_acc_dtk4short","rhs_acc_grip_rk2","rhs_acc_1p87","rhs_acc_1p29","rhs_acc_pso1m2","rhs_acc_tgpv2",
			"rhs_acc_pbs1","rhs_acc_dtk1l","rhs_acc_dtkakm","rhs_acc_pso1m21","rhs_acc_pkas","rhs_acc_nita","rhs_acc_ekp8_02","rhs_acc_ekp1","rhs_acc_1pn93_1","rhs_acc_1p78","rhs_acc_1p63","rhs_acc_grip_rk6","rhs_acc_grip_rk2","rhs_acc_tgpa","rhs_acc_dtk3","rhs_acc_dtk2","rhs_acc_dtk1","rhs_acc_dtk","rhs_acc_ak5","rhs_acc_uuk","rhs_acc_perst1ik_ris","rhs_acc_perst1ik","rhs_acc_ekp8_18","rhs_acc_rakurspm",
			//magazines
			"CUP_PG7V_M","rhs_rpg7_type69_airburst_mag","rhs_rpg7_PG7VR_mag","rhs_rpg7_PG7V_mag","rhs_rpg7_OG7V_mag","CUP_OG7_M","CUP_PG7VM_M","rhs_rpg7_TBG7V_mag","rhs_rpg7_PG7VL_mag","rhs_45Rnd_545X39_7N22_AK","rhs_100Rnd_762x54mmR_7N26","rhs_10Rnd_762x54mmR_7N14","rhs_GDM40","rhs_VG40OP_white","rhs_VG40MD_Red","rhs_VOG25","rhs_30Rnd_545x39_7N22_AK",
			"rhs_30Rnd_545x39_7N6M_AK","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm_bakelite","rhs_VG40TB","rhs_VOG25P","rhs_20rnd_9x39mm_SP6","rhs_20rnd_9x39mm_SP5",
			//grenades
			"rhs_mag_fakels","rhs_mag_rdg2_white","rhs_mag_mk84","rhs_mag_rgd5",
			//items
			"rhs_pdu4","NVGoggles_OPFOR","rhs_1PN138"
		];
	};
	//KSK
	case 9 : {
		_weap = "CUP_arifle_G36A";
		_gre = "HandGrenade";
		_mag1 = "CUP_30Rnd_556x45_G36";
		_mag2 = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_mag_ar = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";
		_mag_mg = "rhsusf_100Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_maaws_optic";
			_mag_at1 = "rhs_mag_maaws_HEAT";
			_mag_at2 = "rhs_mag_maaws_HEDP";
			_mag_at3 = "rhs_mag_maaws_HEAT";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_MAAWS_Scope";
			_mag_at1 = "CUP_MAAWS_HEAT_M";
			_mag_at2 = "CUP_MAAWS_HEDP_M";
			_mag_at3 = "CUP_MAAWS_HEAT_M";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [];
	};
	//BAF
	case 10 : {
		_weap = "CUP_arifle_L85A2_G";
		_gre = "CUP_HandGrenade_L109A1_HE";
		_mag1 = "CUP_30Rnd_556x45_Stanag_L85";
		_mag2 = "20Rnd_762x51_Mag";
		_mag_ar = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_mag_mg = "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [];
	};
	//RACS
	case 11 : {
		_weap = "CUP_arifle_M16A4_Base";
		_gre = "HandGrenade";
		_mag1 = "30Rnd_556x45_Stanag";
		_mag2 = "20Rnd_762x51_Mag";
		_mag_ar = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_mag_mg = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_m72a7";
			_at = "rhs_weap_maaws_optic";
			_mag_at1 = "rhs_mag_maaws_HEAT";
			_mag_at2 = "rhs_mag_maaws_HEDP";
			_mag_at3 = "rhs_mag_maaws_HEAT";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M72A6";
			_at = "CUP_launch_MAAWS_Scope";
			_mag_at1 = "CUP_MAAWS_HEAT_M";
			_mag_at2 = "CUP_MAAWS_HEDP_M";
			_mag_at3 = "CUP_MAAWS_HEAT_M";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [];
	};
	//TAKI
	case 12 : {
		_weap = "CUP_arifle_FNFAL";
		_gre = "CUP_HandGrenade_RGD5";
		_mag1 = "CUP_20Rnd_762x51_FNFAL_M";
		_mag2 = "30Rnd_556x45_Stanag";
		_mag_ar = "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg26";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VR_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_TBG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VR_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_TBG7V_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};
		_arsenal_items_faction = [];
	};
	//INS
	case 13 : {
		_weap = "rhs_weap_akm";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhs_30Rnd_762x39mm";
		_mag2 = "rhsgref_10Rnd_792x57_m76";
		_mag_ar = "rhs_75Rnd_762x39mm";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg75";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7V_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_OG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7V_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_OG7_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_leader","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_3_F","U_MU_B_GuerillaGarment_brown","U_MU_B_GuerillaGarment_skull","U_MU_B_GuerillaGarment2_brown","U_MU_B_GuerillaGarment2_grey",
			"rhsgref_uniform_dpm","rhsgref_uniform_dpm_olive","rhsgref_uniform_flecktarn","rhsgref_uniform_reed","rhsgref_uniform_woodland","rhsgref_uniform_woodland_olive","rhssaf_uniform_m93_oakleaf","rhssaf_uniform_m93_oakleaf_summer",
			"CPC_ME_Uniform_M93_sand_1","CPC_ME_Uniform_M93_sand_2","CPC_ME_Uniform_M93_sand_3","CPC_ME_Uniform_M93_sand_4","rhsgref_uniform_olive",
			//vests
			"V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F","rhsgref_chestrig","rhssaf_vest_md99_md2camo_rifleman","rhssaf_vest_md99_woodland_rifleman","rhssaf_vest_md99_digital_rifleman",
			"rhssaf_vest_md99_woodland_rifleman_radio","rhssaf_vest_md99_md2camo_rifleman_radio","rhssaf_vest_md99_digital_rifleman_radio",
			//backpacks
			"rhssaf_kitbag_md2camo","rhssaf_alice_smb","rhssaf_alice_md2camo","rhsgref_hidf_alicepack","B_Kitbag_mcamo","B_Kitbag_rgr","B_Kitbag_cbr","B_Carryall_oli","B_Carryall_khk","B_Carryall_cbr",
			"B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_TacticalPack_blk","B_TacticalPack_rgr","B_TacticalPack_oli","B_MU_TacticalPack_cbr",
			//headgears
			"H_Booniehat_dgtl","H_Cap_red","rhssaf_booniehat_digital","rhssaf_bandana_oakleaf","rhssaf_bandana_digital","H_Booniehat_oli","H_Bandanna_camo",
			"H_Bandanna_sgg","H_Cap_grn","rhs_Booniehat_m81","rhs_beanie_green","rhs_fieldcap_vsr","rhssaf_bandana_smb","rhssaf_booniehat_md2camo",
			"H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk","H_Cap_tan","H_Bandanna_sand","H_Booniehat_tan",
			"CPC_JUN_fieldcap","H_Cap_oli","H_Cap_blk","H_Booniehat_khk","rhssaf_bandana_md2camo","H_Bandanna_khk","H_Bandanna_cbr","H_Bandanna_gry",
			//facewar
			"rhs_scarf","rhsusf_oakley_goggles_clr","rhsusf_shemagh2_tan","rhsusf_shemagh2_od","G_Bandanna_tan","G_Bandanna_oli","G_Bandanna_khk","G_Bandanna_blk","G_Aviator","CUP_FR_NeckScarf2","CUP_FR_NeckScarf","CUP_TK_NeckScarf","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black",
			//weapons
			"rhs_weap_MP44","rhs_weap_m38","rhs_weap_mg42","rhs_weap_m92","rhs_weap_m79","rhs_weap_m3a1","rhs_weap_m1garand_sa43","rhs_weap_kar98k","launch_O_Vorona_green_F","CUP_launch_M72A6","rhs_weap_panzerfaust60","rhs_weap_rshg2","rhs_weap_rpg26","rhs_weap_tt33","rhs_weap_makarov_pm","rhs_weap_akmn","rhs_weap_pm63","rhs_weap_akms","rhs_weap_akm","rhs_weap_pb_6p9","rhs_weap_svdp_wd","rhs_weap_akms_gp25","rhs_weap_akm_gp25","rhs_weap_m76","rhs_weap_pkm","CUP_launch_RPG7V","rhs_weap_rpg7","rhs_weap_rpg75",
			//weapon items
			"rhs_acc_1pn93_1","rhs_acc_tgpv","rhs_acc_pbs1","rhs_acc_ekp8_02","rhs_acc_6p9_suppressor","rhs_acc_pso1m2","rhs_acc_2dpzenit","cup_optic_pgo7v3","rhs_acc_pgo7v3","rhs_acc_dtkakm",
			//magazines
			"CUP_OG7_M","CUP_PG7VL_M","rhs_rpg7_type69_airburst_mag","rhs_rpg7_TBG7V_mag","rhs_rpg7_PG7VR_mag","rhs_rpg7_PG7VL_mag","rhs_rpg7_OG7V_mag","rhsgref_30Rnd_792x33_SmE_StG","rhsgref_5Rnd_762x54_m38","rhsgref_50Rnd_792x57_SmE_drum","rhs_mag_M441_HE","rhssaf_30Rnd_762x39mm_M67","rhsgref_30rnd_1143x23_M1911B_SMG","rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle","rhsgref_5Rnd_792x57_kar98k","Vorona_HEAT","rhs_mag_762x25_8","rhs_mag_9x18_8_57N181S","rhs_10Rnd_762x54mmR_7N1","rhs_VG40OP_white","rhs_GRD40_Red","rhs_VOG25","rhsgref_10Rnd_792x57_m76","rhs_100Rnd_762x54mmR_green","rhs_75Rnd_762x39mm","CUP_PG7V_M","rhs_rpg7_PG7V_mag","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm_bakelite",
			//grenades
			"rhs_mag_rgd5",
			//items
			"CUP_NVG_HMNVS"
		];
	};
	//TakINS
	case 14 : {
		_weap = "rhs_weap_akm";
		_gre = "CUP_HandGrenade_RGD5";
		_mag1 = "rhs_30Rnd_762x39mm";
		_mag2 = "CUP_10Rnd_762x54_SVD_M";
		_mag_ar = "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg26";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VL_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_OG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7V_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VL_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_OG7_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7V_M";
		};
		_arsenal_items_faction = [];
	};
	//SAF
	case 15 : {
		_weap = "rhs_weap_m21a";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhsgref_30rnd_556x45_m21";
		_mag2 = "rhsgref_10Rnd_792x57_m76";
		_mag_ar = "rhs_200rnd_556x45_M_SAW";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_m80";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VL_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_PG7VL_mag";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "CUP_Javelin_M";
		} else {
			_lat = "CUP_launch_M72A6";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VL_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_PG7VL_M";
			_hat = "CUP_launch_M47";
			_mag_hat = "CUP_Dragon_EP1_M";
		};
		_arsenal_items_faction = [];
	};
	//CDF
	case 16 : {
		_weap = "rhs_weap_m70b1n";
		_gre = "rhs_mag_rgd5";
		_mag1 = "rhs_30Rnd_762x39mm";
		_mag2 = "rhsgref_10Rnd_792x57_m76";
		_mag_ar = "rhs_100Rnd_762x54mmR_green";
		_mag_mg = "rhs_100Rnd_762x54mmR_green";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_rpg75";
			_at = "rhs_weap_rpg7_pgo";
			_mag_at1 = "rhs_rpg7_PG7VR_mag";
			_mag_at2 = "rhs_rpg7_OG7V_mag";
			_mag_at3 = "rhs_rpg7_TBG7V_mag";
			_hat = "rhs_weap_rpg7_pgo";
			_mag_hat = "rhs_rpg7_PG7VL_mag";
		} else {
			_lat = "CUP_launch_RPG18";
			_at = "CUP_launch_RPG7V_PGO7V3";
			_mag_at1 = "CUP_PG7VR_M";
			_mag_at2 = "CUP_OG7_M";
			_mag_at3 = "CUP_TBG7V_M";
			_hat = "CUP_launch_RPG7V_PGO7V3";
			_mag_hat = "CUP_PG7VL_M";
		};
		_arsenal_items_faction = [];
	};
	//PMC
	case 17 : {
		_weap = "rhs_weap_m4_carryhandle";
		_gre = "CUP_HandGrenade_M67";
		_mag1 = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		_mag2 = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
		_mag_ar = "rhs_200rnd_556x45_M_SAW";
		_mag_mg = "rhsusf_50Rnd_762x51";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [];
	};
	//FR
	case 18 : {
		_weap = "rhs_weap_hk416d145";
		_gre = "HandGrenade";
		_mag1 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		_mag2 = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
		_mag_ar = "rhs_200rnd_556x45_M_SAW";
		_mag_mg = "rhsusf_100Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_M136";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M136";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_M47";
			_mag_hat = "CUP_Dragon_EP1_M";
		};
		_arsenal_items_faction = [];
	};
	// armée occident
	case 19 : {
		_weap = "rhs_weap_vhsd2_ct15x";
		_gre = "HandGrenade";
		_mag1 = "rhsgref_30rnd_556x45_vhs2";
		_mag2 = "rhsgref_30rnd_556x45_vhs2_t";
		_mag_ar = "rhsusf_200rnd_556x45_mixed_box";
		_mag_mg = "rhsusf_100Rnd_762x51_m62_tracer";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_m72a7";
			_at = "rhs_weap_smaw_gr_optic";
			_mag_at1 = "rhs_mag_smaw_HEAA";
			_mag_at2 = "rhs_mag_smaw_HEDP";
			_mag_at3 = "rhs_mag_smaw_SR";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M72A6";
			_at = "CUP_launch_Mk153Mod0_SMAWOptics";
			_mag_at1 = "CUP_SMAW_HEAA_M";
			_mag_at2 = "CUP_SMAW_HEDP_M";
			_mag_at3 = "CUP_SMAW_Spotting";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [
			//uniforms
			"rhsgref_uniform_olive","rhsgref_uniform_og107","rhsgref_uniform_dpm","rhsgref_uniform_altis_lizard","rhsgref_uniform_ERDL","rhsgref_uniform_woodland","rhsgref_uniform_3color_desert",
			//vests
			"rhsgref_alice_webbing","rhsgref_otv_khaki","rhssaf_vest_otv_md2camo","rhssaf_vest_md98_md2camo","V_TacVest_oli","V_TacVest_khk","V_TacVest_blk","V_TacVest_camo",
			//backpacks
			"B_Carryall_khk","B_FieldPack_khk","B_Carryall_oli","B_FieldPack_oli","B_Carryall_cbr","B_FieldPack_cbr",
			//headgears
			"rhsgref_helmet_pasgt_olive","rhsusf_protech_helmet_rhino","rhsusf_cvc_green_alt_helmet","rhsusf_hgu56p","rhssaf_beret_green","rhsgref_helmet_pasgt_altis_lizard","H_Booniehat_khk","rhsgref_helmet_pasgt_woodland_rhino","H_Booniehat_oli","rhsgref_helmet_pasgt_3color_desert_rhino","H_Booniehat_tan","rhsgref_helmet_pasgt_erdl_rhino",
			//facewar
			"rhs_ess_black","rhsusf_oakley_goggles_clr","rhs_googles_black","rhsusf_shemagh_od","rhsusf_shemagh2_od","rhsusf_shemagh_gogg_od","rhsusf_shemagh2_gogg_od","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn","rhsusf_shemagh_tan","rhsusf_shemagh2_tan","rhsusf_shemagh_gogg_tan","rhsusf_shemagh2_gogg_tan",
			//weapons
			"rhs_weap_fgm148","rhsusf_weap_m1911a1","rhs_weap_m40a5","rhs_weap_sr25","rhs_weap_m240B","rhs_weap_m249_pip_L_para","CUP_launch_Mk153Mod0","CUP_launch_M72A6","rhs_weap_smaw_green","rhs_weap_m72a7","rhs_weap_vhsd2","rhs_weap_vhsd2_ct15x","rhs_weap_vhsd2_bg","rhs_weap_vhsd2_bg_ct15x","rhs_weap_vhsk2",
			//weapon items
			"rhsusf_acc_eotech_552","rhsusf_acc_acog","rhsusf_acc_t1_high","rhsusf_acc_grip3","rhsusf_acc_nt4_black","cup_optic_smaw_scope","rhs_weap_optic_smaw","rhsusf_acc_wmx_bk","rhsusf_acc_acog_rmr","rhsusf_acc_anpeq16a","rhsusf_acc_harris_swivel","rhsusf_acc_LEUPOLDMK4","rhsusf_acc_anpeq15side_bk","bipod_02_F_blk","rhsusf_acc_ACOG3","rhsusf_acc_ELCAN","rhsusf_acc_compm4",
			//magazines
			"rhsusf_100Rnd_556x45_mixed_soft_pouch","rhs_mag_M585_white","rhs_mag_m713_Red","rhs_mag_M433_HEDP","rhsusf_5Rnd_762x51_AICS_m118_special_Mag","rhsusf_mag_7x45acp_MHP","CUP_Javelin_M","CUP_SMAW_Spotting","CUP_SMAW_HEDP_M","CUP_SMAW_HEAA_M","rhs_fgm148_magazine_AT","rhs_mag_smaw_SR","rhs_mag_smaw_HEDP","rhs_mag_smaw_HEAA","rhsusf_100Rnd_762x51_m62_tracer","rhsusf_200rnd_556x45_mixed_box","rhsgref_30rnd_556x45_vhs2_t","rhsgref_30rnd_556x45_vhs2",
			//grenades
			"rhs_mag_m67",
			//items
			"NVGoggles_OPFOR","rhsusf_ANPVS_14","Laserbatteries","Laserdesignator_01_khk_F"
		];
	};
	//US 80s
	case 20 : {
		_weap = "CUP_arifle_M16A1";
		_gre = "CUP_HandGrenade_M67";
		_mag1 = "CUP_20Rnd_556x45_Stanag";
		_mag2 = "20Rnd_762x51_Mag";
		_mag_ar = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
		_mag_mg = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
		if (cc_rhsennemy) then {
			_lat = "rhs_weap_m72a7";
			_at = "rhs_weap_maaws_optic";
			_mag_at1 = "rhs_mag_maaws_HEAT";
			_mag_at2 = "rhs_mag_maaws_HEDP";
			_mag_at3 = "rhs_mag_maaws_HEAT";
			_hat = "rhs_weap_fgm148";
			_mag_hat = "rhs_fgm148_magazine_AT";
		} else {
			_lat = "CUP_launch_M72A6";
			_at = "CUP_launch_MAAWS_Scope";
			_mag_at1 = "CUP_MAAWS_HEAT_M";
			_mag_at2 = "CUP_MAAWS_HEDP_M";
			_mag_at3 = "CUP_MAAWS_HEAT_M";
			_hat = "CUP_launch_Javelin";
			_mag_hat = "CUP_Javelin_M";
		};
		_arsenal_items_faction = [];
	};
};

cc_ArrayMagFaction = [_gre,_mag1,_mag2,_mag_ar,_mag_mg,_mag_at1,_mag_at2,_mag_at3,_mag_hat];
publicVariable "cc_ArrayMagFaction";
cc_ArrayATFaction = [_weap,_lat,_at,_hat];
publicVariable "cc_ArrayATFaction";

if (CC_p_ammocrate == 0) exitWith {};
waitUntil {time > 1};

_pos = markerpos "Mark_inser";
_pos = [_pos, 0, 30, 3, 0] call BIS_fnc_findSafePos;
_veh = "CUP_USBasicWeapons_EP1" createVehicle _pos;
_veh allowdamage false;

clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

///Weapons///
_veh addWeaponCargoGlobal ["Laserdesignator", 1];
_veh addWeaponCargoGlobal ["Binocular", 3];
_veh addWeaponCargoGlobal ["ACE_Vector", 3];
_veh addWeaponCargoGlobal [_lat, 3];
_veh addWeaponCargoGlobal [_at, 1];
_veh addWeaponCargoGlobal [_hat, 1];

///AMMO///
_veh addMagazineCargoGlobal ["smokeshell", 10];
_veh addMagazineCargoGlobal ["smokeshellBlue", 10];
_veh addMagazineCargoGlobal ["ACE_HandFlare_Red", 10];
_veh addMagazineCargoGlobal ["ACE_HandFlare_Green", 10];
_veh addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 1];
_veh addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 2];
_veh addMagazineCargoGlobal ["Laserbatteries", 1];
_veh addMagazineCargoGlobal ["Laserbatteries", 1];
_veh addMagazineCargoGlobal ["Laserbatteries", 1];
_veh addMagazineCargoGlobal [_gre, 10];
_veh addMagazineCargoGlobal [_mag1, 10];
_veh addMagazineCargoGlobal [_mag2, 10];
_veh addMagazineCargoGlobal [_mag_ar, 5];
_veh addMagazineCargoGlobal [_mag_mg, 5];
_veh addMagazineCargoGlobal [_mag_at1, 2];
_veh addMagazineCargoGlobal [_mag_at2, 2];
_veh addMagazineCargoGlobal [_mag_at3, 1];
_veh addMagazineCargoGlobal [_mag_hat, 5];

///Else///
_veh addItemCargoGlobal ["ACE_EntrenchingTool",4];
_veh addItemCargoGlobal ["ACE_microDAGR",4];
_veh addItemCargoGlobal ["ACE_wirecutter",1];
_veh addItemCargoGlobal ["ACE_DefusalKit",1];
_veh addItemCargoGlobal ["ACE_M26_Clacker",1];
_veh addItemCargoGlobal ["ACRE_PRC117F",2];
_veh addItemCargoGlobal ["ACRE_PRC148",4];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",2];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",2];

///Backpack///
_veh addBackpackCargoGlobal ["B_Carryall_khk",1];
_veh addBackpackCargoGlobal ["B_Carryall_cbr",1];
_veh addBackpackCargoGlobal ["B_Carryall_oli",1];
_veh addBackpackCargoGlobal ["B_AssaultPack_rgr",1];
_veh addBackpackCargoGlobal ["B_Kitbag_rgr",1];
_veh addBackpackCargoGlobal ["B_rhsusf_B_BACKPACK",1];

// Flares sur la caisse :
if (cc_night) then {
	_dir = random 360;
	_pos = (getpos _veh) getpos [2,_dir];
	"ACE_G_Chemlight_HiOrange_Infinite" createvehicle _pos;
	_pos = (getpos _veh) getpos [2,(_dir+120)];
	"ACE_G_Chemlight_HiOrange_Infinite" createvehicle _pos;
	_pos = (getpos _veh) getpos [2,(_dir+240)];
	"ACE_G_Chemlight_HiOrange_Infinite" createvehicle _pos;
};

if (CC_p_ammocrate < 2) exitWith {};

_arsenal_items_base = [
	//essentiels
	"ItemCompass","ItemWatch","ACE_Altimeter","ItemMap","ACE_EarPlugs","ACE_CableTie","ACE_Flashlight_MX991","ACE_Flashlight_KSF1","ACE_Flashlight_XL50",
	//grenades
	"ACE_HandFlare_White","ACE_HandFlare_Red","ACE_HandFlare_Green","ACE_HandFlare_Yellow","SmokeShellOrange","SmokeShellPurple","SmokeShellYellow","SmokeShellGreen","SmokeShellRed","SmokeShell",
	//explosifs
	"CUP_PipeBomb_M","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag",
	//soin
	"ACE_quikclot","ACE_elasticBandage","ACE_fieldDressing","ACE_packingBandage","ACE_epinephrine","ACE_morphine","ACE_tourniquet","ACE_salineIV_500","ACE_salineIV_250","ACE_salineIV","ACE_personalAidKit","ACE_surgicalKit",
	//jumelles
	"ACE_Vector","Laserbatteries","Laserdesignator_01_khk_F","Rangefinder","Binocular",
	//Radios
	"ACRE_PRC343","ACRE_PRC148","ACRE_PRC117F",
	//divers
	"ToolKit","ACE_wirecutter","ACE_SpraypaintBlack","ACE_SpraypaintRed","ACE_SpraypaintGreen","ACE_SpraypaintBlue","ACE_EntrenchingTool","ACE_DefusalKit","ACE_M26_Clacker","ACE_Clacker","ACE_ATragMX","ACE_Kestrel4500","ACE_microDAGR","ACE_RangeCard","ACE_MapTools","ACE_IR_Strobe_Item","C_UavTerminal","B_UavTerminal","O_UavTerminal","I_UavTerminal",
	//facewear
	"G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Shades_Black"
];

switch (CC_p_ammocrate) do {
	case 2 : {[_veh,(_arsenal_items_faction + _arsenal_items_base)] call ace_arsenal_fnc_initBox;};
	case 3 : {[_veh,true] call ace_arsenal_fnc_initBox;};
	default {[_veh,true] call ace_arsenal_fnc_initBox;};
};