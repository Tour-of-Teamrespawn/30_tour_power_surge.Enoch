params ["_group", "_whitelist", "_blacklist"];

private _wpCount = 8;
for [{ _i = 0 }, { _i < (_wpCount) }, { _i = _i + 1 }] do {

	_randomPosAroundCompound = [["m_ao"],["mkr_compound"]] call BIS_fnc_randomPos;
	
	private _wp = _group addWaypoint [_randomPosAroundCompound, 0];
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";	
	_wp setWaypointCombatMode "YELLOW";
	_wp setWaypointCompletionRadius 20;
	_wp setWaypointFormation "COLUMN";

	if (_i == 0) then { 
		_group setCurrentWaypoint _wp;
	};

	if (_i == 7) then {
		_wp setWaypointType "CYCLE";
	} else {
		_wp setWaypointType "MOVE";
	};
};