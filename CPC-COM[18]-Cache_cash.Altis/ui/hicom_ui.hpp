#include "\a3\ui_f\hpp\defineCommonGrids.inc"

import RscObject;
import RscText;
import RscFrame;
import RscLine;
import RscProgress;
import RscPicture;
import RscPictureKeepAspect;
import RscVideo;
import RscHTML;
import RscButton;
import RscShortcutButton;
import RscEdit;
import RscCombo;
import RscListBox;
import RscListNBox;
import RscXListBox;
import RscTree;
import RscSlider;
import RscXSliderH;
import RscActiveText;
import RscActivePicture;
import RscActivePictureKeepAspect;
import RscStructuredText;
import RscToolbox;
import RscControlsGroup;
import RscControlsGroupNoScrollbars;
import RscControlsGroupNoHScrollbars;
import RscControlsGroupNoVScrollbars;
import RscButtonTextOnly;
import RscButtonMenu;
import RscButtonMenuOK;
import RscButtonMenuCancel;
import RscButtonMenuSteam;
import RscMapControl;
import RscMapControlEmpty;
import RscCheckBox;

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
			h = 13 * GUI_GRID_CENTER_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class GDC_CC_HICOM_titleGroupType: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 0 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Type de groupe :";
		};
		class GDC_CC_HICOM_titleGroupID: RscText
		{
			idc = -1;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 4 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			text = "Nom du groupe :";
		};
	};
	class Controls
	{
		class GDC_CC_HICOM_ComboListGroupType: RscCombo
		{
			idc = 491;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 2 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			//colorPicture[] = {0,0.3,0.6,1};
			//colorPictureDisabled[] = {0,0.3,0.6,1};
			//colorPictureSelect[] = {0,0.3,0.6,1};
			onLoad = "params ['_control'];['list_type',_control] call STDR_fnc_hicomui;";
		};
		class GDC_CC_HICOM_EditGroupID: RscEdit
		{
			idc = 492;
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 6 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 2 * GUI_GRID_CENTER_H;
			onLoad = "params ['_control'];['text_box',_control] call STDR_fnc_hicomui;";
		}
		class GDC_CC_HICOM_ButtonCreateMarker: RscButton
		{
			idc = -1;
			text = "Créer groupe devant moi";
			onButtonClick = "params ['_control'];['create_group',_control] call STDR_fnc_hicomui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 10 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
		class GDC_CC_HICOM_ButtonRemoveMarker: RscButton
		{
			idc = -1;
			text = "Créer groupe sur position carte";
			onButtonClick = "params ['_control'];['create_group_onmap',_control] call STDR_fnc_hicomui;";
			x = GUI_GRID_CENTER_X + 11 * GUI_GRID_CENTER_W;
			y = GUI_GRID_CENTER_Y + 11.5 * GUI_GRID_CENTER_H;
			w = 18 * GUI_GRID_CENTER_W;
			h = 1 * GUI_GRID_CENTER_H;
		};
	};
};