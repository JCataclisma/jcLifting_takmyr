params ["_display", "_button", "_xPos", "_yPos"];

if (_button in [0,1]) then {
	uiNamespace setVariable ["JC_Takmyr_CamDragging", false];
	uiNamespace setVariable ["JC_Takmyr_CamDragMode", ""];
	uiNamespace setVariable ["JC_Takmyr_CamLastMouse", []];
};

false


