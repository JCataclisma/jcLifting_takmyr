/*
    Takmyr Crane - Release Cargo
    File: fn_takmyr_craneRelease.sqf
    Detaches the current cargo.
*/
if (isNil "takmyr") exitWith {};

private _cargo = takmyr getVariable ["jc_takmyr_craneCargo", objNull];
if (isNull _cargo) exitWith { systemChat "No cargo to release!"; };

// Tell server to detach cargo
[[_cargo], {
    params ["_cargo"];
    detach _cargo;
    
    // Optional: Add a slight downward velocity or reset vector to prevent physics bounce
    _cargo setVelocity [0,0,-0.5];
    
    takmyr setVariable ["jc_takmyr_craneCargo", objNull, true];
}] remoteExec ["call", 2];

systemChat "Cargo Released!";
