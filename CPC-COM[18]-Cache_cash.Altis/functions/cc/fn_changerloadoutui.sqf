/*
	Author: Sparfell

	Description:
	function that handle the dialog UI for loadout change

	Parameter(s):
		STRING : switch mode
		CONTROL : dialog's control

	Returns:
	nothing
*/

params [
	"_mode",
	"_control"
];

switch (_mode) do {
	case "list_loadout": {
		{
			private _index = _control lbAdd (_x #1);
			_control lbSetData [_index,(_x #0)];
			_control lbSetPicture [_index,("a3\ui_f\data\map\vehicleicons\" + (_x #2))];
		} forEach [
			["cc_off","Officier","iconManOfficer_ca"],
			["cc_tl","Chef d'équipe","iconManLeader_ca"],
			["cc_r","Fusilier","iconMan_ca"],
			["cc_lat","Fusilier LAT","iconMan_ca"],
			["cc_doc","Infirmier","iconManMedic_ca"],
			["cc_ar","Fusilier arme auto","iconManMG_ca"],
			["cc_aar","Asst. fusilier arme auto","iconManMG_ca"],
			["cc_mg","Mitraileur","iconManMG_ca"],
			["cc_amg","Asst. mitrailleur","iconManMG_ca"],
			["cc_at","Spécialiste AT","iconManAT_ca"],
			["cc_aat","Asst. spécialiste AT","iconManAT_ca"],
			["cc_demo","Sapeur","iconManExplosive_ca"],
			["cc_gl","Grenadier","iconMan_ca"],
			["cc_m","Marksman","iconMan_ca"],
			["cc_a","Fusilier sac à dos","iconMan_ca"],
			["cc_crew","Membre d'équipage","iconManLeader_ca"],
			["cc_pilot","Pilote","iconManLeader_ca"],
			["cc_sniper","Sniper","iconManRecon_ca"],
			["cc_obs","Observateur","iconManRecon_ca"],
			["cc_jtac","JTAC","iconManRecon_ca"]
		];
		_control lbSetCurSel 2;
	};
	case "changer_loadout": {
		call compile preprocessFileLineNumbers ("loadout\loadout_" + CC_loadout + ".sqf");
		private _loadout = (lbData [681,lbCurSel 681]);
		player setVariable ["loadout", _loadout];
		[player] call hard_setLoadout;

		closeDialog 1;
	};
	default {};
};