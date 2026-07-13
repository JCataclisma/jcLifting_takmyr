/*
    Comprehensive Huron Takmyr Config
    Full CAS is now the default (Option 1).
*/

[
    ["B_Heli_Transport_03_F"],
    [
        ["Weapon Systems (Turrets)", [
            ["Full CAS (30mm/Rockets/Flares)", {
                params ["_veh"];
                _veh removeWeaponTurret ["LMG_Minigun_Transport",[1]];
                _veh removeWeaponTurret ["LMG_Minigun_Transport2",[2]];
                _veh removeWeaponTurret ["LMG_Minigun_Transport",[2]];
                _veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh addMagazineTurret ["168Rnd_CMFlare_Chaff_Magazine",[-1]];
                _veh addWeaponTurret ["rockets_Skyfire",[0]];
                _veh addWeaponTurret ["gatling_20mm",[0]];
                _veh addWeaponTurret ["CMFlareLauncher",[0]];
                _veh addMagazineTurret ["300Rnd_20mm_shells",[0]];
                _veh addMagazineTurret ["38Rnd_80mm_rockets",[0]];
                _veh addMagazineTurret ["168Rnd_CMFlare_Chaff_Magazine",[0]];
                _veh addWeaponTurret ["rockets_Skyfire",[-1]];
                _veh addWeaponTurret ["gatling_20mm",[-1]];
                _veh addWeaponTurret ["CMFlareLauncher",[-1]];
                _veh addMagazineTurret ["300Rnd_20mm_shells",[-1]];
                _veh addMagazineTurret ["38Rnd_80mm_rockets",[-1]];
                _veh addMagazineTurret ["168Rnd_CMFlare_Chaff_Magazine",[-1]];
            }],
            ["Standard (Miniguns)", {
                params ["_veh"];
                _veh removeWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[1]];
                _veh removeWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[2]];
                _veh removeWeaponTurret ["rockets_Skyfire",[0]];
                _veh removeWeaponTurret ["gatling_20mm",[0]];
                _veh addWeaponTurret ["LMG_Minigun_Transport",[1]];
                _veh addWeaponTurret ["LMG_Minigun_Transport2",[2]];
            }]
        ]],
        ["Heavy Armor (Fuselage/Cabin)", [
            ["None", { 
                params ["_veh"]; 
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_Wreck_Heli_02_Wreck_04_F" });
            }],
            ["Full Scrap Plating (12 Plates)", {
                params ["_veh"];
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_Wreck_Heli_02_Wreck_04_F" });
                _plates = [
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
                    _p = createVehicle ["Land_Wreck_Heli_02_Wreck_04_F", [0,0,0], [], 0, "NONE"];
                    _p attachTo [_veh, _pos];
                    _p setVariable ["QS_attached", true, true];
                    [_p, _rot] call BIS_fnc_setObjectRotation;
                    _p allowDamage false;
                    _p setObjectScale _scale;
                } forEach _plates;
            }]
        ]],
        ["Medical Equipment", [
            ["None", { 
                params ["_veh"]; 
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_FirstAidKit_01_closed_F" });
            }],
            ["Front & Rear Kits", {
                params ["_veh"];
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_FirstAidKit_01_closed_F" });
                _m1 = "Land_FirstAidKit_01_closed_F" createVehicle [0, 0, 0];
                _m1 attachTo [_veh, [1.9, 3.7, -1.8]];
                _m1 setDir 225;
                _m1 setVariable ["QS_attached", true, true];
                _m2 = "Land_FirstAidKit_01_closed_F" createVehicle [0, 0, 0];
                _m2 attachTo [_veh, [2.05, -4.2, -2.1]];
                _m2 setDir 270;
                _m2 setVariable ["QS_attached", true, true];
            }]
        ]],
        ["Heavy Utility & Payload (Tows + SDVs)", [
            ["None", { 
                params ["_veh"]; 
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_TowBar_01_F" || _x isKindOf "SDV_01_base_F" });
            }],
            ["Full Tows & Dual SDV Bombs", {
                params ["_veh"];
                { deleteVehicle _x } forEach (attachedObjects _veh select { typeOf _x == "Land_TowBar_01_F" || _x isKindOf "SDV_01_base_F" });
                _tows = [[[-2.35, -3.2, -1.15], [-90,-15,0]], [[-2.35, 0.9, -1.15], [-90,-15,0]], [[2.35, -3.2, -1.15], [90,-15,0]], [[2.35, 0.9, -1.15], [90,-15,0]]];
                {
                    _x params ["_pos", "_rot"];
                    _t = "Land_TowBar_01_F" createVehicle [0, 0, 0];
                    _t attachTo [_veh, _pos];
                    _t setVariable ["QS_attached", true, true];
                    [_t, _rot] call BIS_fnc_setObjectRotation;
                } forEach _tows;
                _bombs = [[-4.2, -0.5, -1.2], [4.2, -0.5, -1.2]];
                {
                    _s = "B_SDV_01_F" createVehicle [0, 0, 0];
                    _s attachTo [_veh, _x];
                    _s setVariable ["QS_attached", true, true];
                    _s setVariable ["isAttachedSubs", true, true];
                    _s setObjectTextureGlobal [0, "a3\soft_f_exp\offroad_02\data\offroad_02_ext_orange_co.paa"];
                    _s lockDriver true;
                    _s animateSource ["Doors", 1];
                    _s animateSource ["periscope", 10];
                } forEach _bombs;
                if ((_veh getVariable ["BOMBS_ACTION_ID", -1]) == -1) then {
                    _actionID = _veh addAction ["<t color='#ff7620'>BOMBS Away!</t>", {
                        params ["_target", "_caller", "_actionId"];
                        private _subs = (attachedObjects _target) select {_x isKindOf "SDV_01_base_F"};
                        {
                            if (_x getVariable ["isAttachedSubs", false]) then {
                                detach _x;
                                [] spawn { execVM "code\scripts\62th_gamersBR_bombsAway.sqf" };
                            };
                        } forEach _subs;
                        _target removeAction _actionId;
                        _target setVariable ["BOMBS_ACTION_ID", -1, true];
                    }, nil, -9, false, true, "User17", "(_this == _target turretUnit [-1] or _this == _target turretUnit [0])"];
                    _veh setVariable ["BOMBS_ACTION_ID", _actionID, true];
                };
            }]
        ]]
    ]
]

