/*
	Création de markers en fonctions de la map

	Pour récup les markers rouges de la map :
_br = toString [13,10];
_arraymk = [];
_strmk = "";
{
	_mk = [(MarkerPos _x),(markerShape _x),(markerSize _x),(markerDir _x)];
	_arraymk pushback _mk;

} forEach (allMapMarkers select {(markerColor _x) == "ColorRed"});

{
	_strmk = _strmk + _br + (str _x) + ",";
} forEach _arraymk;
copyToClipboard _strmk;


*/

private ["_mkz_whitelist","_mkz_blacklist"];
CPC_MAP = toLower worldName;
publicVariable "CPC_MAP";
cc_mkz_whitelist = [];
cc_mkz_blacklist = [];

cc_createAreaMarker = {
	params ["_mkCfg"];
	private ["_mk"];
	_mk = createMarker [(format ["mkz_ex_%1",(_mkCfg select 0)]),(_mkCfg select 0)];
	_mk setMarkerShape (_mkCfg select 1);
	_mk setMarkerSize (_mkCfg select 2);
	_mk setMarkerDir (_mkCfg select 3);
	_mk
};

switch (CPC_MAP) do {
	//Altis
	case "altis" : {

		CPC_WorldType = "vanilla";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,5,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[3636.15,13270.1,0],"ELLIPSE",[1002.83,1122.66],0],
			[[14715.7,16590.2,0],"RECTANGLE",[444.754,1152.29],223.862],
			[[16809.9,12977,0],"ELLIPSE",[873.661,842.144],223.862],
			[[13523,12005.6,0],"ELLIPSE",[594.727,335.679],306.511],
			[[8512.72,25102.6,0],"ELLIPSE",[818.797,503.416],178.14],
			[[23682.6,18339.5,0],"ELLIPSE",[1286.82,948.574],307.179]
		];
		"Mark_Inser" setMarkerPos [14738.1,16662.9,0];
	};

	//Tanoa
	case "tanoa" : {

		CPC_WorldType = "fidji";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[3203.61,12037.8,0],"ELLIPSE",[1432.37,2416.46],201.688],
			[[2551.78,6899.34,0],"ELLIPSE",[1432.37,2232.18],137.787],
			[[4355.63,3885.18,0],"ELLIPSE",[2140.12,3172.25],246.116],
			[[11311.5,3540.9,0],"ELLIPSE",[2141.16,2911.4],284.484],
			[[9657.9,10077.1,0],"ELLIPSE",[3939.03,5435.44],271.081]
		];
		_mkz_blacklist = [
			[[11673.8,2772.79,0],"RECTANGLE",[410.592,660.608],126.84],
			[[7065.39,7334.72,0],"ELLIPSE",[416.412,572.18],167.939],
			[[5695.91,10424.3,0],"ELLIPSE",[649.509,773.307],192.699],
			[[13551.5,12135.4,0],"ELLIPSE",[649.509,773.307],126.915],
			[[11817.8,13119,0],"RECTANGLE",[308.982,560.524],106.948],
			[[9533.95,13544.5,0],"RECTANGLE",[308.982,854.844],96.3162],
			[[8620.99,10237.6,0],"ELLIPSE",[308.982,560.524],106.948],
			[[11921.7,10460.2,0],"ELLIPSE",[409.685,642.127],93.0934],
			[[10064.7,12040.2,0],"ELLIPSE",[677.764,760.999],106.948],
			[[10641.5,8622.13,0],"ELLIPSE",[392.775,1166.13],263.57]
		];
		"Mark_Inser" setMarkerPos [12283.4,13971.9,0];
	};

	//Takistan
	case "takistan" : {

		CPC_WorldType = "desert";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[6499.09,6499.61,0],"RECTANGLE",[6002.91,6001.42],0]
		];
		_mkz_blacklist = [
			[[5775.59,11382.1,0],"RECTANGLE",[800.935,379.753],134.145],
			[[8010.06,1900.74,0],"RECTANGLE",[572.709,310.531],331.93],
			[[5244.4,6146.79,0],"ELLIPSE",[387.682,287.06],330.167]
		];
		"Mark_Inser" setMarkerPos [5821.4,11233.8,0];
	};

	//chernarus
	case "chernarus" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[7716.22,8102.3,0],"RECTANGLE",[7218.04,6758.17],0]
		];
		_mkz_blacklist = [
			[[4583.12,10356.5,0],"RECTANGLE",[584.919,1036.96],150.375],
			[[6815.09,2507.48,0],"ELLIPSE",[678.508,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12583.6,9687.63,0],"ELLIPSE",[514.606,1122.81],229.419],
			[[9453.44,13642.2,0],"ELLIPSE",[165.888,239.469],265.846]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
	};

	//chernarus summer
	case "chernarus_summer" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[7716.22,8102.3,0],"RECTANGLE",[7218.04,6758.17],0]
		];
		_mkz_blacklist = [
			[[4583.12,10356.5,0],"RECTANGLE",[584.919,1036.96],150.375],
			[[6815.09,2507.48,0],"ELLIPSE",[678.508,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12583.6,9687.63,0],"ELLIPSE",[514.606,1122.81],229.419],
			[[9453.44,13642.2,0],"ELLIPSE",[165.888,239.469],265.846]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
	};


	//IslaDuala3
	case "isladuala3" : {

		CPC_WorldType = "afrique";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[635.969,6454.05,0],"ELLIPSE",[392.1,418.128],130.783],
			[[2585.86,7780.95,0],"ELLIPSE",[392.1,471.027],251.634],
			[[9133.94,7308.84,0],"ELLIPSE",[392.1,478.867],138.622],
			[[1575.13,6022.47,0],"ELLIPSE",[281.239,260.438],87.1828],
			[[4562.65,2240.23,0],"RECTANGLE",[664.983,265.471],0],
			[[3432.59,2598.35,0],"RECTANGLE",[651.303,282.102],0],
			[[3528.89,3106.83,0],"RECTANGLE",[234.41,265.471],270.374],
			[[4383.11,6628.92,0],"ELLIPSE",[568.205,567.448],104.261],
			[[6243,6222.46,0],"RECTANGLE",[761.538,325.956],0],
			[[5039.54,5148.34,0],"RECTANGLE",[279.272,174.987],0],
			[[8811.74,6361.03,0],"ELLIPSE",[441.454,278.095],221.262],
			[[5588.2,7652.53,0],"ELLIPSE",[150,150],0]
		];
		"Mark_Inser" setMarkerPos [5949.44,6190.24,0];
	};

	//Sahrani
	case "sara" : {

		CPC_WorldType = "vanilla";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[4837.61,15579.5,0],"ELLIPSE",[900,900],0],
			[[7810.66,14368.3,0],"ELLIPSE",[423.675,321.505],150.714],
			[[17413.8,18627.9,0],"ELLIPSE",[921.998,1366.83],154.063],
			[[17497.6,3969.93,0],"ELLIPSE",[1820.96,1820.96],0],
			[[9473.36,3484.78,0],"ELLIPSE",[526.71,377.138],0],
			[[2500.46,2609.75,0],"ELLIPSE",[1465.75,1465.75],0],
			[[1927.55,17976.6,0],"ELLIPSE",[900,1358.34],210.681],
			[[9810.96,10017.1,0],"RECTANGLE",[736.205,334.644],0],
			[[10530.6,9349.49,0],"ELLIPSE",[529.049,529.049],0],
			[[17771.9,12392,0],"RECTANGLE",[125.886,125.886],0],
			[[19051.5,14043.9,0],"ELLIPSE",[788.824,434.116],221.148],
			[[13227.8,16818.5,0],"ELLIPSE",[536.615,536.615],0],
			[[14837,14812,0],"ELLIPSE",[1491.43,542.225],203.994],
			[[15949.4,15256.3,0],"ELLIPSE",[1144.52,617.016],207.789],
			[[14685.9,15586,0],"ELLIPSE",[422.24,285.145],247.88],
			[[13162,15932.1,0],"ELLIPSE",[560.622,293.919],60.2579],
			[[8167.1,17003.1,0],"RECTANGLE",[125.886,125.886],206.341],
			[[11073,16810.8,0],"ELLIPSE",[448.511,321.505],174.806],
			[[13341.4,8945.04,0],"ELLIPSE",[587.632,393.227],150.714],
			[[12353.9,8482.43,0],"RECTANGLE",[76.7495,125.886],0],
			[[12364.9,7092.24,0],"ELLIPSE",[479.173,479.173],0],
			[[11574,6101.59,0],"ELLIPSE",[529.049,529.049],0]
		];
		"Mark_Inser" setMarkerPos [2582.69,2710.45,0];
	};

	//Podagorsk
	case "fdf_isle1_a" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[9487.25,11397.8,0],"RECTANGLE",[5813.54,8582.39],0]
		];
		_mkz_blacklist = [
			[[7576.02,10702.7,0],"ELLIPSE",[466.149,322.034],194.53],
			[[13049.1,9630.18,0],"ELLIPSE",[148.374,147.731],0],
			[[10233.6,8868.53,0],"ELLIPSE",[159.743,159.743],0],
			[[11372.6,7920.76,0],"ELLIPSE",[91.3027,91.3027],0],
			[[14947,6312.53,0],"ELLIPSE",[383.587,223.47],131.568],
			[[14167.5,5564.69,0],"ELLIPSE",[492.849,815.506],132.725],
			[[7048.01,9114.1,0],"ELLIPSE",[733.34,1595.13],167.471],
			[[7199.89,11987.5,0],"ELLIPSE",[328.399,728.645],107.133],
			[[6723.94,11362.1,0],"ELLIPSE",[378.549,519.141],219.67],
			[[8054.12,6726.44,0],"ELLIPSE",[370.866,582.591],137.907],
			[[11370.8,5092.49,0],"ELLIPSE",[488.573,281.421],203.438],
			[[8771.64,4288.22,0],"ELLIPSE",[1220.02,696.618],191.73],
			[[14625.6,9709.83,0],"ELLIPSE",[159.743,289.837],152.644],
			[[9071.7,15727.5,0],"ELLIPSE",[133.277,133.277],0]
		];
		"Mark_Inser" setMarkerPos [15880,6584.53,0];	
	};

	//Bystrica
	case "woodland_acr" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[3850.91,3800.08,0],"RECTANGLE",[3449.93,3473.5],0]
		];
		_mkz_blacklist = [
			[[2169.31,4317.33,0],"ELLIPSE",[280.934,280.934],0],
			[[3049.5,5832.45,0],"ELLIPSE",[121.456,121.456],0],
			[[1313.27,1863.65,0],"ELLIPSE",[533.899,525.094],0],
			[[4856.59,1335.01,0],"ELLIPSE",[451.897,643.821],237.631],
			[[3317.99,1981.52,0],"ELLIPSE",[227.043,344.28],145.19],
			[[5884.81,4658.63,0],"ELLIPSE",[193.014,96.3768],150.933],
			[[5842.51,5777.9,0],"ELLIPSE",[256.496,100.704],188.39],
			[[5270.66,7200.79,0],"ELLIPSE",[280.934,193.996],134.164],
			[[740.133,6975.16,0],"RECTANGLE",[363.294,327.083],0],
			[[1688.36,6898.93,0],"ELLIPSE",[280.934,169.661],204.383],
			[[424.33,3991.99,0],"ELLIPSE",[185.794,280.934],0],
			[[3775.91,3045.79,0],"ELLIPSE",[86.1889,125.838],213.868],
			[[4718.73,4637.83,0],"ELLIPSE",[122.774,122.774],0],
			[[4247.95,5736.62,0],"ELLIPSE",[95.2251,161.008],282.492],
			[[6678.24,2735.48,0],"ELLIPSE",[280.934,196.768],174.183],
			[[6744.38,6486.92,0],"ELLIPSE",[280.934,184.281],169.2]
		];
		"Mark_Inser" setMarkerPos [161.665,7588.38,0];	
	};

	//N'Ziwasogo
	case "pja305" : {

		CPC_WorldType = "jungle";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[10249.4,10211.3,0],"RECTANGLE",[9750.05,9748.92],0]
		];
		_mkz_blacklist = [
			[[12634.8,2616.75,0],"ELLIPSE",[3761.49,2915.84],0],
			[[11737.7,6205.16,0],"ELLIPSE",[2684.88,1413.23],145.649],
			[[2204.32,9586.89,0],"ELLIPSE",[1633.37,992.323],181.096],
			[[3876.3,11453.5,0],"ELLIPSE",[1842.43,431.979],110.79],
			[[4673.41,13641.5,0],"ELLIPSE",[1266.98,857.678],239.889],
			[[7058.98,3683.06,0],"ELLIPSE",[589.038,1036.12],304.489]
		];
		"Mark_Inser" setMarkerPos [13027,885.263,0];
	};

	//daryiah
	case "pja307" : {

		CPC_WorldType = "desert";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[13472.3,18694.7,0],"RECTANGLE",[6529.55,1267.8],0],
			[[12995.7,15347.3,0],"RECTANGLE",[2097.15,3479.81],90],
			[[13479.4,11547.7,0],"RECTANGLE",[5018.44,1747.27],0],
			[[12381.4,7570.31,0],"RECTANGLE",[5351.24,2286.25],0],
			[[18320,4342.98,0],"RECTANGLE",[3984.43,1181.11],90],
			[[13765.8,2864.13,0],"RECTANGLE",[3483.19,2504.19],0],
			[[7313.76,2934.59,0],"ELLIPSE",[1578.81,1094.66],236.877]
		];
		_mkz_blacklist = [
			[[17251.1,18444.8,0],"ELLIPSE",[308.144,426.621],137.561],
			[[17197.8,19832.6,0],"RECTANGLE",[583.035,198.493],0],
			[[9463.67,12874.2,0],"ELLIPSE",[388.321,1261.15],119.012],
			[[16845.5,1212.75,0],"RECTANGLE",[521.152,911.745],179.973],
			[[11480.6,4790.74,0],"ELLIPSE",[442.646,443.135],117.055],
			[[11061.1,787.543,0],"RECTANGLE",[897.326,573.599],0]
		];
		"Mark_Inser" setMarkerPos [5287.35,14565.9,0];
	};

	//Nogova
	case "noe" : {

		CPC_WorldType = "vanilla";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[2638.66,369.142,0],"ELLIPSE",[1143.01,559.168],0],
			[[1525.12,5147.61,0],"RECTANGLE",[803.06,408.569],90],
			[[282.114,8287.27,0],"ELLIPSE",[300,300],0],
			[[2615.01,12425.6,0],"ELLIPSE",[300,300],0],
			[[9593.33,12481.4,0],"RECTANGLE",[365.027,1070.63],90],
			[[7030.86,8023.12,0],"ELLIPSE",[229.256,229.256],0],
			[[8258.32,1560.11,0],"ELLIPSE",[1670.77,1118.02],33.6302]
		];
		"Mark_Inser" setMarkerPos [8917.49,12508.5,0];
	};

	//Everon
	case "eden" : {

		CPC_WorldType = "vanilla";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[10872.3,11717.8,0],"ELLIPSE",[1248.51,727.677],229.705],
			[[10826.1,8695.75,0],"ELLIPSE",[353.904,353.904],0],
			[[1113.44,11577.5,0],"ELLIPSE",[672.224,672.224],0],
			[[3071.82,1907.09,0],"ELLIPSE",[799.923,799.923],0],
			[[4892.87,11687.4,0],"RECTANGLE",[1010.89,900.834],0]
		];
		"Mark_Inser" setMarkerPos [4859.88,11799.2,0];
	};
};

// Création des markers
{
	_mk = [_x] call cc_createAreaMarker;
	cc_mkz_whitelist = cc_mkz_whitelist + [_mk];
	if (isMultiplayer) then {_mk setMarkerAlpha 0;};
} forEach _mkz_whitelist;
publicVariable "cc_mkz_whitelist";
{
	_mk = [_x] call cc_createAreaMarker;
	cc_mkz_blacklist = cc_mkz_blacklist + [_mk];
	if (isMultiplayer) then {_mk setMarkerAlpha 0;};
} forEach _mkz_blacklist;
publicVariable "cc_mkz_blacklist";

//Cacher les marqueurs de zone
if (isMultiplayer) then {
	for "_x" from 1 to 100 do
	{
		format ["%1",_x] setMarkerAlpha 0;
	};
};

cc_MarkersCreated = true;
publicVariable "cc_MarkersCreated";