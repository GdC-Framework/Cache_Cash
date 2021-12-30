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

private ["_mkz_whitelist","_mkz_blacklist","_spawnpos","_mk"];
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
			[[14974.5,16373.1,0],"RECTANGLE",[899.446,1492.74],223.862],
			[[16809.9,12977,0],"ELLIPSE",[873.661,842.144],223.862],
			[[13523,12005.6,0],"ELLIPSE",[594.727,335.679],306.511],
			[[8512.72,25102.6,0],"ELLIPSE",[818.797,503.416],178.14],
			[[23682.6,18339.5,0],"ELLIPSE",[1286.82,948.574],307.179],
			[[8076.41,14561.8,0],"ELLIPSE",[564.364,335.679],216.31],
			[[6383.18,12281.6,0],"ELLIPSE",[385.557,370.922],306.511]
		];
		"Mark_Inser" setMarkerPos [14738.1,16662.9,0];
		_spawnpos = [8456.56,25132.1,0];
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
		_spawnpos = [12283,13969,0];
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
			[[5710.79,11393.7,0],"RECTANGLE",[937.946,434.322],134.145],
			[[8010.06,1900.74,0],"RECTANGLE",[572.709,310.531],331.93],
			[[5244.4,6146.79,0],"ELLIPSE",[387.682,287.06],330.167],
			[[1798.97,8962.41,0],"ELLIPSE",[1464.72,634.517],147.884],
			[[826.746,10874.1,0],"ELLIPSE",[740.315,308.874],218.708],
			[[805.393,10028.9,0],"ELLIPSE",[341.605,287.06],251.413],
			[[6826.09,12280.5,0],"ELLIPSE",[154.858,99.2234],330.167],
			[[12205.1,11103.2,0],"ELLIPSE",[217.274,156.789],184.474],
			[[9868.04,11427.2,0],"ELLIPSE",[235.122,221.18],222.152],
			[[10450.7,10981.3,0],"ELLIPSE",[235.122,221.18],222.152],
			[[5601.2,9095.96,0],"ELLIPSE",[392.792,221.18],260.951],
			[[5979.83,10756.9,0],"ELLIPSE",[1103,494.019],292.445],
			[[800.255,2981.69,0],"ELLIPSE",[235.122,460.418],222.152],
			[[8024.5,6201.59,0],"ELLIPSE",[294.03,265.703],222.152]
		];
		"Mark_Inser" setMarkerPos [5821.4,11233.8,0];
		_spawnpos = [6025.07,11102.2,0];
	};

	//Livonia
	case "enoch" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[6400.39,6400.12,0],"RECTANGLE",[5700.26,5699.95],0]
		];
		_mkz_blacklist = [
			[[3927.79,10207.7,0],"RECTANGLE",[670.311,375.522],135.875],
			[[5047.13,10074.2,0],"ELLIPSE",[396.415,656.747],0],
			[[1562.61,7385.01,0],"ELLIPSE",[781.239,984.452],150.712],
			[[6075.37,4104.94,0],"ELLIPSE",[448.533,656.747],302.961],
			[[5620.93,3806.29,0],"RECTANGLE",[166.064,176.584],149.422],
			[[6379.78,4781.55,0],"RECTANGLE",[166.064,176.584],125.837],
			[[8466.99,6865.83,0],"RECTANGLE",[166.064,176.584],137.044],
			[[9050.47,6630.03,0],"RECTANGLE",[166.064,176.584],167.367],
			[[11547.5,7058.23,0],"RECTANGLE",[166.064,176.584],163.024],
			[[10982.7,9020.51,0],"RECTANGLE",[195.826,176.584],182.217],
			[[11467.5,9583.07,0],"RECTANGLE",[323.856,284.037],149.422],
			[[9406.45,10776.3,0],"ELLIPSE",[396.415,656.747],153.435],
			[[7867,9813.93,0],"ELLIPSE",[276.899,429.547],0],
			[[5061.04,2147.72,0],"ELLIPSE",[335.36,410.8],90],
			[[7440.19,2705.38,0],"ELLIPSE",[335.36,410.8],136.814],
			[[3491.38,11873.4,0],"ELLIPSE",[449.853,566.251],117.642],
			[[8142.91,10773.8,0],"RECTANGLE",[257.385,234.869],262.763],
			[[2595.49,5514.56,0],"RECTANGLE",[233.768,142.489],226.179]
		];
		"Mark_Inser" setMarkerPos [3981.46,10188.6,0];
		_spawnpos = [133.815,229.94,0];
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
			[[4614.45,10260.4,0],"RECTANGLE",[633.794,1211.86],150.375],
			[[6799.08,2531.72,0],"ELLIPSE",[707.555,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12644.3,9689.44,0],"ELLIPSE",[603.783,1288.93],229.419],
			[[9453.44,13642.2,0],"ELLIPSE",[165.888,239.469],265.846],
			[[8690.57,2794.55,0],"ELLIPSE",[221.924,348.754],165.512],
			[[2718.37,5294.47,0],"ELLIPSE",[545.108,320.627],286.728]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
		_spawnpos = [13708.8,2869.94,0];
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
			[[4614.45,10260.4,0],"RECTANGLE",[633.794,1211.86],150.375],
			[[6799.08,2531.72,0],"ELLIPSE",[707.555,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12644.3,9689.44,0],"ELLIPSE",[603.783,1288.93],229.419],
			[[9453.44,13642.2,0],"ELLIPSE",[165.888,239.469],265.846],
			[[8690.57,2794.55,0],"ELLIPSE",[221.924,348.754],165.512],
			[[2718.37,5294.47,0],"ELLIPSE",[545.108,320.627],286.728]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
		_spawnpos = [13708.8,2869.94,0];
	};

	//chernarus winter
	case "chernarus_winter" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[7716.22,8102.3,0],"RECTANGLE",[7218.04,6758.17],0]
		];
		_mkz_blacklist = [
			[[4614.45,10260.4,0],"RECTANGLE",[633.794,1211.86],150.375],
			[[6799.08,2531.72,0],"ELLIPSE",[707.555,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12644.3,9689.44,0],"ELLIPSE",[603.783,1288.93],229.419],
			[[9453.44,13642.2,0],"ELLIPSE",[165.888,239.469],265.846],
			[[8690.57,2794.55,0],"ELLIPSE",[221.924,348.754],165.512],
			[[2718.37,5294.47,0],"ELLIPSE",[545.108,320.627],286.728]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
		_spawnpos = [13708.8,2869.94,0];
	};

	//chernarus 2020
	case "cup_chernarus_a3" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[7716.22,8102.3,0],"RECTANGLE",[7218.04,6758.17],0]
		];
		_mkz_blacklist = [
			[[4614.45,10260.4,0],"RECTANGLE",[633.794,1211.86],150.375],
			[[6799.08,2531.72,0],"ELLIPSE",[707.555,845.495],236.558],
			[[10499.9,2167.82,0],"ELLIPSE",[678.508,845.495],236.558],
			[[13625.5,2988.8,0],"ELLIPSE",[678.508,845.495],290.491],
			[[12644.3,9689.44,0],"ELLIPSE",[603.783,1288.93],229.419],
			[[8116.03,12863.3,0],"ELLIPSE",[759.182,1202.9],247.286],
			[[8690.57,2794.55,0],"ELLIPSE",[221.924,348.754],165.512],
			[[2718.37,5294.47,0],"ELLIPSE",[545.108,320.627],286.728],
			[[4081.61,11691.5,0],"ELLIPSE",[359.251,396.318],265.846],
			[[11476.7,14379.4,0],"ELLIPSE",[818.679,1308.67],120.579],
			[[13974.6,13251.8,0],"ELLIPSE",[759.182,708.272],247.286],
			[[11659.5,12464.9,0],"ELLIPSE",[538.268,1084.96],263.735],
			[[3362.58,12797,0],"ELLIPSE",[564.826,1202.9],247.286],
			[[1263.67,14433.3,0],"ELLIPSE",[611.733,1202.9],147.939]
		];
		"Mark_Inser" setMarkerPos [4648.93,10264,0];
		_spawnpos = [13673.2,2971.31,0];
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
			[[9133.94,7308.84,0],"ELLIPSE",[392.1,478.867],138.621],
			[[1575.13,6022.47,0],"ELLIPSE",[281.239,260.438],87.1828],
			[[4592.88,2246.1,0],"RECTANGLE",[762.378,336.837],0],
			[[3432.59,2598.35,0],"RECTANGLE",[651.303,282.102],0],
			[[3528.89,3106.83,0],"RECTANGLE",[234.41,265.471],270.374],
			[[4383.11,6628.92,0],"ELLIPSE",[568.205,567.448],104.261],
			[[6225.96,6285.88,0],"RECTANGLE",[920.577,453.755],0],
			[[5039.54,5148.34,0],"RECTANGLE",[279.272,174.987],0],
			[[8811.74,6361.03,0],"ELLIPSE",[441.454,278.095],221.262],
			[[5588.2,7652.53,0],"ELLIPSE",[150,150],0],
			[[5870.11,4743.62,0],"ELLIPSE",[184.211,229.611],87.1828]
		];
		"Mark_Inser" setMarkerPos [5949.44,6190.24,0];
		_spawnpos = [4313.08,6510.6,0];
	};


	//Lingor
	case "lingor3" : {

		CPC_WorldType = "jungle";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[6565.1,5793.22,0],"RECTANGLE",[990.569,1916.55],0],
			[[9009.89,5886.17,0],"ELLIPSE",[395.229,506.709],0],
			[[8099.52,6735.81,0],"ELLIPSE",[240.898,326.706],122.125],
			[[7541.95,8289.34,0],"ELLIPSE",[141.045,172.072],53.5809],
			[[2291.93,6277.57,0],"ELLIPSE",[297.317,310.885],0],
			[[9914.73,273.514,0],"ELLIPSE",[395.229,411.391],0],
			[[3970.93,1451,0],"RECTANGLE",[767.76,673.934],0],
			[[1847.16,4550.88,0],"ELLIPSE",[357.489,345.785],0],
			[[627.526,9977.67,0],"ELLIPSE",[297.317,310.885],0],
			[[184.904,9296.26,0],"ELLIPSE",[236.804,310.885],42.5533],
			[[2915.62,6920.68,0],"RECTANGLE",[386.69,473.014],0],
			[[686.356,5658.4,0],"RECTANGLE",[674.529,1220.33],0],
			[[4246.05,5312.41,0],"RECTANGLE",[1371.97,1256.13],0]
		];
		"Mark_Inser" setMarkerPos [6754.69,6935.87,0];
		_spawnpos = [9923.75,208.365,0]
	};

	//Dingor
	case "dingor" : {

		CPC_WorldType = "afrique";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			
		];
		_mkz_blacklist = [
			[[6565.1,5793.22,0],"RECTANGLE",[990.569,1916.55],0],
			[[9009.89,5886.17,0],"ELLIPSE",[395.229,506.709],0],
			[[8099.52,6735.81,0],"ELLIPSE",[240.898,326.706],122.125],
			[[7541.95,8289.34,0],"ELLIPSE",[141.045,172.072],53.5808],
			[[2106.82,6270.62,0],"ELLIPSE",[342.369,173.227],232.997],
			[[924.448,9273.56,0],"ELLIPSE",[395.229,411.391],0],
			[[3970.93,1451,0],"RECTANGLE",[767.76,673.934],0],
			[[1810.67,4589.6,0],"ELLIPSE",[393.565,384.893],359.391],
			[[2915.62,6920.68,0],"RECTANGLE",[386.69,473.014],0],
			[[4246.05,5312.41,0],"RECTANGLE",[1371.97,1256.13],0]
		];
		"Mark_Inser" setMarkerPos [6832.08,6908.56,0];
		_spawnpos = [935.23,9209.41,0];
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
			[[17413.8,18627.9,0],"ELLIPSE",[921.998,1366.83],154.063],
			[[17497.6,3969.93,0],"ELLIPSE",[1820.96,1820.96],0],
			[[9473.36,3484.78,0],"ELLIPSE",[526.71,377.138],0],
			[[2500.46,2609.75,0],"ELLIPSE",[1465.75,1465.75],0],
			[[1927.55,17976.6,0],"ELLIPSE",[900,1358.34],210.681],
			[[9813.94,10031.9,0],"RECTANGLE",[885.139,412.09],0],
			[[10530.6,9349.49,0],"ELLIPSE",[529.049,529.049],0],
			[[17771.9,12392,0],"RECTANGLE",[125.886,125.886],0],
			[[18964.6,14119.8,0],"ELLIPSE",[904.124,434.116],221.148],
			[[12979.8,17371.7,0],"ELLIPSE",[842.051,1172.51],305.598],
			[[8167.1,17003.1,0],"RECTANGLE",[125.886,125.886],206.341],
			[[11045.9,16816.5,0],"ELLIPSE",[474.938,329.637],174.805],
			[[13341.4,8945.04,0],"ELLIPSE",[587.632,393.227],150.714],
			[[12353.9,8482.43,0],"RECTANGLE",[76.7495,125.886],0],
			[[12364.9,7092.24,0],"ELLIPSE",[479.173,479.173],0],
			[[11574,6101.59,0],"ELLIPSE",[529.049,529.049],0],
			[[12457,10573.9,0],"ELLIPSE",[597.378,321.505],286.678],
			[[16983,10970.2,0],"ELLIPSE",[1090.04,312.81],199.799],
			[[18732.3,10723.8,0],"ELLIPSE",[1535.23,753.434],135.462],
			[[19362.3,12431.9,0],"ELLIPSE",[606.296,213.912],259.492],
			[[8851.5,14292.3,0],"ELLIPSE",[4182.47,1508.96],214.446],
			[[15720.8,11520.3,0],"ELLIPSE",[697.841,732.029],191.898],
			[[14756.2,15630.7,0],"ELLIPSE",[1628.28,2333.66],122.814],
			[[10795.7,7843.18,0],"ELLIPSE",[1295.82,552.801],317.342]
		];
		"Mark_Inser" setMarkerPos [2582.69,2710.45,0];
		_spawnpos = [9493.33,3448.66,0];
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
			[[7464.38,10733.8,0],"ELLIPSE",[788.509,387.813],194.53],
			[[13049.1,9630.18,0],"ELLIPSE",[148.374,147.731],0],
			[[10233.6,8868.53,0],"ELLIPSE",[159.743,159.743],0],
			[[11372.6,7920.76,0],"ELLIPSE",[91.3027,91.3027],0],
			[[14837.8,6414.02,0],"ELLIPSE",[462.606,456.595],131.568],
			[[14167.5,5564.69,0],"ELLIPSE",[492.849,815.506],132.725],
			[[7048.01,9114.1,0],"ELLIPSE",[733.34,1595.13],167.471],
			[[7199.89,11987.5,0],"ELLIPSE",[328.399,728.645],107.133],
			[[6723.94,11362.1,0],"ELLIPSE",[378.549,519.141],219.67],
			[[8054.12,6726.44,0],"ELLIPSE",[370.866,582.591],137.907],
			[[11370.8,5092.49,0],"ELLIPSE",[488.573,281.421],203.438],
			[[8627.93,4545.95,0],"ELLIPSE",[2414.86,1272.17],191.73],
			[[14625.6,9709.83,0],"ELLIPSE",[159.743,289.837],152.644],
			[[9071.7,15727.5,0],"ELLIPSE",[133.277,133.277],0],
			[[11871.1,10493.8,0],"ELLIPSE",[504.833,300.927],168.401],
			[[8612.88,7820.9,0],"ELLIPSE",[353.617,354.597],194.53],
			[[10796.8,6922.09,0],"ELLIPSE",[408.533,354.597],215.637]
		];
		"Mark_Inser" setMarkerPos [15880,6584.53,0];
		_spawnpos = [14046.6,5865.5,0];	
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
		_spawnpos = [381.451,7649.95,0];
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
		_spawnpos = [11786.9,1540.46,0];
	};

	//daryiah
	case "pja307" : {

		CPC_WorldType = "desert";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [

		];
		_mkz_blacklist = [
			[[17251.1,18444.8,0],"ELLIPSE",[308.144,426.621],137.561],
			[[17176.9,19702,0],"RECTANGLE",[1175.65,772.17],0],
			[[9463.67,12874.2,0],"ELLIPSE",[388.321,1261.15],119.012],
			[[16845.5,1212.75,0],"RECTANGLE",[521.152,911.745],179.973],
			[[11480.6,4790.74,0],"ELLIPSE",[442.646,443.135],117.055],
			[[11061.1,787.543,0],"RECTANGLE",[897.326,573.599],0],
			[[3449.45,10170.9,0],"RECTANGLE",[10427.3,3618.5],90],
			[[13526.3,20230.9,0],"RECTANGLE",[332.363,6559.02],90],
			[[20322,10092.3,0],"RECTANGLE",[10427.3,310.283],90],
			[[13512.9,35.2088,0],"RECTANGLE",[332.363,6533.49],90],
			[[9310.99,2767.35,0],"RECTANGLE",[1003.72,2583.1],0],
			[[7701.46,4708.35,0],"RECTANGLE",[915.847,697.781],0],
			[[7767.47,1014.32,0],"RECTANGLE",[915.847,697.781],0],
			[[18222.2,15323,0],"RECTANGLE",[1840.29,2186.91],0],
			[[19256.2,11526.1,0],"RECTANGLE",[786.99,1728.74],0],
			[[18852.4,9075.46,0],"RECTANGLE",[1173.97,753.691],0],
			[[19754.1,4354.75,0],"RECTANGLE",[282.131,3998.51],0],
			[[7698.15,11561.9,0],"RECTANGLE",[786.99,1728.74],0],
			[[8248.73,15327,0],"RECTANGLE",[1365.43,2186.91],0],
			[[19474.4,3707.26,0],"ELLIPSE",[566.138,825.59],0],
			[[11869.8,8830.69,0],"ELLIPSE",[500,500],0]
		];
		"Mark_Inser" setMarkerPos [5287.35,14565.9,0];
		_spawnpos = [302.839,422.334,0];
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
			[[1525.12,5196.8,0],"RECTANGLE",[852.247,408.569],90],
			[[282.114,8287.27,0],"ELLIPSE",[300,300],0],
			[[2615.01,12425.6,0],"ELLIPSE",[300,300],0],
			[[9593.33,12481.4,0],"RECTANGLE",[365.027,1070.63],90],
			[[7030.86,8023.12,0],"ELLIPSE",[229.256,229.256],0],
			[[8258.32,1560.11,0],"ELLIPSE",[1670.77,1118.02],33.6302],
			[[6275.91,10709,0],"ELLIPSE",[707.956,559.168],127.296],
			[[8528.03,7471.29,0],"ELLIPSE",[299.526,300.679],0]
		];
		"Mark_Inser" setMarkerPos [8917.49,12508.5,0];
		_spawnpos = [7630.57,1195.23,0];
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
		_spawnpos = [1128.99,11508.8,0];
	};

	//Kujari
	case "tem_kujari" : {

		CPC_WorldType = "afrique";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,29,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[8178.86,8046.74,0],"RECTANGLE",[7595.73,7617.96],0]
		];
		_mkz_blacklist = [
			[[11805,14823.9,0],"RECTANGLE",[1802.54,928.486],0]
		];
		"Mark_Inser" setMarkerPos [11974.1,15103.8,0];
		_spawnpos = [8013.77,28.4434,0];
	};

	// old PKL
		case "prei_khmaoch_luong" : {

		CPC_WorldType = "jungle";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,6,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[4115.72,4137.93,0],"RECTANGLE",[3543.66,3608.95],0]
		];
		_mkz_blacklist = [
			[[7042.53,2537.15,0],"RECTANGLE",[524.161,287.551],25.0685],
			[[5686.11,4167.89,0],"RECTANGLE",[429.416,187.525],0],
			[[6945.69,4880.06,0],"RECTANGLE",[361.753,362.503],0],
			[[6087.71,6710.18,0],"RECTANGLE",[346.388,239.755],0],
			[[955.082,1452.27,0],"RECTANGLE",[79.4979,77.4629],0]
		];
		"Mark_Inser" setMarkerPos [7379.08,757.978,0];
		_spawnpos = [7939,8405,0];
	};

	//VT7
	case "vt7" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[9000.46,8880.81,0],"RECTANGLE",[8500.53,8620.41],0]
		];
		_mkz_blacklist = [
			[[1061.23,2869.31,0],"ELLIPSE",[589.586,660.07],149.357],
			[[1636.45,808.883,0],"ELLIPSE",[282.637,473.092],149.357],
			[[4930.41,4298.58,0],"ELLIPSE",[523.065,1464.59],114.352],
			[[5858.7,3062.81,0],"ELLIPSE",[633.713,920.094],159.594],
			[[3013.73,4805.72,0],"ELLIPSE",[532.747,1083.24],255.944],
			[[3730.53,4252.04,0],"ELLIPSE",[282.637,473.092],114.605],
			[[7492.92,923.014,0],"ELLIPSE",[678.515,1028.84],119.458],
			[[8147.18,1796.81,0],"ELLIPSE",[349.156,859.322],117.824],
			[[12208.6,2388.96,0],"ELLIPSE",[1446.26,2042.52],91.1306],
			[[10357.7,2913.15,0],"ELLIPSE",[275.34,336.011],149.357],
			[[11492.4,3971.67,0],"ELLIPSE",[282.637,473.092],95.7626],
			[[15392.1,3424.28,0],"ELLIPSE",[364.893,783.004],61.08],
			[[17266.1,6109.8,0],"ELLIPSE",[333.503,624.779],124.651],
			[[15962.3,7405.2,0],"ELLIPSE",[566.341,780.363],136.992],
			[[17196.4,8251.6,0],"ELLIPSE",[282.637,473.092],149.357],
			[[16070.2,9037.76,0],"ELLIPSE",[282.637,301.436],236.409],
			[[15820.4,10172.2,0],"ELLIPSE",[269.455,295.317],149.357],
			[[15916.6,11747.4,0],"ELLIPSE",[282.637,473.092],215.417],
			[[17362.5,13313.4,0],"ELLIPSE",[433.39,842.873],137.274],
			[[14812.4,14368.1,0],"ELLIPSE",[898.94,948.964],181.548],
			[[15780.9,14884.1,0],"ELLIPSE",[282.637,473.092],250.201],
			[[15733.6,16521.1,0],"ELLIPSE",[610.595,1060.04],149.357],
			[[1204.57,7028.08,0],"ELLIPSE",[407.675,845.997],90.7202],
			[[11026.9,7402.47,0],"ELLIPSE",[251.06,351.446],149.357],
			[[9303.16,6770.33,0],"ELLIPSE",[143.866,353.632],169.475],
			[[6780.87,3592.73,0],"ELLIPSE",[195.005,294.501],149.357],
			[[3693.42,1962.36,0],"ELLIPSE",[282.637,1192.46],180.202]
		];
		"Mark_Inser" setMarkerPos [13465.9,1694.1,0];
		_spawnpos = [6025.9,2718.57,0];
	};

	//Anizay
	case "tem_anizay" : {

		CPC_WorldType = "desert";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[5099.85,5100.2,0],"RECTANGLE",[4600.22,4600.51],0]
		];
		_mkz_blacklist = [
			[[8949.06,7011.4,0],"RECTANGLE",[1062.86,1176.15],0],
			[[1526.23,8657.6,0],"ELLIPSE",[209.252,270.074],86.4471]
		];
		"Mark_Inser" setMarkerPos [8420.35,7037.96,0];
		_spawnpos = [10201.9,135.098,0];
	};

	//Rosche
	case "wl_rosche" : {

		CPC_WorldType = "chern";
		publicVariable "CPC_WorldType";
		CPC_FullMoon = [2016,3,30,0,0];
		publicVariable "CPC_FullMoon";
		_mkz_whitelist = [
			[[7700.47,7686.61,0],"RECTANGLE",[7100.47,7089.48],0]
		];
		_mkz_blacklist = [
			[[448.13,3309.8,0],"RECTANGLE",[4129.62,1433.57],252.599]
		];
		"Mark_Inser" setMarkerPos [760.565,4669.13,0];
		_spawnpos = [15313.6,14936.7,0];
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

//marker de spawn
_mk = createMarker ["mkr_spawn_static_unit",_spawnpos];
_mk setMarkerShape "ICON";
_mk setMarkerType "mil_end";
_mk setMarkerAlpha 0;

//Cacher les marqueurs de zone
if (isMultiplayer) then {
	for "_x" from 1 to 100 do
	{
		format ["%1",_x] setMarkerAlpha 0;
	};
};

cc_MarkersCreated = true;
publicVariable "cc_MarkersCreated";

/*
Visualiser les positions possibles de CC :

for "_i" from 1 to 6000 do {
	_pos = [nil,(["water"] + cc_mkz_blacklist),{(count (nearestLocations [_this, ["NameCity","NameVillage","NameCityCapital","NameLocal"],400]) < 1)}] call BIS_fnc_randomPos;
	_mk = createMarker [(format ["mk%1",_pos]),_pos];
	_mk setMarkerShape "ICON";
	_mk setmarkertype "hd_dot";
};


for "_i" from 1 to 6000 do {
	_pos = [cc_mkz_whitelist,(["water"] + cc_mkz_blacklist),{(count (nearestLocations [_this, ["NameCity","NameVillage","NameCityCapital","NameLocal"],400]) < 1)}] call BIS_fnc_randomPos;
	_mk = createMarker [(format ["mk%1",_pos]),_pos];
	_mk setMarkerShape "ICON";
	_mk setmarkertype "hd_dot";
};


*/