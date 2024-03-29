if (!isServer) exitWith {};
private _minTanks = _this select 0;
private _maxTanks = _this select 1;

private _availableTanks = "((getText (_x >> ""faction"")) == ""UK3CB_KDF_O"") && (configName _x isKindOf ""Tank"")" configClasses (configFile >> "CfgVehicles");

private _totalTanks = 0;
for "_i" from 0 to 4 step 1 do {
	private _logicObject = call compile ("spawn_tank_" + str _i);

	if (_totalTanks < _maxTanks && !isNull _logicObject) then {
		if (_totalTanks < _minTanks || (random 1 > 0.5)) then {
			private _position = getPosATL _logicObject;
			private _chosenTank = configName (selectRandom _availableTanks);
			private _tank = createVehicle [_chosenTank, [_position select 0, _position select 1, 0], [], 0, "CAN_COLLIDE"];
			_tank lock 3; // lock for players only
			_tank allowDamage false;
			_tank setDir (getDir _logicObject);
			
			
			if (A455_DEBUG_MODE) then {
				private _marker = createMarker [("tanktracker_" + str random 10000000), _position]; // not visible yet.
				_marker setMarkerType "hd_dot";
				_marker setMarkerColor "ColorGreen";
				_marker setMarkerText (typeOf _tank);
			};

			_totalTanks = _totalTanks + 1;
			sleep 1;
			_tank allowDamage true;

			private _crewGroup = createGroup EAST;
			_crewGroup addVehicle _tank;

			_nearestBuildings = nearestObjects [_tank, ["House", "Building"], 50];
			_buildingWith3Positions = [];
			{
				private _allPositions = _x buildingPos -1;
				if (count _allPositions >= 3) then {
					_buildingWith3Positions = _x;
					break;
				}
			} foreach _nearestBuildings;
			
			// create 3 crew
			for "_c" from 0 to 2 step 1 do {
				private _pos2 = selectRandom (_buildingWith3Positions buildingPos -1);
				_crew = _crewGroup createUnit ["UK3CB_KDF_O_CREW", _pos2, [], 0, "CAN_COLLIDE"];
				_crew setPos _pos2;
				_crew disableAI "PATH";
				// hint str _crew;
				[_crew] joinSilent _crewGroup;
				if (_c == 0) then {
					_crew setRank "SERGEANT";
				};
				
				// Add trigger to move to tank once "aware / combat" state

				if (A455_DEBUG_MODE) then {
					private _marker = createMarker [("tankcrew_tracker_" + str random 10000000), _pos2]; // not visible yet.
					_marker setMarkerType "hd_dot";
					_marker setMarkerColor "ColorKhaki";
					_marker setMarkerText (typeOf _crew);
				};
			};

			[_crewGroup, _tank, _logicObject] spawn {
				private _crewGroup = _this select 0;
				private _tank = _this select 1;
				private _logic =  _this select 2;
				A455_isWESTDetected = false;
				A455_WESTUnit = objnull;
				while {!A455_isWESTDetected} do {
					sleep 60;
					{
						if (alive _x && EAST knowsAbout _x >= 0.8) then {
							A455_isWESTDetected = true;
							A455_WESTUnit = _x;
							publicVariable "A455_isWESTDetected";
							if (A455_DEBUG_MODE) then {
								hint format ["A455_isWESTDetected == %1\nEastKnowsAbout unit == %2", A455_isWESTDetected, (EAST knowsAbout _x)];
							};
						}
					} forEach units WEST;
				};
				
				units _crewGroup allowGetIn true;
				units _crewGroup doFollow leader _crewGroup;
				units _crewGroup orderGetIn true;
				{ _x  enableAI "PATH"; } forEach units _crewGroup;
				
				units _crewGroup doFollow leader _crewGroup;
				private _wp = _crewGroup addWaypoint [getPos _tank, 0];
				_wp setWaypointType "GETIN NEAREST";
				_wp waypointAttachVehicle _tank;
				_wp setWaypointBehaviour "CARELESS";
				_wp setWaypointCombatMode "YELLOW";
				_crewGroup setCurrentWaypoint _wp;

				private _wp2 = _crewGroup addWaypoint [getPos A455_WESTUnit, 1];
				_wp2 setWaypointType "SAD";
				_wp2 setWaypointBehaviour "COMBAT";
				_wp2 setWaypointCombatMode "RED";

				if (A455_DEBUG_MODE) then {
					private _marker = createMarker [("tanktracker_wp_" + str random 10000000), waypointPosition _wp2]; // not visible yet.
					_marker setMarkerType "hd_dot";
					_marker setMarkerColor "ColorRed";
					_marker setMarkerText "WAYPOINT";
				};				
			};

		};
	} else {
		break;
	};
};

// hint str _totalTanks