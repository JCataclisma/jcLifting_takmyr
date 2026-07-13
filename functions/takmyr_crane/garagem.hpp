/*
    JC Virtual Takmyr Project - UI Definition
    Target: 4-Quadrant Layout (Armor, Extras, Weaponry, Actions)
    Font: EtelkaMonospacePro
    Palette: Rust & Asphalt
*/

class Takmyr_RscText
{
    access = 0;
    idc = -1;
    type = 0;
    style = 0;
    linespacing = 1;
    text = "";
    shadow = 0;
    font = "EtelkaMonospacePro";
    sizeEx = 0.032;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
};

class Takmyr_RscStructuredText
{
    access = 0;
    idc = -1;
    type = 13;
    style = 0;
    text = "";
    size = 0.032;
    shadow = 0;
    font = "EtelkaMonospacePro";
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    class Attributes
    {
        font = "EtelkaMonospacePro";
        color = "#FFFFFF";
        align = "left";
        shadow = 0;
    };
};

class Takmyr_RscButton
{
    access = 0;
    idc = -1;
    type = 1;
    style = 2;
    text = "";
    font = "EtelkaMonospacePro";
    sizeEx = 0.032;
    shadow = 0;
    borderSize = 0;
    colorText[] = {1,1,1,1};
    colorDisabled[] = {0.4,0.4,0.4,1};
    colorBackground[] = {0.7, 0.3, 0.1, 0.8}; // Rust Orange
    colorBackgroundDisabled[] = {0.18,0.18,0.18,0.7};
    colorBackgroundActive[] = {0.8, 0.4, 0.1, 1};
    colorFocused[] = {0.8, 0.4, 0.1, 1};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,1};
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
};

class Takmyr_RscListBox
{
    access = 0;
    idc = -1;
    type = 5;
    style = 16;
    font = "EtelkaMonospacePro";
    sizeEx = 0.032;
    rowHeight = 0.036;
    shadow = 0;
    colorText[] = {1,1,1,1};
    colorDisabled[] = {0.4,0.4,0.4,1};
    colorBackground[] = {0.05, 0.05, 0.05, 0.9}; // Asphalt Black
    colorSelect[] = {1,1,1,1};
    colorSelect2[] = {1,1,1,1};
    colorSelectBackground[] = {0.8, 0.4, 0.1, 0.5}; // Selection Highlight
    colorSelectBackground2[] = {0.8, 0.4, 0.1, 0.5};
    colorScrollbar[] = {0.7, 0.3, 0.1, 1};
    maxHistoryDelay = 1;
    autoScrollSpeed = -1;
    autoScrollDelay = -1;
    autoScrollRewind = 0;
    period = 1;
    soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
    class ListScrollBar
    {
        color[] = {1,1,1,0.6};
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.3};
        thumb = "#(argb,8,8,3)color(1,1,1,0.8)";
        arrowEmpty = "#(argb,8,8,3)color(1,1,1,0.3)";
        arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
        border = "#(argb,8,8,3)color(0,0,0,0)";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0;
        height = 0;
        autoScrollEnabled = 1;
    };
};

class JC_Takmyr_Garage
{
    idd = 15000;
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "uiNamespace setVariable ['JC_Takmyr_Display', _this select 0]";
    onUnload = "[] call JC_fnc_takmyr_cleanupPreviewCamera; uiNamespace setVariable ['JC_Takmyr_Display', displayNull]";
    onMouseButtonDown = "_this call JC_fnc_takmyr_previewMouseButtonDown";
    onMouseButtonUp = "_this call JC_fnc_takmyr_previewMouseButtonUp";
    onMouseMoving = "_this call JC_fnc_takmyr_previewMouseMoving";
    onMouseZChanged = "_this call JC_fnc_takmyr_previewMouseZChanged";

    class controlsBackground
    {
        class MainBackground: Takmyr_RscText
        {
            idc = -1;
            x = safezoneX;
            y = safezoneY;
            w = safezoneW;
            h = safezoneH;
            colorBackground[] = {0,0,0,0.2};
        };

        class PreviewZone: Takmyr_RscText
        {
            idc = 1504;
            style = 16; // ST_PICTURE style allows mouse capture better in some cases, or ST_MULTI
            type = 0;
            text = "";
            x = 0.23 * safezoneW + safezoneX;
            y = 0.06 * safezoneH + safezoneY;
            w = 0.54 * safezoneW;
            h = 0.88 * safezoneH;
            colorBackground[] = {0,0,0,0};
            onMouseButtonDown = "_this call JC_fnc_takmyr_previewMouseButtonDown";
            onMouseButtonUp = "_this call JC_fnc_takmyr_previewMouseButtonUp";
            onMouseMoving = "_this call JC_fnc_takmyr_previewMouseMoving";
            onMouseZChanged = "_this call JC_fnc_takmyr_previewMouseZChanged";
        };

        class Header: Takmyr_RscText
        {
            idc = -1;
            text = "JC VIRTUAL TAKMYR WORKSHOP";
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 1 * safezoneW;
            h = 0.05 * safezoneH;
            colorBackground[] = {0.7, 0.3, 0.1, 1};
            colorText[] = {1,1,1,1};
            style = 2; // Center
        };

        // Panel Backgrounds
        class LeftPanel: Takmyr_RscText
        {
            idc = -1;
            x = 0.005 * safezoneW + safezoneX;
            y = 0.06 * safezoneH + safezoneY;
            w = 0.22 * safezoneW;
            h = 0.88 * safezoneH;
            colorBackground[] = {0.05, 0.05, 0.05, 0.7};
        };
        class RightPanel: Takmyr_RscText
        {
            idc = -1;
            x = 0.775 * safezoneW + safezoneX;
            y = 0.06 * safezoneH + safezoneY;
            w = 0.22 * safezoneW;
            h = 0.88 * safezoneH;
            colorBackground[] = {0.05, 0.05, 0.05, 0.7};
        };
    };

    class controls
    {
        // --- LEFT COLUMN ---
        class ArmorTitle: Takmyr_RscText
        {
            idc = -1;
            text = "ARMOR PLATING";
            x = 0.01 * safezoneW + safezoneX;
            y = 0.07 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.03 * safezoneH;
            colorBackground[] = {0.7, 0.3, 0.1, 0.5};
        };
        class ArmorList: Takmyr_RscListBox
        {
            idc = 1500;
            x = 0.01 * safezoneW + safezoneX;
            y = 0.10 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.35 * safezoneH;
            onLBSelChanged = "_this call JC_fnc_takmyr_onSelChanged";
        };

        class ExtrasTitle: Takmyr_RscText
        {
            idc = -1;
            text = "WASTELAND EXTRAS";
            x = 0.01 * safezoneW + safezoneX;
            y = 0.50 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.03 * safezoneH;
            colorBackground[] = {0.7, 0.3, 0.1, 0.5};
        };
        class ExtrasList: Takmyr_RscListBox
        {
            idc = 1501;
            x = 0.01 * safezoneW + safezoneX;
            y = 0.53 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.35 * safezoneH;
            onLBSelChanged = "_this call JC_fnc_takmyr_onSelChanged";
        };

        // --- RIGHT COLUMN ---
        class WeaponryTitle: Takmyr_RscText
        {
            idc = -1;
            text = "WEAPONRY & HARDPOINTS";
            x = 0.78 * safezoneW + safezoneX;
            y = 0.07 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.03 * safezoneH;
            colorBackground[] = {0.7, 0.3, 0.1, 0.5};
        };
        class WeaponryList: Takmyr_RscListBox
        {
            idc = 1502;
            x = 0.78 * safezoneW + safezoneX;
            y = 0.10 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.35 * safezoneH;
            onLBSelChanged = "_this call JC_fnc_takmyr_onSelChanged";
        };

        class ActionsTitle: Takmyr_RscText
        {
            idc = -1;
            text = "SURVIVAL ACTIONS";
            x = 0.78 * safezoneW + safezoneX;
            y = 0.50 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.03 * safezoneH;
            colorBackground[] = {0.7, 0.3, 0.1, 0.5};
        };
        class ActionsList: Takmyr_RscListBox
        {
            idc = 1503;
            x = 0.78 * safezoneW + safezoneX;
            y = 0.53 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.35 * safezoneH;
            onLBSelChanged = "_this call JC_fnc_takmyr_onSelChanged";
        };

        // --- FOOTER BUTTONS ---
        class CloseButton: Takmyr_RscButton
        {
            idc = -1;
            text = "EXIT WORKSHOP";
            x = 0.45 * safezoneW + safezoneX;
            y = 0.92 * safezoneH + safezoneY;
            w = 0.10 * safezoneW;
            h = 0.04 * safezoneH;
            action = "closeDialog 0;";
        };
    };
};

