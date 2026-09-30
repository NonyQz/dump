local rich_man_config = 
{
        chess_layout_id = 1,			--本次活动采用哪种棋盘布局，填game_config的id
        chess_campaign_id = 4163,		--对应的活动id
        random_rate = { 0.2, 0.18, 0.17, 0.16, 0.15, 0.14 },		--随机到1-6点的几率
        random_time = 1.5,		--随机的时间，单位是秒（只有客户端有）

        rand_dice_use_limit_id = 4055,		--随机色子的每日使用次数，写公共使用限制id
        rand_dice_cost_type = 1,			--随机色子使用的消耗类型，1=道具，2=绑钻，3=绑银，4=非绑钻
        rand_dice_cost_item_id = 12204,		--消耗8664道具
        rand_dice_cost_item_num = 1,		--消耗8664道具的数量
        rand_dice_cost_diamond = 88,		--消耗钻石的数量
        rand_dice_cost_money = 88000,		--消耗绑银的数量

        normal_dice_use_limit_id = 4055,	--随机色子的每日使用次数，写公共使用限制id
        normal_dice_cost_type = 1,			--随机色子使用的消耗类型，1=道具，2=绑钻，3=绑银，4=非绑钻
        normal_dice_cost_item_id = 12203,	--消耗8664道具
        normal_dice_cost_item_num = 1,		--消耗8664道具的数量
        normal_dice_cost_diamond = 88,		--消耗钻石的数量
        normal_dice_cost_money = 100,		--消耗绑银的数量
        
        --游戏里色子的消耗是三选一的，策划填好对应的消耗类型和具体消耗即可，其他的不要删除。
}

local award_config = {}

------------------------------------奖励配置------------------------------------




----------------------------------------------------------------------
award_config[1] = { dice_add = 1, }		--增加随机色子次数  此奖励无效！以后不要配置！
----------------------------------------------------------------------




award_config[9] = { award = { 4273 }, }		--第1关通关奖	2级铭文*1		id是通用奖励模板

award_config[10] = { award = { 4274 }, }	--第2关通关奖	东周紫卡*1

award_config[11] = { award = { 4275 }, }	--第3关通关奖	3级铭文*1

award_config[12] = { award = { 4276 }, }	--第4关通关奖	地术残卷*5

award_config[13] = { award = { 4277 }, }	--第5关通关奖	夜明珠*30

award_config[14] = { award = { 4278 }, }	--第6关通关奖	5级宝石*1

award_config[15] = { award = { 4279 }, }	--第7关通关奖	3级保底符*3

award_config[16] = { award = { 4280 }, }	--第8关通关奖	通灵神册*10

award_config[17] = { award = { 4281 }, }	--第9关通关奖	花好月圆称号*1

--------------------------------------------------------------------------------

award_config[18] = { award = { 4282 }, }	--奖励道具	1级宠物经验丹*10	id是通用奖励模板

award_config[19] = { award = { 4283 }, }	--奖励道具	灵羽*10

award_config[20] = { award = { 4284 }, }	--奖励道具	天心钥*1

award_config[21] = { award = { 4285 }, }	--奖励道具	洗髓丹*5

award_config[22] = { award = { 4286 }, }	--奖励道具	合芯锁*5

award_config[23] = { award = { 4287 }, }	--奖励道具	1级宠物经验丹*10

award_config[24] = { award = { 4288 }, }	--奖励道具	100两银票*1

award_config[25] = { award = { 4289 }, }	--奖励道具	天心钥*1

award_config[26] = { award = { 4290 }, }	--奖励道具	黄酒*1

award_config[27] = { award = { 4291 }, }	--奖励道具	黄令*1

award_config[28] = { award = { 4292 }, }	--奖励道具	2级保底符*1

award_config[29] = { award = { 4293 }, }	--奖励道具	英雄卡包·三国*1

award_config[30] = { award = { 4294 }, }	--奖励道具	天心钥*1

award_config[31] = { award = { 4295 }, }	--奖励道具	马草*10

award_config[32] = { award = { 4296 }, }	--奖励道具	千里传音*1

award_config[33] = { award = { 4297 }, }	--奖励道具	100绑定钻石*1

award_config[34] = { award = { 4298 }, }	--奖励道具	汜水关通牒*1

award_config[35] = { award = { 4299 }, }	--奖励道具	绿酒*1

award_config[36] = { award = { 4300 }, }	--奖励道具	紫果*5

award_config[37] = { award = { 4301 }, }	--奖励道具	中级锁定符*1

award_config[38] = { award = { 4302 }, }	--奖励道具	绿令*1

award_config[39] = { award = { 4303 }, }	--奖励道具	合芯锁*5

award_config[40] = { award = { 4304 }, }	--奖励道具	小妖魂魄*1

award_config[41] = { award = { 4305 }, }	--奖励道具	4级皮料*10

award_config[42] = { award = { 4306 }, }	--奖励道具	地术残卷*1

award_config[43] = { award = { 4307 }, }	--奖励道具	绿贴*1

award_config[44] = { award = { 4308 }, }	--奖励道具	3级红宝石*1

award_config[45] = { award = { 4309 }, }	--奖励道具	4级原石*10

award_config[46] = { award = { 4310 }, }	--奖励道具	上古兵策*1

award_config[47] = { award = { 4311 }, }	--奖励道具	春秋遗物*1

award_config[48] = { award = { 4312 }, }	--奖励道具	4级红宝石*1

award_config[49] = { award = { 4313 }, }	--奖励道具	精华囊·人*10

award_config[50] = { award = { 4314 }, }	--奖励道具	200绑定钻石*1

award_config[51] = { award = { 4315 }, }	--奖励道具	灵妖魂魄*5

award_config[52] = { award = { 4316 }, }	--奖励道具	三国卡包 无双*1

award_config[53] = { award = { 4317 }, }	--奖励道具	300绑定钻石*1

award_config[54] = { award = { 4318 }, }	--奖励道具	地术残页*1

award_config[55] = { award = { 4319 }, }	--奖励道具	龙符*200	2980

award_config[56] = { award = { 4320 }, }	--奖励道具	时装碎片*5

award_config[57] = { award = { 4321 }, }	--奖励道具	天心钥*1

award_config[58] = { award = { 4322 }, }	--奖励道具	夜明珠*1

award_config[59] = { award = { 4323 }, }	--奖励道具	虎符*200	

award_config[60] = { award = { 4324 }, }	--奖励道具	千媚莲灯碎片*1  3109

award_config[61] = { award = { 4325 }, }	--奖励道具	时装碎片*1

award_config[62] = { award = { 4326 }, }	--奖励道具	5级红宝石*1

award_config[63] = { award = { 4327 }, }	--奖励道具	灵妖魂魄*1

award_config[64] = { award = { 4328 }, }	--奖励道具	上古兵卷*1

award_config[65] = { award = { 4329 }, }	--奖励道具	3级铭文*1

------------------------------------格子配置------------------------------------

local cell_config = {}

cell_config[1] 	= 	--增加随机色子次数
{
	pathid 	= 3154,	--资源路径
	award 	= 		--触发奖励
	{
		combo 	= {1},			--组合奖励
		-- random	= {1,2,3},	--随机奖励
	},
}

cell_config[2] 	= 	--前进1步
{
	pathid 	= 3158,
	award 	=
	{
		combo 	= {2},
		-- random	= {1,2,3},
	},
}

cell_config[3] 	= 	--前进2步
{
	pathid 	= 3159,
	award 	=
	{
		combo 	= {3},
		-- random	= {1,2,3},
	},
}

cell_config[4] 	= 	--前进3步
{
	pathid 	= 3160,
	award 	=
	{
		combo 	= {4},
		-- random	= {1,2,3},
	},
}

cell_config[5] 	= 	--后退1步
{
	pathid 	= 3155,
	award 	=
	{
		combo 	= {5},
		-- random	= {1,2,3},
	},
}

cell_config[6] 	= 	--后退2步
{
	pathid 	= 3156,
	award 	=	
	{
		combo 	= {6},
		-- random	= {1,2,3},
	},
}

cell_config[7] 	= 	--后退3步
{
	pathid 	= 3157,
	award 	=
	{
		combo 	= {7},
		-- random	= {1,2,3},
	},
}

cell_config[8] 	= 	--没有任何事件
{
	-- pathid 	= 3157,
	award 	=
	{
		combo 	= {8},
		-- random	= {1,2,3},
	},
}

--------------------------------------------------------------------------------

--pathid优先读配置，配置没有的话读通用奖励模板里第一个奖励的图标。
--一般道具奖励为随机的时候才需要配置pathid

cell_config[9] 	= 	--第1关通关奖	2级铭文*1
{
	-- pathid 	= 257,
	award 	=
	{
		combo 	= {9},
		-- random	= {1,2,3},
	},
}

cell_config[10] 	= 	--第2关通关奖	东周紫卡*1
{
	-- pathid 	= 1170,
	award 	=
	{
		combo 	= {10},
		-- random	= {1,2,3},
	},
}

cell_config[11] 	= 	--第3关通关奖	3级铭文*1
{
	-- pathid 	= 258,
	award 	=
	{
		combo 	= {11},
		-- random	= {1,2,3},
	},
}

cell_config[12] 	= 	--第4关通关奖	地术残卷*5
{
	-- pathid 	= 2229,
	award 	=
	{
		combo 	= {12},
		-- random	= {1,2,3},
	},
}

cell_config[13] 	= 	--第5关通关奖	夜明珠*30
{
	-- pathid 	= 2074,
	award 	=
	{
		combo 	= {12},
		-- random	= {1,2,3},
	},
}

cell_config[14] 	= 	--第6关通关奖	5级宝石*1
{
	-- pathid 	= 2484,
	award 	=
	{
		combo 	= {14},
		-- random	= {1,2,3},
	},
}

cell_config[15] 	= 	--第7关通关奖	3级保底符*3
{
	-- pathid 	= 1170,
	award 	=
	{
		combo 	= {15},
		-- random	= {1,2,3},
	},
}

cell_config[16] 	= 	--第8关通关奖	通灵神册*10
{
	-- pathid 	= 2230,
	award 	=
	{
		combo 	= {16},
		-- random	= {1,2,3},
	},
}

cell_config[17] 	= 	--第9关通关奖	花好月圆称号*1
{
	-- pathid 	= 1454,
	award 	=
	{
		combo 	= {17},
		-- random	= {1,2,3},
	},
}

--------------------------------------------------------------------------------

cell_config[18] 	= 	--奖励道具	1级宠物经验丹*10
{
	-- pathid 	= 1952,
	award 	=
	{
		combo 	= {18},
		-- random	= {1,2,3},
	},
}

cell_config[19] 	= 	--奖励道具	神羽*10
{
	-- pathid 	= 1450,
	award 	=
	{
		combo 	= {19},
		-- random	= {1,2,3},
	},
}

cell_config[20] 	= 	--奖励道具	天心钥*1
{
	-- pathid 	= 726,
	award 	=
	{
		combo 	= {20},
		-- random	= {1,2,3},
	},
}

cell_config[21] 	= 	--奖励道具	洗髓丹*5
{
	-- pathid 	= 2077,
	award 	=
	{
		combo 	= {21},
		-- random	= {1,2,3},
	},
}

cell_config[22] 	= 	--奖励道具	合芯锁*5
{
	-- pathid 	= 502,
	award 	=
	{
		combo 	= {22},
		-- random	= {1,2,3},
	},
}

cell_config[23] 	= 	--奖励道具	1级宠物经验丹*10
{
	-- pathid 	= 1453,
	award 	=
	{
		combo 	= {23},
		-- random	= {1,2,3},
	},
}

cell_config[24] 	= 	--奖励道具	100两银票*1
{
	-- pathid 	= 1195,
	award 	=
	{
		combo 	= {24},
		-- random	= {1,2,3},
	},
}

cell_config[25] 	= 	--奖励道具	天心钥*1
{
	-- pathid 	= 2340,
	award 	=
	{
		combo 	= {25},
		-- random	= {1,2,3},
	},
}

cell_config[26] 	= 	--奖励道具	黄酒*1
{
	-- pathid 	= 737,
	award 	=
	{
		combo 	= {26},
		-- random	= {1,2,3},
	},
}

cell_config[27] 	= 	--奖励道具	黄令*1
{
	-- pathid 	= 742,
	award 	=
	{
		combo 	= {27},
		-- random	= {1,2,3},
	},
}

cell_config[28] 	= 	--奖励道具	2级保底符*1
{
	-- pathid 	= 1164,
	award 	=
	{
		combo 	= {28},
		-- random	= {1,2,3},
	},
}

cell_config[29] 	= 	--奖励道具	英雄卡包·三国*1
{
	-- pathid 	= 1170,
	award 	=
	{
		combo 	= {29},
		-- random	= {1,2,3},
	},
}

cell_config[30] 	= 	--奖励道具	天心钥*1
{
	-- pathid 	= 727,
	award 	=
	{
		combo 	= {30},
		-- random	= {1,2,3},
	},
}

cell_config[31] 	= 	--奖励道具	马草*10
{
	-- pathid 	= 1565,
	award 	=
	{
		combo 	= {31},
		-- random	= {1,2,3},
	},
}

cell_config[32] 	= 	--奖励道具	千里传音*1
{
	-- pathid 	= 1625,
	award 	=
	{
		combo 	= {32},
		-- random	= {1,2,3},
	},
}

cell_config[33] 	= 	--奖励道具	100绑定钻石*1
{
	-- pathid 	= 276,
	award 	=
	{
		combo 	= {33},
		-- random	= {1,2,3},
	},
}

cell_config[34] 	= 	--奖励道具	汜水关通牒*1
{
	-- pathid 	= 1453,
	award 	=
	{
		combo 	= {34},
		-- random	= {1,2,3},
	},
}

cell_config[35] 	= 	--奖励道具	绿酒*1
{
	-- pathid 	= 738,
	award 	=
	{
		combo 	= {35},
		-- random	= {1,2,3},
	},
}

cell_config[36] 	= 	--奖励道具	紫果*5
{
	-- pathid 	= 618,
	award 	=
	{
		combo 	= {36},
		-- random	= {1,2,3},
	},
}

cell_config[37] 	= 	--奖励道具	中级锁定符*1
{
	-- pathid 	= 499,
	award 	=
	{
		combo 	= {37},
		-- random	= {1,2,3},
	},
}

cell_config[38] 	= 	--奖励道具	绿令*1
{
	-- pathid 	= 743,
	award 	=
	{
		combo 	= {38},
		-- random	= {1,2,3},
	},
}

cell_config[39] 	= 	--奖励道具	合芯锁*5
{
	-- pathid 	= 747,
	award 	=
	{
		combo 	= {39},
		-- random	= {1,2,3},
	},
}

cell_config[40] 	= 	--奖励道具	小妖魂魄*1
{
	-- pathid 	= 2341,
	award 	=
	{
		combo 	= {40},
		-- random	= {1,2,3},
	},
}

cell_config[41] 	= 	--奖励道具	4级皮料*10
{
	-- pathid 	= 726,
	award 	=
	{
		combo 	= {41},
		-- random	= {1,2,3},
	},
}

cell_config[42] 	= 	--奖励道具	地术残卷*1
{
	-- pathid 	= 2229,
	award 	=
	{
		combo 	= {42},
		-- random	= {1,2,3},
	},
}

cell_config[43] 	= 	--奖励道具	绿贴*1
{
	-- pathid 	= 1207,
	award 	=
	{
		combo 	= {43},
		-- random	= {1,2,3},
	},
}

cell_config[44] 	= 	--奖励道具	3级红宝石*1
{
	-- pathid 	= 256,
	award 	=
	{
		combo 	= {44},
		-- random	= {1,2,3},
	},
}

cell_config[45] 	= 	--奖励道具	4级原石*10
{
	-- pathid 	= 727,
	award 	=
	{
		combo 	= {45},
		-- random	= {1,2,3},
	},
}

cell_config[46] 	= 	--奖励道具	上古兵策*1
{
	-- pathid 	= 2336,
	award 	=
	{
		combo 	= {46},
		-- random	= {1,2,3},
	},
}

cell_config[47] 	= 	--奖励道具	春秋遗物*1
{
	-- pathid 	= 207,
	award 	=
	{
		combo 	= {47},
		-- random	= {1,2,3},
	},
}

cell_config[48] 	= 	--奖励道具	4级红宝石*1
{
	-- pathid 	= 257,
	award 	=
	{
		combo 	= {48},
		-- random	= {1,2,3},
	},
}

cell_config[49] 	= 	--奖励道具	精华囊·人*10
{
	-- pathid 	= 2074,
	award 	=
	{
		combo 	= {49},
		-- random	= {1,2,3},
	},
}

cell_config[50] 	= 	--奖励道具	200绑定钻石*1
{
	-- pathid 	= 276,
	award 	=
	{
		combo 	= {50},
		-- random	= {1,2,3},
	},
}

cell_config[51] 	= 	--奖励道具	灵妖魂魄*5
{
	-- pathid 	= 2342,
	award 	=
	{
		combo 	= {51},
		-- random	= {1,2,3},
	},
}

cell_config[52] 	= 	--奖励道具	紫卡*1
{
	-- pathid 	= 1170,
	award 	=
	{
		combo 	= {52},
		-- random	= {1,2,3},
	},
}

cell_config[53] 	= 	--奖励道具	300绑定钻石*1
{
	-- pathid 	= 276,
	award 	=
	{
		combo 	= {53},
		-- random	= {1,2,3},
	},
}

cell_config[54] 	= 	--奖励道具	地术残页*1
{
	-- pathid 	= 1452,
	award 	=
	{
		combo 	= {54},
		-- random	= {1,2,3},
	},
}

cell_config[55] 	= 	--奖励道具	龙符*200
{
	-- pathid 	= 3220,
	award 	=
	{
		combo 	= {55},
		-- random	= {1,2,3},
	},
}

cell_config[56] 	= 	--奖励道具	时装碎片*5
{
	-- pathid 	= 3168,
	award 	=
	{
		combo 	= {56},
		-- random	= {1,2,3},
	},
}

cell_config[57] 	= 	--奖励道具	天心钥*1
{
	-- pathid 	= 2349,
	award 	=
	{
		combo 	= {57},
		-- random	= {1,2,3},
	},
}

cell_config[58] 	= 	--奖励道具	夜明珠*1
{
	-- pathid 	= 2454,
	award 	=
	{
		combo 	= {58},
		-- random	= {1,2,3},
	},
}

cell_config[59] 	= 	--奖励道具	虎符*200
{
	-- pathid 	= 764,
	award 	=
	{
		combo 	= {59},
		-- random	= {1,2,3},
	},
}

cell_config[60] 	= 	--奖励道具	千媚莲灯碎片*1
{
	-- pathid 	= 3109,
	award 	=
	{
		combo 	= {60},
		-- random	= {1,2,3},
	},
}

cell_config[61] 	= 	--奖励道具	时装碎片*1
{
	-- pathid 	= 3168,
	award 	=
	{
		combo 	= {61},
		-- random	= {1,2,3},
	},
}

cell_config[62] 	= 	--奖励道具	5级红宝石*1
{
	-- pathid 	= 258,
	award 	=
	{
		combo 	= {62},
		-- random	= {1,2,3},
	},
}

cell_config[63] 	= 	--奖励道具	灵妖魂魄*1
{
	-- pathid 	= 2342,
	award 	=
	{
		combo 	= {63},
		-- random	= {1,2,3},
	},
}

cell_config[64] 	= 	--奖励道具	上古兵卷*1
{
	-- pathid 	= 2337,
	award 	=
	{
		combo 	= {64},
		-- random	= {1,2,3},
	},
}

cell_config[65] 	= 	--奖励道具	3级铭文*1
{
	-- pathid 	= 2565,
	award 	=
	{
		combo 	= {65},
		-- random	= {1,2,3},
	},
}

--棋盘布局1,起点为[0]且不在game_config中配置，是做在界面里的，终点需要配置

local game_config = {}

game_config[1] = 	
{
	[1] = { cell = {18} },
	[2] = { cell = {19} },
	[3] = { cell = {20} },
	[4] = { cell = {21} },
	[5] = { cell = {22} },
	[6] = { cell = {23} },
	[7] = { cell = {24} },
	[8] = { cell = {25} },
	[9] = { cell = {26} },
	[10] = { cell = {27} },
	[11] = { cell = {18} },
	[12] = { cell = {28} },
	[13] = { cell = {29}, passby = 9 },
	
	[14] = { cell = {30} },
	[15] = { cell = {31} },
	[16] = { cell = {2} },
	[17] = { cell = {21} },
	[18] = { cell = {32} },
	[19] = { cell = {33} },
	[20] = { cell = {34} },
	[21] = { cell = {3} },
	[22] = { cell = {22} },
	[23] = { cell = {35} },
	[24] = { cell = {18} },
	[25] = { cell = {36} },
	[26] = { cell = {21} },
	[27] = { cell = {37}, passby = 10 },
	
	[28] = { cell = {38} },
	[29] = { cell = {2} },
	[30] = { cell = {39} },
	[31] = { cell = {5} },
	[32] = { cell = {33} },
	[33] = { cell = {3} },
	[34] = { cell = {40} },
	[35] = { cell = {22} },
	[36] = { cell = {2} },
	[37] = { cell = {34} },
	[38] = { cell = {41} },
	[39] = { cell = {2} },
	[40] = { cell = {36} },
	[41] = { cell = {42}, passby = 11 },
	
	[42] = { cell = {43} },
	[43] = { cell = {5} },
	[44] = { cell = {44} },
	[45] = { cell = {21} },
	[46] = { cell = {5} },
	[47] = { cell = {45} },
	[48] = { cell = {46} },
	[49] = { cell = {6} },
	[50] = { cell = {39} },
	[51] = { cell = {29} },
	[52] = { cell = {46} },
	[53] = { cell = {2} },
	[54] = { cell = {47} },
	[55] = { cell = {48}, passby = 12 },
	
	[56] = { cell = {34} },
	[57] = { cell = {31} },
	[58] = { cell = {19} },
	[59] = { cell = {7} },
	[60] = { cell = {21} },
	[61] = { cell = {5} },
	[62] = { cell = {49} },
	[63] = { cell = {2} },
	[64] = { cell = {50} },
	[65] = { cell = {5} },
	[66] = { cell = {25} },
	[67] = { cell = {39} },
	[68] = { cell = {6} },
	[69] = { cell = {51}, passby = 13 },
	
	[70] = { cell = {2} },
	[71] = { cell = {41} },
	[72] = { cell = {48} },
	[73] = { cell = {6} },
	[74] = { cell = {35} },
	[75] = { cell = {5} },
	[76] = { cell = {52} },
	[77] = { cell = {46} },
	[78] = { cell = {5} },
	[79] = { cell = {2} },
	[80] = { cell = {31} },
	[81] = { cell = {28} },
	[82] = { cell = {6} },
	[83] = { cell = {6} },
	[84] = { cell = {40} },
	[85] = { cell = {53} },
	[86] = { cell = {5} },
	[87] = { cell = {2} },
	[88] = { cell = {54} },
	[89] = { cell = {5} },
	[90] = { cell = {55}, passby = 14 },
	
	[91] = { cell = {7} },
	[92] = { cell = {47} },
	[93] = { cell = {5} },
	[94] = { cell = {28} },
	[95] = { cell = {2} },
	[96] = { cell = {61} },
	[97] = { cell = {5} },
	[98] = { cell = {6} },
	[99] = { cell = {57} },
	[100] = { cell = {5} },
	[101] = { cell = {38} },
	[102] = { cell = {19} },
	[103] = { cell = {7} },
	[104] = { cell = {2} },
	[105] = { cell = {58} },
	[106] = { cell = {59} },
	[107] = { cell = {6} },
	[108] = { cell = {41} },
	[109] = { cell = {31} },
	[110] = { cell = {6} },
	[111] = { cell = {52}, passby = 15 },
	
	[112] = { cell = {23} },
	[113] = { cell = {3} },
	[114] = { cell = {6} },
	[115] = { cell = {21} },
	[116] = { cell = {2} },
	[117] = { cell = {45} },
	[118] = { cell = {18} },
	[119] = { cell = {5} },
	[120] = { cell = {7} },
	[121] = { cell = {49} },
	[122] = { cell = {2} },
	[123] = { cell = {39} },
	[124] = { cell = {7} },
	[125] = { cell = {2} },
	[126] = { cell = {56} },
	[127] = { cell = {19} },
	[128] = { cell = {5} },
	[129] = { cell = {58} },
	[130] = { cell = {37} },
	[131] = { cell = {5} },
	[132] = { cell = {62}, passby = 16 },
	
	[133] = { cell = {43} },
	[134] = { cell = {2} },
	[135] = { cell = {19} },
	[136] = { cell = {5} },
	[137] = { cell = {2} },
	[138] = { cell = {64} },
	[139] = { cell = {63} },
	[140] = { cell = {58} },
	[141] = { cell = {2} },
	[142] = { cell = {43} },
	[143] = { cell = {7} },
	[144] = { cell = {65}, passby = 17 },
	[145] = { cell = {8} },
}

return
{
	rich_man_config = rich_man_config,
	award_config = award_config,
	cell_config = cell_config,
	game_config = game_config,
}