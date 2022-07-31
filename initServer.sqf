A455_INTRO_DONE = false;
publicVariable "A455_INTRO_DONE";
[A455_ENEMY_STRENGTH] execVM "scripts\setup\spawnGarrisons.sqf";
[A455_ENEMY_STRENGTH] execVM "scripts\setup\spawnPatrols.sqf";
[A455_ENEMY_STRENGTH, 5, 15] execVM "scripts\setup\spawnVehicles.sqf";
[1, 2] execVM "scripts\setup\spawnTanks.sqf";
execVM "scripts\setup\setup_tasks.sqf";
execVM "scripts\setup\spawnStatics.sqf";
execVM "scripts\setup\spawnCraters.sqf";

[group mortar_lead] call lambs_wp_fnc_taskArtilleryRegister;

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

waitUntil { time > 60 };
A455_INTRO_DONE = true;
publicVariable "A455_INTRO_DONE";

waitUntil {!isNil "TOUR_RC_WEST_DEAD"};
waitUntil {!TOUR_RC_WEST_DEAD};
waitUntil {sleep 2; TOUR_RC_WEST_DEAD};

["A455_task_seize", "FAILED", true] call BIS_fnc_tasksetState;
if (!A455_NCTask_Ended) then {
	["A455_task_nocollateral", "FAILED", true] call BIS_fnc_taskSetState;
};

"KIA" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];