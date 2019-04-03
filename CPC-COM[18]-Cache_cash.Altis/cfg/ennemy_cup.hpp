
	class racs_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_I_RACS_Soldier";
			tl = "CUP_I_RACS_Officer";
			gl = "CUP_I_RACS_GL";
			lat = "CUP_I_RACS_Soldier_MAT"; // placeholder
			at = "CUP_I_RACS_Soldier_HAT"; // placeholder
			mg = "CUP_I_RACS_MMG";
			m = "CUP_I_RACS_Sniper";
			aa = "CUP_I_RACS_Soldier_AA";
			crew = "CUP_I_RACS_Crew";
			veharray_light[] = {"CUP_I_LR_MG_RACS"};
			veharray_medium[] = {"CUP_I_M113_RACS","CUP_I_M113_RACS","CUP_I_M113_RACS","CUP_I_AAV_RACS"};
			veharray_heavy[] = {"CUP_I_M60A3_RACS","CUP_I_T72_RACS"};
			veharray_transport[] = {"CUP_I_LR_Transport_RACS"};
			veharray_heli[] = {"CUP_I_SA330_Puma_HC1_RACS","CUP_I_UH60L_RACS"};
			veharray_air[] = {"CUP_I_AH6J_RACS","CUP_I_UH60L_FFV_RACS","CUP_I_AH6J_RACS"};
			veharray_aa[] = {"CUP_I_M163_RACS"};
			hmg = "CUP_I_M2StaticMG_MiniTripod_RACS";
		};
		class woodland: polyvalent
		{
			r = "CUP_I_RACS_Soldier_wdl";
			tl = "CUP_I_RACS_Officer_wdl";
			gl = "CUP_I_RACS_GL_wdl";
			lat = "CUP_I_RACS_Soldier_MAT_wdl"; // placeholder
			at = "CUP_I_RACS_Soldier_HAT_wdl"; // placeholder
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
			lat = "CUP_I_RACS_Soldier_MAT_Mech"; // placeholder
			at = "CUP_I_RACS_Soldier_HAT_Mech"; // placeholder
			mg = "CUP_I_RACS_MMG_Mech";
			m = "CUP_I_RACS_Sniper_Mech";
			aa = "CUP_I_RACS_Soldier_AA_Mech";
		};
		class winter: woodland
		{
			r = "CUP_I_RACS_Soldier_Urban";
			tl = "CUP_I_RACS_Officer_Urban";
			gl = "CUP_I_RACS_GL_Urban";
			lat = "CUP_I_RACS_Soldier_MAT_Urban"; // placeholder
			at = "CUP_I_RACS_Soldier_HAT_Urban"; // placeholder
			mg = "CUP_I_RACS_MMG_Urban";
			m = "CUP_I_RACS_Sniper_Urban";
			aa = "CUP_I_RACS_Soldier_AA_Urban";
			veharray_medium[] = {"CUP_I_M113_RACS_URB","CUP_I_M113_RACS_URB","CUP_I_M113_RACS_URB","CUP_I_AAV_RACS"};
		};
	};
	class cdf_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_CDF_Soldier_MNT";
			tl = "CUP_B_CDF_Soldier_TL_MNT";
			gl = "CUP_B_CDF_Soldier_GL_MNT";
			lat = "CUP_B_CDF_Soldier_LAT_MNT"; // placeholder
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
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_CDF_Soldier_DST";
			tl = "CUP_B_CDF_Soldier_TL_DST";
			gl = "CUP_B_CDF_Soldier_GL_DST";
			lat = "CUP_B_CDF_Soldier_LAT_DST"; // placeholder
			at = "CUP_B_CDF_Soldier_LAT_DST";
			mg = "CUP_B_CDF_Soldier_MG_DST";
			m = "CUP_B_CDF_Soldier_Marksman_DST";
			aa = "CUP_B_CDF_Soldier_AA_DST";
			crew = "CUP_B_CDF_Crew_DST";
		};
		class jungle: woodland
		{
			r = "CUP_B_CDF_Soldier_FST";
			tl = "CUP_B_CDF_Soldier_TL_FST";
			gl = "CUP_B_CDF_Soldier_GL_FST";
			lat = "CUP_B_CDF_Soldier_LAT_FST"; // placeholder
			at = "CUP_B_CDF_Soldier_LAT_FST";
			mg = "CUP_B_CDF_Soldier_MG_FST";
			m = "CUP_B_CDF_Soldier_Marksman_FST";
			aa = "CUP_B_CDF_Soldier_AA_FST";
			crew = "CUP_B_CDF_Crew_FST";
		};
		class winter: woodland
		{
			r = "CUP_B_CDF_Soldier_SNW";
			tl = "CUP_B_CDF_Soldier_TL_SNW";
			gl = "CUP_B_CDF_Soldier_GL_SNW";
			lat = "CUP_B_CDF_Soldier_LAT_SNW"; // placeholder
			at = "CUP_B_CDF_Soldier_LAT_SNW";
			mg = "CUP_B_CDF_Soldier_MG_SNW";
			m = "CUP_B_CDF_Soldier_Marksman_SNW";
			aa = "CUP_B_CDF_Soldier_AA_SNW";
			crew = "CUP_B_CDF_Crew_SNW";
			veharray_medium[] = {"CUP_B_BRDM2_CDF","CUP_B_MTLB_pk_Winter_CDF","CUP_B_MTLB_pk_Winter_CDF"};
		};
	};
	class us_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CUP_B_USMC_Soldier_FROG_WDL";
			tl = "CUP_B_USMC_Soldier_SL_FROG_WDL";
			gl = "CUP_B_USMC_Soldier_GL_FROG_WDL";
			lat = "CUP_B_USMC_Soldier_LAT_FROG_WDL";
			at = "CUP_B_USMC_Soldier_AT_FROG_WDL";
			mg = "CUP_B_USMC_Soldier_AR_FROG_WDL";
			m = "CUP_B_USMC_Soldier_Marksman_FROG_WDL";
			aa = "CUP_B_USMC_Soldier_AA_FROG_WDL";
			crew = "CUP_B_USMC_Crewman_FROG_WDL";
			veharray_light[] = {"CUP_B_HMMWV_M2_USMC","CUP_B_M1151_M2_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_M1151_Deploy_USMC","CUP_B_HMMWV_MK19_USMC"};
			veharray_medium[] = {"CUP_B_RG31_M2_OD_USMC","CUP_B_RG31E_M2_OD_USMC","CUP_B_M1126_ICV_M2_Woodland","CUP_B_M113_USA"};
			veharray_heavy[] = {"CUP_B_LAV25_USMC","CUP_B_LAV25M240_USMC","CUP_B_M1A1_Woodland_USMC","CUP_B_M1A2_TUSK_MG_USMC","CUP_B_M1128_MGS_Woodland","CUP_B_M2Bradley_USA_W","CUP_B_M2A3Bradley_USA_W"};
			veharray_transport[] = {"CUP_B_MTVR_USMC"};
			veharray_heli[] = {"CUP_B_CH47F_USA","CUP_B_UH60M_US"};
			veharray_air[] = {"CUP_B_AH1Z_Dynamic_USMC","CUP_B_UH1Y_Gunship_Dynamic_USMC","CUP_B_UH60S_USN","CUP_B_AH64D_DL_USA","CUP_B_AH6J_USA","CUP_B_A10_DYN_USA","CUP_B_AV8B_DYN_USMC"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USMC","CUP_B_M163_USA"};
			hmg = "CUP_B_M2StaticMG_MiniTripod_USMC";
		};
		class woodland: polyvalent {};
		class desert: polyvalent
		{
			r = "CUP_B_USMC_Soldier_FROG_DES";
			tl = "CUP_B_USMC_Soldier_SL_FROG_DES";
			gl = "CUP_B_USMC_Soldier_GL_FROG_DES";
			lat = "CUP_B_USMC_Soldier_LAT_FROG_DES";
			at = "CUP_B_USMC_Soldier_AT_FROG_DES";
			mg = "CUP_B_USMC_Soldier_AR_FROG_DES";
			m = "CUP_B_USMC_Soldier_Marksman_FROG_DES";
			aa = "CUP_B_USMC_Soldier_AA_FROG_DES";
			crew = "CUP_B_USMC_Crewman_FROG_DES";
			veharray_light[] = {"CUP_B_M1151_M2_DSRT_USMC","CUP_B_M1151_Deploy_DSRT_USMC","CUP_B_M1151_Mk19_DSRT_USMC","CUP_B_M1165_GMV_DSRT_USMC"};
			veharray_medium[] = {"CUP_B_RG31_M2_USMC","CUP_B_RG31E_M2_USMC","CUP_B_M1126_ICV_M2_Desert_Slat","CUP_B_M113_desert_USA"};
			veharray_heavy[] = {"CUP_B_LAV25_desert_USMC","CUP_B_LAV25M240_desert_USMC","CUP_B_M1A1_DES_USMC","CUP_B_M1A2_TUSK_MG_DES_USMC","CUP_B_M1128_MGS_Desert_Slat","CUP_B_M2Bradley_USA_D","CUP_B_M2A3Bradley_USA_D"};
			veharray_transport[] = {"CUP_B_MTVR_USA"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USA","CUP_B_M6LineBacker_USA_D"};
		};
		class jungle: woodland {};
		class winter: woodland
		{
			r = "CUP_B_US_Soldier";
			tl = "CUP_B_US_Soldier_SL";
			gl = "CUP_B_US_Soldier_GL";
			lat = "CUP_B_US_Soldier_LAT";
			at = "CUP_B_US_Soldier_AT";
			mg = "CUP_B_US_Soldier_AR";
			m = "CUP_B_US_Soldier_Marksman";
			aa = "CUP_B_US_Soldier_AA";
			crew = "CUP_B_US_Crew";
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
			veharray_transport[] = {"CUP_B_Mastiff_LMG_GB_W","CUP_B_LR_Transport_GB_W"};
			veharray_heli[] = {"CUP_B_CH47F_GB","CUP_B_Merlin_HC3_GB","CUP_B_Merlin_HC3A_GB","CUP_B_SA330_Puma_HC2_BAF"};
			veharray_air[] = {"CUP_B_AH1_DL_BAF","CUP_B_AW159_GB","CUP_B_AW159_GB","CUP_B_GR9_DYN_GB"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USMC","CUP_B_M163_USA"};
			hmg = "CUP_B_L111A1_MiniTripod_BAF_MPT";
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
			veharray_transport[] = {"CUP_B_Mastiff_LMG_GB_D","CUP_B_LR_Transport_GB_D"};
			veharray_aa[] = {"CUP_B_HMMWV_Avenger_USA","CUP_B_M163_USA"};
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
			lat = "CUP_I_GUE_Soldier_AT"; // placeholder
			at = "CUP_I_GUE_Soldier_AT";
			mg = "CUP_I_GUE_Soldier_AR";
			m = "CUP_I_GUE_Sniper";
			aa = "CUP_I_GUE_Soldier_AA2";
			crew = "CUP_I_GUE_Crew";
			veharray_light[] = {"CUP_I_Datsun_PK"};
			veharray_medium[] = {"CUP_I_BRDM2_NAPA","CUP_I_MTLB_pk_NAPA","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_BMP2_NAPA","CUP_I_T34_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CUP_V3S_Open_NAPA"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_O_Ural_ZU23_RU"};
			hmg = "CUP_B_DSHkM_MiniTriPod_NAPA";
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
			veharray_light[] = {"CPC_Duala_O_NPFD_Datsun_PK"};
			veharray_medium[] = {"CPC_Duala_O_NPFD_BTR40_MG","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CPC_Afrique_O_NPFD_V3S_Open","CPC_Afrique_O_NPFD_V3S_Covered","CPC_Duala_O_NPFD_Ural_1","CPC_Duala_O_NPFD_Ural_3"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CPC_Duala_O_NPFD_Ural_ZU23"};
			hmg = "CPC_Duala_O_NPFD_DSHKM_MiniTripod";
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
			aa = "CPC_Duala_O_NPFD_soldier_AA"; // placeholder
			crew = "CPC_LAT_I_PIC_soldier_4";
			veharray_light[] = {"CPC_LAT_I_PIC_Datsun_PK"};
			veharray_medium[] = {"CPC_LAT_I_PIC_BTR40_MG","CUP_I_MTLB_pk_NAPA"};
			veharray_heavy[] = {"CUP_I_MTLB_pk_NAPA","CUP_I_T55_NAPA"};
			veharray_transport[] = {"CPC_LAT_I_PIC_V3S_Covered","CPC_LAT_I_PIC_V3S_Open","CPC_LAT_I_PIC_Ural_3","CPC_LAT_I_PIC_Ural_Open_3"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CPC_LAT_I_PIC_Ural_ZU23"};
			hmg = "CPC_LAT_I_PIC_DSHkM_MiniTriPod";
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
			lat = "CUP_O_INS_Soldier_AT"; // placeholder
			at = "CUP_O_INS_Soldier_AT";
			mg = "CUP_O_INS_Soldier_MG";
			m = "CUP_O_INS_Sniper";
			aa = "CUP_O_INS_Soldier_AA";
			crew = "CUP_O_INS_Crew";
			veharray_light[] = {"CUP_O_Datsun_PK","CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_AGS30_CHDKZ"};
			veharray_medium[] = {"CUP_O_BRDM2_CHDKZ","CUP_O_MTLB_pk_ChDKZ"};
			veharray_heavy[] = {"CUP_O_T55_CHDKZ","CUP_O_T72_CHDKZ","CUP_O_BMP2_CHDKZ"};
			veharray_transport[] = {"CUP_O_Ural_CHDKZ","CUP_O_Ural_Open_CHDKZ"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_O_ZSU23_ChDKZ","CUP_O_Ural_ZU23_CHDKZ"};
			hmg = "CUP_O_DSHkM_MiniTriPod_ChDKZ";
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
			m = "CUP_O_TK_Soldier"; // placeholder
			aa = "CUP_O_TK_Soldier_AA";
			crew = "CUP_O_TK_Crew";
			veharray_light[] = {"CUP_O_UAZ_MG_TKA","CUP_O_LR_MG_TKA","CUP_O_UAZ_AGS30_TKA"};
			veharray_medium[] = {"CUP_O_BMP1_TKA","CUP_O_BRDM2_TKA","CUP_O_BTR40_MG_TKA","CUP_O_M113_TKA","CUP_O_MTLB_pk_TKA"};
			veharray_heavy[] = {"CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_BMP2_TKA"};
			veharray_transport[] = {"CUP_O_V3S_Covered_TKA","CUP_O_V3S_Open_TKA","CUP_O_Ural_TKA"};
			veharray_heli[] = {"CUP_O_Mi17_TK"};
			veharray_air[] = {"CUP_O_UH1H_armed_TKA","CUP_O_Mi24_D_Dynamic_TK","CUP_O_Mi24_D_Dynamic_TK","CUP_O_Su25_Dyn_TKA"};
			veharray_aa[] = {"CUP_O_Ural_ZU23_TKA","CUP_O_ZSU23_TK"};
			hmg = "CUP_O_KORD_TK";
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
			lat = "CUP_I_TK_GUE_Soldier_AT"; // placeholder
			at = "CUP_I_TK_GUE_Soldier_AT";
			mg = "CUP_I_TK_GUE_Soldier_MG";
			m = "CUP_I_TK_GUE_Sniper";
			aa = "CUP_I_TK_GUE_Soldier_AA";
			crew = "CUP_I_TK_GUE_Guerilla_Enfield";
			veharray_light[] = {"CUP_I_Datsun_PK_TK"};
			veharray_medium[] = {"CUP_I_BRDM2_TK_Gue","CUP_I_BTR40_MG_TKG","CUP_I_BMP1_TK_GUE"};
			veharray_heavy[] = {"CUP_I_T34_TK_GUE","CUP_I_T55_TK_GUE"};
			veharray_transport[] = {"CUP_I_V3S_Covered_TKG","CUP_I_V3S_Open_TKG"};
			veharray_heli[] = {};
			veharray_air[] = {};
			veharray_aa[] = {"CUP_I_Ural_ZU23_TK_Gue"};
			hmg = "CUP_I_DSHkM_MiniTriPod_TK_GUE";
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
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};
	class ejercito_cup: cc_faction_army
	{
		class polyvalent
		{
			r = "CPC_LAT_B_EJE_soldier_1";
			tl = "CPC_LAT_B_EJE_soldier_TL";
			gl = "CPC_LAT_B_EJE_soldier_1"; // placeholder
			lat = "CPC_LAT_B_EJE_soldier_AT"; // placeholder
			at = "CPC_LAT_B_EJE_soldier_AT"; // placeholder
			mg = "CPC_LAT_B_EJE_soldier_MG";
			m = "CPC_LAT_B_EJE_soldier_M";
			aa = "CUP_I_RACS_Soldier_AA_Mech"; // placeholder
			crew = "CPC_LAT_B_EJE_soldier_crew";
			veharray_light[] = {"CPC_LAT_B_EJE_LR_MG"};
			veharray_medium[] = {"CPC_LAT_B_EJE_BTR40_MG","CPC_LAT_B_EJE_M113","CPC_LAT_B_EJE_M113"};
			veharray_heavy[] = {"CPC_LAT_B_EJE_M60A3","CPC_LAT_B_EJE_M60A3"};
			veharray_transport[] = {"CPC_LAT_B_EJE_MTVR"};
			veharray_heli[] = {"CPC_LAT_B_EJE_UH1H_slick"};
			veharray_air[] = {"CPC_LAT_B_EJE_UH1H_armed"};
			veharray_aa[] = {"CUP_B_M163_USA"}; // placeholder
			hmg = "CPC_LAT_B_EJE_M2StaticMG_MiniTripod";
		};
		class woodland: polyvalent {};
		class desert: polyvalent {};
		class jungle: woodland {};
		class winter: woodland {};
	};