/*
* Sample of setting up Rto's for a company signals setup.
*
* called by: [this, "ALPHA"] call compile preprocessFileLineNumbers "scripts\setup_acre.sqf";
*
* This setup assumes that each Rto has a single PRC-152 and a single PRC-117F.
* Each platoon command and the company commander has not been configured in this config,
* but canfire easily be added to the switch statement below.
*
* The order of operations is documented in the script below.
*/

params ["_unit", "_localUnittype"];

if (A455_DEBUG_MODE) then {
    // hint format ["Group: %1", _localUnittype];
};

["ACRE_PRC343", "default", "TOUR_preset1"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "default", "TOUR_preset2"] call acre_api_fnc_copyPreset;

["ACRE_PRC343", "TOUR_preset1", 1, "description", "ALPHA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 2, "description", "BRAVO"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 3, "description", "CHARLIE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 4, "description", "DELTA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 5, "description", "echo"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 6, "description", "FOXTROT"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC343", "TOUR_preset1", 1, "label", "ALPHA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 2, "label", "BRAVO"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 3, "label", "CHARLIE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 4, "label", "DELTA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 5, "label", "echo"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC343", "TOUR_preset1", 6, "label", "FOXTROT"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "TOUR_preset2", 1, "description", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "TOUR_preset2", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "TOUR_preset2", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC152", "TOUR_preset2", 1, "label", "PLTNET 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "TOUR_preset2", 2, "label", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "TOUR_preset2", 3, "label", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC343", "TOUR_preset1"] call acre_api_fnc_setPreset;
["ACRE_PRC152", "TOUR_preset2"] call acre_api_fnc_setPreset;

if (!hasinterface || { player != _unit }) exitwith { false };

waitUntil { ([] call acre_api_fnc_isInitialized) };

// private _hasRadio = [_unit] call acre_api_fnc_hasRadio;

// if (!([_unit, "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio)) then {
//     _unit addItem "ACRE_PRC343";
// };
// if (!([_unit, "ACRE_PRC152"] call acre_api_fnc_hasKindOfRadio)) then {
//     _unit addItem "ACRE_PRC152";
// };

private _personalRadio = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType;
private _handheldRadio = ["ACRE_PRC152"] call acre_api_fnc_getRadioByType;

switch (_localUnittype) do {
    case "ALPHA": {
        [_personalRadio, 1] call acre_api_fnc_setradioChannel;
    };
    case "BRAVO": {
        [_personalRadio, 2] call acre_api_fnc_setradioChannel;
    };
    case "CHARLIE": {
        [_personalRadio, 3] call acre_api_fnc_setradioChannel;
    };
    case "DELTA": {
        [_personalRadio, 4] call acre_api_fnc_setradioChannel;
    };
    case "ECHO": {
        [_personalRadio, 5] call acre_api_fnc_setradioChannel;
    };
    case "FOXTROT": {
        [_personalRadio, 6] call acre_api_fnc_setradioChannel;
    };
};

[_handheldRadio, 1] call acre_api_fnc_setradioChannel;