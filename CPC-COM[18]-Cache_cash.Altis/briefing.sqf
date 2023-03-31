waitUntil {!isnil "cc_MarkersCreated"};

//Task
task1 = player createSimpleTask ["Détruire la cache d'explosifs."];
task1 setSimpleTaskDescription ["Détruire la cache d'explosifs.","Détruire la cache d'explosifs.","Détruire la cache d'explosifs."];
task1 setSimpleTaskDestination markerpos "Mark_Cible";
task2 = player createSimpleTask ["Tuer tous les ennemis. (optionnel)"];
task2 setSimpleTaskDescription ["Tuer tous les ennemis. (optionnel)","Tuer tous les ennemis. (optionnel)","Tuer tous les ennemis. (optionnel)"];


if (CC_p_vehicle > 0) then {
	_nbr = str CC_p_vehicle;
	_txt = "Une fois en jeu, les chefs de groupes peuvent créer un véhicule de leur choix au moyen d'une action disponible dans le menu molette.
		<br/>- L'action ouvre le garage virtuel.
		<br/>- Le véhicule est crée 10m devant le joueur.
		<br/>- L'action disparaît après 10 minutes ou lorsque le nombre de véhicules disponibles est égal à 0.
		<br/><br/>Nombre de véhicules disponibles : " + _nbr;
		player createDiaryRecord ["Diary",["Véhicules",_txt]];
};

if (CC_p_hicom > 0) then {
	_txt = "Une fois en jeu, les chefs de groupes peuvent créer des groupes HICOM au moyen d'une action disponible dans le menu molette.
		<br/>- Il est possible de créer des groupes d'infanterie, des camions de transport et des hélicoptères de transport.
		<br/>- L'action molette disparaît après 10 minutes.";
	player createDiaryRecord ["Diary",["HICOM",_txt]];
};

player createDiaryRecord ["Diary",["Extraction",

switch (CC_p_extraction) do {
	case 0: {"| Aucune extraction |
<br/><br/>L'extraction est au choix du leader. 0-0-1 pour couper la mission.
	"};
	case 1: {"| Extraction aléatoire |
<br/><br/>Rejoignez le point de RDV pour vous extraire. (un chef de groupe peut fermer la mission avec le menu molette)
	"};
	case 2: {"| Extraction heliportée|
<br/><br/>Une fois la cache détruite, appellez l'hélicoptère d'extraction sur le canal 5 de la PRC148 (GDC_extra)
	"};
}]];

player createDiaryRecord ["Diary",["Insertion",

switch (CC_p_insertion) do { 

case 0:{
	"| Insertion aléatoire |
<br/><br/>Vous êtes en position <font color='#0066FF'><marker name='mark_inser'>ici</marker></font>. Attention l'ennemi peut être déjà proche. (Si c'est dans l'eau relancer la mission)
	"};

case 1:{
	"| Insertion Choisie |
<br/><br/>Les chefs de groupe choisi la position d'insertion de tout le monde par un clique gauche sur la carte. Attention de ne pas être trop loin. (Il est impossible être dans la zone rouge pour l'insertion)
<br/>Vous allez être insérés <font color='#0066FF'><marker name='mark_inser'>ici</marker></font>.
	"};
case 3:{
	"| Insertion Héliportée (IA) |
<br/><br/>Les chefs de groupe choisissent la Landing Zone par un clique gauche sur la carte.
<br/>Vous serez insérés par hélicoptère sur <font color='#0066FF'><marker name='mark_inser'>cette position</marker></font>.
	"};
case 4:{
	"| Insertion Parachutée |
<br/>Système GDC_halo
<br/><br/>Les chefs de groupe choisissent la position spawn par un clique gauche sur la carte.
<br/>Une fois en jeu, interagissez avec le panneau pour déclencher le saut LALO. Seuls les joueurs présents dans la zone marquée autour du panneau sont affectés.
<br/>Le saut est automatique et s'effectue à 300m d'altitude.
<br/><br/>Note : Il est possible (mais pas indispensable) de choisir la position de départ de l'avion en créant un marqueur nommé ""AVION"" sur la map dans le canal global.
	"};
case 5:{
	"| Insertion HALO |
<br/>Système GDC_halo
<br/><br/>Les chefs de groupe choisissent la position spawn par un clique gauche sur la carte.
<br/>Une fois en jeu, interagissez avec le panneau pour déclencher le saut HALO. Seuls les joueurs présents dans la zone marquée autour du panneau sont affectés.
<br/>Le saut est automatique et s'effectue à 8000m d'altitude.
<br/>Pendant le saut les joueurs disposent d'un GPS.
<br/><br/>Note : Il est possible (mais pas indispensable) de choisir la position de départ de l'avion en créant un marqueur nommé ""AVION"" sur la map dans le canal global.
	"};
}]];

player createDiaryRecord ["Diary",["Mission",
"Un camp de l'ennemi (Chocapiste?) se cache dans <font color='#FF0000'><marker name='mark_cible_1'>cette zone</marker></font> ils y cachent une grosse quantité d'explosifs. Nous devons détruire ces explosifs et si tout les ennemis du secteur pouvaient disparaitre, ce serait encore mieux.<br/>
"]];

[] spawn {
	waitUntil {chefIA_create};
	["TaskAssigned",["","Chef Ennemi repéré."]] call BIS_fnc_showNotification;
	task4 = player createSimpleTask ["Tuer le chef. (optionnel)"];
	task4 setSimpleTaskDescription ["Tuer le chef. (optionnel)","Tuer le chef. (optionnel)","Tuer le chef. (optionnel)"];
	task4 setSimpleTaskDestination markerpos "chefmarker";
	waitUntil {chefIA_killed};
	["TaskSucceeded",["","Le chef ennemi est mort."]] call BIS_fnc_showNotification;
	task4 setTaskState "Succeeded"; 
};