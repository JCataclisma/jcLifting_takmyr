params ["_ctrl", "_xPos", "_yPos"];
if !(uiNamespace getVariable ["JC_Takmyr_CamDragging", false]) exitWith {false};
private _mousePos = getMousePosition;
private _mx = _mousePos select 0;
private _my = _mousePos select 1;
private _last = uiNamespace getVariable ["JC_Takmyr_CamLastMouse", [_mx, _my]];
private _dx = _mx - (_last select 0);
private _dy = _my - (_last select 1);
uiNamespace setVariable ["JC_Takmyr_CamLastMouse", [_mx, _my]];
private _mode = uiNamespace getVariable ["JC_Takmyr_CamDragMode", "orbit"];
if (_mode == "orbit") then {
    private _yaw = uiNamespace getVariable ["JC_Takmyr_CamYaw", 0];
    private _pitch = uiNamespace getVariable ["JC_Takmyr_CamPitch", 15];
    uiNamespace setVariable ["JC_Takmyr_CamYaw", _yaw - (_dx * 100)];
    uiNamespace setVariable ["JC_Takmyr_CamPitch", (_pitch + (_dy * 100)) min 80 max -80];
} else {
    private _pan = uiNamespace getVariable ["JC_Takmyr_CamPan", 0];
    private _lift = uiNamespace getVariable ["JC_Takmyr_CamLift", 0];
    uiNamespace setVariable ["JC_Takmyr_CamPan", _pan + (_dx * 20)];
    uiNamespace setVariable ["JC_Takmyr_CamLift", _lift - (_dy * 20)];
};
[] call JC_fnc_takmyr_updatePreviewCamera;
false

