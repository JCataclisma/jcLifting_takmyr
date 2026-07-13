/*
    Author: JCataclisma
	JC Virtual Takmyr Project - Entry Point
*/
uiNamespace setVariable ["JC_Takmyr_KillCam", false];

params [["_anchor", objNull]];
if (isNull _anchor) exitWith { systemChat "Camera Error: Anchor object not found."; };

// Initialize the HUD layer
"RscCameraFeed" cutRsc ["RscCameraFeed", "PLAIN"];

// Wait a frame to ensure the onLoad has fired
waitUntil {!isNull (uiNamespace getVariable ["RscCameraFeed", displayNull])};

private _display = uiNamespace getVariable "RscCameraFeed";
private _ctrl1 = _display displayCtrl 1000;

// Apply your specific camera texture
_ctrl1 ctrlSetText "#(argb,512,512,1)r2t(rtt1,1.0)";
_ctrl1 ctrlCommit 0;

// Camera Setup
private _cam1 = "camera" camCreate [0, 0, 0];

/* Positioning:
   [10, 0, 0] means:
   10: 10 meters to the right (X-axis)
   0: Centered vertically with the vehicle (Y-axis)
   0: Same height as the vehicle's center/ground level (Z-axis)
*/
//_cam1 attachTo [(vehicle player), [15, 10, 0]]; 
_cam1 attachTo [_anchor, [6.5, -1.5, -0.75]];

/* Orientation:
   setDir 270: Rotates the lens 270 degrees clockwise (pointing directly Left)
   setVectorUp [0, 0, 1]: Keeps the camera perfectly level with the horizon
*/
_cam1 setDir 270;
_cam1 setVectorUp [-0.25, 0, 1];

_cam1 cameraEffect ["Internal", "Back", "rtt1"];
_cam1 camCommand "MANUAL OFF";

hintSilent "Press [NUM-5] (center-view) to close the camera feed";

//waitUntil {inputAction "lookCenter" > 0};
waitUntil {(inputAction "lookCenter" > 0) || {uiNamespace getVariable ["JC_Takmyr_KillCam", false]}};

// Cleanup
hintSilent "";
"RscCameraFeed" cutText ["", "PLAIN"]; // Remove the HUD layer
camDestroy _cam1;
player cameraEffect ["TERMINATE", "BACK"];
