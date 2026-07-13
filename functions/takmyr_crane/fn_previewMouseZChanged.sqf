params ["_display", "_scroll"];

private _previewCtrl = _display displayCtrl 1504;
if (isNull _previewCtrl) exitWith {false};

private _mousePos = getMousePosition;
private _mx = _mousePos select 0;
private _my = _mousePos select 1;
private _p = ctrlPosition _previewCtrl;
private _inside = (
	_mx >= (_p select 0) &&
	_mx <= ((_p select 0) + (_p select 2)) &&
	_my >= (_p select 1) &&
	_my <= ((_p select 1) + (_p select 3))
);

if !(_inside || {uiNamespace getVariable ["JC_Takmyr_CamDragging", false]}) exitWith {false};

private _distance = uiNamespace getVariable ["JC_Takmyr_CamDistance", 6];
_distance = _distance - (_scroll * 0.35);
if (_distance < 2.75) then {_distance = 2.75;};
if (_distance > 24) then {_distance = 24;};

uiNamespace setVariable ["JC_Takmyr_CamDistance", _distance];
[] call JC_fnc_takmyr_updatePreviewCamera;
false


