local ArenaConfig = {}

local ARENA10V10 = 10


-- ArenaConfig.season = 2

ArenaConfig[ARENA10V10] = --10对应10v10 
{
	name = "第二賽季",
	describeStr = [[單人或組隊入場
不可使用回天丹
演武可獲得武勳
擊敗多則武勳高
擊潰敵軍獲勝]],
	beginTime = 
	{
		year = 2016,
		month = 4,
		day = 24,
		hour = 22,
		min = 30
	},

	endTime = 
	{
		year = 2016,
		month = 7,
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

	nextOpenTime = "週一 21:30 - 22:30",

	arenaName = "演武校場",

	imgPathID = "3796",

	arenaName2 = "單騎戰",

	StartRank = 600,

	SeverPVPReputationMoneyID = 26,  ----奖励声望 用于养成
	
	ActivityID = 0, --控制队伍人数活动ID
	MAXTEAMNUMBER = 10,  --活动控制的队伍人数个数限制
	NormalTeamNumber = 5, --活动关闭，一般队伍人数
	UIMAXTEAMCOUNT = 10,  --界面上的player个数
}



return ArenaConfig
