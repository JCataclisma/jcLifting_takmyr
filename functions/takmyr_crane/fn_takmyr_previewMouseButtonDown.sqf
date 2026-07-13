params ["_ctrl", "_button", "_xPos", "_yPos"];
private _display = ctrlParent _ctrl;
private _previewCtrl = _display displayCtrl 1504;
if (isNull _previewCtrl) exitWith {false};
private _mousePos = getMousePosition;
private _mx = _mousePos select 0;
private _my = _mousePos select 1;
uiNamespace setVariable ["JC_Takmyr_CamDragging", true];
uiNamespace setVariable ["JC_Takmyr_CamDragMode", (if (_button == 0) then {"pan"} else {"orbit"})];
uiNamespace setVariable ["JC_Takmyr_CamLastMouse", [_mx, _my]];
false

