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
   [0, 5, 10] means:
   0: Centered horizontally
   5: 5 meters forward (ahead of the player)
   10: 10 meters high
*/
//_cam1 attachTo [(vehicle player), [0, 10, 10]]; 
_cam1 attachTo [_anchor, [0, -0.5, 1]];

/* Orientation:
   setDir 0: Faces forward relative to the vehicle
   setVectorUp [0, 1, 0]: Tilts the camera 90 degrees down 
   to look straight at the ground.
*/
/* To face STRAIGHT DOWN with a horizontal frame:
   VectorDir: [0, 0, -1] -> Points the lens directly at the ground (Z-axis negative).
   VectorUp: [0, 1, 0] -> Sets the 'top' of the camera to the vehicle's 'forward' (Y-axis).
*/
_cam1 setVectorDirAndUp [[0, 0, -1], [1, 0, 0]];

_cam1 cameraEffect ["Internal", "Back", "rtt1"];
_cam1 camCommand "MANUAL OFF";

hintSilent "Press [NUM-5] (center-view) to close the camera feed";

// Wait for the exit command
//waitUntil {inputAction "lookCenter" > 0};
waitUntil {(inputAction "lookCenter" > 0) || {uiNamespace getVariable ["JC_Takmyr_KillCam", false]}};

// Cleanup
hintSilent "";
"RscCameraFeed" cutText ["", "PLAIN"]; // Remove the HUD layer
camDestroy _cam1;
player cameraEffect ["TERMINATE", "BACK"];




/*
1st screenshot
_cam1 setDir 90;
_cam1 setVectorUp [0.99,0.01,0.01];


2nd screenshot
_cam1 setDir 0;
_cam1 setVectorUp [0.0,0.01,0.01];
