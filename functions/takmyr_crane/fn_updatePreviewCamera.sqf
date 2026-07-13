/*
    Author: JCataclisma
	Takmyr Crane - Update Preview Camera
    File: fn_takmyr_updatePreviewCamera.sqf
*/
private _cam = uiNamespace getVariable ["JC_Takmyr_Camera", objNull];
private _veh = uiNamespace getVariable ["TAKMYR_VEHICLE", objNull];
if (isNull _cam || isNull _veh) exitWith {};

private _yaw = uiNamespace getVariable ["JC_Takmyr_CamYaw", 0];
private _pitch = uiNamespace getVariable ["JC_Takmyr_CamPitch", 15];
private _dist = uiNamespace getVariable ["JC_Takmyr_CamDistance", 10];
private _lift = uiNamespace getVariable ["JC_Takmyr_CamLift", 0];
private _pan = uiNamespace getVariable ["JC_Takmyr_CamPan", 0];

// Retrieve the dynamic target offset set during initialization
private _targetModel = uiNamespace getVariable ["JC_Takmyr_CamTargetModel", [0, 0, 1]];

// Translate the target model offset into world position
private _baseTargetPos = _veh modelToWorldVisual _targetModel;

// Calculate look-at matrix offset updates based on mouse panning variables
private _sideX = cos _yaw;
private _sideY = -sin _yaw;

private _targetPos = [
    (_baseTargetPos select 0) + (_sideX * _pan),
    (_baseTargetPos select 1) + (_sideY * _pan),
    (_baseTargetPos select 2) + _lift
];

// Calculate camera world position via standard spherical trigonometry mechanics
private _flatDistance = _dist * cos _pitch;
private _camPos = [
    (_targetPos select 0) + (sin _yaw * _flatDistance),
    (_targetPos select 1) + (cos _yaw * _flatDistance),
    (_targetPos select 2) + (sin _pitch * _dist)
];

_cam camSetPos _camPos;
_cam camSetTarget _targetPos;
_cam camCommit 0;