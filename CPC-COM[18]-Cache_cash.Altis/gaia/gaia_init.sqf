/*
  Created by Spirit, 5-1-2014
*/

if (isNil "GAIA_INIT") then { GAIA_INIT = FALSE; };
iF(GAIA_INIT) exitWith{};

//GAIA Public (local) variables
MCC_GAIA_DEBUG						= false;
MCC_GAIA_CA_DEBUG					= [];


MCC_GAIA_CACHE						= false;
GAIA_CACHE_SLEEP					= 0.5;


GAIA_CACHE_STAGE_2				= (2*GAIA_CACHE_STAGE_1); // TODO: 2*nul ...
MCC_GAIA_CACHE_STAGE2			= [];


// dont CHANGE without knowledge
// MCC_GAIA_OPERATIONAL 			= false; // TODO: To be removed

//Used for the breadcrumb blacklist system. How far should a waypoint be from a position a unit has last been?
MCC_GAIA_CYCLE								 = 1;
MCC_GAIA_AWARENESSRANGE				 = 100;
MCC_GAIA_CLEARRANGE						 = 70;
MCC_GAIA_SHARETARGET_DELAY		 = 10;


//If an order is older then 10 minutes, cancel it. There is probbaly something wrong.
MCC_GAIA_MAX_ORDER_AGE				 = 5000;


//Side specific
MCC_GAIA_CA_WEST					= [];
MCC_GAIA_CA_EAST					= [];
MCC_GAIA_CA_INDEP					= [];
MCC_GAIA_ZONES_INDEP			= [];
// MCC_GAIA_ZONES_POS_INDEP	= []; // TODO: To be removed
MCC_GAIA_ZONES_EAST				= [];
// MCC_GAIA_ZONES_POS_EAST		= []; // TODO: To be removed
MCC_GAIA_ZONES_WEST				= [];
// MCC_GAIA_ZONES_POS_WEST		= []; // TODO: To be removed
MCC_GAIA_GROUPS_WEST			= [];
MCC_GAIA_GROUPS_EAST			= [];
MCC_GAIA_GROUPS_INDEP			= [];
MCC_GAIA_BREADCRUMBS_WEST	= [];
MCC_GAIA_BREADCRUMBS_EAST	= [];
MCC_GAIA_BREADCRUMBS_INDEP= [];
MCC_GAIA_WPPOS_WEST				= [];
MCC_GAIA_WPPOS_EAST				= [];
MCC_GAIA_WPPOS_INDEP			= [];
MCC_GAIA_ZONESTATUS_WEST	=	[]; for "_i" from 0 to 90 do  { MCC_GAIA_ZONESTATUS_WEST set [_i, "0"];};
MCC_GAIA_ZONESTATUS_EAST	=	[]; for "_i" from 0 to 90 do  { MCC_GAIA_ZONESTATUS_EAST set [_i, "0"];};
MCC_GAIA_ZONESTATUS_INDEP	=	[]; for "_i" from 0 to 90 do  { MCC_GAIA_ZONESTATUS_INDEP set [_i, "0"];};
MCC_GAIA_TARGETS_WEST			= []; for "_i" from 0 to 90 do  { MCC_GAIA_TARGETS_WEST set [_i,[]];};
MCC_GAIA_TARGETS_EAST			= []; for "_i" from 0 to 90 do  { MCC_GAIA_TARGETS_EAST set [_i,[]];};
MCC_GAIA_TARGETS_INDEP		= []; for "_i" from 0 to 90 do  { MCC_GAIA_TARGETS_INDEP set [_i,[]];};


//We spawn GAIA for each side (but dont worry, it will only be really active if there are units.)
//Still a smarter solution is welcome.
[WEST] 				spawn gaia_fnc_GAIA;
[EAST] 				spawn gaia_fnc_GAIA;
[independent] spawn gaia_fnc_GAIA;

[] spawn gaia_fnc_gaia_cache_init;

GAIA_INIT = TRUE;
