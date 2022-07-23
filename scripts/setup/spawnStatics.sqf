private ["_totalStatics", "_totalAA", "_totalSL", "_totalLow", "_spawnedStatics", "_spawnedAA", "_spawnedSL", "_spawnedLow"];
private _numberOfAAStaticspositions = 7; // AA
private _numberOfHighStaticspositions = 36; // high statics
private _numberOfLowStaticspositions = 7; // low statics
private _numberOfSearchlightspositions = 10; // searchlights

private _lowClasses = ["UK3CB_KDF_O_Metis", "UK3CB_KDF_O_DSHkM_Mini_TriPod", "UK3CB_KDF_O_NSV", "UK3CB_KDF_O_PKM_Low", "UK3CB_KDF_O_SPG9"];
private _highClasses = ["UK3CB_KDF_O_DSHKM",  "UK3CB_KDF_O_PKM_High"];
private _aaClasses = ["UK3CB_KDF_O_Igla_AA_pod", "UK3CB_KDF_O_ZU23"];
private _gunnerClasses = ["UK3CB_KDF_O_RIF_1", "UK3CB_KDF_O_RIF_2"];

private _manClasses = ["UK3CB_KDF_O_SL", "UK3CB_KDF_O_MG", "UK3CB_KDF_O_LAT", "UK3CB_KDF_O_GL", "UK3CB_KDF_O_AR", "UK3CB_KDF_O_AT", "UK3CB_KDF_O_MK"];
private _manAAClasses = ["UK3CB_KDF_O_AA", "UK3CB_KDF_O_AT", "UK3CB_KDF_O_LAT"];

private _allCreated = [];

switch (A455_ENEMY_STRENGTH) do {
    case 0.33: {
        _totalStatics = 4 + (ceil random 5);
        _totalAA = 1 + (ceil random 2);
        _totalSL = 4 + (ceil random 4);
		_totalLow = 1 + (ceil random 2);
    };
    case 0.50: {
        _totalStatics = 5 + (ceil random 5);
        _totalAA = 1 + (ceil random 2);
        _totalSL = 5 + (ceil random 5);
		_totalLow = 2 + (ceil random 2);
    };
    case 0.75: {
        _totalStatics = 8 + (ceil random 5);
        _totalAA = 2 + (ceil random 3);
        _totalSL = 7 + (ceil random 3);
		_totalLow = 2 + (ceil random 5);
    };
};

_spawnedStatics = 0;
private _usedNums = [];

while {(_spawnedStatics < _totalStatics)} do {
	private _n = floor random _numberOfHighStaticspositions;
	if (!(_n in _usedNums)) then {
		_usedNums pushBack _n;
		private _logicObject = call compile ("stc_h_pos_" + str _n);

		private _staticType = selectRandom _highClasses;
		private _gunnerType = selectRandom _gunnerClasses;
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _static = createVehicle [_staticType, _pos, [], 0, "CAN_COLLIDE"];
		_static setDir (getDir _logicObject);
		private _group = createGroup EAST;
		private _gunner = _group createUnit [_gunnerType, _pos, [], 0, "CAN_COLLIDE"];
		_gunner moveInGunner _static;
		_static setPosATL _pos;

		_spawnedStatics = _spawnedStatics + 1;
		_allCreated pushBack _static;
	};
};

for [{ _i = 0 }, { _i < (_numberOfHighStaticspositions) }, { _i = _i + 1 }] do {
	if (!(_i in _usedNums) && A455_ENEMY_STRENGTH > random 1 ) then {
		private _logicObject = call compile ("stc_h_pos_" + str _i);
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _manType = selectRandom _manClasses;

		private _group = createGroup EAST;
		private _man = _group createUnit [_manType, _pos, [], 0, "CAN_COLLIDE"];
		_man setDir (getDir _logicObject);
		_man setPosATL _pos;
		_man setVariable ["lambs_danger_disableAI", true];
		_man setUnitPos "UP";
	};
};

_spawnedLow = 0;
private _usedNums = [];
while {(_spawnedLow < _totalLow)} do {
	private _n = floor random _numberOfLowStaticspositions;
	if (!(_n in _usedNums)) then {
		_usedNums pushBack _n;
		private _logicObject = call compile ("stc_l_pos_" + str _n);

		private _staticType = selectRandom _lowClasses;
		private _gunnerType = selectRandom _gunnerClasses;
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _static = createVehicle [_staticType, _pos, [], 0, "CAN_COLLIDE"];
		_static setDir (getDir _logicObject);
		private _group = createGroup EAST;
		private _gunner = _group createUnit [_gunnerType, _pos, [], 0, "CAN_COLLIDE"];
		_gunner moveInGunner _static;
		_static setPosATL _pos;

		_spawnedLow = _spawnedLow + 1;
		_allCreated pushBack _static;
	};
};

for [{ _i = 0 }, { _i < (_numberOfLowStaticspositions) }, { _i = _i + 1 }] do {
	if (!(_i in _usedNums) && A455_ENEMY_STRENGTH > random 1 ) then {
		private _logicObject = call compile ("stc_l_pos_" + str _i);
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _manType = selectRandom _manClasses;

		private _group = createGroup EAST;
		private _man = _group createUnit [_manType, _pos, [], 0, "CAN_COLLIDE"];
		_man setDir (getDir _logicObject);
		_man setPosATL _pos;
		_man setVariable ["lambs_danger_disableAI", true];
		_man setUnitPos "UP";
	};
};

_spawnedAA = 0;
private _usedNums = [];
while {(_spawnedAA < _totalAA)} do {
	private _n = floor random _numberOfAAStaticspositions;
	if (!(_n in _usedNums)) then {
		_usedNums pushBack _n;
		private _logicObject = call compile ("stc_AA_pos_" + str _n);

		private _staticType = selectRandom _aaClasses;
		private _gunnerType = selectRandom _gunnerClasses;
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _static = createVehicle [_staticType, _pos, [], 0, "CAN_COLLIDE"];
		_static setDir (getDir _logicObject);
		private _group = createGroup EAST;
		private _gunner = _group createUnit [_gunnerType, _pos, [], 0, "CAN_COLLIDE"];
		_gunner moveInGunner _static;
		_static setPosATL _pos;

		_spawnedAA = _spawnedAA + 1;
		_allCreated pushBack _static;
	};
};

for [{ _i = 0 }, { _i < (_numberOfAAStaticspositions) }, { _i = _i + 1 }] do {
	if (!(_i in _usedNums) && A455_ENEMY_STRENGTH > random 1 ) then {
		private _logicObject = call compile ("stc_AA_pos_" + str _i);
		private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
		private _manType = selectRandom _manAAClasses;

		private _group = createGroup EAST;
		private _man = _group createUnit [_manType, _pos, [], 0, "CAN_COLLIDE"];
		_man setDir (getDir _logicObject);
		_man setPosATL _pos;
		_man setVariable ["lambs_danger_disableAI", true];
		_man setUnitPos "UP";
	};
};

// if not noon, create searchlights too as it is/will be dark
if (TOUR_TOD != 1) then {
	_spawnedSL = 0;
	while {(_spawnedSL < _totalSL)} do {
		private _n = floor random _numberOfSearchlightspositions;
		if (!(_n in _usedNums)) then {
			_usedNums pushBack _n;
			private _logicObject = call compile ("stc_sl_pos_" + str _n);

			private _staticType = "UK3CB_KDF_O_Searchlight";
			private _gunnerType = selectRandom _gunnerClasses;
			private _pos = [(getPosATL _logicObject select 0), (getPosATL _logicObject select 1), (getPosATL _logicObject select 2) + 0.1];
			private _static = createVehicle [_staticType, _pos, [], 0, "CAN_COLLIDE"];
			_static setDir (getDir _logicObject);
			private _group  = createGroup EAST;
			private _gunner = _group createUnit [_gunnerType, _pos, [], 0, "CAN_COLLIDE"];
			_gunner moveInGunner _static;
			_static setPosATL _pos;

			_spawnedSL = _spawnedSL + 1;
			_allCreated pushBack _static;
		};
	};
};


if (A455_DEBUG_MODE) then {
	{
		private _marker = createMarker [("static_tracker_" + str random 10000000), (getPos _x)]; // not visible yet.
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorBlue";
		_marker setMarkerText (typeOf _x);
	} forEach _allCreated;
};