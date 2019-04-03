	params ["_objects"];
	private ["_skill","_Sktype","_veh"];
	_skill = CC_p_skillia;
	{
		_veh = _x;
		{
			_Sktype = _veh skill _x ;
			_veh setSkill [_x,( _Sktype * _skill)];
		} foreach ["aimingShake","aimingSpeed","spotTime","spotDistance","aimingAccuracy"];
	} forEach _objects;