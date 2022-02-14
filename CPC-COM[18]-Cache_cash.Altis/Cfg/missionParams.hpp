class Params
{
	/* TYPE DE JEU */
	class gameType
	{
		title = "<<<<<| Type de jeu |>>>>>";
		values[] = {1,2};
		texts[] = {
			"Trouver la cache d'armes",
			"Défendre le convoi"
		};
		default = 1;
	};

	/* METEO */
	class meteo
	{
		title = "==| Environnement : Météo |";
		values[] = {0,1,2,3,4};
		texts[] = {"Ciel dégagé","Ciel légèrement nuageux","Ciel nuageux","Pluie","Orage"};
		default = 1;
	};
	class heure
	{
		title = "------| Environnement : Heure |";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,0};
		texts[] = {"01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00"};
		default = 12;
	};
	class fog	{
		title = "------| Environnement : Brouillard |";
		values[] = {0,1,2,3};
		texts[] = {"Aucun","Léger","Moyen","Dense"};
		default = 0;
	};
	class fullmoon
	{
		title = "------| Environnement : Nuit de pleine lune |";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};

	/* INSERTION EXTRACTION */
	class faction
	{
		title = "==|Joueurs : Faction |";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22};
		texts[] = 
		{
			"OTAN", //0
			"CSAT", //1
			"AAF", //2
			"US Army", //3
			"US Marines", //4
			"US forces spéciales", //5
			"Russie 2000", //6
			"Russie 2015", //7
			"Russie forces spéciales", //8
			"KSK", //9
			"BAF", //10
			"RACS", //11
			"Armée takistanaise", //12
			"Insurgés (adaptatifs)", //13
			"SAF", //15
			"CDF", //16
			"PMC", //17
			"FR", //18
			"Armée occidentale", //19
			"US 1980", //20
			"URSS 1980", //21
			"US vietnam" //22
		};
		default = 18;
	};
	class insertion
	{
		title = "------| Joueurs : Type d'insertion |";
		values[] = {0,1,3,4,5};
		texts[] = {"Aléatoire","Choisie","Héliportée (IA)","Parachutage","HALO jump"};
		default = 1;
	};
	class extraction
	{
		title = "------| Joueurs : Type d'extraction |";
		values[] = {0,1,2};
		texts[] = {"Aucune (au choix du leader)","Aléatoire","héliportée"};
		default = 0;
	};

	class nvg
	{
		title = "------| Joueurs : NVG / Lampes |";
		values[] = {0,1,2};
		texts[] = {"Rien","NVG","Lampes et/ou equipements nocturnes (quand possible)"};
		default = 0;
	};
	class ammocrate
	{
		title = "------| Joueurs : Caisse de matos supplémentaire |";
		values[] = {0,1,2,3};
		texts[] = {"Non","Caisse","Caisse + arsenal limité","Caisse + arsenal complet"};
		default = 0;
	};
	class vehicule
	{
		title = "------| Joueurs : Vehicules |";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,100};
		texts[] = {"Aucun","1","2","3","4","5","6","7","8","9","10","100"};
		default = 0;
	};
	class sss_cas
	{
		title = "------| Joueurs : CAS SSS |";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Non","A-10A","Su-25","A-164 Wipeout","To-199 Neophron","A-143 Buzzard"};
		default = 0;
	};
	class sss_drone
	{
		title = "------| Joueurs : Drone SSS |";
		values[] = {0,1,2,3};
		texts[] = {"Non","MQ-9 Reaper","MQ-4A Greyhawk","KH-3A Fenghuang"};
		default = 0;
	};

	/* IAs */
	
	/* DIFFICULTE  */
	class faction_ia
	{
		title = "==| ENI : Faction |";
		values[] = {
			1,2,3,4,5,
			101,102,103,104,105,106,107,
			201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217
		};
		texts[] = 
		{
			"FIA",
			"NATO",
			"CSAT",
			"AAF",
			"LDF",
			"RHS : Insurgés (adaptatifs)", //101
			"RHS : Russie",
			"RHS : US",
			"RHS : SAF",
			"RHS : CDF",
			"RHS : Armée takistanaise",
			"RHS : Armée asiatique", //107
			"CUP : NAPA", //201
			"CUP : Chedaki",
			"CUP : Insurgés takistanais",
			"CUP : NPFD",
			"CUP : Picaros Lingor",
			"CUP : RACS", //206
			"CUP : CDF",
			"CUP : US",
			"CUP : BAF",
			"CUP : SLA",
			"CUP : Armée takistanaise",
			"CUP : ACR", //212
			"CUP : Armée Lingor",
			"CUP : Viet Cong", //214
			"CUP : US (vietnam)", //215
			"CUP : Horizon Island Legion", //216
			"CUP : Allemagne" //217
		};
		default = 101;
	};
	
	class difficulte
	{
		title = "------| ENI : Nombre d'hostiles |";
		values[] = {0,1,2,3};
		texts[] = {"Facile (-8 joueurs)","Normal (~10 joueurs)","Difficile (+12 joueurs)","Impossible"};
		default = 1;
	};

	
	class menace_at
	{
		title = "------| ENI : Niveau de menace AT (infanterie) |";
		values[] = {0,1,2};
		texts[] = {"Aucune","Normale","Importante"};
		default = 1;
	};
	class menace_veh_type
	{
		title = "------| ENI : Types des véhicules terrestres |";
		values[] = {0,1,2,3};
		texts[] = {"Légers","Légers + Moyens","Légers + Moyens + Lourds","Légers + Moyens + (Lourds x 2)"};
		default = 2;
	};
	class menace_veh_nbr
	{
		title = "------| ENI : Nombre de véhicules terrestres ennemis |";
		values[] = {0,1,2};
		texts[] = {"Aucun","Normal","Beaucoup"};
		default = 1;
	};
	class menace_aa
	{
		title = "------| ENI : Présence d'armements AA (infanterie + véhicules) |";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};
	class menace_air
	{
		title = "------| ENI : Présence possible de véhicules aériens (hélicos + avions) |";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};
	class skillIA
	{
		title = "------| ENI : Skill des IAs (par rapport au réglage serveur) |";
		values[] = {0.1,0.3,0.5,0.7,0.85,1,1.2,1.5};
		texts[] = {"- 90%","- 70%","- 50%","- 30%","- 15%","Par défaut","+ 20%","+ 50%"};
		default = 1;
	};
};
