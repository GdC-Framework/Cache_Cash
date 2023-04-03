/*
	Author: Sparfell

	Description:
	function that handle the dialog UI for SSS helico

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
			private _text = getText (ConfigFile >> "CfgVehicles" >> _x >> "DisplayName");
			private _index = _control lbAdd _text;
			_control lbSetData [_index,_x];
		} forEach (getArray (missionConfigFile >> "CC_ally" >> ("cc_ally_" + CC_loadout) >> cc_loadoutcamo >> "sss" >> "helicos"));
		_control lbSetCurSel 0;
	};
	case "text_box": {
		private _txt = format ["Hotel %1",(ceil random 9)];
		_control ctrlSetText _txt;
	};
	case "create_helico": {
		// Une position 10m devant le joueur
		private _pos = player getPos [10,getDir player];
		private _type = (lbData [691,lbCurSel 691]);
		private _id = (ctrlText 692);
		// spawn is done serverside
		[_pos,_type,_id,((getdir player -180))] remoteExec ["STDR_fnc_setupssshelico",2];

		closeDialog 1;
	};
	case "create_helico_onmap": {
		private _type = (lbData [691,lbCurSel 691]);
		private _id = (ctrlText 692);
		closeDialog 2;
		openMap true;
		hint "clique gauche pour désigner la position";
		[_type,_id] onMapSingleClick {
			_this params ["_type","_id"];
			// spawn is done serverside
			[_pos,_type,_id,(random 360)] remoteExec ["STDR_fnc_setupssshelico",2];

			openMap false;
			onMapSingleClick "";
			hint "Helico SSS créé sur position carte.";
		};
	};
	default {};
};