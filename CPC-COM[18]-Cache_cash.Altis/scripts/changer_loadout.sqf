/*
	action pour changer de loadout
*/

//création de l'action molette
cc_action_changerloadout = player addaction ["<t color='#cd1e1e'>Changer de loadout</t>",{
	if (!dialog) then {createDialog "GDC_CC_LOADOUT_Display";};
},"",1.5,false,true,"","(rank player == 'SERGEANT') && (time < 300)"];

// l'action est suprimée au bout 5 minutes
waitUntil {(time > 300)};
player removeaction cc_action_changerloadout;