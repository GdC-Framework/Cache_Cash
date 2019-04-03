
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
			r = "rhsusf_army_ocp_rifleman";
			tl = "rhsusf_army_ocp_teamleader";
			gl = "rhsusf_army_ocp_grenadier";
			lat = "rhsusf_army_ocp_riflemanat";
			at = "rhsusf_army_ocp_maaws";
			mg = "rhsusf_army_ocp_autorifleman";
			m = "rhsusf_army_ocp_marksman";
			aa = "rhsusf_army_ocp_aa";
			crew = "rhsusf_army_ocp_crewman";
			veharray_light[] = {"rhsusf_m1025_w_m2","rhsusf_m1025_w_m2","rhsusf_M1220_M2_usarmy_wd","rhsusf_m1025_w_mk19"};
			veharray_medium[] = {"rhsusf_M1117_W","rhsusf_m113_usarmy","rhsusf_m113_usarmy_MK19","rhsusf_M1220_M153_M2_usarmy_wd"};
			veharray_heavy[] = {"RHS_M2A3_wd","RHS_M2A3_BUSKIII_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy"};
			veharray_transport[] = {"rhsusf_M1078A1P2_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_fmtv_usarmy"};
			veharray_heli[] = {"RHS_UH60M","RHS_CH_47F"};
			veharray_air[] = {"RHS_AH64D_wd","RHS_UH1Y_FFAR_d","RHS_AH1Z","RHS_A10"};
			veharray_aa[] = {"RHS_M6_wd"};
			hmg = "RHS_M2StaticMG_MiniTripod_D";
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
			veharray_light[] = {"rhsusf_m1025_w_s_m2","rhsusf_m1025_w_s_m2","rhsusf_CGRCAT1A2_M2_usmc_wd","rhsusf_m1025_w_s_Mk19"};
			veharray_medium[] = {"rhsusf_M1117_W","rhsusf_m113_usarmy","rhsusf_m113_usarmy_MK19","rhsusf_M1232_MC_M2_usmc_wd"};
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
			veharray_light[] = {"rhsusf_m1025_d_s_m2","rhsusf_m1025_d_s_m2","rhsusf_CGRCAT1A2_M2_usmc_d","rhsusf_m1025_d_s_Mk19"};
			veharray_medium[] = {"rhsusf_M1117_D","rhsusf_m113d_usarmy","rhsusf_m113d_usarmy_MK19","rhsusf_M1232_MC_M2_usmc_d"};
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
			veharray_transport[] = {"rhsgref_ins_gaz66","rhsgref_ins_gaz66o","rhsgref_ins_ural","rhsgref_ins_ural_open"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"rhsgref_ins_ural_Zu23","rhsgref_ins_zsu234"};
			hmg = "rhsgref_ins_DSHKM_Mini_TriPod";
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
			veharray_transport[] = {"CPC_JUN_I_AGUE_ural","CPC_JUN_I_AGUE_ural_open","CPC_JUN_I_AGUE_ural_worker","CPC_JUN_I_AGUE_ural_yellow"};
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
			veharray_transport[] = {"rhsgref_cdf_gaz66","rhsgref_cdf_gaz66o","rhsgref_cdf_ural","rhsgref_cdf_ural_open"};
			veharray_heli[] = {"rhsgref_cdf_reg_Mi8amt"};
			veharray_air[] = {"rhsgref_cdf_Mi24D","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh","rhsgref_cdf_su25"};
			veharray_aa[] = {"rhsgref_cdf_ural_Zu23","rhsgref_cdf_gaz66_zu23","rhsgref_cdf_zsu234"};
			hmg = "rhsgref_cdf_DSHKM_Mini_TriPod";
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
			veharray_aa[] = {"CPC_JUN_B_AMIL_UH1H_gunship"}; // placeholder
			hmg = "CPC_JUN_B_AMIL_M2_MiniTriPod";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};