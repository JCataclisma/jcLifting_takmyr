params ["_veh"];

if (isNull _veh) exitWith {};

[] call JC_fnc_takmyr_cleanupPreviewCamera;

private _bb = boundingBoxReal _veh;
_bb params [["_min", [0,0,0]], ["_max", [0,0,0]]];

private _sizeX = abs ((_max select 0) - (_min select 0));
private _sizeY = abs ((_max select 1) - (_min select 1));
private _largest = (_sizeX max _sizeY) max 2;

private _targetModel = [0, -83, 1.5];

private _distance = 14; // Hardcoded for crane view
private _yaw = (getDirVisual _veh) - 25; // Swings camera to look aft
private _pitch = 25;                      // Slightly flatter angle to see down the tunnel
private _lift = 0;
private _pan = 0;
/* private _targetModel = [
	((_min select 0) + (_max select 0)) * 0.5,
	((_min select 1) + (_max select 1)) * 0.5,
	((_min select 2) + (_max select 2)) * 0.55
]; */

private _targetATL = _veh modelToWorldVisual _targetModel;
private _startPosATL = [
	(_targetATL select 0) + ((sin _yaw) * _distance),
	(_targetATL select 1) + ((cos _yaw) * _distance),
	(_targetATL select 2) + ((_distance * sin _pitch) max 1.2)
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
uiNamespace setVariable ["JC_Takmyr_CamMouseInPreview", false];
uiNamespace setVariable ["JC_Takmyr_CamTargetModel", _targetModel];

[] call JC_fnc_takmyr_updatePreviewCamera;


