class CC_ennemy
{
	class cc_faction_army
	{
		faction_type = 0;
		faction_is_rhs = 0;
	};
	class cc_faction_ins
	{
		faction_type = 1;
		faction_is_rhs = 0;
	};
	class nato : cc_faction_army
	{
		class polyvalent
		{
			r = "B_Soldier_F";
			tl = "B_Soldier_SL_F";
			gl = "B_Soldier_GL_F";
			lat = "B_soldier_LAT2_F";
			at = "B_soldier_AT_F";
			mg = "B_soldier_AR_F";
			m = "B_soldier_M_F";
			aa = "B_soldier_AA_F";
			crew = "B_crew_F";
			veharray_light[] = {"B_LSV_01_armed_F","B_LSV_01_armed_F"};
			veharray_medium[] = {"B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","MU_NATO_Strider_GMG","MU_NATO_Strider_HMG","B_APC_Wheeled_01_cannon_F"};
			veharray_heavy[] = {"MU_NATO_Gorgon","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_AFV_Wheeled_01_up_cannon_F","B_MBT_01_cannon_F","B_MBT_01_TUSK_F"};
			veharray_transport[] = {"B_Truck_01_covered_F","B_Truck_01_transport_F"};
			veharray_heli[] = {"B_Heli_Transport_01_F","B_Heli_Transport_03_unarmed_F"};
			veharray_air[] = {"B_Heli_Light_01_dynamicLoadout_F","B_Heli_Attack_01_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F"};
			veharray_aa[] = {"B_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T"};
			hmg = "B_HMG_01_high_F";
			pilot = "B_Helipilot_F";
			plane = "B_T_VTOL_01_infantry_F";
		};
		class woodland: polyvalent
		{
			r = "B_W_Soldier_F";
			tl = "B_W_Soldier_SL_F";
			gl = "B_W_Soldier_GL_F";
			lat = "B_W_Soldier_LAT2_F";
			at = "B_W_Soldier_AT_F";
			mg = "B_W_Soldier_AR_F";
			m = "B_W_soldier_M_F";
			aa = "B_W_Soldier_AA_F";
			crew = "B_W_Crew_F";
			pilot = "B_W_Helipilot_F";
		};
		class desert: polyvalent {};
		class jungle: woodland
		{
			r = "B_T_Soldier_F";
			tl = "B_T_Soldier_SL_F";
			gl = "B_T_Soldier_GL_F";
			lat = "B_T_soldier_LAT2_F";
			at = "B_T_soldier_AT_F";
			mg = "B_T_soldier_AR_F";
			m = "B_T_soldier_M_F";
			aa = "B_T_Soldier_AA_F";
			crew = "B_T_Crew_F";
			veharray_light[] = {"B_T_LSV_01_armed_F","B_T_LSV_01_armed_F"};
			veharray_medium[] = {"B_T_MRAP_01_hmg_F","B_T_MRAP_01_gmg_F","B_T_APC_Wheeled_01_cannon_F"};
			veharray_heavy[] = {"B_T_APC_Wheeled_01_cannon_F","B_T_APC_Tracked_01_rcws_F","B_T_AFV_Wheeled_01_up_cannon_F","B_T_MBT_01_cannon_F","B_T_MBT_01_TUSK_F"};
			veharray_transport[] = {"B_T_Truck_01_transport_F","B_T_Truck_01_covered_F"};
			veharray_heli[] = {"B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Transport_03_unarmed_F"};
			veharray_air[] = {"B_Heli_Light_01_dynamicLoadout_F","B_Heli_Attack_01_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F"};
			veharray_aa[] = {"B_T_APC_Tracked_01_AA_F","CUP_B_HMMWV_Avenger_NATO_T"};
			pilot = "B_T_Helipilot_F";
		};
		class winter: woodland
		{
			r = "B_MU_CTRG_R_F";
			tl = "B_MU_CTRG_TL_F";
			gl = "B_MU_CTRG_GL_F";
			lat = "B_MU_CTRG_LAT_F";
			at = "B_MU_CTRG_AT_F";
			mg = "B_MU_CTRG_AR_F";
			m = "B_MU_CTRG_M_F";
			aa = "B_MU_CTRG_AA_F";
			veharray_air[] = {"MU_CTRG_pawnee","B_Heli_Attack_01_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F"};
			pilot = "B_MU_CTRG_helipilot_F";
		};
	};
	class csat: cc_faction_army
	{
		class polyvalent
		{
			r = "O_Soldier_F";
			tl = "O_Soldier_SL_F";
			gl = "O_Soldier_GL_F";
			lat = "O_Soldier_LAT_F";
			at = "O_Soldier_HAT_F";
			mg = "O_Soldier_AR_F";
			m = "O_soldier_M_F";
			aa = "O_Soldier_AA_F";
			crew = "O_crew_F";
			veharray_light[] = {"O_LSV_02_armed_F"};
			veharray_medium[] = {"O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","O_APC_Wheeled_02_rcws_v2_F"};
			veharray_heavy[] = {"O_APC_Tracked_02_cannon_F","O_MBT_02_cannon_F","O_MBT_04_cannon_F"};
			veharray_transport[] = {"O_Truck_02_transport_F","O_Truck_02_covered_F","O_Truck_03_covered_F"};
			veharray_heli[] = {"O_Heli_Transport_04_box_F","O_Heli_Light_02_unarmed_F"};
			veharray_air[] = {"O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F"};
			veharray_aa[] = {"O_APC_Tracked_02_AA_F","CUP_O_ZSU23_CSAT"};
			hmg = "O_HMG_01_high_F";
			pilot = "O_helipilot_F";
			plane = "O_T_VTOL_02_infantry_dynamicLoadout_F";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland
		{
			r = "O_T_Soldier_F";
			tl = "O_T_Soldier_SL_F";
			gl = "O_T_Soldier_GL_F";
			lat = "O_T_Soldier_LAT_F";
			at = "O_T_Soldier_HAT_F";
			mg = "O_T_Soldier_AR_F";
			m = "O_T_Soldier_M_F";
			aa = "O_T_Soldier_AA_F";
			crew = "O_T_Crew_F";
			veharray_light[] = {"O_T_LSV_02_armed_F"};
			veharray_medium[] = {"O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","O_T_APC_Wheeled_02_rcws_v2_ghex_F"};
			veharray_heavy[] = {"O_T_APC_Tracked_02_cannon_ghex_F","O_T_MBT_02_cannon_ghex_F","O_T_MBT_04_cannon_F"};
			veharray_transport[] = {"O_T_Truck_03_covered_ghex_F","O_T_Truck_03_transport_ghex_F"};
			veharray_heli[] = {"O_Heli_Transport_04_box_F","O_Heli_Light_02_unarmed_F"};
			veharray_air[] = {"O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F","O_T_VTOL_02_infantry_dynamicLoadout_F"};
			veharray_aa[] = {"O_T_APC_Tracked_02_AA_ghex_F"};
			pilot = "O_T_Helipilot_F";
		};
		class winter: woodland {
			r = "O_soldierU_F";
			tl = "O_SoldierU_SL_F";
			gl = "O_SoldierU_GL_F";
			lat = "O_soldierU_LAT_F";
			at = "O_soldierU_AT_F";
			mg = "O_soldierU_AR_F";
			m = "O_soldierU_M_F";
			aa = "O_soldierU_AA_F";
		};
	};
	class fia: cc_faction_ins
	{
		class polyvalent
		{
			r = "O_G_Soldier_F";
			tl = "O_G_Soldier_SL_F";
			gl = "O_G_Soldier_GL_F";
			lat = "O_G_Soldier_LAT2_F";
			at = "O_G_Soldier_LAT_F";
			mg = "O_G_Soldier_AR_F";
			m = "O_G_Soldier_M_F";
			aa = "I_MU_mercs_AA_F";
			crew = "O_G_Soldier_F";
			veharray_light[] = {"O_G_Offroad_01_armed_F","I_C_Offroad_02_LMG_F"};
			veharray_medium[] = {"CUP_B_MTLB_pk_FIA","CUP_B_BTR60_FIA"};
			veharray_heavy[] = {"O_G_Offroad_01_AT_F","I_C_Offroad_02_AT_F","CUP_B_MTLB_pk_FIA","CUP_B_BTR60_FIA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"O_G_Van_02_transport_F","O_G_Van_01_transport_F"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"O_G_Offroad_01_armed_F"};
			hmg = "O_HMG_01_high_F";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent 
		{
			r = "O_MU_LIVP_soldier_r1";
			tl = "O_MU_LIVP_soldier_tl";
			gl = "O_MU_LIVP_soldier_gl";
			lat = "O_MU_LIVP_soldier_at";
			at = "O_MU_LIVP_soldier_at";
			mg = "O_MU_LIVP_soldier_ar";
			m = "O_MU_LIVP_soldier_m";
			aa = "O_MU_LIVP_soldier_aa";
			crew = "O_MU_LIVP_soldier_r2";
			veharray_light[] = {"O_MU_LIVP_offroad_armed","O_MU_LIVP_jeep_armed"};
			veharray_heavy[] = {"O_MU_LIVP_offroad_AT","O_MU_LIVP_jeep_AT","CUP_B_MTLB_pk_FIA","CUP_B_BTR60_FIA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"O_MU_LIVP_kamaz_covered","O_MU_LIVP_kamaz_covered","O_MU_LIVP_truck","O_MU_LIVP_van_transport"};
			veharray_aa[] = {"O_MU_LIVP_offroad_armed"};
		};
		class desert: polyvalent
		{
			r = "O_MU_islam_R1_F";
			tl = "O_MU_islam_SL_F";
			gl = "O_MU_islam_GL_F";
			lat = "O_MU_islam_AT_F";
			at = "O_MU_islam_HAT";
			mg = "O_MU_islam_AR_F";
			m = "O_MU_islam_M_F";
			aa = "O_MU_islam_AA_F";
			crew = "O_MU_islam_R1_F";
			veharray_light[] = {"O_MU_islam_Offroad_01_armed_F","O_MU_IS_Jeep_MG"};
			veharray_medium[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"O_MU_islam_Offroad_01_armed_F","O_MU_IS_Jeep_MG","CUP_I_MTLB_pk_NAPA","CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"O_MU_islam_Van_01_F","O_MU_islam_Van_01_F"};
			veharray_aa[] = {"O_MU_islam_Offroad_01_armed_F"};
		};
		class jungle: woodland
		{
			r = "I_C_Soldier_Para_7_F";
			tl = "I_C_Soldier_Para_2_F";
			gl = "I_C_Soldier_Para_6_F";
			lat = "I_C_Soldier_Para_5_F";
			at = "I_C_Soldier_Para_5_F";
			mg = "I_C_Soldier_Para_4_F";
			m = "I_C_Soldier_Para_1_F";
			aa = "O_MU_islam_AA_F";
			crew = "I_C_Soldier_Para_7_F";
			veharray_medium[] = {"CUP_I_MTLB_pk_SYNDIKAT","CUP_I_MTLB_pk_SYNDIKAT"};
			veharray_heavy[] = {"O_G_Offroad_01_AT_F","I_C_Offroad_02_AT_F","CUP_I_MTLB_pk_SYNDIKAT","CUP_I_MTLB_pk_SYNDIKAT","CUP_I_T55_NAPA"};
		};
		class winter: woodland {};
	};
	class aaf: cc_faction_army
	{
		class polyvalent
		{
			r = "I_soldier_F";
			tl = "I_Soldier_SL_F";
			gl = "I_Soldier_GL_F";
			lat = "I_Soldier_LAT2_F";
			at = "I_Soldier_AT_F";
			mg = "I_Soldier_AR_F";
			m = "I_Soldier_M_F";
			aa = "I_Soldier_AA_F";
			crew = "I_crew_F";
			veharray_light[] = {"CUP_I_LR_MG_AAF","CUP_I_LR_MG_AAF"};
			veharray_medium[] = {"I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","CUP_I_M113_AAF","I_LT_01_cannon_F"};
			veharray_heavy[] = {"I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_LT_01_AT_F","I_MBT_03_cannon_F"};
			veharray_transport[] = {"I_Truck_02_covered_F","I_Truck_02_transport_F","CUP_I_LR_Transport_AAF"};
			veharray_heli[] = {"I_Heli_Transport_02_F","MU_AAF_Orca_unarmed","I_Heli_light_03_unarmed_F"};
			veharray_air[] = {"CUP_I_AH1Z_Dynamic_AAF","MU_AAF_pawnee","I_Heli_light_03_dynamicLoadout_F","CUP_I_Mi24_Mk4_AAF","I_Plane_Fighter_03_dynamicLoadout_F","CUP_I_AV8B_DYN_AAF"};
			veharray_aa[] = {"I_LT_01_AA_F","CUP_I_M163_AAF","CUP_I_ZSU23_AAF"};
			hmg = "I_HMG_01_high_F";
			pilot = "I_helipilot_F";
			plane = "CUP_I_C130J_AAF";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ldf: cc_faction_army
	{
		class polyvalent
		{
			r = "I_E_Soldier_F";
			tl = "I_E_Soldier_SL_F";
			gl = "I_E_Soldier_GL_F";
			lat = "I_E_Soldier_LAT2_F";
			at = "I_E_Soldier_AT_F";
			mg = "I_E_Soldier_AR_F";
			m = "I_E_soldier_M_F";
			aa = "I_E_Soldier_AA_F";
			crew = "I_E_Crew_F";
			veharray_light[] = {"I_G_Offroad_01_armed_F","I_G_Offroad_01_armed_F"};
			veharray_medium[] = {"I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","CUP_I_M113_AAF","I_LT_01_cannon_F"};
			veharray_heavy[] = {"I_E_APC_tracked_03_cannon_F"};
			veharray_transport[] = {"I_Truck_02_covered_F","I_Truck_02_transport_F","CUP_I_LR_Transport_AAF"};
			veharray_heli[] = {"I_E_Heli_light_03_unarmed_F"};
			veharray_air[] = {"I_E_Heli_light_03_dynamicLoadout_F","I_E_Heli_light_03_dynamicLoadout_F","I_E_Heli_light_03_dynamicLoadout_F","I_Plane_Fighter_03_dynamicLoadout_F"};
			veharray_aa[] = {"I_LT_01_AA_F"};
			hmg = "I_E_HMG_01_high_F";
			pilot = "I_E_Helipilot_F";
			plane = "CUP_I_C130J_AAF"; // placeholder
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ru_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "rhs_vmf_flora_rifleman";
			tl = "rhs_vmf_flora_sergeant";
			gl = "rhs_vmf_flora_grenadier";
			lat = "rhs_vmf_flora_LAT";
			at = "rhs_vmf_flora_at";
			mg = "rhs_vmf_flora_machinegunner";
			m = "rhs_vmf_flora_marksman";
			aa = "rhs_vmf_flora_aa";
			crew = "rhs_vmf_flora_combatcrew";
			veharray_light[] = {"rhs_tigr_sts_vmf","rhs_tigr_sts_3camo_vmf"};
			veharray_medium[] = {"rhsgref_BRDM2_vmf","rhs_btr70_vmf","rhs_btr80_vmf"};
			veharray_heavy[] = {"rhs_btr80a_vmf","rhs_bmp2_vmf","rhs_bmp2d_vmf","rhs_t72bd_tv","rhs_t80bv","rhs_t90_tv"};
			veharray_transport[] = {"rhs_kamaz5350_vmf","RHS_Ural_VMF_01","rhs_zil131_vmf"};
			veharray_heli[] = {"RHS_Mi8mt_vvsc","RHS_Mi8mt_vvs"};
			veharray_air[] = {"rhs_mi28n_vvsc","RHS_Ka52_vvsc","RHS_Mi24P_vvsc","RHS_Mi24V_vvsc","RHS_Su25SM_vvs"};
			veharray_aa[] = {"rhs_zsu234_aa"};
			hmg = "RHS_NSV_TriPod_VMF";
			pilot = "rhs_pilot_combat_heli";
			plane = "RHS_C130J";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "rhs_vdv_des_rifleman";
			tl = "rhs_vdv_des_sergeant";
			gl = "rhs_vdv_des_grenadier";
			lat = "rhs_vdv_des_LAT";
			at = "rhs_vdv_des_at";
			mg = "rhs_vdv_des_arifleman";
			m = "rhs_vdv_des_marksman";
			aa = "rhs_vdv_des_aa";
			crew = "rhs_vdv_des_combatcrew";
			veharray_light[] = {"rhs_tigr_sts_3camo_vdv"};
			veharray_medium[] = {"rhsgref_BRDM2_vdv","rhs_btr70_vdv","rhs_btr80_vdv"};
			veharray_heavy[] = {"rhs_btr80a_vdv","rhs_bmd4_vdv","rhs_bmp2d_vdv","rhs_t72bd_tv","rhs_t80bv","rhs_t90_tv"};
			veharray_transport[] = {"rhs_kamaz5350_vdv","RHS_Ural_VDV_01"};
			veharray_heli[] = {"RHS_Mi8mt_vdv"};
			veharray_air[] = {"RHS_Mi24P_vdv","RHS_Mi24V_vdv","RHS_Ka52_vvsc","rhs_mi28n_vvsc","RHS_Su25SM_vvsc"};
			veharray_aa[] = {"rhs_zsu234_aa"};
			hmg = "rhs_KORD_VDV";
		};
		class jungle: woodland {};
		class winter: woodland
		{
			r = "rhs_vmf_recon_rifleman";
			tl = "rhs_vmf_recon_sergeant";
			gl = "rhs_vmf_recon_grenadier";
			lat = "rhs_vmf_recon_rifleman_lat";
			mg = "rhs_vmf_recon_arifleman";
			m = "rhs_vmf_recon_marksman";
			veharray_heli[] = {"RHS_Mi8mt_vvs"};
			veharray_air[] = {"rhs_mi28n_vvs","RHS_Ka52_vvs","RHS_Mi24P_vvs","RHS_Mi24V_vvs","RHS_Su25SM_vvs"};
		};
	};
	class us_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "rhsusf_army_ucp_rifleman";
			tl = "rhsusf_army_ucp_teamleader";
			gl = "rhsusf_army_ucp_grenadier";
			lat = "rhsusf_army_ucp_riflemanat";
			at = "rhsusf_army_ucp_maaws";
			mg = "rhsusf_army_ucp_autorifleman";
			m = "rhsusf_army_ucp_marksman";
			aa = "rhsusf_army_ucp_aa";
			crew = "rhsusf_army_ucp_combatcrewman";
			veharray_light[] = {"rhsusf_m1151_m2_v1_usarmy_wd","rhsusf_m1151_m240_v1_usarmy_wd","rhsusf_m1240a1_m2_usarmy_wd","rhsusf_m1151_mk19_v1_usarmy_wd"};
			veharray_medium[] = {"rhsusf_M1117_W","rhsusf_m113_usarmy","rhsusf_stryker_m1126_m2_wd","rhsusf_M1220_M153_MK19_usarmy_wd"};
			veharray_heavy[] = {"RHS_M2A3_wd","RHS_M2A3_BUSKIII_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy"};
			veharray_transport[] = {"rhsusf_M1078A1P2_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_fmtv_usarmy"};
			veharray_heli[] = {"RHS_UH60M","RHS_CH_47F"};
			veharray_air[] = {"RHS_AH64D_wd","RHS_UH1Y_FFAR_d","RHS_AH1Z","RHS_A10"};
			veharray_aa[] = {"RHS_M6_wd"};
			hmg = "RHS_M2StaticMG_MiniTripod_D";
			pilot = "rhsusf_army_ucp_helipilot";
			plane = "RHS_C130J";
		};
		class woodland: polyvalent
		{
			r = "rhsusf_usmc_marpat_wd_rifleman";
			tl = "rhsusf_usmc_marpat_wd_squadleader";
			gl = "rhsusf_usmc_marpat_wd_grenadier";
			lat = "rhsusf_usmc_marpat_wd_riflemanat";
			at = "rhsusf_usmc_marpat_wd_smaw";
			mg = "rhsusf_usmc_marpat_wd_autorifleman_m249";
			m = "rhsusf_usmc_marpat_wd_marksman";
			aa = "rhsusf_usmc_marpat_wd_stinger";
			crew = "rhsusf_usmc_marpat_wd_crewman";
		};
		class desert: polyvalent
		{
			r = "rhsusf_usmc_marpat_d_rifleman";
			tl = "rhsusf_usmc_marpat_d_squadleader";
			gl = "rhsusf_usmc_marpat_d_grenadier";
			lat = "rhsusf_usmc_marpat_d_riflemanat";
			at = "rhsusf_usmc_marpat_d_smaw";
			mg = "rhsusf_usmc_marpat_d_autorifleman_m249";
			m = "rhsusf_usmc_marpat_d_marksman";
			aa = "rhsusf_usmc_marpat_d_stinger";
			crew = "rhsusf_usmc_marpat_d_combatcrewman";
			veharray_light[] = {"rhsusf_m1151_m2_v2_usarmy_d","rhsusf_m1151_m240_v2_usarmy_d","rhsusf_m1240a1_m2_uik_usarmy_d","rhsusf_m1151_mk19_v2_usarmy_d"};
			veharray_medium[] = {"rhsusf_M1117_D","rhsusf_m113d_usarmy","rhsusf_stryker_m1126_m2_d","rhsusf_M1220_M153_MK19_usarmy_d"};
			veharray_heavy[] = {"RHS_M2A3","RHS_M2A3_BUSKIII","rhsusf_m1a1aimd_usarmy","rhsusf_m1a2sep1tuskiid_usarmy"};
			veharray_transport[] = {"rhsusf_M1078A1P2_D_fmtv_usarmy","rhsusf_M1078A1P2_B_D_fmtv_usarmy","rhsusf_M1083A1P2_D_fmtv_usarmy","rhsusf_M1083A1P2_B_D_fmtv_usarmy"};
			veharray_aa[] = {"RHS_M6"};
		};
		class jungle: woodland {};
		class winter: woodland
		{
			r = "rhsusf_army_ucp_rifleman";
			tl = "rhsusf_army_ucp_teamleader";
			gl = "rhsusf_army_ucp_grenadier";
			lat = "rhsusf_army_ucp_riflemanat";
			at = "rhsusf_army_ucp_maaws";
			mg = "rhsusf_army_ucp_autorifleman";
			m = "rhsusf_army_ucp_marksman";
			aa = "rhsusf_army_ucp_aa";
			crew = "rhsusf_army_ucp_combatcrewman";
		};
	};
	class saf_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "rhssaf_army_m10_digital_rifleman_m21";
			tl = "rhssaf_army_m10_digital_ft_lead";
			gl = "rhssaf_army_m10_digital_gl";
			lat = "rhssaf_army_m10_digital_rifleman_at";
			at = "rhssaf_army_m10_digital_spec_at";
			mg = "rhssaf_army_m10_digital_mgun_m84";
			m = "rhssaf_army_m10_digital_sniper_m76";
			aa = "rhssaf_army_m10_digital_spec_aa";
			crew = "rhssaf_army_m10_digital_crew_armored";
			veharray_light[] = {"rhssaf_m1025_olive_m2"};
			veharray_medium[] = {"rhsgref_hidf_m113a3_m2"};
			veharray_heavy[] = {"rhssaf_army_t72s"};
			veharray_transport[] = {"rhssaf_army_ural","rhssaf_army_ural_open"};
			veharray_heli[] = {"rhssaf_airforce_ht48"};
			veharray_air[] = {"rhssaf_airforce_l_18","rhsgref_mi24g_CAS","rhsgref_cdf_Mi24D","rhsgref_cdf_Mi24D"};
			veharray_aa[] = {"rhs_zsu234_aa"};
			hmg = "rhssaf_army_nsv_tripod";
			pilot = "rhssaf_airforce_pilot_transport_heli";
			plane = "RHS_C130J";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "rhssaf_un_m10_digital_desert_rifleman_m21";
			tl = "rhssaf_un_m10_digital_desert_ft_lead";
			gl = "rhssaf_un_m10_digital_desert_gl";
			lat = "rhssaf_un_m10_digital_desert_rifleman_at";
			at = "rhssaf_un_m10_digital_desert_spec_at";
			mg = "rhssaf_un_m10_digital_desert_mgun_m84";
			m = "rhssaf_un_m10_digital_desert_sniper_m76";
			aa = "rhssaf_un_m10_digital_desert_spec_aa";
			veharray_transport[] = {"rhssaf_un_ural"};
		};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ins_rhs: cc_faction_ins
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "rhsgref_ins_rifleman_akm";
			tl = "rhsgref_ins_rifleman";
			gl = "rhsgref_ins_grenadier";
			lat = "rhsgref_ins_rifleman_RPG26";
			at = "rhsgref_ins_grenadier_rpg";
			mg = "rhsgref_ins_machinegunner";
			m = "rhsgref_ins_sniper";
			aa = "rhsgref_ins_specialist_aa";
			crew = "rhsgref_ins_crew";
			veharray_light[] = {"rhsgref_ins_uaz_dshkm","rhsgref_ins_uaz_dshkm","rhsgref_nat_uaz_dshkm","rhsgref_ins_uaz_ags"};
			veharray_medium[] = {"rhsgref_BRDM2_ins","rhsgref_ins_btr60","rhsgref_ins_btr70","rhsgref_ins_bmd1","rhsgref_ins_bmp1"};
			veharray_heavy[] = {"rhsgref_ins_bmd2","rhsgref_ins_bmp2e","rhsgref_ins_t72ba","rhsgref_ins_t72bb"};
			veharray_transport[] = {"rhsgref_ins_gaz66","rhsgref_ins_gaz66o","rhsgref_ins_ural","rhsgref_ins_ural_open","rhsgref_ins_kraz255b1_flatbed"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"rhsgref_ins_ural_Zu23","rhsgref_ins_zsu234"};
			hmg = "rhsgref_ins_DSHKM_Mini_TriPod";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent
		{
			r = "rhsgref_nat_rifleman";
			tl = "rhsgref_nat_commander";
			gl = "rhsgref_nat_grenadier";
			at = "rhsgref_nat_grenadier_rpg";
			mg = "rhsgref_nat_machinegunner";
			m = "rhsgref_nat_hunter";
			aa = "rhsgref_nat_specialist_aa";
		};
		class desert: polyvalent
		{
			r = "CPC_ME_I_REB_soldier_3";
			tl = "CPC_ME_I_REB_soldier_TL";
			gl = "CPC_ME_I_REB_soldier_GL";
			lat = "CPC_ME_I_REB_soldier_LAT2";
			at = "CPC_ME_I_REB_soldier_AT";
			mg = "CPC_ME_I_REB_soldier_MG";
			m = "CPC_ME_I_REB_soldier_M";
			aa = "rhsgref_ins_g_specialist_aa"; // placeholder
			crew = "CPC_ME_I_REB_soldier_2";
			veharray_light[] = {"CPC_ME_I_REB_uaz_dshkm","CPC_ME_I_REB_uaz_dshkm","CPC_ME_I_REB_uaz_dshkm","CPC_ME_I_REB_uaz_spg9"};
			veharray_medium[] = {"rhsgref_nat_btr70","CPC_ME_I_REB_gaz66_zu23"};
			veharray_heavy[] = {"CPC_ME_O_KAM_T72B","CPC_ME_O_KAM_BMP1"};
			veharray_transport[] = {"CPC_ME_I_REB_gaz66o","CPC_ME_O_KAM_gaz66","CPC_ME_O_KAM_ural","CPC_ME_O_KAM_ural_open"};
			veharray_aa[] = {"CPC_ME_I_REB_gaz66_zu23"};
		};
		class jungle: woodland
		{
			r = "CPC_JUN_I_AGUE_soldier_1";
			tl = "CPC_JUN_I_AGUE_soldier_TL";
			gl = "CPC_JUN_I_AGUE_soldier_GL";
			lat = "CPC_JUN_I_AGUE_soldier_LAT";
			at = "CPC_JUN_I_AGUE_soldier_AT";
			mg = "CPC_JUN_I_AGUE_soldier_MG";
			m = "CPC_JUN_I_AGUE_soldier_M";
			aa = "rhsgref_nat_specialist_aa"; // placeholder
			crew = "CPC_JUN_I_AGUE_soldier_6";
			veharray_light[] = {"CPC_JUN_I_AGUE_uaz_dshkm","CPC_JUN_I_AGUE_uaz_dshkm","CPC_JUN_I_AGUE_uaz_dshkm","CPC_JUN_I_AGUE_uaz_spg9"};
			veharray_medium[] = {"rhsgref_nat_btr70","rhsgref_ins_btr60","rhsgref_BRDM2_ins"};
			veharray_heavy[] = {"rhsgref_ins_t72ba","rhsgref_ins_bmp1"};
			veharray_transport[] = {"CPC_JUN_I_AGUE_ural","CPC_JUN_I_AGUE_ural_open","CPC_JUN_I_AGUE_ural_worker","CPC_JUN_I_AGUE_ural_yellow","rhsgref_tla_kraz255b1_cargo_open","rhsgref_tla_kraz255b1_cargo_open"};
			veharray_aa[] = {"rhsgref_nat_ural_Zu23"};
		};
		class winter: woodland
		{
			r = "rhsgref_nat_pmil_rifleman_akm";
			tl = "rhsgref_nat_pmil_saboteur";
			gl = "rhsgref_nat_pmil_grenadier";
			lat = "rhsgref_ins_g_rifleman_RPG26";
			at = "rhsgref_nat_pmil_grenadier_rpg";
			mg = "rhsgref_nat_pmil_machinegunner";
			m = "rhsgref_nat_pmil_hunter";
			aa = "rhsgref_nat_specialist_aa";
			crew = "rhsgref_nat_pmil_rifleman";
			veharray_light[] = {"rhsgref_nat_uaz_dshkm","rhsgref_nat_uaz_dshkm","rhsgref_ins_uaz_dshkm","rhsgref_nat_uaz_ags"};
			veharray_medium[] = {"rhsgref_nat_btr70","rhsgref_ins_btr70","rhsgref_BRDM2_ins"};
			veharray_heavy[] = {"rhsgref_ins_t72ba","rhsgref_ins_bmp1","rhsgref_ins_bmd2"};
			veharray_transport[] = {"rhsgref_ins_ural","rhsgref_nat_ural","rhsgref_ins_gaz66"};
			veharray_aa[] = {"rhsgref_nat_ural_Zu23"};
		};
	};
	class cdf_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "rhsgref_cdf_reg_rifleman";
			tl = "rhsgref_cdf_reg_squadleader";
			gl = "rhsgref_cdf_reg_grenadier";
			lat = "rhsgref_cdf_reg_rifleman_rpg75";
			at = "rhsgref_cdf_reg_grenadier_rpg";
			mg = "rhsgref_cdf_reg_machinegunner";
			m = "rhsgref_cdf_reg_marksman";
			aa = "rhsgref_cdf_reg_specialist_aa";
			crew = "rhsgref_cdf_reg_crew";
			veharray_light[] = {"rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_ags"};
			veharray_medium[] = {"rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_cdf_bmd1p","rhsgref_cdf_bmp1"};
			veharray_heavy[] = {"rhsgref_cdf_bmp2","rhsgref_cdf_t80b_tv","rhsgref_cdf_t80bv_tv","rhsgref_cdf_t80b_tv"};
			veharray_transport[] = {"rhsgref_cdf_gaz66","rhsgref_cdf_gaz66o","rhsgref_cdf_ural","rhsgref_cdf_ural_open","rhsgref_cdf_zil131","rhsgref_cdf_zil131_open"};
			veharray_heli[] = {"rhsgref_cdf_reg_Mi8amt"};
			veharray_air[] = {"rhsgref_cdf_Mi24D","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh","rhsgref_cdf_su25"};
			veharray_aa[] = {"rhsgref_cdf_ural_Zu23","rhsgref_cdf_gaz66_zu23","rhsgref_cdf_zsu234"};
			hmg = "rhsgref_cdf_DSHKM_Mini_TriPod";
			pilot = "rhsgref_cdf_air_pilot";
			plane = "RHS_AN2";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class tak_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "CPC_ME_O_KAM_soldier_1";
			tl = "CPC_ME_O_KAM_soldier_TL";
			gl = "CPC_ME_O_KAM_soldier_GL";
			lat = "CPC_ME_O_KAM_soldier_LAT";
			at = "CPC_ME_O_KAM_soldier_AT";
			mg = "CPC_ME_O_KAM_soldier_MG";
			m = "CPC_ME_O_KAM_soldier_M";
			aa = "CPC_ME_O_KAM_soldier_AA";
			crew = "CPC_ME_O_KAM_soldier_crew";
			veharray_light[] = {"CPC_ME_O_KAM_uaz_dshkm","CPC_ME_O_KAM_uaz_dshkm","CPC_ME_O_KAM_uaz_dshkm","CPC_ME_O_KAM_uaz_ags"};
			veharray_medium[] = {"CPC_ME_O_KAM_BMP1","CPC_ME_O_KAM_BTR80","CPC_ME_O_KAM_BTR80"};
			veharray_heavy[] = {"CPC_ME_O_KAM_T72B","CPC_ME_O_KAM_T72B","CPC_ME_O_KAM_BMP1D"};
			veharray_transport[] = {"CPC_ME_O_KAM_gaz66","CPC_ME_O_KAM_gaz66o","CPC_ME_O_KAM_ural","CPC_ME_O_KAM_ural_open"};
			veharray_heli[] = {"CPC_ME_O_KAM_Mi8"};
			veharray_air[] = {"CPC_ME_O_KAM_Mi24D","CPC_ME_O_KAM_Mi24D","CPC_ME_O_KAM_Mi24D","CPC_ME_O_KAM_Su25"};
			veharray_aa[] = {"CPC_ME_O_KAM_gaz66_zu23","CPC_ME_O_KAM_ZSU"};
			hmg = "CPC_ME_O_KAM_DSHKM_MiniTriPod";
			pilot = "CPC_ME_O_KAM_soldier_HeliPilot";
			plane = "CUP_O_C130J_TKA";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class asia_rhs: cc_faction_army
	{
		faction_is_rhs = 1;
		class polyvalent
		{
			r = "CPC_JUN_B_AMIL_soldier_1";
			tl = "CPC_JUN_B_AMIL_soldier_TL";
			gl = "CPC_JUN_B_AMIL_soldier_1"; // placeholder
			lat = "CPC_JUN_B_AMIL_soldier_LAT";
			at = "CPC_JUN_B_AMIL_soldier_AT";
			mg = "CPC_JUN_B_AMIL_soldier_MG";
			m = "CPC_JUN_B_AMIL_soldier_M";
			aa = "CPC_JUN_B_AMIL_soldier_AA";
			crew = "CPC_JUN_B_AMIL_soldier_crew";
			veharray_light[] = {"CPC_JUN_B_AMIL_M1025_m2"};
			veharray_medium[] = {"CPC_JUN_B_AMIL_M113_m2"};
			veharray_heavy[] = {"CPC_JUN_B_AMIL_M1117"};
			veharray_transport[] = {"CPC_JUN_B_AMIL_M998_2dr_fulltop"};
			veharray_heli[] = {"CPC_JUN_B_AMIL_UH60M","CPC_JUN_B_AMIL_UH1H_unarmed"};
			veharray_air[] = {"CPC_JUN_B_AMIL_UH1H_gunship","CPC_JUN_B_AMIL_UH1H_gunship","CPC_JUN_B_AMIL_AH1Z"};
			veharray_aa[] = {"CPC_JUN_B_AMIL_ZU23"}; // placeholder
			hmg = "CPC_JUN_B_AMIL_M2_MiniTriPod";
			pilot = "CPC_JUN_B_AMIL_soldier_HeliPilot";
			plane = "RHS_C130J";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class racs_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_I_RACS_Soldier";
			tl = "CUP_I_RACS_Officer";
			gl = "CUP_I_RACS_GL";
			lat = "CUP_I_RACS_Soldier_LAT";
			at = "CUP_I_RACS_Soldier_MAT";
			mg = "CUP_I_RACS_MMG";
			m = "CUP_I_RACS_Sniper";
			aa = "CUP_I_RACS_Soldier_AA";
			crew = "CUP_I_RACS_Crew";
			veharray_light[] = {"CUP_I_LR_MG_RACS"};
			veharray_medium[] = {"CUP_I_M113_RACS","CUP_I_M113_RACS","CUP_I_LAV25_RACS","CUP_I_AAV_RACS"};
			veharray_heavy[] = {"CUP_I_M60A3_RACS","CUP_I_T72_RACS"};
			veharray_transport[] = {"CUP_I_MTVR_RACS"};
			veharray_heli[] = {"CUP_I_SA330_Puma_HC1_RACS","CUP_I_UH60L_RACS"};
			veharray_air[] = {"CUP_I_AH6J_RACS","CUP_I_UH60L_FFV_RACS","CUP_I_AH6J_RACS"};
			veharray_aa[] = {"CUP_I_M163_RACS"};
			hmg = "CUP_I_M2StaticMG_MiniTripod_RACS";
			pilot = "CUP_I_RACS_Pilot";
			plane = "CUP_I_C130J_RACS";
		};
		class woodland: polyvalent
		{
			r = "CUP_I_RACS_Soldier_wdl";
			tl = "CUP_I_RACS_Officer_wdl";
			gl = "CUP_I_RACS_GL_wdl";
			lat = "CUP_I_RACS_Soldier_LAT_wdl";
			at = "CUP_I_RACS_Soldier_MAT_wdl";
			mg = "CUP_I_RACS_MMG_wdl";
			m = "CUP_I_RACS_Sniper_wdl";
			aa = "CUP_I_RACS_Soldier_AA_wdl";
		};
		class desert: polyvalent {};
		class jungle: woodland
		{
			r = "CUP_I_RACS_Soldier_Mech";
			tl = "CUP_I_RACS_Officer_Mech";
			gl = "CUP_I_RACS_GL_Mech";
			lat = "CUP_I_RACS_Soldier_LAT_Mech";
			at = "CUP_I_RACS_Soldier_MAT_Mech";
			mg = "CUP_I_RACS_MMG_Mech";
			m = "CUP_I_RACS_Sniper_Mech";
			aa = "CUP_I_RACS_Soldier_AA_Mech";
		};
		class winter: woodland
		{
			r = "CUP_I_RACS_Soldier_Urban";
			tl = "CUP_I_RACS_Officer_Urban";
			gl = "CUP_I_RACS_GL_Urban";
			lat = "CUP_I_RACS_Soldier_LAT_Urban";
			at = "CUP_I_RACS_Soldier_MAT_Urban";
			mg = "CUP_I_RACS_MMG_Urban";
			m = "CUP_I_RACS_Sniper_Urban";
			aa = "CUP_I_RACS_Soldier_AA_Urban";
			veharray_medium[] = {"CUP_I_M113_RACS_URB","CUP_I_M113_RACS_URB","CUP_I_LAV25_RACS","CUP_I_AAV_RACS"};
		};
	};
	class cdf_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_CDF_Soldier_MNT";
			tl = "CUP_B_CDF_Soldier_TL_MNT";
			gl = "CUP_B_CDF_Soldier_GL_MNT";
			lat = "CUP_B_CDF_Soldier_RPG18_MNT";
			at = "CUP_B_CDF_Soldier_LAT_MNT";
			mg = "CUP_B_CDF_Soldier_MG_MNT";
			m = "CUP_B_CDF_Soldier_Marksman_MNT";
			aa = "CUP_B_CDF_Soldier_AA_MNT";
			crew = "CUP_B_CDF_Crew_MNT";
			veharray_light[] = {"CUP_B_UAZ_MG_CDF","CUP_B_UAZ_MG_CDF","CUP_B_UAZ_MG_CDF","CUP_B_UAZ_AGS30_CDF"};
			veharray_medium[] = {"CUP_B_BRDM2_CDF","CUP_B_BTR60_CDF","CUP_B_MTLB_pk_CDF"};
			veharray_heavy[] = {"CUP_B_BMP2_CDF","CUP_B_T72_CDF","CUP_B_ZSU23_Afghan_CDF"};
			veharray_transport[] = {"CUP_B_Kamaz_CDF","CUP_B_Kamaz_Open_CDF","CUP_B_Ural_CDF","CUP_B_Ural_Open_CDF"};
			veharray_heli[] = {"CUP_B_Mi17_CDF"};
			veharray_air[] = {"CUP_B_Mi24_D_Dynamic_CDF","CUP_B_Mi24_D_Dynamic_CDF","CUP_B_Mi24_D_Dynamic_CDF","CUP_B_Su25_Dyn_CDF"};
			veharray_aa[] = {"CUP_B_ZSU23_CDF","CUP_B_Ural_ZU23_CDF"};
			hmg = "CUP_B_DSHkM_MiniTriPod_CDF";
			pilot = "CUP_B_CDF_Pilot_MNT";
			plane = "CUP_O_C47_SLA";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_CDF_Soldier_DST";
			tl = "CUP_B_CDF_Soldier_TL_DST";
			gl = "CUP_B_CDF_Soldier_GL_DST";
			lat = "CUP_B_CDF_Soldier_RPG18_DST";
			at = "CUP_B_CDF_Soldier_LAT_DST";
			mg = "CUP_B_CDF_Soldier_MG_DST";
			m = "CUP_B_CDF_Soldier_Marksman_DST";
			aa = "CUP_B_CDF_Soldier_AA_DST";
			crew = "CUP_B_CDF_Crew_DST";
			pilot = "CUP_B_CDF_Pilot_DST";
		};
		class jungle: woodland
		{
			r = "CUP_B_CDF_Soldier_FST";
			tl = "CUP_B_CDF_Soldier_TL_FST";
			gl = "CUP_B_CDF_Soldier_GL_FST";
			lat = "CUP_B_CDF_Soldier_RPG18_FST";
			at = "CUP_B_CDF_Soldier_LAT_FST";
			mg = "CUP_B_CDF_Soldier_MG_FST";
			m = "CUP_B_CDF_Soldier_Marksman_FST";
			aa = "CUP_B_CDF_Soldier_AA_FST";
			crew = "CUP_B_CDF_Crew_FST";
			pilot = "CUP_B_CDF_Pilot_FST";
		};
		class winter: woodland
		{
			r = "CUP_B_CDF_Soldier_SNW";
			tl = "CUP_B_CDF_Soldier_TL_SNW";
			gl = "CUP_B_CDF_Soldier_GL_SNW";
			lat = "CUP_B_CDF_Soldier_RPG18_SNW";
			at = "CUP_B_CDF_Soldier_LAT_SNW";
			mg = "CUP_B_CDF_Soldier_MG_SNW";
			m = "CUP_B_CDF_Soldier_Marksman_SNW";
			aa = "CUP_B_CDF_Soldier_AA_SNW";
			crew = "CUP_B_CDF_Crew_SNW";
			pilot = "CUP_B_CDF_Pilot_SNW";
			veharray_medium[] = {"CUP_B_BRDM2_CDF","CUP_B_MTLB_pk_Winter_CDF","CUP_B_MTLB_pk_Winter_CDF"};
		};
	};
	class us_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_US_Soldier_OCP";
			tl = "CUP_B_US_Soldier_SL_OCP";
			gl = "CUP_B_US_Soldier_GL_OCP";
			lat = "CUP_B_US_Soldier_LAT_OCP";
			at = "CUP_B_US_Soldier_AT_OCP";
			mg = "CUP_B_US_Soldier_MG_OCP";
			m = "CUP_B_US_Soldier_Marksman_EBR_OCP";
			aa = "CUP_B_US_Soldier_AA_OCP";
			crew = "CUP_B_US_Crew_OCP";
			veharray_light[] = {"CUP_B_HMMWV_M2_USMC","CUP_B_M1151_M2_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_M1151_Deploy_USMC","CUP_B_HMMWV_MK19_USMC"};
			veharray_medium[] = {"CUP_B_RG31_M2_OD_USMC","CUP_B_RG31E_M2_OD_USMC","CUP_B_M1126_ICV_M2_Woodland","CUP_B_M113_USA"};
			veharray_heavy[] = {"CUP_B_LAV25_USMC","CUP_B_LAV25M240_USMC","CUP_B_M1A1_Woodland_USMC","CUP_B_M1A2_TUSK_MG_USMC","CUP_B_M1128_MGS_Woodland","CUP_B_M2Bradley_USA_W","CUP_B_M2A3Bradley_USA_W"};
			veharray_transport[] = {"CUP_B_MTVR_USMC"};
			veharray_heli[] = {"CUP_B_CH47F_USA","CUP_B_UH60M_US"};
			veharray_air[] = {"CUP_B_AH1Z_Dynamic_USMC","CUP_B_UH1Y_Gunship_Dynamic_USMC","CUP_B_UH60S_USN","CUP_B_AH64D_DL_USA","CUP_B_AH6J_USA","CUP_B_A10_DYN_USA","CUP_B_AV8B_DYN_USMC"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USMC","CUP_B_M163_USA"};
			hmg = "CUP_B_M2StaticMG_MiniTripod_USMC";
			pilot = "CUP_B_US_Pilot";
			plane = "CUP_B_C130J_USMC";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_USMC_Soldier_des";
			tl = "CUP_B_USMC_Soldier_SL_des";
			gl = "CUP_B_USMC_Soldier_GL_des";
			lat = "CUP_B_USMC_Soldier_LAT_des";
			at = "CUP_B_USMC_Soldier_AT_des";
			mg = "CUP_B_USMC_Soldier_MG_des";
			m = "CUP_B_USMC_Soldier_Marksman_des";
			aa = "CUP_B_USMC_Soldier_AA_des";
			crew = "CUP_B_USMC_Crew_des";
			veharray_light[] = {"CUP_B_M1151_M2_DSRT_USMC","CUP_B_M1151_Deploy_DSRT_USMC","CUP_B_M1151_Mk19_DSRT_USMC","CUP_B_M1165_GMV_DSRT_USMC"};
			veharray_medium[] = {"CUP_B_RG31_M2_USMC","CUP_B_RG31E_M2_USMC","CUP_B_M1126_ICV_M2_Desert_Slat","CUP_B_M113_desert_USA"};
			veharray_heavy[] = {"CUP_B_LAV25_desert_USMC","CUP_B_LAV25M240_desert_USMC","CUP_B_M1A1_DES_USMC","CUP_B_M1A2_TUSK_MG_DES_USMC","CUP_B_M1128_MGS_Desert_Slat","CUP_B_M2Bradley_USA_D","CUP_B_M2A3Bradley_USA_D"};
			veharray_transport[] = {"CUP_B_MTVR_USA"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USA","CUP_B_M6LineBacker_USA_D"};
		};
		class jungle: woodland {};
		class winter: woodland
		{
			r = "CUP_B_US_Soldier_UCP";
			tl = "CUP_B_US_Soldier_SL_UCP";
			gl = "CUP_B_US_Soldier_GL_UCP";
			lat = "CUP_B_US_Soldier_LAT_UCP";
			at = "CUP_B_US_Soldier_AT_UCP";
			mg = "CUP_B_US_Soldier_MG_UCP";
			m = "CUP_B_US_Soldier_Marksman_EBR_UCP";
			aa = "CUP_B_US_Soldier_AA_UCP";
			crew = "CUP_B_US_Crew_UCP";
		};
	};
	class baf_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_BAF_Soldier_Rifleman_MTP";
			tl = "CUP_B_BAF_Soldier_TeamLeader_MTP";
			gl = "CUP_B_BAF_Soldier_Grenadier_MTP";
			lat = "CUP_B_BAF_Soldier_RiflemanLAT_MTP";
			at = "CUP_B_BAF_Soldier_AT_MTP";
			mg = "CUP_B_BAF_Soldier_AutoRifleman_MTP";
			m = "CUP_B_BAF_Soldier_Marksman_MTP";
			aa = "CUP_B_BAF_Soldier_AA_MTP";
			crew = "CUP_B_BAF_Soldier_Crew_MTP";
			veharray_light[] = {"CUP_B_BAF_Coyote_L2A1_W","CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_MG_GB_W","CUP_B_LR_Special_M2_GB_W"};
			veharray_medium[] = {"CUP_B_Ridgback_HMG_GB_W","CUP_B_Mastiff_GMG_GB_W","CUP_B_FV432_Bulldog_GB_W_RWS","CUP_B_FV432_Bulldog_GB_W"};
			veharray_heavy[] = {"CUP_B_FV510_GB_W","CUP_B_MCV80_GB_W","CUP_B_Challenger2_Woodland_BAF","CUP_B_Challenger2_2CW_BAF"};
			veharray_transport[] = {"CUP_B_MTVR_BAF_WOOD"};
			veharray_heli[] = {"CUP_B_CH47F_GB","CUP_B_Merlin_HC3_GB","CUP_B_Merlin_HC3A_GB","CUP_B_SA330_Puma_HC2_BAF"};
			veharray_air[] = {"CUP_B_AH1_DL_BAF","CUP_B_AW159_GB","CUP_B_AW159_GB","CUP_B_GR9_DYN_GB"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USMC","CUP_B_M163_USA"};
			hmg = "CUP_B_L111A1_MiniTripod_BAF_MPT";
			pilot = "CUP_B_BAF_Soldier_Helipilot_MTP";
			plane = "CUP_B_C130J_GB";
		};
		class woodland: polyvalent
		{
			r = "CUP_B_BAF_Soldier_Rifleman_DPM";
			tl = "CUP_B_BAF_Soldier_TeamLeader_DPM";
			gl = "CUP_B_BAF_Soldier_Grenadier_DPM";
			lat = "CUP_B_BAF_Soldier_RiflemanLAT_DPM";
			at = "CUP_B_BAF_Soldier_AT_DPM";
			mg = "CUP_B_BAF_Soldier_AutoRifleman_DPM";
			m = "CUP_B_BAF_Soldier_Marksman_DPM";
			aa = "CUP_B_BAF_Soldier_AA_DPM";
			crew = "CUP_B_BAF_Soldier_Crew_DPM";
			pilot = "CUP_B_BAF_Soldier_Helipilot_DPM";
		};
		class desert: polyvalent
		{
			r = "CUP_B_BAF_Soldier_Rifleman_DDPM";
			tl = "CUP_B_BAF_Soldier_TeamLeader_DDPM";
			gl = "CUP_B_BAF_Soldier_Grenadier_DDPM";
			lat = "CUP_B_BAF_Soldier_RiflemanLAT_DDPM";
			at = "CUP_B_BAF_Soldier_AT_DDPM";
			mg = "CUP_B_BAF_Soldier_AutoRifleman_DDPM";
			m = "CUP_B_BAF_Soldier_Marksman_DDPM";
			aa = "CUP_B_BAF_Soldier_AA_DDPM";
			crew = "CUP_B_BAF_Soldier_Crew_DDPM";
			veharray_light[] = {"CUP_B_BAF_Coyote_L2A1_D","CUP_B_Jackal2_L2A1_GB_D","CUP_B_LR_MG_GB_D","CUP_B_LR_Special_M2_GB_D"};
			veharray_medium[] = {"CUP_B_Ridgback_HMG_GB_D","CUP_B_Mastiff_GMG_GB_D","CUP_B_FV432_Bulldog_GB_D_RWS","CUP_B_FV432_Bulldog_GB_D"};
			veharray_heavy[] = {"CUP_B_FV510_GB_D_SLAT","CUP_B_MCV80_GB_D_SLAT","CUP_B_Challenger2_Desert_BAF","CUP_B_Challenger2_2CD_BAF"};
			veharray_transport[] = {"CUP_B_MTVR_BAF_DES"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USA","CUP_B_M163_USA"};
			pilot = "CUP_B_BAF_Soldier_Helipilot_DDPM";
		};
		class jungle: woodland {};
		class winter: woodland
		{
			veharray_heavy[] = {"CUP_B_FV510_GB_W","CUP_B_MCV80_GB_W","CUP_B_Challenger2_Snow_BAF","CUP_B_Challenger2_2CS_BAF"};
			veharray_air[] = {"CUP_B_AH1_DL_BAF","CUP_B_AW159_RN_Grey","CUP_B_AW159_RN_Grey","CUP_B_GR9_DYN_GB"};
		};
	};
	class napa_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CUP_I_GUE_Soldier_AKS74";
			tl = "CUP_I_GUE_Officer";
			gl = "CUP_I_GUE_Soldier_GL";
			lat = "CUP_I_GUE_Soldier_LAT";
			at = "CUP_I_GUE_Soldier_AT";
			mg = "CUP_I_GUE_Soldier_AR";
			m = "CUP_I_GUE_Sniper";
			aa = "CUP_I_GUE_Soldier_AA2";
			crew = "CUP_I_GUE_Crew";
			veharray_light[] = {"CUP_I_Datsun_PK","CPC_LAT_I_PIC_Hilux_DSHKM","CPC_LAT_I_PIC_Hilux_M2"};
			veharray_medium[] = {"CUP_I_BRDM2_NAPA","CUP_I_MTLB_pk_NAPA","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_BMP2_NAPA","CUP_I_T34_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CUP_V3S_Open_NAPA"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_I_Ural_ZU23_NAPA","CUP_I_Datsun_AA"};
			hmg = "CUP_B_DSHkM_MiniTriPod_NAPA";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class npfd_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CPC_Duala_O_NPFD_soldier_2";
			tl = "CPC_Duala_O_NPFD_soldier_TL";
			gl = "CPC_Duala_O_NPFD_soldier_GL";
			lat = "CPC_Duala_O_NPFD_soldier_AT"; // placeholder
			at = "CPC_Duala_O_NPFD_soldier_AT";
			mg = "CPC_Duala_O_NPFD_soldier_MG";
			m = "CPC_Duala_O_NPFD_soldier_sniper";
			aa = "CPC_Duala_O_NPFD_soldier_AA";
			crew = "CPC_Duala_O_NPFD_soldier_5";
			veharray_light[] = {"CPC_Duala_O_NPFD_Datsun_PK","CPC_Afrique_O_NPFD_Hilux_DSHKM","CPC_Afrique_O_NPFD_Hilux_M2"};
			veharray_medium[] = {"CPC_Duala_O_NPFD_BTR40_MG","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CPC_Afrique_O_NPFD_V3S_Open","CPC_Afrique_O_NPFD_V3S_Covered","CPC_Duala_O_NPFD_Ural_1","CPC_Duala_O_NPFD_Ural_3"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CPC_Duala_O_NPFD_Ural_ZU23"};
			hmg = "CPC_Duala_O_NPFD_DSHKM_MiniTripod";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class picaros_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CPC_LAT_I_PIC_soldier_2";
			tl = "CPC_LAT_I_PIC_soldier_TL";
			gl = "CPC_LAT_I_PIC_soldier_GL";
			lat = "CPC_LAT_I_PIC_soldier_LAT";
			at = "CPC_LAT_I_PIC_soldier_AT";
			mg = "CPC_LAT_I_PIC_soldier_MG";
			m = "CPC_LAT_I_PIC_soldier_M";
			aa = "CPC_LAT_I_PIC_soldier_AA";
			crew = "CPC_LAT_I_PIC_soldier_4";
			veharray_light[] = {"CPC_LAT_I_PIC_Datsun_PK","CPC_LAT_I_PIC_Hilux_DSHKM","CPC_LAT_I_PIC_Hilux_M2"};
			veharray_medium[] = {"CPC_LAT_I_PIC_BTR40_MG","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CPC_LAT_I_PIC_V3S_Covered","CPC_LAT_I_PIC_V3S_Open","CPC_LAT_I_PIC_Ural_3","CPC_LAT_I_PIC_Ural_Open_3"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CPC_LAT_I_PIC_Ural_ZU23","CPC_LAT_I_PIC_Hilux_zu23"};
			hmg = "CPC_LAT_I_PIC_DSHkM_MiniTriPod";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class chdkz_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CUP_O_INS_Soldier";
			tl = "CUP_O_INS_Soldier_AK74";
			gl = "CUP_O_INS_Soldier_GL";
			lat = "CUP_O_INS_Soldier_LAT";
			at = "CUP_O_INS_Soldier_AT";
			mg = "CUP_O_INS_Soldier_MG";
			m = "CUP_O_INS_Sniper";
			aa = "CUP_O_INS_Soldier_AA";
			crew = "CUP_O_INS_Crew";
			veharray_light[] = {"CUP_O_Datsun_PK","CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_AGS30_CHDKZ","CUP_O_Hilux_DSHKM_TK_INS"};
			veharray_medium[] = {"CUP_O_BRDM2_CHDKZ","CUP_O_MTLB_pk_ChDKZ"};
			veharray_heavy[] = {"CUP_O_T55_CHDKZ","CUP_O_T72_CHDKZ","CUP_O_BMP2_CHDKZ"};
			veharray_transport[] = {"CUP_O_Ural_CHDKZ","CUP_O_Ural_Open_CHDKZ"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_O_ZSU23_ChDKZ","CUP_O_Ural_ZU23_CHDKZ","CUP_O_UAZ_AA_CHDKZ"};
			hmg = "CUP_O_DSHkM_MiniTriPod_ChDKZ";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class sla_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_O_sla_Soldier";
			tl = "CUP_O_sla_Soldier_SL";
			gl = "CUP_O_sla_Soldier_GL";
			lat = "CUP_O_sla_Soldier_LAT";
			at = "CUP_O_sla_Soldier_AT";
			mg = "CUP_O_sla_Soldier_MG";
			m = "CUP_O_sla_Sniper";
			aa = "CUP_O_sla_Soldier_AA";
			crew = "CUP_O_sla_Crew";
			veharray_light[] = {"CUP_O_UAZ_MG_SLA","CUP_O_UAZ_MG_SLA","CUP_O_UAZ_MG_SLA","CUP_O_UAZ_AGS30_SLA"};
			veharray_medium[] = {"CUP_O_BRDM2_SLA","CUP_O_MTLB_pk_SLA","CUP_O_BTR60_SLA"};
			veharray_heavy[] = {"CUP_O_T72_SLA","CUP_O_T55_SLA","CUP_O_BMP2_SLA"};
			veharray_transport[] = {"CUP_O_Ural_SLA","CUP_O_Ural_SLA","CUP_O_Ural_Open_SLA"};
			veharray_heli[] = {"CUP_O_Mi8_SLA_1"};
			veharray_air[] = {"CUP_O_Ka50_DL_SLA","CUP_O_Mi24_D_Dynamic_SLA","CUP_O_Mi8_SLA_2","CUP_O_UH1H_armed_SLA","CUP_O_Su25_Dyn_SLA"};
			veharray_aa[] = {"CUP_O_Ural_ZU23_SLA","CUP_O_ZSU23_SLA"};
			hmg = "CUP_O_DSHKM_MiniTripod_SLA";
			pilot = "CUP_O_sla_Pilot";
			plane = "CUP_O_C47_SLA";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_O_sla_soldier_desert";
			tl = "CUP_O_sla_Soldier_SL_desert";
			gl = "CUP_O_sla_Soldier_GL_desert";
			lat = "CUP_O_sla_Soldier_LAT_desert";
			at = "CUP_O_sla_Soldier_AT_desert";
			mg = "CUP_O_sla_Soldier_MG_desert";
			m = "CUP_O_sla_Sniper_desert";
			aa = "CUP_O_sla_Soldier_AA_desert";
		};
		class jungle: woodland {};
		class winter: woodland
		{
			r = "CUP_O_sla_Soldier_AMG_urban";
			tl = "CUP_O_sla_Soldier_SL_urban";
			gl = "CUP_O_sla_Soldier_GL_urban";
			lat = "CUP_O_sla_Soldier_LAT_urban";
			at = "CUP_O_sla_Soldier_AT_urban";
			mg = "CUP_O_sla_Soldier_MG_urban";
			m = "CUP_O_sla_Sniper_urban";
			aa = "CUP_O_sla_Soldier_AA_urban";
		};
	};
	class tak_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_O_TK_Soldier";
			tl = "CUP_O_TK_Soldier_SL";
			gl = "CUP_O_TK_Soldier_GL";
			lat = "CUP_O_TK_Soldier_LAT";
			at = "CUP_O_TK_Soldier_AT";
			mg = "CUP_O_TK_Soldier_MG";
			m = "CUP_O_TK_Soldier_M";
			aa = "CUP_O_TK_Soldier_AA";
			crew = "CUP_O_TK_Crew";
			veharray_light[] = {"CUP_O_UAZ_MG_TKA","CUP_O_LR_MG_TKA","CUP_O_UAZ_AGS30_TKA"};
			veharray_medium[] = {"CUP_O_BMP1_TKA","CUP_O_BRDM2_TKA","CUP_O_BTR40_MG_TKA","CUP_O_M113_TKA","CUP_O_MTLB_pk_TKA","CUP_O_BTR80_TK"};
			veharray_heavy[] = {"CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_BMP2_TKA"};
			veharray_transport[] = {"CUP_O_V3S_Covered_TKA","CUP_O_V3S_Open_TKA","CUP_O_Ural_TKA"};
			veharray_heli[] = {"CUP_O_Mi17_TK"};
			veharray_air[] = {"CUP_O_UH1H_armed_TKA","CUP_O_Mi24_D_Dynamic_TK","CUP_O_Mi24_D_Dynamic_TK","CUP_O_Su25_Dyn_TKA"};
			veharray_aa[] = {"CUP_O_Ural_ZU23_TKA","CUP_O_ZSU23_TK"};
			hmg = "CUP_O_KORD_TK";
			pilot = "CUP_O_TK_Pilot";
			plane = "CUP_O_C130J_TKA";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class tak_ins_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CUP_I_TK_GUE_Soldier";
			tl = "CUP_I_TK_GUE_Commander";
			gl = "CUP_I_TK_GUE_Soldier_GL";
			lat = "CUP_I_TK_GUE_Soldier_LAT";
			at = "CUP_I_TK_GUE_Soldier_AT";
			mg = "CUP_I_TK_GUE_Soldier_MG";
			m = "CUP_I_TK_GUE_Sniper";
			aa = "CUP_I_TK_GUE_Soldier_AA";
			crew = "CUP_I_TK_GUE_Guerilla_Enfield";
			veharray_light[] = {"CUP_I_Datsun_PK_TK","CUP_I_Hilux_DSHKM_TK","CUP_I_Hilux_M2_TK","CUP_I_Hilux_armored_DSHKM_TK"};
			veharray_medium[] = {"CUP_I_BRDM2_TK_Gue","CUP_I_BTR40_MG_TKG","CUP_I_BMP1_TK_GUE"};
			veharray_heavy[] = {"CUP_I_T34_TK_GUE","CUP_I_T55_TK_GUE"};
			veharray_transport[] = {"CUP_I_V3S_Covered_TKG","CUP_I_V3S_Open_TKG"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_I_Ural_ZU23_TK_Gue","CUP_I_Hilux_zu23_TK"};
			hmg = "CUP_I_DSHkM_MiniTriPod_TK_GUE";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class acr_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_CZ_Soldier_WDL";
			tl = "CUP_B_CZ_Soldier_SL_WDL";
			gl = "CUP_B_CZ_Soldier_805_GL_WDL";
			lat = "CUP_B_CZ_Soldier_RPG_WDL";
			at = "CUP_B_CZ_Soldier_AT_WDL";
			mg = "CUP_B_CZ_Soldier_MG_WDL";
			m = "CUP_B_CZ_Soldier_Marksman_WDL";
			aa = "CUP_B_CDF_Soldier_AA_MNT"; // placeholder
			crew = "CUP_B_CZ_Crew_WDL";
			veharray_light[] = {"CUP_B_LR_MG_CZ_W","CUP_B_LR_MG_CZ_W","CUP_B_UAZ_MG_ACR","CUP_B_LR_Special_CZ_W"};
			veharray_medium[] = {"CUP_B_Dingo_CZ_Wdl","CUP_B_BRDM2_CZ","CUP_B_Dingo_GL_CZ_Wdl"};
			veharray_heavy[] = {"CUP_B_BMP2_CZ","CUP_B_T72_CZ"};
			veharray_transport[] = {"CUP_B_T810_Unarmed_CZ_WDL"};
			veharray_heli[] = {"CUP_B_Mi171Sh_Unarmed_ACR"};
			veharray_air[] = {"CUP_B_Mi35_Dynamic_CZ","CUP_B_Mi35_Dynamic_CZ_Dark","CUP_B_Mi35_Dynamic_CZ_Des","CUP_B_Mi35_Dynamic_CZ_Ram","CUP_B_L39_CZ_GREY"};
			veharray_aa[] = {"CUP_O_ZSU23_SLA"}; // placeholder
			hmg = "CUP_B_DSHKM_ACR";
			pilot = "CUP_B_CZ_Pilot_WDL";
			plane = "CUP_B_C130J_GB"; // placeholder
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_CZ_Soldier_DES";
			tl = "CUP_B_CZ_Soldier_SL_DES";
			gl = "CUP_B_CZ_Soldier_805_GL_DES";
			lat = "CUP_B_CZ_Soldier_RPG_DES";
			at = "CUP_B_CZ_Soldier_AT_DES";
			mg = "CUP_B_CZ_Soldier_MG_DES";
			m = "CUP_B_CZ_Soldier_Marksman_DES";
			aa = "CUP_B_CDF_Soldier_AA_DST"; // placeholder
			crew = "CUP_B_CZ_Crew_DES";
			veharray_light[] = {"CUP_B_LR_MG_CZ_W","CUP_B_LR_MG_CZ_W","CUP_B_UAZ_MG_ACR","CUP_B_LR_Special_Des_CZ_D"};
			veharray_medium[] = {"CUP_B_Dingo_CZ_Des","CUP_B_BRDM2_CZ_Des","CUP_B_Dingo_GL_CZ_Des"};
			veharray_heavy[] = {"CUP_B_BMP2_CZ_Des","CUP_B_T72_CZ"};
			veharray_transport[] = {"CUP_B_T810_Unarmed_CZ_DES"};
			veharray_air[] = {"CUP_B_Mi35_Dynamic_CZ","CUP_B_Mi35_Dynamic_CZ_Des","CUP_B_L39_CZ"};
			pilot = "CUP_B_CZ_Pilot_DES";
		};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ejercito_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CPC_LAT_B_EJE_soldier_1";
			tl = "CPC_LAT_B_EJE_soldier_TL";
			gl = "CPC_LAT_B_EJE_soldier_GL";
			lat = "CPC_LAT_B_EJE_soldier_LAT";
			at = "CPC_LAT_B_EJE_soldier_AT";
			mg = "CPC_LAT_B_EJE_soldier_MG";
			m = "CPC_LAT_B_EJE_soldier_M";
			aa = "CPC_LAT_B_EJE_soldier_AA";
			crew = "CPC_LAT_B_EJE_soldier_crew";
			veharray_light[] = {"CPC_LAT_B_EJE_LR_MG"};
			veharray_medium[] = {"CPC_LAT_B_EJE_BTR40_MG","CPC_LAT_B_EJE_M113","CPC_LAT_B_EJE_M113"};
			veharray_heavy[] = {"CPC_LAT_B_EJE_M60A3","CPC_LAT_B_EJE_M60A3"};
			veharray_transport[] = {"CPC_LAT_B_EJE_MTVR"};
			veharray_heli[] = {"CPC_LAT_B_EJE_UH1H_slick"};
			veharray_air[] = {"CPC_LAT_B_EJE_UH1H_armed"};
			veharray_aa[] = {"CUP_B_M163_USA"}; // placeholder
			hmg = "CPC_LAT_B_EJE_M2StaticMG_MiniTripod";
			pilot = "CPC_LAT_B_EJE_soldier_Pilot";
			plane = "CPC_LAT_B_EJE_C47";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class vc_cup: cc_faction_ins
	{
		class polyvalent
		{
			r = "CPC_NAM_O_VC_soldier_6";
			tl = "CPC_NAM_O_VC_soldier_TL";
			gl = "CPC_NAM_O_VC_soldier_3";
			lat = "CPC_NAM_O_VC_soldier_AT"; //placeholder
			at = "CPC_NAM_O_VC_soldier_AT";
			mg = "CPC_NAM_O_VC_soldier_MG";
			m = "CPC_NAM_O_VC_soldier_M1";
			aa = "CPC_NAM_O_VC_soldier_AA";
			crew = "CPC_NAM_O_VC_soldier_7";
			veharray_light[] = {"CUP_O_UAZ_MG_SLA"};
			veharray_medium[] = {"CPC_NAM_O_VC_BTR40_MG","CPC_NAM_O_VC_BTR40_MG"};
			veharray_heavy[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CPC_NAM_O_VC_V3S_Covered","CPC_NAM_O_VC_V3S_Open","CPC_NAM_O_VC_Ural","CPC_NAM_O_VC_Ural_Open"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CPC_NAM_O_VC_Ural_ZU23"};
			hmg = "CPC_NAM_O_VC_DSHKM_MiniTripod";
			pilot = "";
			plane = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class usnam_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CPC_NAM_B_US_soldier_1";
			tl = "CPC_NAM_B_US_soldier_TL";
			gl = "CPC_NAM_B_US_soldier_GL";
			lat = "CPC_NAM_B_US_soldier_LAT";
			at = "CPC_LAT_B_EJE_soldier_AT"; // placeholder
			mg = "CPC_NAM_B_US_soldier_MG";
			m = "CPC_NAM_B_US_soldier_M";
			aa = "CPC_LAT_B_EJE_soldier_AA"; // placeholder
			crew = "CPC_NAM_B_US_soldier_crew";
			veharray_light[] = {"CPC_LAT_B_EJE_LR_MG"};
			veharray_medium[] = {"CPC_NAM_B_US_M113"};
			veharray_heavy[] = {"CPC_LAT_B_EJE_M60A3","CPC_LAT_B_EJE_M60A3"};
			veharray_transport[] = {"CPC_LAT_B_EJE_MTVR"};
			veharray_heli[] = {"CPC_NAM_B_US_UH1H_slick"};
			veharray_air[] = {"CPC_NAM_B_US_UH1H_armed"};
			veharray_aa[] = {"CPC_NAM_B_US_M163"}; // placeholder
			hmg = "CPC_NAM_B_US_M2StaticMG_MiniTripod";
			pilot = "CPC_NAM_B_US_soldier_pilot";
			plane = "CPC_NAM_B_US_C47";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class hil_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_HIL_Soldier_Res";
			tl = "CUP_B_HIL_SL_Res";
			gl = "CUP_B_HIL_GL_Res";
			lat = "CUP_B_HIL_Soldier_MAT_Res";
			at = "CUP_B_HIL_Soldier_HAT_Res";
			mg = "CUP_B_HIL_MMG_Res";
			m = "CUP_B_HIL_M_Res";
			aa = "CUP_B_HIL_Soldier_AA"; //placeholder
			crew = "CUP_B_HIL_Soldier_Light_Res";
			veharray_light[] = {"CUP_B_M151_M2_HIL"};
			veharray_medium[] = {"CPC_NAM_B_US_M113"}; //placeholder
			veharray_heavy[] = {"CUP_B_Boxer_HMG_HIL","CUP_B_Leopard2A6_HIL"};
			veharray_transport[] = {"CUP_B_MTVR_HIL"};
			veharray_heli[] = {"CUP_B_CH47F_HIL"};
			veharray_air[] = {"CUP_B_AW159_HIL"};
			veharray_aa[] = {"CPC_NAM_B_US_M163"}; //placeholder
			hmg = "CPC_NAM_B_US_M2StaticMG_MiniTripod"; //placeholder
			pilot = "CUP_B_HIL_Pilot";
			plane = "CUP_I_C130J_AAF"; //placeholder
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ger_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_GER_BW_Fleck_Soldier";
			tl = "CUP_B_GER_BW_Fleck_Soldier_TL";
			gl = "CUP_B_GER_BW_Fleck_Soldier_GL";
			lat = "CUP_B_GER_BW_Fleck_Soldier_PZF_AT";
			at = "CUP_B_GER_BW_Fleck_Soldier_AT";
			mg = "CUP_B_GER_BW_Fleck_Soldier_MG3";
			m = "CUP_B_GER_BW_Fleck_Soldier_Marksman";
			aa = "CUP_B_GER_BW_Fleck_Soldier_AA";
			crew = "CUP_B_GER_Fleck_Crew";
			veharray_light[] = {"CUP_B_nM1025_M240_NATO_T"}; //placeholder
			veharray_medium[] = {"CUP_B_M113A3_GER","CUP_B_Dingo_GER_Wdl","CUP_B_Dingo_GL_GER_Wdl"};
			veharray_heavy[] = {"CUP_B_Boxer_HMG_GER_WDL","CUP_B_Leopard2A6_GER"};
			veharray_transport[] = {"B_T_Truck_01_covered_F"}; //placeholder
			veharray_heli[] = {"CUP_B_CH53E_GER"};
			veharray_air[] = {"CUP_B_AW159_GER"};
			veharray_aa[] = {"CUP_B_M163_Vulcan_USA"}; //placeholder
			hmg = "CUP_B_M2StaticMG_MiniTripod_GER";
			pilot = "CUP_B_GER_Fleck_HPilot";
			plane = "CUP_B_C130J_USMC"; //placeholder
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_GER_BW_Soldier";
			tl = "CUP_B_GER_BW_Soldier_TL";
			gl = "CUP_B_GER_BW_Soldier_GL";
			lat = "CUP_B_GER_BW_Soldier_PZF_AT";
			at = "CUP_B_GER_BW_Soldier_AT";
			mg = "CUP_B_GER_BW_Soldier_MG3";
			m = "CUP_B_GER_BW_Soldier_Marksman";
			aa = "CUP_B_GER_BW_Soldier_AA";
			crew = "CUP_B_GER_Crew";
			veharray_light[] = {"CUP_B_nM1025_M240_NATO"}; //placeholder
			veharray_medium[] = {"CUP_B_Dingo_GER_Des","CUP_B_Dingo_GER_Des","CUP_B_Dingo_GL_GER_Des"};
			veharray_heavy[] = {"CUP_B_Boxer_HMG_GER_DES","CUP_B_Leopard2A6DST_GER"};
			veharray_transport[] = {"B_Truck_01_covered_F"}; //placeholder
			pilot = "CUP_B_GER_HPilot";
		};
		class jungle: woodland {};
		class winter: woodland {};
	};
};