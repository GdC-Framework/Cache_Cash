
class GDC_CC_SSSHELICO_Display
{
	idd = 690;
	class ControlsBackground
	{
		class GDC_CC_SSSHELICO_Background: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 10 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y;
			w = 20 * GUI_GRID_CENTER_W;
			h = 13 * GUI_GRID_CENTER_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class GDC_CC_SSSHELICO_titleGroupType: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 0 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Type d'hélicoptère :";
		};
		class GDC_CC_SSSHELICO_titleGroupID: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 4 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Callsign :";
		};
	};
	class Controls
	{
		class GDC_CC_SSSHELICO_ComboListGroupType: RscCombo
		{
			idc = 691;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 2 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			//colorPicture[] = {0,0.3,0.6,1};
			//colorPictureDisabled[] = {0,0.3,0.6,1};
			//colorPictureSelect[] = {0,0.3,0.6,1};
			onLoad = "params ['_control'];['list_type',_control] call STDR_fnc_ssshelicoui;";
		};
		class GDC_CC_SSSHELICO_EditGroupID: RscEdit
		{
			idc = 692;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 6 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			onLoad = "params ['_control'];['text_box',_control] call STDR_fnc_ssshelicoui;";
		}
		class GDC_CC_SSSHELICO_ButtonCreateMarker: RscButton
		{
			idc = -1;
			text = "Créer helico SSS devant moi";
			onButtonClick = "params ['_control'];['create_helico',_control] call STDR_fnc_ssshelicoui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 10 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
		class GDC_CC_SSSHELICO_ButtonRemoveMarker: RscButton
		{
			idc = -1;
			text = "Créer helico SSS sur position carte";
			onButtonClick = "params ['_control'];['create_helico_onmap',_control] call STDR_fnc_ssshelicoui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 11.5 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
	};
};