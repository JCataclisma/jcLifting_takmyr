/*
    JC Virtual Takmyr Project - Camera Setup
*/
params ["_veh"];

if (isNull _veh) exitWith {};

[] call JC_fnc_takmyr_cleanupPreviewCamera;

// Calculate distance based on vehicle size
private _bb = boundingBoxReal _veh;
_bb params [["_min", [0,0,0]], ["_max", [0,0,0]]];
private _sizeX = abs ((_max select 0) - (_min select 0));
private _sizeY = abs ((_max select 1) - (_min select 1));
private _largest = (_sizeX max _sizeY) max 2;

private _distance = (_largest * 1.5) max 6;
private _yaw = (getDirVisual _veh) - 30;
private _pitch = 15;
private _lift = 1.5; // Start slightly higher
private _pan = 0;

// The focus point should be the vehicle's visual center
private _targetModel = [0,0,1]; // Default center
private _targetATL = _veh modelToWorldVisual _targetModel;

private _startPosATL = [
    (_targetATL select 0) + ((sin _yaw) * _distance),
    (_targetATL select 1) + ((cos _yaw) * _distance),
    (_targetATL select 2) + 2
];

private _cam = "camera" camCreate _startPosATL;
_cam cameraEffect ["Internal", "Back"];
showCinemaBorder false;

uiNamespace setVariable ["JC_Takmyr_Camera", _cam];
uiNamespace setVariable ["JC_Takmyr_CamYaw", _yaw];
uiNamespace setVariable ["JC_Takmyr_CamPitch", _pitch];
uiNamespace setVariable ["JC_Takmyr_CamDistance", _distance];
uiNamespace setVariable ["JC_Takmyr_CamLift", _lift];
uiNamespace setVariable ["JC_Takmyr_CamPan", _pan];
uiNamespace setVariable ["JC_Takmyr_CamDragging", false];
uiNamespace setVariable ["JC_Takmyr_CamDragMode", ""];
uiNamespace setVariable ["JC_Takmyr_CamLastMouse", []];
uiNamespace setVariable ["JC_Takmyr_CamTargetModel", _targetModel];

[] call JC_fnc_takmyr_updatePreviewCamera;

