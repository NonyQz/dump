
local item_show_cfg = {}

--物品id

item_show_cfg[11917] =	--哪个物品要用展示类tip   桃园隐士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11916,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[12876] =	--哪个物品要用展示类tip    疏狂暗香
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11886,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}


item_show_cfg[12875] =	--哪个物品要用展示类tip    玉羽青绸
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12874,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}


-- s require "GUI.ECPanelItemTipShow".ReloadConfigs()
-- 这个命令是刷新到最新的配置文件
item_show_cfg[11903] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist= true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.35, roatate = 0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3957,			--若是坐骑宠物则填模型id
}

-- s require "GUI.ECPanelItemTipShow".ReloadConfigs()
-- 这个命令是刷新到最新的配置文件
item_show_cfg[11940] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist= true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.35, roatate = 0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3974,			--若是坐骑宠物则填模型id
}

-- s require "GUI.ECPanelItemTipShow".ReloadConfigs()
-- 这个命令是刷新到最新的配置文件
item_show_cfg[12645] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				subpanel_back2 = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12644,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_back2 = true},
}

item_show_cfg[12621] =	--哪个物品要用展示类tip  龙争虎斗第三赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4135,			--若是坐骑宠物则填模型id
}

item_show_cfg[12676] =	--哪个物品要用展示类tip   龙争虎斗第三赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4034,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[12695] =	--哪个物品要用展示类tip   宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4207,			--若是坐骑宠物则填模型id
}
--神龙祭祀周年礼包展示 	

item_show_cfg[12717] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1, yoffset = -2.6, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13099,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}

item_show_cfg[12718] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1, yoffset = -2.6, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13099,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}

item_show_cfg[12719] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1, yoffset = -2.6, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13099,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}

item_show_cfg[12720] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1, yoffset = -2.6, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13099,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
--神龙祭祀周年礼包展示时装
item_show_cfg[12723] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12722,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[12721] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12721,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[12684] =	--哪个物品要用展示类tip  神龙祭祀 宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3923,			--若是坐骑宠物则填模型id
}

item_show_cfg[10538] =	--哪个物品要用展示类tip 神龙祭祀 坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = -25.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3260,			--若是坐骑宠物则填模型id
}

item_show_cfg[12624] =	--哪个物品要用展示类tip 赤影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4014,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}

item_show_cfg[12623] =	--哪个物品要用展示类tip 绝影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4137,			--若是坐骑宠物则填模型id
}

item_show_cfg[12708] =	--哪个物品要用展示类tip 暗麟
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_publictestword= true,
				panel_npcshop = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4208,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[13084] =	--哪个物品要用展示类tip   琳琅礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.5, roatate = -30, fov = 20, far = 8.75, xoffset = -0.37, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4209,			--若是坐骑宠物则填模型id
}
item_show_cfg[13107] =	--哪个物品要用展示类tip   金缕礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4315,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13123] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_auction = true,
			},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4314,			--若是坐骑宠物则填模型id
}
item_show_cfg[13139] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_auction = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4316,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[13101] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13101,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13095] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13101,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13106] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13101,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13265] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_auction= true,
				panel_goldshop= true,
			},
	view = {scale = 0.3, roatate = 40, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4353,			--若是坐骑宠物则填模型id
}
item_show_cfg[13426] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4359,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[13804] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				panel_ceremony = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13802,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13802] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				panel_ceremony = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13802,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13763] =	--哪个物品要用展示类tip 赤炎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = -40.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4490,			--若是坐骑宠物则填模型id
}
item_show_cfg[13736] =	--哪个物品要用展示类tip   金缕礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4469,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[13801] =	--哪个物品要用展示类tip   圣诞礼袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4441,			--若是坐骑宠物则填模型id
}
item_show_cfg[13929] =	--哪个物品要用展示类tip  龙争虎斗第四赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4545,			--若是坐骑宠物则填模型id
}

item_show_cfg[13932] =	--哪个物品要用展示类tip   龙争虎斗第四赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4578,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[14188] =	--哪个物品要用展示类tip   龙争虎斗第四赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4602,			--若是坐骑宠物则填模型id
}
item_show_cfg[14169] =	--哪个物品要用展示类tip   腊日礼袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = 40, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4491,			--若是坐骑宠物则填模型id
}
item_show_cfg[14213] =	--哪个物品要用展示类tip   新春福袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4497,			--若是坐骑宠物则填模型id
}
item_show_cfg[14339] =	--哪个物品要用展示类tip   游云宝匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4519,			--若是坐骑宠物则填模型id
}
item_show_cfg[14378] =	--哪个物品要用展示类tip   元宵礼袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4209,			--若是坐骑宠物则填模型id
}
item_show_cfg[13093] =	--蓝色华贵缝线  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13094] =	--棕色华贵缝线  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13735] =	--甜心恶魔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_npcshop = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4468,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[14429] =	--哪个物品要用展示类tip 玄武之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4521,			--若是坐骑宠物则填模型id
}
item_show_cfg[15083] =	--哪个物品要用展示类tip   金缕礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4648,			--若是坐骑宠物则填模型id
}


item_show_cfg[14974] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14975] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14976] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14977] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony =true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_auction = true,panel_ceremony = true},
}
item_show_cfg[14978] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14979] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14980] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14981] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14982] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14983] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14984] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14985] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14986] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14987] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14988] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14989] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14990] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14991] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14992] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[14993] =	--哪个物品要用展示类tip   战神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 14964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true, panel_auction = true},
}
item_show_cfg[15201] =	--哪个物品要用展示类tip   春晓礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.45, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 15205,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[15202] =	--哪个物品要用展示类tip   万愚魔匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.35, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4819,			--若是坐骑宠物则填模型id
}
item_show_cfg[15207] =	--绿色华贵缝线  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15204,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[13930] =	--紫宵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_goldshop = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4579,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[9477] =	--神兽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_auction = true,
				panel_npcshop = true,
			},
	view = {scale = 0.48, roatate = 20, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.0, zoffset = 8.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 2983,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[15219] =	--神兽巫师猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4823,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[15564] =	--哪个物品要用展示类tip  龙争虎斗第五赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 90, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5143,			--若是坐骑宠物则填模型id
}

item_show_cfg[15565] =	--哪个物品要用展示类tip   龙争虎斗第五赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5145,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[15571] =	--哪个物品要用展示类tip   龙争虎斗第五赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5144,			--若是坐骑宠物则填模型id
}

item_show_cfg[15572] =	--哪个物品要用展示类tip 白虎之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4520,			--若是坐骑宠物则填模型id
}
item_show_cfg[15582] =	--哪个物品要用展示类tip 水云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.5, roatate = 70, fov = 30, far = 10, xoffset = -0.7, yoffset = -0.8, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4814,			--若是坐骑宠物则填模型id
}
item_show_cfg[15116] =	--哪个物品要用展示类tip 水云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_luckyspin3= true,
				panel_npcshop= true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.5, roatate = 70, fov = 30, far = 10, xoffset = -0.7, yoffset = -0.8, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4814,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[15210] =	--哪个物品要用展示类tip  狸猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4870,			--若是坐骑宠物则填模型id
}
item_show_cfg[15599] =	--异域风情  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15598,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[15601] =	--哪个物品要用展示类tip  木牛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3401,			--若是坐骑宠物则填模型id
}
item_show_cfg[15736] =	--神兽丘比特
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4824,			--若是坐骑宠物则填模型id
}


item_show_cfg[15888] =	--哪个物品要用展示类tip  望舒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5151,			--若是坐骑宠物则填模型id
}

item_show_cfg[16203] =	--哪个物品要用展示类tip  星岚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_npcshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5429,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,},
}
item_show_cfg[15919] =	--碧海听涛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15919,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[15921] =	--碧海听涛  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15919,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[15901] =	--哪个物品要用展示类tip   神龙祭祀翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5225,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[15925] =	--哪个物品要用展示类tip   麒麟
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_achievement = true,
		},
	view = {scale = 0.3, roatate = 45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5235,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[16024] =	--哪个物品要用展示类tip 二哈
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 40.0, fov = 40, far = 8.75, xoffset = -1, yoffset = -0.75, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5274,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16049] =	--哪个物品要用展示类tip   蓝色缝线
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16038,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[16104] =	--哪个物品要用展示类tip  二毛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist= true,
				panel_goldshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5309,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14777] =	--哪个物品要用展示类tip  助威福袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3774,			--若是坐骑宠物则填模型id
}
item_show_cfg[14778] =	--哪个物品要用展示类tip  助威福袋·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3774,			--若是坐骑宠物则填模型id
}
item_show_cfg[15729] =	--哪个物品要用展示类tip   成就翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_achievement = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5172,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[15730] =	--哪个物品要用展示类tip   成就翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_achievement = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5173,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[15883] =	--哪个物品要用展示类tip  锦鲤
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_achievement = true,
				subpanel_rankinglist= true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.8, yoffset = -1.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5195,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[15884] =	--哪个物品要用展示类tip  龙牙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_achievement = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -1.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5196,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[16125] =	--神兽虎头小宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5379,			--若是坐骑宠物则填模型id
}
item_show_cfg[15902] =	--哪个物品要用展示类tip   冥魂黯羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5226,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[16129] =	--哪个物品要用展示类tip   晶浣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_goldshop = true,				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -1.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5382,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16160] =	--哪个物品要用展示类tip   无双
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16137,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16177] =	--哪个物品要用展示类tip   青花裁云
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16177,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,},
}
item_show_cfg[16179] =	--哪个物品要用展示类tip   青花裁云
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16177,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}

item_show_cfg[16205] =	--瑶池阆苑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16205,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}

item_show_cfg[6764] =	--冰离
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.3, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2144,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11918] =	--哪个物品要用展示类tip   凌空金羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3968,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[16204] =	--哪个物品要用展示类tip   翠海苍浪 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16204,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16223] =	--哪个物品要用展示类tip  缤纷礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_npcshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5429,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16227] =	--哪个物品要用展示类tip   京剧装 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16226,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[16242] =	--哪个物品要用展示类tip  超值礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5474,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12187] =	--哪个物品要用展示类tip  飞麒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4082,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16241] =	--哪个物品要用展示类tip   孔雀装  笑青吟翠	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16241,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11284] =	--哪个物品要用展示类tip   清凉夏日	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11284,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11743] =	--哪个物品要用展示类tip   紫寰昼颜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3894,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[11565] =	--哪个物品要用展示类tip   紫寰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3817,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16267] =	--哪个物品要用展示类tip   福星礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.5, roatate = -30, fov = 45, far = 8.75, xoffset = -0.67, yoffset = -0.35, zoffset = 5.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4287,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
---------------------------------------------------------龙纹金元商店坐骑---------------------------------------------------------

item_show_cfg[14882] =	--猛玛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -1, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4725,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}

item_show_cfg[14941] =	--阿宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4769,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[15607] =	--望舒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.6, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5151,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}

item_show_cfg[12112] =	--醉仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -1, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4033,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[11457] =	--金羚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true
		  	},
	view = {scale = 0.5, roatate = 60, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3774,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}

item_show_cfg[13694] =	--凌月 大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true
		  	},
	view = {scale = 0.3, roatate = 50, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4464,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}

item_show_cfg[11456] =	--沧羚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.5, roatate = 60, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3773,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}

item_show_cfg[11309] =	--夜袭
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3677,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true, panel_goldshop = true},
}
---------------------------------------------------------龙纹金元商店宠物---------------------------------------------------------

item_show_cfg[16126] =	--神兽虎头小宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5379,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

---------------------------------------------------------龙纹金元商店时装---------------------------------------------------------

item_show_cfg[15991] =	--金觥
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.85, roatate = 20, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 15988,	--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

---------------------------------------------------------地术商店坐骑---------------------------------------------------------

item_show_cfg[13697] =	--朱炎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 60, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3580,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[11509] =	--雪月
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 60, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3263,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[11564] =	--流霜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.45, roatate = 60, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.2, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3818,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[14382] =	--谣夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.33, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.2, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3974,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[14237] =	--年兽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.33, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2589,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[13786] =	--幻胧 神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3261,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[11696] =	--冰离
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.3, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2144,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[10387] =	--闪电
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3230,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[7676] =	--仙鹿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.4, roatate = 50, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2378,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[10536] =	--灵玄
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.4, roatate = 50, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3262,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[6537] =	--焰啸
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.3, roatate = 50, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2132,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[7041] =	--焰啸
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2223,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[14891] =	--灼云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin2 = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.35, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.3, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4732,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}

---------------------------------------------------------神册商店翅膀---------------------------------------------------------

item_show_cfg[6998] =	--八荒蛮灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.75, roatate = 20, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2220,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[7776] =	--绯红女王
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2450,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[8345] =	--万紫飞鸢
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2628,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[9936] =	--松涛如雷
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.8, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3055,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[11690] =	--童话天使
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.8, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3845,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[13090] =	--金缕羽织
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4315,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}

item_show_cfg[15236] =	--紫蝶幽梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
				panel_luckyspin2 = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4871,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[16221] =	--哪个物品要用展示类tip  龙争虎斗第六赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 90, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5451,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[16230] =	--哪个物品要用展示类tip   龙争虎斗第六赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5317,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[16236] =	--哪个物品要用展示类tip   龙争虎斗第六赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5475,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[16220] =	--哪个物品要用展示类tip 鎏光
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.35, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5434,			--若是坐骑宠物则填模型id
	bind = {panel_luckyspin3 = false,panel_goldshop=true},
}
item_show_cfg[16222] =	--金黯八音
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5452,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[11960] =	--素云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_luckycards = true,

		  	},
	view = {scale = 1, roatate = -25.0, fov = 50, far = 10, xoffset = -0.47, yoffset = 0.5, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16262,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_luckycards = true},
}
item_show_cfg[16271] =	--静水画意
{
	panels ={			--这个物品在哪些界面里显示展示类tip
	            panel_goldshop = true,
				subpanel_rankinglist = true,

		  	},
	view = {scale = 1, roatate = -25.0, fov = 50, far = 10, xoffset = -0.47, yoffset = 0.5, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16271,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[16274] =	--哪个物品要用展示类tip 蓝胖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 50.0, fov = 60, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5503,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[16244] =	--哪个物品要用展示类tip 胖哒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 50.0, fov = 60, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5500,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[16229] =	--哪个物品要用展示类tip  飞炎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop= true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5474,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop=true},
}
item_show_cfg[12972] =	--哪个物品要用展示类tip   金尾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.5, roatate = -30, fov = 45, far = 8.75, xoffset = -0.67, yoffset = -0.35, zoffset = 5.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4287,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[11795] =	--黄泉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.33, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3915,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true, panel_goldshop = true},
}
item_show_cfg[16293] =	--哪个物品要用展示类tip   金玉华彩 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16291,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[16275] =	--盈秋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin2 = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 50, fov = 60, far = 8.75, xoffset = -1.3, yoffset = -1, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5504,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[16243] =	--凝霜寒雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin2 = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5501,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[16301] =	--哪个物品要用展示类tip   墨夜芳华
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16299,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16299] =	--哪个物品要用展示类tip   墨夜芳华
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16299,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony = true},	
}
item_show_cfg[16316] =	--神兽海盗船长
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4836,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[16298] =	--哪个物品要用展示类tip   筋斗云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				panel_goldshop = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -1.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5513,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}

---------------------------------------------------------神册商店翅膀---------------------------------------------------------

item_show_cfg[16321] =	--哪个物品要用展示类tip   朱蛤
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -2.35, yoffset = -1.7, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5533,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[16370] =	--哪个物品要用展示类tip  芊芊
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5606,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[16372] =	--哪个物品要用展示类tip  芊芊
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5606,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12112] =	--醉仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -1, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4033,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16371] =	--哪个物品要用展示类tip   执事
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16371,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[7664] =	--哪个物品要用展示类tip   绿野仙踪
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 7664,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[10437] =	--哪个物品要用展示类tip   冰火之歌
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10437,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[14436] =	--火凤燎原
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4650,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[13427] =	--紫玉青鸾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4360,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},	
}
item_show_cfg[16515] =	--蓝蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
				panel_npcshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5618,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[16517] =	--寂风
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16517,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[16518] =	--哪个物品要用展示类tip   豆蔻年华
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16510,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[11960] =	--沉渊
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_luckycards = true,

		  	},
	view = {scale = 1, roatate = -25.0, fov = 50, far = 10, xoffset = -0.47, yoffset = 0.5, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16533,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_luckycards = true},
}
item_show_cfg[16514] =	--哪个物品要用展示类tip 苍御
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5617,			--若是坐骑宠物则填模型id
	bind = {panel_luckyspin3 = false,panel_goldshop = true},
}
item_show_cfg[16584] =	--哪个物品要用展示类tip   飞雪 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16584,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[16587] =	--哪个物品要用展示类tip   云墟(7天)
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16585,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16588] =	--哪个物品要用展示类tip   云墟
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16585,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[16165] =	--哪个物品要用展示类tip   无双（15天、绿）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16137,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16542] =	--碧蓝之夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_goldshop = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5674,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[16589] =	--哪个物品要用展示类tip   坐骑兑换券
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				-- panel_nationtransfer = true,
				panel_ceremony = true
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4497,			--若是坐骑宠物则填模型id
}
item_show_cfg[16592] =	--猎空
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3= true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5685,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[16636] =	--猎空
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5685,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16652] =	--白泽·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5716,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[16659] =	--白泽·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5715,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16661] =	--哪个物品要用展示类tip   紫寰仙踪 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16661,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[16654] =	--哪个物品要用展示类tip   海棠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = -2.35, yoffset = -3.7, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5717,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16322] =	--哪个物品要用展示类tip   归墟 大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = -2.35, yoffset = -3.7, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5534,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13265] =	--哪个物品要用展示类tip  骇翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.4, roatate = 45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4353,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13124] =	--擎天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4340,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16662] =	--哪个物品要用展示类tip   云栖晚枫
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16662,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[11265] =	--哪个物品要用展示类tip   童话王国
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11265,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[11569] =	--哪个物品要用展示类tip   斗牛
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11569,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[11423] =	--高卢英姿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3789,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[6999] =	--天外飞仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2226,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[16665] =	--哪个物品要用展示类tip  龙争虎斗第七赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 90, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5725,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[16683] =	--哪个物品要用展示类tip   龙争虎斗第七赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5726,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[16679] =	--哪个物品要用展示类tip   龙争虎斗第七赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 70, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5727,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[16521] =	--哪个物品要用展示类tip 绝仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.8, zoffset = 18.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5655,			--若是坐骑宠物则填模型id
	bind = {panel_luckyspin3 = false},
}
item_show_cfg[16682] =	--哪个物品要用展示类tip   风羽落尘
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16681,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[16714] =	--梅落繁枝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,
				panel_goldshop = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 16714,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rewardregister = true},
}
item_show_cfg[16735] =	--哪个物品要用展示类tip   七彩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_ceremony = true,
				panel_goldshop = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -1.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5824,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16666] =	--哪个物品要用展示类tip   灵枭幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5820,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[16870] =	--哪个物品要用展示类tip   清徽素锦(7天)
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16867,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16869] =	--哪个物品要用展示类tip   清徽素锦
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16867,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[16697] =	--曦凰幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				panel_goldshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5821,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[16696] =	--哪个物品要用展示类tip   诛仙阵图
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_achievement = true,
		},
	view = {scale = 1, roatate = 45, fov = 60, far = 30, xoffset = -1.2, yoffset = -2.6, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5819,			--若是坐骑宠物则填模型id
	bind = {panel_achievement = true},
}
item_show_cfg[16732] =	--哪个物品要用展示类tip   七彩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_ceremony = true,
				panel_npcshop = true,
				panel_goldshop = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -1.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5824,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[16876] =	--哪个物品要用展示类tip   白雪之礼 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16876,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[11384] =	--哪个物品要用展示类tip  焚空
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.4, roatate = 45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3682,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16877] =	--哪个物品要用展示类tip   紫曜魔道
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16877,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[10855] =	--哪个物品要用展示类tip   赤子之心
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10855,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[13780] =	--哪个物品要用展示类tip   金玉狐裘
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13780,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[7678] =	--火烈鸟
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2396,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[10549] =	--蝶舞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3063,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[16908] =	--哪个物品要用展示类tip   姿韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = -2.35, yoffset = -2.7, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5948,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16910] =	--哪个物品要用展示类tip   花翎寄羽
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16909,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[16928] =	--胧隐·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5952,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,},
}
item_show_cfg[16932] =	--胧隐·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5951,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16960] =	--诗华
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_luckyspin3= true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 5962,		--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[16963] =	--幻胧 神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3261,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16971] =	--哪个物品要用展示类tip   琼玉 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16971,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[16974] =	--哪个物品要用展示类tip   茗剑（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16972,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[16975] =	--哪个物品要用展示类tip   茗剑
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16972,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[16976] =	--破山·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_ceremony = true,
		  	},
	view = {scale = 1, roatate = 40, fov = 50, far = 8.75, xoffset = -0.8, yoffset = -0.5, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3856,		--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[16982] =	--哪个物品要用展示类tip   冥獒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 0.9, roatate = 40.0, fov = 40, far = 8.75, xoffset = -1.5, yoffset = -1, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6000,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[12709] =	--哪个物品要用展示类tip  炫光
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.5, roatate = -30, fov = 20, far = 8.75, xoffset = -0.37, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4209,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14433] =	--哪个物品要用展示类tip  蔷薇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4648,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16984] =	--哪个物品要用展示类tip   兰陵遗裔
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16984,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[12176] =	--哪个物品要用展示类tip   大方无隅
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12176,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[8375] =	--哪个物品要用展示类tip   白色恋人
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 8375,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[13931] =	--苍岚幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4580,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[11305] =	--童话王国
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3672,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[16948] =	--颜晖幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_goldshop = true,
				subpanel_rankinglist= true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5957,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},	
}
item_show_cfg[17017] =	--影闪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6001,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17029] =	--哪个物品要用展示类tip   银霜凤翎
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17028,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17041] =	--哪个物品要用展示类tip  0104助威福袋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6047,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17042] =	--哪个物品要用展示类tip  0104助威福袋·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6047,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17039] =	--哪个物品要用展示类tip  龙熔·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6065,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[17047] =	--哪个物品要用展示类tip   苍空露柔 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17047,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[17050] =	--哪个物品要用展示类tip   幽城绽夜（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17045,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[17048] =	--哪个物品要用展示类tip   幽城绽夜
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17045,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[17024] =	--时计幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6050,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[17010] =	--哪个物品要用展示类tip   圣天虎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 70, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5307,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
----------------------------------------------------------
item_show_cfg[17132] =	--哪个物品要用展示类tip  0118腊八礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.64, yoffset =-0.14, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12403,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[10537] =	--哪个物品要用展示类tip  0118雪月
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3263,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17118] =	--哪个物品要用展示类tip  0118古兰纱罗
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17118,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[7576] =	--哪个物品要用展示类tip  0118冬季恋歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 7576,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[7740] =	--哪个物品要用展示类tip  0118青冥剑气
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.5, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 2413,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[17117] =	--哪个物品要用展示类tip  龙争虎斗第八赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 90, fov = 50, far = 8.75, xoffset = -0.4, yoffset = -0.8, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6139,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[16946] =	--哪个物品要用展示类tip   龙争虎斗第八赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5955,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[17133] =	--哪个物品要用展示类tip   龙争虎斗第八赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 70, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6140,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[11424] =	--哪个物品要用展示类tip  0118高卢英姿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11424,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}

item_show_cfg[17176] =	--新年礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -1, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4725,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17113] =	--湮宸
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -1.4, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6136,		--若是坐骑宠物则填模型id
}
item_show_cfg[17199] =	--哪个物品要用展示类tip   锦绣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 0.9, roatate = 40.0, fov = 40, far = 8.75, xoffset = -1, yoffset = -1, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6153,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17115] =	--万仞幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6138,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[17196] =	--哪个物品要用展示类tip   锦瑟 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17196,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[14332] =	--狱焱之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.3, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4441,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[16635] =	--赤虹之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = -25.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3260,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[16992] =	--银风之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4079,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17226] =	--吉祥之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true
		  	},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4497,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[11930] =	--暗毁之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true
		  	},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 2680,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[17227] =	--新春礼盒-旺财
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6135,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17228] =	--酣春礼袋-寒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 30, xoffset = -0.2, yoffset =-0.4, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6201,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13075] =	--狮鹫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate = 40.0, fov = 60, far = 10, xoffset = -0.8, yoffset = -0.56, zoffset = 3.65},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 4296,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11231] =	--朱炎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.5, roatate = 40.0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.2, zoffset = 8},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 3580,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17215] =	--悦歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17215,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12114] =	--鸾凤和鸣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12114,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[9935] =	--嘉木繁荫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 9935,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[10570] =	--青霄苍鸾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3284,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[17224] =	--来福
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6200,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[17212] =	--西雅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_spring_hero1 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17212,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_spring_hero1 = true,panel_goldshop = true},
}
item_show_cfg[17217] =	--哪个物品要用展示类tip   罗袖（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17210,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[17216] =	--哪个物品要用展示类tip   罗袖
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17210,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[17220] =	--蚀镜幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_ceremony = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6202,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[17200] =	--哪个物品要用展示类tip   豚豚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6154,			--若是坐骑宠物则填模型id
	--bind = {subpanel_rankinglist = true},
}
item_show_cfg[17248] =	--元宵礼盒-龙威
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 30, xoffset = -0.2, yoffset =-0.4, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6214,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17249] =	--上元礼匣-鎏光
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.35, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5434,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17258] =	--哪个物品要用展示类tip   千里婵娟 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop=true,
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17258,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop=true},
}
item_show_cfg[16983] =	--影闪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6001,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[17114] =	--哪个物品要用展示类tip  岩琅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
	            panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6137,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[17225] =	--寒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 30, xoffset = -0.2, yoffset =-0.4, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6201,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[17243] =	--龙威
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 30, xoffset = -0.2, yoffset =-0.4, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6214,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[14228] =	--神兽鸡娃
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  },
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4605,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17289] =	--哪个物品要用展示类tip   浣花挽月
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17288,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17305] =	--跃影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6289,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17309] =	--哪个物品要用展示类tip   花间绫舞（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17306,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[17308] =	--哪个物品要用展示类tip   花间绫舞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17306,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},	
}
item_show_cfg[17290] =	--尘灵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_goldshop = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6287,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[10430] =	--哪个物品要用展示类tip  复活彩蛋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13978,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[10903] =	--哪个物品要用展示类tip  木牛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3401,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13762] =	--哪个物品要用展示类tip   圣甲
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = 40, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.3, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4491,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13736] =	--雷母羽袭
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4469,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[17322] =	--春晓
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17322,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14181] =	--古韵清秋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14181,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15204] =	--紫幕银沙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15204,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17332] =	--哪个物品要用展示类tip   钢牙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6294,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17291] =	--玄凝幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6288,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},	
}
item_show_cfg[17345] =	--哪个物品要用展示类tip   暗夜婚侣 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17345,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[17342] =	--狮纯
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6295,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[17357] =	--哪个物品要用展示类tip   青俊达人
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17346,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17340] =	--哪个物品要用展示类tip  龙争虎斗第九赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.3, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6341,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[17344] =	--哪个物品要用展示类tip   龙争虎斗第九赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6343,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[17371] =	--哪个物品要用展示类tip   龙争虎斗第九赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6330,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[17349] =	--哪个物品要用展示类tip   烈火如歌（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17348,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[17350] =	--哪个物品要用展示类tip   烈火如歌
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17348,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony = true},	
}
item_show_cfg[17343] =	--荆棘之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				panel_npcshop = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6338,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true,panel_ceremony = true},
}
item_show_cfg[17341] =	--哪个物品要用展示类tip   琳琅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6342,			--若是坐骑宠物则填模型id
}
item_show_cfg[17368] =	--游园惊梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 17368,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[17378] =	--哪个物品要用展示类tip  熊二
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 40, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6420,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[17370] =	--宸修邑林  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17370,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[17383] =	--光荣礼匣-熊大
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 30, fov = 40, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 8.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6419,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11594] =	--哪个物品要用展示类tip  破山·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 40, fov = 50, far = 8.75, xoffset = -0.8, yoffset = -0.5, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3827,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13737] =	--倾心紫韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4470,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[11395] =	--直挂云帆
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3675,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[17369] =	--星际航源
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17369,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11527] =	--消愁
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11527,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12001] =	--流霞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12001,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17401] =	--哪个物品要用展示类tip   冷焰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6480,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17541] =	--哪个物品要用展示类tip   芳华 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17541,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[17544] =	--啸月
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6500,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17545] =	--哪个物品要用展示类tip  消夏礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4.5, zoffset = 7},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11400,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17547] =	--哪个物品要用展示类tip   青碧
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6483,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17569] =	--哪个物品要用展示类tip    逍遥礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.12, yoffset = -0.78, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12665,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[13660] =	--哪个物品要用展示类tip   狱焱
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 0.3, roatate = 0, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4441,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17566] =	--轻舞绫罗
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17566,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12922] =	--剑影花馨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12922,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17618] =	--墨殇年华
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6560,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[17616] =	--哪个物品要用展示类tip   妮娜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6557,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17617] =	--浅若清风
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6559,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[17628] =	--哪个物品要用展示类tip   玲珑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_luckyspin3 = true
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6558,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17629] =	--哪个物品要用展示类tip   飞鸾
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 17626,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17625] =	--哪个物品要用展示类tip   碧影竹韵 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop=true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17625,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop=true},
}
item_show_cfg[17262] =	--悍勇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.8, roatate = 90, fov = 60, far = 30, xoffset = -1.6, yoffset =-0.6, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6249,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17321] =	--奕星
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6329,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17538] =	--青碧
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6483,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17637] =	--哪个物品要用展示类tip   龙舟礼盒-石司
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6600,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17638] =	--哪个物品要用展示类tip   地蜡礼匣-噗噗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4819,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17636] =	--哪个物品要用展示类tip  石纪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜界面
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 40, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6601,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[17655] =	--哪个物品要用展示类tip   伴夏微凉（7天）
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip 神龙祭祀
			panel_ceremony = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17654,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[17654] =	--哪个物品要用展示类tip   伴夏微凉
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip 神龙祭祀
			panel_ceremony = true,
			panel_goldshop = true,
			panel_npcshop  = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17654,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop=true,panel_npcshop  = true},
}
item_show_cfg[17658] =	-- 暗夜之息
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_ceremony = true,
				panel_goldshop = true,
				panel_npcshop  = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 6643,			--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_npcshop  = true},
}
item_show_cfg[17657] =	--哪个物品要用展示类tip   魄
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_ceremony = true,
				
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6610,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[17660] =	--素锦漪帘
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 17660,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[17663] =	--哪个物品要用展示类tip   紫荆礼匣-宁韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6609,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14432] =	--哪个物品要用展示类tip 穿云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4647,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14435] =	--哪个物品要用展示类tip 苍翠云岚
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4649,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[14893] =	--哪个物品要用展示类tip 鎏金异域
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4734,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[17659] =	--哪个物品要用展示类tip 堇若苍岚
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17659,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11779] =	--哪个物品要用展示类tip 纹衮冕服
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11779,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11397] =	--哪个物品要用展示类tip 长风破浪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11397,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17676] =	--哪个物品要用展示类tip   寒戮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.8, roatate = 55, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.7, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6655,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17677] =	--墨影璃裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6688,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[17722] =	--哪个物品要用展示类tip   鸩影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6691,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17725] =	--哪个物品要用展示类tip 瑾年璃月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = -30, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.5, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17723,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17724] =	--哪个物品要用展示类tip   霓裳幽兰 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17724,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,},
}
item_show_cfg[17752] =	--哪个物品要用展示类tip 奇诺
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6692,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[17753] =	--哪个物品要用展示类tip 盈秋
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5504,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[17757] =	--哪个物品要用展示类tip  龙争虎斗第十赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.45, roatate = 60, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.2, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6716,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[17758] =	--哪个物品要用展示类tip   龙争虎斗第十赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6717,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}

item_show_cfg[17759] =	--哪个物品要用展示类tip   龙争虎斗第十赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6712,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[17762] =	--银霜落歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 17762,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[17766] =	--哪个物品要用展示类tip 天罡礼匣 - 尼禄
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7140,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[12622] =	--哪个物品要用展示类tip 应龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4136,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16229] =	--哪个物品要用展示类tip 飞炎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5474,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15237] =	--啼血幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 4872,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},	
}
item_show_cfg[17763] =	--哪个物品要用展示类tip   蜜羽浮沙 
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17763,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop= true,panel_goldshop = true},
}
item_show_cfg[16326] =	--哪个物品要用展示类tip   侍愿 
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16326,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop= true,panel_goldshop = true},
}
item_show_cfg[15598] =	--哪个物品要用展示类tip   异域风情 
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15598,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop= true},
}
item_show_cfg[17782] =	--哪个物品要用展示类tip   寂灭
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.5	, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7139,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17549] =	--哪个物品要用展示类tip   骥骜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_limitlottery = true
				--panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6521,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[17662] =	--哪个物品要用展示类tip   宁韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6609,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[16325] =	--蝠龙幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5590,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[16698] =	--梵灵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5822,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17023] =	--皓夜幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6049,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17221] =	--幻音幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6203,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[17789] =	--哪个物品要用展示类tip   烽阙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_goldshop = true,
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7150,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17790] =	--虹光绯影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 6718,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},	
}
item_show_cfg[17787] =	--哪个物品要用展示类tip   浣沙璃月 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17787,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[18172] =	--哪个物品要用展示类tip 七夕礼匣 - 故梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7158,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18173] =	--哪个物品要用展示类tip 兰夜礼盒 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.93, yoffset =-1, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10982,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18132] =	--哪个物品要用展示类tip 七夕排行榜 - 流年
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7159,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[18186] =	--哪个物品要用展示类tip 处暑礼匣 - 桑陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7157,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[13123] =	--哪个物品要用展示类tip 破天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.5, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4314,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[10539] =	--哪个物品要用展示类tip 幻胧·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1.1, roatate = 15, fov = 55, far = 10, xoffset = -1.5, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3261,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11565] =	--哪个物品要用展示类tip 百鸟朝凤
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 3817,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18185] =	--哪个物品要用展示类tip 辰畔幽夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18185,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12721] =	--哪个物品要用展示类tip 暗夜霜衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12721,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14345] =	--哪个物品要用展示类tip 绿荫春欣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14345,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18475] =	--哪个物品要用展示类tip 雀翎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop  = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7138,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop  = true},
}
item_show_cfg[18474] =	--哪个物品要用展示类tip   玄奕
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -1.5	, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7266,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[17792] =	--哪个物品要用展示类tip   禄力
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7144,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18487] =	--哪个物品要用展示类tip   渺尘茉黎
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18486,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[18490] =	--哪个物品要用展示类tip   黎卿落歌 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18490,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[18514] =	--哪个物品要用展示类tip  神龙祭祀 宠物 青龙宝宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.2, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6713,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_npcshop = true},
}
item_show_cfg[18489] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 陆离幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
				panel_npcshop  = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7319,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,panel_npcshop  = true},
}
item_show_cfg[18491] =	--哪个物品要用展示类tip  神龙祭祀 时装 司宸萧奕
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18491,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true,},
}
item_show_cfg[18494] =	--哪个物品要用展示类tip  神龙祭祀 时装 司宸萧奕（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18491,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[12189] =	--哪个物品要用展示类tip 月圆礼盒 - 戎昭·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7327,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[13141] =	--哪个物品要用展示类tip 商城大促 坐骑 星槎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4352,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18527] =	--哪个物品要用展示类tip 商城大促 时装 银瑟幻歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18527,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14220] =	--哪个物品要用展示类tip 商城大促 时装 盛世红颜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14220,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11778] =	--哪个物品要用展示类tip 商城大促 时装 华缕丝冠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11778,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18554] =	--哪个物品要用展示类tip   青辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.8, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7335,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[18556] =	--哪个物品要用展示类tip 国庆礼匣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.9, yoffset = -1.49, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13475,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18557] =	--哪个物品要用展示类tip 寒露礼盒 - 竹趣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = -45, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5308,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18567] =	--哪个物品要用展示类tip   鸿萌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7339,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18565] =	--哪个物品要用展示类tip 嗜血天使
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7388,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18564] =	--哪个物品要用展示类tip   瑾岚幽落 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18564,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[18575] =	--哪个物品要用展示类tip 晒秋礼匣 - 斐亚
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7392,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[13763] =	--哪个物品要用展示类tip 商城大促 坐骑 撼地
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4490,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16947] =	--哪个物品要用展示类tip 商城大促 翅膀 渃漓幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 5956,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18576] =	--哪个物品要用展示类tip 商城大促 时装 影羽翎墨
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18576,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14599] =	--哪个物品要用展示类tip 商城大促 时装 惊涛魅影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14599,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15522] =	--哪个物品要用展示类tip 商城大促 时装 扑克丑皇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15522,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18579] =	--哪个物品要用展示类tip  龙争虎斗第十一赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.4, roatate = 45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7396,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[18594] =	--哪个物品要用展示类tip   龙争虎斗第十一赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7398,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[18595] =	--哪个物品要用展示类tip   龙争虎斗第十一赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7397,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[18597] =	--哪个物品要用展示类tip 霜降礼匣 - 焱奕
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7403,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18598] =	--哪个物品要用展示类tip 秋暮礼盒 - 海棠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 75, far = 10, xoffset = -2.35, yoffset = -3.7, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5717,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18620] =	--哪个物品要用展示类tip   封禹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -1, yoffset = -3.5, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7408,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18625] =	--哪个物品要用展示类tip   圣瑾衍歌 商城
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18621,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[18635] =	--哪个物品要用展示类tip  神龙祭祀 坐骑 浩尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7412,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[18639] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 汵鸢幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7413,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[18637] =	--哪个物品要用展示类tip  神龙祭祀 时装 绯辞汨洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18637,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[18638] =	--哪个物品要用展示类tip  神龙祭祀 时装 绯辞汨洛（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18637,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[18640] =	--哪个物品要用展示类tip   紫韵璃纱 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18640,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[17755] =	--哪个物品要用展示类tip 大乔商店 - 奇诺
{
	panels ={			--这个物品在哪些界面里显示展示类tip 大乔商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6692,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[17765] =	--哪个物品要用展示类tip 大乔商店 - 尼禄
{
	panels ={			--这个物品在哪些界面里显示展示类tip 大乔商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7140,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18184] =	--哪个物品要用展示类tip 大乔商店 - 桑陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 大乔商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7157,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[18646] =	--哪个物品要用展示类tip   浮盻
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.8, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7418,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18647] =	--哪个物品要用展示类tip   限时回馈 坐骑 千城
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7419,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true},
}
item_show_cfg[18643] =	--哪个物品要用展示类tip  限时回馈 时装 凝晓飞雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18643,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[18655] =	--哪个物品要用展示类tip  限时回馈 翅膀 紫鸾翩翾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7484,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[18659] =	--哪个物品要用展示类tip 小雪礼匣 - 加祖
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 15, fov = 60, far = 60, xoffset = -2, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7491,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[16370] =	--哪个物品要用展示类tip 商城大促 坐骑 芊芊
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5606,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14941] =	--哪个物品要用展示类tip 商城大促 坐骑 阿宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4769,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18656] =	--哪个物品要用展示类tip 商城大促 时装 圣雅淰曦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18656,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16039] =	--哪个物品要用展示类tip 商城大促 时装 诡术幻影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16039,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15919] =	--哪个物品要用展示类tip 商城大促 时装 碧海听涛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15919,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18673] =	--哪个物品要用展示类tip 火鸡礼匣 - 青雀舫·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1.4, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -3.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7494,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18674] =	--焱裔楚黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 18674,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[18668] =	--哪个物品要用展示类tip 钢尾之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4278,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18682] =	--哪个物品要用展示类tip 翅膀 鸿凰涅槃
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7501,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18681] =	--哪个物品要用展示类tip 坐骑 米娅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_limitlottery = true,
			},
	view = {scale = 1.4, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7500,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18690] =	--哪个物品要用展示类tip 坐骑 了了
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7504,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18693] =	--哪个物品要用展示类tip 商城 时装 兰斯洛特
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18692,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18691] =	--哪个物品要用展示类tip   紫韵璃昕 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18691,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[18709] =	--哪个物品要用展示类tip 商城 坐骑 覆湮·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7513,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[17032] =	--哪个物品要用展示类tip 商城 坐骑 如意之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6048,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16514] =	--哪个物品要用展示类tip 商城大促 坐骑 苍御
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5617,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15210] =	--哪个物品要用展示类tip 商城大促 坐骑 狸豿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4870,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18703] =	--哪个物品要用展示类tip 商城大促 时装 浅墨荆蔷
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18703,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[10436] =	--哪个物品要用展示类tip 商城大促 时装 幽灰异闻
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10436,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[14383] =	--哪个物品要用展示类tip 商城大促 时装 天韵海澜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18701] =	--哪个物品要用展示类tip 圣诞排行榜 - 覆焉·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7514,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[18734] =	--哪个物品要用展示类tip 坐骑 谛听 临冬礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7519,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18750] =	--哪个物品要用展示类tip  连续充值 宠物 竹米团团
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.2, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7558,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[18760] =	--哪个物品要用展示类tip 坐骑 嗅春
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_limitlottery = true,
			},
	view = {scale = 1.4, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7598,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18761] =	--哪个物品要用展示类tip 翅膀 倾世幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7599,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18766] =	--哪个物品要用展示类tip  时装 圣隐沐泫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18764,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18773] =	--哪个物品要用展示类tip 坐骑 丹心 腊八礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7520,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18765] =	--哪个物品要用展示类tip   梅落九天 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18765,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[18785] =	--哪个物品要用展示类tip  龙争虎斗第十二赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7624,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[18805] =	--哪个物品要用展示类tip   龙争虎斗第十二赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7626,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[18806] =	--哪个物品要用展示类tip   龙争虎斗第十二赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7625,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[18783] =	--哪个物品要用展示类tip   限时回馈 坐骑 珊塔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7603,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true},
}
item_show_cfg[18776] =	--哪个物品要用展示类tip  限时回馈 时装 泠雪沐司
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18776,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[18803] =	--哪个物品要用展示类tip  限时回馈 翅膀 星辰之歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7553,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[18784] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 飞飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7602,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true,panel_goldshop = true},
}
item_show_cfg[18777] =	--哪个物品要用展示类tip  神龙祭祀 时装 海洋之星
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18777,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[18779] =	--哪个物品要用展示类tip  神龙祭祀 时装 海洋之星（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 18778,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[18804] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 诡术魅妖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7554,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[18818] =	--绯辞沐黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,
				panel_goldshop = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 18818,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true,panel_goldshop = true},
}
item_show_cfg[18817] =	--哪个物品要用展示类tip 商城大促 时装 碧皖焉画
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18817,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[8374] =	--哪个物品要用展示类tip 商城大促 时装 春熙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 8374,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16262] =	--哪个物品要用展示类tip 商城大促 时装 素云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16262,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18816] =	--哪个物品要用展示类tip 坐骑 迷鹿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.3, roatate = 30, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7580,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18820] =	--哪个物品要用展示类tip  商城 翅膀 凝玄幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7555,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop= true},
}
item_show_cfg[18851] =	--寒啸·神 春节排行榜	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 7696,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[18852] =	--寒啸·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_npcshop = true,
		  	},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 7695,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[18855] =	--赤瑕璃茉 春节活动
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_spring_hero1 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18855,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_spring_hero1 = true},
}
item_show_cfg[18861] =	--哪个物品要用展示类tip 坐骑 寒啸·圣 新春礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7695,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18864] =	--哪个物品要用展示类tip 坐骑 逐光 元宵礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7698,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18853] =	--哪个物品要用展示类tip 坐骑 飞虹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7697,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18858] =	--哪个物品要用展示类tip   熙沫浅黎 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18858,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[18863] =	--旺财之辉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6135,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15137] =	--哪个物品要用展示类tip 商城大促 坐骑 噗噗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4819,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12623] =	--哪个物品要用展示类tip 商城大促 坐骑 绝影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4137,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18872] =	--哪个物品要用展示类tip 商城大促 时装 弥辰青月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18872,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[10617] =	--哪个物品要用展示类tip 商城大促 时装 朱红华彩
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10617,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[12923] =	--哪个物品要用展示类tip 商城大促 时装 韶华剑心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12923,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18875] =	--哪个物品要用展示类tip 坐骑 卿知 丽月礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.5, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7740,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18901] =	--哪个物品要用展示类tip 坐骑 潜渊
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.3, roatate = 30, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7627,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18903] =	--哪个物品要用展示类tip 坐骑 来福 冬末礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.27, yoffset =-3.79, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11031,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15081] =	--一木鸡
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},			--在tip里坐标偏移配置	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 4788,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[19004] =	--哪个物品要用展示类tip   南堇芈月 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19004,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19006] =	--哪个物品要用展示类tip  时装 隐纱璃瑟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19005,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19008] =	--哪个物品要用展示类tip 坐骑 雪鬃
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7763,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19047] =	--哪个物品要用展示类tip 初春礼匣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.69, yoffset = -0.2, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12512,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19030] =	--哪个物品要用展示类tip   限时回馈 坐骑 云澜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_gift = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 20, far = 30, xoffset = -1.45, yoffset = -2.8, zoffset = 18.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7790,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[19027] =	--哪个物品要用展示类tip  限时回馈 时装 橙蜜重华
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19027,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[19046] =	--哪个物品要用展示类tip  限时回馈 翅膀 湛蓝之歌/20210225大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7555,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19065] =	--哪个物品要用展示类tip 坐骑 承天礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -3, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13956,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19058] =	--哪个物品要用展示类tip  时装 暮云盻瑶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19058,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11438] =	--哪个物品要用展示类tip  时装 断水
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11438,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11390] =	--哪个物品要用展示类tip  时装 楚山孤客
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11390,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19077] =	--哪个物品要用展示类tip 坐骑 婳仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7791,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19102] =	--哪个物品要用展示类tip 坐骑 悠悠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7875,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19105] =	--哪个物品要用展示类tip  商城 翅膀 霓虹幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7676,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_npcshop = true,panel_goldshop = true},
	--bind = {panel_ceremony= true},
}
item_show_cfg[19100] =	--哪个物品要用展示类tip  时装 云溪倾蜜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19099,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19113] =	--哪个物品要用展示类tip   花嫁璃茉 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19113,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[19111] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 戏斑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7907,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_ceremony = true},
}
item_show_cfg[19107] =	--哪个物品要用展示类tip  神龙祭祀 时装 宸暖沐春
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19107,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19109] =	--哪个物品要用展示类tip  神龙祭祀 时装 宸暖沐春（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19108,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19112] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 歆羽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7686,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19124] =	--哪个物品要用展示类tip  龙争虎斗第十三赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7951,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19139] =	--哪个物品要用展示类tip   龙争虎斗第十三赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7952,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19140] =	--哪个物品要用展示类tip   龙争虎斗第十三赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7953,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[16026] =	--哪个物品要用展示类tip  竹趣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = -45, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5308,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19120] =	--哪个物品要用展示类tip   凤楚重华 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19120,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16867] =	--哪个物品要用展示类tip   清徽素锦 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16867,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16533] =	--哪个物品要用展示类tip   沉渊 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16533,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19149] =	--哪个物品要用展示类tip  怜影·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 30, xoffset = -0.4, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7995,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19150] =	--哪个物品要用展示类tip  怜影·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 30, xoffset = -0.4, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7959,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19144] =	--湮影黎昕  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19144,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19185] =	--哪个物品要用展示类tip  连续充值 宠物 纳财
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7996,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19186] =	--光荣礼袋-甲克·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -2.79, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12607,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19151] =	--哪个物品要用展示类tip 坐骑 莫尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 25, far = 30, xoffset = -1.5, yoffset = -2, zoffset = 16.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7927,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19169] =	--哪个物品要用展示类tip  商城 翅膀 西罗幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7825,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19191] =	--哪个物品要用展示类tip 坐骑 灵素
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.4, roatate = 50, fov = 20, far = 8.75, xoffset = -0.35, yoffset = 0.3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7960,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19188] =	--哪个物品要用展示类tip   暮橙湮华 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19188,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19192] =	--哪个物品要用展示类tip  时装 云曦风宸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19187,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[18574] =	--哪个物品要用展示类tip 斐亚
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7392,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[18600] =	--哪个物品要用展示类tip 焱奕
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7403,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18658] =	--哪个物品要用展示类tip 加祖
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1.3, roatate = 15, fov = 60, far = 60, xoffset = -2, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7491,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[18733] =	--哪个物品要用展示类tip 坐骑 谛听 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3 = true,
				panel_npcshop = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7519,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop=true},
}
item_show_cfg[19198] =	--哪个物品要用展示类tip 坐骑 隐叶 初夏礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8004,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19195] =	--哪个物品要用展示类tip   牧司瑾秀	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip

			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19195,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16585] =	--哪个物品要用展示类tip   云墟	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16585,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[15205] =	--哪个物品要用展示类tip   落英纷华	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15205,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19204] =	--哪个物品要用展示类tip   限时回馈 坐骑 浅悠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8027,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[19201] =	--哪个物品要用展示类tip  限时回馈 时装 狐墨言婳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19201,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[19207] =	--哪个物品要用展示类tip  限时回馈 翅膀 影之猎手
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7867,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19221] =	--哪个物品要用展示类tip 坐骑 巫梦 魔巫宝匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8028,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19229] =	--哪个物品要用展示类tip 坐骑 符仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8029,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19242] =	--哪个物品要用展示类tip   端午宝盒-争渡·圣/逐波·圣/超影·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -0.31, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12684,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19243] =	--哪个物品要用展示类tip   端阳礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				--panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.14, yoffset = -0.81, zoffset = 5},				--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11481,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19238] =	--哪个物品要用展示类tip  求凰·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜界面
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 90, xoffset = -1.2, yoffset = -3.0, zoffset = 10.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8111,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19239] =	--哪个物品要用展示类tip  求凰·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜界面
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 90, xoffset = -1.2, yoffset = -3.0, zoffset = 10.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8087,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19241] =	--哪个物品要用展示类tip  时装 凝香落歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19235,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19244] =	--哪个物品要用展示类tip   炽焰重华 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19244,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19246] =	--哪个物品要用展示类tip 坐骑 斑宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8132,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19247] =	--哪个物品要用展示类tip  商城 翅膀 朱提幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7892,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19255] =	--哪个物品要用展示类tip 夏日礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.39, yoffset = -3.55, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12985,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[16873] =	--哪个物品要用展示类tip  晴洺
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 45, fov = 55, far = 10, xoffset = -1.2, yoffset = -1, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 5848,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19252] =	--哪个物品要用展示类tip  时装 百堇迷瑟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19252,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[16972] =	--哪个物品要用展示类tip  时装 茗剑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 16972,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[13802] =	--哪个物品要用展示类tip  时装 绯焰修罗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13802,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19273] =	--哪个物品要用展示类tip  连续充值 宠物 塔塔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8193,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19256] =	--绯宸暖阳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rewardregister = true,

		  	},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.57, yoffset = 0.35, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 19256,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rewardregister = true},
}
item_show_cfg[19258] =	--哪个物品要用展示类tip 坐骑 旺卿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8112,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19274] =	--祈福礼匣  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.33, yoffset = -4.81, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11552,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19280] =	--哪个物品要用展示类tip 琼华·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8198,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19281] =	--哪个物品要用展示类tip 琼华·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8133,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19275] =	--梨杉轻玄
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,

		  	},
	view = {scale = 1, roatate = -25.0, fov = 50, far = 10, xoffset = -0.47, yoffset = 0.5, zoffset = 2.66},			--在tip里坐标偏移配置	
	fashionItemTid = 19275,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19287] =	--福星宝盒  绘池·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 28, fov = 60, far = 10, xoffset = -1.47, yoffset = -2.49, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13006,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19277] =	--哪个物品要用展示类tip  时装 夏歌清黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19276,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19291] =	--哪个物品要用展示类tip 坐骑 叮当
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8155,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19292] =	--哪个物品要用展示类tip  商城 翅膀 紫韵琉璃
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7993,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_npcshop = true,panel_goldshop=true},
}
item_show_cfg[19288] =	--哪个物品要用展示类tip   蜜橙卿辞 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19288,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19298] =	--哪个物品要用展示类tip 坐骑 江月 消暑礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8175,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19299] =	--哪个物品要用展示类tip  0718商城大促飞烟海棠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19299,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[7667] =	--哪个物品要用展示类tip  0718商城大促冰雪奇缘
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 7667,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11886] =	--哪个物品要用展示类tip  0718商城大促疏狂暗香
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11886,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19303] =	--哪个物品要用展示类tip  龙争虎斗第十四赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.4, roatate = 45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.0, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8244,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19321] =	--哪个物品要用展示类tip   龙争虎斗第十四赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8262,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19322] =	--哪个物品要用展示类tip   龙争虎斗第十四赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8263,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19351] =	--哪个物品要用展示类tip 坐骑 妙思
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-1.78, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8197,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19350] =	--哪个物品要用展示类tip   限时回馈 坐骑 泠烟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8220,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_goldshop = true},
}
item_show_cfg[19346] =	--哪个物品要用展示类tip  限时回馈 时装 黎夏木斐
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rewardregister = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19346,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true,subpanel_rewardregister = true},
}
item_show_cfg[19352] =	--哪个物品要用展示类tip  限时回馈 翅膀 片翼纤凝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7994,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true,},
}
item_show_cfg[19389] =	--哪个物品要用展示类tip 2019七夕排行榜 - 惜巧·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8309,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19390] =	--哪个物品要用展示类tip  - 惜巧·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8270,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19391] =	--哪个物品要用展示类tip 2019/2020/2021七夕礼盒 - 惜巧·圣/湍君·圣/灵轩·圣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.33, yoffset = 0, zoffset = 3.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13305,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19380] =	--哪个物品要用展示类tip  时装 荷暮言婳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19379,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19392] =	--乞巧礼匣  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10890,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19400] =	--哪个物品要用展示类tip   云曦堇木 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19400,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19405] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 帕克
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.5, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8245,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_ceremony = true},
}
item_show_cfg[19399] =	--哪个物品要用展示类tip  神龙祭祀 时装 乐衍灼夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19399,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19401] =	--哪个物品要用展示类tip  神龙祭祀 时装 乐衍灼夏（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19398,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19406] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 素晗幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8062,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19419] =	--哪个物品要用展示类tip 坐骑 思居 清风礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8221,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19417] =	--哪个物品要用展示类tip  0815商城大促柏璃暮隐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19417,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19436] =	--哪个物品要用展示类tip 坐骑 盈宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8292,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19438] =	--哪个物品要用展示类tip  连续充值 宠物 金毫灵猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8215,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19443] =	--哪个物品要用展示类tip 坐骑 麻衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8313,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19444] =	--哪个物品要用展示类tip  商城 翅膀 戎征幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8172,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true}
}
item_show_cfg[19445] =	--哪个物品要用展示类tip  商城 翅膀 戎征幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8082,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true}
}
item_show_cfg[19454] =	--哪个物品要用展示类tip 坐骑 望秋礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.62, yoffset = -2.78, zoffset = 3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13281,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19453] =	--哪个物品要用展示类tip   限时回馈 坐骑 观月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8359,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[19449] =	--哪个物品要用展示类tip  限时回馈 时装 云沫暖辞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19449,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19457] =	--哪个物品要用展示类tip  限时回馈 翅膀 金曜翠羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8192,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19469] =	--哪个物品要用展示类tip   侠莫绯琛 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19469,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19464] =	--哪个物品要用展示类tip 2019/2021/2022中秋礼盒 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.74, yoffset = -3.19, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13473,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19476] =	--哪个物品要用展示类tip 2019中秋排行榜 - 薇雨·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8449,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19477] =	--哪个物品要用展示类tip 薇雨·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8430,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19468] =	--哪个物品要用展示类tip 2019中秋排行榜 - 言慕辞月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19468,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19484] =	--哪个物品要用展示类tip 坐骑 列奥
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8429,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[11796] =	--哪个物品要用展示类tip  幽冥
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 3916,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19482] =	--哪个物品要用展示类tip  0919商城大促羽纱慕焉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19482,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19494] =	--哪个物品要用展示类tip 2019国力争霸排行榜 - 幽岚·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8491,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19496] =	--哪个物品要用展示类tip 坐骑 牧尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8404,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19498] =	--哪个物品要用展示类tip 2019秋风礼盒 - 幽岚·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8454,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19504] =	--金秋礼匣  琳琅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 6342,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19505] =	--哪个物品要用展示类tip  时装 辰筱木兮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19490,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19518] =	--哪个物品要用展示类tip   萱萝蜜韵 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19518,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19524] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 圆圆
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8340,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[19520] =	--哪个物品要用展示类tip  神龙祭祀 时装 曼堇沙洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19520,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19521] =	--哪个物品要用展示类tip  神龙祭祀 时装 曼堇沙洛（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19520,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19528] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 沧海明珠幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8368,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19556] =	--哪个物品要用展示类tip  1017商城大促圣亚隐枼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19556,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17045] =	--哪个物品要用展示类tip   1017商城大促圣亚隐枼
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17045,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[19555] =	--哪个物品要用展示类tip 坐骑 霜月 金秋礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8473,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19560] =	--哪个物品要用展示类tip  龙争虎斗第十五赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 40, fov = 50, far = 8.75, xoffset = -0.8, yoffset = -0.5, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8314,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19575] =	--哪个物品要用展示类tip   龙争虎斗第十五赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8323,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19576] =	--哪个物品要用展示类tip   龙争虎斗第十五赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 45, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8021,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19602] =	--哪个物品要用展示类tip  连续充值 宠物 叶枫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8421,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19601] =	--哪个物品要用展示类tip 坐骑 柴柴
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8523,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19632] =	--哪个物品要用展示类tip 坐骑 茜羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8524,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19633] =	--哪个物品要用展示类tip  商城 翅膀 至暗幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8580,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19647] =	--临冬礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.31, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13549,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19642] =	--哪个物品要用展示类tip  1107商城大促落樱玄裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19642,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17259] =	--哪个物品要用展示类tip  1107商城大促点墨飞尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17259,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19650] =	--哪个物品要用展示类tip   赤炎茉璃 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,

		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19650,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19651] =	--哪个物品要用展示类tip   绯焰修罗
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 13802,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19652] =	--哪个物品要用展示类tip   长风破浪
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11397,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19653] =	--哪个物品要用展示类tip   绿荫春欣
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14345,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19654] =	--哪个物品要用展示类tip   华缕丝冠
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11778,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19659] =	--哪个物品要用展示类tip   大方无隅
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12176,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19655] =	--哪个物品要用展示类tip   暗夜霜衣
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12721,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19656] =	--哪个物品要用展示类tip   赤子之心
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10855,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19657] =	--哪个物品要用展示类tip   绿野仙踪
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 7664,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19660] =	--哪个物品要用展示类tip   斗牛
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11569,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19658] =	--哪个物品要用展示类tip   消愁
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11527,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[19665] =	--冰风礼匣  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 30, fov = 65, far = 90, xoffset = -1.2, yoffset = -3.0, zoffset = 10.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 8087,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19664] =	--哪个物品要用展示类tip  时装 寒曳秀雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19661,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19666] =	--哪个物品要用展示类tip 坐骑 雷鸣 吹雪礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.6, roatate = 30, fov = 75, far = 10, xoffset = -2.2, yoffset = -3.0, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8546,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19671] =	--哪个物品要用展示类tip 坐骑 玹鸢
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8592,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19670] =	--哪个物品要用展示类tip   限时回馈 坐骑 奇乐
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8591,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[19667] =	--哪个物品要用展示类tip  限时回馈 时装 索亚祭羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19667,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19675] =	--哪个物品要用展示类tip  限时回馈 翅膀 鳞渊暗翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8490,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19683] =	--哪个物品要用展示类tip 莱顿·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8684,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19686] =	--哪个物品要用展示类tip 吃鸡礼盒 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.91, yoffset = -2.86, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13616,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19698] =	--哪个物品要用展示类tip 坐骑 蚀川
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8639,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19696] =	--哪个物品要用展示类tip  1205商城大促寒瑾迷烽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19696,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17210] =	--哪个物品要用展示类tip  1205商城大促罗袖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17210,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19704] =	--哪个物品要用展示类tip   橙洛幽棉 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19704,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[19706] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 姜渔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8683,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[19710] =	--哪个物品要用展示类tip  神龙祭祀 时装 尚虞尧芯
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19710,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19712] =	--哪个物品要用展示类tip  神龙祭祀 时装 尚虞尧芯（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19710,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19707] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 乌灵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8581,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19737] =	--哪个物品要用展示类tip 2019/2020/2022驯鹿礼盒 - 箜濛·圣/辉夜·圣/远遥·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 10, fov = 60, far = 10, xoffset = -1.52, yoffset = -3.78, zoffset = 9},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13712,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19735] =	--哪个物品要用展示类tip 2019圣诞节排行榜 - 箜濛·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8749,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19769] =	--哪个物品要用展示类tip  连续充值 宠物 兔爷
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8625,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19749] =	--哪个物品要用展示类tip 2019新桃礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.8, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13723,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19770] =	--哪个物品要用展示类tip  商城 翅膀 寄桑幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8673,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
	--bind = {panel_ceremony= true},
}
item_show_cfg[19794] =	--腊月礼匣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10927,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19796] =	--哪个物品要用展示类tip 2020八宝礼盒 - 芙瑶/2021 随风/2022 赤嫣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.78, yoffset = -3, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13801,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19789] =	--哪个物品要用展示类tip  时装 百堇蝶尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19788,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19792] =	--哪个物品要用展示类tip  龙争虎斗第十六赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8634,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19795] =	--哪个物品要用展示类tip   龙争虎斗第十六赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8635,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19797] =	--哪个物品要用展示类tip   龙争虎斗第十六赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 45, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8766,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19799] =	--哪个物品要用展示类tip   赤焉曦华 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19799,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19807] =	--哪个物品要用展示类tip   限时回馈 坐骑 千崇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8838,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true},
}
item_show_cfg[19802] =	--哪个物品要用展示类tip  限时回馈 时装 茉楚洛璟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19802,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19803] =	--哪个物品要用展示类tip  限时回馈 翅膀 华胥琉荧
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8674,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19806] =	--哪个物品要用展示类tip 坐骑 云翎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8708,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19801] =	--哪个物品要用展示类tip  0109商城大促白墨苏棉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19801,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17306] =	--哪个物品要用展示类tip  0109商城大促花间绫舞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17306,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19824] =	--哪个物品要用展示类tip  商城 翅膀 初梦倾颜幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8701,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19837] =	--哪个物品要用展示类tip 2021/2022迎春礼盒 - 青黛/鲸虹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -2, yoffset = -4.4, zoffset = 9.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11708,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19838] =	--哪个物品要用展示类tip 2020/2021/2022惜春礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13837,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19823] =	--哪个物品要用展示类tip 坐骑 冲鸭
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8497,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19844] =	--哪个物品要用展示类tip 2020华灯礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.87, yoffset = -0.69, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13835,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19839] =	--哪个物品要用展示类tip  0206商城大促浮染辞画
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19839,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19861] =	--哪个物品要用展示类tip   荷嫣紫罗 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19861,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19866] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 飓枭
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -1.7, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8820,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[19862] =	--哪个物品要用展示类tip  神龙祭祀 时装 雅婧薇栾
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19862,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19864] =	--哪个物品要用展示类tip  神龙祭祀 时装 雅婧薇栾（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19862,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19869] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 极地凛霜幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8767,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19888] =	--哪个物品要用展示类tip  连续充值 宠物 爆爆鼠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8814,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19890] =	--哪个物品要用展示类tip 坐骑 萝贝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8850,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19895] =	--哪个物品要用展示类tip 2020/2021/2022春辉礼盒 凌霄
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.8, yoffset = -1.8, zoffset = 10},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13932,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19896] =	--春华礼匣  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4.5, zoffset = 7},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11399,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19891] =	--哪个物品要用展示类tip  商城 翅膀 九渊诏使幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8675,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19902] =	--哪个物品要用展示类tip 坐骑 云嫣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 20, xoffset = -1.1, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8849,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19904] =	--哪个物品要用展示类tip  0305商城新时装洛青隐沫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19900,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19900] =	--哪个物品要用展示类tip  0305商城新时装洛青隐沫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19900,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19911] =	--哪个物品要用展示类tip 2020风暖礼盒 雪华
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.7, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8892,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19910] =	--哪个物品要用展示类tip 雪华
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.7, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8892,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18268] =	--哪个物品要用展示类tip  0312商城大促狸猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 1.7, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4870,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19907] =	--哪个物品要用展示类tip  0312商城大促沫皖离白
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19907,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17612] =	--哪个物品要用展示类tip  0312商城大促甜甜圈
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17612,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17027] =	--哪个物品要用展示类tip  0312商城大促玄白夜语
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17027,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19908] =	--哪个物品要用展示类tip   风焉赤瑾 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19908,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19917] =	--哪个物品要用展示类tip   限时回馈 坐骑蒲仙 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8891,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true},
}
item_show_cfg[19914] =	--哪个物品要用展示类tip  限时回馈 时装 风夏沫菁
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 19914,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[19919] =	--哪个物品要用展示类tip  限时回馈 翅膀 广寒幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8676,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[19918] =	--哪个物品要用展示类tip 坐骑 枫意
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8920,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19926] =	--哪个物品要用展示类tip 2020绿柳礼盒 初晓
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -0.85, yoffset = -0.77, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12564,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19927] =	--20200326/20220407禾芽礼匣  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-3.5, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11281,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19925] =	--哪个物品要用展示类tip  商城 翅膀 尊荣幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8677,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony= true},
	bind = {panel_npcshop = true,panel_goldshop = true},	
}
item_show_cfg[19930] =	--哪个物品要用展示类tip 坐骑 秋趣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8948,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19932] =	--哪个物品要用展示类tip  0402商城新时装岚茉熙云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19931,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19939] =	--哪个物品要用展示类tip 2020温暖礼盒 汐灵 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.8, roatate = 60, fov = 55, far = 15, xoffset = -1.7, yoffset = -4, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8947,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[19935] =	--哪个物品要用展示类tip  0409商城大促熙云落枫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19935,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17626] =	--哪个物品要用展示类tip   0409商城大促飞鸾
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 17626,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[16989] =	--哪个物品要用展示类tip   0409商城银装素裹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
		  	},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.45, zoffset = 7.5},			--在tip里坐标偏移配置	
	fashionItemTid = 16989,		--若是时装则填时装物品id
	wingModel = 0,		--若是翅膀则填翅膀模型id
	normalModel = 0,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[19936] =	--哪个物品要用展示类tip   墨隐紫魄 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19936,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[19950] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 苔痕
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.7, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8957,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[19952] =	--哪个物品要用展示类tip  神龙祭祀 时装 彩沫非羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19952,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19954] =	--哪个物品要用展示类tip  神龙祭祀 时装 彩沫非羽（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19952,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[19956] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 冥境龙主幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8796,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[19971] =	--哪个物品要用展示类tip   龙争虎斗第十七赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 45, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9005,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19949] =	--哪个物品要用展示类tip  龙争虎斗第十七赛季坐骑炽鵟 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8870,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19955] =	--哪个物品要用展示类tip   龙争虎斗第十七赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8871,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[19986] =	--哪个物品要用展示类tip  连续充值 宠物 凶眼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8939,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19988] =	--哪个物品要用展示类tip 坐骑 桃狰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.4, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8986,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19999] =	--哪个物品要用展示类tip  谛麟·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.4, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset =-2.4, zoffset = 9},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9039,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[19990] =	--2020 劳动节 排行榜 熙宠蜜兔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19990,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20000] =	--哪个物品要用展示类tip 2020光荣礼袋 谛麟·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1.4, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset =-2.4, zoffset = 9},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9014,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20001] =	--哪个物品要用展示类tip 坐骑 笺境
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8922,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19993] =	--哪个物品要用展示类tip  0430商城新时装 白陌莺歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19991,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19992] =	--哪个物品要用展示类tip   香珞绯嫣 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,

		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19992,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20008] =	--哪个物品要用展示类tip  商城 翅膀 银屏瑶阙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8868,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	--bind = {panel_ceremony= true},
	bind={panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20025] =	--哪个物品要用展示类tip 2020/2021/2023紫桑礼盒 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11926,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20022] =	--哪个物品要用展示类tip  0514商城大促 咖洛姹特
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20022,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17025] =	--哪个物品要用展示类tip  0514商城大促 梅月轻裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17025,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20029] =	--哪个物品要用展示类tip   限时回馈 坐骑莲息
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,

			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8988,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[20026] =	--哪个物品要用展示类tip  限时回馈 时装 风夏沫菁
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20026,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20031] =	--哪个物品要用展示类tip  限时回馈 翅膀 广寒幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8881,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20030] =	--哪个物品要用展示类tip 坐骑 蜜语
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9040,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20051] =	--哪个物品要用展示类tip 2020六一礼盒 妙兮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 80, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10499,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20046] =	--哪个物品要用展示类tip  0528商城新时装 浮生梦蝶 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20042,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20056] =	--哪个物品要用展示类tip  商城 翅膀 南华一梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8884,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20058] =	--哪个物品要用展示类tip 坐骑 玄灼
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.4, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9071,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20065] =	--哪个物品要用展示类tip 2020清夏礼盒 寻冬
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9072,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20062] =	--哪个物品要用展示类tip   流风墨紫 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20062,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20061] =	--哪个物品要用展示类tip  大促 雅治兰陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20061,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17723] =	--哪个物品要用展示类tip  大促 瑾年璃月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17723,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[17348] =	--哪个物品要用展示类tip  大促 烈火如歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 17348,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20073] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 云居
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.7, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9078,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20079] =	--哪个物品要用展示类tip  神龙祭祀 时装 湮墨重華
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20079,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20081] =	--哪个物品要用展示类tip  神龙祭祀 时装 湮墨重華（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20079,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20082] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 冥境龙主幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8940,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20098] =	--哪个物品要用展示类tip  连续充值 宠物 箱巫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9129,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20074] =	--哪个物品要用展示类tip  争渡·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜界面
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.4, roatate = 30, fov = 65, far = 90, xoffset = -1.5, yoffset = -3.0, zoffset = 10.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9127,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20100] =	--哪个物品要用展示类tip 坐骑 青尾
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9077,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20102] =	--哪个物品要用展示类tip  0702商城新时装 炫彩炎夏 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20101,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20103] =	--哪个物品要用展示类tip  商城 翅膀 怒龙绝啸
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8941,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20104] =	--哪个物品要用展示类tip   橙花堇色 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20104,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20106] =	--哪个物品要用展示类tip 坐骑 堪舆
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.4, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9103,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20130] =	--哪个物品要用展示类tip 2020/2021小暑礼盒 锦湛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = -60, fov = 60, far = 10, xoffset = -1.7, yoffset = -4, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12044,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20111] =	--哪个物品要用展示类tip  大促 墨语非嫣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20111,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18486] =	--哪个物品要用展示类tip 大促 渺尘茉黎
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18486,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[20132] =	--哪个物品要用展示类tip   龙争虎斗第十八赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 45, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9162,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20114] =	--哪个物品要用展示类tip  龙争虎斗第十八赛季坐骑倾辰 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9037,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[20131] =	--哪个物品要用展示类tip   龙争虎斗第十八赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9038,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[20137] =	--哪个物品要用展示类tip   限时回馈 坐骑烬夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9128,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[20134] =	--哪个物品要用展示类tip  限时回馈 时装 云溪尘翎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20134,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20133] =	--哪个物品要用展示类tip  限时回馈 翅膀 冰原霸主
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8975,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20139] =	--哪个物品要用展示类tip 2020仲夏礼盒 敖游
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.3, yoffset = -3.4, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9104,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20144] =	--哪个物品要用展示类tip 坐骑 莲官
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 2, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.8, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9141,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20142] =	--哪个物品要用展示类tip  0730商城新时装  陌雪兰辞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20141,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20145] =	--20200730 仲夏礼匣  嗅春
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 7598,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20162] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 雷鹿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,

			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9174,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20164] =	--哪个物品要用展示类tip  神龙祭祀 时装 万域侠洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20164,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20166] =	--哪个物品要用展示类tip  神龙祭祀 时装 万域侠洛（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20165,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20167] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 冥境龙主幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 8976,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20176] =	--哪个物品要用展示类tip 坐骑 凝珠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.4, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9161,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20174] =	--哪个物品要用展示类tip   蜜语甜心 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20174,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[18768] =	--哪个物品要用展示类tip  0813大促 丹心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.4, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 7520,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20173] =	--哪个物品要用展示类tip 0813商城大促 时装 奚萝斯绮 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20173,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20189] =	--20200820 鹊情礼匣  婳仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 7791,		--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20181] =	--哪个物品要用展示类tip 2020七夕排行榜 - 湍君·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9254,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20210] =	--哪个物品要用展示类tip  连续充值 宠物 湛蓝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9274,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20203] =	--哪个物品要用展示类tip 坐骑 菀夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9215,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20190] =	--哪个物品要用展示类tip  商城 翅膀 圣剑幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9006,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20201] =	--哪个物品要用展示类tip  0827商城新时装  湮华落梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20200,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20220] =	--哪个物品要用展示类tip 2020福星收录排行榜 - 绘池·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9280,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20222] =	--哪个物品要用展示类tip   瑾墨尚歌 	2020福星收录
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20222,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20226] =	--哪个物品要用展示类tip   陌尘羽蝶 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20226,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[18854] =	--哪个物品要用展示类tip 20200910大促坐骑 逐光
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.5, yoffset = -3.0, zoffset = 8.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7698,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20225] =	--哪个物品要用展示类tip 0910商城大促 时装 橙风蜜洛 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20225,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20226] =	--哪个物品要用展示类tip 0910商城大促 时装 橙风蜜洛 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20226,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18493] =	--哪个物品要用展示类tip 0910商城大促 时装 溪尘玄裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18493,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20224] =	--哪个物品要用展示类tip 坐骑 鲸歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.5, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.4, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9216,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20237] =	--哪个物品要用展示类tip   限时回馈 坐骑清沐 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9236,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[20239] =	--哪个物品要用展示类tip  限时回馈 时装 慕白萌夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20239,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20240] =	--哪个物品要用展示类tip  限时回馈 翅膀 魔瞳幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9031,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20241] =	--哪个物品要用展示类tip 桂月礼盒 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -3.0, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13447,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20250] =	--哪个物品要用展示类tip 坐骑 凛风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9281,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20251] =	--哪个物品要用展示类tip 2020国力争霸排行榜 - 长明·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 15, fov = 55, far = 10, xoffset = -1.1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9312,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20253] =	--哪个物品要用展示类tip 坐骑 奇遇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.2, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9290,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20245] =	--哪个物品要用展示类tip  商城新时装  0924花间梨落
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20242,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20244] =	--哪个物品要用展示类tip   蜜语新橙 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20244,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20254] =	--哪个物品要用展示类tip  商城 翅膀 圣剑幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9095,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20255] =	--20201008/20210930 秋风礼匣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10926,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20286] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 追星
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9291,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20283] =	--哪个物品要用展示类tip  神龙祭祀 时装 艾妮瑞斯
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20280,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20282] =	--哪个物品要用展示类tip  神龙祭祀 时装 艾妮瑞斯（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20281,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20264] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 蒸腾幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9096,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20291] =	--哪个物品要用展示类tip   龙争虎斗第19赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.0, roatate = 45, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9349,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20287] =	--哪个物品要用展示类tip  龙争虎斗第19赛季坐骑 羲和 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -1.3, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9197,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[20265] =	--哪个物品要用展示类tip   龙争虎斗第19赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9198,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},	
}
item_show_cfg[20297] =	--20201022 茱萸礼盒  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.59, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13516,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[19031] =	--哪个物品要用展示类tip 20201022大促迪杰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7792,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20294] =	--哪个物品要用展示类tip 1022商城大促 时装 白沫银枫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20294,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18621] =	--哪个物品要用展示类tip   1022商城大促 圣瑾衍歌 
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18621,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[20333] =	--哪个物品要用展示类tip  连续充值 宠物 咔哒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9380,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20317] =	--哪个物品要用展示类tip 坐骑 星途
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9313,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20353] =	--潮兮·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9386,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20350] =	--哪个物品要用展示类tip  2020 双11 司瑾暮落 	
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20350,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20355] =	--哪个物品要用展示类tip  商城 翅膀 圣剑幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9130,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20365] =	--哪个物品要用展示类tip   限时回馈 坐骑幽火 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9347,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[20361] =	--哪个物品要用展示类tip  限时回馈 时装 星蝶雅娴
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20361,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20360] =	--哪个物品要用展示类tip  限时回馈 翅膀 金胄琼羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9158,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20362] =	--哪个物品要用展示类tip   橙心蜜意 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20362,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20366] =	--哪个物品要用展示类tip 坐骑 远梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9375,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20373] =	--哪个物品要用展示类tip 坐骑 灵聪 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9376,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19060] =	--哪个物品要用展示类tip 坐骑 承钧 20201119 大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7764,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20371] =	--哪个物品要用展示类tip  蔚蓝暮洋 20201119 大促
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20371,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18528] =	--哪个物品要用展示类tip  蔚蓝暮洋 20201119 大促
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18528,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20376] =	--踏雪·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9438,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20381] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 凌光幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9191,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20389] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9379,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20382] =	--哪个物品要用展示类tip  神龙祭祀 时装 侠沐绯嫣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20382,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[20385] =	--哪个物品要用展示类tip  神龙祭祀 时装 侠沐绯嫣（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20386] =	--哪个物品要用展示类tip  商城新时装  1203青木灵汐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20384,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20384] =	--哪个物品要用展示类tip  商城新时装  1203青木灵汐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20384,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20397] =	--哪个物品要用展示类tip   蜜语洛橙 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20397,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20399] =	--哪个物品要用展示类tip 坐骑 轻辇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9387,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20394] =	--哪个物品要用展示类tip  商城 翅膀 锦鹰幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9192,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20405] =	--哪个物品要用展示类tip 坐骑 熔戎 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9442,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19123] =	--哪个物品要用展示类tip 坐骑 20201217 风猎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7928,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20402] =	--哪个物品要用展示类tip   20201217 大促
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20402,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18692] =	--哪个物品要用展示类tip 20201217 大促 兰斯洛特
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18692,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18764] =	--哪个物品要用展示类tip  20201217 大促 圣隐沐泫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 18764,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20408] =	--踏雪·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9517,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20435] =	--哪个物品要用展示类tip  连续充值 宠物 貂宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9496,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20442] =	--哪个物品要用展示类tip   20201231 商城出售 封禹赤霞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20439,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[20439] =	--哪个物品要用展示类tip   20201231 商城出售 封禹赤霞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20439,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_accumulaterecharge = true},
}
item_show_cfg[20447] =	--哪个物品要用展示类tip   蜜糖橙影	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20447,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20446] =	--哪个物品要用展示类tip 坐骑 轻辇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9468,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20448] =	--哪个物品要用展示类tip  商城 翅膀 蜜意巧心
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9253,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20459] =	--哪个物品要用展示类tip   20210114 商城大促 兮鸢染尘
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20459,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[19005] =	--哪个物品要用展示类tip  20210114 商城大促 隐纱璃瑟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19005,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20458] =	--哪个物品要用展示类tip  龙争虎斗第20赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.35, roatate = 90, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.0, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9377,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}

item_show_cfg[20454] =	--哪个物品要用展示类tip   龙争虎斗第20赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9378,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}

item_show_cfg[20474] =	--哪个物品要用展示类tip   龙争虎斗第20赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9554,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20478] =	--哪个物品要用展示类tip   限时回馈 坐骑归流
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9435,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[20480] =	--哪个物品要用展示类tip  限时回馈 时装 风浅花眠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20480,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20475] =	--哪个物品要用展示类tip  限时回馈 翅膀 珠鸾幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9346,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20479] =	--哪个物品要用展示类tip 坐骑 领航 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9498,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20510] =	--哪个物品要用展示类tip  商城售卖 遗城落梦
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20502,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},	
}
item_show_cfg[20501] =	--哪个物品要用展示类tip  青竹幽兰
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20501,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[20502] =	--哪个物品要用展示类tip  商城售卖 遗城落梦
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20502,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},	
}
item_show_cfg[20527] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 九天星璇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9348,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20495] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 屠苏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9534,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20503] =	--哪个物品要用展示类tip  神龙祭祀 时装 疏帘淡月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20503,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[20512] =	--哪个物品要用展示类tip  神龙祭祀 时装 疏帘淡月（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20504,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20496] =	--哪个物品要用展示类tip   春节排行榜 坐骑 枕泉·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				--panel_npcshop = true,
				--panel_gift = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.0, yoffset = -2, zoffset = 10.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9568,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20505] =	--哪个物品要用展示类tip   日落赤焉 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20505,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20498] =	--哪个物品要用展示类tip 坐骑 菇子
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9537,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20511] =	--哪个物品要用展示类tip   商城售卖 北幕南辞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20507,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[20507] =	--哪个物品要用展示类tip   商城售卖 北幕南辞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20507,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20528] =	--哪个物品要用展示类tip  商城 翅膀 莲心玉羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9460,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20563] =	--哪个物品要用展示类tip  连续充值 宠物 硕塔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9633,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[19205] =	--哪个物品要用展示类tip 20210225大促巫梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8028,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19197] =	--哪个物品要用展示类tip 20210225大促隐叶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3 = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8004,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20509] =	--哪个物品要用展示类tip  20210225大促 庄生梦蝶
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20509,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19099] =	--哪个物品要用展示类tip  20210225大促  云溪倾蜜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19099,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20569] =	--哪个物品要用展示类tip 坐骑 璇玑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9560,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20571] =	--哪个物品要用展示类tip  商城 翅膀 惜华幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9404,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20574] =	--哪个物品要用展示类tip   日落赤焉 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,

		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20574,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20576] =	--哪个物品要用展示类tip  商城售卖 红锦南鸢
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20575,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[20583] =	--哪个物品要用展示类tip 坐骑 浣纱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9635,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20582] =	--哪个物品要用展示类tip   限时回馈 坐骑星衡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true,
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9616,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[20584] =	--哪个物品要用展示类tip  限时回馈 时装 凉夏森陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20584,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20579] =	--哪个物品要用展示类tip  限时回馈 翅膀 苍华蜕霜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9434,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[18488] =	--哪个物品要用展示类tip  限时回馈 翅膀 瑰翅幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop  = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 7320,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop  = true},
}
item_show_cfg[20588] =	--哪个物品要用展示类tip  诗韵梵吟 大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20588,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19187] =	--哪个物品要用展示类tip  时装 云曦风宸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19187,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20597] =	--哪个物品要用展示类tip   折月煮酒 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20597,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20600] =	--哪个物品要用展示类tip  神龙祭祀 时装 九夏微凉-神龙祭祀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20599,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20598] =	--哪个物品要用展示类tip  神龙祭祀 时装 九夏微凉-神龙祭祀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20598,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[20610] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 戍卫蜂兵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9485,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20603] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 冥爪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9643,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20611] =	--哪个物品要用展示类tip  商城 翅膀 琉璃一梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9516,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20612] =	--哪个物品要用展示类tip   龙争虎斗第21赛季翅膀 羽衣连翠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9588,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[20649] =	--哪个物品要用展示类tip  连续充值 宠物 初至
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9747,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20648] =	--哪个物品要用展示类tip   龙争虎斗二十一赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9739,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20645] =	--哪个物品要用展示类tip   龙争虎斗二十一赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9587,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20644] =	--哪个物品要用展示类tip 坐骑 觅蜜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9644,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20647] =	--哪个物品要用展示类tip  时装 商城售卖 云溪东篱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20646,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[20646] =	--哪个物品要用展示类tip  时装 商城售卖 云溪东篱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20646,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20613] =	--哪个物品要用展示类tip 春归礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 6609,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20651] =	--哪个物品要用展示类tip 坐骑 浣纱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9645,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19254] =	--哪个物品要用展示类tip 坐骑 思居 大促20210422
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8065,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20652] =	--哪个物品要用展示类tip  时装 大促 淡墨笙浅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20652,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19235] =	--哪个物品要用展示类tip  时装 大促 凝香落歌 20210422
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19235,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20660] =	--哪个物品要用展示类tip   2021劳动节排行榜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 2, roatate = 45, fov = 60, far = 20, xoffset = -1.8, yoffset =-2.4, zoffset = 9},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9773,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20659] =	--哪个物品要用展示类tip 坐骑 傲空
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9722,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20653] =	--哪个物品要用展示类tip   商城 出水芙蓉
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9565,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20662] =	--哪个物品要用展示类tip  时装 雪染墨白
{
	panels ={			--这个物品在哪些界面里显示展示类tip 劳动节排行
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20662,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20686] =	--哪个物品要用展示类tip  限时回馈 时装 花橙羽顔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20686,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20699] =	--哪个物品要用展示类tip  限时回馈 翅膀 心语幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9586,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20684] =	--哪个物品要用展示类tip   限时回馈 坐骑莫莫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 20, fov = 60, far = 60, xoffset = -1.5, yoffset = -2.8, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9720,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true},
}
item_show_cfg[20700] =	--哪个物品要用展示类tip   萌夏橙意 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20700,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20706] =	--哪个物品要用展示类tip   浮生念辞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20705,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[20705] =	--哪个物品要用展示类tip   浮生念辞
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20705,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},	
}
item_show_cfg[20709] =	--哪个物品要用展示类tip 大促 飞慕彦偶
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20709,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19276] =	--哪个物品要用展示类tip  大促 夏歌清黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19276,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20708] =	--哪个物品要用展示类tip 坐骑 烟魅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9750,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20730] =	--哪个物品要用展示类tip  神龙祭祀 时装 北觅圣临-神龙祭祀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20729,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20728] =	--哪个物品要用展示类tip  神龙祭祀 时装 北觅圣临-神龙祭祀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 20728,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[20724] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 水晶誓言
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9614,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20727] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 飞驰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9754,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20737] =	--哪个物品要用展示类tip   橙蜜清欢 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,

		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20737,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20734] =	--哪个物品要用展示类tip   端午 坐骑 逐波·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_npcshop = true,
				--panel_gift = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 2.1, roatate = 30, fov = 65, far = 90, xoffset = -1.6, yoffset = -4.5, zoffset = 10.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9861,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20735] =	--哪个物品要用展示类tip   端午 坐骑 逐波·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 2.1, roatate = 30, fov = 65, far = 90, xoffset = -1.6, yoffset = -4.5, zoffset = 10.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9791,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20741] =	--哪个物品要用展示类tip  商城 翅膀 星河入梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9679,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20760] =	--哪个物品要用展示类tip  连续充值 宠物 蔚夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9809,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20743] =	--哪个物品要用展示类tip 坐骑 御风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9840,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20745] =	--哪个物品要用展示类tip  大促 夏歌清黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20744,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20762] =	--哪个物品要用展示类tip 坐骑 炎炎 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9792,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19302] =	--哪个物品要用展示类tip 坐骑 江月0624大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8175,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20763] =	--哪个物品要用展示类tip  大促 爵玖卿川
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20763,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20767] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9894,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[20768] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9896,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[20769] =	--哪个物品要用展示类tip  花眠锦瑟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20775,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[20791] =	--哪个物品要用展示类tip  限时回馈 时装 南辞花黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20791,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20793] =	--哪个物品要用展示类tip  限时回馈 翅膀 玫瑰星云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9680,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20789] =	--哪个物品要用展示类tip   限时回馈 坐骑桐雀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.4, roatate = 60, fov = 60, far = 60, xoffset = -2.0, yoffset = -2.8, zoffset = 9.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9842,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_gift = true},
}
item_show_cfg[20792] =	--哪个物品要用展示类tip   浮生若璃 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20792,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20800] =	--哪个物品要用展示类tip 坐骑 醒时
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_limitlottery = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9841,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20796] =	--哪个物品要用展示类tip  商城 翅膀 牧鹤幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9707,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20797] =	--哪个物品要用展示类tip  龙争虎斗二十二赛季丰枝幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9751,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20816] =	--哪个物品要用展示类tip   龙争虎斗二十二赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9928,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20801] =	--哪个物品要用展示类tip   龙争虎斗二十二赛季坐骑 御电
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.4, yoffset = -2, zoffset = 8.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9749,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20818] =	--哪个物品要用展示类tip 坐骑 坠云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -3.0, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9868,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20819] =	--哪个物品要用展示类tip  0722大促时装 风浅若璃 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20819,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19379] =	--哪个物品要用展示类tip  0722大促荷暮言婳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19379,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20824] =	--哪个物品要用展示类tip 坐骑 20210729彩钻彩票
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 30, xoffset = -0.79, yoffset = -3.08, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13070,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[20843] =	--哪个物品要用展示类tip 坐骑 20210805神龙祭祀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_ceremony = true,
				panel_npcshop = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.28, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9893,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20848] =	--哪个物品要用展示类tip 神龙祭祀幻戏幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9740,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_ceremony = true,panel_goldshop = true}
}
item_show_cfg[20847] =	--哪个物品要用展示类tip  北沫婳蝶（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20846,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20845] =	--哪个物品要用展示类tip  北沫婳蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20845,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20855] =	--哪个物品要用展示类tip  七夕 灵轩·神 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.9, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9988,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20856] =	--哪个物品要用展示类tip 坐骑 20210812彩钻彩票
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.6, roatate =60, fov = 60, far = 50, xoffset = -1.2, yoffset =-2.28, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9926,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20857] =	--哪个物品要用展示类tip   蝶梦若璃 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20857,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20866] =	--哪个物品要用展示类tip  商城 翅膀 莺声幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9771,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20868] =	--哪个物品要用展示类tip 坐骑 幻梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 50, xoffset = -1.2, yoffset =-0.9, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9901,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19416] =	--哪个物品要用展示类tip 坐骑 江月0624大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8221,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20869] =	--哪个物品要用展示类tip  0819大促赤羽颜夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20869,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20874] =	--哪个物品要用展示类tip 坐骑 坠云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -3.0, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9925,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20890] =	--哪个物品要用展示类tip  连续充值 宠物 贝斯
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9927,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[20895] =	--哪个物品要用展示类tip  商城 翅膀 澄空净羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9783,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[20896] =	--哪个物品要用展示类tip  限时回馈 翅膀 韶光幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9830,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[20899] =	--哪个物品要用展示类tip   限时回馈 坐骑旋忆
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.9, roatate = 60, fov = 60, far = 60, xoffset = -2.0, yoffset = -2.8, zoffset = 10.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9939,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[20901] =	--哪个物品要用展示类tip  限时回馈 时装 赛博卿柚
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20901,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[20900] =	--哪个物品要用展示类tip 坐骑 青空
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.8, roatate =60, fov = 60, far = 50, xoffset = -1.2, yoffset =-1.9, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9970,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20902] =	--哪个物品要用展示类tip   潇舞橙魂 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20902,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20907] =	--哪个物品要用展示类tip 坐骑 夜宴·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10050,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20908] =	--哪个物品要用展示类tip 坐骑 夜宴·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9969,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20909] =	--哪个物品要用展示类tip   絮岚寻梦
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20909,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20912] =	--哪个物品要用展示类tip   絮岚寻梦3D
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20910,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20913] =	--哪个物品要用展示类tip   絮岚寻梦7D
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20911,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20916] =	--哪个物品要用展示类tip 坐骑 翩跹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				panel_npcshop = true,
			},
	view = {scale = 1.8, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -5.0, zoffset = 22.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9997,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19452] =	--哪个物品要用展示类tip 坐骑 听澜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3 = true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8339,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20917] =	--哪个物品要用展示类tip   寂沽淡静
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20917,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19490] =	--哪个物品要用展示类tip  时装 辰筱木兮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19490,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20926] =	--哪个物品要用展示类tip   橙花辞沫 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20926,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20922] =	--哪个物品要用展示类tip 坐骑 墨魂·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10074,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20923] =	--哪个物品要用展示类tip 坐骑 墨魂·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9998,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[20924] =	--哪个物品要用展示类tip 坐骑 胜雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate =90, fov = 60, far = 70, xoffset = -1.1, yoffset =-1.9, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10024,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true, panel_goldshop = true},
}
item_show_cfg[20918] =	--哪个物品要用展示类tip  商城 翅膀 毕方鸣空
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9851,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[20958] =	--哪个物品要用展示类tip 坐骑 20211014神龙祭祀渡云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_ceremony = true,
				panel_npcshop = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.48, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10023,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[20952] =	--哪个物品要用展示类tip 神龙祭祀 紫珀飞樱
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9890,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,panel_ceremony = true}
}
item_show_cfg[20966] =	--哪个物品要用展示类tip  北沫婳蝶（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20964,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20962] =	--哪个物品要用展示类tip  北沫婳蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20962,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[20953] =	--哪个物品要用展示类tip  龙争虎斗二十三赛季 皓夜幽蝠 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9935,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20951] =	--哪个物品要用展示类tip   龙争虎斗二十三赛季宠物
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10102,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20959] =	--哪个物品要用展示类tip   龙争虎斗二十三赛季坐骑 铃兰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.4, yoffset = -3, zoffset = 8.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9934,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[20971] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10112,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[20972] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10113,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[20973] =	--哪个物品要用展示类tip  花眠锦瑟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20961,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[19559] =	--哪个物品要用展示类tip  大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8473,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20976] =	--哪个物品要用展示类tip  时装 夕颜笙默
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20976,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20975] =	--哪个物品要用展示类tip 坐骑 戏浪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10019,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20993] =	--哪个物品要用展示类tip  连续充值 宠物 奶貂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10041,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21012] =	--哪个物品要用展示类tip 清谷幽蝶幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9895,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true}
}
item_show_cfg[21014] =	--哪个物品要用展示类tip 坐骑 浮生
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-1.9, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10054,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[21034] =	--哪个物品要用展示类tip  限时回馈 翅膀 青凰幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75,xoffset = -0.4, yoffset = 0.5, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9956,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21031] =	--哪个物品要用展示类tip   限时回馈 坐骑绝色
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 0.9, roatate = 60, fov = 80, far = 8.75, xoffset = -1.4, yoffset = -4, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10117,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[21025] =	--哪个物品要用展示类tip  限时回馈 时装 余生白陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				panel_gift= true,	
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 21025,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21026] =	--哪个物品要用展示类tip   巧心蜜意 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21026,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21027] =	--哪个物品要用展示类tip   梁梦青青 
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21027,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21032] =	--哪个物品要用展示类tip  云岫·神-光棍
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 60, fov = 80, far = 8.75, xoffset = -1.4, yoffset = -4, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10150,			--若是坐骑宠物则填模型id
	bind={panel_npcshop = true,subpanel_rankinglist= true}
}
item_show_cfg[21033] =	--哪个物品要用展示类tip  云岫·圣-光棍
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 60, fov = 80, far = 8.75, xoffset = -1.4, yoffset = -4, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10075,			--若是坐骑宠物则填模型id
	bind={panel_npcshop = true,subpanel_rankinglist= true}
}
item_show_cfg[22718] =	--哪个物品要用展示类tip  红豆礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = -1.5, yoffset = -1.2, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11308,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true}
}
item_show_cfg[21040] =	--哪个物品要用展示类tip 坐骑 疾风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10085,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[21041] =	--哪个物品要用展示类tip   潇舞梅魂
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21041,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19661] =	--哪个物品要用展示类tip  时装 寒曳秀雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19661,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21042] =	--哪个物品要用展示类tip 碧海听涛
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 15919,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[14221] =	--哪个物品要用展示类tip 盛世红颜
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 14220,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[12925] =	--哪个物品要用展示类tip 剑影花馨
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12922,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[11777] =	--哪个物品要用展示类tip 纹衮冕服
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 11779,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[12116] =	--哪个物品要用展示类tip 鸾凤和鸣
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 12114,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[21043] =	--哪个物品要用展示类tip 冰火之歌
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_npcshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 10437,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},	
}
item_show_cfg[21049] =	--哪个物品要用展示类tip 吃鸡礼盒 - 虹铭·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				subpanel_rankinglist = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.35, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10198,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[21057] =	--哪个物品要用展示类tip 坐骑 20211202神龙祭祀 猎翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_ceremony = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.48, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10118,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[21053] =	--哪个物品要用展示类tip 神龙祭祀 松风幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 9961,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_ceremony = true,panel_goldshop = true}
}
item_show_cfg[21063] =	--哪个物品要用展示类tip  北沫婳蝶（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21061,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21059] =	--哪个物品要用展示类tip  北沫婳蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21059,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21080] =	--哪个物品要用展示类tip   焱夏生花 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21080,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21079] =	--哪个物品要用展示类tip 坐骑 炎焱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-1.9, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10143,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21077] =	--哪个物品要用展示类tip  弦月幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10015,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true}
}
item_show_cfg[19663] =	--哪个物品要用展示类tip 坐骑 雷鸣 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.6, roatate = 30, fov = 75, far = 10, xoffset = -2.2, yoffset = -3.0, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8546,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21097] =	--哪个物品要用展示类tip  半浅仙梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 21097,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21096] =	--哪个物品要用展示类tip 坐骑 菁翩
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-1.38, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10149,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21121] =	--哪个物品要用展示类tip 青颂·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				subpanel_rankinglist = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.7, roatate =45, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10242,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}
item_show_cfg[21118] =	--哪个物品要用展示类tip  连续充值 宠物 塔塔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10167,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21142] =	--哪个物品要用展示类tip  云霞幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10020,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true}
}
item_show_cfg[21153] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10271,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21154] =	--哪个物品要用展示类tip 跨服三国志
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10274,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[21155] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21148,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21164] =	--哪个物品要用展示类tip  灼思红颜 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21164,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21161] =	--哪个物品要用展示类tip   限时回馈 坐骑 年婳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 0.7, roatate = 80, fov = 60, far = 10, xoffset = -1.0, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10180,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[21165] =	--哪个物品要用展示类tip  限时回馈 时装 圣羽飞翎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21165,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21156] =	--哪个物品要用展示类tip  限时回馈 翅膀 钢铁之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10071,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21162] =	--哪个物品要用展示类tip 坐骑 乐迪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-1.9, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10214,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21157] =	--哪个物品要用展示类tip  龙争虎斗二十四赛季 红枫雀羽 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10273,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21182] =	--哪个物品要用展示类tip   龙争虎斗二十四赛季宠物 九途
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10272,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21163] =	--哪个物品要用展示类tip   龙争虎斗二十四赛季坐骑 赤离
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.8, yoffset = -3, zoffset = 11.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10270,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21190] =	--哪个物品要用展示类tip 坐骑 雀羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 50, xoffset = -1.5, yoffset =-1.5, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10213,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21197] =	--哪个物品要用展示类tip  福清银玉
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21197,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21198] =	--赤嫣玲珑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21198,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
}
item_show_cfg[21191] =	--哪个物品要用展示类tip 至泽·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				subpanel_rankinglist = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.7, roatate =45, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10295,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true},
}

item_show_cfg[21194] =	--哪个物品要用展示类tip 坐骑 20220203 神龙祭祀 疾蜂
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_ceremony = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.48, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10269,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[21231] =	--哪个物品要用展示类tip 神龙祭祀 霓裳幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10076,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_ceremony = true,panel_goldshop = true}
}
item_show_cfg[21209] =	--哪个物品要用展示类tip  风复笙歌（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21204,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21202] =	--哪个物品要用展示类tip  风复笙歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21202,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21205] =	--哪个物品要用展示类tip  倾城似雪 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21205,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21232] =	--哪个物品要用展示类tip 荧蝶幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10140,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true}
}
item_show_cfg[19754] =	--哪个物品要用展示类tip 星曦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.48, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8638,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19793] =	--哪个物品要用展示类tip 芙瑶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.48, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8707,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21242] =	--哪个物品要用展示类tip  琳琅安歌
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21242,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19788] =	--哪个物品要用展示类tip  时装 百堇蝶尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19788,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21241] =	--哪个物品要用展示类tip 坐骑 乐鼓
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10212,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21264] =	--哪个物品要用展示类tip  连续充值 宠物 蓝丝鼠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10293,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21262] =	--哪个物品要用展示类tip 坐骑 沌仓
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.6, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10275,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21299] =	--哪个物品要用展示类tip  暮画倾颜 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21299,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21297] =	--哪个物品要用展示类tip   限时回馈 坐骑 船夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 0.7, roatate = 80, fov = 60, far = 10, xoffset = -1.0, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10294,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[21300] =	--哪个物品要用展示类tip  限时回馈 时装 半字浅白
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21300,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21301] =	--哪个物品要用展示类tip  限时回馈 翅膀 紫悠幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10197,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21298] =	--哪个物品要用展示类tip 坐骑 灵迅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10316,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21304] =	--哪个物品要用展示类tip 绮丽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10223,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={panel_goldshop = true}
}
item_show_cfg[21306] =	--哪个物品要用展示类tip 坐骑 盗羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =0, fov = 60, far = 50, xoffset = -1.0, yoffset =-2, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10351,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19820] =	--哪个物品要用展示类tip  浩息
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8821,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21308] =	--哪个物品要用展示类tip  风苍羽沫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21308,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21320] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 樱夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.7, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10353,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[21325] =	--哪个物品要用展示类tip  神龙祭祀 时装 银翼飞雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21325,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21327] =	--哪个物品要用展示类tip  神龙祭祀 时装 银翼飞雪（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21326,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21333] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 冰蓝追忆
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10259,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21323] =	--哪个物品要用展示类tip  川夏樱绯 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21323,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21350] =	--哪个物品要用展示类tip 跨服三国志4赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10446,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21351] =	--哪个物品要用展示类tip 跨服三国志4赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10447,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[21352] =	--哪个物品要用展示类tip  跨服三国志4赛季时装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21324,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21335] =	--哪个物品要用展示类tip  连续充值 宠物 如风
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10424,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21364] =	--哪个物品要用展示类tip 翅膀 流光之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10266,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true}
}
item_show_cfg[21365] =	--哪个物品要用展示类tip  龙争虎斗二十五赛季 秘境幽蝶 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10489,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21366] =	--哪个物品要用展示类tip   龙争虎斗二十五赛季宠物 二白
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10488,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21362] =	--哪个物品要用展示类tip   龙争虎斗二十五赛季坐骑 雷默
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.8, yoffset = -3, zoffset = 11.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10487,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21385] =	--哪个物品要用展示类tip  20220421商城大促
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21385,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21384] =	--哪个物品要用展示类tip 坐骑 凉夏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =80, fov = 60, far = 70, xoffset = -1.3, yoffset =-2.4, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10406,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21406] =	--哪个物品要用展示类tip  蓝隐安歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21406,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21403] =	--哪个物品要用展示类tip 甲克·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.8, yoffset = -3, zoffset = 11.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10501,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21405] =	--哪个物品要用展示类tip 坐骑 轻风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =0, fov = 60, far = 50, xoffset = -1.0, yoffset =-2, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10407,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21413] =	--哪个物品要用展示类tip   限时回馈 坐骑 焙烈
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.7, roatate =25, fov = 60, far = 50, xoffset = -1.2, yoffset =-2, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10425,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[21416] =	--哪个物品要用展示类tip  限时回馈 时装 君欣若白
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21416,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21419] =	--哪个物品要用展示类tip  限时回馈 翅膀 海蛎幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10350,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21420] =	--哪个物品要用展示类tip  商城翅膀 仙境幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10352,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21415] =	--哪个物品要用展示类tip  安流绯妙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21415,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[19894] =	--哪个物品要用展示类tip 坐骑 犴裔
{
	panels ={			
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8851,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21429] =	--哪个物品要用展示类tip  齐光琉荧
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21429,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true},
}
item_show_cfg[21428] =	--哪个物品要用展示类tip 坐骑 霄云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =15, fov = 60, far = 70, xoffset = -1.5, yoffset =-2.6, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10484,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21449] =	--哪个物品要用展示类tip 端午节排行榜雪陌·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.8, yoffset = -3, zoffset = 11.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10556,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21451] =	--哪个物品要用展示类tip  商城翅膀 珠玉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10394,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21458] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 陌上
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.7, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10486,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[21460] =	--哪个物品要用展示类tip  神龙祭祀 时装 雅洁羽落
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21460,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21464] =	--哪个物品要用展示类tip  神龙祭祀 时装 雅洁羽落（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21463,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21453] =	--哪个物品要用展示类tip  神龙祭祀 翅膀 青葫幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10395,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21459] =	--哪个物品要用展示类tip  湮墨菁菁 蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21459,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21473] =	--哪个物品要用展示类tip  星娱记泽
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21473,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21472] =	--哪个物品要用展示类tip 坐骑 玉姬
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =0, fov = 60, far = 50, xoffset = -1.0, yoffset =-2, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10502,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21488] =	--哪个物品要用展示类tip  连续充值 宠物 阿维二型
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10553,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21498] =	--哪个物品要用展示类tip 坐骑 梦霞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =15, fov = 60, far = 70, xoffset = -1.5, yoffset =-2.6, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10525,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18552] =	--哪个物品要用展示类tip 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7333,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[18671] =	--哪个物品要用展示类tip 青雀舫·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1.4, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -3.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7494,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[18702] =	--哪个物品要用展示类tip 覆湮·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.2, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7513,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21516] =	--哪个物品要用展示类tip 冬泉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10445,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21507] =	--哪个物品要用展示类tip  蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21507,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21501] =	--哪个物品要用展示类tip   限时回馈 坐骑 擎宇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1.7, roatate =25, fov = 60, far = 50, xoffset = -1.2, yoffset =-2, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10558,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true},
}
item_show_cfg[21508] =	--哪个物品要用展示类tip  限时回馈 时装 南风思源
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21508,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21517] =	--哪个物品要用展示类tip  限时回馈 翅膀 耀阳幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10456,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21502] =	--哪个物品要用展示类tip 坐骑 仔仔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =0, fov = 60, far = 50, xoffset = -1.0, yoffset =-2, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10557,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21540] =	--哪个物品要用展示类tip  龙争虎斗二十六赛季 火瑰幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10651,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21524] =	--哪个物品要用展示类tip   龙争虎斗二十六赛季宠物 小墨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10649,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21503] =	--哪个物品要用展示类tip   龙争虎斗二十刘赛季坐骑 赤焰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate = 65, fov = 60, far = 12, xoffset = -1.8, yoffset = -3, zoffset = 11.0},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10632,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21540] =	--哪个物品要用展示类tip  龙争虎斗二十六赛季 火瑰幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10651,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21505] =	--哪个物品要用展示类tip 坐骑 盗风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =15, fov = 60, far = 70, xoffset = -1.5, yoffset =-2.6, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10581,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19923] =	--哪个物品要用展示类tip 初晓
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.7, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8921,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19931] =	--哪个物品要用展示类tip 岚茉熙云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19931,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21510] =	--哪个物品要用展示类tip 岚茉熙云
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21510,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21546] =	--哪个物品要用展示类tip 跨服三国志5赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10629,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21547] =	--哪个物品要用展示类tip 跨服三国志5赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10652,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[21548] =	--哪个物品要用展示类tip  跨服三国志5赛季时装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21509,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21574] =	--哪个物品要用展示类tip 商城翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10524,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,},
}
item_show_cfg[21577] =	--哪个物品要用展示类tip   七夕排行榜坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10680,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,},
}
item_show_cfg[21602] =	--哪个物品要用展示类tip  蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21602,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21612] =	--哪个物品要用展示类tip 神龙祭祀翅膀  翼斩幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10526,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21598] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 翠逸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.7, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 7.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10609,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[21600] =	--哪个物品要用展示类tip  神龙祭祀 时装 淡画卿颜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21600,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21611] =	--哪个物品要用展示类tip  神龙祭祀 时装 淡画卿颜（限时礼包）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21601,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true},
}
item_show_cfg[21610] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21610,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21603] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21603,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21604] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21604,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21605] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21605,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21606] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21606,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21607] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21607,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21608] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21608,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21609] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21609,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21619] =	--哪个物品要用展示类tip 坐骑 子懿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1.3, roatate =0, fov = 60, far = 50, xoffset = -1.3, yoffset =-2, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10630,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21620] =	--哪个物品要用展示类tip  嫣轻羽陌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21620,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19938] =	--哪个物品要用展示类tip  汐灵 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.8, roatate = 60, fov = 55, far = 15, xoffset = -1.7, yoffset = -4, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8947,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[18510] =	--哪个物品要用展示类tip  战魂
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7318,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21626] =	--哪个物品要用展示类tip  连续充值 宠物 小荔枝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10758,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21623] =	--哪个物品要用展示类tip 坐骑 蟹堡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1.5, roatate =15, fov = 60, far = 70, xoffset = -1.5, yoffset =-2.6, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10679,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21646] =	--哪个物品要用展示类tip 商城翅膀 绿蝶幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_goldshop = true,
			panel_ceremony = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10575,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21656] =	--哪个物品要用展示类tip 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.5, roatate =15, fov = 60, far = 70, xoffset = -1.5, yoffset =-2.6, zoffset = 9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10797,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21647] =	--哪个物品要用展示类tip  蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21647,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21650] =	--哪个物品要用展示类tip  中秋节夏末微风
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21650,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21657] =	--哪个物品要用展示类tip  中秋节夏末微风3天
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21651,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[21658] =	--哪个物品要用展示类tip  中秋节夏末微风7天
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21652,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[20024] =	--哪个物品要用展示类tip 坐骑 觅旅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.65, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8979,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21661] =	--哪个物品要用展示类tip  菁英
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21661,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[21663] =	--哪个物品要用展示类tip 坐骑 极鲜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-4.5, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10740,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21667] =	--哪个物品要用展示类tip   限时回馈 坐骑 乐台
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_npcshop = true,
				panel_gift = true
			},
	view = {scale = 1, roatate =25, fov = 60, far = 50, xoffset = -1.6, yoffset =-2.7, zoffset = 6.7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10739,			--若是坐骑宠物则填模型id	
	bind = {panel_gift = true},
}
item_show_cfg[21664] =	--哪个物品要用展示类tip  限时回馈 时装 南风思源
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 21664,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true},
}
item_show_cfg[21665] =	--哪个物品要用展示类tip  限时回馈 翅膀 耀阳幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10582,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21669] =	--哪个物品要用展示类tip 坐骑 啸天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 2, roatate =60, fov = 60, far = 70, xoffset = -2, yoffset =-2.6, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10702,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21685] =	--哪个物品要用展示类tip 坐骑 横舟·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_limitlottery = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.6, roatate =60, fov = 60, far = 70, xoffset = -2, yoffset =-4, zoffset = 8.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10808,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21687] =	--哪个物品要用展示类tip 坐骑 衔芝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.1, yoffset =-1.1, zoffset = 5.78},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10762,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21691] =	--哪个物品要用展示类tip  翅膀 诡衣幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10628,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,panel_goldshop = true},
}
item_show_cfg[21694] =	--哪个物品要用展示类tip  消防员
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21694,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[21701] =	--哪个物品要用展示类tip  秋色热情
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
			panel_ceremony= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21701,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21704] =	--哪个物品要用展示类tip  秋色热情(7天)
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
			panel_ceremony= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21701,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21697] =	--哪个物品要用展示类tip 坐骑 海灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -3.03, yoffset =-3.06, zoffset = 8.93},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10761,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21699] =	--哪个物品要用展示类tip  翅膀 照影幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.3, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10650,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[21698] =	--哪个物品要用展示类tip 坐骑 暴烈
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.74, yoffset =-0.74, zoffset = 4.71},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10809,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21723] =	--哪个物品要用展示类tip   龙争虎斗二十七赛季宠物 阿秋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10811,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21700] =	--哪个物品要用展示类tip  龙争虎斗二十七赛季 均衡幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10810,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true}
}
item_show_cfg[21726] =	--哪个物品要用展示类tip 坐骑 蔚梧
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.11, yoffset =-1.14, zoffset = 6.1},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10741,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21761] =	--哪个物品要用展示类tip 坐骑 灰切
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_npcshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -2.29, yoffset =-2.55, zoffset = 7.72},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10876,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop=true},
}
item_show_cfg[21762] =	--哪个物品要用展示类tip  轻鸿幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10877,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true}
}
item_show_cfg[21763] =	--哪个物品要用展示类tip  小灰狼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21703,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[21728] =	--哪个物品要用展示类tip  逍遥游
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
			panel_goldshop = true,
			panel_ceremony= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21701,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[19991] =	--哪个物品要用展示类tip  白陌莺歌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19991,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21761] =	--哪个物品要用展示类tip 坐骑 灰切
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_npcshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -2.29, yoffset =-2.55, zoffset = 7.72},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10876,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop=true},
}
item_show_cfg[21765] =	--哪个物品要用展示类tip  连续充值 宠物 聪聪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10882,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21801] =	--哪个物品要用展示类tip 坐骑 杰克
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.11, yoffset =-1.16, zoffset = 5.51},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10886,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21802] =	--哪个物品要用展示类tip  风花幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10701,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true}
}

item_show_cfg[21813] =	--哪个物品要用展示类tip 坐骑 帕姆·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10890,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21814] =	--哪个物品要用展示类tip 坐骑 帕姆·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10891,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21809] =	--哪个物品要用展示类tip  瑰丽甜橙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21809,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21808] =	--哪个物品要用展示类tip  幽蓝夜蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21808,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21817] =	--哪个物品要用展示类tip 坐骑 三愿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.06, yoffset =-3.49, zoffset = 6.51},--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10899,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20050] =	--哪个物品要用展示类tip 坐骑 仙羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2.5, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9052,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21818] =	--哪个物品要用展示类tip  不归游
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21818,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21822] =	--哪个物品要用展示类tip  朝憩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21822,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true},
}
item_show_cfg[21823] =	--哪个物品要用展示类tip  阿格幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10703,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true}
}
item_show_cfg[21827] =	--哪个物品要用展示类tip 沃尔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				subpanel_rankinglist = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10925,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true},
}
item_show_cfg[21828] =	--哪个物品要用展示类tip 坐骑 阿飞·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10926,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21829] =	--哪个物品要用展示类tip 坐骑 阿飞·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.7, zoffset = 4.9},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10927,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21831] =	--哪个物品要用展示类tip 坐骑 青风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.18, yoffset =-0.81, zoffset = 5.32},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10826,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[21832] =	--哪个物品要用展示类tip  铁拳幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10759,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true}
}
item_show_cfg[21845] =	--哪个物品要用展示类tip 坐骑 芙蕖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.18, yoffset =-0.81, zoffset = 5.32},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10825,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21846] =	--哪个物品要用展示类tip 坐骑 霸道
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.35, yoffset =-1.81, zoffset = 7.48},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10956,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21842] =	--哪个物品要用展示类tip  绿倚幻化 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10760,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true}
}
item_show_cfg[21835] =	--哪个物品要用展示类tip  花火之约
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21835,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true},
}
item_show_cfg[21836] =	--哪个物品要用展示类tip  纯白恋心
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21836,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21837] =	--哪个物品要用展示类tip  纯白恋心7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21837,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21849] =	--哪个物品要用展示类tip  纯白恋心7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21837,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21850] =	--哪个物品要用展示类tip  秘与迷
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21850,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21852] =	--哪个物品要用展示类tip 坐骑 骸托
{
	panels ={			--这个物品在哪些界面里显示展示类tip 六龙秘宝
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = 0, yoffset =-0.33, zoffset = 3.71},--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10975,			--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[20064] =	--哪个物品要用展示类tip 寻冬
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9072,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21870] =	--哪个物品要用展示类tip 坐骑 远遥·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.93, yoffset =-1, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10982,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true},
}
item_show_cfg[21871] =	--哪个物品要用展示类tip 坐骑 远遥·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.93, yoffset =-1, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10976,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true},
}
item_show_cfg[21872] =	--哪个物品要用展示类tip  焰舞银霜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21872,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21875] =	--哪个物品要用展示类tip  焰舞银霜3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21873,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21876] =	--哪个物品要用展示类tip  焰舞银霜7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21874,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21867] =	--哪个物品要用展示类tip  连续充值 宠物 灵灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10981,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21887] =	--哪个物品要用展示类tip  暗香福蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21887,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21892] =	--哪个物品要用展示类tip   鲸虹
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -4.48, zoffset = 8.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10986,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[21894] =	--哪个物品要用展示类tip   翡瀑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10987,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist= true},
}
item_show_cfg[21895] =	--哪个物品要用展示类tip  冰羽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10995,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true}
}
item_show_cfg[21896] =	--哪个物品要用展示类tip  玉仙幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 10996,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true}
}
item_show_cfg[21897] =	--哪个物品要用展示类tip   龙争虎斗二十八赛季宠物 绿荷
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10994,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[21931] =	--哪个物品要用展示类tip 坐骑 喵车
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.93, yoffset =-1, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11034,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21932] =	--哪个物品要用展示类tip 坐骑 甜甜屋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.2, yoffset =-4, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10902,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21933] =	--哪个物品要用展示类tip 坐骑 蝶纤·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.27, yoffset =-3.79, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11031,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21934] =	--哪个物品要用展示类tip 坐骑 蝶纤·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.27, yoffset =-3.79, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11030,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21935] =	--哪个物品要用展示类tip 坐骑 弘章
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1, yoffset =-3, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11033,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21936] =	--哪个物品要用展示类tip 坐骑 钛钨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11032,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21916] =	--哪个物品要用展示类tip  绫罗紫瑞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21916,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21917] =	--哪个物品要用展示类tip  舞冰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21917,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21919] =	--哪个物品要用展示类tip  葵卯送春
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21919,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21923] =	--哪个物品要用展示类tip  葵卯送春  3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21920,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21924] =	--哪个物品要用展示类tip  葵卯送春  7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21921,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21922] =	--哪个物品要用展示类tip  世家俊杰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21922,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[21944] =	--哪个物品要用展示类tip  葵卯幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11029,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[20115] =	--哪个物品要用展示类tip 坐骑 琉砂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.2, yoffset =-1, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9102,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[20042] =	--哪个物品要用展示类tip  浮生梦蝶 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20042,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19641] =	--哪个物品要用展示类tip  浮生梦蝶 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19641,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21947] =	--哪个物品要用展示类tip 坐骑 油呦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-0.4, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11050,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21948] =	--哪个物品要用展示类tip 坐骑 蓝宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1, yoffset =-0.7, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11051,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[21951] =	--哪个物品要用展示类tip  蓝浪幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11059,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[21952] =	--哪个物品要用展示类tip  祁山之行 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21955,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[21953] =	--哪个物品要用展示类tip 坐骑 蓝宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1, yoffset =-0.7, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11051,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[21984] =	--哪个物品要用展示类tip  半江红
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21984,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[21982] =	--哪个物品要用展示类tip 坐骑 华盖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1, yoffset =-0.7, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11060,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},
}
item_show_cfg[21983] =	--哪个物品要用展示类tip  金绶皇羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11061,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[21978] =	--哪个物品要用展示类tip  东桑（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21980,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[21979] =	--哪个物品要用展示类tip  东桑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21979,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22003] =	--哪个物品要用展示类tip 坐骑 荷棠
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-3.3, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11068,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22004] =	--哪个物品要用展示类tip  圣咏幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11073,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[21987] =	--哪个物品要用展示类tip  连续充值 宠物 蓝蓝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11072,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[22008] =	--哪个物品要用展示类tip 坐骑 陵狩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-0.8, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11074,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[20138] =	--哪个物品要用展示类tip 敖游
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.3, yoffset = -3.4, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9104,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22006] =	--哪个物品要用展示类tip  贵胄游
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22006,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22015] =	--哪个物品要用展示类tip 坐骑 瞬飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1, yoffset =-4, zoffset = 6.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11081,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22016] =	--哪个物品要用展示类tip  温虹幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11084,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22023] =	--哪个物品要用展示类tip  踏青玩偶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22023,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22024] =	--哪个物品要用展示类tip  法兰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22024,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[22025] =	--哪个物品要用展示类tip  冰魄幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11107,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22028] =	--哪个物品要用展示类tip 坐骑 糖姜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.2, yoffset =-4, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11086,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22029] =	--哪个物品要用展示类tip 坐骑 牧灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.8, yoffset =-0.5, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11085,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22034] =	--哪个物品要用展示类tip 坐骑 糖果船
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.1, yoffset =-3.66, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11108,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22035] =	--哪个物品要用展示类tip  华舞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22035,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true,panel_gift = true,panel_ceremony= true},
}
item_show_cfg[22038] =	--哪个物品要用展示类tip 坐骑 大福
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.1, yoffset =-1.5, zoffset = 6.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11127,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22044] =	--哪个物品要用展示类tip 坐骑 枝红
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-3, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11134,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22045] =	--哪个物品要用展示类tip 坐骑 雷龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 0.33, roatate = 70, fov = 20, far = 8.75, xoffset = -0.3, yoffset = 0.35, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11133,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22047] =	--哪个物品要用展示类tip  尺冰幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11143,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22049] =	--哪个物品要用展示类tip  羽柔幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11142,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22050] =	--哪个物品要用展示类tip   龙争虎斗二十九赛季宠物 优飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11141,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[22050] =	--哪个物品要用展示类tip   龙争虎斗二十九赛季宠物 优飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.36, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11141,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true},
}
item_show_cfg[22069] =	--哪个物品要用展示类tip  炽热绿野  202304 蓝色妖姬
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22069,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22071] =	--哪个物品要用展示类tip  机械侠客    勇毅令
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22071,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22102] =	--哪个物品要用展示类tip  机械侠客    勇毅令
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22071,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[21978] =	--哪个物品要用展示类tip  青花浅雨（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 21980,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22070] =	--哪个物品要用展示类tip  青花浅雨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22070,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22093] =	--哪个物品要用展示类tip  青花浅雨(7天)
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22094,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22086] =	--哪个物品要用展示类tip  连续充值 宠物 弹弹
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11172,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[22090] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 熔山
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.4, yoffset =-0.5, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11146,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true},
}
item_show_cfg[22091] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 梅露
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				--panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.6, yoffset =-3.3, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11144,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true},
}
item_show_cfg[22092] =	--哪个物品要用展示类tip   机械虎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11145,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22100] =	--哪个物品要用展示类tip   机械虎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11145,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22098] =	--哪个物品要用展示类tip  衣霞幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11173,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22099] =	--哪个物品要用展示类tip  枭之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11174,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22101] =	--哪个物品要用展示类tip  枭之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11174,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22106] =	--哪个物品要用展示类tip   盘盘   六龙秘宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -0.6, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11175,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22108] =	--哪个物品要用展示类tip  粉樱韶华
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22108,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[19728] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19728,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[20101] =	--哪个物品要用展示类tip  0702商城新时装 炫彩炎夏 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20101,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22112] =	--哪个物品要用展示类tip   烈炎·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.1, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11197,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22113] =	--哪个物品要用展示类tip   烈炎·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.1, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11198,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22114] =	--哪个物品要用展示类tip   柏克
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3, yoffset = -0.8, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11199,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22115] =	--哪个物品要用展示类tip  欢趣炎夏 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22115,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22116] =	--哪个物品要用展示类tip  黄泉之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11205,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22132] =	--哪个物品要用展示类tip   玄礼温服 	蓝色妖姬情人节
{
	panels =
		{	
			--这个物品在哪些界面里显示展示类tip
			subpanel_rankinglist= true,
		},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22132,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true},
}
item_show_cfg[22133] =	--哪个物品要用展示类tip  限时回馈 时装 泰西学士
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22133,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[22136] =	--哪个物品要用展示类tip  锦润霞翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11229,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22139] =	--哪个物品要用展示类tip   风雷
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11206,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true,panel_gift = true},
}
item_show_cfg[22140] =	--哪个物品要用展示类tip   无滑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.7, zoffset = 4.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11207,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true,panel_gift = true},
}
item_show_cfg[22156] =	--哪个物品要用展示类tip   獴呑   六龙秘宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.8, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11231,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[22159] =	--哪个物品要用展示类tip  冰菓净爽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22159,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[19798] =	--哪个物品要用展示类tip 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 19798,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20238] =	--哪个物品要用展示类tip 飞鳐
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 0, fov = 55, far = 10, xoffset = -1.6, yoffset = -3.4, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9233,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}

item_show_cfg[22161] =	--哪个物品要用展示类tip 坐骑 大禄
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.1, yoffset =-1.5, zoffset = 6.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11252,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22177] =	--哪个物品要用展示类tip 坐骑 瓜艇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.7, yoffset =-5, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11258,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22178] =	--哪个物品要用展示类tip  彩花之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11279,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={panel_goldshop = true,subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true}
}
item_show_cfg[22172] =	--哪个物品要用展示类tip  草木精灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22172,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[22173] =	--哪个物品要用展示类tip  草木精灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22173,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true},
}
item_show_cfg[22175] =	--哪个物品要用展示类tip  草木精灵（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22174,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true},
}
item_show_cfg[22198] =	--哪个物品要用展示类tip  连续充值 宠物 飞煌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11282,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[22215] =	--哪个物品要用展示类tip 坐骑 糯香·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-3.5, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11280,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22216] =	--哪个物品要用展示类tip 坐骑 糯香·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.5, yoffset =-3.5, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11281,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_gift=true},
}
item_show_cfg[22217] =	--哪个物品要用展示类tip  触手助手
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11283,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22223] =	--哪个物品要用展示类tip   
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = -60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3.5, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11289,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[22224] =	--哪个物品要用展示类tip  小熊玩偶
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22224,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true},
}
item_show_cfg[22227] =	--哪个物品要用展示类tip   流苏·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = -1.5, yoffset = -1.2, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11308,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[22228] =	--哪个物品要用展示类tip   流苏·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = -1.5, yoffset = -1.2, zoffset = 6},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11309,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22229] =	--哪个物品要用展示类tip  黑衣刀客
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22229,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true,subpanel_rankinglist= true},
}
item_show_cfg[22335] =	--欢乐号
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.4, yoffset = -4.5, zoffset = 7.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11313,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[22337] =	--战狼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11314,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[22338] =	--哪个物品要用展示类tip  点睛幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11322,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22339] =	--哪个物品要用展示类tip  审判幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11321,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22333] =	--哪个物品要用展示类tip  龙争虎斗 宠物 桃桃
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11320,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22348] =	--白葫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -4.5, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11323,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22349] =	--蜗蜗
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = 0, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11324,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22344] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22344,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true,subpanel_rankinglist= true},
}
item_show_cfg[22345] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22345,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true,subpanel_rankinglist= true},
}
item_show_cfg[22350] =	--哪个物品要用展示类tip  深渊邪翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11230,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22352] =	--圣洁
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -0.5, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11346,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22353] =	--哪个物品要用展示类tip    冰雪情缘
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_gift= true,
				panel_ceremony = true,
			},
	view = {scale = 1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 22353,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true,panel_ceremony = true,subpanel_rankinglist= true},
}
item_show_cfg[20296] =	--呑呑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.6, yoffset = -3, zoffset = 11},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9257,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[20141] =	--哪个物品要用展示类tip  0730商城新时装  陌雪兰辞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20141,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19825] =	--哪个物品要用展示类tip  霞月迷尘
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19825,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22356] =	--哪个物品要用展示类tip  积木乐园
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22356,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22358] =	--渡渡
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.3, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11365,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22374] =	--象钟
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11368,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22375] =	--哪个物品要用展示类tip  天马之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11374,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22390] =	--白驼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
				panel_ceremony= true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.15, zoffset = 3.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11391,		--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22391] =	--荷亭
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3.5, zoffset = 6},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11392,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22381] =	--哪个物品要用展示类tip  星际骑士（7天）
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22381,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22382] =	--哪个物品要用展示类tip  星际骑士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22382,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22383] =	--哪个物品要用展示类tip  星际骑士(7天)
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22382,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22380] =	--哪个物品要用展示类tip  凉夏之音
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22380,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22387] =	--哪个物品要用展示类tip  王庭之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11398,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22406] =	--哪个物品要用展示类tip  宠物 瑶花
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11404,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22414] =	--不离·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4.5, zoffset = 7},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11399,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22416] =	--不离·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4.5, zoffset = 7},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11400,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22418] =	--海蕴
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -3.5, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11405,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22419] =	--哪个物品要用展示类tip  皎白羽灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22419,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true,panel_ceremony= true},
}
item_show_cfg[22423] =	--蓝羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_luckyspin3= true,
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -2, yoffset = -2, zoffset = 8},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11424,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_goldshop = true,panel_gift = true},
}
item_show_cfg[22427] =	--血翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_goldshop = true,
		  	},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11427,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22432] =	--血翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
		  	},
	view = {scale = 0.35, roatate = 40, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11427,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[22428] =	--肖怨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -0.3, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11428,		--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true},
}
item_show_cfg[22429] =	--哪个物品要用展示类tip  红山之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11435,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22433] =	--哪个物品要用展示类tip  红山之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11435,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22430] =	--哪个物品要用展示类tip  三翼幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11434,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22431] =	--哪个物品要用展示类tip  深蓝教士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22431,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22434] =	--哪个物品要用展示类tip  深蓝教士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22431,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22437] =	--势至
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.6, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11437,		--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true},
}
item_show_cfg[22438] =	--冰魂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.6, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11436,		--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true},
}
item_show_cfg[22440] =	--哪个物品要用展示类tip  侍星术士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22440,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[22441] =	--哪个物品要用展示类tip  荣勋信使
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22441,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22439] =	--哪个物品要用展示类tip  秋叶幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11459,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22445] =	--翻山
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11479,		--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true},
}
item_show_cfg[22446] =	--哪个物品要用展示类tip  秘法术士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22446,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[22455] =	--种花·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.14, yoffset = -0.81, zoffset = 5},				--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11480,		--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true},
}
item_show_cfg[22456] =	--种花·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist =true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.14, yoffset = -0.81, zoffset = 5},				--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11481,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist =true,panel_npcshop = true},
}
item_show_cfg[22457] =	--绕梁
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3.9, zoffset = 7},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11460,		--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true},
}
item_show_cfg[22463] =	--蒲卢
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				panel_ceremony = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -2.8, zoffset = 8},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11489,		--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22465] =	--恣意
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
		  	},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11490,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22466] =	--哪个物品要用展示类tip  橄榄球
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
				panel_ceremony = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22466,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[22492] =	--哪个物品要用展示类tip  橄榄球
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
				panel_ceremony = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22466,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[22467] =	--哪个物品要用展示类tip  机灵猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
				subpanel_rankinglist = true ,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22467,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[22489] =	--哪个物品要用展示类tip  边缘幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11508,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22490] =	--哪个物品要用展示类tip  崇凰幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11509,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22491] =	--哪个物品要用展示类tip  夜之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11510,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22487] =	--哪个物品要用展示类tip  龙争虎斗 宠物 雪絮
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11507,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22494] =	--童谣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.6, zoffset = 5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11521,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22495] =	--哪个物品要用展示类tip  迷离小猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_npcshop = true,
				panel_gift = true,
				subpanel_rankinglist = true ,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22495,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true,panel_gift=true},
}
item_show_cfg[20438] =	--披霞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1.5, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3.2, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9499,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20200] =	--哪个物品要用展示类tip  湮华落梦
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20200,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19921] =	--哪个物品要用展示类tip  蜜玄西洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19921,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22499] =	--闪耀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3.8, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11541,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22500] =	--神宓
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.88, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11540,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22515] =	--哪个物品要用展示类tip  龙争虎斗 宠物 雪絮
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11545,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22519] =	--沙之王
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.56, yoffset = -0.8, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11546,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22520] =	--哪个物品要用展示类tip  刃羽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11549,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true}
}
item_show_cfg[22539] =	--凰尊·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.33, yoffset = -4.81, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11551,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22540] =	--凰尊·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.33, yoffset = -4.81, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11552,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22541] =	--哪个物品要用展示类tip  蜜玄西洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22541,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22542] =	--哪个物品要用展示类tip  蜜玄西洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22542,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22548] =	--地精坦克
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.5, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11560,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22549] =	--哪个物品要用展示类tip  冰雪先锋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22549,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[20457] =	--随风
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -2.4, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9443,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22597] =	--琴香
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -3, zoffset = 3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11604,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22598] =	--如斯·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.71, yoffset = -3.4, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11580,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22599] =	--如斯·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				
				panel_gift = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.71, yoffset = -3.4, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11581,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22600] =	--哪个物品要用展示类tip  风雪沙龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22600,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22604] =	--感恩礼匣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
		  	},
	view = {scale = 1.6, roatate =60, fov = 60, far = 50, xoffset = -1.3, yoffset =-1.9, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10050,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22601] =	--哪个物品要用展示类tip  刃羽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11602,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22606] =	--琴香
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11579,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22607] =	--哪个物品要用展示类tip  炎狱火龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11608,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22616] =	--机械龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.15, yoffset = -2.17, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11609,		--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22617] =	--蓝颜
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.4, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11610,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22613] =	--哪个物品要用展示类tip  芝兰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22613,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22618] =	--哪个物品要用展示类tip  扑克风潮
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22618,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_gift = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22624] =	--哪个物品要用展示类tip  扑克风潮 7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22623,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_gift = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22619] =	--哪个物品要用展示类tip  纤羽幻蝶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11640,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22627] =	--无邪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -0.3, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11642,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22628] =	--哪个物品要用展示类tip  星域异客
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22628,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_gift = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[18874] =	--哪个物品要用展示类tip 坐骑 卿知 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.5, roatate = 15, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 7740,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20242] =	--哪个物品要用展示类tip  花间梨落
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20242,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19495] =	--哪个物品要用展示类tip  幽岚·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8454,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19646] =	--哪个物品要用展示类tip 青韶·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8547,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19525] =	--哪个物品要用展示类tip 居萌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset = -1.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8383,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19685] =	--哪个物品要用展示类tip 莱顿·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8640,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19736] =	--哪个物品要用展示类tip 箜濛·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8710,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[19822] =	--哪个物品要用展示类tip 沐风·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8797,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[22631] =	--菲脂·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11661,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22632] =	--菲脂·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11662,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22633] =	--哪个物品要用展示类tip  圣耀礼装
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				subpanel_rankinglist= true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22633,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22636] =	--哪个物品要用展示类tip  圣耀礼装 3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22634,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22637] =	--哪个物品要用展示类tip  圣耀礼装 7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22635,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22674] =	--朝凤
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.33, yoffset = -4.81, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11666,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22658] =	--哪个物品要用展示类tip  壳儿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11670,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22681] =	--天工
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -2.5, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11693,		--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22682] =	--哪个物品要用展示类tip   海力
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11694,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22699] =	--哪个物品要用展示类tip  松松
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11700,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22683] =	--哪个物品要用展示类tip  黎明之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11550,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22684] =	--哪个物品要用展示类tip  乘风幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11701,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22709] =	--哪个物品要用展示类tip   委屈鸭
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -2, zoffset = 7.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11671,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22710] =	--哪个物品要用展示类tip   蓝奇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11702,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22712] =	--哪个物品要用展示类tip   蓝奇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11702,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22704] =	--哪个物品要用展示类tip  藏蓝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22704,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22705] =	--哪个物品要用展示类tip  华馨居士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22705,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22706] =	--哪个物品要用展示类tip  渺然蓝馨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22706,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22711] =	--哪个物品要用展示类tip  拂花之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11706,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22713] =	--哪个物品要用展示类tip  拂花之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11706,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22714] =	--哪个物品要用展示类tip  渺然蓝馨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22706,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[20494] =	--哪个物品要用展示类tip   青黛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1.3, roatate = 30, fov = 75, far = 10, xoffset = -1.4, yoffset = -3.6, zoffset = 6.3},
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9491,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20280] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20280,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19223] =	--哪个物品要用展示类tip  
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19223,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22716] =	--哪个物品要用展示类tip 鱼饥
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				--panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11709,		--若是坐骑宠物则填模型id
	--bind = {panel_goldshop = true},
}
item_show_cfg[22723] =	--哪个物品要用展示类tip   九白
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -0.4, zoffset = 4.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11707,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22724] =	--哪个物品要用展示类tip   荷寨
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -2, yoffset = -4.4, zoffset = 9.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11708,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22719] =	--哪个物品要用展示类tip  幻想舞步
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22719,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22720] =	--哪个物品要用展示类tip  海湾顽猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22720,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22725] =	--哪个物品要用展示类tip  铜灵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11732,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22728] =	--哪个物品要用展示类tip   馥郁
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -4, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11736,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22729] =	--哪个物品要用展示类tip   翼行·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -4.5, zoffset = 7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11733,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22730] =	--哪个物品要用展示类tip   翼行·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -4.5, zoffset = 7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11734,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22731] =	--哪个物品要用展示类tip   宝泉
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -0.6, zoffset = 4.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11735,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22736] =	--哪个物品要用展示类tip   素白臻心
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22736,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22737] =	--哪个物品要用展示类tip    日落翩翩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22737,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22738] =	--哪个物品要用展示类tip   守时礼服
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22738,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22739] =	--哪个物品要用展示类tip   白银蔷薇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22739,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22740] =	--哪个物品要用展示类tip    恋怜红莲
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22740,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22745] =	--哪个物品要用展示类tip   素白臻心（7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22745,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22746] =	--哪个物品要用展示类tip   素白臻心7天礼包
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22745,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22765] =	--哪个物品要用展示类tip  日落翩翩（3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22765,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22766] =	--哪个物品要用展示类tip  日落翩翩（7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22766,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22767] =	--哪个物品要用展示类tip  日落翩翩（3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22765,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22768] =	--哪个物品要用展示类tip  日落翩翩（7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22766,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22726] =	--哪个物品要用展示类tip   lv222_青辉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11787,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22727] =	--哪个物品要用展示类tip    lv223_绿野之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11788,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[20573] =	--哪个物品要用展示类tip  芳心 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -1.7, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9567,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20069] =	--哪个物品要用展示类tip    青叶粽邑
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20069,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22793] =	--哪个物品要用展示类tip  盛丹
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11793,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22940] =	--哪个物品要用展示类tip  寿司
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11916,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22795] =	--无邪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
		  	},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -0.3, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 11790,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22799] =	--哪个物品要用展示类tip   函谷
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.64, yoffset = -0.69, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11794,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22802] =	--哪个物品要用展示类tip   玛卡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.9, yoffset = -0.4, zoffset = 4.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11798,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22803] =	--哪个物品要用展示类tip    lv225_伏龙之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11801,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22812] =	--哪个物品要用展示类tip   大头
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖/藏宝阁
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7,yoffset = -2.8, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11802,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22810] =	--哪个物品要用展示类tip    赤色警备
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22810,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22813] =	--哪个物品要用展示类tip    幽香隐隐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22813,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22846] =	--哪个物品要用展示类tip   星石
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -4.5, zoffset = 7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11825,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22847] =	--哪个物品要用展示类tip   奇诡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.57, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11824,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22849] =	--哪个物品要用展示类tip    幽香隐隐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22849,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22848] =	--哪个物品要用展示类tip    lv226_魍魉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11846,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22866] =	--哪个物品要用展示类tip   扶摇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.8, yoffset = -3.8, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11848,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22867] =	--哪个物品要用展示类tip   樱飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11847,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22872] =	--哪个物品要用展示类tip   樱飞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.2, yoffset = -2.5, zoffset = 7.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11847,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22868] =	--哪个物品要用展示类tip    lv227 桃花幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11854,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22869] =	--哪个物品要用展示类tip    lv228_樱华幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11855,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22873] =	--哪个物品要用展示类tip    lv228_樱华幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11855,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22863] =	--哪个物品要用展示类tip    静谧教士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22863,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22874] =	--哪个物品要用展示类tip    静谧教士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22863,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22878] =	--哪个物品要用展示类tip   白幽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.55, yoffset = -0.21, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11856,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22879] =	--哪个物品要用展示类tip   灵澜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -1.5, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11857,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22880] =	--哪个物品要用展示类tip   跃崇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11858,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22881] =	--哪个物品要用展示类tip    lv229_邪眼幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11876,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22882] =	--哪个物品要用展示类tip    lv230_彼岸之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11877,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22899] =	--哪个物品要用展示类tip    时尚猫猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22899,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22901] =	--哪个物品要用展示类tip    时尚猫猫
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22900,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22898] =	--哪个物品要用展示类tip  绵绵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11887,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[22911] =	--哪个物品要用展示类tip   大亨
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = 0, zoffset = 3},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11888,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22908] =	--哪个物品要用展示类tip    红蔷浅绽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22908,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22909] =	--哪个物品要用展示类tip    时尚达人
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22909,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[20591] =	--哪个物品要用展示类tip   哮夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 80, fov = 60, far = 10, xoffset = -0.2, yoffset = -0.7, zoffset = 5.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9615,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20587] =	--哪个物品要用展示类tip 坐骑 跃兔
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9613,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[22922] =	--哪个物品要用展示类tip   厨师鸭
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖
				--panel_npcshop = true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -2.5, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11910,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22923] =	--哪个物品要用展示类tip   三柴
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 80, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.25, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11911,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22944] =	--哪个物品要用展示类tip   凤台·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11918,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22945] =	--哪个物品要用展示类tip   凤台·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -3, zoffset = 6.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11919,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22946] =	--哪个物品要用展示类tip   橡樽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -0.45, zoffset = 4.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11917,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22948] =	--哪个物品要用展示类tip    暗魂驭者
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22948,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22947] =	--哪个物品要用展示类tip    lv231_迷梦幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11925,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22951] =	--哪个物品要用展示类tip   鹿柏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.5, yoffset = -4, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11926,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22952] =	--哪个物品要用展示类tip    雪绒花
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22952,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22972] =	--哪个物品要用展示类tip   鳄懵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.55, yoffset = -0.45, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11931,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22973] =	--哪个物品要用展示类tip    跃浪华服
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22973,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22989] =	--哪个物品要用展示类tip   浮舟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.35, yoffset = -4.5, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11950,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22990] =	--哪个物品要用展示类tip   凶象
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.6, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11951,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22991] =	--哪个物品要用展示类tip    夏日才俊
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22991,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22992] =	--哪个物品要用展示类tip    lv232_扑克幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11972,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[22994] =	--哪个物品要用展示类tip   汹汹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.15, yoffset = 0.1, zoffset = 2.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11973,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[22995] =	--哪个物品要用展示类tip    童心真橙
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22995,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[22998] =	--哪个物品要用展示类tip    童心真橙3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22996,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}

item_show_cfg[22999] =	--哪个物品要用展示类tip    童心真橙7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 22997,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23006] =	--哪个物品要用展示类tip   超影·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.6, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11976,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23007] =	--哪个物品要用展示类tip   超影·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.6, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11977,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23008] =	--哪个物品要用展示类tip    lv233_冥河渡羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11981,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[23013] =	--哪个物品要用展示类tip   奥黛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.9, yoffset = -0.1, zoffset = 3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11982,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23018] =	--哪个物品要用展示类tip    lv234_缘心觅羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 11997,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[23014] =	--哪个物品要用展示类tip    寻仙山
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23014,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23017] =	--哪个物品要用展示类tip    寻仙山7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23015,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23016] =	--哪个物品要用展示类tip    斩恶
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23016,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23026] =	--哪个物品要用展示类tip   飘摇
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.55, yoffset = -5.4, zoffset = 9},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12009,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23027] =	--哪个物品要用展示类tip    踏长河
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23027,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[20685] =	--哪个物品要用展示类tip  招喵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.65, roatate = 0, fov = 55, far = 10, xoffset = -1.7, yoffset = -2, zoffset = 9.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9690,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[23034] =	--哪个物品要用展示类tip  乐乐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12032,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23050] =	--哪个物品要用展示类tip   聚星
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.25, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12028,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23051] =	--哪个物品要用展示类tip    边缘骑士
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23051,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23054] =	--哪个物品要用展示类tip   狐枫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -0.5, yoffset = 0.3, zoffset = 2},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12033,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23055] =	--哪个物品要用展示类tip   混沌
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12034,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23056] =	--哪个物品要用展示类tip    lv235_海歌幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12041,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[23057] =	--哪个物品要用展示类tip    lv236_誓约之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},		
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12042,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind={subpanel_rankinglist= true,panel_npcshop = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true},
}
item_show_cfg[23072] =	--哪个物品要用展示类tip  软软
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12040,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23077] =	--哪个物品要用展示类tip  纵马轻骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23077,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true},
}
item_show_cfg[23078] =	--哪个物品要用展示类tip  太空仓鼠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23078,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[23081] =	--哪个物品要用展示类tip   深眠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = -60, fov = 60, far = 10, xoffset = -1.7, yoffset = -4, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12044,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23082] =	--哪个物品要用展示类tip  冰噬
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.8, roatate = 55, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.7, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12043,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[23083] =	--哪个物品要用展示类tip lv237_囚龙幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12050,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[23084] =	--哪个物品要用展示类tip 跨服三国志12赛季坐骑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.8, roatate = 55, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.7, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12043,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[23085] =	--哪个物品要用展示类tip 跨服三国志12赛季翅膀
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12050,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,},
}
item_show_cfg[23086] =	--哪个物品要用展示类tip  跨服三国志12赛季时装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
			panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23078,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true},
}
item_show_cfg[23088] =	--哪个物品要用展示类tip   豹富
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12053,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23089] =	--哪个物品要用展示类tip  时装 遇良晴
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23089,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20704] =	--哪个物品要用展示类tip   瞬影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 55, far = 10, xoffset = -1.2, yoffset = -0.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9719,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[19951] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset = -1.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8958,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[20075] =	--哪个物品要用展示类tip   争渡·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_npcshop = true,
				--panel_limitlottery = true
				panel_goldshop = true,
			},
	view = {scale = 1.4, roatate = 30, fov = 65, far = 90, xoffset = -1.5, yoffset = -3.0, zoffset = 10.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8709,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23092] =	--哪个物品要用展示类tip   莲舟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -2.65, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12073,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23093] =	--哪个物品要用展示类tip   海盗帽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -2.7, zoffset = 3.1},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12072,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23094] =	--哪个物品要用展示类tip  时装 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23094,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23095] =	--哪个物品要用展示类tip  时装 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23095,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23096] =	--哪个物品要用展示类tip 
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12095,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,},
}
item_show_cfg[23113] =	--哪个物品要用展示类tip   雅悦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.55, yoffset = -2.9, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12096,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23114] =	--哪个物品要用展示类tip   英胜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.3, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12097,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23136] =	--哪个物品要用展示类tip  时装 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23135,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23110] =	--哪个物品要用展示类tip  时装 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23110,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23115] =	--哪个物品要用展示类tip lv239_耀晶灵翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12112,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23142] =	--哪个物品要用展示类tip   情长·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -4.0, zoffset = 6.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12122,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23143] =	--哪个物品要用展示类tip   情长·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.3, yoffset = -4.0, zoffset = 6.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12123,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23137] =	--哪个物品要用展示类tip  时装 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23137,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23153] =	--哪个物品要用展示类tip   灵眸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.8, zoffset = 7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12129,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23150] =	--哪个物品要用展示类tip  稻月星辰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23150,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20416] =	--哪个物品要用展示类tip  蜜兔慕昕
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20416,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23152] =	--哪个物品要用展示类tip   聚宝蛙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.33, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12148,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23154] =	--哪个物品要用展示类tip  黑龙战装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23154,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23156] =	--哪个物品要用展示类tip lv240_温霞翎羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12152,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23159] =	--哪个物品要用展示类tip   聪敏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -0.2, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12153,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23174] =	--哪个物品要用展示类tip  小武
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12157,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23175] =	--哪个物品要用展示类tip  清酒苗家
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23175,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23177] =	--哪个物品要用展示类tip   布布
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.4, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12158,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23178] =	--哪个物品要用展示类tip lv241_结缘幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12161,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23196] =	--哪个物品要用展示类tip   飞引
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -2.9, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12164,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23197] =	--哪个物品要用展示类tip   兰舟·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -2.7, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12162,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23198] =	--哪个物品要用展示类tip   兰舟·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -2.7, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12163,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23187] =	--哪个物品要用展示类tip  情鉴
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23187,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23188] =	--哪个物品要用展示类tip  白头吟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23188,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23189] =	--哪个物品要用展示类tip  钢铁雄心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23189,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23200] =	--哪个物品要用展示类tip  钢铁雄心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23199,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23192] =	--哪个物品要用展示类tip lv242_蕉美幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12190,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23204] =	--哪个物品要用展示类tip   公理
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -2.8, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12192,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23202] =	--哪个物品要用展示类tip  天净沙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23202,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20778] =	--哪个物品要用展示类tip   问天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.7, roatate =60, fov = 60, far = 50, xoffset = -0.8, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9813,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20790] =	--哪个物品要用展示类tip   锦湛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -3, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9812,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23207] =	--哪个物品要用展示类tip   熊莽·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -0.2, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12212,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23208] =	--哪个物品要用展示类tip   熊莽·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -0.2, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12213,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23212] =	--哪个物品要用展示类tip   机械豹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12211,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23210] =	--哪个物品要用展示类tip lv243_金玲幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12219,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23225] =	--哪个物品要用展示类tip   海落
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3.7, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12221,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23226] =	--哪个物品要用展示类tip   忠永
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.5	, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12220,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[23218] =	--哪个物品要用展示类tip  活力恋心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23218,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23219] =	--哪个物品要用展示类tip  月桂弥香
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23219,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23233] =	--哪个物品要用展示类tip  月桂弥香7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23220,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23249] =	--哪个物品要用展示类tip  卡萌
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12251,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23227] =	--哪个物品要用展示类tip lv244_煌辉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12191,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23228] =	--哪个物品要用展示类tip lv245_紫鸦灵翅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12239,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23253] =	--哪个物品要用展示类tip   正义号
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -2.7, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12252,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23254] =	--哪个物品要用展示类tip  眷羽锦衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23254,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20403] =	--哪个物品要用展示类tip  眷羽锦衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20403,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23258] =	--哪个物品要用展示类tip   浮鲸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.46, yoffset = -3.89, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12271,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23259] =	--哪个物品要用展示类tip   财财
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.05, yoffset = -3.7, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12272,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23260] =	--哪个物品要用展示类tip  掣电
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12273,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[23281] =	--哪个物品要用展示类tip  掣电
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 0.5, roatate = 60, fov = 25, far = 8.75, xoffset = -0.45, yoffset = -0.3, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12273,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23261] =	--哪个物品要用展示类tip lv246_久久幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12282,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23262] =	--哪个物品要用展示类tip lv247_孟冬幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12283,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23282] =	--哪个物品要用展示类tip lv247_孟冬幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12283,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23263] =	--哪个物品要用展示类tip  山咏水吟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23263,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23283] =	--哪个物品要用展示类tip  山咏水吟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23263,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23278] =	--哪个物品要用展示类tip  方块鸭
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12281,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23285] =	--哪个物品要用展示类tip   狸狸
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -0.36, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12284,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23286] =	--哪个物品要用展示类tip lv248_顽骨之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12287,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23303] =	--哪个物品要用展示类tip   天河·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.87, yoffset = -2.88, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12288,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23304] =	--哪个物品要用展示类tip   天河·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.87, yoffset = -2.88, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12289,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23305] =	--哪个物品要用展示类tip  山咏水吟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23305,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23316] =	--哪个物品要用展示类tip   卡丁
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.64, yoffset = -0.44, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12295,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23317] =	--哪个物品要用展示类tip   风灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.69, yoffset = -0.13, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12294,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23312] =	--哪个物品要用展示类tip  烈火红颜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23312,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23313] =	--哪个物品要用展示类tip  浮羽绫纱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23313,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23318] =	--哪个物品要用展示类tip lv249_裁决之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12319,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23331] =	--哪个物品要用展示类tip   万碗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3.1, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12320,		--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23334] =	--哪个物品要用展示类tip   万碗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3.1, zoffset = 3.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12320,		--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20821] =	--哪个物品要用展示类tip 坐骑 若竹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.6, roatate =60, fov = 60, far = 50, xoffset = -1.2, yoffset =-2.28, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9782,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[23333] =	--哪个物品要用展示类tip  浮羽绫纱
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23333,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23337] =	--哪个物品要用展示类tip   龙城·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 60, far = 10, xoffset = -1.54, yoffset = -3.5, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12339,		--若是坐骑宠物则填模型id
--	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23338] =	--哪个物品要用展示类tip   龙城·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 60, far = 10, xoffset = -1.54, yoffset = -3.5, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,			--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12340,		--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23341] =	--哪个物品要用展示类tip 坐骑 帕姆·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -1.27, yoffset =-3.79, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11030,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23344] =	--哪个物品要用展示类tip 坐骑 饮月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.74, yoffset =-0.09, zoffset = 3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12344,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23345] =	--哪个物品要用展示类tip 坐骑 疏雪
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 70, xoffset = -0.7, yoffset =-0.2, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12343,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23347] =	--哪个物品要用展示类tip  探岳泯风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23347,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23348] =	--哪个物品要用展示类tip  探岳泯风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23348,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23352] =	--哪个物品要用展示类tip  探岳泯风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23348,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23346] =	--哪个物品要用展示类tip lv250_不息之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12359,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[20894] =	--哪个物品要用展示类tip 坐骑 明镜 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1.6, roatate = 30, fov = 75, far = 10, xoffset = -2.2, yoffset = -4.0, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9936,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[23358] =	--哪个物品要用展示类tip  夜露冷
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23358,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23359] =	--哪个物品要用展示类tip  紫萼千蕊
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23359,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23361] =	--哪个物品要用展示类tip 坐骑 探星
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.78, yoffset =-2.83, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12369,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23364] =	--哪个物品要用展示类tip 坐骑 千里·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.36, yoffset =-3, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12391,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23365] =	--哪个物品要用展示类tip 坐骑 千里·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.36, yoffset =-3, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12392,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23366] =	--哪个物品要用展示类tip  幽邃
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23366,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23367] =	--哪个物品要用展示类tip  幽邃7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23367,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23373] =	--哪个物品要用展示类tip  幽邃7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23367,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23364] =	--哪个物品要用展示类tip 坐骑 文殊
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.23, yoffset =-0.54, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12396,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23388] =	--哪个物品要用展示类tip  莎莎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12401,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23392] =	--哪个物品要用展示类tip lv251_刀锋之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12402,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23364] =	--哪个物品要用展示类tip 坐骑 镇海
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.64, yoffset =-0.14, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12403,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23407] =	--哪个物品要用展示类tip 坐骑 雪祈
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -1.31, yoffset =-3.98, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12406,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23408] =	--哪个物品要用展示类tip 坐骑 蛮驰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = -0.34, yoffset =-0.19, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12405,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23409] =	--哪个物品要用展示类tip 坐骑 广厦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12407,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23400] =	--哪个物品要用展示类tip  澄心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23400,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23401] =	--哪个物品要用展示类tip  清影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23401,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23402] =	--哪个物品要用展示类tip lv252_蛊惑之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12436,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23403] =	--哪个物品要用展示类tip lv253_渊沼幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12435,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23426] =	--哪个物品要用展示类tip  软软
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12434,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23433] =	--哪个物品要用展示类tip 坐骑 晶异虫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate =30, fov = 60, far = 10, xoffset = -1.14, yoffset =-3.69, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12437,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_goldshop = true,subpanel_rankinglist= true},
}
item_show_cfg[23434] =	--哪个物品要用展示类tip  潜夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12438,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23437] =	--哪个物品要用展示类tip  潜夜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12438,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23436] =	--哪个物品要用展示类tip lv251_冥蛾羽翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12461,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23438] =	--哪个物品要用展示类tip lv251_冥蛾羽翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12461,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23429] =	--哪个物品要用展示类tip  骄阳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23429,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23439] =	--哪个物品要用展示类tip  骄阳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23429,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23428] =	--哪个物品要用展示类tip  白梅香
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23428,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23427] =	--哪个物品要用展示类tip  南瓜童子
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23427,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23445] =	--哪个物品要用展示类tip  勇哈·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.57, yoffset = -0.14, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12463,			--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23446] =	--哪个物品要用展示类tip  勇哈·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.57, yoffset = -0.14, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12464,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23447] =	--哪个物品要用展示类tip  甜牛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.67, yoffset = -0.16, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12465,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23448] =	--哪个物品要用展示类tip  蝠烈
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -0.76, yoffset = -3.05, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12462,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23449] =	--哪个物品要用展示类tip  石乐乐
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.76, yoffset = -0.15, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12466,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23452] =	--哪个物品要用展示类tip lv252_蛊惑之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12478,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23435] =	--哪个物品要用展示类tip  飞石
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.67, yoffset = -0.41, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12480,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23465] =	--哪个物品要用展示类tip  甜心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23465,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23466] =	--哪个物品要用展示类tip  弄潮海盗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23466,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20506] =	--哪个物品要用展示类tip  弄潮海盗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20506,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23484] =	--哪个物品要用展示类tip  寻蜜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.25, yoffset = -0.49, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12502,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23485] =	--哪个物品要用展示类tip lv256_秩序之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12507,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23500] =	--哪个物品要用展示类tip  玫瑰精
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12506,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23502] =	--哪个物品要用展示类tip  折冠
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -0.78, yoffset = -3.08, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12508,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23507] =	--哪个物品要用展示类tip  伏土
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.69, yoffset = -0.2, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12512,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23508] =	--哪个物品要用展示类tip lv257_灵塑之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12515,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23515] =	--哪个物品要用展示类tip  勇气号
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.4, yoffset = -4.33, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12537,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23510] =	--哪个物品要用展示类tip  赤金龙纹
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23510,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23511] =	--哪个物品要用展示类tip  天苍苍
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23511,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20992] =	--哪个物品要用展示类tip  白瑜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset = -1.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 10049,		--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20540] =	--哪个物品要用展示类tip  赤堇茉璃
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20540,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20161] =	--哪个物品要用展示类tip   神龙祭祀 坐骑 鱼美
{
	panels ={			--这个物品在哪些界面里显示展示类tip 神龙祭祀
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,

			},
	view = {scale = 0.7, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset = -1.3, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9173,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[20182] =	--哪个物品要用展示类tip 湍君·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.33, roatate = 60, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9235,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20221] =	--  绘池·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_luckyspin3= true,
				panel_goldshop = true,
				panel_npcshop = true,
		  	},
	view = {scale = 1, roatate = 30, fov = 65, far = 10, xoffset = -1.2, yoffset = -3.0, zoffset = 7.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9234,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20252] =	--哪个物品要用展示类tip  长明·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.75, roatate = 15, fov = 55, far = 10, xoffset = -1.1, yoffset = -1.2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9202,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20354] =	--潮兮·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				subpanel_rankinglist = true,
				panel_npcshop = true,
		  	},
	view = {scale = 0.6, roatate = 60, fov = 40, far = 8.75, xoffset = -0.8, yoffset = -0.3, zoffset = 6.0},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,			--若是翅膀则填翅膀模型id
	normalModel = 9356,		--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[20390] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.7, roatate = 45, fov = 60, far = 30, xoffset = -1.4, yoffset = -1.8, zoffset = 6.3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9416,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[20409] =	--哪个物品要用展示类tip 辉夜·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1.5, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9467,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20497] =	--哪个物品要用展示类tip 枕泉·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.5, roatate = 30, fov = 60, far = 12, xoffset = -1.0, yoffset = -2, zoffset = 10.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9535,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23518] =	--哪个物品要用展示类tip  棘刺
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -0.78, yoffset = -0.26, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12539,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23519] =	--哪个物品要用展示类tip  通灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.36, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12538,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23520] =	--哪个物品要用展示类tip  雁南归
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23520,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23521] =	--哪个物品要用展示类tip lv256_无狱幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12560,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23525] =	--哪个物品要用展示类tip  摧城
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.33, yoffset = -1.46, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12561,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23526] =	--哪个物品要用展示类tip  玄墨
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23526,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23529] =	--哪个物品要用展示类tip  摩罗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -0.85, yoffset = -0.77, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12564,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23531] =	--哪个物品要用展示类tip  山雀
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.08, yoffset = -2.12, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12565,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23532] =	--哪个物品要用展示类tip lv257_羽落幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12572,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23533] =	--哪个物品要用展示类tip lv258_叶落幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12573,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23548] =	--哪个物品要用展示类tip  小书包
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12571,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23556] =	--哪个物品要用展示类tip  恶王座
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.66, yoffset = -4.38, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12574,			--若是坐骑宠物则填模型id
--	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23559] =	--哪个物品要用展示类tip  海驰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -1.5	, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12575,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23560] =	--哪个物品要用展示类tip lv259_紫羽幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12583,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23561] =	--哪个物品要用展示类tip  墨龙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23551,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23550] =	--哪个物品要用展示类tip   炽恋魔导
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23550,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23557] =	--哪个物品要用展示类tip   海驰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				--panel_npcshop = true,
				panel_limitlottery = true
			},
	view = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -1.5	, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12575,			--若是坐骑宠物则填模型id
	--bind = {panel_npcshop = true},
}
item_show_cfg[23564] =	--哪个物品要用展示类tip  探索号
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.35, yoffset = -3.63, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12585,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23565] =	--哪个物品要用展示类tip  金风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.44, yoffset = -2.36, zoffset = 7},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12584,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23566] =	--哪个物品要用展示类tip   穿柳射羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23566,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[20575] =	--哪个物品要用展示类tip   红锦南鸢
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20575,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23587] =	--哪个物品要用展示类tip  饮风·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -2.79, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12607,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23588] =	--哪个物品要用展示类tip  饮风·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -2.79, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12608,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23589] =	--哪个物品要用展示类tip  伐木
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.86, yoffset = -0.41, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12606,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23583] =	--哪个物品要用展示类tip  木呆呆
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12619,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[23590] =	--哪个物品要用展示类tip lv262_灵心化羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12617,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23591] =	--哪个物品要用展示类tip   和风飘絮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23591,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23598] =	--哪个物品要用展示类tip  影翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3.48, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12621,			--若是坐骑宠物则填模型id
--	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23599] =	--哪个物品要用展示类tip  摩云
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -1, yoffset = -3.32, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12620,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[23602] =	--哪个物品要用展示类tip lv263_浪涛跃舞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12643,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[23600] =	--哪个物品要用展示类tip   玄霜侠影
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23600,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[23601] =	--哪个物品要用展示类tip   霞光灵衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 23601,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24235] =	--哪个物品要用展示类tip  振翅
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.52, yoffset = -3.68, zoffset = 6.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12646,			--若是坐骑宠物则填模型id
--	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24236] =	--哪个物品要用展示类tip   天祈玉珏
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24236,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[13923] =	--哪个物品要用展示类tip   青龙之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 0.3, roatate = -45, fov = 20, far = 8.75, xoffset = -0.4, yoffset = 0.35, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4519,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[21136] =	--哪个物品要用展示类tip   雪媚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 1.6, roatate = 45, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10148,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24238] =	--哪个物品要用展示类tip   微微暖
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				-- panel_nationtransfer = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.12, yoffset = -0.78, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12665,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24239] =	--哪个物品要用展示类tip   深海遗族
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24239,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24240] =	--哪个物品要用展示类tip   深海遗族
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24239,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24243] =	--哪个物品要用展示类tip  唤灵·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -0.31, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12684,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24244] =	--哪个物品要用展示类tip  唤灵·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -0.31, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12685,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24250] =	--哪个物品要用展示类tip    探索先锋
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24250,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24251] =	--哪个物品要用展示类tip    探索先锋3天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24253,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}

item_show_cfg[24252] =	--哪个物品要用展示类tip    探索先锋7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24254,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24258] =	--哪个物品要用展示类tip  霖柯
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.21, yoffset = -1.45, zoffset = 8},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12929,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24259] =	--哪个物品要用展示类tip    心愿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24259,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24261] =	--哪个物品要用展示类tip    心愿7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24260,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24262] =	--哪个物品要用展示类tip lv264_朱玉幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12943,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24268] =	--哪个物品要用展示类tip  凝心
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.78, yoffset = -2.79, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12953,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24272] =	--哪个物品要用展示类tip lv265_亵渎之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 12959,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24269] =	--哪个物品要用展示类tip    南华绛羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24269,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24291] =	--哪个物品要用展示类tip  追月
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.45, yoffset = -2.45, zoffset = 3},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12960,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24292] =	--哪个物品要用展示类tip    盘蛇
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24292,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[21146] =	--哪个物品要用展示类tip 赤嫣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -2.4, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10177,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20663] =	--哪个物品要用展示类tip  圣浅蜂璃
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20663,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24309] =	--哪个物品要用展示类tip 龙宫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.39, yoffset = -3.55, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 12985,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true},
}
item_show_cfg[24310] =	--哪个物品要用展示类tip  珊瑚心愿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24310,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24311] =	--哪个物品要用展示类tip  珊瑚心愿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24310,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24307] =	--哪个物品要用展示类tip  木木
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13005,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[24366] =	--哪个物品要用展示类tip  飞菲
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13016,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[24343] =	--哪个物品要用展示类tip  独行
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				subpanel_rankinglist= true,
			},
	view = {scale = 1.4, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2, zoffset = 7.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13008,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_goldshop = true},
}
item_show_cfg[24341] =	--哪个物品要用展示类tip  栖梧·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 28, fov = 60, far = 10, xoffset = -1.47, yoffset = -2.49, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13006,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24342] =	--哪个物品要用展示类tip  栖梧·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 28, fov = 60, far = 10, xoffset = -1.47, yoffset = -2.49, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13007,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24344] =	--哪个物品要用展示类tip  杏花微雨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24344,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24350] =	--哪个物品要用展示类tip lv266_典雅羽翅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13018,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24351] =	--哪个物品要用展示类tip lv267_灵视幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13017,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24371] =	--哪个物品要用展示类tip  烟渺
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.22, yoffset = -3.12, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13019,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24372] =	--哪个物品要用展示类tip  玉衡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.05, yoffset = -3.44, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13020,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24373] =	--哪个物品要用展示类tip lv268_劫阳幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13044,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24374] =	--哪个物品要用展示类tip  观星学者
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24374,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24375] =	--哪个物品要用展示类tip  白山
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24375,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24380] =	--哪个物品要用展示类tip  舞水
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.74, yoffset = -3.19, zoffset = 6},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13045,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24381] =	--哪个物品要用展示类tip   渊火
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.8, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13046,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[24382] =	--哪个物品要用展示类tip  风吟
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24382,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24383] =	--哪个物品要用展示类tip  不归
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24384] =	--哪个物品要用展示类tip lv269_统御之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13068,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24385] =	--哪个物品要用展示类tip  渊火
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3 = true,
				subpanel_rankinglist= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				panel_gift=true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.8, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13046,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,subpanel_rankinglist= true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24386] =	--哪个物品要用展示类tip lv269_统御之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13068,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24387] =	--哪个物品要用展示类tip  不归
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_luckyspin3 = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_goldshop = true,
				panel_ceremony= true,
				panel_gift = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24383,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony= true,panel_gift = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[21195] =	--哪个物品要用展示类tip 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.8, roatate =60, fov = 60, far = 70, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10265,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20500] =	--哪个物品要用展示类tip 千钧·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				panel_npcshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.4, roatate =60, fov = 60, far = 70, xoffset = -1.3, yoffset =-0.9, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9536,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[20661] =	--哪个物品要用展示类tip   吟溪·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_npcshop = true,
			},
	view = {scale = 2, roatate = 45, fov = 60, far = 20, xoffset = -1.8, yoffset =-2.4, zoffset = 9},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9773,			--若是坐骑宠物则填模型id
	bind={panel_npcshop = true,subpanel_rankinglist= true}
}
item_show_cfg[20844] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 15, fov = 60, far = 30, xoffset = -1.4, yoffset = -2.8, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9873,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[20604] =	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 15, fov = 60, far = 30, xoffset = -1.4, yoffset = -2.8, zoffset = 6.3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 9646,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24393] =	  --转转
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 30, xoffset = -0.79, yoffset = -3.08, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13070,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24394] =	--哪个物品要用展示类tip  杏花微雨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24391,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24391] =	--哪个物品要用展示类tip  杏花微雨
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24391,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24396] =	  --游芯
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.67, yoffset = -2.9, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13094,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24397] =	--哪个物品要用展示类tip lv270_紫晶魔翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13097,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24414] =	  --晶槎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -0.74, yoffset = -3, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13098,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24415] =	  --戏彩
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1, yoffset = -2.6, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13099,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24416] =	--哪个物品要用展示类tip  琼枝仙袂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24416,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24417] =	--哪个物品要用展示类tip  琼枝仙袂7D
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24417,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24418] =	--哪个物品要用展示类tip  琼枝仙袂7D
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24417,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24419] =	--哪个物品要用展示类tip lv271_冰蓝灵翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13120,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[13924] =	--哪个物品要用展示类tip 白虎之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4520,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},	
}
item_show_cfg[24492] =	  --喵喵饭
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -3, zoffset = 4},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13279,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24489] =	--哪个物品要用展示类tip  蓝烟絮
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24489,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24490] =	--哪个物品要用展示类tip  楼兰影
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24490,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[19750] =	--哪个物品要用展示类tip  	
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 19750,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24712] =	  --机械猪
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.62, yoffset = -2.78, zoffset = 3},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13281,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24713] =	--哪个物品要用展示类tip  	  玄素丹裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24713,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24715] =	--哪个物品要用展示类tip  	  玄素丹裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24713,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24729] =	  --墨影·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.33, yoffset = 0, zoffset = 3.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13305,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24730] =	  --墨影·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,

			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.33, yoffset = 0, zoffset = 3.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13306,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24742] =	  --诡愿
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
				panel_gift=true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.89, yoffset = -2.85, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13346,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24743] =	  --饭宝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.76, yoffset = -2.8, zoffset = 4.5},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13347,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24744] =	--哪个物品要用展示类tip  	  素风逐光
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24744,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24739] =	--哪个物品要用展示类tip lv272_魔纹诡翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13371,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24745] =	--哪个物品要用展示类tip lv273_双凰叠羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13372,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24746] =	--哪个物品要用展示类tip lv274_珠翠夜霞
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13373,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24759] =	  --甜品车
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.27, yoffset = -0.82, zoffset = 6},			--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13424,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24760] =	--哪个物品要用展示类tip  	  霜翎玉裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24760,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24761] =	--哪个物品要用展示类tip  	  冰澜锦裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24761,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[21290] =	  --凌霄
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 30, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10282,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24780] =	  --大蜂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -3.0, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13447,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24781] =	--哪个物品要用展示类tip   阿叽
{
	panels ={			--这个物品在哪些界面里显示展示类tip 藏宝阁
				--panel_npcshop = true,
				panel_goldshop = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.2, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13448,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24798] =	--哪个物品要用展示类tip  紫灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13470,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[24782] =	--哪个物品要用展示类tip  	  墨樱狐韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24782,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24799] =	--哪个物品要用展示类tip  	  墨樱狐韵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24782,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24783] =	--哪个物品要用展示类tip lv275_星河织羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13471,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24818] =	--哪个物品要用展示类tip lv276_神枢幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13503,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24809] =	  --星轿·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.9, yoffset = -1.49, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13475,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24810] =	  --星轿·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.9, yoffset = -1.49, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13476,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24811] =	  --棱星·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.74, yoffset = -3.19, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13473,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24812] =	  --棱星·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.74, yoffset = -3.19, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13474,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24813] =	  --魔法兔
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.29, yoffset = -4.13, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13472,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24814] =	--哪个物品要用展示类tip  	  湛蓝星宴
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24814,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24827] =	--哪个物品要用展示类tip  	  碧叶灵绡
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24815,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24815] =	--哪个物品要用展示类tip  	  碧叶灵绡
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24815,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24816] =	--哪个物品要用展示类tip  	  黑羽炽光
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24816,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24817] =	--哪个物品要用展示类tip  	  雪狐金翎
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24817,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24841] =	  --金狮
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.12, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13510,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24842] =	  --狻猊
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.78, yoffset = -0.37, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13509,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24843] =	  --朝凰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -2.15, yoffset = -3, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13508,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24843] =	  --朝凰
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = -2.15, yoffset = -3, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13508,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24844] =	  --十年
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.63, yoffset = -0.34, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13506,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24845] =	  --莲屏
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.71, yoffset = -2.72, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13507,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24846] =	  --藏宝阁当期坐骑彩票
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.06, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13996,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24874] =	  --劈风
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.59, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13516,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,panel_ceremony = true},	
}
item_show_cfg[24869] =	--哪个物品要用展示类tip  雪绒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13544,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[24875] =	--哪个物品要用展示类tip 飞镰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13517,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24876] =	--哪个物品要用展示类tip lv276_幻牌魔翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13534,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24870] =	--哪个物品要用展示类tip  	  花月谣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24870,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24871] =	--哪个物品要用展示类tip  	  赤霄玄衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24871,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[24878] =	--哪个物品要用展示类tip 飞镰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13517,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24879] =	--哪个物品要用展示类tip lv276_幻牌魔翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13534,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24880] =	--哪个物品要用展示类tip  	  赤霄玄衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_npcshop = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 24871,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_gift = true,panel_npcshop = true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[21303] =	--哪个物品要用展示类tip 巫遥 
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.2, yoffset = -2.7, zoffset = 5.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10281,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20822] =	--哪个物品要用展示类tip 时装 落风青鸢
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20822,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24883] =	--哪个物品要用展示类tip 无忧
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.66, yoffset = -0.35, zoffset = 4.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13545,			--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24884] =	--哪个物品要用展示类tip 凝露礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.25, yoffset = -4, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13547,			--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[14420] =	--哪个物品要用展示类tip 朱雀之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -1.82, yoffset = -2.34, zoffset = 7},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4837,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24900] =	--哪个物品要用展示类tip 诉衷
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.25, yoffset = -4, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13547,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24905] =	--哪个物品要用展示类tip 夜狼·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.31, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13549,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24906] =	--哪个物品要用展示类tip 夜狼·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.6, yoffset = -0.31, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13550,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24907] =	--哪个物品要用展示类tip lv278_星穹之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13555,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24924] =	--哪个物品要用展示类tip 甜香
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
				panel_gift = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.8, yoffset = -3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13556,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24925] =	--哪个物品要用展示类tip 冒险豚
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.51, yoffset = -0.25, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13557,			--若是坐骑宠物则填模型id
--	bind = {panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24927] =	--哪个物品要用展示类tip 时装 玉尘金枝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24927,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24928] =	--哪个物品要用展示类tip 时装 两仪装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24928,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24929] =	--哪个物品要用展示类tip 时装 相思
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24929,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24926] =	--哪个物品要用展示类tip lv279_万圣翔羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13598,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24930] =	--哪个物品要用展示类tip 时装 两仪装
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24928,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24931] =	--哪个物品要用展示类tip 时装 龙骧
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24931,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[20823] =	--哪个物品要用展示类tip 时装 浮秋清菡
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 20823,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[21313] =	--哪个物品要用展示类tip 巨居
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 45, fov = 20, far = 30, xoffset = -1.45, yoffset = -1.5, zoffset = 22.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10354,			--若是坐骑宠物则填模型id
	bind = {panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[21361] =	--哪个物品要用展示类tip 圣哈
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.7, zoffset = 5.0},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10397,			--若是坐骑宠物则填模型id
	bind = {panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24936] =	--哪个物品要用展示类tip 鳐鱼·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.91, yoffset = -2.86, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13616,			--若是坐骑宠物则填模型id
--	bind = {panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24937] =	--哪个物品要用展示类tip 鳐鱼·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.91, yoffset = -2.86, zoffset = 5.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13617,			--若是坐骑宠物则填模型id
	bind = {panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24933] =	--哪个物品要用展示类tip lv280_华韵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13638,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24938] =	--哪个物品要用展示类tip 时装 白羽金章
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24938,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24988] =	--哪个物品要用展示类tip 购物车
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.44, yoffset = 0, zoffset = 3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13647,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24989] =	--哪个物品要用展示类tip 时装 龙羽长衣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24989,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24996] =	--哪个物品要用展示类tip 时装 龙羽长衣7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24989,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[24990] =	--哪个物品要用展示类tip lv281_秩序之眼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13668,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[24991] =	--哪个物品要用展示类tip lv282_高灵幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13669,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[13925] =	--哪个物品要用展示类tip 玄武之灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--panel_ceremony= true,
			},
	view = {scale = 0.35, roatate = 20.0, fov = 20, far = 8.75, xoffset = -0.45, yoffset = 0.2, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 4521,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true},
}
item_show_cfg[25003] =	--哪个物品要用展示类tip 翡烟
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.69, yoffset = -0.36, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13670,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[24999] =	--哪个物品要用展示类tip 时装 尘沙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24999,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25000] =	--哪个物品要用展示类tip 时装 红海
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25000,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25001] =	--哪个物品要用展示类tip 时装 尘沙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 24999,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25005] =	--哪个物品要用展示类tip 御魂
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				panel_npcshop = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.85, yoffset = -2.65, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13692,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,panel_limitlottery = true,subpanel_rankinglist = true,panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[25006] =	--哪个物品要用展示类tip 时装 洛神赋
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25006,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25007] =	--哪个物品要用展示类tip 时装 翠叶绽生
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25007,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25008] =	--哪个物品要用展示类tip   冬至礼匣   烈炎·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.1, yoffset = -0.7, zoffset = 5.0},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 11197,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[25032] =	--哪个物品要用展示类tip      霸空·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 10, fov = 60, far = 10, xoffset = -1.52, yoffset = -3.78, zoffset = 9},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13712,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[25033] =	--哪个物品要用展示类tip      霸空·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 10, fov = 60, far = 10, xoffset = -1.52, yoffset = -3.78, zoffset = 9},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13713,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[25024] =	--哪个物品要用展示类tip  连续充值 宠物 锵锵
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13721,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[25035] =	--哪个物品要用展示类tip 时装 琼光
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25035,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25036] =	--哪个物品要用展示类tip 时装 琼光7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25036,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25037] =	--哪个物品要用展示类tip 时装 琼光7天
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25036,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25046] =	--哪个物品要用展示类tip      蝠狮鹫
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -0.27, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13722,			--若是坐骑宠物则填模型id
	bind = {panel_gift = true,panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[25047] =	--哪个物品要用展示类tip      飞轮号
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -0.8, zoffset = 5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13723,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}
item_show_cfg[25050] =	--哪个物品要用展示类tip 时装 足球宝贝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 限时回馈
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25050,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25048] =	--哪个物品要用展示类tip lv283_骨魂之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13737,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25049] =	--哪个物品要用展示类tip lv284_煌威幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13738,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25060] =	--哪个物品要用展示类tip      亚鸿
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_npcshop = true,
				--panel_gift = true,
				panel_ceremony= true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3, zoffset = 4},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13747,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony = true,panel_goldshop = true,panel_npcshop = true},
}	
item_show_cfg[25061] =	--哪个物品要用展示类tip 雪狮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 30, fov = 60, far = 60, xoffset = -1, yoffset = -2, zoffset = 7.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13748,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25056] =	--哪个物品要用展示类tip lv285_荧光乐翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13765,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25057] =	--哪个物品要用展示类tip lv286_黑翎幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13764,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25054] =	--哪个物品要用展示类tip 时装 夜歌公爵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25054,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25055] =	--哪个物品要用展示类tip 时装 幽蛊引
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25055,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25077] =	--哪个物品要用展示类tip 时装  欢乐大礼包A
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25942,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25078] =	--哪个物品要用展示类tip lv290_冰冠蓝羽  欢乐大礼包B
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13968,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25076] =	--哪个物品要用展示类tip  离枝
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13776,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[25792] =	--哪个物品要用展示类tip 时装 墨兰留香
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25792,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25791] =	--哪个物品要用展示类tip 岩牛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.64, yoffset = -0.28, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13777,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[21414] =	--哪个物品要用展示类tip  御剑
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.5, roatate = 10, fov = 55, far = 10, xoffset = -1.7, yoffset = -5, zoffset = 7.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10451,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[25794] =	--哪个物品要用展示类tip 鉴光
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.78, yoffset = -3, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13801,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25795] =	--哪个物品要用展示类tip 时装 月缕金裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25795,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25796] =	--哪个物品要用展示类tip 时装 月缕金裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25795,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25807] =	--哪个物品要用展示类tip 心悦
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.52, yoffset = -0.24, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13820,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25808] =	--哪个物品要用展示类tip   海贼鸟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -1, yoffset = -3.5, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13821,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[25811] =	--哪个物品要用展示类tip  寒风礼盒
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.52, yoffset = -0.24, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13820,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25809] =	--哪个物品要用展示类tip lv287_幽夜紫蛾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13827,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25812] =	--哪个物品要用展示类tip   海贼鸟
{
	panels ={			--这个物品在哪些界面里显示展示类tip 全服限次抽奖-六龙秘宝
				panel_npcshop = true,
				panel_limitlottery = true,
				panel_goldshop = true,
			},
	view = {scale = 1.2, roatate = 35, fov = 60, far = 10, xoffset = -1, yoffset = -3.5, zoffset = 5.5},		--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13821,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_goldshop = true},
}
item_show_cfg[25813] =	--哪个物品要用展示类tip lv287_幽夜紫蛾
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13827,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25803] =	--哪个物品要用展示类tip 时装 福满东山
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25803,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25804] =	--哪个物品要用展示类tip 时装 流浪法师
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25804,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25814] =	--哪个物品要用展示类tip 时装 流浪法师
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25804,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25820] =	--哪个物品要用展示类tip 赤电
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = -2.72, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13828,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25821] =	--哪个物品要用展示类tip lv288_日曜金翅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13832,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25822] =	--哪个物品要用展示类tip lv289_轻花幻化
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13833,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25874] =	--哪个物品要用展示类tip lv290_冰冠蓝羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13878,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25844] =	--哪个物品要用展示类tip 雪礼
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.38, yoffset = -3.78, zoffset = 8},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13836,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25845] =	--哪个物品要用展示类tip 欢欢·圣
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -0.38, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13837,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25846] =	--哪个物品要用展示类tip 欢欢·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -0.38, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13838,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25847] =	--哪个物品要用展示类tip 尼斯
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.68, yoffset = 0, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13834,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25848] =	--哪个物品要用展示类tip 森灵
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.87, yoffset = -0.69, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13835,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25852] =	--哪个物品要用展示类tip 时装 碧蓝澜风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25852,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25853] =	--哪个物品要用展示类tip 时装 澄光锦袂
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25853,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25855] =	--哪个物品要用展示类tip 时装 云阶礼赞
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25855,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25856] =	--哪个物品要用展示类tip 时装 月魄流金
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25856,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25857] =	--哪个物品要用展示类tip 时装 梅语花朝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25857,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25883] =	--哪个物品要用展示类tip 时装 梅语花朝
{
	panels ={			--这个物品在哪些界面里显示展示类tip 
				panel_goldshop = true,
				panel_gift= true,
				subpanel_rankinglist = true,
				panel_ceremony= true,
				panel_npcshop = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	
	fashionItemTid = 25857,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {panel_npcshop = true,panel_ceremony= true,subpanel_rankinglist = true,panel_goldshop = true,panel_gift= true},
}
item_show_cfg[25873] =	--哪个物品要用展示类tip  连续充值 宠物 罐罐
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				--subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13906,			--若是坐骑宠物则填模型id
	bind = {subpanel_accumulaterecharge = true},
}
item_show_cfg[21435] =	--哪个物品要用展示类tip  妙兮
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1, roatate = 80, fov = 75, far = 10, xoffset = -1.2, yoffset = -2.0, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10499,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20744] =	--哪个物品要用展示类tip 夏歌清黎
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20744,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[20925] =	--哪个物品要用展示类tip 冬月九尾
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 20925,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[25886] =	--哪个物品要用展示类tip 震音
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
				panel_gift= true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.6, yoffset = -3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13907,			--若是坐骑宠物则填模型id
	bind = {panel_gift= true,subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25887] =	--哪个物品要用展示类tip 大雪人
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.95, yoffset = -0.45, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13908,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25888] =	--哪个物品要用展示类tip 素衣游仙
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25888,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25889] =	--哪个物品要用展示类tip lv291_幻境之羽
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13922,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25890] =	--哪个物品要用展示类tip lv292_马到成功
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13923,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25896] =	--哪个物品要用展示类tip 亚鲁
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -1.8, yoffset = -1.8, zoffset = 10},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13932,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25897] =	--哪个物品要用展示类tip 天青
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25897,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25901] =	--哪个物品要用展示类tip 驼驼
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				panel_luckyspin3= true,
				panel_limitlottery = true,
				subpanel_rankinglist = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.77, yoffset = -0.3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13937,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_goldshop = true},
}
item_show_cfg[25902] =	--哪个物品要用展示类tip 瑶华雪裳
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25902,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[21500] =	--哪个物品要用展示类tip 花洛
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
			},
	view = {scale = 1.3, roatate = 60, fov = 55, far = 10, xoffset = -1.7, yoffset = -3, zoffset = 8.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10536,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[21499] =	--哪个物品要用展示类tip 喵呜
{
	panels ={			--这个物品在哪些界面里显示展示类tip 商城
				panel_goldshop = true,
			},
	view = {scale = 0.7, roatate = 0, fov = 60, far = 50, xoffset = -1, yoffset =-0.88, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 10535,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true},
}
item_show_cfg[19645] =	--哪个物品要用展示类tip 青韶·神
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 30, fov = 55, far = 10, xoffset = -1.8, yoffset = -3, zoffset = 9.2},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 8626,			--若是坐骑宠物则填模型id
	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[25904] =	--哪个物品要用展示类tip 同心船
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.75, yoffset = -3, zoffset = 5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13956,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[25906] =	--哪个物品要用展示类tip 见春山
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25906,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25907] =	--哪个物品要用展示类tip 枫白露
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25907,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25909] =	--哪个物品要用展示类tip 枫白露
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25907,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25905] =	--哪个物品要用展示类tip lv293_月纱幻翅
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13968,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25911] =	--哪个物品要用展示类tip 小黄蜂
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.7, yoffset = -0.3, zoffset = 4},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13978,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[25912] =	--哪个物品要用展示类tip lv294_恶魔之翼
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13981,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
--	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25922] =	--哪个物品要用展示类tip lv295_绯色戏团
{
	panels ={			--这个物品在哪些界面里显示展示类tip
			panel_npcshop = true,
			panel_ceremony = true,
			panel_goldshop = true,
			panel_gift = true,
			subpanel_rankinglist = true,
			},
	view = {scale = 0.75, roatate = 0, fov = 20, far = 8.75, xoffset = -0.55, yoffset = 0.5, zoffset = 7.5},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 13991,				--若是翅膀则填翅膀模型id
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift = true,panel_goldshop = true,panel_ceremony = true,panel_npcshop = true,},
}
item_show_cfg[25920] =	--哪个物品要用展示类tip  坐骑 洪流
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				panel_ceremony= true,
			},
	view = {scale = 0.8, roatate = 30, fov = 60, far = 60, xoffset = -1.5, yoffset = -1.5, zoffset = 7.3},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13983,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,panel_ceremony= true,panel_goldshop = true},
}
item_show_cfg[25919] =	--哪个物品要用展示类tip 魔塔毯
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
				panel_limitlottery = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1, yoffset = -3, zoffset = 6},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13982,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[25940] =	--哪个物品要用展示类tip 金乌逐风
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25940,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25937] =	--哪个物品要用展示类tip  连续充值 宠物 小悟空
{
	panels ={			--这个物品在哪些界面里显示展示类tip
				--panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,
				subpanel_rankinglist= true,
				--panel_ceremony= true,
				subpanel_accumulaterecharge= true,
			},
	view = {scale = 0.9, roatate = 30, fov = 20, far = 8.75, xoffset = -0.39, yoffset = 0.3, zoffset = 6.0},	
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13995,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist= true,subpanel_accumulaterecharge = true},
}
item_show_cfg[25944] =	--哪个物品要用展示类tip 颤栗
{
	panels ={			--这个物品在哪些界面里显示展示类tip 排行榜
				subpanel_rankinglist= true,
				panel_npcshop = true,
				panel_goldshop = true,
				panel_limitlottery = true,
				panel_luckyspin3 = true,
			},
	view = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.06, zoffset = 3.5},	--在tip里坐标偏移配置
	fashionItemTid = 0,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id
	normalModel = 13996,			--若是坐骑宠物则填模型id
--	bind = {panel_goldshop = true,panel_npcshop = true,subpanel_rankinglist = true},
}
item_show_cfg[25941] =	--哪个物品要用展示类tip 栖云客
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25941,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
item_show_cfg[25942] =	--哪个物品要用展示类tip 玉骨冰
{
	panels ={			--这个物品在哪些界面里显示展示类tip 钻石商店
				panel_goldshop = true,
				--panel_auction = true,
				--subpanel_back2 = true,
				-- panel_nationtransfer = true,	
				--panel_ceremony= true,
				--panel_luckyspin3= true,
				panel_gift=true,
				subpanel_rankinglist = true,
			},
	view = {scale = 0.9, roatate = 0, fov = 20, far = 8.75, xoffset = -0.5, yoffset = 0.45, zoffset = 6.3},	--在tip里坐标偏移配置
	fashionItemTid = 25942,		--若是时装则填时装物品id
	wingModel = 0,				--若是翅膀则填翅膀模型id (翅膀幻化设置-形象资源路径)
	normalModel = 0,			--若是坐骑宠物则填模型id
	bind = {subpanel_rankinglist = true,panel_gift=true,panel_goldshop = true},
}
return item_show_cfg