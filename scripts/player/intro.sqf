if (!isDedicated) then {
    // if the mission has been running for 60 seconds, do not run the intro and just make the player stand.
    if (A455_INTRO_DONE) exitwith {
        sleep 1;
        player playAction "stand";
    };
    
    // fade to black straight away and make it say loadinG inTRO, to allow the game to load and render all images. Kill all sound whilst it loads
    cuttext ["loading intro", "BLACK FADED", 0];
    0 fadeSound 0;
    waitUntil {
        player == player
    };
    sleep 1;
    // define map positions for camera [x, y, z]
    _pos1 = [getmarkerPos "TOUR_mkr_introStart" select 0, getmarkerPos "TOUR_mkr_introStart" select 1, 50];
    _pos2 = [11898.3, 5290.52, 0];
    _pos3 = [(player getPos [20, (getDir player) + 180]) select 0, (player getPos [20, (getDir player) + 180]) select 1, 15];
    _pos4 = [getPos player select 0, getPos player select 1, ((getPos player select 2) + 1.85)];
    // play intro music
    playSound "toUR_introMusic";
    // create camera and set first position and where it is looking.
    _cam1 = "camera" camCreate _pos1;
    _cam1 camPrepareTarget _pos2;
    _cam1 camCommitPrepared 0;
    _cam1 cameraEffect ["internal", "back"];
    // set blur instantly
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [5];
    "dynamicBlur" ppEffectCommit 0;
    sleep 1;
    cuttext ["", "BLACK FADED", 0];
    sleep 1;
    dostop player;
    // fade in from black over 5 seconds, this command continues running in parallel, hense the 6 second sleep 4 lines further on.
    cuttext [" ", "BLACK in", 5];
    // make the blur turn off over 8 seconds
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 8;
    5 fadeSound 1;
    sleep 6;
    // spawn code for text typing type writer effect
    []spawn
    {
        sleep 5;
        _text = ["L", "i", "v", "o", "n", "i", "a", "\n", "P", "o", "i", "n", "t", " ", "B", "e", "a", "r"];
        _display = "";
        _pointer = 0;
        _sleeptime = 0.1;
        while {_pointer < count _text} do {
            _sleeptime = 0.1 + (random 0.05);
            _display = _display + (_text select _pointer);
            titleText [_display, "PLAin down", _sleeptime];
            _pointer = _pointer + 1;
            if (_pointer == count _text) then {
                cuttext [_display, "PLAin down", 1];
            } else {
                playSound "toUR_key_noise";
            };
            sleep _sleeptime;
        };
    };
    // wait 4 seconds for the typing to complete.
    sleep 10;
    // fade to black
    cuttext [" ", "BLACK OUT", 2];
    sleep 3;
    // set the camera at position 3 looking at the player.
    _cam1 camsetPos _pos3;
    _cam1 camCommit 0;
    _cam1 camPrepareTarget player;
    _cam1 camCommitPrepared 0;
    "dynamicBlur" ppEffectAdjust [5];
    "dynamicBlur" ppEffectCommit 0;
    sleep 2;
    // fade in with blur set again
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 3;
    sleep 0.1;
    cuttext ["", "BLACK in", 2];
    sleep 5;
    // more text type to run in parallel
    []spawn
    {
        _text = ["R", "o", "y", "a", "l", " ", "M", "a", "r", "i", "n", "e", " ", "C", "o", "m", "m", "a", "n", "d", "o", "s"];
        _display = "";
        _pointer = 0;
        _sleeptime = 0.1;
        while {_pointer < count _text} do {
            _sleeptime = 0.1 + (random 0.05);
            _display = _display + (_text select _pointer);
            titleText [_display, "PLAin down", _sleeptime];
            _pointer = _pointer + 1;
            if (_pointer == count _text) then {
                cuttext [_display, "PLAin down", 1];
            } else {
                playSound "toUR_key_noise";
            };
            sleep _sleeptime;
        };
    };
    sleep 3;
    // move camera into the players head over 10 seconds as if you are going to be that person ingame.
    _cam1 camsetPos _pos4;
    _cam1 camCommit 10;
    sleep 7.5;
    // fade out just before you enter head and blur out too.
    cuttext [" ", "BLACK OUT", 2];
    sleep 1;
    "dynamicBlur" ppEffectAdjust [3];
    "dynamicBlur" ppEffectCommit 1;
    sleep 5;
    // kill camera - returning camera into the players eyes, and fade in with unblurring.
    _cam1 cameraEffect ["terminate", "back"];
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 3;
    cuttext [" ", "BLACK in", 4];
    sleep 7;
    // destroy camera object
    camDestroy _cam1;
    
    // give fancy text
    _date = date;
    _year = _date select 0;
    _month = _date select 1;
    _day = _date select 2;
    _hour = _date select 3;
    _min = _date select 4;
    _text_date = [];
    
    if (_min < 10) then {
        _text_date = format ["%1-%2-%3 %4h0%5m", _month, _day, _year, _hour, _min];
    } else {
        if (_min == 60) then {
            _hour = _hour + 1;
            _min = 0;
            _text_date = format ["%1-%2-%3 %4h0%5m", _month, _day, _year, _hour, _min];
        } else {
            _text_date = format ["%1-%2-%3 %4h%5m", _month, _day, _year, _hour, _min];
        };
    };
    _text_1 = "2nd platoon";
    _text_2 = "Power Surge";
    sleep 2;
    [_text_1, _text_date, _text_2] spawn A455_fnc_infotext;
    
    // when the player moves out, give nice text to remind of the mission, like a film intro
    waitUntil { getmarkerPos "TOUR_mkr_Start" distance vehicle player > 300 };
    private _text = "<t font='PuristaBold' size='1.6'>30 [tour] Power Surge</t><br />by andy455 [tour]";
    [parsetext _text, true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
};