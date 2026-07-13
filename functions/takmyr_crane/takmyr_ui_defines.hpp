/*
    Takmyr UI Defines - Simplified for Stability
*/

#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_COMBO            4
#define CT_CONTROLS_GROUP   15

#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_PICTURE        0x30

class IGUIBack {
    type = 0;
    idc = 124;
    style = 128;
    text = "";
    colorText[] = {0,0,0,0};
    font = "RobotoCondensed";
    sizeEx = 0;
    shadow = 0;
    x = 0.1;
    y = 0.1;
    w = 0.1;
    h = 0.1;
    colorbackground[] = {0.05,0.05,0.05,0.9};
};

class RscText {
    type = 0;
    idc = -1;
    style = 0;
    shadow = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "RobotoCondensed";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    text = "";
    x = 0; y = 0; w = 0; h = 0;
};

class RscPicture {
    type = 0;
    idc = -1;
    style = 48;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "TahomaB";
    sizeEx = 0;
    text = "";
    x = 0; y = 0; w = 0; h = 0;
};

class RscCombo {
    type = 4;
    idc = -1;
    style = "0x10 + 0x200";
    font = "RobotoCondensed";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    shadow = 0;
    colorSelect[] = {0,0,0,1};
    colorText[] = {1,1,1,1};
    colorBackground[] = {0.1,0.1,0.1,1};
    colorSelectBackground[] = {1,1,1,0.7};
    colorScrollbar[] = {1,1,1,1};
    arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
    arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
    wholeHeight = 0.45;
    soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
    soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
    soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
    maxHistoryDelay = 1;
    class ComboScrollBar {
        color[] = {1,1,1,1};
    };
    x = 0; y = 0; w = 0; h = 0;
};

class RscButton {
    type = 1;
    idc = -1;
    style = 2;
    shadow = 2;
    font = "RobotoCondensed";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    colorText[] = {1,1,1,1};
    colorDisabled[] = {0.4,0.4,0.4,1};
    colorBackground[] = {0.2,0.1,0,1};
    colorBackgroundActive[] = {0.4,0.2,0,1};
    colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
    colorFocused[] = {0.4,0.2,0,1};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,1};
    offsetX = 0.0044;
    offsetY = 0.0044;
    offsetPressedX = 0.0022;
    offsetPressedY = 0.0022;
    borderSize = 0;
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
    text = "";
    action = "";
    x = 0; y = 0; w = 0; h = 0;
};

class RscControlsGroup {
    type = 15;
    idc = -1;
    style = 16;
    class VScrollbar { color[] = {1,1,1,1}; width = 0.021; autoScrollEnabled = 1; };
    class HScrollbar { color[] = {1,1,1,1}; height = 0.028; };
    class Controls {};
    x = 0; y = 0; w = 0; h = 0;
};

