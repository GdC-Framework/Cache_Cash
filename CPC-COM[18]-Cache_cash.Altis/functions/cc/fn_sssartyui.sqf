/*
	Author: Sparfell

	Description:
	function that handle the dialog UI for SSS ARTY

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
			private _class = getText (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> "sss" >> _x);
			private _text = getText (ConfigFile >> "CfgVehicles" >> _class >> "DisplayName");
			_text = format ["%1 : %2",_x,_text];
			private _index = _control lbAdd _text;
			//_control lbSetPicture [_index,(gettext (configfile >> "CfgMarkers" >> "b_unknown" >> "icon"))];
			_control lbSetData [_index,_class];
		} forEach ["mortier","canon","mlrs"];
		_control lbSetCurSel 0;
	};
	case "text_box": {
		private _txt = format ["Hammer %1",(ceil random 9)];
		_control ctrlSetText _txt;
	};
	case "create_arty": {
		// Une position 10m devant le joueur
		private _pos = player getPos [10,getDir player];
		private _type = (lbData [591,lbCurSel 591]);
		private _id = (ctrlText 592);
		// spawn is done serverside
		[_pos,_type,_id] remoteExec ["STDR_fnc_setupsssarty",2];

		closeDialog 1;
	};
	case "create_arty_onmap": {
		private _type = (lbData [591,lbCurSel 591]);
		private _id = (ctrlText 592);
		closeDialog 2;
		openMap true;
		hint "clique gauche pour désigner la position";
		[_type,_id] onMapSingleClick {
			_this params ["_type","_id"];
			// spawn is done serverside
			[_pos,_type,_id] remoteExec ["STDR_fnc_setupsssarty",2];

			openMap false;
			onMapSingleClick "";
			hint "Artillerie SSS créé sur position carte.";
		};
	};
	default {};
};