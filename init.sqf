/*
DO NOT EDIT THIS DIRECTLY, BUILD.PS1 will increment the minor version of this by 1 each time it runs
###MISSION_VERSION 0.5
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

if (isServer) then {
	
	[A455_ENEMY_STRENGTH] execVM "scripts\setup\spawnGarrisons.sqf";
	[A455_ENEMY_STRENGTH, 5, 15] execVM "scripts\setup\spawnVehicles.sqf";
	[1, 2] execVM "scripts\setup\spawnTanks.sqf";
	[] execVM "scripts\setup\setup_tasks.sqf";

	//  You can use any of the the following variables to check if a side is all dead or faitally injured and the side has no more lives left.
	//	TOUR_RC_WEST_DEAD 
	//	TOUR_RC_EAST_DEAD
	//	TOUR_RC_INDEPENDENT_DEAD
	//	TOUR_RC_CIVILIAN_DEAD
	
	// variables
	TOUR_init_complete = true;
	publicVariable "TOUR_init_complete";
	A455_HELIS_CREATED = false;
	publicVariable "A455_HELIS_CREATED";

	waitUntil {!isNil "TOUR_RC_WEST_DEAD"};
	waitUntil {!TOUR_RC_WEST_DEAD};
	waitUntil {sleep 2; TOUR_RC_WEST_DEAD};

	["A455_task_seize", "FAILED", true] call BIS_fnc_tasksetState;
    if (!A455_NCTask_Ended) then {
        ["A455_task_nocollateral", "FAILED", true] call BIS_fnc_taskSetState;
    };
	sleep 2;
	// ["A455_task_nocollateral", "FAILED", true] call BIS_fnc_tasksetState;
	
	"KIA" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];		
};
