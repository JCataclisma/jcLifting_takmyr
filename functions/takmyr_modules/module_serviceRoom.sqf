params ["_parent", "_anchorOffset"];
private _moduleVarName = "JC_Mod_ServiceRoom";

// 1. SELF-CLEANING MECHANISM (Wipes out old versions on re-execution)
private _oldObjects = _parent getVariable [format ["%1_All", _moduleVarName], []];
{ deleteVehicle _x } forEach _oldObjects;

private _allObjects = [];
private _roomLights = [];
private _pumpFinalOffset = [0,0,0];
private _showers = [];
private _pumpObj = objNull;

// 2. COMPOSITION MATRIX (Brought in from your function block rules)
private _composition = [
    // [Classname, Relative Offset [X,Y,Z], VectorMatrix [[Dir], [Up]], Tag]
    ["DeconShower_02_F", [0, 0, 0.7], [[0,1,0],[0,0,1]], "SHOWER"],
    ["Land_fs_feed_F", [3.35, 2, -2.25], [[0,-1,0],[0,0,1]], "PUMP"],
    ["DeconShower_02_F", [0, 4, 0.7], [[0,-1,0],[0,0,1]], "SHOWER"]
];

// 3. DEPLOYMENT LOOP
{
    _x params ["_class", "_offset", "_vectors", "_tag"];
    private _prop = createVehicle [_class, [0,0,0], [], 0, "NONE"];
    
    // Virtual Reference Math: Merges room anchor and prop offset seamlessly
    private _finalOffset = [
        (_anchorOffset select 0) + (_offset select 0),
        (_anchorOffset select 1) + (_offset select 1),
        (_anchorOffset select 2) + (_offset select 2)
    ];
    
    _prop attachTo [_parent, _finalOffset];
    _prop setVectorDirAndUp _vectors; 
    _prop allowDamage false;
    
    _allObjects pushBack _prop;
    
    // Compile custom behaviors from your source block
    switch (_tag) do {
        case "SHOWER": {
            _showers pushBack _prop;
            
            // Force-kill any default/phantom engine mist configurations on spawn
            _prop animateSource ["valve_source", 0, true];
            _prop animateSource ["Hide_Mist_Source", 1, true];
            [_prop] call BIN_fnc_deconShowerAnimStop; 
            _prop setVariable ["BIN_deconshower_disableAction", true];
        };
        case "PUMP": {
            _pumpObj = _prop;
            _pumpFinalOffset = _finalOffset;
        };
    };
} forEach _composition;

// 4. SERVICE AREA TRIGGER MECHANIC (Heals and refuels targeted objects only when system is ON)
private _trgChuveiro = createTrigger ["EmptyDetector", [0,0,0], false];
_trgChuveiro attachTo [_parent, _pumpFinalOffset];
_trgChuveiro setTriggerArea [6.5, 3.5, 0, true, 10];
_trgChuveiro setTriggerActivation ["WEST", "PRESENT", true];

_trgChuveiro setTriggerStatements [
    "this && {takmyr getVariable ['JC_Mod_ServiceRoom_Active', false]}", 
    "{_x setDamage 0; _x setFuel 1; _x setVehicleAmmo 1} forEach thisList;", 
    ""
];
_allObjects pushBack _trgChuveiro;

// =========================================================================
// MULTIPLAYER COMPATIBLE INTERACTIVE SHOWER TOGGLE ACTION (Priority 16)
// =========================================================================
if (!isNull _pumpObj && count _showers > 0) then {
    [_pumpObj, [
        "<t color='#00FF66'>Switch Showers</t>",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            private _showersArray = _arguments;
            private _currentState = takmyr getVariable ["JC_Mod_ServiceRoom_Active", false];
            
            if (!_currentState) then {
                // --- TURN SHOWERS ON ---
                takmyr setVariable ["JC_Mod_ServiceRoom_Active", true, true];
                _target setVariable ["JC_Showers_Active", true, true];
                {
                    [_x, ["valve_source", 1, true]] remoteExec ["animateSource", 0];
                    [_x, ["Hide_Mist_Source", 0, true]] remoteExec ["animateSource", 0];
                    
                    [_x, 1.5, 9] remoteExec ["BIN_fnc_deconShowerAnim", 0];
                    [_x, 5.4, 4, 2, true] remoteExec ["BIN_fnc_deconShowerAnimLarge", 0];
                } forEach _showersArray;
            } else {
                // --- TURN SHOWERS OFF ---
                takmyr setVariable ["JC_Mod_ServiceRoom_Active", false, true];
                _target setVariable ["JC_Showers_Active", false, true];
                {
                    [_x, ["valve_source", 0, true]] remoteExec ["animateSource", 0];
                    [_x, ["Hide_Mist_Source", 1, true]] remoteExec ["animateSource", 0];
                    
                    [_x] remoteExec ["BIN_fnc_deconShowerAnimStop", 0];
                } forEach _showersArray;
            };
        },
        _showers, 16, true, true, "", "true", 5
    ]] remoteExec ["addAction", 0, _pumpObj];
};



// 5. GLOBAL TRACKING REGISTRATION
_parent setVariable [format ["%1_All", _moduleVarName], _allObjects, true];
_parent setVariable [format ["%1_Lights", _moduleVarName], _roomLights, true];
_parent setVariable [format ["%1_Anchor", _moduleVarName], _anchorOffset, true];