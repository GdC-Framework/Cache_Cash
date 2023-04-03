/*
	Author: Sparfell

	Description:
	function that handle the dialog UI for HICOM

	Parameter(s):
		STRING : switch mode
		CONTROL : dialog's control
		NUMBER : current index selection

	Returns:
	nothing
*/

params [
	"_mode",
	"_control",
	["_cursel",0]
];

switch (_mode) do {
	case "list_cat": {
		{
			private _index = _control lbAdd (_x #1);
			_control lbSetPicture [_index,(gettext (configfile >> "CfgMarkers" >> (_x #0) >> "icon"))];
			_control lbSetData [_index,(_x #0)];
		} forEach [
			["b_inf","Infanterie et Transports"],
			["b_motor_inf","Technicals"],
			["b_armor","Blindés"],
			["b_antiair","Anti-Air"],
			["b_air","Hélicoptères de combat"]
		];
		_control lbSetCurSel (player getVariable ["cc_param_ui_hicom_491",0]);
	};
	case "list_type": {
		lbClear _control;
		private _catsel = (player getVariable ["cc_param_ui_hicom_491",0]);
		if (_catsel > 0) then {
			private _config = switch (_catsel) do {
				case 1: {"technicals"};
				case 2: {"blindes"};
				case 3: {"antiair"};
				case 4: {"helicos"};
				default {hint "error"};
			};
			{
				private _index = _control lbAdd (getText (ConfigFile >> "CfgVehicles" >> _x >> "DisplayName"));
				_control lbSetPicture [_index,(gettext (ConfigFile >> "CfgVehicles" >> _x >> "picture"))];
				_control lbSetData [_index,_x];
			} forEach (getArray (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> _config));
		} else { // infanterie + transport
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
		};
		_control lbSetCurSel (player getVariable ["cc_param_ui_hicom_492",0]);
	};
	case "text_box": {
		_control ctrlSetText "";
	};
	case "create_group": {
		// Une position 10m devant le joueur
		private _pos = player getPos [10,getDir player];
		private _type = (lbData [492,lbCurSel 492]);
		private _id = (ctrlText 493);
		// spawn is done serverside
		[_pos,_type,_id,((getdir player -180))] remoteExec ["STDR_fnc_spawnHicomGroup",2];
		//closeDialog 1;
	};
	case "create_group_onmap": {
		private _type = (lbData [492,lbCurSel 492]);
		private _id = (ctrlText 493);
		closeDialog 1;
		openMap true;
		hint "clique gauche pour désigner la position";
		[_type,_id] onMapSingleClick {
			_this params ["_type","_id"];
			// spawn is done serverside
			[_pos,_type,_id,(random 360)] remoteExec ["STDR_fnc_spawnHicomGroup",2];

			openMap false;
			onMapSingleClick "";
			hint "Groupe HICOM créé sur position carte.";
			createDialog "GDC_CC_HICOM_Display";
		};
	};
	default {};
};