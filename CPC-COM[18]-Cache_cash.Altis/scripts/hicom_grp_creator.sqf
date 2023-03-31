/*
	spawn de groupes pour le hicom
*/

//création de l'action pour créer un group hicom
cc_action_hicomgrpcreator = player addaction ["<t color='#3440dc'>créer groupe HICOM</t>",{
	if (!dialog) then {createDialog "GDC_CC_HICOM_Display";};
},"",1.5,false,true,"","(rank player == 'SERGEANT')"];

// l'action est suprimée au bout 10 minutes ou si le nombre de véhicules disponible est égal à 0
waitUntil {(time > 600)};
player removeaction cc_action_hicomgrpcreator;