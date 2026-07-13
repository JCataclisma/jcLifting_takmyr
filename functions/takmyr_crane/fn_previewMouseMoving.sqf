params ["_display", "_xPos", "_yPos"];

if !(uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camDragging", false]) exitWith {false};

private _mousePos = getMousePosition;
private _mx = _mousePos select 0;
private _my = _mousePos select 1;
private _last = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camLastMouse", []];
if ((count _last) < 2) exitWith {
	uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camLastMouse", [_mx, _my]];
	false
};

private _dx = _mx - (_last select 0);
private _dy = _my - (_last select 1);
uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camLastMouse", [_mx, _my]];

if ((abs _dx) < 0.000002 && {(abs _dy) < 0.000002}) exitWith {false};

private _mode = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camDragMode", ""];

switch (_mode) do {
	case "orbit": {
		private _yaw = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camYaw", 0];
		private _pitch = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camPitch", 14];
		private _yawSpeed = missionNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camYawSpeed", 25];
		private _pitchSpeed = missionNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camPitchSpeed", 10];
		_yaw = _yaw - (_dx * _yawSpeed * 4);
		_pitch = _pitch + (_dy * _pitchSpeed * 4);
		if (_pitch > 35) then {_pitch = 35;};
		if (_pitch < -12) then {_pitch = -12;};
		uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camYaw", _yaw];
		uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camPitch", _pitch];
	};
	case "pan": {
		private _pan = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camPan", 0];
		private _lift = uiNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camLift", 0];
		private _panSpeed = missionNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camPanSpeed", 6];
		private _liftSpeed = missionNamespace getVariable ["missionNamespace getVariable ['JC_Takmyr_camLiftSpeed", 8];
		_pan = _pan + (_dx * _panSpeed * 4);
		_lift = _lift - (_dy * _liftSpeed * 2);
		if (_pan > 8) then {_pan = 8;};
		if (_pan < -8) then {_pan = -8;};
		if (_lift > 6) then {_lift = 6;};
		if (_lift < -4) then {_lift = -4;};
		uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camPan", _pan];
		uiNamespace setVariable ["missionNamespace getVariable ['JC_Takmyr_camLift", _lift];
	};
};

[] call JC_fnc_takmyr_updatePreviewCamera;
false


