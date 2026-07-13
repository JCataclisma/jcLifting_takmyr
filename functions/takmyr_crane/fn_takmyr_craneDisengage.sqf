/*
    Takmyr Crane - Disengagement Script
    File: fn_takmyr_craneDisengage.sqf
    Deletes the crane parts and anchor, and resets the active state.
*/
if (!isServer) exitWith { _this remoteExec ["JC_fnc_takmyr_craneDisengage", 2]; };

if (isNil "takmyr") exitWith {};

// Retrieve parts
private _anchor = takmyr getVariable ["jc_takmyr_craneAnchor", objNull];
private _parts = takmyr getVariable ["jc_takmyr_craneParts", []];

// Delete parts
{
    if (!isNull _x) then { deleteVehicle _x; };
} forEach _parts;

// Delete anchor
if (!isNull _anchor) then { deleteVehicle _anchor; };

// Reset variables
takmyr setVariable ["jc_takmyr_craneAnchor", nil, true];
takmyr setVariable ["jc_takmyr_craneParts", nil, true];
takmyr setVariable ["jc_takmyr_craneActive", false, true];
