private _caller = _this select 1;
private _laptop = _this select 0;
private _action = (_this select 2);
missionNameSpace setVariable ["TOUR_reportIn", true, true];
[[_caller, _laptop, _action],"scripts\player\endPlayer.sqf"] remoteExec ["execVM", 0, false];