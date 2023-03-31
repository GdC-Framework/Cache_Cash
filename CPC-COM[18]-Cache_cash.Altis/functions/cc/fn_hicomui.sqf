/*
	Author: Sparfell

	Description:
	function that handle the dialog UI for HICOM

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
	case "list_type": {
		{
			private _index = _control lbAdd (_x #1);
			_control lbSetPicture [_index,(gettext (configfile >> "CfgMarkers" >> (_x #0) >> "icon"))];
			_control lbSetData [_index,(_x #0)];
		} forEach [
			["b_inf","Infanterie"],
			["b_motor_inf","Camion de transport"],
			["b_unknown","Camion de transport vide"],
			["b_air","Hélicoptère de transport"]
		];
		_control lbSetCurSel 0;
	};
	case "text_box": {
		private _txt = format ["%1 %2",selectrandom ["Echo","Foxtrot","Golf","India","Kilo","Lima","Oscar","Romeo","Sierra","Victor"],(ceil random 9)];
		_control ctrlSetText _txt;
	};
	case "create_group": {
		// Une position 10m devant le joueur
		private _pos = player getPos [10,getDir player];
		private _type = (lbData [491,lbCurSel 491]);
		private _id = (ctrlText 492);
		// spawn is done serverside
		[_pos,_type,_id] remoteExec ["STDR_fnc_spawnHicomGroup",2];

		closeDialog 1;
	};
	case "create_group_onmap": {
		private _type = (lbData [491,lbCurSel 491]);
		private _id = (ctrlText 492);
		closeDialog 2;
		openMap true;
		hint "clique gauche pour désigner la position";
		[_type,_id] onMapSingleClick {
			_this params ["_type","_id"];
			// spawn is done serverside
			[_pos,_type,_id] remoteExec ["STDR_fnc_spawnHicomGroup",2];

			openMap false;
			onMapSingleClick "";
			hint "Groupe HICOM créé sur position carte.";
		};
	};
	default {};
};