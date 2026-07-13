/*
    JC Virtual Takmyr Project - Selection Handler
    File: fn_takmyr_onSelChanged.sqf
*/
params ["_control", "_index"];

private _veh = uiNamespace getVariable ["TAKMYR_VEHICLE", objNull];
if (isNull _veh || _index == -1) exitWith {};

private _data = _control lbData _index;
if (_data == "") exitWith {};

// Parse indices [catIndex, optIndex]
private _indices = call compile _data;
_indices params ["_catIdx", "_optIdx"];

private _code = {};

if (_catIdx == 999) then {
    // Survival Actions
    private _actions = uiNamespace getVariable ["JC_Takmyr_SurvivalActions", []];
    _code = (_actions select _optIdx) select 1;
} else {
    // Standard Attachments
    private _config = uiNamespace getVariable ["JC_Takmyr_CurrentConfig", []];
    private _category = _config select _catIdx;
    private _options = _category select 1;
    _code = (_options select _optIdx) select 1;
};

// Execute the modification logic
[_veh] call _code;

// UI sound feedback
playSoundUI ["\A3\ui_f\data\sound\RscButtonMenu\soundClick.wss", 0.12, 1];

