/*
-copy this file into your root mission folder (the same place where you find mission.sqm);
-while in gameplay, open debug menu [ESC], paste the line below and hit [EXEC]:
[]execVm "takmyr_lite.sqf"
*/


        private _stretcher1 = createVehicle ["Land_Stretcher_01_sand_F", [0,0,0], [], 0, "NONE"];
        private _stretcher2 = createVehicle ["Land_Stretcher_01_sand_F", [0,0,0], [], 0, "NONE"];
        private _stretcher3 = createVehicle ["Land_Stretcher_01_sand_F", [0,0,0], [], 0, "NONE"];
        private _stretcher4 = createVehicle ["Land_Stretcher_01_sand_F", [0,0,0], [], 0, "NONE"];
		private _doubleRedTacticalLampFront = createVehicle ["Land_PortableLight_double_F", [0,0,0], [], 0, "NONE"];
		private _doubleRedTacticalLampRear = createVehicle ["Land_PortableLight_double_F", [0,0,0], [], 0, "NONE"];
		private _rrPierLadder = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _rlPierLadder = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _medicalPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _medicalPierLaderFront = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _medicalPierLaderEntry = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorFrontLeft = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorRearLeft = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorFrontRight = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorRearRight = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorLeft = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _wallFloorRight = createVehicle ["Land_Mil_WallBig_4m_F", [0,0,0], [], 0, "NONE"];
		private _medKit = createVehicle ["Land_FirstAidKit_01_closed_F", [0,0,0], [], 0, "NONE"];
		private _medKitFront = createVehicle ["Land_FirstAidKit_01_closed_F", [0,0,0], [], 0, "NONE"];
		private _medKitEntry = createVehicle ["Land_FirstAidKit_01_closed_F", [0,0,0], [], 0, "NONE"];
		private _dockPierHelipadLight = createVehicle ["PortableHelipadLight_01_yellow_F", [0,0,0], [], 0, "NONE"];
		private _outerSwitchLower = createVehicle ["PortableHelipadLight_01_green_F", [0,0,0], [], 0, "NONE"];
sleep 0.1;
		private _entryDockFloor = createVehicle ["Land_MedicalTent_01_floor_light_F", [0,0,0], [], 0, "NONE"];
		private _innerSwitchLower = createVehicle ["PortableHelipadLight_01_green_F", [0,0,0], [], 0, "NONE"];
                        
        _stretcher1 attachTo [takmyr, [9.83, -14.25, 1.7]];
        _stretcher1 setDir 180;
        _stretcher2 attachTo [takmyr, [-9.83, -0.25, 1.7]];
        _stretcher2 setDir 180;
        _stretcher3 attachTo [takmyr, [9.83, 10, 1.7]];
        _stretcher3 setDir 180;
        _stretcher4 attachTo [takmyr, [-9.83, 10, 1.7]];
        _stretcher4 setDir 180;
		_doubleRedTacticalLampRear attachTo [takmyr, [8.75, -12.75, 2.5]];
        _doubleRedTacticalLampRear setDir 45;
		_doubleRedTacticalLampRear switchLight "ON";
		_doubleRedTacticalLampFront attachTo [takmyr, [8.75, 0.5, 2.5]];
        _doubleRedTacticalLampFront setDir 150;
		_doubleRedTacticalLampFront switchLight "ON";
		_rrPierLadder attachTo [takmyr, [9.83, -9.5, 5.6]];
		_rrPierLadder setDir 90;
		_rlPierLadder attachTo [takmyr, [-9.83, -9.5, 5.6]];
		_rlPierLadder setDir 270;
		_medicalPierLader attachTo [takmyr, [-9.83, 6.1, 5.6]];
		_medicalPierLader setDir 270;
		_medicalPierLaderEntry attachTo [takmyr, [9.83, -33.4, 5.6]];
		_medicalPierLaderEntry setDir 90;
		_medicalPierLaderFront attachTo [takmyr, [-9.83, 39.75, 5.6]];
		_medicalPierLaderFront setDir 270;

		_dockPierHelipadLight attachTo [takmyr,[10.31, -104.16, 5.83]];
		[_dockPierHelipadLight, [0,0,-90]] call BIS_fnc_setObjectRotation;
		_dockPierHelipadLight allowDamage false;
		_medKit attachTo [takmyr,[-10.31, 6.6, 2.83]];
		_medKit setDir 270;
		_medKit allowDamage false;
		_medKitFront attachTo [takmyr,[-10.31, 40.31, 2.83]];
		_medKitFront setDir 270;
		_medKitFront allowDamage false;
		_medKitEntry attachTo [takmyr,[10.31, -32.65, 2.83]];
		_medKitEntry setDir 90;
		_medKitEntry allowDamage false;
		_outerSwitchLower attachTo [takmyr,[0, -25, 1.6]];
		_outerSwitchLower allowDamage false;
		_entryDockFloor attachTo [_outerSwitchLower,[0, 2, 0.16]];
		_entryDockFloor allowDamage false;
		_innerSwitchLower attachTo [takmyr,[0, 6.6, 1.6]];
		_innerSwitchLower allowDamage false;





// --- DOCKBARGE SPAWN ---
        private _dockAnchor = [0, -91.25, 9.6];
        takmyr setVariable ["JC_Barge_DockAnchor", _dockAnchor, true];
        private _dockCompArray = [
            ["PortableHelipadLight_01_yellow_F", [0, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 8, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -8, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, 2.5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [-2.5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [2.5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, -2.5, 0.16], [0, 0, 0]],
            ["Land_MedicalTent_01_floor_light_F", [0, 0, 0.07], [0, 0, 0]]
        ];
        
        private _spawnedDock = [];
        {
            _x params ["_class", "_offset", "_rot"];
            private _item = createVehicle [_class, [0,0,0], [], 0, "NONE"];
            _item attachTo [takmyr, [(_dockAnchor select 0) + (_offset select 0), (_dockAnchor select 1) + (_offset select 1), (_dockAnchor select 2) + (_offset select 2)]];
            _item setDir (_rot select 0);
            [_item, _rot select 1, _rot select 2] call BIS_fnc_setPitchBank;
            _spawnedDock pushBack _item;
        } forEach _dockCompArray;
        
        private _centerLight = _spawnedDock select 0;
        private _tentFloor = _spawnedDock select 13;
        
        _centerLight setVariable ["JC_dockBarge_Floor", true, true];

        takmyr setVariable ["JC_dockBarge_Objects", _spawnedDock, true];


        [_spawnedDock] spawn {
            params ["_lights"];
            private _center = [_lights select 0];
            private _outer = [_lights select 1, _lights select 2, _lights select 3, _lights select 4];
            private _middle = [_lights select 5, _lights select 6, _lights select 7, _lights select 8];
            private _inner = [_lights select 9, _lights select 10, _lights select 11, _lights select 12];
            private _fnc_setLights = {
                params ["_turnOn", "_turnOff1", "_turnOff2", "_turnOff3"];
                { _x switchLight "ON"; } forEach _turnOn;
                { _x switchLight "OFF"; } forEach _turnOff1;
                { _x switchLight "OFF"; } forEach _turnOff2;
                { _x switchLight "OFF"; } forEach _turnOff3;
            };
            while {!isNull (_lights select 0)} do {
                [_outer, _middle, _inner, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_middle, _outer, _inner, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_inner, _outer, _middle, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_center, _outer, _middle, _inner] call _fnc_setLights; sleep 0.5;
            };
        };
		





        private _dockAnchorFront = [0, -56.7, 9.6];

        private _dockCompArrayFront = [
            ["PortableHelipadLight_01_yellow_F", [0, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 8, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -8, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, 2.5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [-2.5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [2.5, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, -2.5, 0.16], [0, 0, 0]],
            ["Land_MedicalTent_01_floor_light_F", [0, 0, 0.07], [0, 0, 0]],
            ["PortableHelipadLight_01_green_F", [2.05, 3.5, 0.11], [0, 0, 0]],
			["PortableHelipadLight_01_green_F", [2.05, 29, 0.11], [0, 0, 0]]
        ];
        
        private _spawnedDockFront = [];
        {
            _x params ["_class", "_offset", "_rot"];
            private _item = createVehicle [_class, [0,0,0], [], 0, "NONE"];
            _item attachTo [takmyr, [(_dockAnchorFront select 0) + (_offset select 0), (_dockAnchorFront select 1) + (_offset select 1), (_dockAnchorFront select 2) + (_offset select 2)]];
            _item setDir (_rot select 0);
            [_item, _rot select 1, _rot select 2] call BIS_fnc_setPitchBank;
            _spawnedDockFront pushBack _item;
        } forEach _dockCompArrayFront;
        
        private _centerLightFront = _spawnedDockFront select 0;
        private _tentFloorFront = _spawnedDockFront select 13;
        private _outerSwitch = _spawnedDockFront select 14;
		private _innerSwitch = _spawnedDockFront select 15;
        


        [_centerLightFront, [
            "<t color='#FFFF00'>Request SAR Cougar</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_SAR_Cooldown", time + 16, false];
                private _activeCougars = (_targ nearEntities ["C_Heli_EC_04_rescue_RF", 250]) select { _x getVariable ["JC_Autopilot_Active", false] };
                if (count _activeCougars > 0) then {
                    private _heli = _activeCougars select 0;
                    _heli setVariable ["JC_Forced_LZ", _targ, true];
                    _heli setVariable ["JC_Request_AutoLand", true, true];
                    private _loop = _heli getVariable ["JC_Autopilot_ArrivalLoop", scriptNull];
                    if (scriptDone _loop) then { [_heli, _caller, getPos _targ, true] remoteExec ["JC_Lifting_fnc_Autopilot_Engage", 2]; };
                    systemChat "SAR Cougar override accepted.";
                    [_heli, "", "vehicleChat", "AUTO-PILOT: Emergency Override received. Diverting to Barge Helipad!"] remoteExec ["JC_Lifting_fnc_Messages", crew _heli];
                } else { systemChat "No active SAR Cougar Autopilot detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['C_Heli_EC_04_rescue_RF', 250]) select {alive _x && _x getVariable ['JC_Autopilot_Active', false]}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightFront];

        [_centerLightFront, [
            "<t color='#FFA500'>Request Falcon Landing</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_Drone_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_Drone_SAR_Cooldown", time + 16, false];
                private _activeDrones = (_targ nearEntities ["B_T_UAV_03_dynamicLoadout_F", 250]) select { alive _x };
                if (count _activeDrones > 0) then {
                    private _drone = _activeDrones select 0;
                    _drone setVariable ["JC_Forced_LZ", _targ, true];
                    [_drone, getPos _targ] remoteExec ["JC_Lifting_fnc_Autopilot_Drone", 2];
                    systemChat "Falcon override accepted.";
                } else { systemChat "No active MQ-12 Falcon detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['B_T_UAV_03_dynamicLoadout_F', 250]) select {alive _x}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightFront];

        [_spawnedDockFront] spawn {
            params ["_lights"];
            private _center = [_lights select 0];
            private _outer = [_lights select 1, _lights select 2, _lights select 3, _lights select 4];
            private _middle = [_lights select 5, _lights select 6, _lights select 7, _lights select 8];
            private _inner = [_lights select 9, _lights select 10, _lights select 11, _lights select 12];
            private _fnc_setLights = {
                params ["_turnOn", "_turnOff1", "_turnOff2", "_turnOff3"];
                { _x switchLight "ON"; } forEach _turnOn;
                { _x switchLight "OFF"; } forEach _turnOff1;
                { _x switchLight "OFF"; } forEach _turnOff2;
                { _x switchLight "OFF"; } forEach _turnOff3;
            };
            while {!isNull (_lights select 0)} do {
                [_outer, _middle, _inner, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_middle, _outer, _inner, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_inner, _outer, _middle, _center] call _fnc_setLights; sleep 0.5; if (isNull (_lights select 0)) exitWith {};
                [_center, _outer, _middle, _inner] call _fnc_setLights; sleep 0.5;
            };
        };

_innerSwitch switchLight OFF; _outerSwitch switchLight ON;


JC_fnc_localHangarTractor = {
    _this spawn {
        params ["_veh", "_destPos"];
        
        if (_veh getVariable ["JC_HangarTractor_Lock", false]) exitWith {};
        _veh setVariable ["JC_HangarTractor_Lock", true, true];
        
        _veh enableSimulationGlobal true;


        private _currentPos = getPosATL _veh;
        _veh setPosATL [_currentPos select 0, _currentPos select 1, (_currentPos select 2) + 0.25];

        while {(_veh distance2D _destPos) > 0.5} do {
            if (!alive _veh) exitWith {};
            
            private _dist = _veh distance2D _destPos;
            private _speed = (_dist * 0.16) max 0.5 min 3;
            
            private _dir = _veh getDir _destPos;
            

            _veh setVelocity [
                (sin _dir) * _speed,
                (cos _dir) * _speed,
                0 
            ];
            
            sleep 0.03; 
        };
        
        _veh setVelocity [0, 0, 0];

        _veh setVariable ["JC_HangarTractor_Lock", false, true];
    };
};
publicVariable "JC_fnc_localHangarTractor";

_innerSwitch addAction [
    "<t color='#00FF66'>[JC_Lift] Engage Tractor: Pull Vehicle IN</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_outer", "_inner"];
        
        private _foundVehs = nearestObjects [_outer, ["LandVehicle", "Air", "Ship"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Dragging asset to internal slot for resupply." remoteExec ["hintSilent", _caller];
            
            [_veh, getPosATL _inner] remoteExec ["JC_fnc_localHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected on the exterior pad!" remoteExec ["hint", _caller];
        };
    },
    [_outerSwitch, _innerSwitch], 11, true, true, "", "true", 5
];


_outerSwitch addAction [
    "<t color='#FF3333'>[JC_Lift] Engage Tractor: Push Vehicle OUT</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_inner", "_outer"];
        
        private _foundVehs = nearestObjects [_inner, ["LandVehicle", "Air", "Ship"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Clearing revamped asset to exterior pad." remoteExec ["hintSilent", _caller];
            

            [_veh, getPosATL _outer] remoteExec ["JC_fnc_localHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected within the interior slot!" remoteExec ["hint", _caller];
        };
    },
    [_innerSwitch, _outerSwitch], 11, true, true, "", "true", 5
];


_outerSwitch addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        
        
        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air", "Ship"], 7];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            
        
            [_veh, [_targetPos select 0, _targetPos select 1, _currentZ]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
            
            "Vehicle centered over the exterior pad alignment." remoteExec ["hintSilent", _caller];
        } else {
            "System Error: No vehicle detected within 7 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];



JC_fnc_lowerHangarTractor = {
    _this spawn {
        params ["_veh", "_destPos"];
        
        if (_veh getVariable ["JC_lowerHangarTractor_Lock", false]) exitWith {};
        _veh setVariable ["JC_lowerHangarTractor_Lock", true, true];
        
        _veh enableSimulationGlobal true;


        private _currentPos = getPosATL _veh;
        _veh setPosATL [_currentPos select 0, _currentPos select 1, (_currentPos select 2) + 0.25];

        while {(_veh distance2D _destPos) > 0.5} do {
            if (!alive _veh) exitWith {};
            
            private _dist = _veh distance2D _destPos;
            private _speed = (_dist * 0.16) max 0.5 min 3;
            
            private _dir = _veh getDir _destPos;
            

            _veh setVelocity [
                (sin _dir) * _speed,
                (cos _dir) * _speed,
                0 
            ];
            
            sleep 0.03; 
        };
        

        _veh setVelocity [0, 0, 0];
        

        _veh setVariable ["JC_lowerHangarTractor_Lock", false, true];
    };
};
publicVariable "JC_fnc_lowerHangarTractor";


_innerSwitchLower addAction [
    "<t color='#00FF66'>[JC_Lift] Engage Tractor: Pull Vehicle IN</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_outer", "_inner"];
        
        private _foundVehs = nearestObjects [_outer, ["LandVehicle", "Air"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Dragging asset to internal slot for resupply." remoteExec ["hintSilent", _caller];
            
            
            [_veh, getPosATL _inner] remoteExec ["JC_fnc_lowerHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected on the entry green light!" remoteExec ["hint", _caller];
        };
    },
    [_outerSwitchLower, _innerSwitchLower], 11, true, true, "", "true", 5
];


_outerSwitchLower addAction [
    "<t color='#FF3333'>[JC_Lift] Engage Tractor: Push Vehicle OUT</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_inner", "_outer"];
        
        private _foundVehs = nearestObjects [_inner, ["LandVehicle", "Air"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Towing revamped asset to entry area." remoteExec ["hintSilent", _caller];
            

            [_veh, getPosATL _outer] remoteExec ["JC_fnc_lowerHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected within the interior green light!" remoteExec ["hint", _caller];
        };
    },
    [_innerSwitchLower, _outerSwitchLower], 11, true, true, "", "true", 5
];

_outerSwitchLower addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        

        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air"], 10];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            

            [_veh, [_targetPos select 0, _targetPos select 1, _currentZ]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
            
            "Vehicle centered over the entry green light alignment." remoteExec ["hintSilent", _caller];
        } else {
            "System Error: No vehicle detected within 10 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];