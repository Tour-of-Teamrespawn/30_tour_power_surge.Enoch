private ["_rnd"];
_rnd = random 4;
if (!isNil "TOUR_RC_lockWait") then
{
	_rnd = 0;
};
cutText ["", "BLACK OUT", _rnd];
_rnd fadeSound 0;
[] spawn TOUR_RC_fn_radio;
sleep 4;
if (!isNil {missionNamespace getVariable "TOUR_RC_groupRespawn"}) then 
{
		if ({alive _x &&  !(isPlayer _x)} count (units group player) > 0) then 
		{
			_units = [];
			{
				if (alive _x && !(isPlayer _x)) then 
				{
					_units pushBackUnique _x;
				};
			}forEach (units group player);
			switchCamera (_units select 0);
			selectPlayer (_units select 0);
			group player selectLeader player;
			TOUR_RC_message = [format ["<t color='#ffffff' size = '.8'>RESPAWNED</t><br /><br /><t color='#ffffff' size = '.6'>You have now respawned as another unit within your group. %1 units remaining</t>", ((count _units) - 1)],-1,-1,8,1,0,789];
			player addMPEventHandler ["MPKilled", {
				params ["_unit", "_killer", "_instigator", "_useEffects"];
				if (!isDedicated) then
				{
					if (player == _unit) then
					{
						missionNameSpace setVariable ["TOUR_RC_playerLoadout", getUnitLoadout _unit];
						[]spawn TOUR_RC_fn_playerDead;
					};
				};
			}];
		}else 
		{
			setPlayerRespawnTime 2000000;
			If !((getplayerUID player) in (missionNameSpace getVariable "TOUR_RC_deadUIDs")) then
			{
				_deadUIDs = missionNameSpace getVariable "TOUR_RC_deadUIDs";
				_deadUIDs pushBackUnique (getPlayerUID player);
				missionNameSpace setVariable ["TOUR_RC_deadUIDs", _deadUIDs, true];
			};
			["Initialize",[player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
			if (isNil "TOUR_RC_message") then
			{
				TOUR_RC_message = [format ["<t color='#ffffff' size = '.8'>SPECTATING MODE</t><br /><br /><t color='#ffffff' size = '.6'>You have now died, please wait patiently till the end of the round.</t>", playerRespawnTime],-1,-1,8,1,0,789];
			};			
		}
}else 
{
	if (playerRespawnTime > 2000000) then
	{
		If !((getplayerUID player) in (missionNameSpace getVariable "TOUR_RC_deadUIDs")) then
		{
			_deadUIDs = missionNameSpace getVariable "TOUR_RC_deadUIDs";
			_deadUIDs pushBackUnique (getPlayerUID player);
			missionNameSpace setVariable ["TOUR_RC_deadUIDs", _deadUIDs, true];
		};
		["Initialize",[player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
		if (isNil "TOUR_RC_message") then
		{
			TOUR_RC_message = [format ["<t color='#ffffff' size = '.8'>SPECTATING MODE</t><br /><br /><t color='#ffffff' size = '.6'>You have now died, please wait patiently till the end of the round.</t>", playerRespawnTime],-1,-1,8,1,0,789];
		};
	}else
	{
		if (!isNil "TOUR_RC_lockWait") then
		{
			setPlayerRespawnTime 2000000;
		}else
		{
			setPlayerRespawnTime (missionNameSpace getVariable "TOUR_RC_respawnTime");
		};
		if (((missionNameSpace getVariable "TOUR_RC_respawnTime") >= 15)or(!isNil "TOUR_RC_lockWait")) then
		{
			["Initialize",[player, [player getVariable "TOUR_RC_side"], true, false, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
		};
		if (isNil "TOUR_RC_message") then
		{
			TOUR_RC_message = [format ["<t color='#ffffff' size = '.8'>SPECTATING MODE</t><br /><br /><t color='#ffffff' size = '.6'>You will respawn shortly, please wait patiently for %1 seconds.</t>", playerRespawnTime],-1,-1,8,1,0,789];
		};
	};
};


cutText ["", "BLACK IN", 4];
4 fadeSound 1;
TOUR_RC_message spawn BIS_fnc_dynamicText;
TOUR_RC_message = nil;
if (!isNil "TOUR_RC_lockWait") then
{
	waitUntil {alive player or !(missionNameSpace getVariable "TOUR_RC_Locked")};
	if (!alive player) then
	{
		setPlayerRespawnTime 0;
	};
	TOUR_RC_lockWait = nil;
};