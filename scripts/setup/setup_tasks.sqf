A455_NCTask_Ended = false;

private _seizeTaskSuccess = [west, "A455_task_seize", ["Seize control of the <marker name='m_ao'>power plant</marker> 1km east of Karlin.", "Seize Power Plant", "m_ao"], (getmarkerPos "m_ao"), "ASSIGNED", 1, false, "attack", false] call BIS_fnc_taskCreate;
private _NCParentTask = [west, "A455_task_nocollateral", ["Ensure at least 2/3 of the electrical transformers <marker name='mkr_trans_1'>here</marker> and at least 2/3 of the transformers <marker name='mkr_trans_2'>here</marker> stay intact. We need to ensure that this plant is functional once we take it!", "Minimise collateral damage", "m_ao"], objNull, "CREATED", 2, false, "", false] call BIS_fnc_taskCreate;

seizeTrigger = createTrigger ["EmptyDetector", getPosATL garrisonCentre];
seizeTrigger settriggerActivation ["ANY", "PRESENT", false];
seizeTrigger settriggerArea [250, 250, 0, false];
seizeTrigger settriggerStatements ["({alive _x && side _x == east} count thislist <= 3) && {alive _x && side _x == west} count thislist >= 1", "call A455_fnc_seizedPlant", ""];
seizeTrigger settriggerTimeout [5, 10, 15, false];
seizeTrigger setTriggerInterval 5;

// _noCivDead = [west, "A455_task_nociv", ["Avoid civilian casualties", "No dead civilians", "m_ao"], objNull, "CREATED", 3, false, "meet", false] call BIS_fnc_taskCreate;

private _NCTask1Trigger = createTrigger ["EmptyDetector", [11553.5, 6989.65, 0.00131226]];
_NCTask1Trigger settriggerArea [7, 7, 0, false];
_NCTask1Trigger settriggerStatements ["count (nearestTerrainObjects [getPosATL thistrigger, [""HOUSE""], 7]) < 3", "call A455_fnc_failNCTask", ""];
_NCTask1Trigger settriggerInterval 5;

private _NCTask3Trigger = createTrigger ["EmptyDetector", [11584.7, 7181.38, 0.00144196]];
_NCTask3Trigger settriggerArea [7, 7, 0, false];
_NCTask3Trigger settriggerStatements ["count (nearestTerrainObjects [getPosATL thistrigger, [""HOUSE""], 7]) < 3", "call A455_fnc_failNCTask", ""];
_NCTask3Trigger settriggerInterval 5;