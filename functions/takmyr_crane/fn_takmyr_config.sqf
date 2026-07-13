/*
    JC Virtual Takmyr Project - Refactored Configuration
    Uses Slot-based cleanup logic.
    File: fn_takmyr_config.sqf
*/

[
    ["B_Heli_Transport_03_F"],
    [
        ["Heavy Armor (Fuselage/Cabin)", [
            ["None", {
                params ["_veh"];
                { if (_x getVariable ["JC_Takmyr_Slot", ""] == "Armor") then { deleteVehicle _x }; } forEach attachedObjects _veh;
            }],
            ["Full Scrap Plating (12 Plates)", {
                params ["_veh"];
                // Cleanup Slot
                { if (_x getVariable ["JC_Takmyr_Slot", ""] == "Armor") then { deleteVehicle _x }; } forEach attachedObjects _veh;
                
                private _plates = [
                    [[1.4,6.9,-0.7], [-16.5,0,-93], 1.2],
                    [[1.55,5.6,-0.7], [-1.5,0,-93], 1.2],
                    [[1.3,6.9,-1.5], [-16.5,0,-93], 1.2],
                    [[1.45,5.6,-1.5], [-1.5,0,-93], 1.2],
                    [[-1.45,6.9,-0.7], [-166.5,0,-93], 1.2],
                    [[-1.6,5.6,-0.7], [-181.5,0,-93], 1.2],
                    [[-1.35,6.9,-1.5], [-166.5,0,-93], 1.2],
                    [[-1.5,5.6,-1.5], [-181.5,0,-93], 1.2],
                    [[-0.65,8.0,-1.5], [-111.5,90,-123], 0.9],
                    [[0,7.3,-0.8], [270,0,227], 2.5],
                    [[0,6.5,-2.4], [90,0,7], 2.5],
                    [[0.65,8.0,-1.5], [-71.5,-90,-123], 0.9]
                ];
                {
                    _x params ["_pos", "_rot", "_scale"];
                    private _p = createSimpleObject ["Land_Wreck_Heli_02_Wreck_04_F", [0,0,0]];
                    _p attachTo [_veh, _pos];
                    _p setVariable ["JC_Takmyr_Slot", "Armor", true];
                    [_p, _rot] call BIS_fnc_setObjectRotation;
                    _p setObjectScale _scale;
                } forEach _plates;
            }]
        ]],
        ["Medical Equipment", [
            ["None", {
                params ["_veh"];
                { if (_x getVariable ["JC_Takmyr_Slot", ""] == "Extras") then { deleteVehicle _x }; } forEach attachedObjects _veh;
            }],
            ["Front & Rear Kits", {
                params ["_veh"];
                { if (_x getVariable ["JC_Takmyr_Slot", ""] == "Extras") then { deleteVehicle _x }; } forEach attachedObjects _veh;
                
                private _m1 = createSimpleObject ["Land_FirstAidKit_01_closed_F", [0, 0, 0]];
                _m1 attachTo [_veh, [1.9, 3.7, -1.8]];
                _m1 setDir 225;
                _m1 setVariable ["JC_Takmyr_Slot", "Extras", true];
                
                private _m2 = createSimpleObject ["Land_FirstAidKit_01_closed_F", [0, 0, 0]];
                _m2 attachTo [_veh, [2.05, -4.2, -2.1]];
                _m2 setDir 270;
                _m2 setVariable ["JC_Takmyr_Slot", "Extras", true];
            }]
        ]],
        ["Weapon Systems (Turrets)", [
            ["Standard (Miniguns)", {
                params ["_veh"];
                _veh removeWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh removeWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addWeaponTurret ["LMG_Minigun_Transport",[1]];
                _veh addWeaponTurret ["LMG_Minigun_Transport2",[2]];
            }],
            ["Full CAS (30mm/Rockets)", {
                params ["_veh"];
                _veh removeWeaponTurret ["LMG_Minigun_Transport",[1]];
                _veh removeWeaponTurret ["LMG_Minigun_Transport2",[2]];
                _veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addWeaponTurret ["rockets_Skyfire",[0]];
                _veh addWeaponTurret ["gatling_20mm",[0]];
            }]
        ]]
    ]
]

