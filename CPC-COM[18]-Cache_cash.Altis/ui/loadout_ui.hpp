
class GDC_CC_LOADOUT_Display
{
	idd = 680;
	class ControlsBackground
	{
		class GDC_CC_LOADOUT_Background: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 10 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y;
			w = 20 * GUI_GRID_CENTER_W;
			h = 8 * GUI_GRID_CENTER_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class GDC_CC_LOADOUT_titleGroupType: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 0 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Loadout :";
		};
	};
	class Controls
	{
		class GDC_CC_LOADOUT_ComboListGroupType: RscCombo
		{
			idc = 681;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 2 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			//colorPicture[] = {0,0.3,0.6,1};
			//colorPictureDisabled[] = {0,0.3,0.6,1};
			//colorPictureSelect[] = {0,0.3,0.6,1};
			onLoad = "params ['_control'];['list_loadout',_control] call STDR_fnc_changerloadoutui;";
		};
		class GDC_CC_SSSHELICO_ButtonCreateMarker: RscButton
		{
			idc = -1;
			text = "Changer de loadout";
			onButtonClick = "params ['_control'];['changer_loadout',_control] call STDR_fnc_changerloadoutui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 6 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
	};
};