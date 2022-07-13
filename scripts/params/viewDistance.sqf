// sets viewDistance slowly over time

private _startdistance = _this select 0;
private _enddistance = _this select 1;
private _time = _this select 2;
private _timeinc = _this select 3;

private _distanceinc = (_enddistance - _startdistance) / (_time / _timeinc);

private _increasing = if (_enddistance > _startdistance) then {
    true
} else {
    false
};

setviewDistance _startdistance;

while {(_increasing && (viewDistance < _enddistance)) or (!_increasing && (viewDistance > _enddistance))} do {
    if (_increasing) then {
        setviewDistance (viewDistance + _distanceinc)
    } else {
        setviewDistance (viewDistance - _distanceinc)
    };
    sleep _timeinc;
};

setviewDistance _enddistance;