// heli_trig / heli_trig2 calls this (REPEATABLE)

// send radio warning message to all non-servers
[] remoteExec ["A455_fnc_heliWarn",[0, -2] select isDedicated];

private _unitList = _this;

if (A455_HELIS_CREATED != false) exitWith {};

private _group1 = createGroup EAST;
private _heliSpawn1 = [(getMarkerPos "heli_spawn"), 0, 500, 10, 0] call BIS_fnc_findSafePos;
private _heli1 = [_helispawn1, (random 360), "UK3CB_KDF_O_Mi_24V", _group1, false] call BIS_fnc_spawnVehicle;
{_x setSkill 1} foreach units (_heli1 select 2);
private _heli1v = _heli1 select 0;

private _group2 = createGroup EAST;
private _heliSpawn2 = [(getMarkerPos "heli_spawn"), 0, 500, 10, 0] call BIS_fnc_findSafePos;
private _heli2 = [_helispawn2, (random 360), "UK3CB_KDF_O_Mi_24P", _group2, false] call BIS_fnc_spawnVehicle;
{_x setSkill 1} foreach units (_heli2 select 2);
private _heli2v = _heli2 select 0;

A455_HELIS_CREATED = true;
publicVariable "A455_HELIS_CREATED";

if (A455_DEBUG_MODE) then {
	hint "HELI REINFORCEMENTS INCOMING";
};

while {(alive _heli1v && canMove _heli1v) || (alive _heli2v && canMove _heli2v)} do {
	{
		_group1 reveal [_x, 4];
		_group2 reveal [_x, 4];
	} forEach _unitList;

	for "_i" from count waypoints _group1 - 1 to 0 step -1 do {
		deleteWaypoint [_group1, _i];
	};

	for "_i" from count waypoints _group2 - 1 to 0 step -1 do {
		deleteWaypoint [_group2, _i];
	};

	private _wp1 = _group1 addWaypoint [(getPos (_unitList select 0)),0];
	_group1 setCurrentWaypoint _wp1;
	_wp1 setWaypointSpeed "LIMITED";
	_wp1 setWaypointCombatMode "RED";
	_wp1 setWaypointBehaviour "COMBAT";
	_wp1 setWaypointType "SAD";

	if (A455_DEBUG_MODE) then {
		private _marker = createMarker [("heli_tracker_" + str random 10000000), waypointPosition _wp1]; // not visible yet.
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorRed";
		_marker setMarkerText "H1 WP";
	};

	private _wp2 = _group2 addWaypoint [(getPos (_unitList select 0)),0];
	_group2 setCurrentWaypoint _wp2;
	_wp2 setWaypointSpeed "LIMITED";
	_wp2 setWaypointCombatMode "RED";
	_wp2 setWaypointBehaviour "COMBAT";
	_wp2 setWaypointType "SAD";

	if (A455_DEBUG_MODE) then {
		_marker = createMarker [("heli_tracker_" + str random 10000000), waypointPosition _wp2]; // not visible yet.
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorRed";
		_marker setMarkerText "H2 WP";
	};	

	sleep 60;
};

if (A455_DEBUG_MODE) then {
	hint "HELI REINFORCEMENTS DEAD";
};

// if helis are destroy for any reason, reset and respawn if people attack again.

A455_HELIS_CREATED = false;
publicVariable "A455_HELIS_CREATED";