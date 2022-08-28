// ex:  _randomPosAroundCompound = [["m_ao"],["mkr_compound"]] call BIS_fnc_randomPos;
params ["_str"];
private ["_availableGroups"];
private _numPatrols = 0;
switch (_str) do {
    case 0.33: {
        _numPatrols = 1 + (floor random 2);
    };
    case 0.50: {
        _numPatrols = 2 + (ceil random 2);
    };
    case 0.75: {
        _numPatrols = 3 + (ceil random 3);
    };
	default { _numPatrols = 2; };
};

if (A455_DEBUG_MODE) then {
	diag_log format ["Number of patrols: %1", _numPatrols];
};
_availableGroups = "count (_x call BIS_fnc_getCfgSubClasses) == 2" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "Infantry");

for "_i" from 1 to _numPatrols step 1 do {
	private _startPos = [["m_ao"],["mkr_compound"]] call BIS_fnc_randomPos;
	private _chosenGroup = selectRandom _availableGroups;
	private _group = [_startPos, EAST, _chosenGroup] call BIS_fnc_spawnGroup;
	_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

	[_group, ["m_ao"],["mkr_compound"]] call A455_fnc_randomPatrol;
	
	if (A455_DEBUG_MODE) then {
		private _marker = createMarker [("patrol_tracker_" + str random 10000000), _startPos]; // not visible yet.
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorWhite";
		_marker setMarkerText ("patrol start " + str _i);
	};
};
