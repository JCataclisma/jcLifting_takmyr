/*
    
	Author: JCataclisma
	Takmyr Crane - Engagement Script
    File: fn_takmyr_craneEngage.sqf
    Spawns the virtual anchor and physical crane towbars if they don't exist,
    then opens the UI for the caller.
*/
params ["_target", "_caller"];

if (isNil "takmyr") exitWith { systemChat "Error: 'takmyr' object not found in mission."; };

// If not the server, send this entire request to the server
if (!isServer) exitWith { _this remoteExec ["JC_fnc_takmyr_craneEngage", 2]; };

// If already active, check if the anchor ACTUALLY exists. If not, reset it so it spawns!
if (takmyr getVariable ["jc_takmyr_craneActive", false]) then {
    private _existingAnchor = takmyr getVariable ["jc_takmyr_craneAnchor", objNull];
    if (isNull _existingAnchor) then {
        takmyr setVariable ["jc_takmyr_craneActive", false, true];
    };
};

if (takmyr getVariable ["jc_takmyr_craneActive", false]) exitWith {
    [] remoteExec ["JC_fnc_takmyr_openWorkshop", _caller];
};

// --- First Time Engagement ---
takmyr setVariable ["jc_takmyr_craneActive", true, true];

// 1. Create the Virtual Anchor (Invisible Pivot)
private _spawnPos = getPosASL takmyr;
_spawnPos set [2, (_spawnPos select 2) + 20]; // Spawn high up to avoid collision
private _anchor = createVehicle ["Sign_Sphere10cm_F", _spawnPos, [], 0, "CAN_COLLIDE"];
hideObjectGlobal _anchor;

// Attach Anchor to takmyr at the starting central position
_anchor attachTo [takmyr, [0, -35, 5.75]];

// 2. Create the physical towbars
private _towR = createVehicle ["Land_TowBar_01_F", _spawnPos, [], 0, "CAN_COLLIDE"];
private _towL = createVehicle ["Land_TowBar_01_F", _spawnPos, [], 0, "CAN_COLLIDE"];
private _towRear = createVehicle ["Land_TowBar_01_F", _spawnPos, [], 0, "CAN_COLLIDE"];

{
    _x allowDamage false;
} forEach [_towR, _towL, _towRear];

// 3. Attach towbars to the Anchor
_towR attachTo [_anchor, [2.5, 1, 0]];
_towR setVectorDirAndUp [[0,0,1], [1,0,0]];

_towL attachTo [_anchor, [-2.5, 1, 0]];
_towL setVectorDirAndUp [[0,0,1], [-1,0,0]];

_towRear attachTo [_anchor, [0, -4.5, 0]];
_towRear setVectorDirAndUp [[0, 0, 1], [0, -1, 0]];

// 4. Save references
takmyr setVariable ["jc_takmyr_craneAnchor", _anchor, true];
takmyr setVariable ["jc_takmyr_craneParts", [_towR, _towL, _towRear], true];

// 5. Open the UI for the caller
[] remoteExec ["JC_fnc_takmyr_openWorkshop", _caller];
