
--组队副本相关
--金钱本和经验本也共用本配置文件

local mausoleum = mausoleum or {}

--副本id集合
mausoleum.InstIdMap = 
{
	--组队副本1
	[1] =
	{
		828,
 		958,
 		959,
 		960,
 		961,
 		2133,
 		2134,
 		5972,
	},

	--组队副本2
	[2] =
	{
		829,
 		962,
 		967,
 		968,
 		2135,
 		2136,
 		6709,
	},

	--组队副本3
	[3] =
	{
		830,
 		969,
 		970,
 		971,
 		972,
 		2137,
 		2138,
 		4181,
 		4182,
 		5848,
 		7087,
	},
	
	--金钱本
	[4] =
	{
		883,
 		963,
 		964,
 		2139,
	},
	
	--经验本
	[5] =
	{
		884,
 		965,
 		966,
 		2140,
	},
	
	--八阵图
	[6] =
	{
		2125,
 		2126,
 		2127,
 		2128,
 		2129,
 		2130,
 		2131,
 		2132,
 		3000,
 		3001,
 		3002,
 		3003,
 		3004,
 		3005,
 		3006,
 		3007,
 		5919,
	},
	
	--锁妖塔
		[7] =
	{
		2925,
	},
}

--为了在结算时区分金钱本和经验本
mausoleum.InstMoneys = 
{
	[883] = true,
	[963] = true,
	[964] = true,
	[2139] = true,
	
}

--副本信息：描述（100字）、奖励信息
mausoleum.InstInfo = 
{
 	[828] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408}, 
 	},
	[958] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,4218},
 	},
	[959] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,4219}, 
 	},
	[960] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,4220}, 
 	},
	[961] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,4221}, 
 	},
 	[2133] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,5689}, 
 	},
 	[2134] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,5690}, 
 	},
 	[5972] = 
 	{
		explain = "　　群雄們各自招兵買馬。家底並不殷實的英雄們為成就大事，打起了前朝皇陵中寶物的主意……等待他們的不僅僅是財寶。", 
		reward = {590,408,12614}, 
 	},

 	[829] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {2034,2035},
 	},
	[962] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {2034,2035,4051,4052},
 	},
	[967] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {4051,4052,4053,4054},
 	},
	[968] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {4053,4054,4055,4056},
 	},
 	[2135] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {4055,4056,4057,4058},
 	},
 	[2136] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {4057,4058,4055,4056},
	},
	[6709] = 
 	{
		explain = "　　滿地的金銀財寶讓摸金校尉們欣喜若狂，手舞足蹈的開啟了寶箱的同時也觸動了密室的機關！空前絕後的大危機！", 
		reward = {4057,4058,4055,4056},
	},

 	[830] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {2975,2976,2978,2977,11323,2979}, 
		reward = {4186,2979}, 
 	},
	[969] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {4197,4198,4199,4200,11324,4201},  
		reward = {4186,4201}, 
 	},
	[970] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {4202,4203,4204,4205,11325,4206},  
		reward = {4186,4206}, 
 	},
	[971] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {4207,4208,4209,4210,11326,4211}, 
		reward = {4186,4211},  
 	},
	[972] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {4212,4213,4214,4215,11327,4216},  
		reward = {4186,4216}, 
 	},
 	[2137] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {5695,5696,5698,5697,11328,5699},  
		reward = {4186,5699}, 
 	},
 	[2138] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {5700,5701,5703,5702,11329,5704}, 
		reward = {4186,5704},  
	},
	[4181] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {10257,10258,10259,10260,11330,10261},  
		reward = {4186,10261}, 
	},
	[4182] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {10262,10263,10264,10265,11331,10266},  
		reward = {4186,10266}, 
	},
	[5848] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {12686,12687,12688,12689,12690,12691},  
		reward = {4186,12691}, 
	},
	[7087] = 
 	{
		explain = "　　死守財寶的僵屍又開始新一輪的圍攻！要錢還是要命？對殺紅眼的摸金校尉們來說，或許沒的選擇。", 
		-- reward = {14200,14201,14202,14203,14204,14205},  
		reward = {4186,14205}, 
	},
 	
 	[883] = 
 	{
		explain = "　　一群山賊橫行多年，擄掠了無數財物。他們隱匿財物的隱秘所在就是傳說中的藏金窟。", 
		reward = {1228}, 
		reward_vip = {61}, 
 	},
 	
 	[963] = 
 	{
		explain = "　　一群山賊橫行多年，擄掠了無數財物。他們隱匿財物的隱秘所在就是傳說中的藏金窟。", 
		reward = {1229}, 
		reward_vip = {61}, 
 	},
 	
 	[964] = 
 	{
		explain = "　　一群山賊橫行多年，擄掠了無數財物。他們隱匿財物的隱秘所在就是傳說中的藏金窟。", 
		reward = {1230}, 
		reward_vip = {61}, 
 	},
 	
 	[2139] = 
 	{
		explain = "　　一群山賊橫行多年，擄掠了無數財物。他們隱匿財物的隱秘所在就是傳說中的藏金窟。", 
		reward = {2248}, 
		reward_vip = {61}, 
 	},
 	
 	[884] = 
 	{
		explain = "　　曹操率軍大舉來襲，長板橋頭兩軍相遇。若是不能阻止曹軍，你身後的一眾百姓必將遭遇大難。危難之際，何需多言，狹路相逢，勇者勝！", 
		reward = {1225}, 
		reward_vip = {60}, 
 	},
 	
 	[965] = 
 	{
		explain = "　　曹操率軍大舉來襲，長板橋頭兩軍相遇。若是不能阻止曹軍，你身後的一眾百姓必將遭遇大難。危難之際，何需多言，狹路相逢，勇者勝！", 
		reward = {1226}, 
		reward_vip = {60}, 
 	},
 	
 	[966] = 
 	{
		explain = "　　曹操率軍大舉來襲，長板橋頭兩軍相遇。若是不能阻止曹軍，你身後的一眾百姓必將遭遇大難。危難之際，何需多言，狹路相逢，勇者勝！", 
		reward = {1227}, 
		reward_vip = {60}, 
 	},
 	
 	[2140] = 
 	{
		explain = "　　曹操率軍大舉來襲，長板橋頭兩軍相遇。若是不能阻止曹軍，你身後的一眾百姓必將遭遇大難。危難之際，何需多言，狹路相逢，勇者勝！", 
		reward = {2246}, 
		reward_vip = {60}, 
 	},
 	
 	[2925] = 
 	{
		explain = "　　人間戰亂頻發，妖魔乘勢而起，六國合力鑄鎖妖塔一座，將世間妖魔盡數投入此地。\n　　邀齊志同道合者，可入塔降妖，內修自身，外除妖魔。", 
		reward = {7558,10200,7484,13099},
 	},

	[3011] = 
 	{
		explain = "　　戰火滾滾硝煙四起，群雄爭霸占城為侯。", 
		reward = {7604,7600},
 	},


}

--评分
mausoleum.score = 
{
	--#第几档 该档分数下限 该档分数上限 

	[828] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[958] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[959] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[960] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[961] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},

 	[829] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},

 	},
	[962] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[967] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[968] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},

 	[830] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
	},
	[969] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[970] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[971] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	[972] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	 [2133] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
    [2134] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[5972] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[7087] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[2135] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[2136] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[2137] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[2138] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[4181] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[4182] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[5848] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
 	[6709] = 
 	{
		{id = 1, minScore = 0, maxScore = 120, txtLv = "差"},
		{id = 2, minScore = 121, maxScore = 240, txtLv = "平"},
		{id = 3, minScore = 241, maxScore = 480, txtLv = "良"},
		{id = 4, minScore = 481, maxScore = 10000, txtLv = "優"},
 	},
	-- 坐骑炼星副本
	[5281] = 
 	{
		{id = 1, mintime = 301, maxtime = 1800, txtLv = "差"},
		{id = 2, mintime = 241, maxtime = 300, txtLv = "平"},
		{id = 3, mintime = 181, maxtime = 240, txtLv = "良"},
		{id = 4, mintime = 0, maxtime = 180, txtLv = "優"},
 	},
}



return mausoleum