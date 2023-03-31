/*
	action pour SSS helico
*/

//création de l'action molette
cc_action_ssshelicocreator = player addaction ["<t color='#e87617'>créer hélico SSS</t>",{
	if (!dialog) then {createDialog "GDC_CC_SSSHELICO_Display";};
},"",1.5,false,true,"","(rank player == 'SERGEANT')"];

// l'action est suprimée au bout 10 minutes ou si le nombre de véhicules disponible est égal à 0
waitUntil {(time > 600)};
player removeaction cc_action_ssshelicocreator;