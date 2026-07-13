params ["_ctrl", "_scroll"];
private _dist = uiNamespace getVariable ["JC_Takmyr_CamDistance", 10];
uiNamespace setVariable ["JC_Takmyr_CamDistance", (_dist - (_scroll * 2)) min 50 max 2];
[] call JC_fnc_takmyr_updatePreviewCamera;
false

