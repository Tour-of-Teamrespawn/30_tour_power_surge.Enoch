if (isMultiplayer) then 
{
	//mulitplayer

	//Respawn time
	TOUR_respawnTime = (paramsArray select 0);
	
	//Lives
	TOUR_respawnTickets = [(paramsArray select 1),(paramsArray select 1),(paramsArray select 1),(paramsArray select 1)];
	
	//View Distance
	TOUR_viewDistance = (paramsArray select 2);

	//Time of Day
	TOUR_TOD = (paramsArray select 3);

	//Debug mode
	if (paramsArray select 4 == 0) then {
		A455_DEBUG_MODE = false;
	} else {
		A455_DEBUG_MODE = true;
	};

	//Enemy strength
	switch (paramsArray select 5) do {
		case 0: { A455_ENEMY_STRENGTH = 0.30; };
		case 1: { A455_ENEMY_STRENGTH = 0.45; };
		case 2: { A455_ENEMY_STRENGTH = 0.65; };
	};

	//Fog
	switch (paramsArray select 6) do {
		case 0: { A455_FOG = 0; };
		case 1: { A455_FOG = 0.25; };
		case 2: { A455_FOG = 0.5; };
		case 3: { A455_FOG = 0.75; };
		case 4: { A455_FOG = 1; };
	};

	//Overcast
	switch (paramsArray select 7) do {
		case 0: { A455_OVERCAST = 0; };
		case 1: { A455_OVERCAST = 0.25; };
		case 2: { A455_OVERCAST = 0.5; };
		case 3: { A455_OVERCAST = 0.75; };
		case 4: { A455_OVERCAST = 1; };
	};
	
} else {
	//singleplayer
	
	//Respawn time
	TOUR_respawnTime = 30;
	
	//lives
	TOUR_respawnTickets = [1,1,1,1];

	//View Distance
	TOUR_viewDistance = 1500;

	//Time of Day
	TOUR_TOD = 0;

	//Debug mode
	A455_DEBUG_MODE = true;

	//Enemy strength
	A455_ENEMY_STRENGTH = 0.45;

	//Fog
	A455_FOG = 0.25;

	//Overcast
	A455_OVERCAST = 0.25;
};

if (isServer) then {
	_timeH = 0;
	_timeM = 0;
	switch (TOUR_TOD) do
	{
		case 0: {
			_timeH = 2;
			_timeM = 30;
		};	//sunrise
		case 1: {
			_timeH = 12;
		};	//noon
		case 2: {
			_timeH = 20;
		};	//sunset
		case 3: {
			_timeH = 23;
			_timeM = 30;
		};	//night
		case 4: {
			_timeH = floor (random 24);
			_timeM = floor (random 60);
		};	//random
	};
	
	// 30th July is a full moon
	[1988,7,30,_timeH,_timeM] remoteExec ["setDate", 0, true];

	// global effect
	0 setFog A455_FOG;

	// local effect, should sync with server though
	0 setOvercast A455_OVERCAST;
};

_rc = [TOUR_respawnTickets, TOUR_respawnTime] execVM "scripts\TOUR_RC\init.sqf";
waitUntil {scriptDone _rc};