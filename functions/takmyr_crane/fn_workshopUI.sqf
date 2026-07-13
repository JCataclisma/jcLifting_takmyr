/*
    Takmyr UI Engine
    Handles opening the dialog and populating it with vehicle-specific modules.
*/

jc_fnc_openTakmyrUI = {
    params ["_veh"];
    disableSerialization;

    TAKMYR_VEHICLE = _veh;
    _vehClass = typeOf _veh;
    _config = [];

    // Load configuration data from the file
    private _configData = call compile preprocessFileLineNumbers "code\workshop\fn_huronConfig.sqf";

    if (!isNil "_configData" && { _vehClass in (_configData select 0) }) then {
        _config = _configData select 1;
    };

    if (count _config isEqualTo 0) exitWith {
        hint "No modular customization available for this vehicle!";
    };

    createDialog "Takmyr_Manager_Dialog";
    _display = findDisplay 9930;
    _group = _display displayCtrl 2300;

    _yOffset = 0;
    {
        _x params ["_slotName", "_options"];

        // Left column (Group Name) - Increased width to 0.3
        _ctrlText = _display ctrlCreate ["RscText", -1, _group];
        _ctrlText ctrlSetPosition [0, _yOffset, 0.3, 0.04];
        _ctrlText ctrlSetText _slotName;
        _ctrlText ctrlCommit 0;

        // Right column (Selection) - Pushed to 0.32 and width 0.4
        _ctrlCombo = _display ctrlCreate ["RscCombo", (100 + _forEachIndex), _group];
        _ctrlCombo ctrlSetPosition [0.32, _yOffset, 0.4, 0.04];

        {
            _x params ["_optName", "_code"];
            _idx = _ctrlCombo lbAdd _optName;
        } forEach _options;

        _ctrlCombo lbSetCurSel 0;
        _ctrlCombo ctrlCommit 0;

        _yOffset = _yOffset + 0.05;
    } forEach _config;

    TAKMYR_CURRENT_CONFIG = _config;
};

jc_fnc_applyTakmyrModifications = {
    _display = findDisplay 9930;
    _veh = TAKMYR_VEHICLE;

    hint "Applying modifications...";

    {
        _x params ["_slotName", "_options"];
        _ctrlCombo = _display displayCtrl (100 + _forEachIndex);
        _selIdx = lbCurSel _ctrlCombo;

        if (_selIdx != -1) then {
            _selectedOpt = _options select _selIdx;
            _selectedOpt params ["_name", "_code"];
            [_veh] call _code;
        };
    } forEach TAKMYR_CURRENT_CONFIG;

    hint "Vehicle successfully customized!";
    closeDialog 0;
};

