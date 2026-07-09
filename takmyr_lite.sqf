/*
[]execVm "takmyr.sqf"
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
		private _upperPierLaderEntry = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _hangarBridgePierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _rrDeckDoorPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _rlDeckDoorPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _frontDeckPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _midDeckPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
		private _rearDeckPierLader = createVehicle ["Land_PierLadder_F", [0,0,0], [], 0, "NONE"];
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
		_upperPierLaderEntry attachTo [takmyr, [9.7, -38.5, 15.75]];
		_upperPierLaderEntry setDir 90;
		_hangarBridgePierLader attachTo [takmyr, [-5.25, -38.5, 15.75]];
		_hangarBridgePierLader setDir 270;
		_medicalPierLaderFront attachTo [takmyr, [-9.83, 39.75, 5.6]];
		_medicalPierLaderFront setDir 270;
		_rearDeckPierLader attachTo [takmyr, [0, -19.5, 20.25]];
		[_rearDeckPierLader, [270,-45,0]] call BIS_fnc_setObjectRotation;
		_midDeckPierLader attachTo [takmyr, [-9, -0.5, 15.75]];
		[_midDeckPierLader, [180,-7,0]] call BIS_fnc_setObjectRotation;
		_frontDeckPierLader attachTo [takmyr, [-9, 74, 12.5]];
		[_frontDeckPierLader, [180,-50,0]] call BIS_fnc_setObjectRotation;
		_rlDeckDoorPierLader attachTo [takmyr, [-10, -66.5, 7.5]];
		[_rlDeckDoorPierLader, [270,0,0]] call BIS_fnc_setObjectRotation;
		_rrDeckDoorPierLader attachTo [takmyr, [10, -66.5, 7.5]];
		[_rrDeckDoorPierLader, [90,0,0]] call BIS_fnc_setObjectRotation;
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
		



// --- DOCKBARGE SPAWN --- Upper Deck
        private _dockAnchorUpperDeck = [0, 7.5, 12.51];
//        takmyr setVariable ["JC_Barge_dockAnchorUpperDeck", _dockAnchorUpperDeck, true];
        private _dockCompArrayUpperDeck = [
            ["PortableHelipadLight_01_yellow_F", [0, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 7.5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -7.5, 0.16], [0, 0, 0]],
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
        
        private _spawnedDockUpperDeck = [];
        {
            _x params ["_class", "_offset", "_rot"];
            private _item = createVehicle [_class, [0,0,0], [], 0, "NONE"];
            _item attachTo [takmyr, [(_dockAnchorUpperDeck select 0) + (_offset select 0), (_dockAnchorUpperDeck select 1) + (_offset select 1), (_dockAnchorUpperDeck select 2) + (_offset select 2)]];
            _item setDir (_rot select 0);
            [_item, _rot select 1, _rot select 2] call BIS_fnc_setPitchBank;
            _spawnedDockUpperDeck pushBack _item;
        } forEach _dockCompArrayUpperDeck;
        
        private _centerLightUpperDeck = _spawnedDockUpperDeck select 0;
        private _tentFloorUpperDeck = _spawnedDockUpperDeck select 13;
        


        [_centerLightUpperDeck, [
            "<t color='#FFFF00'>Request SAR Cougar</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_SAR_Cooldown", time + 10, false];
                private _activeCougars = (_targ nearEntities ["C_Heli_EC_04_rescue_RF", 500]) select { _x getVariable ["JC_Autopilot_Active", false] };
                if (count _activeCougars > 0) then {
                    private _heli = _activeCougars select 0;
                    _heli setVariable ["JC_Forced_LZ", _targ, true];
                    _heli setVariable ["JC_Request_AutoLand", true, true];
                    private _loop = _heli getVariable ["JC_Autopilot_ArrivalLoop", scriptNull];
                    if (scriptDone _loop) then { [_heli, _caller, getPos _targ, true] remoteExec ["JC_Lifting_fnc_Autopilot_Engage", 2]; };
                    systemChat "SAR Cougar override accepted.";
                    [_heli, "", "vehicleChat", "AUTO-PILOT: Emergency Override received. Diverting to Barge Helipad!"] remoteExec ["JC_Lifting_fnc_Messages", crew _heli];
                } else { systemChat "No active SAR Cougar Autopilot detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['C_Heli_EC_04_rescue_RF', 500]) select {alive _x && _x getVariable ['JC_Autopilot_Active', false]}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightUpperDeck];

        [_centerLightUpperDeck, [
            "<t color='#FFA500'>Request Falcon Landing</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_Drone_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_Drone_SAR_Cooldown", time + 10, false];
                private _activeDrones = (_targ nearEntities ["B_T_UAV_03_dynamicLoadout_F", 500]) select { alive _x };
                if (count _activeDrones > 0) then {
                    private _drone = _activeDrones select 0;
                    _drone setVariable ["JC_Forced_LZ", _targ, true];
                    [_drone, getPos _targ] remoteExec ["JC_Lifting_fnc_Autopilot_Drone", 2];
                    systemChat "Falcon override accepted.";
                } else { systemChat "No active MQ-12 Falcon detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['B_T_UAV_03_dynamicLoadout_F', 500]) select {alive _x}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightUpperDeck];

        [_spawnedDockUpperDeck] spawn {
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


// --- DOCKBARGE SPAWN --- FRONT DECK
        private _dockAnchorFrontDeck = [0, 78, 10.83];
//        takmyr setVariable ["JC_Barge_dockAnchorFrontDeck", _dockAnchorFrontDeck, true];
        private _dockCompArrayFrontDeck = [
            ["PortableHelipadLight_01_yellow_F", [0, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 6, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [8, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -6, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, 3, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [-4, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [4, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_red_F", [0, -3, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, 1.5, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [-2, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [2, 0, 0.16], [0, 0, 0]],
            ["PortableHelipadLight_01_blue_F", [0, -1.5, 0.16], [0, 0, 0]],
            ["Land_MedicalTent_01_floor_light_F", [0, 0, 0.07], [0, 0, 0]]
        ];
        
        private _spawnedDockFrontDeck = [];
        {
            _x params ["_class", "_offset", "_rot"];
            private _item = createVehicle [_class, [0,0,0], [], 0, "NONE"];
            _item attachTo [takmyr, [(_dockAnchorFrontDeck select 0) + (_offset select 0), (_dockAnchorFrontDeck select 1) + (_offset select 1), (_dockAnchorFrontDeck select 2) + (_offset select 2)]];
            _item setDir (_rot select 0);
            [_item, _rot select 1, _rot select 2] call BIS_fnc_setPitchBank;
            _spawnedDockFrontDeck pushBack _item;
        } forEach _dockCompArrayFrontDeck;
        
        private _centerLightFrontDeck = _spawnedDockFrontDeck select 0;
        private _tentFloorFrontDeck = _spawnedDockFrontDeck select 13;
        


        [_centerLightFrontDeck, [
            "<t color='#FFFF00'>Request SAR Cougar</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_SAR_Cooldown", time + 10, false];
                private _activeCougars = (_targ nearEntities ["C_Heli_EC_04_rescue_RF", 500]) select { _x getVariable ["JC_Autopilot_Active", false] };
                if (count _activeCougars > 0) then {
                    private _heli = _activeCougars select 0;
                    _heli setVariable ["JC_Forced_LZ", _targ, true];
                    _heli setVariable ["JC_Request_AutoLand", true, true];
                    private _loop = _heli getVariable ["JC_Autopilot_ArrivalLoop", scriptNull];
                    if (scriptDone _loop) then { [_heli, _caller, getPos _targ, true] remoteExec ["JC_Lifting_fnc_Autopilot_Engage", 2]; };
                    systemChat "SAR Cougar override accepted.";
                    [_heli, "", "vehicleChat", "AUTO-PILOT: Emergency Override received. Diverting to Barge Helipad!"] remoteExec ["JC_Lifting_fnc_Messages", crew _heli];
                } else { systemChat "No active SAR Cougar Autopilot detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['C_Heli_EC_04_rescue_RF', 500]) select {alive _x && _x getVariable ['JC_Autopilot_Active', false]}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightFrontDeck];

        [_centerLightFrontDeck, [
            "<t color='#FFA500'>Request Falcon Landing</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_Drone_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_Drone_SAR_Cooldown", time + 10, false];
                private _activeDrones = (_targ nearEntities ["B_T_UAV_03_dynamicLoadout_F", 500]) select { alive _x };
                if (count _activeDrones > 0) then {
                    private _drone = _activeDrones select 0;
                    _drone setVariable ["JC_Forced_LZ", _targ, true];
                    [_drone, getPos _targ] remoteExec ["JC_Lifting_fnc_Autopilot_Drone", 2];
                    systemChat "Falcon override accepted.";
                } else { systemChat "No active MQ-12 Falcon detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['B_T_UAV_03_dynamicLoadout_F', 500]) select {alive _x}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightFrontDeck];

        [_spawnedDockFrontDeck] spawn {
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



// --- DOCKBARGE SPAWN --- FRONT HANGAR
        private _dockAnchorFront = [0, -56.7, 9.6];
//        takmyr setVariable ["JC_Barge_dockAnchorFront", _dockAnchorFront, true];
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

private _trgInnerSwitchHangar = createTrigger ["EmptyDetector", [0,0,0], false];
_trgInnerSwitchHangar attachTo [_innerSwitch, [0,0,0]];
_trgInnerSwitchHangar setTriggerArea [6.75, 6.75, 0, true, 3];
_trgInnerSwitchHangar setTriggerActivation ["WEST", "PRESENT", true];
_trgInnerSwitchHangar setTriggerStatements ["this", "{_x setDamage 0; _x setFuel 1; _x setVehicleAmmo 1} forEach thisList;", ""];
        


        [_centerLightFront, [
            "<t color='#FFFF00'>Request SAR Cougar</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_SAR_Cooldown", time + 10, false];
                private _activeCougars = (_targ nearEntities ["C_Heli_EC_04_rescue_RF", 500]) select { _x getVariable ["JC_Autopilot_Active", false] };
                if (count _activeCougars > 0) then {
                    private _heli = _activeCougars select 0;
                    _heli setVariable ["JC_Forced_LZ", _targ, true];
                    _heli setVariable ["JC_Request_AutoLand", true, true];
                    private _loop = _heli getVariable ["JC_Autopilot_ArrivalLoop", scriptNull];
                    if (scriptDone _loop) then { [_heli, _caller, getPos _targ, true] remoteExec ["JC_Lifting_fnc_Autopilot_Engage", 2]; };
                    systemChat "SAR Cougar override accepted.";
                    [_heli, "", "vehicleChat", "AUTO-PILOT: Emergency Override received. Diverting to Barge Helipad!"] remoteExec ["JC_Lifting_fnc_Messages", crew _heli];
                } else { systemChat "No active SAR Cougar Autopilot detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['C_Heli_EC_04_rescue_RF', 500]) select {alive _x && _x getVariable ['JC_Autopilot_Active', false]}) > 0}", 7
        ]] remoteExec ["addAction", 0, _centerLightFront];

        [_centerLightFront, [
            "<t color='#FFA500'>Request Falcon Landing</t>", 
            {
                params ["_targ", "_caller", "_actionId", "_arguments"];
                if (time < (_targ getVariable ["JC_Drone_SAR_Cooldown", 0])) exitWith { systemChat "Transmitting. Please wait..."; };
                _targ setVariable ["JC_Drone_SAR_Cooldown", time + 10, false];
                private _activeDrones = (_targ nearEntities ["B_T_UAV_03_dynamicLoadout_F", 500]) select { alive _x };
                if (count _activeDrones > 0) then {
                    private _drone = _activeDrones select 0;
                    _drone setVariable ["JC_Forced_LZ", _targ, true];
                    [_drone, getPos _targ] remoteExec ["JC_Lifting_fnc_Autopilot_Drone", 2];
                    systemChat "Falcon override accepted.";
                } else { systemChat "No active MQ-12 Falcon detected."; };
            }, nil, 10, false, true, "", "alive takmyr && {count ((takmyr nearEntities ['B_T_UAV_03_dynamicLoadout_F', 500]) select {alive _x}) > 0}", 7
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

			
		

_innerSwitch switchLight OFF; _outerSwitch switchLight OFF;

	// --- DOCKING TRACTOR BEAM FOR UPPER HANGAR DOOR ---
// =========================================================================
// 1. REGISTER THE CORE TRACTOR BEAM LOOP (Locality-Assured & Just Release)
// =========================================================================
JC_fnc_localHangarTractor = {
    _this spawn {
        params ["_veh", "_destPos"];
        
        if (_veh getVariable ["JC_HangarTractor_Lock", false]) exitWith {};
        _veh setVariable ["JC_HangarTractor_Lock", true, true];
        
        _veh enableSimulationGlobal true;

        // Lift by exactly 0.25m ONCE at the start to break ground friction
        private _currentPos = getPosATL _veh;
        _veh setPosATL [_currentPos select 0, _currentPos select 1, (_currentPos select 2) + 0.25];

        while {(_veh distance2D _destPos) > 0.5} do {
            if (!alive _veh) exitWith {};
            
            private _dist = _veh distance2D _destPos;
            private _speed = (_dist * 0.16) max 0.5 min 3;
            
            private _dir = _veh getDir _destPos;
            
            // Pure horizontal push
            _veh setVelocity [
                (sin _dir) * _speed,
                (cos _dir) * _speed,
                0 
            ];
            
            sleep 0.03; 
        };
        
        // JUST RELEASE IT: Absolute zero velocity. No setPosATL, no setVectorUp, no setDir.
        _veh setVelocity [0, 0, 0];
        
        // Release the script lock immediately so the reverse switch is instantly operational
        _veh setVariable ["JC_HangarTractor_Lock", false, true];
    };
};
publicVariable "JC_fnc_localHangarTractor";

// =========================================================================
// 2. INJECT INTERACTIONS INTO SCROLL MENUS
// =========================================================================

// INNER SWITCH: Pulls vehicle deep into the slot
_innerSwitch addAction [
    "<t color='#00FF66'>[JC_Lift] Engage Tractor: Pull Vehicle IN</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_outer", "_inner"];
        
        private _foundVehs = nearestObjects [_outer, ["LandVehicle", "Air", "Ship"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Dragging asset to internal slot for resupply." remoteExec ["hintSilent", _caller];
            
            // Target the specific vehicle owner for the physics commands
            [_veh, getPosATL _inner] remoteExec ["JC_fnc_localHangarTractor", _veh];
//			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
			[takmyr, _veh] call BIS_fnc_unflipThing; sleep 7; [takmyr, _veh] call BIS_fnc_unflipThing;
			_veh engineOn false;
			_veh setVariable ["JC_Lifting_FOB_Materials", true, true];
			[_veh, true] remoteExec ["JC_Lifting_fnc_Action_Update_Van_Capacity", 2];
			[_veh, true] remoteExec ["JC_Lifting_fnc_Action_Update_Material_Visuals", 2];
        } else {
            "System Error: No valid vehicle detected on the exterior pad!" remoteExec ["hint", _caller];
        };
    },
    [_outerSwitch, _innerSwitch], 11, true, true, "", "true", 5
];

// OUTER SWITCH: Pushes vehicle out to the pad
_outerSwitch addAction [
    "<t color='#FF3333'>[JC_Lift] Engage Tractor: Push Vehicle OUT</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_inner", "_outer"];
        
        private _foundVehs = nearestObjects [_inner, ["LandVehicle", "Air", "Ship"], 8];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Clearing revamped asset to exterior pad." remoteExec ["hintSilent", _caller];
            
            // Target the specific vehicle owner for the physics commands
            [_veh, getPosATL _outer] remoteExec ["JC_fnc_localHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
			sleep 1; _veh setDir (getDir takmyr); sleep 2;
			[takmyr, _veh] call BIS_fnc_unflipThing; sleep 7; [takmyr, _veh] call BIS_fnc_unflipThing;
			sleep 7; _veh engineOn true; _veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected within the interior slot!" remoteExec ["hint", _caller];
        };
    },
    [_innerSwitch, _outerSwitch], 11, true, true, "", "true", 5
];

// =========================================================================
// 3. CENTERING ACTION (EXCLUSIVE TO OUTER SWITCH)
// =========================================================================
_outerSwitch addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        
        // Search 5 meters nearby ITSELF (the _outerSwitch target object)
        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air", "Ship"], 7];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            
            // Locality-assured instant snap: Executed directly on the vehicle's owner machine
            [_veh, [_targetPos select 0, _targetPos select 1, (_targetPos select 2) + 0.25]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
            
            "Vehicle centered over the exterior pad alignment." remoteExec ["hintSilent", _caller];
			[takmyr, _veh] call BIS_fnc_unflipThing;
        } else {
            "System Error: No vehicle detected within 7 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];

// =========================================================================
// 4. CENTERING ACTION FOR INNER SWITCH HANGAR (up)
// =========================================================================
_innerSwitch addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        
        // Search 5 meters nearby ITSELF (the _innerSwitch target object)
        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air", "Ship"], 7];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            
            // Locality-assured instant snap: Executed directly on the vehicle's owner machine
            [_veh, [_targetPos select 0, _targetPos select 1, (_targetPos select 2) + 0.25]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1; _veh setVariable ["JC_Lifting_FOB_Materials", true, true];
            
            "Vehicle centered over the exterior pad alignment." remoteExec ["hintSilent", _caller];
			[takmyr, _veh] call BIS_fnc_unflipThing;
        } else {
            "System Error: No vehicle detected within 7 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];




	// --- DOCKING TRACTOR BEAM FOR LOWETR ENTRY ---
// =========================================================================
// 1. REGISTER THE CORE TRACTOR BEAM LOOP (Locality-Assured & Just Release)
// =========================================================================
JC_fnc_lowerHangarTractor = {
    _this spawn {
        params ["_veh", "_destPos"];
        
        if (_veh getVariable ["JC_lowerHangarTractor_Lock", false]) exitWith {};
        _veh setVariable ["JC_lowerHangarTractor_Lock", true, true];
        
        _veh enableSimulationGlobal true;

        // Lift by exactly 0.25m ONCE at the start to break ground friction
        private _currentPos = getPosATL _veh;
        _veh setPosATL [_currentPos select 0, _currentPos select 1, (_currentPos select 2) + 0.25];

        while {(_veh distance2D _destPos) > 0.5} do {
            if (!alive _veh) exitWith {};
            
            private _dist = _veh distance2D _destPos;
            private _speed = (_dist * 0.16) max 0.5 min 3;
            
            private _dir = _veh getDir _destPos;
            
            // Pure horizontal push
            _veh setVelocity [
                (sin _dir) * _speed,
                (cos _dir) * _speed,
                0 
            ];
            
            sleep 0.03; 
        };
        
        // JUST RELEASE IT: Absolute zero velocity. No setPosATL, no setVectorUp, no setDir.
        _veh setVelocity [0, 0, 0];
        
        // Release the script lock immediately so the reverse switch is instantly operational
        _veh setVariable ["JC_lowerHangarTractor_Lock", false, true];
    };
};
publicVariable "JC_fnc_lowerHangarTractor";

// =========================================================================
// 2. INJECT INTERACTIONS INTO SCROLL MENUS
// =========================================================================

// INNER SWITCH: Pulls vehicle deep into the slot
_innerSwitchLower addAction [
    "<t color='#00FF66'>[JC_Lift] Engage Tractor: Pull Vehicle IN</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_outer", "_inner"];
        
        private _foundVehs = nearestObjects [_outer, ["LandVehicle", "Air"], 5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Dragging asset to internal slot for resupply." remoteExec ["hintSilent", _caller];
            
            // Target the specific vehicle owner for the physics commands
            [_veh, getPosATL _inner] remoteExec ["JC_fnc_lowerHangarTractor", _veh];
//			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
			[takmyr, _veh] call BIS_fnc_unflipThing; sleep 7; [takmyr, _veh] call BIS_fnc_unflipThing;
			_veh engineOn false;
			_veh setVariable ["JC_Lifting_FOB_Materials", true, true];
			[_veh, true] remoteExec ["JC_Lifting_fnc_Action_Update_Van_Capacity", 2];
			[_veh, true] remoteExec ["JC_Lifting_fnc_Action_Update_Material_Visuals", 2];
        } else {
            "System Error: No valid vehicle detected on the entry green light!" remoteExec ["hint", _caller];
        };
    },
    [_outerSwitchLower, _innerSwitchLower], 11, true, true, "", "true", 5
];

// OUTER SWITCH: Pushes vehicle out to the pad
_outerSwitchLower addAction [
    "<t color='#FF3333'>[JC_Lift] Engage Tractor: Push Vehicle OUT</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_inner", "_outer"];
        
        private _foundVehs = nearestObjects [_inner, ["LandVehicle", "Air"], 7];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
            "JC_Lifting: Towing revamped asset to entry area." remoteExec ["hintSilent", _caller];
            
            // Target the specific vehicle owner for the physics commands
            [_veh, getPosATL _outer] remoteExec ["JC_fnc_lowerHangarTractor", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
			sleep 1; _veh setDir (getDir takmyr); sleep 2;
			[takmyr, _veh] call BIS_fnc_unflipThing; sleep 7; [takmyr, _veh] call BIS_fnc_unflipThing;
			sleep 7; _veh engineOn true; _veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1;
        } else {
            "System Error: No valid vehicle detected within the interior green light!" remoteExec ["hint", _caller];
        };
    },
    [_innerSwitchLower, _outerSwitchLower], 11, true, true, "", "true", 5
];

// =========================================================================
// 3. CENTERING ACTION (EXCLUSIVE TO OUTER SWITCH lower deck)
// =========================================================================
_outerSwitchLower addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        
        // Search 5 meters nearby ITSELF (the _outerSwitchLower target object)
        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air"], 10];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            
            // Locality-assured instant snap: Executed directly on the vehicle's owner machine
            [_veh, [_targetPos select 0, _targetPos select 1, (_targetPos select 2) + 0.25]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
            
            "Vehicle centered over the entry green light alignment." remoteExec ["hintSilent", _caller];
			[takmyr, _veh] call BIS_fnc_unflipThing;
        } else {
            "System Error: No vehicle detected within 10 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];

// =========================================================================
// 3. CENTERING ACTION (EXCLUSIVE TO INNER SWITCH lower deck)
// =========================================================================
_outerSwitchLower addAction [
    "<t color='#FFA500'>Center-Ready vehicle for Storage</t>",
    {
        params ["_target", "_caller", "_id", "_args"];
        
        // Search 5 meters nearby ITSELF (the _innerSwitchLower target object)
        private _foundVehs = nearestObjects [_target, ["LandVehicle", "Air"], 8.5];
        
        if (count _foundVehs > 0) then {
            private _veh = _foundVehs select 0;
			private _takmyrDir = getDir takmyr;
            
            private _targetPos = getPosATL _target;
            private _currentZ = (getPosATL _veh) select 2;
            
            // Locality-assured instant snap: Executed directly on the vehicle's owner machine
            [_veh, [_targetPos select 0, _targetPos select 1, (_targetPos select 2) + 0.25]] remoteExec ["setPosATL", _veh];
			[_veh, _takmyrDir] remoteExec ["setDir", _veh];
			_veh setDamage 0; _veh setFuel 1; _veh setVehicleAmmo 1; _veh setVariable ["JC_Lifting_FOB_Materials", true, true];
            
            "Vehicle centered over the entry green light alignment." remoteExec ["hintSilent", _caller];
			[takmyr, _veh] call BIS_fnc_unflipThing;
        } else {
            "System Error: No vehicle detected within 10 meters of this switch!" remoteExec ["hint", _caller];
        };
    },
    nil, 12, true, true, "", "true", 7
];


private _trgInnerSwitchLower = createTrigger ["EmptyDetector", [0,0,0], false];
_trgInnerSwitchLower attachTo [_innerSwitchLower, [0,0,0]];
_trgInnerSwitchLower setTriggerArea [6.75, 6.75, 0, true, 5];
_trgInnerSwitchLower setTriggerActivation ["WEST", "PRESENT", true];
_trgInnerSwitchLower setTriggerStatements ["this", "{_x setDamage 0; _x setFuel 1; _x setVehicleAmmo 1} forEach thisList;", ""];









//TELEPORTATION SYSTEM

// ============================================================================
// CENTRALIZED TELEPORT TERMINAL CONFIGURATOR
// Paste this anywhere inside your takmyr.sqf file
// ============================================================================
JC_fnc_setupTeleportTerminal = {
    params ["_terminalObj"];
    if (isNull _terminalObj) exitWith {};

    removeAllActions _terminalObj;

    private _destinations = [
        ["Service Lower Dock", "ServiceRoom", "Service Dock"],
        ["Engine Room", "EngineRoom", "Engine Room"],
        ["Control Bridge", "ControlBridge", "Control Bridge"],
        ["Hangar Bridge", "HangarBridge", "Hangar Bridge"],
		["Front Landing Deck", "FrontLandingDeck", "Front Landing Deck"],
		["Hangar Service Gate", "HangarService", "Hangar Service Gate"],
		["Lower Deck Control", "LowerDeckControl", "Lower Deck Control"]
    ];

    {
        _x params ["_menuName", "_varSuffix", "_alertName"];
        
        _terminalObj addAction [
            format ["<t color='#FFA500'>[Teleport] %1</t>", _menuName], 
            {
                params ["_target", "_caller", "_actionId", "_arguments"];
                _arguments params ["_varSuffix", "_alertName"];
                
                private _offset = takmyr getVariable [format ["JC_Mod_%1_Anchor", _varSuffix], []];
                
                if (count _offset > 0) then {
                    // CRITICAL FIX: Gets absolute world ASL coordinates
                    private _spawnPos = takmyr modelToWorldWorld _offset;
                    
                    // CRITICAL FIX: Safe placement relative to Sea Level, not sea floor
                    _caller setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                    _caller setDir (getDir takmyr);
                    
                    titleText [format ["Teleporting to %1...", _alertName], "PLAIN DOWN", 0.5];
                } else {
                    systemChat format ["Teleport Failed: %1 anchor matrix has not been initialized.", _alertName];
                };
            },
            [_varSuffix, _alertName],
            1.5,
            false,
            true,
            "",
            "true",
            2
        ];
    } forEach _destinations;
};

//	SPECIFIC OBJECTS FOR CALL TELEPORTS
[_medKit] call JC_fnc_setupTeleportTerminal;
[_medKitEntry] call JC_fnc_setupTeleportTerminal;




// =========================================================================
// MODULAR CHAMBER INITIALIZATION PANELS
// =========================================================================

// Arguments: [Parent Object, Relative Offset [X, Y, Z]]
//[takmyr, [0, 6.6, 1.6]] execVM "module_bathroom.sqf";
[takmyr, [4.5, 40.25, 4.5]] execVM "module_serviceRoom.sqf";
[takmyr, [-6.5, 46.16, 2.5]] execVM "module_engineRoom.sqf";
[takmyr, [0, 58.5, 20.9]] execVM "module_controlBridge.sqf";
[takmyr, [-9, -35.5, 17.5]] execVM "module_hangarBridge.sqf";
[takmyr, [-9, -35.5, 5.75]] execVM "module_lowerDeckControl.sqf";
[takmyr, [0, 78, 10.83]] execVM "module_frontLandingDeck.sqf";
[takmyr, [-4.75, -21.31, 10.75]] execVM "module_hangarService.sqf";


//	--- UPPER ENTRY FOR HANGAR BRIDGE
// 1. CREATE AND ANCHOR THE INVISIBLE PAD
private _teleportPadUpperHangarBridge = createVehicle ["Land_HelipadEmpty_F", [0,0,0], [], 0, "NONE"];
_teleportPadUpperHangarBridge attachTo [takmyr, [-1.5, -27.5, 18]];

// 2. CREATE AND ATTACH THE TELEPORTATION TRIGGER
//	_trigger setTriggerArea [axisX, axisY, angle, isRectangle, axisZ]; ---> axisZ is the height, being 2x that value above and extra 2x below
private _trgTeleport = createTrigger ["EmptyDetector", [0,0,0], false];
_trgTeleport attachTo [_teleportPadUpperHangarBridge, [0,0,0]];
_trgTeleport setTriggerArea [2, 2, 0, false, 3];
_trgTeleport setTriggerActivation ["WEST", "PRESENT", true];

// 3. DEFINE THE DYNAMIC REGISTRY LOOKUP STATEMENT
_trgTeleport setTriggerStatements [
    "this",
    "{
        if (local _x && isPlayer _x) then {
            private _varSuffix = 'HangarBridge'; 
            private _alertName = 'Hangar Bridge';

            private _offset = takmyr getVariable [format ['JC_Mod_%1_Anchor', _varSuffix], []];
            
            if (count _offset > 0) then {
                private _spawnPos = takmyr modelToWorldWorld _offset;
                _x setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                _x setDir (getDir takmyr);
                
                titleText [format ['Teleporting to %1...', _alertName], 'PLAIN DOWN', 0.4];
            } else {
                systemChat format ['Teleport Failed: %1 anchor matrix has not been initialized.', _alertName];
            };
        };
    } forEach thisList;",
    ""
];

//	--- LOWER ENTRY FOR HANGAR BRIDGE
// 1. CREATE AND ANCHOR THE INVISIBLE PAD
private _teleportPadLowerHangarBridge = createVehicle ["Land_HelipadEmpty_F", [0,0,0], [], 0, "NONE"];
_teleportPadLowerHangarBridge attachTo [takmyr, [-13.5, -41, 10.25]];

// 2. CREATE AND ATTACH THE TELEPORTATION TRIGGER
private _trgTeleport = createTrigger ["EmptyDetector", [0,0,0], false];
_trgTeleport attachTo [_teleportPadLowerHangarBridge, [0,0,0]];
_trgTeleport setTriggerArea [2, 2, 0, false, 3];
_trgTeleport setTriggerActivation ["WEST", "PRESENT", true];

// 3. DEFINE THE DYNAMIC REGISTRY LOOKUP STATEMENT
_trgTeleport setTriggerStatements [
    "this",
    "{
        if (local _x && isPlayer _x) then {
            private _varSuffix = 'HangarBridge'; 
            private _alertName = 'Hangar Bridge';

            private _offset = takmyr getVariable [format ['JC_Mod_%1_Anchor', _varSuffix], []];
            
            if (count _offset > 0) then {
                private _spawnPos = takmyr modelToWorldWorld _offset;
                _x setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                _x setDir (getDir takmyr);
                
                titleText [format ['Teleporting to %1...', _alertName], 'PLAIN DOWN', 0.4];
            } else {
                systemChat format ['Teleport Failed: %1 anchor matrix has not been initialized.', _alertName];
            };
        };
    } forEach thisList;",
    ""
];

//	--- FRONT LOWER DECK ENTRY FOR MAIN CONTROL BRIDGE
// 1. CREATE AND ANCHOR THE INVISIBLE PAD
private _teleportPadLowerControlBridge = createVehicle ["Land_HelipadEmpty_F", [0,0,0], [], 0, "NONE"];
_teleportPadLowerControlBridge attachTo [takmyr, [10.25, 72, 11.25]];

// 2. CREATE AND ATTACH THE TELEPORTATION TRIGGER
private _trgTeleport = createTrigger ["EmptyDetector", [0,0,0], false];
_trgTeleport attachTo [_teleportPadLowerControlBridge, [0,0,0]];
_trgTeleport setTriggerArea [2, 2, 0, false, 3];
_trgTeleport setTriggerActivation ["WEST", "PRESENT", true];

// 3. DEFINE THE DYNAMIC REGISTRY LOOKUP STATEMENT
_trgTeleport setTriggerStatements [
    "this",
    "{
        if (local _x && isPlayer _x) then {
            private _varSuffix = 'ControlBridge'; 
            private _alertName = 'Control Bridge';

            private _offset = takmyr getVariable [format ['JC_Mod_%1_Anchor', _varSuffix], []];
            
            if (count _offset > 0) then {
                private _spawnPos = takmyr modelToWorldWorld _offset;
                _x setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                _x setDir (getDir takmyr);
                
                titleText [format ['Teleporting to %1...', _alertName], 'PLAIN DOWN', 0.4];
            } else {
                systemChat format ['Teleport Failed: %1 anchor matrix has not been initialized.', _alertName];
            };
        };
    } forEach thisList;",
    ""
];

//	--- FRONT LOWER DECK 2nd FLOOR (left) ENTRY FOR MAIN CONTROL BRIDGE
// 1. CREATE AND ANCHOR THE INVISIBLE PAD
private _teleportPad2ndControlBridge = createVehicle ["Land_HelipadEmpty_F", [0,0,0], [], 0, "NONE"];
_teleportPad2ndControlBridge attachTo [takmyr, [-10.5, 63.5, 13.16]];

// 2. CREATE AND ATTACH THE TELEPORTATION TRIGGER
private _trgTeleport = createTrigger ["EmptyDetector", [0,0,0], false];
_trgTeleport attachTo [_teleportPad2ndControlBridge, [0,0,0]];
_trgTeleport setTriggerArea [2, 2, 0, false, 3];
_trgTeleport setTriggerActivation ["WEST", "PRESENT", true];

// 3. DEFINE THE DYNAMIC REGISTRY LOOKUP STATEMENT
_trgTeleport setTriggerStatements [
    "this",
    "{
        if (local _x && isPlayer _x) then {
            private _varSuffix = 'ControlBridge'; 
            private _alertName = 'Control Bridge';

            private _offset = takmyr getVariable [format ['JC_Mod_%1_Anchor', _varSuffix], []];
            
            if (count _offset > 0) then {
                private _spawnPos = takmyr modelToWorldWorld _offset;
                _x setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                _x setDir (getDir takmyr);
                
                titleText [format ['Teleporting to %1...', _alertName], 'PLAIN DOWN', 0.4];
            } else {
                systemChat format ['Teleport Failed: %1 anchor matrix has not been initialized.', _alertName];
            };
        };
    } forEach thisList;",
    ""
];

//	--- REAR LOWER DECK FLOOR ENTRY FOR LOWER DECK CONTROL
// 1. CREATE AND ANCHOR THE INVISIBLE PAD
private _teleportPadLowerDeckControl = createVehicle ["Land_HelipadEmpty_F", [0,0,0], [], 0, "NONE"];
_teleportPadLowerDeckControl attachTo [takmyr, [-10.25, -35, 2]];

// 2. CREATE AND ATTACH THE TELEPORTATION TRIGGER
private _trgTeleport = createTrigger ["EmptyDetector", [0,0,0], false];
_trgTeleport attachTo [_teleportPadLowerDeckControl, [0,0,0]];
_trgTeleport setTriggerArea [2, 2, 0, false, 3];
_trgTeleport setTriggerActivation ["WEST", "PRESENT", true];

// 3. DEFINE THE DYNAMIC REGISTRY LOOKUP STATEMENT
_trgTeleport setTriggerStatements [
    "this",
    "{
        if (local _x && isPlayer _x) then {
            private _varSuffix = 'LowerDeckControl'; 
            private _alertName = 'Lower Deck Control';

            private _offset = takmyr getVariable [format ['JC_Mod_%1_Anchor', _varSuffix], []];
            
            if (count _offset > 0) then {
                private _spawnPos = takmyr modelToWorldWorld _offset;
                _x setPosASL [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];
                _x setDir (getDir takmyr);
                
                titleText [format ['Teleporting to %1...', _alertName], 'PLAIN DOWN', 0.4];
            } else {
                systemChat format ['Teleport Failed: %1 anchor matrix has not been initialized.', _alertName];
            };
        };
    } forEach thisList;",
    ""
];

/*
Service Room: _varSuffix = 'ServiceRoom'; _alertName = 'Service Dock';
Engine Room: _varSuffix = 'EngineRoom'; _alertName = 'Engine Room';
Control Bridge: _varSuffix = 'ControlBridge'; _alertName = 'Control Bridge';
Hangar Bridge: _varSuffix = 'HangarBridge'; _alertName = 'Hangar Bridge';
Front Landing: _varSuffix = 'FrontLandingDeck'; _alertName = 'Front Landing Deck';
Hangar Service: _varSuffix = 'HangarService'; _alertName = 'Hangar Service Gate';
*/



// --- INSTRUCTORS VENDORS PRESET LOADOUT GEAR ---
if (!isServer) exitWith {};

// --- ADJUST RELATIVE POSITIONS HERE ---
// Format: [X (Left/Right), Y (Forward/Back), Z (Deck Height)] relative to takmyr pivot
private _paramedicOffset   = [-10, -38.5, 17.5]; 
private _scubaOffset       = [-8.25, -35.5, 5.75];
private _cbrnOffset        = [-12.5, -37, 17.5];

// Create safe control group
private _unitGroup = createGroup [civilian, true];
_unitGroup setBehaviour "CARELESS";
_unitGroup setCombatMode "BLUE";

// ============================================================================
// 1. SPAWN PARAMEDIC UNIT
// ============================================================================
private _paramedicPos = takmyr modelToWorldWorld _paramedicOffset;
private _unitParamedic = _unitGroup createUnit ["C_man_1", [0,0,0], [], 0, "NONE"];
_unitParamedic setPosASL _paramedicPos;
//_unitParamedic setDir (getDir takmyr);
_unitParamedic setDir ((getDir takmyr) + 180);
_unitParamedic disableAI "MOVE";
_unitParamedic allowDamage false;

// Apply Paramedic Preset Loadout
removeVest _unitParamedic;
removeUniform _unitParamedic;
removeBackpack _unitParamedic;
removeHeadgear _unitParamedic;
_unitParamedic addVest "JC_DeckCrewViolet_Cargo";
_unitParamedic forceAddUniform "U_C_Paramedic_01_F";
_unitParamedic addBackpack "B_AssaultPack_rgr";
_unitParamedic addHeadgear "H_HelmetSpecB";

// Add Actions
[_unitParamedic, [
    "<t color='#00FF66'>Swap Paramedic</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_Paramedic_%1", _uid];
        _target setVariable [_varName, getUnitLoadout _caller, true];
        
        removeVest _caller; removeUniform _caller; removeBackpack _caller; removeHeadgear _caller;
        _caller addVest "JC_DeckCrewViolet_Cargo";
        _caller forceAddUniform "U_C_Paramedic_01_F";
        _caller addBackpack "B_AssaultPack_rgr";
        _caller addHeadgear "H_HelmetSpecB";
        hint "Paramedic Gear Equipped.";
    }, nil, 6, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitParamedic];

[_unitParamedic, [
    "<t color='#FF3333'>Restore Original Gear (Paramedic)</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_Paramedic_%1", _uid];
        private _storedLoadout = _target getVariable [_varName, []];
        if (count _storedLoadout == 0) exitWith { hint "No original gear recorded on this unit!"; };
        
        removeVest _caller; removeUniform _caller; removeBackpack _caller; removeHeadgear _caller;
        _caller setUnitLoadout _storedLoadout;
        _target setVariable [_varName, nil, true];
        hint "Original gear restored.";
    }, nil, 5, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitParamedic];


// ============================================================================
// 2. SPAWN SCUBA UNIT
// ============================================================================
private _scubaPos = takmyr modelToWorldWorld _scubaOffset;
private _unitScuba = _unitGroup createUnit ["C_man_1", [0,0,0], [], 0, "NONE"];
_unitScuba setPosASL _scubaPos;
//_unitScuba setDir (getDir takmyr);
_unitScuba setDir ((getDir takmyr) + 135);
_unitScuba disableAI "MOVE";
_unitScuba allowDamage false;

// Apply Scuba Preset Loadout
removeAllWeapons _unitScuba;
removeHeadgear _unitScuba;
removeVest _unitScuba;
removeUniform _unitScuba;
removeBackpack _unitScuba;
removeAllAssignedItems _unitScuba;
_unitScuba addVest "V_RebreatherB";
_unitScuba forceAddUniform "U_B_Wetsuit";
_unitScuba addBackpack "B_SCBA_01_F";
_unitScuba addWeapon "arifle_SDAR_F";

// Add Actions
[_unitScuba, [
    "<t color='#00FF66'>Swap Scuba</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_%1", _uid];
        _target setVariable [_varName, getUnitLoadout _caller, true];
        
        removeAllWeapons _caller; removeHeadgear _caller; removeVest _caller; removeUniform _caller; removeBackpack _caller; removeAllAssignedItems _caller;
        _caller addVest "V_RebreatherB";
        _caller forceAddUniform "U_B_Wetsuit";
        _caller addBackpack "B_SCBA_01_F";
        _caller addWeapon "arifle_SDAR_F";
        _caller addWeapon "hgun_P07_snds_F";
        for "_i" from 1 to 4 do { _caller addMagazine "30Rnd_556x45_Stanag_red"; };
        for "_i" from 1 to 2 do { _caller addMagazine "16Rnd_9x21_Mag"; };
        hint "Scuba Gear Equipped.";
    }, nil, 6, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitScuba];

[_unitScuba, [
    "<t color='#FF3333'>Restore Original Gear (Scuba)</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_%1", _uid];
        private _storedLoadout = _target getVariable [_varName, []];
        if (count _storedLoadout == 0) exitWith { hint "No original gear recorded on this unit!"; };
        
        removeAllWeapons _caller; removeHeadgear _caller; removeVest _caller; removeUniform _caller; removeBackpack _caller; removeAllAssignedItems _caller;
        _caller setUnitLoadout _storedLoadout;
        _target setVariable [_varName, nil, true];
        hint "Original gear restored.";
    }, nil, 5, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitScuba];


// ============================================================================
// 3. SPAWN CBRN UNIT
// ============================================================================
private _cbrnPos = takmyr modelToWorldWorld _cbrnOffset;
private _unitCBRN = _unitGroup createUnit ["C_man_1", [0,0,0], [], 0, "NONE"];
_unitCBRN setPosASL _cbrnPos;
//_unitCBRN setDir (getDir takmyr);
_unitCBRN setDir ((getDir takmyr) + 135);
_unitCBRN disableAI "MOVE";
_unitCBRN allowDamage false;

// Apply CBRN Preset Loadout
removeVest _unitCBRN;
removeUniform _unitCBRN;
removeBackpack _unitCBRN;
_unitCBRN addVest "V_RebreatherB";
_unitCBRN forceAddUniform "U_B_CBRN_Suit_01_Wdl_F";
_unitCBRN addBackpack "B_SCBA_01_F";

// Add Actions
[_unitCBRN, [
    "<t color='#00FF66'>Swap CBRN</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_Toxic_%1", _uid];
        _target setVariable [_varName, getUnitLoadout _caller, true];
        
        removeVest _caller; removeUniform _caller; removeBackpack _caller;
        _caller addVest "V_RebreatherB";
        _caller forceAddUniform "U_B_CBRN_Suit_01_Wdl_F";
        _caller addBackpack "B_SCBA_01_F";
        hint "CBRN Hazard Gear Equipped.";
    }, nil, 6, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitCBRN];

[_unitCBRN, [
    "<t color='#FF3333'>Restore Original Gear (CBRN)</t>", 
    {
        params ["_target", "_caller"];
        private _uid = getPlayerUID _caller;
        private _varName = format ["JC_Lifting_StoredGear_Toxic_%1", _uid];
        private _storedLoadout = _target getVariable [_varName, []];
        if (count _storedLoadout == 0) exitWith { hint "No original gear recorded on this unit!"; };
        
        removeVest _caller; removeUniform _caller; removeBackpack _caller;
        _caller setUnitLoadout _storedLoadout;
        _target setVariable [_varName, nil, true];
        hint "Original gear restored.";
    }, nil, 5, true, true, "", "true", 2.25
]] remoteExec ["addAction", 0, _unitCBRN];



// --- SUPPLY BOX CRATE AMMUNITION PHYSICAL INVENTORY GEAR LOADOUTS ---
if (isServer) then {
    // 1. SPAWN SUPPLY CARGO NET AND ATTACH TO MASTER HULL
    private _loadoutCrate = createVehicle ["B_CargoNet_01_ammo_F", [0,0,0], [], 0, "NONE"];
    _loadoutCrate attachTo [takmyr, [-10.5, -34, 18.5]];
    _loadoutCrate setDir ((getDir takmyr) + 135);
    _loadoutCrate allowDamage false;

    // 2. WIPE DEFAULT CARGO CONTENTS COMPLETELY
    clearWeaponCargoGlobal _loadoutCrate;
    clearMagazineCargoGlobal _loadoutCrate;
    clearItemCargoGlobal _loadoutCrate;
    clearBackpackCargoGlobal _loadoutCrate;

    // 3. POPULATE FILTERED LOADOUT ITEMS

    // --- SPECIFIC SYSTEM ITEMS ---
    _loadoutCrate addItemCargoGlobal ["ToolKit", 10];
    _loadoutCrate addItemCargoGlobal ["Medikit", 7];
    _loadoutCrate addItemCargoGlobal ["FirstAidKit", 30];
    _loadoutCrate addItemCargoGlobal ["MineDetector", 5];

    // --- VESTS (5 of each) ---
    { _loadoutCrate addItemCargoGlobal [_x, 5]; } forEach [
        "JC_DeckCrewViolet_Cargo",
        "V_RebreatherB"                 // Scuba System Vest
    ];

    // --- BACKPACKS (5 of each) ---
    { _loadoutCrate addBackpackCargoGlobal [_x, 5]; } forEach [
        "B_AssaultPack_rgr"
    ];

    // --- UNIFORMS (5 of each) ---
    { _loadoutCrate addItemCargoGlobal [_x, 5]; } forEach [
        "U_C_Paramedic_01_F",
        "U_C_CBRN_Suit_01_White_F",
        "U_B_Wetsuit"                   // Scuba System Uniform
    ];

    // --- HELMETS AND HATS (5 of each) ---
    { _loadoutCrate addItemCargoGlobal [_x, 5]; } forEach [
        "H_HelmetSpecB",
        "EF_H_Cap_Takmyr"
    ];

    // --- WEAPONS (3 of each) ---
    { _loadoutCrate addWeaponCargoGlobal [_x, 3]; } forEach [
        "JC_arifle_MX_Custom",
        "JC_hgun_P07_Custom"
    ];

    // --- AMMO MAGAZINES (16 of each matching default weapon compatibility) ---
    {
        private _mags = getArray (configFile >> "CfgWeapons" >> _x >> "magazines");
        if (count _mags > 0) then {
            _loadoutCrate addMagazineCargoGlobal [_mags select 0, 16];
        };
    } forEach ["JC_arifle_MX_Custom", "JC_hgun_P07_Custom"];

    // --- WEAPON ATTACHMENTS (2 of each) ---
    { _loadoutCrate addItemCargoGlobal [_x, 2]; } forEach [
        "JC_suppressor_shotgun",
        "JC_acc_flashlight_red",
        "JC_suppressor_revolver",
        "JC_acc_flashlight_pistol_red"
    ];

    // --- UNSPECIFIED / OTHER MISC ITEMS (3 of each) ---
    { _loadoutCrate addItemCargoGlobal [_x, 3]; } forEach [
        "NVGoggles",
        "G_Diving"                      // Scuba System Goggles/Glasses
    ];
};




 takmyr addEventHandler ["HandleDamage", 
 {
    params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitPartIndex", "_instigator", "_hitPoint", "_directHit", "_context"];
    private _oldDamage = damage takmyr;
    private _building = takmyr;
    private _newDamage = (_damage - _oldDamage) / 10;
    _newDamage
 }];