/*
    Takmyr Crane - Attempt Disengage
    File: fn_takmyr_craneAttemptDisengage.sqf
    Called by the UI DISENGAGE button.
*/
if (isNil "takmyr") exitWith {};

private _cargo = takmyr getVariable ["jc_takmyr_craneCargo", objNull];

if (!isNull _cargo) exitWith {
    systemChat "CRITICAL ERROR: Release cargo before disengaging crane!";
};

// Safe to disengage
[] call JC_fnc_takmyr_cleanupPreviewCamera;
closeDialog 0;
[] spawn JC_fnc_takmyr_craneDisengage;
