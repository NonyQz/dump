--组队招募

local commun_Recruit = commun_Recruit or {}


commun_Recruit.recruitInfo = 
{
	[1] = 
	{
		tid = 0,    
		name = "全部活動", 
		levelId = {1,}, 
		minilevel = 0,
		activityid = 0,
	},

	[2] = 
	{
		tid = 1000, 
		name = "皇陵密室", --24,36,48,60,72,84,96
		levelId = {1, 8, 9, 10, 6, 16, 19, 25}, 
		battle = {0, 829, 962, 967, 968, 2135, 2136,6709,},--显示进入副本按钮
		minilevel = 24,
		activityid = 0, --配置的活动ID，如果是0，则不检测活动一直显示，如果不为0则检测活动是否开启
	},

	[3] = 
	{
		tid = 1001, 
		name = "皇陵偏殿", --25,35,45,55,65,75,85,95
		levelId = {1, 11, 12, 13, 14, 15, 17, 20,23 }, 
		battle = {0, 828, 958, 959, 960, 961, 2133, 2134,5972,},
		minilevel = 25,
		activityid = 0,
	},

	[4] = 
	{
		tid = 1002, 
		name = "皇陵寶庫", --30,40,50,60,70,75,80,85,90,95,100
		levelId = {1, 3, 4, 5, 6, 7, 17, 18, 20, 21, 23, 24}, 
		battle = {0, 830, 969, 970, 971, 972, 2137, 2138,4181,4182,5848,7087,},
		minilevel = 30,
		activityid = 0,
	},

	[5] = 
	{
		tid = 1003, 
		name = "對酒當歌", --35
		levelId = {1, 12, }, 
		wine = {id = 38,},--显示喝酒按钮
		minilevel = 35,
		activityid = 0,
	},

	[6] = 
	{
		tid = 1004, 
		name = "迷宮探寶", --30,40,50,60,70,80,90
		levelId = {1, 3, 4, 5, 6, 7, 18, 21,}, 
		adventure = {id = 840,},--显示寻宝按钮
		minilevel = 30,
		activityid = 0,
	},

	[7] = 
	{
		tid = 1005, 
		name = "叛軍精銳", --30,40,50,60,70
		levelId = {1, 3, 4, 5, 6, 7, }, 
		minilevel = 30,
		activityid = 0,
	},
	
	[8] = 
	{
		tid = 1006, 
		name = "鎖妖塔", --58
		levelId = {1, 22, }, 
		minilevel = 58,
		activityid = 0,
	},
	
	[9] = 
	{
		tid = 1007, 
		name = "神樹", --50
		levelId = {1, 5, }, 
		minilevel = 58,
		activityid = 0,
	},

	[10] = 
	{
		tid = 1008, 
		name = "潼關之圍", --50
		levelId = {1, 18, }, 
		battle = {0, 6785,},
		minilevel = 80,
		activityid = 6936,
	},

	[11] = 
	{
		tid = 1009, 
		name = "跨服演武", --50
		levelId = {1, 6, }, 
		battle = {0, 5323,},
		minilevel = 60,
		activityid = 6980,
	},
	[12] = 
	{
		tid = 1010,    --166
		name = "洪荒-饕餮", --60
		levelId = {1,  6, }, 
		task = {id =3685, },--显示前往任务按钮
		minilevel = 60,
		activityid = 3685,  --3685
	},
	[13] = 
	{
		tid = 1011,              --168
		name = "洪荒-地狼", --60   
		levelId = {1, 6,}, 
		task = {id = 3687,},--显示前往任务按钮
		minilevel = 60,
		activityid = 3687,  --3687
	},
	[14] = 
	{
		tid = 1012,              --167
		name = "洪荒-朱雀", --360
		levelId = {1, 6, }, 
		task = {id = 3686,},--显示前往任务按钮
		minilevel = 60,
		activityid = 3686,  --3687
	},
}

commun_Recruit.recruitLevels = 
{
	[1] = { level = 0, name = "全部等級", },
	[2] = { level = 20, name = "20級", },
	[3] = { level = 30, name = "30級", },
	[4] = { level = 40, name = "40級", },
	[5] = { level = 50, name = "50級", },
	[6] = { level = 60, name = "60級", },
	[7] = { level = 70, name = "70級", },
	[8] = { level = 24, name = "24級", },
	[9] = { level = 36, name = "36級", },
	[10] = { level = 48, name = "48級", },
	[11] = { level = 25, name = "25級", },
	[12] = { level = 35, name = "35級", },
	[13] = { level = 45, name = "45級", },
	[14] = { level = 55, name = "55級", },
	[15] = { level = 65, name = "65級", },
	[16] = { level = 72, name = "72級", },
	[17] = { level = 75, name = "75級", },
	[18] = { level = 80, name = "80級", },
	[19] = { level = 84, name = "84級", },
	[20] = { level = 85, name = "85級", },
	[21] = { level = 90, name = "90級", },
	[22] = { level = 58, name = "58級", },
	[23] = { level = 95, name = "95級", },
	[24] = { level = 100, name = "100級", },
	[25] = { level = 96, name = "96級", },

}
--新增出现在列表内的一级索引   recruitInfo 内的索引按照顺序显示
commun_Recruit.recruitIndexMap = 
{
	main = {1,2,3,4,5,6,7,8,9,},  --本服显示活动配置一级索引
	server_main = {1, 11,12,13,14,},   --跨服显示活动配置一级索引
	oneworld_server_main = {},
}
return commun_Recruit