/*
    Takmyr Crane - UI Update Loop
    File: fn_takmyr_uiUpdateLoop.sqf
    Runs while the UI is open, updating button colors and states based on cargo status.
*/
disableSerialization;

private _display = findDisplay 9930;
if (isNull _display) exitWith {};

private _btnDisengage = _display displayCtrl 2401;
private _btnTow = _display displayCtrl 2400;
private _btnRelease = _display displayCtrl 2402;

while {!isNull _display} do {
    if (isNil "takmyr") exitWith {};
    
    private _cargo = takmyr getVariable ["jc_takmyr_craneCargo", objNull];
    
    if (!isNull _cargo) then {
        // Cargo IS attached
        _btnDisengage ctrlSetBackgroundColor [0.6, 0, 0, 1]; // Bright Red (Warning)
        _btnDisengage ctrlSetTooltip "Cannot disengage while holding cargo!";
        
        _btnTow ctrlSetBackgroundColor [0.2, 0.2, 0.2, 1]; // Disabled Grey
        _btnTow ctrlSetTooltip "Crane is already holding cargo.";
        
        _btnRelease ctrlSetBackgroundColor [0, 0.5, 0, 1]; // Active Green
        _btnRelease ctrlSetTooltip "Release the attached cargo.";
    } else {
        // NO Cargo attached
        _btnDisengage ctrlSetBackgroundColor [0, 0.4, 0, 1]; // Safe Green
        _btnDisengage ctrlSetTooltip "Safely disengage crane and close UI.";
        
        _btnTow ctrlSetBackgroundColor [0, 0.3, 0.6, 1]; // Active Blue
        _btnTow ctrlSetTooltip "Scan and tow nearby vehicle.";
        
        _btnRelease ctrlSetBackgroundColor [0.2, 0.2, 0.2, 1]; // Disabled Grey
        _btnRelease ctrlSetTooltip "No cargo attached to release.";
    };
    
    sleep 0.5; // Update twice a second
};
