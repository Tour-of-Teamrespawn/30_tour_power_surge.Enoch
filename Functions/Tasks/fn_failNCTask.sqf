if (!A455_NCTask_Ended) then {
	A455_NCTask_Ended = true;
	
	["A455_task_nocollateral", "FAILED", true] call BIS_fnc_taskSetState;
} else {
	if (A455_DEBUG_MODE) then {
		hint "Would fail A455_task_nocollateral"
	};
};