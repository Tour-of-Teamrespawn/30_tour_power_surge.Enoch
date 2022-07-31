/*
DO NOT EDIT THIS DIRECTLY, BUILD.PS1 will increment the minor version of this by 1 each time it runs
###MISSION_VERSION 0.32
*/

/* Creates an entry in the server and client RPT file with the mission name in place of the %1.
Makes it easier to debug when you know what mission created the error. */
diag_log text "";
diag_log text format["|=============================   %1   =============================|", missionName];
diag_log text "";

private _p = execVM "scripts\params\params.sqf";
waitUntil {scriptDone _p};

{
	_x setVariable ["BIS_noCoreConversations",true];
} forEach allUnits;

[250, TOUR_viewDistance, 20, 0.05] execVM "scripts\params\viewDistance.sqf";
