/*
	action pour SSS arty
*/

//création de l'action molette
cc_action_ssshelicocreator = player addaction ["<t color='#13e36b'>créer artillerie SSS</t>",{
	if (!dialog) then {createDialog "GDC_CC_SSSARTY_Display";};
},"",1.5,false,true,"","(rank player == 'SERGEANT')"];

// l'action est suprimée au bout 10 minutes ou si le nombre de véhicules disponible est égal à 0
waitUntil {(time > 600)};
player removeaction cc_action_ssshelicocreator;