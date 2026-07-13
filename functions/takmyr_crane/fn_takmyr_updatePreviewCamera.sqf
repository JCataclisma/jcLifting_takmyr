private _cam = uiNamespace getVariable ["JC_Takmyr_Camera", objNull];
private _veh = uiNamespace getVariable ["TAKMYR_VEHICLE", objNull];
if (isNull _cam || isNull _veh) exitWith {};

private _yaw = uiNamespace getVariable ["JC_Takmyr_CamYaw", 0];
private _pitch = uiNamespace getVariable ["JC_Takmyr_CamPitch", 15];
private _dist = uiNamespace getVariable ["JC_Takmyr_CamDistance", 10];
private _lift = uiNamespace getVariable ["JC_Takmyr_CamLift", 1.5];
private _pan = uiNamespace getVariable ["JC_Takmyr_CamPan", 0];

private _targetPos = _veh modelToWorldVisual [0, 0, _lift];
private _camPos = [
    (_targetPos select 0) + (sin _yaw * _dist * cos _pitch),
    (_targetPos select 1) + (cos _yaw * _dist * cos _pitch),
    (_targetPos select 2) + (sin _pitch * _dist)
];

_cam camSetPos _camPos;
_cam camSetTarget _targetPos;
_cam camCommit 0;

