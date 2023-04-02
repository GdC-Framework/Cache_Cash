/*
	Author: Mystery + Sparfell

	Description:
	Create an infinite random patrol on roads for a group in a radius area.

	Parameter(s):
		0 : GROUP - group
        1 : ARRAY - center position
        2 : NUMBER - radius
        3 (optional): ARRAY - Array of group move & combat parameters - Default : ["MOVE", "LIMITED", "SAFE", "RED", "COLUMN"]
        4 (optional): ARRAY - Blacklist, only compatible if the 1) parameter is used as Marker name. This array must contain
            Object - trigger
            String - marker name or special tags names: "water" - exclude water, "ground" - exclude land
            Array - in format [center, radius] or [center, [a, b, angle, rect]]
            Location - location.

	Returns:
	Nothing
*/

params ["_group", "_center", "_radius", ["_grp_params", ["MOVE", "LIMITED", "SAFE", "RED", "COLUMN"], [[]], [5]], ["_blacklist", nil, [[], ""]]];
private ["_random_pos", "_wp", "_wp_timeout"];

// If no blacklist sended, we generate the right one
if (isNil "_blacklist" ) then {
	_blacklist = [vehicle (leader _group)] call GDC_fnc_prepareBlacklistForRandomPos;
};

if (typename _blacklist != "ARRAY") then {
	_blacklist = [_blacklist];
};

_random_pos = [[[_center,_radius]], _blacklist] call BIS_fnc_randomPos;
private _roads = _random_pos nearroads 500;
_roads = _roads select {(_x distance2D _center) <= _radius};
if (count _roads > 0) then {
	_random_pos = getpos (selectrandom _roads);
};

if (LUCY_RANDOM_PATROL_MAX_TIMEOUT < 1) then {
    _wp_timeout = 1;
} else {
    _wp_timeout = LUCY_RANDOM_PATROL_MAX_TIMEOUT;
};

// Statement will recall the function when waypoint is reached
_wp = [
    _group,
    _random_pos,
    5,
    _grp_params #0,
    _grp_params #1,
    _grp_params #2,
    _grp_params #3,
    _grp_params #4,
    15,
    [0, _wp_timeout/2, _wp_timeout],
    [
        "true",
        format[
            "if (local this) then {
                private _group = group this;
                if(currentWaypoint _group == (count waypoints _group - 1)) then {
                    nul = _group spawn {[_this, %1, %2, [%3,""UNCHANGED"",""UNCHANGED"",""NO CHANGE"",""NO CHANGE""], %4] call STDR_fnc_lucyGroupRandomPatrolOnRoad;};
                };
                deleteWaypoint [_group, currentWaypoint _group];
            };",
            _center,
			_radius,
            str(_grp_params #0),
            _blacklist
        ]
    ]
] call GDC_fnc_lucyAddWaypoint;
