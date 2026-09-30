
local config = {}

-- npc活动id
config.npc_activity_id = 2712

-- 矿活动id
config.mine_activity_id = 5693

-- 两个地图的据点npc
config.npc = 
{
	{11977, 11978, 11979}, 	-- 天心阁，蓬莱阁，真武阁
	{11893, 11894, 11895},	-- 望海楼，烟雨楼，太白楼
}

-- 两个地图的据点矿
config.mine = 
{
	{11980, 11981, 11982}, 	-- 天心阁，蓬莱阁，真武阁
	{11896, 11897, 11898},	-- 望海楼，烟雨楼，太白楼
}

-- 两个地图的据点的国家声望ID
config.nation_reputation = 
{
	{5, 6, 7}, 	-- 天心阁，蓬莱阁，真武阁
	{8, 9, 10},	-- 望海楼，烟雨楼，太白楼
}

-- 国家声望最大值
config.max_nation_reputation = 100

-- 靠近据点显示焦点的距离
config.display_focus = 200

-- 据点图片名字(npc -> btn name)
config.img_btns = 
{
	[11977] = "Btn_Txg",	-- 天心阁
	[11978] = "Btn_Plg",	-- 蓬莱阁
	[11979] = "Btn_Zwg",	-- 真武阁
	[11893] = "Btn_Whl",	-- 望海楼
	[11894] = "Btn_Yyl",	-- 烟雨楼
	[11895] = "Btn_Tbl",	-- 太白楼
}

-- 场景 id
config.scenes = {5022, 5023}  --南华仙境，洛阳

-- 进度条曲线
config.curve = 
{
	{y = 6, x = -6},
	{y = 17, x = 6},
	{y = 28, x = 14},
	{y = 39, x = 20},
	{y = 50, x = 24},
	{y = 61, x = 26},
	{y = 72, x = 28},
	{y = 83, x = 27},
	{y = 94, x = 25},
	{y = 103, x = 22},
}

-- 集火冷却(秒)
config.jihuo_duration = 120

-- 冷却时间国家声望id
config.fire_cool_down_id = 11

-- 场景目标国家id
config.hold_fire_id = {12, 13}

return config