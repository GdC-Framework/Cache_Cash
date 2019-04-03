class Params
{
	/* DIFFICULTE GENERALE */
	class difficulte
	{
		title = "Difficulté :";
		values[] = {0,1,2,3};
		texts[] = {"Facile (-8 joueurs)","Normale (~10 joueurs)","Difficile (+12 joueurs)","Impossible"};
		default = 1;
	};

	/* METEO */
	class heure
	{
		title = "Heure :";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,0};
		texts[] = {"01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","00:00"};
		default = 12;
	};
	class meteo
	{
		title = "Météo :";
		values[] = {0,1,2,3,4};
		texts[] = {"Ciel dégagé","Ciel légèrement nuageux","Ciel nuageux","Pluie","Orage"};
		default = 1;
	};
	class fog
	{
		title = "Brouillard :";
		values[] = {0,1,2,3};
		texts[] = {"Aucun","Léger","Moyen","Dense"};
		default = 0;
	};
	class fullmoon
	{
		title = "Nuit de pleine lune :";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};

	/* INSERTION EXTRACTION */
	class insertion
	{
		title = "Type d'insertion :";
		values[] = {0,1,3,4,5};
		texts[] = {"Aléatoire","Choisie","Héliportée (IA)","Parachutage","HALO jump"};
		default = 1;
	};
	class extraction
	{
		title = "Extraction :";
		values[] = {0,1,2};
		texts[] = {"Aucune (au choix du leader)","Aléatoire","héliportée"};
		default = 0;
	};

	/* JOUEURS */
	class faction
	{
		title = "Faction joueur :";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
		texts[] = 
		{
			"OTAN",
			"CSAT",
			"AAF",
			"US Army",
			"US Marines",
			"US forces spéciales",
			"Russie 2000",
			"Russie 2015",
			"Russie forces spéciales",
			"KSK",
			"BAF",
			"RACS",
			"Armée takistanaise",
			"Insurgés (adaptatifs)",
			"Rebelles takistanais",
			"SAF",
			"CDF",
			"PMC",
			"FR",
			"Armée occidentale"
		};
		default = 19;
	};
	class nvg
	{
		title = "Joueurs avec NVG/lampes :";
		values[] = {0,1,2};
		texts[] = {"Rien","NVG","Lampes et/ou equipements nocturnes (quand possible)"};
		default = 0;
	};
	class ammocrate
	{
		title = "Caisse de matos supplémentaire :";
		values[] = {0,1,2,3};
		texts[] = {"Non","Caisse","Caisse + arsenal limité","Caisse + arsenal complet"};
		default = 0;
	};
	class vehicule
	{
		title = "Vehicule :";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,100};
		texts[] = {"Aucun","1","2","3","4","5","6","7","8","9","10","100"};
		default = 0;
	};

	/* IAs */
	class faction_ia
	{
		title = "Faction Ennemie :";
		values[] = {
			1,2,3,4,
			101,102,103,104,105,106,107,
			201,202,203,204,205,206,207,208,209,210,211,212,213
		};
		texts[] = 
		{
			"FIA",
			"NATO",
			"CSAT",
			"AAF",
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
			"CUP : Armée Lingor"
		};
		default = 101;
	};
	class menace_at
	{
		title = "Niveau de menace AT (infanterie) :";
		values[] = {0,1,2};
		texts[] = {"Aucune","Normale","Importante"};
		default = 1;
	};
	class menace_veh_type
	{
		title = "Types des véhicules terrestres ennemis :";
		values[] = {0,1,2,3};
		texts[] = {"Légers","Légers + Moyens","Légers + Moyens + Lourds","Légers + Moyens + (Lourds x 2)"};
		default = 2;
	};
	class menace_veh_nbr
	{
		title = "Nombre de véhicules terrestres ennemis :";
		values[] = {0,1,2};
		texts[] = {"Aucun","Normal","Beaucoup"};
		default = 1;
	};
	class menace_aa
	{
		title = "Présence d'armements AA (infanterie + véhicules) :";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};
	class menace_air
	{
		title = "Présence possible de véhicules aériens ennemis (hélicos + avions) :";
		values[] = {0,1};
		texts[] = {"Non","Oui"};
		default = 0;
	};
	class skillIA
	{
		title = "Skill des IAs (par rapport au réglage serveur):";
		values[] = {0.1,0.3,0.5,0.7,0.85,1,1.2,1.5};
		texts[] = {"- 90%","- 70%","- 50%","- 30%","- 15%","Par défaut","+ 20%","+ 50%"};
		default = 1;
	};
};