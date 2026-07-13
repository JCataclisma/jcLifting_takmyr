params ["_display", "_veh"];
private _configData = call compile preprocessFileLineNumbers "code\workshop\fn_takmyr_config.sqf";
if (isNil "_configData") exitWith {hint "Config Load Failed";};
private _categories = _configData select 1;
uiNamespace setVariable ["JC_Takmyr_CurrentConfig", _categories];
{ lbClear (_display displayCtrl _x); } forEach [1500, 1501, 1502, 1503];
{
    private _catIdx = _forEachIndex;
    _x params ["_name", "_opts"];
    private _idc = 1501; // Default to Extras
    if (_name find "Armor" > -1) then { _idc = 1500; };
    if (_name find "Weapon" > -1) then { _idc = 1502; };
    if (_name find "Utility" > -1 || _name find "Payload" > -1) then { _idc = 1501; };
    
    private _ctrl = _display displayCtrl _idc;
    {
        private _idx = _ctrl lbAdd (_x select 0);
        _ctrl lbSetData [_idx, str [_catIdx, _forEachIndex]];
    } forEach _opts;
} forEach _categories;


