
class GDC_CC_HICOM_Display
{
	idd = 490;
	class ControlsBackground
	{
		class GDC_CC_HICOM_Background: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 10 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y;
			w = 20 * GUI_GRID_CENTER_W;
			h = 17 * GUI_GRID_CENTER_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class GDC_CC_HICOM_titleGroupCat: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 0 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Catégorie :";
		};
		class GDC_CC_HICOM_titleGroupType: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 4 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Type de groupe :";
		};
		class GDC_CC_HICOM_titleGroupID: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 8 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Nom du groupe :";
		};
	};
	class Controls
	{
		class GDC_CC_HICOM_ComboListGroupCat: RscCombo
		{
			idc = 491;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 2 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			//colorPicture[] = {0,0.3,0.6,1};
			//colorPictureDisabled[] = {0,0.3,0.6,1};
			//colorPictureSelect[] = {0,0.3,0.6,1};
			onLoad = "params ['_control'];['list_cat',_control] call STDR_fnc_hicomui;";
			onLBSelChanged = "params ['_control','_cursel'];player setVariable ['cc_param_ui_hicom_491',_cursel,false];['list_type',(displayCtrl 492),_cursel] call STDR_fnc_hicomui;";
		};
		class GDC_CC_HICOM_ComboListGroupType: RscCombo
		{
			idc = 492;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 6 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			//colorPicture[] = {0,0.3,0.6,1};
			//colorPictureDisabled[] = {0,0.3,0.6,1};
			//colorPictureSelect[] = {0,0.3,0.6,1};
			onLoad = "params ['_control'];['list_type',_control] call STDR_fnc_hicomui;";
			onLBSelChanged = "params ['_control','_cursel'];player setVariable ['cc_param_ui_hicom_492',_cursel,false];";
		};
		class GDC_CC_HICOM_EditGroupID: RscEdit
		{
			idc = 493;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 10 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			onLoad = "params ['_control'];['text_box',_control] call STDR_fnc_hicomui;";
			tooltip = "si non renseigné, un callsign est automatiquement assigné";
		}
		class GDC_CC_HICOM_ButtonCreateMarker: RscButton
		{
			idc = -1;
			text = "Créer groupe devant moi";
			onButtonClick = "params ['_control'];['create_group',_control] call STDR_fnc_hicomui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 14 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
		class GDC_CC_HICOM_ButtonRemoveMarker: RscButton
		{
			idc = -1;
			text = "Créer groupe sur position carte";
			onButtonClick = "params ['_control'];['create_group_onmap',_control] call STDR_fnc_hicomui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 15.5 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
	};
};