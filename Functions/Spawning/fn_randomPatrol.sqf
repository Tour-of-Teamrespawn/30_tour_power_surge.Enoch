params ["_group", "_whitelist", "_blacklist"];

private _wpCount = 8;
for "_i" from 1 to _wpCount step 1 do {

	_randomPosAroundCompound = [["m_ao"],["mkr_compound"]] call BIS_fnc_randomPos;
	
	private _wp = _group addWaypoint [_randomPosAroundCompound, 0];
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";	
	_wp setWaypointCombatMode "YELLOW";
	_wp setWaypointCompletionRadius 20;
	_wp setWaypointFormation "COLUMN";

	if (_i == 1) then { 
		_group setCurrentWaypoint _wp;
	};

	if (_i == 8) then {
		_wp setWaypointType "CYCLE";
	} else {
		_wp setWaypointType "MOVE";
	};
};