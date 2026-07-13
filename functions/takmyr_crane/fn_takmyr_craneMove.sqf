/*
    Author: JCataclisma
    Takmyr Crane - Directional Movement Controller (DIAGNOSTIC ACTIVE)
    File: fn_takmyr_craneMove.sqf
*/
params [["_mode", ""], ["_veh", objNull], ["_caller", objNull]];

// Ensure we track the calling client to send debug messages back to their screen
if (isNull _caller && {hasInterface}) then { _caller = player; };

/* private _fnc_debugMsg = {
    params ["_msg"];
    diag_log _msg; // Writes to server RPT log
    if (!isNull _caller) then {
        [_msg] remoteExec ["systemChat", _caller]; // Forces message to player screen
    };
}; */

private _env = if (isServer) then { "SERVER" } else { "CLIENT" };
//[format ["[CRANE DEBUG - %1] Pressed: '%2' | Passed Vehicle: %3", _env, _mode, _veh]] call _fnc_debugMsg;

// 1. IF CALLED FROM UI BUTTON, GRAB VEHICLE FROM LOCAL NAMESPACE
if (isNull _veh) then {
    _veh = uiNamespace getVariable ["TAKMYR_VEHICLE", objNull];
//    [format ["[CRANE DEBUG - %1] Retrieved from uiNamespace: %2", _env, _veh]] call _fnc_debugMsg;
};

// 2. ROUTE TO SERVER IF RUNNING ON A DEDICATED MULTIPLAYER CLIENT
if (!isServer) exitWith { 
//    [format ["[CRANE DEBUG - CLIENT] Routing execution to Server. Sending Vehicle: %1", _veh]] call _fnc_debugMsg;
    [_mode, _veh, _caller] remoteExec ["JC_fnc_takmyr_craneMove", 2]; 
};

// --- SERVER SIDE CONTINUES ---
if (isNull _veh) exitWith {
//    ["[CRANE DEBUG - SERVER] FAILED: Target vehicle object is NULL! Stopping."] call _fnc_debugMsg;
};

private _anchor = _veh getVariable ["jc_takmyr_craneAnchor", objNull];
//[format ["[CRANE DEBUG - SERVER] Retrieved anchor: %1", _anchor]] call _fnc_debugMsg;

if (isNull _anchor) exitWith {
//    ["[CRANE DEBUG - SERVER] FAILED: Anchor object is NULL on the server! Stopping."] call _fnc_debugMsg;
};

// 4. MOVEMENT CONFIGURATION COEFFICIENTS
private _step = 0.5; // Meters altered per button click

// Safety Boundaries (Clamps the crane to its structural deck tracks)
private _minX = -8;    private _maxX = 8;
private _minY = -98;   private _maxY = -25;

// 5. FETCH CURRENT COORDINATE STATUS VARIABLES
private _currentX = _veh getVariable ["JC_Takmyr_CraneOffsetX", 0];
private _currentY = _veh getVariable ["JC_Takmyr_CraneOffsetY", -35]; // Base anchor coordinate
private _currentZ = 5.75; // Height remains locked to the deck rail level

//[format ["[CRANE DEBUG - SERVER] Active coordinates -> X: %1, Y: %2", _currentX, _currentY]] call _fnc_debugMsg;

// 6. PROCESS DIRECTIONAL STRINGS
switch (_mode) do {
    case "OUT": { 
        _currentY = (_currentY - _step) max _minY; 
    };
    case "IN": { 
        _currentY = (_currentY + _step) min _maxY; 
    };
    case "LEFT": { 
        _currentX = (_currentX - _step) max _minX; 
    };
    case "RIGHT": { 
        _currentX = (_currentX + _step) min _maxX; 
    };
};

//[format ["[CRANE DEBUG - SERVER] New offset calculation -> X: %1, Y: %2", _currentX, _currentY]] call _fnc_debugMsg;

// 7. SAVE STATE AND APPLY NEW TRANSFORMATIONS PUBLICLY
_veh setVariable ["JC_Takmyr_CraneOffsetX", _currentX, true];
_veh setVariable ["JC_Takmyr_CraneOffsetY", _currentY, true];

//[format ["[CRANE DEBUG - SERVER] Executing attachTo on %1", _anchor]] call _fnc_debugMsg;
_anchor attachTo [_veh, [_currentX, _currentY, _currentZ]];

//["[CRANE DEBUG - SERVER] SUCCESS: Anchor position update complete!"] call _fnc_debugMsg;

true