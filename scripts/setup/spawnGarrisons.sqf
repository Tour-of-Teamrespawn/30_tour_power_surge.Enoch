if (!isServer) exitWith {};
private _spawnRate = _this select 0;
sleep 5;
private _totalUnits = 0;
{
	private _building = _x;
	private _allPositions = _building buildingPos -1;
	// hint str count _allPositions;

	if (count _allPositions >= 1) then {
		// Create Sign_Sphere100cm_F at each building Position
		// _veh =  createVehicle ["Sign_Sphere100cm_F", _x, [], 0, "CAN_COLLIDE"];
			// for 50% of buildings
		if (_spawnRate > random 1) then {
			private ["_availableGroups","_chosenGroup"];
			_availableGroups = [];

			// dynamically get a group of the correct size(ish) for the building
			private _unitSize = 0;
			if (count _allPositions <= 5 || typeOf _building == "dp_bigtank_old_f") then {
				_availableGroups = "count (_x call BIS_fnc_getCfgSubClasses) == 2" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "Infantry");
				_availableGroups = _availableGroups + ("count (_x call BIS_fnc_getCfgSubClasses) == 2" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "SpecOps"));
				_unitSize = 2;
			} else {
				if (count _allPositions <= 10) then {
					_availableGroups = "count (_x call BIS_fnc_getCfgSubClasses) == 4" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "Infantry");
					_availableGroups = _availableGroups + ("count (_x call BIS_fnc_getCfgSubClasses) == 4" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "SpecOps"));
					_unitSize = 4;
				} else {
					_availableGroups = "count (_x call BIS_fnc_getCfgSubClasses) == 8" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "Infantry");
					_availableGroups = _availableGroups + ("count (_x call BIS_fnc_getCfgSubClasses) == 8" configClasses (configFile >> "CfgGroups" >> "East" >> "UK3CB_KDF_O" >> "SpecOps"));
					_unitSize = 8;
				};
			};
			_totalUnits = _totalUnits + _unitSize;
			_chosenGroup = selectRandom _availableGroups;
			_group = [[0,0,0], EAST, _chosenGroup] call BIS_fnc_spawnGroup;
			if (_unitSize == 8) then {
 				_group setVariable ["lambs_danger_enableGroupReinforce", true, true];
			};
			sleep 2;

			// move all group members to random building position
			private _allPositions = _building buildingPos -1;
			{
				private _newPos = selectRandom _allPositions;
				_x setPos _newPos;
				doStop _x;
				_x setDir (((getPos _x) getDir (getPos _building)) + 180);
			} foreach units _group;
		};
	};
} foreach (nearestObjects [garrisonCentre, ["House", "Building"], 150]);

if (A455_DEBUG_MODE) then {
	hint ("Total garrisoned units: " + str _totalUnits + "\nTotal EAST units: " + str count units EAST);
	{
		private _veh =  createVehicle ["Sign_Sphere100cm_F", (getPosATL _x), [], 0, "CAN_COLLIDE"];
	} foreach units EAST;
};