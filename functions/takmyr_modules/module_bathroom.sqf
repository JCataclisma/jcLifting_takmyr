params ["_parent", "_anchorOffset"];
private _moduleVarName = "JC_Mod_Bathroom";

// 1. SELF-CLEANING MECHANISM (Wipes out old versions on re-execution)
private _oldObjects = _parent getVariable [format ["%1_All", _moduleVarName], []];
{ deleteVehicle _x } forEach _oldObjects;

private _allObjects = [];
private _roomLights = [];
private _interactData = createHashMap;

// 2. COMPOSITION MATRIX (Completely relative to your VIRTUAL anchor point)
private _composition = [
//    ["Land_DeconShower_01_F", [0, 0, 0], [[0,1,0],[0,0,1]], "INTERACTIVE", "showerUnit"],
    ["Land_PortableLight_single_F", [-1.5, 2, 0.5], [[1,0,0],[0,0,1]], "LIGHT", ""],
    ["Land_PortableLight_single_F", [1.5, -2, 0.5], [[-1,0,0],[0,0,1]], "LIGHT", ""],
	["DeconShower_02_F", [0, 0, 0], [[-1,0,0],[0,0,1]], "SCENERY", ""],
	["Land_PortableHelipadLight_01_F", [0, 0, 0], [[-1,0,0],[0,0,1]], "LIGHT", ""]
];

// 3. DEPLOYMENT LOOP (Combines vectors mathematically back to the parent hull)
{
    _x params ["_class", "_offset", "_vectors", "_tag", "_key"];
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
    
    switch (_tag) do {
        case "LIGHT":       { _roomLights pushBack _prop; };
        case "INTERACTIVE": { _interactData set [_key, _prop]; };
    };
} forEach _composition;

_parent setVariable [format ["%1_All", _moduleVarName], _allObjects, true];
_parent setVariable [format ["%1_Lights", _moduleVarName], _roomLights, true];

// 4. ISOLATED INTERACTIONS
private _shower = _interactData get "showerUnit";
if (!isNil "_shower") then {
    [_shower, [
        "<t color='#FFA500'>[Chamber] Toggle Bathroom Power</t>",
        {
            params ["_target", "_caller", "_id", "_roomLights"];
            private _powerOff = _target getVariable ["JC_PowerCut", false];
            _target setVariable ["JC_PowerCut", !_powerOff, true];
            
            {
                if (_powerOff) then { _x switchLight "ON"; } else { _x switchLight "OFF"; };
            } forEach _roomLights;
        },
        _roomLights, 11, false, true, "", "true", 4
    ]] remoteExec ["addAction", 0, _shower];
};

_parent setVariable [format ["%1_All", _moduleVarName], _allObjects, true];
_parent setVariable [format ["%1_Lights", _moduleVarName], _roomLights, true];
_parent setVariable [format ["%1_Anchor", _moduleVarName], _anchorOffset, true]; // <-- THE ROOT FIX