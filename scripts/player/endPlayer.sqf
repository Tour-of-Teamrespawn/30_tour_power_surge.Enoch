private _caller = _this select 0;
private _laptop = _this select 1;
private _action = _this select 2;

if (A455_DEBUG_MODE) then {
	hint format ["---endPlayer---\n%1\n%2\n%3\n%4",_caller,_laptop,HQ]
};
if (!isDedicated) then {
    _laptop removeAction _action;
};

sleep 2;

enableRadio true;

_caller sideChat "HQ, this is 2nd platoon, message, over.";
sleep 5;
HQ sideChat "2nd platoon, this is HQ. Go head, over.";
sleep 5;
_caller sideChat "The operation is a failure, we have aborted the mission and have regrouped back at point bear. Over.";
sleep 5;
HQ sideChat "God, damn it! OK, at least some of your made it out of there. Head back to FOB Hawk for debriefing and latrine duty, out.";

// _caller sideRadio "TOUR_reportingback";
// sleep 5;
// [WEST, "HQ"] sideRadio "TOUR_welcomeback";
// sleep 5;
// _caller sideRadio "TOUR_callernotgood";
// sleep 5;
// [WEST, "HQ"] sideRadio "TOUR_officernotgood";

"FAIL" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
