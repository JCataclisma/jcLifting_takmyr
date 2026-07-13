/*
    Takmyr Crane - Tow Cargo
    File: fn_takmyr_craneTow.sqf
    Description: Finds nearest vehicle to Anchor and attaches it using template configuration structures.
*/
if (isNil "takmyr") exitWith {};

private _cargo = takmyr getVariable ["jc_takmyr_craneCargo", objNull];
if (!isNull _cargo) exitWith { systemChat "Already holding cargo!"; };

private _anchor = takmyr getVariable ["jc_takmyr_craneAnchor", objNull];
if (isNull _anchor) exitWith { systemChat "Crane anchor missing!"; };

// --- 1. GLOBAL BLACKLIST DEFINITIONS ---
private _blacklistClasses = [
    "Land_TowBar_01_F", // Secondary safety trap for towbar assets
//    "StaticWeapon",      // Example: Prevent towing fixed turrets
	"EF_LCC_Base",
	"Man",
    "Building"          // Example: Prevent tracking static map architecture
];

// Fetch the structural crane towbar parts to filter them out of the search completely
private _craneParts = takmyr getVariable ["jc_takmyr_craneParts", []];

// 2. RUN EXPANDED PROXIMITY SEARCH
//private _nearbyVehicles = nearestObjects [_anchor, ["Car", "Tank", "Boat", "Air", "Slingload_base_F", "Thing"], 10];
private _nearbyVehicles = nearestObjects [_anchor, ["AllVehicles", "Slingload_base_F", "Thing"], 10];

// CRITICAL EXCLUSION: Strip out the anchor itself AND the spawned structural towbars
_nearbyVehicles = _nearbyVehicles - [_anchor] - _craneParts;

if (count _nearbyVehicles == 0) exitWith {
    systemChat "No valid cargo found nearby!";
};

private _target = _nearbyVehicles select 0;
private _typeCargo = typeOf _target;

// --- 3. EVALUATE BLACKLIST VERIFICATIONS ---
private _isBlacklisted = false;
{
    if (_target isKindOf _x || {_typeCargo == _x}) exitWith { _isBlacklisted = true; };
} forEach _blacklistClasses;

if (_isBlacklisted) exitWith {
    systemChat "Error: Target object type is blacklisted from crane operations.";
};

// --- DYNAMIC VEHICLE AND OBJECT CLASS ARRAYS ---
private _troopTruckClasses = ["B_T_Truck_01_covered_F","B_Truck_01_covered_F"];
private _mediTruckClasses = ["B_T_Truck_01_medical_F","B_Truck_01_medical_F"];
private _fuelTruckClasses = ["B_T_Truck_01_fuel_F","B_Truck_01_fuel_F"];
private _ammoTruckClasses = ["B_T_Truck_01_ammo_F","B_Truck_01_ammo_F"];
private _flatbedClasses = ["B_T_Truck_01_flatbed_F","B_Truck_01_flatbed_F","B_D_Truck_01_flatbed_lxWS"];
private _hemmtClasses = ["B_T_Truck_01_mover_F","B_Truck_01_mover_F"];
private _mrlClasses = ["I_E_Truck_02_MRL_F"];
private _lightArmorClass = ["Wheeled_APC_F"];
private _midTrackedClass = ["O_T_APC_Tracked_02_cannon_ghex_F","O_APC_Tracked_02_cannon_F", "I_MBT_03_cannon_F"];
private _heavyTankClass = ["O_MBT_04_command_F", "B_T_APC_Tracked_01_AA_F","B_APC_Tracked_01_AA_F", "B_T_APC_Tracked_01_CRV_F","B_APC_Tracked_01_CRV_F", "B_T_APC_Tracked_01_rcws_F","B_APC_Tracked_01_rcws_F", "B_T_MBT_01_arty_F","B_MBT_01_arty_F", "EF_B_MBT_01_cannon_MJTF_Des", "EF_B_MBT_01_TUSK_MJTF_Des", "EF_B_MBT_01_cannon_MJTF_Wdl", "EF_B_MBT_01_TUSK_MJTF_Wdl", "B_MBT_01_cannon_F", "B_MBT_01_TUSK_F", "B_D_MBT_01_cannon_lxWS", "B_D_MBT_01_TUSK_lxWS", "B_T_MBT_01_cannon_F", "B_T_MBT_01_TUSK_F"];
private _midHelisClass = ["O_Heli_Light_02_unarmed_F", "B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Transport_01_F", "I_E_Heli_light_03_unarmed_F"];
private _blackfootPythonClasses = ["B_Heli_Attack_01_pylons_dynamicLoadout_F", "B_Heli_Attack_01_dynamicLoadout_F", "EF_B_Heli_Attack_01_dynamicLoadout_MJTF_Des", "EF_B_Heli_Attack_01_dynamicLoadout_MJTF_Wdl", "B_Heli_Attack_01_dynamicLoadout_F", "B_Heli_Attack_01_pylons_dynamicLoadout_F", "B_D_Heli_Attack_01_dynamicLoadout_lxWS", "EF_B_AH99J_NATO_Des"];
private _smallHelisClass = ["B_Heli_Light_01_dynamicLoadout_F", "B_D_Heli_Light_01_dynamicLoadout_lxWS", "B_D_Heli_Light_01_lxWS", "B_Heli_Light_01_F"];
private _cougarClasses = ["Heli_EC_01_base_RF"];
private _mrapClass01 = ["MRAP_01_base_F"];
private _mrapClass02 = ["MRAP_02_base_F"];
private _mrapClass03 = ["MRAP_03_base_F"];
private _offroad01Class = ["Offroad_01_base_F"];
private _offroad02Class = ["Offroad_02_base_F"];
private _lsv01Class = ["LSV_01_base_F"];
private _lsv02Class = ["LSV_02_base_F"];
private _boatZodiacClass = ["EF_B_Lifeboat_MJTF_Des", "B_G_Boat_Transport_01_F", "EF_B_Boat_Transport_01_MJTF_Wdl", "B_Boat_Transport_01_F", "B_T_Boat_Transport_01_F", "B_Lifeboat"];
private _huronContainerClass = ["B_Slingload_01_Ammo_F", "B_Slingload_01_Fuel_F", "B_Slingload_01_Repair_F", "B_Slingload_01_Medevac_F", "B_Slingload_01_Cargo_F"];
private _taruCrewPodClass = ["Land_Pod_Heli_Transport_04_covered_F", "Land_Pod_Heli_Transport_04_medevac_F"];
private _van01TruckClasses = ["B_G_Van_01_fuel_F", "B_G_Van_01_transport_F", "O_G_Van_01_fuel_F", "O_G_Van_01_transport_F", "I_G_Van_01_fuel_F", "I_G_Van_01_transport_F", "I_C_Van_01_transport_F", "C_Van_01_fuel_F", "C_Van_01_transport_F", "C_Van_01_box_F"];
private _van02Classes = ["C_IDAP_Van_02_medevac_F", "C_Van_02_service_F", "B_G_Van_02_vehicle_F", "B_G_Van_02_transport_F", "B_GEN_Van_02_vehicle_F", "B_GEN_Van_02_transport_F"];
private _woodClasses = ["Land_Timbers_F", "Land_TimberPile_01_F", "Land_TimberPile_04_F", "Land_TimberPile_05_F", "Land_WoodenLog_02_F", "Land_WoodPile_03_F", "Land_WoodPile_04_F", "Land_WoodenCrate_01_stack_x5_F", "Land_WoodenCrate_01_stack_x3_F", "Land_CratesWooden_F", "Land_WoodenCrate_01_F"];
private _dozerClasses = ["I_LT_01_scout_F", "JC_Lifting_Dozer_Nyx"];
private _aav_ExpForcesClasses = ["EF_B_AAV9_MJTF_Des", "EF_B_AAV9_50mm_MJTF_Des", "EF_B_AAV9_MJTF_Wdl", "EF_B_AAV9_50mm_MJTF_Wdl"];
private _truckClass = _troopTruckClasses + _mediTruckClasses + _fuelTruckClasses + _ammoTruckClasses + _hemmtClasses + _flatbedClasses + _mrlClasses;

private _subSlot = 1;

// --- EXPLICIT CONFIG SELECTION LOOP ENGINE ---
private _configData = call {
    if ({_typeCargo isKindOf _x} count _lightArmorClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _midTrackedClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _heavyTankClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _midHelisClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _cougarClasses > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _blackfootPythonClasses > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _smallHelisClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _mrapClass01 > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _mrapClass02 > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _mrapClass03 > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _offroad01Class > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _offroad02Class > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _lsv01Class > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _lsv02Class > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _boatZodiacClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _truckClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _huronContainerClass > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _taruCrewPodClass > 0) exitWith { [[0, -0.5, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _van01TruckClasses > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _van02Classes > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _dozerClasses > 0) exitWith { [[0, -1, -1.25], 0] };
    if ({_typeCargo isKindOf _x} count _aav_ExpForcesClasses > 0) exitWith { [[0, -1, -1.25], 0] };

    if (_typeCargo in _woodClasses) exitWith {
        private _offset = [0, -1, -1.25];
        private _rot = 180;

        switch (_typeCargo) do {
            case "Land_Timbers_F":          { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_TimberPile_01_F":    { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_TimberPile_04_F":    { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_TimberPile_05_F":    { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_WoodPile_03_F":      { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_WoodPile_04_F":      { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_WoodenCrate_01_stack_x5_F": { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_WoodenCrate_01_stack_x3_F": { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_CratesWooden_F":     { _offset = [0, -1, -1.25]; _rot = 180; };
            case "Land_WoodenCrate_01_F":   { _offset = [0, -1, -1.25]; _rot = 180; };
        };
        [_offset, _rot]
    };

    if ((_typeCargo isKindOf "Truck_F" || _typeCargo isKindOf "Truck_01_base_F") 
        && !(_typeCargo isKindOf "Van_01_base_F") 
        && !(_typeCargo isKindOf "Van_02_base_F")
    ) exitWith { [[0, -1, -1.25], 0] };

    [[0, -1, -1.25], 0]
};

_configData params ["_offset", "_rot"];

// Tell server to attach cargo and evaluate orientation transformation rules
[[_target, _anchor, _offset, _rot], {
    params ["_target", "_anchor", "_offset", "_rot"];
    
    _target attachTo [_anchor, _offset];
    [_target, [_rot, 0, 0]] call BIS_fnc_setObjectRotation;
    
    takmyr setVariable ["jc_takmyr_craneCargo", _target, true];
}] remoteExec ["call", 2];

systemChat format ["Cargo Locked: %1", getText (configFile >> "CfgVehicles" >> typeOf _target >> "displayName")];