if (!isServer) exitwith {};
private _spawnRate = _this select 0;
private _minvehicles = _this select 1;
private _maxvehicles = _this select 2;

private _availableCars = "((gettext (_x >> ""faction"")) == ""UK3CB_KDF_O"") && (((gettext (_x >> ""category"")) == ""Car"") || configname _x in [""UK3CB_KDF_O_BTR40"", ""UK3CB_KDF_O_BTR40_MG""])" configClasses (configFile >> "Cfgvehicles");

private _totalvehicles = 0;

for "_i" from 0 to 38 step 1 do {
    if (_totalvehicles < _maxvehicles) then {
        if (_totalvehicles < _minvehicles || (_spawnRate > random 1)) then {
            private _logicObject = call compile ("spawn_veh_" + str _i);
            private _position = getPosATL _logicObject;
            private _vehicle = createvehicle [configname (selectRandom _availableCars), [_position select 0, _position select 1, 0.35], [], 0, "CAN_COLLIDE"];
            if (0.5 > random 1) then {
                // lock for players only
                _vehicle lock 3;
            };
            _vehicle allowdamage false;
            _vehicle setDir (getDir _logicObject);
            
            if (A455_DEBUG_MODE) then {
                private _marker = createMarker [("vehtracker_" + str random 10000000), _position];
                _marker setMarkertype "hd_dot";
                _marker setMarkerColor "ColorBlack";
                _marker setMarkertext (typeOf _vehicle);
            };
            
            _totalvehicles = _totalvehicles + 1;
            sleep 1;
            _vehicle allowdamage true;
        };
    };
};

// hint str _totalvehicles