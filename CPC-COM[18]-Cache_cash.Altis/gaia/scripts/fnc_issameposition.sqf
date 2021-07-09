// In: [ position, position ]
// Out: boolean

private ["_p1", "_p2"];
_p1 = _this select 0;
_p2 = _this select 1;

((_p1 select 0) == (_p2 select 0) AND (_p1 select 1) == (_p2 select 1))
