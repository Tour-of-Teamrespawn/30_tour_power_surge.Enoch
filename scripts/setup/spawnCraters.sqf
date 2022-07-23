private _craterClasses = ["Land_ShellCrater_02_small_F", "Land_ShellCrater_02_large_F"];
private _centre = getMarkerPos "mkr_craters";
private _numberOfCraters = 30;

for [{ _i = 0 }, { _i < (_numberOfCraters) }, { _i = _i + 1 }] do {
	private _class = selectRandom _craterClasses;
	private _pos = [_centre, 0, 150] call BIS_fnc_findSafePos;
	private _crater = createvehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
	_crater setDir (random 360);

	if (A455_DEBUG_MODE) then {
		private _marker = createMarker [("crater_tracker_" + str random 10000000), (getPos _crater)];
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorGrey";
	};
};