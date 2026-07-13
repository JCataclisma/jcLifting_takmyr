disableSerialization;

private _cam = uiNamespace getVariable ["JC_Takmyr_Camera", objNull];
if !(isNull _cam) then {
	_cam cameraEffect ["Terminate", "Back"];
	camDestroy _cam;
};

uiNamespace setVariable ["JC_Takmyr_Camera", objNull];
uiNamespace setVariable ["JC_Takmyr_CamDragging", false];
uiNamespace setVariable ["JC_Takmyr_CamDragMode", ""];
uiNamespace setVariable ["JC_Takmyr_CamLastMouse", []];
uiNamespace setVariable ["JC_Takmyr_CamMouseInPreview", false];
uiNamespace setVariable ["JC_Takmyr_CamTargetModel", nil];


