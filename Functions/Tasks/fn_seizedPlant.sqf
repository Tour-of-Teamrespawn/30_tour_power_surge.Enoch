if (A455_DEBUG_MODE) then {
	hint "SEIZED PLANT!";
};
["A455_task_seize", "SUCCEEDED", true] call BIS_fnc_taskSetState;
_state = "A455_task_nocollateral" call BIS_fnc_taskState;
if (_state != "FAILED") then {
	["A455_task_nocollateral", "SUCCEEDED", true] call BIS_fnc_taskSetState;
};

"SUCCESS" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];