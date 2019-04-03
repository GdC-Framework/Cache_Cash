/*
	class nato: cc_faction_army
	{
		class polyvalent
		{
			r = "";
			tl = "";
			gl = "";
			lat = "";
			at = "";
			mg = "";
			m = "";
			aa = "";
			crew = "";
			veharray_light[] = {"",""};
			veharray_medium[] = {"","","","",""};
			veharray_heavy[] = {"","","","","",""};
			veharray_transport[] = {"",""};
			veharray_heli[] = {"",""};
			veharray_air[] = {"","",""};
			veharray_aa[] = {"",""};
			hmg = "";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
*/

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
		};
		class woodland: polyvalent {};
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
		};
		class woodland: polyvalent {};
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
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	#include "ennemy_rhs.hpp"
	#include "ennemy_cup.hpp"
};