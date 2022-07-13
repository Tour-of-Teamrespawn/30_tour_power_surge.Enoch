params ["_side"];
private ["_result"];

if 
(
	(({((alive _x) && ((toLower (lifeState _x)) in ["healthy","injured"]))&&((side _x) == _side)}count (playableUnits + switchableUnits)) > 0)
	or
	(
		(({((alive _x) && ((toLower (lifeState _x)) in ["healthy","injured"]))&&((side _x) == _side)}count (playableUnits + switchableUnits)) == 0)
		&&
		(([_side] call BIS_fnc_respawnTickets) > 1)
	)
	or
	(
		{
			(((alive _x) && ((toLower (lifeState _x)) in ["healthy","injured"])) && !(isNil {_x getVariable "TOUR_RC_groupRespawn"}))
			or 
			((isPlayer _x) && ({((alive _x) && ((toLower (lifeState _x)) in ["healthy","injured"])) && !(isPlayer _x) && !(isNil {_x getVariable "TOUR_RC_groupRespawn"})}count units group _x > 0))
		}count (alldead + playableUnits + switchableUnits) > 0
	)
) then
{
	_result = false;
}else
{
	_result = true;
};

switch (_side) do
{
	case WEST: { TOUR_RC_WEST_DEAD = _result;};
	case EAST: { TOUR_RC_EAST_DEAD = _result;};
	case INDEPENDENT: { TOUR_RC_INDEPENDENT_DEAD = _result;};
	case CIVILIAN: { TOUR_RC_CIVILIAN_DEAD = _result;};
};
_result
