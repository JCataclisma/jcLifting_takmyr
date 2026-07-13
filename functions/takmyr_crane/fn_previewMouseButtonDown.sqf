params ["_display", "_button", "_xPos", "_yPos"];

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

uiNamespace setVariable ["JC_Takmyr_CamMouseInPreview", _inside];

if (_inside) then {
	if (_button isEqualTo 0) then {
		uiNamespace setVariable ["JC_Takmyr_CamDragging", true];
		uiNamespace setVariable ["JC_Takmyr_CamDragMode", "pan"];
		uiNamespace setVariable ["JC_Takmyr_CamLastMouse", [_mx, _my]];
	};
	if (_button isEqualTo 1) then {
		uiNamespace setVariable ["JC_Takmyr_CamDragging", true];
		uiNamespace setVariable ["JC_Takmyr_CamDragMode", "orbit"];
		uiNamespace setVariable ["JC_Takmyr_CamLastMouse", [_mx, _my]];
	};
};

false


