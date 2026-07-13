/*
    Author: JCataclisma
	JC Virtual Takmyr Project - Entry Point
    Opens the workshop and initializes the vehicle customization session.
    File: fn_takmyr_openWorkshop.sqf
*/

params [["_veh", takmyr]];

if (isNil "_veh" || {isNull _veh}) exitWith { hint "No anchor provided!"; };


disableSerialization;

// Set Camera Speeds
missionNamespace setVariable ["JC_Takmyr_camYawSpeed", 25];
missionNamespace setVariable ["JC_Takmyr_camPitchSpeed", 10];
missionNamespace setVariable ["JC_Takmyr_camLiftSpeed", 5];
missionNamespace setVariable ["JC_Takmyr_camPanSpeed", 4];

// Store vehicle globally for the UI
uiNamespace setVariable ["TAKMYR_VEHICLE", _veh];

// Load UI
if !(createDialog "Takmyr_Manager_Dialog") exitWith { hint "Failed to open Workshop UI!"; };

private _display = findDisplay 9930;

// Setup Camera
private _anchor = takmyr getVariable ["jc_takmyr_craneAnchor", _veh];
//[_anchor] call JC_fnc_takmyr_setupPreviewCamera;


// Initialization Message (US English)
hint "Crane systems initiated.";
sleep 5;
hint "";


