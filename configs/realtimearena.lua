local ArenaConfig = {}

local ARENA1V1 = 1
local ARENA3V3 = 2
local ARENA5V5 = 3

ArenaConfig.season = 3

ArenaConfig[ARENA1V1] = --1对应1v1 2对应3v3 3对应5v5
{
	name = "三十九賽季",
	describeStr = [[只可單人入場
戰鬥中不可使用回天丹
勝利後可獲得漢帝密令
每日最多迎敵15次
敗者積分不會低於1500]],
	beginTime = 
	{
		year = 2025,
		month = 7,
		day = 24,
		hour = 22,
		min = 30
	},

	endTime = 
	{
		year = 2025,
		month = 10,
		day = 20,
		hour = 22,
		min = 30
	},
	
	scoreLevel = --积分等级分为6等
	{
		0,
		1600,
		1700,
		1850,
		2000,
		2200,	  --这个是最高级
		99999999, --最大值 不会显示
	},

	imgName = 
	{
		"lv01",
		"lv02",
		"lv03",
		"lv04",
		"lv05",
		"lv06",
	},

	nextOpenTime = "週二 21:30 - 21:45",

	arenaName = "封禪台",

	imgPathID = "2539",

	arenaName2 = "單騎戰",
}

ArenaConfig[ARENA3V3] = 
{
	name = "三十九賽季",
	describeStr =[[可單人或組隊入場
戰鬥中不可使用回天丹
勝利後可獲得漢帝密令
每日最多迎敵15次
敗者積分不會低於1500]],
	beginTime = 
	{
		year = 2025,
		month = 7,
		day = 24,
		hour = 22,
		min = 30
	},

	endTime = 
	{
		year = 2025,
		month = 10,
		day = 20,
		hour = 22,
		min = 30
	},
	
	scoreLevel = 
	{
		0,
		1600,
		1700,
		1850,
		2000,
		2200,
		99999999,
	},

	imgName = 
	{
		"lv01",
		"lv02",
		"lv03",
		"lv04",
		"lv05",
		"lv06",
	},

	nextOpenTime = "週四 21:30 - 21:45",

	arenaName = "銅雀塔",

	imgPathID = "2540",

	arenaName2 = "三英戰",
}

ArenaConfig[ARENA5V5] = 
{
	name = "三十九賽季",
	describeStr = [[可單人或組隊入場
戰鬥中不可使用回天丹
勝利後可獲得漢帝密令
每日最多迎敵15次
敗者積分不會低於1500]],
	beginTime = 
	{
		year = 2025,
		month = 7,
		day = 24,
		hour = 22,
		min = 30
	},

	endTime = 
	{
		year = 2025,
		month = 10,
		day = 20,
		hour = 22,
		min = 30
	},
	
	scoreLevel = 
	{
		0,
		1600,
		1700,
		1850,
		2000,
		2200,
		99999999,
	},

	imgName = 
	{
		"lv01",
		"lv02",
		"lv03",
		"lv04",
		"lv05",
		"lv06",
	},

	nextOpenTime = "週五 21:30 - 21:45",

	arenaName = "白帝城",

	imgPathID = "2541",

	arenaName2 = "五虎戰",
}

return ArenaConfig
