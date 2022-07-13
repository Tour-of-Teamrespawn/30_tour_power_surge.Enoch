A455_NCTask_Ended = false;

// new task system is apparently MP / JIP compatible

private _seizeTaskSuccess = [west, "A455_task_seize", ["Seize control of the <marker name='m_ao'>power plant</marker> 1km east of Karlin.", "Seize Power Plant", "m_ao"], (getmarkerPos "m_ao"), "ASSIGNED", 1, false, "attack", false] call BIS_fnc_taskCreate;

private _NCParentTask = [west, "A455_task_nocollateral", ["Ensure there is no collateral damage to the electrical transformers <marker name='mkr_trans_1'>here</marker>, <marker name='mkr_trans_2'>here</marker> and <marker name='mkr_trans_3'>here</marker>. We need to ensure that this plant stays functional!", "No collateral damage", "m_ao"], objNull, "CREATED", 2, false, "", false] call BIS_fnc_taskCreate;

A455_fnc_seizedPlant = {
    if (A455_DEBUG_modE) then {
        hint "SEIZED PLANT!";
    };
    ["A455_task_seize", "SUCCEEDED", true] call BIS_fnc_taskSetState;
	_state = "A455_task_nocollateral" call BIS_fnc_taskState;
    if (_state != "FAILED") then {
        ["A455_task_nocollateral", "SUCCEEDED", true] call BIS_fnc_taskSetState;
    };
    
    "SUCCESS" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
};

seizeTrigger = createTrigger ["EmptyDetector", getPosATL garrisonCentre];
seizeTrigger settriggerActivation ["ANY", "PRESENT", false];
seizeTrigger settriggerArea [250, 250, 0, false];
seizeTrigger settriggerStatements ["({alive _x && side _x == east} count thislist <= 3) && {alive _x && side _x == west} count thislist >= 1", "call A455_fnc_seizedPlant", ""];
seizeTrigger settriggerTimeout [5, 10, 15, false];
seizeTrigger setTriggerInterval 5;

// _noCivDead = [west, "A455_task_nociv", ["Avoid civilian casualties", "No dead civilians", "m_ao"], objNull, "CREATED", 3, false, "meet", false] call BIS_fnc_taskCreate;

// Transformers
A455_fnc_failnCTask = {
    if (!A455_NCTask_Ended) then {
        A455_NCTask_Ended = true;
        
        ["A455_task_nocollateral", "FAILED", true] call BIS_fnc_taskSetState;
    } else {
        if (A455_DEBUG_MODE) then {
            hint "Would fail A455_task_nocollateral"
        };
    };
};

private _NCTask1Trigger = createTrigger ["EmptyDetector", [11553.5, 6989.65, 0.00131226]];
_NCTask1Trigger settriggerArea [7, 7, 0, false];
_NCTask1Trigger settriggerStatements ["count (nearestTerrainObjects [getPosATL thistrigger, [""HOUSE""], 7]) < 3", "call A455_fnc_failnCTask", ""];
_NCTask1Trigger settriggerInterval 5;

private _NCTask2Trigger = createTrigger ["EmptyDetector", [11549.2, 7142.42, 0.00144196]];
_NCTask2Trigger settriggerArea [8, 8, 0, false];
_NCTask2Trigger settriggerStatements ["count (nearestobjects [getPos thistrigger, [""land_dp_transformer_F""], 8]) < 3", "call A455_fnc_failnCTask", ""];
_NCTask2Trigger settriggerInterval 5;

private _NCTask3Trigger = createTrigger ["EmptyDetector", [11584.7, 7181.38, 0.00144196]];
_NCTask3Trigger settriggerArea [7, 7, 0, false];
_NCTask3Trigger settriggerStatements ["count (nearestTerrainObjects [getPosATL thistrigger, [""HOUSE""], 7]) < 3", "call A455_fnc_failnCTask", ""];
_NCTask3Trigger settriggerInterval 5;