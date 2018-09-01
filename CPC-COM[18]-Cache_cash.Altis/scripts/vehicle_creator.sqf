/*
	spawn de véhicules au choix par les joueurs via BIS_fnc_garage
*/

// création de l'action pour accéder au garage
cc_action_vehiclecreator = player addaction ["<t color='#B404AE'>créer vehicule 10m devant moi</t>",{
	player allowdamage false;
	CC_p_vehicle = CC_p_vehicle - 1;
	publicVariable "CC_p_vehicle";
	// Event handler de fermeture du garage
	cc_event_closeg = [missionnamespace, "garageClosed",{
		BIS_fnc_garage_center setdir ((getdir player) - 180);
		clearItemCargoGlobal BIS_fnc_garage_center;
		clearWeaponCargoGlobal BIS_fnc_garage_center;
		clearMagazineCargoGlobal BIS_fnc_garage_center;
		clearBackpackCargoGlobal BIS_fnc_garage_center;
		BIS_fnc_garage_center addWeaponCargoGlobal [(cc_ArrayATFaction select 0), 1]; //weap
		BIS_fnc_garage_center addWeaponCargoGlobal [(cc_ArrayATFaction select 1), 1]; //lat
		BIS_fnc_garage_center addMagazineCargoGlobal ["smokeshell", 5];
		BIS_fnc_garage_center addMagazineCargoGlobal ["smokeshellBlue", 5];
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 0), 5]; //Gre
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 1), 10]; //mag1
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 2), 5]; //mag2
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 3), 4]; //magar
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 4), 2]; //magmg
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 5), 1]; //magat1
		BIS_fnc_garage_center addMagazineCargoGlobal [(cc_ArrayMagFaction select 6), 1]; //magat2
		player allowdamage true;
		BIS_fnc_garage_center allowdamage true;
		[missionNamespace, "garageClosed", cc_event_closeg] call BIS_fnc_removeScriptedEventHandler; 
	}] call BIS_fnc_addScriptedEventHandler;
	// Une position 10m devant le joueur
	_pos = player getPos [10,getDir player];
	// Type de véhicule par défaut
	uinamespace setvariable ["bis_fnc_garage_defaultClass","B_Boat_Transport_01_F"];
	// Création du véhicule et ouverture de l'arsenal
	BIS_fnc_garage_center = createVehicle [ "Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE" ];
	["Open",true] call BIS_fnc_garage;
},"",1.5,false,true,"","(rank player == 'SERGEANT') && (CC_p_vehicle > 0)"];

// l'action est suprimée au bout 10 minutes ou si le nombre de véhicules disponible et égal à 0
waitUntil {(CC_p_vehicle < 1) OR (time > 600)};
player removeaction cc_action_vehiclecreator;