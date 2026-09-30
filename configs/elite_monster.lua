local EliteMonsterConfig = {}

local configInstance = {}
local sceneMap = {5003, 5004, 5005, 5006}	--王城，天门关，边境，京郊（界面里的显示顺序！）
local achievementIds = {}
local CTT = dofile "Configs/campaign.lua".CAMPAIGN_TIME_TYPE
local ElementData = require "Data.ElementData"
local Exptypes = require "Data.Exptypes"

function EliteMonsterConfig:getAllConfigs ()
	return configInstance
end

function EliteMonsterConfig:getSceneMap ()
	return sceneMap
end

function EliteMonsterConfig:addConfig(config)
	if config.sid then
		local sceneConfig = configInstance[config.sid]
		if not sceneConfig then
			configInstance[config.sid] = {}
			sceneConfig = configInstance[config.sid]
		end

		local curMonsterData = ElementData.getData(Exptypes.MONSTER_ESSENCE, config.elite_monsters[1].monsterId)
		local curLevel = tonumber(curMonsterData.show_level)
		local pos = 1
		for i=1,#sceneConfig do
			local v = sceneConfig[i]
			local monsterEssence = ElementData.getData(Exptypes.MONSTER_ESSENCE, v.elite_monsters[1].monsterId)
			local level = tonumber(monsterEssence.show_level)
			if level > curLevel then
				break
			else
				pos = pos + 1
			end
		end
		table.insert(sceneConfig, pos, config)
		--sceneConfig[#sceneConfig + 1] = config

		for idx,monster in pairs(config.elite_monsters) do
			table.insert(achievementIds, monster.achievementId)
			--print("the monster "..idx.." is : "..monster.monsterId.."     achievementId:"..monster.achievementId)
		end
	end
end

function EliteMonsterConfig:getAllAchievementIds( )
	return achievementIds
end

--配置精英扫荡副本id
function EliteMonsterConfig:getInstanceId( )
	return 3102
end

----------------------------------------------王城----------------------------------------------

--5003

EliteMonsterConfig:addConfig	--兵痞22级（王城精英怪B）	活动ID=2069 序号64
{
	sid = 5003,
	groupId = 1,	--精英扫荡副本用,客户端通知服务器刷那组怪,需与x12_f内脚本对应
	elite_monsters = 
	{ 
		{ monsterId = 4868, achievementId = 546},
		{ monsterId = 4869, achievementId = 547},
		{ monsterId = 4870, achievementId = 548},
		{ monsterId = 4871, achievementId = 549},
		{ monsterId = 4872, achievementId = 550},
	},
	-- 402,{506,507,508,509,510},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_HOUR,
	time_sect = 
	{
		{ BEGIN_TIME = {MIN = 0, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.75,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.33},		--x为正则向右便宜，y为正则往上便宜
}

--1小时1刷






EliteMonsterConfig:addConfig	--黑熊24级（王城精英怪C）	活动ID=2070 序号65
{
	sid = 5003,
	groupId = 2,
	elite_monsters = 
	{
		{ monsterId = 4873, achievementId = 551},
		{ monsterId = 4874, achievementId = 552},
		{ monsterId = 4875, achievementId = 553},
		{ monsterId = 4876, achievementId = 554},
		{ monsterId = 4877, achievementId = 555},
	},
	-- 403,{511,512,513,514,515},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 1, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 19, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 35, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.55,
	forward = {x = -1, y = 0, z = -1},
	position = {x = 0.25, y = 0.35},		--x为正则向右便宜，y为正则往上便宜
}

--1.5小时1刷






EliteMonsterConfig:addConfig	--黄风邪术士26级（王城精英怪D）	活动ID=2071 序号66
{
	sid = 5003,
	groupId = 3,
	elite_monsters = 
	{
		{ monsterId = 4878, achievementId = 556},
		{ monsterId = 4886, achievementId = 557},
		{ monsterId = 4887, achievementId = 558},
		{ monsterId = 4888, achievementId = 559},
		{ monsterId = 4889, achievementId = 560},
	},
	-- 404,{516,517,518,519,520},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 14, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 10, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 10, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.75,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}


--2小时1刷






EliteMonsterConfig:addConfig	--流寇弓手28级（王城精英怪E）	活动ID=2072 序号67
{
	sid = 5003,
	groupId = 4,
	elite_monsters = 
	{
		{ monsterId = 4895, achievementId = 561},
		{ monsterId = 4898, achievementId = 562},
		{ monsterId = 4900, achievementId = 563},
		{ monsterId = 4901, achievementId = 564},
		{ monsterId = 4902, achievementId = 565},
	},
	-- 405,{521,522,523,524,525},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 5, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 17, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 45, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.75,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.25},		--x为正则向右便宜，y为正则往上便宜
}

--2.5小时1刷






EliteMonsterConfig:addConfig	--潜杀者30级（王城精英怪A）  活动ID=2068  序号63
{
	sid = 5003,	--场景ID
	groupId = 5,
	elite_monsters = 
	{ 
		{ monsterId = 4862, achievementId = 541},	--怪物ID，成就ID	
		{ monsterId = 4864, achievementId = 542},
		{ monsterId = 4865, achievementId = 543},	
		{ monsterId = 4866, achievementId = 544},	
		{ monsterId = 4867, achievementId = 545},
	 },
	-- 401,{501,502,503,504,505},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.8,
	forward = {x = 0, y = 0, z = -1},		--默认为 0 0 -1  x=-1=左 x=1=右  一般动物怪需要
	position = {x = 0, y = 0.2},		--x为正则向右便宜，y为正则往上便宜
}

--3小时1刷






----------------------------------------------天门关----------------------------------------------

--5004

EliteMonsterConfig:addConfig	--银鬃狼32级（天门关精英怪E）	活动ID=2077 序号72
{
	sid = 5004,
	groupId = 6,
	elite_monsters = 
	{
		{ monsterId = 4936, achievementId = 587},
		{ monsterId = 4938, achievementId = 588},
		{ monsterId = 4939, achievementId = 589},
		{ monsterId = 4940, achievementId = 590},
		{ monsterId = 4941, achievementId = 591},
	},
	-- 410,{521,522,523,524,525},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_HOUR,
	time_sect = 
	{
		{ BEGIN_TIME = {MIN = 10, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.6,
	forward = {x = -1, y = 0, z = -1},
	position = {x = 0.1, y = 0.5},		--x为正则向右便宜，y为正则往上便宜
}

--1小时1刷






EliteMonsterConfig:addConfig	--邪恶巫女34级（天门关精英怪A）	活动ID=2073 序号68
{
	sid = 5004,
	groupId = 7,
	elite_monsters = 
	{
		{ monsterId = 4903, achievementId = 567},
		{ monsterId = 4904, achievementId = 568},
		{ monsterId = 4905, achievementId = 569},
		{ monsterId = 4906, achievementId = 570},
		{ monsterId = 4907, achievementId = 571},
	},
	-- 406,{501,502,503,504,505},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 1, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 19, MIN = 45, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 45, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.65,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.25},		--x为正则向右便宜，y为正则往上便宜
}

--1.5小时1刷






EliteMonsterConfig:addConfig	--边塞醉鬼36级（天门关精英怪D）	活动ID=2076 序号71
{
	sid = 5004,
	groupId = 8,
	elite_monsters = 
	{ 
		{ monsterId = 4930, achievementId = 582},
		{ monsterId = 4931, achievementId = 583},
		{ monsterId = 4932, achievementId = 584},
		{ monsterId = 4933, achievementId = 585},
		{ monsterId = 4934, achievementId = 586},
	},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 14, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},
	-- 409,{516,517,518,519,520},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.76,
	forward = {x = 0, y = 0, z = -1},
	position = {x = -0.05, y = 0.27},		--x为正则向右便宜，y为正则往上便宜	
}

--2小时1刷






EliteMonsterConfig:addConfig	--马云禄38级（天门关精英怪C）	活动ID=2075 序号70
{
	sid = 5004,
	groupId = 9,
	elite_monsters = 
	{
		{ monsterId = 4925, achievementId = 577},
		{ monsterId = 4926, achievementId = 578},
		{ monsterId = 4927, achievementId = 579},
		{ monsterId = 4928, achievementId = 580},
		{ monsterId = 4929, achievementId = 581},
	},
	-- 408,{511,512,513,514,515},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 5, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 17, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 55, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.8,
	forward = {x = 0, y = 0, z = -1},
	position = {x = -0.05, y = 0.15},		--x为正则向右便宜，y为正则往上便宜
}

--2.5小时1刷






EliteMonsterConfig:addConfig	--急先锋40级（天门关精英怪B）	活动ID=2074  序号69
{
	sid = 5004,
	groupId = 10,
	elite_monsters = 
	{	
		{ monsterId = 4908, achievementId = 572},
		{ monsterId = 4920, achievementId = 573},
		{ monsterId = 4921, achievementId = 574},
		{ monsterId = 4922, achievementId = 575},
		{ monsterId = 4923, achievementId = 576},
	 },
	 -- 407,{506,507,508,509,510},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},

	scale = 0.6,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.32},		--x为正则向右便宜，y为正则往上便宜
}

--3小时1刷






----------------------------------------------边境----------------------------------------------

--5005

EliteMonsterConfig:addConfig	--士兵亡魂43级（边境精英怪D）	活动ID=2081 序号76
{
	sid = 5005,
	groupId = 11,
	elite_monsters =
	{ 
		{ monsterId = 4964, achievementId = 608},
		{ monsterId = 4965, achievementId = 609},
		{ monsterId = 4966, achievementId = 610},
		{ monsterId = 4967, achievementId = 611},
		{ monsterId = 4968, achievementId = 612},
	},
	-- 414,{516,517,518,519,520},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_HOUR,
	time_sect = 
	{
		{ BEGIN_TIME = {MIN = 15, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.8,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.33},		--x为正则向右便宜，y为正则往上便宜
}

--1小时1刷






EliteMonsterConfig:addConfig
{
	sid = 5005,
	groupId = 12,
	elite_monsters = 	--黑心商人46级（边境精英怪E）	活动ID=2082 序号77
	{
		{ monsterId = 4969, achievementId = 613},
		{ monsterId = 4970, achievementId = 614},
		{ monsterId = 4971, achievementId = 615},
		{ monsterId = 4972, achievementId = 616},
		{ monsterId = 4973, achievementId = 617},
	},
	-- 415,{521,522,523,524,525},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 1, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 19, MIN = 50, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 50, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.85,
	forward = {x = 0, y = 0, z = -1},
	position = {x = -0.1, y = 0.25},		--x为正则向右便宜，y为正则往上便宜
}

--1.5小时1刷






EliteMonsterConfig:addConfig	--疫病尸魔49级（边境精英怪A）	活动ID=2078 序号73
{
	sid = 5005,
	groupId = 13,
	elite_monsters = 
	{ 
		{ monsterId = 4945, achievementId = 593},
		{ monsterId = 4946, achievementId = 594},
		{ monsterId = 4947, achievementId = 595},
		{ monsterId = 4948, achievementId = 596},
		{ monsterId = 4949, achievementId = 597},
	},
	-- 411,{501,502,503,504,505},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 14, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 25, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.6,
	forward = {x = 0, y = 0, z = -1},
	position = {x = -0.2, y = 0.33},		--x为正则向右便宜，y为正则往上便宜
}

--2小时1刷






EliteMonsterConfig:addConfig	--蛮王52级（边境精英怪B）	活动ID=2079 序号74
{
	sid = 5005,
	groupId = 14,
	elite_monsters = 
	{ 
		{ monsterId = 4952, achievementId = 598},
		{ monsterId = 4953, achievementId = 599},
		{ monsterId = 4954, achievementId = 600},
		{ monsterId = 4955, achievementId = 601},
		{ monsterId = 4956, achievementId = 602},
	},
	-- 412,{506,507,508,509,510},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 0, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 5, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 0, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 23, MIN = 0, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.57,
	forward = {x = 0, y = 0, z = -1},
	position = {x = -0.15, y = 0.28},		--x为正则向右便宜，y为正则往上便宜
}

--2.5小时1刷






EliteMonsterConfig:addConfig	--战象55级（边境精英怪C）	活动ID=2080 序号75
{
	sid = 5005,
	groupId = 15,
	elite_monsters = 
	{ 
		{ monsterId = 4959, achievementId = 603},
		{ monsterId = 4960, achievementId = 604},
		{ monsterId = 4961, achievementId = 605},
		{ monsterId = 4962, achievementId = 606},
		{ monsterId = 4963, achievementId = 607},
	},
	-- 413,{511,512,513,514,515},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},
	scale = 0.33,
	forward = {x = -0.5, y = 0, z = -1},
	position = {x = 0.3, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}

--3小时1刷






----------------------------------------------京郊----------------------------------------------

--5006

EliteMonsterConfig:addConfig	--义军精锐58级（京郊精英怪D）	活动ID=2086 序号81
{
	sid = 5006,
	groupId = 16,
	elite_monsters = 
	{
		{ monsterId = 4990, achievementId = 634},
		{ monsterId = 4991, achievementId = 635},
		{ monsterId = 4992, achievementId = 636},
		{ monsterId = 4993, achievementId = 637},
		{ monsterId = 4994, achievementId = 638},
	},
	time_type = CTT.CTT_PER_HOUR,
	time_sect = 
	{
		{ BEGIN_TIME = {MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},
	-- 419,{516,517,518,519,520},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.8,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}

--1小时1刷






EliteMonsterConfig:addConfig	--药人矿工61级（京郊精英怪C）	活动ID=2085 序号80
{
	sid = 5006,
	groupId = 17,
	elite_monsters = 
	{
		{ monsterId = 4985, achievementId = 629},
		{ monsterId = 4986, achievementId = 630},
		{ monsterId = 4987, achievementId = 631},
		{ monsterId = 4988, achievementId = 632},
		{ monsterId = 4989, achievementId = 633},
	},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 1, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 7, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 19, MIN = 55, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 25, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 55, SEC = 0, }, LAST_TIME = 30},
	},
	-- 418,{511,512,513,514,515},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.8,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.25},		--x为正则向右便宜，y为正则往上便宜
}

--1.5小时1刷






EliteMonsterConfig:addConfig	--太平道巫师	活动ID=2087  序号82
{
	sid = 5006,
	groupId = 18,
	elite_monsters = 
	{
		{ monsterId = 4995, achievementId = 639},
		{ monsterId = 4996, achievementId = 640},
		{ monsterId = 4997, achievementId = 641},
		{ monsterId = 4998, achievementId = 642},
		{ monsterId = 4999, achievementId = 643},
	},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 4, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 16, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 30, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 22, MIN = 30, SEC = 0, }, LAST_TIME = 30},
	},

	-- 420,{521,522,523,524,525},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.75,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}

--2小时1刷






EliteMonsterConfig:addConfig	--太平圣女67级（京郊精英怪A）	活动ID=2083  序号78
{
	sid = 5006,
	groupId = 19,
	elite_monsters = 	
	{
		{ monsterId = 4974, achievementId = 619},
		{ monsterId = 4976, achievementId = 620},
		{ monsterId = 4977, achievementId = 621},
		{ monsterId = 4978, achievementId = 622},
		{ monsterId = 4979, achievementId = 623},
	},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 2, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 5, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 8, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 10, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 13, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 5, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 20, MIN = 35, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 23, MIN = 5, SEC = 0, }, LAST_TIME = 30},
	},
	-- 416,{501,502,503,504,505},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.7,
	forward = {x = 0, y = 0, z = -1},
	position = {x = 0, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}

--2.5小时1刷





EliteMonsterConfig:addConfig	--暴君70级（京郊精英怪B）	活动ID=2084 序号79
{
	sid = 5006,
	groupId = 20,
	elite_monsters = 
	{
		{ monsterId = 4980, achievementId = 624},
		{ monsterId = 4981, achievementId = 625},
		{ monsterId = 4982, achievementId = 626},
		{ monsterId = 4983, achievementId = 627},
		{ monsterId = 4984, achievementId = 628},
	},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 0, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 3, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 6, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 9, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 12, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 15, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 18, MIN = 20, SEC = 0, }, LAST_TIME = 30},
		{ BEGIN_TIME = {HOUR = 21, MIN = 20, SEC = 0, }, LAST_TIME = 30},
	},
	-- 417,{506,507,508,509,510},{0.25,0.3,0.3,0.10,0.05}	控制器ID 波次 几率
	scale = 0.55,
	forward = {x = -0.25, y = 0, z = -1},
	position = {x = 0.15, y = 0.3},		--x为正则向右便宜，y为正则往上便宜
}

--3小时1刷






return EliteMonsterConfig

