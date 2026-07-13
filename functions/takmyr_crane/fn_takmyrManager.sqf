/*
    Takmyr Manager Searcher (Final)
*/

params ["_target", "_caller", "_actionId", "_arguments"];

// Compile Engine if not already available
if (isNil "jc_fnc_openTakmyrUI") then {
    call compile preprocessFileLineNumbers "code\workshop\fn_workshopUI.sqf";
};

_huronClasses = ["B_Heli_Transport_03_F"];
_unarmedHunterClasses = ["B_T_MRAP_01_F", "B_MRAP_01_F"];
_allSupported = _huronClasses + _unarmedHunterClasses;

// Search for the nearest supported vehicle within 20 meters
_nearby = nearestObjects [player, _allSupported, 20];

if (count _nearby isEqualTo 0) exitWith {
    hint "No compatible vehicle found nearby!";
};

_veh = _nearby select 0;
[_veh] spawn jc_fnc_openTakmyrUI;

