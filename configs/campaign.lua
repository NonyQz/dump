--[==[
	配置活动列表的显示内容
	注意：列举顺序会影响游戏中的显示顺序。同一状态下的活动按列举顺序显示
	
	例子：
	Campaign:addConfig
	{
		id = 3541,									-- 活动模板ID
		name = "【江湖】猛龙过江",							-- 活动名称
		level = {min = 35, max = 40},							-- 活动的等级要求，无 min 或 max 时留空
		icon_pathid = 1574,								-- 活动图标
		typeIndex = {true, true, false}                      --分类索引 {金钱、经验、变强}
		starLevel = {4, 5}								    --奖励星等 {金钱、经验}
		sortIndex = {1, 2, 0}								--排序索引 {金钱、经验、变强}
		recommendIndex = {5, 5, 5}                          --推荐等级
		type = 1								--,1=国家、2=日常、3=挑战(废弃)， 4 = 帮派， 5 = 中心服， 6 = 大区中心服
		activity_num = 10,								-- 活跃度
		operation = 
		{
			operation_type = 1,							-- 1=寻路(见实例)、2=打开界面(ui=..., location=...)、3=文字(desc=...)、4=调用掉落信息(drop_info_id=...)
			location = {nation = 0, sid=5002, x=0, z=0, target={type="talk", target=1001}},
			ui ="界面名称"								-- 
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
			desc = "文字内容"
		}
			-- 活动位置 {nation=国家ID, sid=场景ID, x=x坐标, z=z坐标, target=寻径完成后的操作}
			--	nation: 国家ID，0 为本国，-1 为不限，-2 为其他任意国家，1~6 对应各国 (暂时可不填，相当于 0 本国)
			-- 如果从 target 中可推导出位置，则 sid, x, z 可省略. 例：location = {target={type="talk", target=1001}},
			-- 增加

		brief_desc = "猛龙过江简介"							-- 简介
		detail_desc = "猛龙过江详细信息",						-- 详细信息
		award = 
		{										-- 奖励图标
			{icon = 11191 , tip = "大量经验"},
			{icon = 5032 , tip = "英雄令"},
		},
		
		time_desc = "每天12:00 - 14:00，18:00 - 20:00",					-- 开启时间描述
		count_num = {type = "task", id = 1024},						--[[ 次数控制
				type = 次数控制方式，可为：
					"none"：不限次数
					"task"：以任务次数，id 为任务 id
					"task_storage"：以任务库次数，id 为任务库 id (1~n)
					"instance"：以副本次数，id 为副本模板 id
					"common_use_limit"：以通用使用限制次数，id 为通用使用限制模板 id
					"reputation"：以声望作上限，id 为声望 id，max 为最大计次上限
					"faction_reputation"：以帮派声望作上限，id 为帮派声望 id，max 为最大计次上限
					"custom"：用函数计算当前次数，current 为计算当前计数的函数，函数可使用富文本中的功能，max 为最大计次上限
						例：{type="custom", current=function () return 10-host.reputation(83) end, max=10},
			]]
		time_type = CTT.CTT_PER_DAY							-- 开启时间类型 (格式同服务器脚本)
		time_sect =									-- 开启时间类型 (格式同服务器脚本)
		{
			{ BEGIN_TIME = {HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 7200},
			{ BEGIN_TIME = {HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 7200},
		},
		hide_on_close = false,			--是否在活动关闭时隐藏活动 (true/false)，默认为 false
		hide_on_activity_close = 2345,	--在指定活动关闭时隐藏活动，默认为 0
		open_notice = noticeOnce(-5, "%d分钟后测试活动开始"),				-- 活动开始时的喊话函数，参数：时间，喊话内容(可以是文本或喊话id)
		close_notice = noticeOnce(-1, 504),				-- 活动结束时的喊话函数，参数：时间，喊话内容(可以是文本或喊话id)
		tip = "[猛龙过江] 正在进行",							-- 活动中显示的界面tip文字
	}
]==]

local Campaign = {}

local l_configs = {}
function Campaign:getAllConfigs ()
	return l_configs
end

function Campaign:addConfig(config)
	l_configs[#l_configs+1] = config
end

local CTT = {	--CAMPAIGN_TIME_TYPE
	CTT_PER_HOUR = 1,		--BEGIN_TIME = {MIN = 30, SEC = 0, }
	CTT_PER_DAY = 2,		--BEGIN_TIME = {HOUR = 12, MIN = 0, SEC = 0, }
	CTT_PER_WEEK = 3,		--BEGIN_TIME = {WEEK = 1, HOUR = 20, MIN = 28, SEC = 0, }
	CTT_PER_MONTHWEEK = 4,		--BEGIN_TIME = {MONTHWEEK = 4, WEEK = 5, HOUR = 19, MIN = 50, SEC = 0, }
	CTT_PER_YEAR = 5,		--BEGIN_TIME = {MONTH = 11, DAY = 11, HOUR = 0, MIN = 0, SEC = 0, }
	CTT_PER_YEAR2 = 6,		--BEGIN_TIME = {YEAR = 2014, MONTH = 12, DAY = 15, HOUR = 22, MIN = 0, SEC = 0, }
	CTT_ALL_TIME_OPEN = 7,
	CTT_ALL_TIME_CLOSE = 8,
}
Campaign.CAMPAIGN_TIME_TYPE = CTT

local function speak (speak_id, m)
	local ECSystemSpeak = require "Chat.ECSystemSpeak"
	ECSystemSpeak.SpeakWithParam(speak_id, {activity_minutes=m})	
end

local function do_notice (m, content)
	if type(content) ~= "string" and type(content) ~= "number" then
		error("invalid notice content type:"..type(content))
	end
	if type(content) == "string" then
		return content:format(math.abs(m))
	elseif type(content) == "number" then
		local speak_id = content
		return function ()
			speak(speak_id, m)
		end
	end
end

local function noticeOnce(minutes, content)
	if type(content) ~= "string" and type(content) ~= "number" then
		error("invalid notice content type:"..type(content))
	end
	return function (m)
		if m == minutes then
			return do_notice(m, content)
		end
	end	
end

local function noticeEveryMinute(beginMinutes, endMinutes, content)
	if type(content) ~= "string" and type(content) ~= "number" then
		error("invalid notice content type:"..type(content))
	end
	return function (m) 
		if m >= beginMinutes and m <= endMinutes then
			return do_notice(m, content)
		end
	end
end

local function noticeEveryTime(beginMinutes, endMinutes, content, interval)
	if type(content) ~= "string" and type(content) ~= "number" then
		error("invalid notice content type:"..type(content))
	end
	return function (m) 
		if m >= beginMinutes and m <= endMinutes then
			if endMinutes - m % interval == 0 then
				return do_notice(m, content)
			else
				return function (m, content) end
			end
		end
	end
end


local function do_notice_faction_repu (minutes, speak_id, faction_repu_id)
	return function ()
		local ECGame = require "Main.ECGame"
		
		local host = ECGame.Instance().m_HostPlayer
		if not host then return end
		if not LuaTaskInterface.IsInFaction() then
			return
		end
		
		host:UpdateFactionReputation(faction_repu_id, function ()
			speak(speak_id, m)
		end)
	end
end

local function noticeFactionRepuOnce (minutes, speak_id, faction_repu_id)
	if type(speak_id) ~= "number" then
		error("invalid noticeFactionRepuOnce speak_id type:"..type(speak_id))
	end
	return function (m)
		if m == minutes then
			return do_notice_faction_repu(m, speak_id, faction_repu_id)
		end
	end	
end

--[[
Campaign:addConfig
{
	id = 23333,
	name = "测试活动",
	level = {min = 10},
	location = {action={type="talk", target=399}},
	brief_desc = "测试活动简介",
	detail_desc = "测试活动描述",
	award_desc = "测试活动奖励",
	time_desc = "12:00 - 14:00，18:00 - 20:00",
	count_num = {type = "task", id = 107},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2015, MONTH = 4, DAY = 29, HOUR = 14, MIN = 14, SEC = 0, }, LAST_TIME = 60*3 },
	},
	open_notice = noticeEveryMinute(-10, -1, "测试活动即将开始%d"),
	close_notice = noticeOnce(-1, "测试活动即将结束%d"),
	tip = "[测试活动] 正在进行",
}
]]

--[[
Campaign:addConfig
{
	id = 11,
	name = "测试用活动",
	level = {min = 0},
	location = {action={type="talk", target=19}},
	brief_desc = "　　测试活动简介，找新手村黄月英接",
	detail_desc = "　　到王铁匠处完成",
	award_desc = "海量经验和少量金钱",
	time_desc = "每隔五分钟开放",
	count_num = {type = "task", id = 106},
	time_type = CTT.CTT_PER_HOUR,
	time_sect = {
		{ BEGIN_TIME = {MIN = 0, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {MIN = 10, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {MIN = 20, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {MIN = 30, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {MIN = 40, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {MIN = 50, SEC = 0, }, LAST_TIME = 300},
	},
	open_notice = noticeOnce(-2, "%d分钟后测试活动开始"),
	close_notice = noticeOnce(-2, "测试活动即将结束"),
	tip = "",
}
]]


--[[
Campaign:addConfig
{
	id = 25,
	name = "国家兴亡",
	level = {min = 25},
	location = {action={type="talk", target=401}},
	brief_desc = "　　替小王爷征战四方，平定国乱。",
	detail_desc = "　　在完成小王爷的三个任务，奖励丰厚！",
	award_desc = "经验：★★☆",
	time_desc = "全天开放",
	count_num = {type = "task", id = 341},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
]]

--[[
Campaign:addConfig
{
	id = 417,
	name = "炼星",
	level = {min = 21},
	icon_pathid = 1573,
	type = 3,
	activity_num = 20,
	operation = 
		{
			operation_type = 1,
			location = {nation = 0,action={type="talk", target=1278}},
		},
	brief_desc = "获得炼星石强化装备",
	detail_desc = "　　黑市商人的要求是随机的，完成任务后与黑市商人交谈即可获得炼星石奖励。",
	award = 
		{
			{icon = 1573 , tip = "大量经验"},
			{icon = 502 , tip = "英雄令"},
		},
	time_desc = "全天开放",
	count_num = {type = "task", id = 463},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
]]


--[[
Campaign:addConfig
{
	id = 416,
	name = "盗马贼",
	level = {min = 30},
	location = {action={type="talk", target=399}},
	brief_desc = "　　帮助王城军需官找回被盗的战马！",
	detail_desc = "　　盗马贼会将战马带到王城随机地点，杀死盗马贼即可抢回战马，再次与军需官对话即可获得坐骑进阶符。",
	award_desc = "经验:★★★★",
	time_desc = "全天开放",
	count_num = {type = "task", id = 461},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
]]

------------------------------------------------------以下内容为经验-------------------------------------------------------

Campaign:addConfig
{
	id = 1197,
	name = "劇情副本",
	level = {min = 20},
	icon_pathid = 716,
	type = 3,

	typeIndex = {false, true, false},
	starLevel = {0, 8},
	sortIndex = {0, 1, 0},
	recommendIndex = {0, 17, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "通關劇情副本獲得獎勵",
	detail_desc = "完成劇情副本可獲得大量經驗及道具獎勵。\n每個劇情副本只可完成一次。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1578 , tip = "特殊道具"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1198,
	name = "長板橋",
	level = {min = 20},
	icon_pathid = 585,
	type = 3,

	typeIndex = {false, true, false},
	starLevel = {0, 8},
	sortIndex = {0, 2, 0},
	recommendIndex = {0, 16, 0},	

	activity_num = 10,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Exp",
			location = {type = "custom", target = function () require "GUI.ECPanelInstanceExp".Instance():Toggle() end},
		},
	brief_desc = "[8BA9FF]消耗20點體力[-]",
	detail_desc = "完成長板橋可獲得大量經驗",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 884},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 422,
	name = "國戰",
	level = {min = 36},
	icon_pathid = 1219,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 8},
	sortIndex = {0, 3, 0},
	recommendIndex = {0, 18, 0},

	activity_num = 20,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_National_War_Info",
			location = {type = "custom", target = function () require "GUI.ECNationWarConvTool".PanelNationWarInfo():Toggle() end},
		},
	brief_desc = "為國爭戰獲取大量獎勵",
	detail_desc = "當國戰開啟時將向本國國民發送邀請，攻方按照進攻路線擊敗敵國的大將和守護神可贏得勝利，如未在限定時間內擊殺守護神，則防守方勝利！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 205, tip = "國戰禮袋"},
		},
	time_desc = "20:00至20:30",
	count_num = {type = "common_use_limit", id = 1508},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 20, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "【國戰】20:00-20:30",
}

Campaign:addConfig
{
	id = 38,
	name = "對酒當歌",
	level = {min = 35},
	icon_pathid = 1215,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 7},
	sortIndex = {0, 4, 0},
	recommendIndex = {0, 14, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "drink",
			items = {904, 905, 906, 907, 908},
			location = {nation = 0, action={type="talk", target=990}},
		},
	brief_desc = "掛機飲酒獲得大量經驗",
	detail_desc = "酒的品質由低到高對應白、藍、黃、綠、紫五種顏色，品質越高，獎勵越豐厚。\n注意：組隊情況下可以獲得額外的經驗加成！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 305},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 39,
	name = "封魔帖",
	level = {min = 25},
	icon_pathid = 1206,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 7},
	sortIndex = {0, 5, 0},
	recommendIndex = {0, 13, 0},

	activity_num = 3,
	operation = 
		{
			operation_type = 1,
			state = "fengmotie",
			tasks = {274,275,276,277,278,284,285,286,287,288,294,295,296,297,298,279,280,281,282,283,2752,2753,2754,2755,2756},
			items = {877,878,879,880,881,887,888,889,890,891,897,898,899,900,901,882,883,884,885,886,14190,14195,14196,14197,14198},
		},
	brief_desc = "擊殺怪物獲得大量經驗",
	detail_desc = "封魔帖的品質由低到高對應白、藍、黃、綠、紫五種顏色，品質越高，獎勵越豐厚。\n綠色以上品質的封魔帖只能使用物品合成獲得。",
	show_tip = "沒有合適的封魔帖？快去打怪掛機吧，或者去商場逛逛",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 299},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 797,
	name = "懸賞",
	level = {min = 22},
	icon_pathid = 1226,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 6, 0},
	recommendIndex = {0, 15, 0},
	

	activity_num = 2,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_QuestSeriesNew",
			location = {nation = -1, type = "custom",target = function () require "Task.ECStorageTask".TryOpen(1) end},
		},
	brief_desc = "完成懸賞獲得豐富獎勵",
	detail_desc = "懸賞任務可通過掛機、等待指定時間等多種方式完成，完成可直接在懸賞介面領取獎勵!",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "task_storage", id = 2},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 22,
	name = "九龍鼎",
	level = {min = 35},
	icon_pathid = 1212,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 7, 0},
	recommendIndex = {0, 12, 0},

	activity_num = 15,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {258},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=400}},
		},
	brief_desc = "盜取敵國九龍鼎碎片",
	detail_desc = "與本國九龍鼎進行交談接取任務，前往敵國盜取龍鼎碎片，碎片品質越高，獎勵越豐厚。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569, tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 258},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 24,
	name = "刺探軍情",
	level = {min = 35},
	icon_pathid = 1221,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 8, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {261, 262, 263, 264, 265, 266},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=750}},
		},
	brief_desc = "前往敵國與臥底接頭",
	detail_desc = "與本國邊境大將交談獲取任務，前往敵國獲取情報，情報品質越高，獎勵越豐厚。\n注意：國探期間完成該任務可獲得1.5倍的獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 108},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 148,
	name = "國探",
	level = {min = 35},
	icon_pathid = 1217,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 9, 0},
	recommendIndex = {0, 18, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {261, 262, 263, 264, 265, 266},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=750}},
		},
	brief_desc = "刺探軍情獲得額外獎勵",
	detail_desc = "國探期間完成刺探軍情任務、無間道任務能夠得到1.5倍的獎勵加成！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "12:00至14:00",
	count_num = {type = "task", id = 108},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 7200},
	},
	open_notice = noticeEveryMinute(-5, 0, 539),
	close_notice = noticeEveryMinute(-5, 0, 540),
	tip = "【國探】12:00-14:00",
}


Campaign:addConfig
{
	id = 23,
	name = "邊境軍需",
	level = {min = 30},
	icon_pathid = 1213,
	type = 1,

	typeIndex = {true, true, false},
	starLevel = {5, 6},
	sortIndex = {4, 10, 0},
	recommendIndex = {2, 0, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "escort",
			tasks = {346, 347, 348, 349, 350},
			items = {839, 840, 841, 842, 843},
			condition = {force = 0 , bindmoney = 20000},
			location = {nation = 0, action={type="talk", target=399}},
		},
	brief_desc = "押送鏢車獲得大量銀子",
	detail_desc = "與王城軍需官交談，支付押鏢令和20兩銀的押金接取任務，任務完成時押金返還，失敗按押鏢令品質進行補償，國運期間該任務將有1.5倍獎勵加成！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 1583 , tip = "大量銀子"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 351},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 147,
	name = "國運",
	level = {min = 30},
	icon_pathid = 1218,
	type = 1,

	typeIndex = {true, true, false},
	starLevel = {5, 6},
	sortIndex = {5, 11, 0},
	recommendIndex = {6, 18, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "escort",
			tasks = {346, 347, 348, 349, 350},
			items = {839, 840, 841, 842, 843},
			condition = {force = 0 , bindmoney = 20000},
			location = {nation = 0, action={type="talk", target=399}},
		},
	brief_desc = "邊境軍需獲得額外獎勵",
	detail_desc = "國運期間完成邊境軍需任務、鏢鏢必達任務能夠得到1.5倍的獎勵加成！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 1583 , tip = "大量銀子"},
		},
	time_desc = "18:00至20:00",
	count_num = {type = "task", id = 351},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 7200},
	},
	open_notice = noticeEveryMinute(-5, 0, 541),
	close_notice = noticeEveryMinute(-4, 0, 542),
	tip = "【國運】18:00-20:00",
}

Campaign:addConfig
{
	id = 2292,
	name = "鏢鏢必達",
	level = {min = 30},
	icon_pathid = 1138,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 12, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {51},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=399}},
		},
	brief_desc = "保護本國鏢車到達邊境",
	detail_desc = "與王城軍需官交談接取任務，保護一定數量的本國鏢車到達目的地即可完成任務。\n注意：國運期間完成該任務可獲得1.5倍的獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 51},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 795,
	name = "火燒敵營",
	level = {min = 30},
	icon_pathid = 1220,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 13, 0},
	recommendIndex = {0, 11, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {593, 594, 595, 596, main = 593},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=350}},
		},
	brief_desc = "前往敵國邊境放火",
	detail_desc = "與荀彧交談獲得任務，然後前往敵國的邊境進行放火。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 597},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 289,
	name = "無間道",
	level = {min = 35},
	icon_pathid = 1225,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {5, 6},
	sortIndex = {9, 14, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {448},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=401}},
		},
	brief_desc = "去本國天門關套取情報",
	detail_desc = "與陳王交談接取任務，前往本國天門關與天門小校交談，套取敵國情報！\n注意：國探期間完成該任務可獲得1.5倍的獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 448},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2741,
	name = "緣定今生",
	level = {min = 56},
	icon_pathid = 562,
	type = 2,

	typeIndex = {false, true, true},
	starLevel = {0, 6},
	sortIndex = {0, 15, 26},
	recommendIndex = {0, 7, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1159,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=6617}},
		},
	brief_desc = "尋找自己的有緣人",
	detail_desc = "與王城紅線童子交談獲取尋找有緣人任務，前往隨機地點等待有緣人出現，當匹配到有緣人時，任務即可完成！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1192 , tip = "鮮花"},
		},
	time_desc = "18:00至24:00",
	count_num = {type = "task", id = 1158},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 17, MIN = 59, SEC = 30, }, LAST_TIME = 21630},
	},
	open_notice = noticeEveryMinute(-5, 0, 210),
	tip = "",
}

Campaign:addConfig
{
	id = 2260,
	name = "降妖除魔",
	level = {min = 55},
	icon_pathid = 109,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 16, 0},
	recommendIndex = {0, 10, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {982,979,983,984,985,986,987,988,989,990,991,992,993,999,1000,1001,1002,1003,1004,981,994,995,996,997,998},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=348}},
		},
	brief_desc = "前往各地降伏作亂妖魔",
	detail_desc = "與左慈交談接取任務，前往指定國家及地點收伏作亂的妖魔，完成後與左慈交談可獲得豐厚獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 978},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

if GameUtil.IsEvaluation() then
else
Campaign:addConfig
{
	id = 2470,
	name = "一騎當千[ef28cc](貴族專屬活動)[-]",
	level = {min = 55},
	icon_pathid = 2064,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 17, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1090,1091,1092,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=6358}},
		},
	brief_desc = "[ef28cc]貴族專屬活動[-]",
	detail_desc = "貴族等級8級以上可以在王城張遼處接取任務，前往敵國進行挑釁行動，活動除獎勵經驗功勳等，更可獲得聖裝兌換道具天書殘卷。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 1452, tip = "天書殘卷"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1086},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
end

Campaign:addConfig
{
	id = 2456,
	name = "國家遠征",
	level = {min = 60},
	icon_pathid = 1219,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 18, 0},
	recommendIndex = {0, 9, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1061,1062,1063,1064,1065,1066},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=351}},
		},
	brief_desc = "佔領敵國後方城市",
	detail_desc = "與夏侯惇交談接取任務，前往敵國佔領其京郊衛城，任務完成後可獲得豐厚獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1060},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2455,
	name = "幫會遠征",
	level = {min = 55},
	icon_pathid = 1222,
	type = 1,

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 19, 0},
	recommendIndex = {0, 8, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1054,1055,1056,1057,1058,1059},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=413}},
		},
	brief_desc = "前往敵國後方騷擾",
	detail_desc = "與幫會管理員交談接取任務，前往敵國京郊進行騷擾，任務完成後可獲得豐厚獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "幫會3級開啟",
	count_num = {type = "task", id = 1053},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1639,
	name = "幫會押鏢",
	level = {min = 30},
	icon_pathid = 1213,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 20, 0},
	recommendIndex = {0, 4, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {698},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {{nation = 0, action={type="talk", target=413}},
						{nation = 0, action={type="talk", target=413}},}
		},
	brief_desc = "押送本幫鏢車前往邊境",
	detail_desc = "本幫幫主與幫會管理員交談即可接取任務，開啟後護送鏢車至邊境大將處交還即可得到獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫貢、幫會資材和建設度"},
		},
	time_desc = "幫主開啟",
	count_num = {type = "common_use_limit", id = 865},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1195,
	name = "商會跑環[00ff00](周)[-]",
	level = {min = 40},
	icon_pathid = 1216,
	type = 2,

	typeIndex = {true, true, false},
	starLevel = {7, 5},
	sortIndex = {3, 22, 0},
	recommendIndex = {3, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_RingQuest",
			location = {nation = -1, type = "custom",target = function () require "Task.ECStorageTask".TryOpen(3) end},
		},
	brief_desc = "周常任務，獎勵豐富",
	detail_desc = "在商會跑環介面領取任務及獎勵，完成任務可獲得大量銀子、經驗和道具!\n注意：該活動為周常，每週最多可完成100環！",
	award = 
		{
			{icon = 1583 , tip = "大量銀子"},
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 706},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2315,
	name = "仙境採摘[00ff00](周)[-]",
	level = {min = 70},
	icon_pathid = 1976,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 23, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1020,1021,1022},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=7698}},
		},
	brief_desc = "在仙境掛機採集材料",
	detail_desc = "在南華護法處接取任務前往目標地點採集相應的材料，每次採集均可獲得獎勵，更有可能發現神秘的藏寶圖碎片！",
	award = 
		{
			{icon = 1200 , tip = "藏寶圖"},
			{icon = 1568 , tip = "大量經驗"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1051},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1979,
	name = "幫會煉丹",
	level = {min = 25},
	icon_pathid = 1212,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 24, 0},
	recommendIndex = {0, 2, 0},

	activity_num = 20,
	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "參與煉製幫會丹藥",
	detail_desc = "與幫會丹爐互動可參與幫會煉丹，完成要求即可獲得獎勵。每日幫會煉丹進度完成後,所有幫會成員可獲得神丹獎勵!",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 345},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 796,
	name = "幫會跑環",
	level = {min = 25},
	icon_pathid = 563,
	type = 2,

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 25, 0},
	recommendIndex = {0, 1, 0},

	activity_num = 2,
	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks = {436, 437, 438, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, main = 702},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=413}},
		},
	brief_desc = "獲得幫會貢獻",
	detail_desc = "與幫會管理員交談獲得任務，完成任務要求即可獲得幫會貢獻、幫會資材和幫會建設度獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 592},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 840,
	name = "迷宮探寶",
	level = {min = 30},
	icon_pathid = 503,
	type = 2,

	typeIndex = {true, true, true},
	starLevel = {4, 5},
	sortIndex = {6, 26, 33},
	recommendIndex = {4, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=2685}},
		},
	brief_desc = "<% if host.reputation(52) > 0 then %>剩餘<%=task_tool.format_left_time(host.reputation(52))%><% else %>掛機時間已用完！<% end %>",
	detail_desc = "與王城發丘中郎將交談前往皇陵迷宮,打敗怪物獲得大量寶物!\n注意：該活動每日掛機時間限制為1小時!",
	award = 
		{
			{icon = 1578 , tip = "隨機掉落獎勵"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 5693,
	name = "據點爭奪",
	level = {min = 60},
	icon_pathid = 3976,
	type = 3,

	typeIndex = {false, true, false},
	starLevel = {0, 8},
	sortIndex = {0, 27, 0},
	recommendIndex = {0, 2, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Area_War",
			location = {type = "custom" ,target = function () require  "GUI.ECPanelAreaWar".Instance():Toggle() end},
		},
	brief_desc = "參與據點爭奪獲得獎勵",
	detail_desc = "每天13:00開啟據點爭奪活動，持續至18:00結束。參與活動爭奪天人合一增益。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 3976 , tip = "特殊道具"},
		},
	time_desc = "每天13:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,						-- 开启时间类型 (格式同服务器脚本)
	time_sect =									-- 开启时间类型 (格式同服务器脚本)
		{
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 17, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, },
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 18, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, }, 
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 19, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, }, 
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 20, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, }, 
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 21, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, }, 
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 22, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, }, 
			{ BEGIN_TIME = {YEAR = 2017, MONTH = 8, DAY = 23, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 18000, },  
		},
	hide_on_activity_close = 5712,	--在指定活动关闭时隐藏活动，默认为 0
		open_notice = noticeEveryMinute(-5, 0, 1606),
	tip = "【據點爭奪】 正在進行",							-- 活动中显示的界面tip文字
}


Campaign:addConfig
{
	id = 6358,
	name = "試煉之巔",
	level = {min = 20},
	icon_pathid = 4088,
	type = 2,

	typeIndex = {true, true, false},
	starLevel = {0, 0},
	sortIndex = {30, 61, 30},
	recommendIndex = {0, 0,10},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=12931}},
		},
	brief_desc = "傳道授業，問道解惑",
	detail_desc = "師徒一同完成試煉，贏得來自水鏡先生的禮物",
	award = 
		{
			{icon = 4086, tip = "合生酒"},
			{icon = 4089, tip = "隱賢玉"},
		},
	time_desc = "全天開啟，每天一次",
	count_num = {type = "instance", id = 6443},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},

	hide_on_activity_close = 6358,
	tip = "",
}
-------------------------------------------------------以下内容为金钱----------------------------------------------------------


Campaign:addConfig
{
	id = 1201,
	name = "藏金窟",
	level = {min = 30},
	icon_pathid = 1211,
	type = 3,

	typeIndex = {true, false, false},
	starLevel = {8, 0},
	sortIndex = {1, 0, 0},
	recommendIndex = {5, 0, 0},

	activity_num = 10,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Money",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceMoney".Instance():Toggle() end},
		},
	brief_desc = "[8BA9FF]消耗10點體力[-]",
	detail_desc = "通關藏金窟可獲得大量銀子。",
	award = 
		{
			{icon = 1583 , tip = "大量銀子"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 883},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3865,
	name = "搖錢樹",
	level = {min = 60},
	icon_pathid = 2679,
	type = 3,

	typeIndex = {true, false, false},
	starLevel = {7, 0},
	sortIndex = {2, 0, 0},
	recommendIndex = {4, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1782,1783,1784,1786},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=8597}},
		},
	brief_desc = "培育搖錢樹獲得獎勵",
	detail_desc = "活動期間，每日完成搖錢樹相關的任務即可獲得大量金錢和一枚好運果，開啟好運果可得到綁定鑽石或東周卡牌獎勵！",
	award = 
		{
			{icon = 1583 , tip = "大量銀子"},
			{icon = 2678 , tip = "好運果"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1786},
	time_type = CTT.CTT_PER_YEAR,
	time_sect = {
		{ BEGIN_TIME = {MONTH = 11, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	hide_on_close = true,
	tip = "",
}

--[[
Campaign:addConfig
{
	id = 1195,
	name = "商会跑环",
	level = {min = 30},
	icon_pathid = 1216,
	type = 2,

	typeIndex = {true, true, false},
	starLevel = {7, 5},
	sortIndex = {2, 15, 0},
	recommendIndex = {3, 2, 0},	

	activity_num = 60,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {707,708,709,710,711,712,713,714,715,716,721,722,723,724,725,726,727,728,729,730},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=348}},
		},
	brief_desc = "完成商会跑环获得大量银子!",
	detail_desc = "　　与王城左慈交谈领取任务，完成获得大量银子奖励!\n　　注意：该活动每日前20次可获得高额奖励，每日完成全部60次方可获得活跃度奖励！",
	award = 
		{
			{icon = 1583 , tip = "大量银子"},
		},
	time_desc = "全天开放",
	count_num = {type = "task", id = 706},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
]]

--[[
Campaign:addConfig
{
	id = 23,
	name = "边境军需",
	level = {min = 30},
	icon_pathid = 1213,
	type = 1,

	typeIndex = {true, true, false},
	starLevel = {5, 6},
	sortIndex = {3, 9, 0},
	recommendIndex = {2, 0, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "escort",
			tasks = {346, 347, 348, 349, 350},
			items = {839, 840, 841, 842, 843},
			condition = {force = 0 , bindmoney = 10},
			location = {nation = 0, action={type="talk", target=399}},
		},
	brief_desc = "押送镖车获得大量银子。",
	detail_desc = "　　与王城军需官交谈，需要支付押镖令和一定数量的押金，任务完成时押金返还，失败则仅返还50%的押金。",
	award = 
		{
			{icon = 1568 , tip = "经验和功勋"},
			{icon = 1583 , tip = "大量银子"},
		},
	time_desc = "全天开放",
	count_num = {type = "task", id = 351},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 147,
	name = "国运",
	level = {min = 30},
	icon_pathid = 1218,
	type = 1,

	typeIndex = {true, true, false},
	starLevel = {5, 6},
	sortIndex = {5, 10, 0},
	recommendIndex = {6, 18, 0},


	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "escort",
			tasks = {346, 347, 348, 349, 350},
			items = {839, 840, 841, 842, 843},
			condition = {force = 0 , bindmoney = 10},
			location = {nation = 0, action={type="talk", target=399}},
		},
	brief_desc = "完成边境军需获得额外奖励。",
	detail_desc = "　　国运期间完成边境军需任务能够得到1.5倍的奖励加成！",
	award = 
		{
			{icon = 1568 , tip = "大量经验"},
			{icon = 1583 , tip = "大量银子"},
		},
	time_desc = "18:00至20:00",
	count_num = {type = "task", id = 351},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 7200},
	},
	open_notice = noticeOnce(-5, "%d分钟后国运活动开始"),
	close_notice = noticeOnce(-5, "国运活动将在%d分钟后结束"),
	tip = "【国运】18:00-20:00",
}
]]

--[[
Campaign:addConfig
{
	id = 840,
	name = "迷宫探宝",
	level = {min = 30},
	icon_pathid = 503,
	type = 2,

	typeIndex = {true, true, false},
	starLevel = {4, 5},
	sortIndex = {6, 16, 0},
	recommendIndex = {1, 1, 1},

	activity_num = 10,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=2685}},
		},
	brief_desc = "挂机打宝!(剩余<%=task_tool.format_left_time(host.reputation(52))%>）",
	detail_desc = "　　与王城发丘中郎将交谈前往皇陵迷宫,打败怪物获得大量宝物!\n　　注意：该活动每日挂机时间限制为2小时!",
	award = 
		{
			{icon = 1578 , tip = "随机掉落奖励"},
		},
	time_desc = "全天开放",
	count_num = {type = "none", id  = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
]]

Campaign:addConfig
{
	id = 5942,
	name = "國家運鏢",
	level = {min = 36},
	icon_pathid = 4133,
	type = 3,

	typeIndex = {true, false, false},
	starLevel = {0, 8},
	sortIndex = {0, 27, 0},
	recommendIndex = {0, 2, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0 , action={type="talk", target=12477}},
		},
	brief_desc = "參與國家運鏢獲得獎勵",
	detail_desc = "獲取征鏢令，捐獻積累本國國鏢建造點數；當建造點數滿時，即可開啟國鏢護送階段。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1583 , tip = "大量銀子"},
			{icon = 4132 , tip = "特殊道具"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,						-- 开启时间类型 (格式同服务器脚本)
	time_sect =									-- 开启时间类型 (格式同服务器脚本)
		{
			YEAR = 2022, MONTH = 3, DAY = 24, HOUR = 0, MIN = 5, SEC = 0, LAST_TIME = 588300
		},
	hide_on_activity_close = 5942,	--在指定活动关闭时隐藏活动，默认为 0
	tip = "",							-- 活动中显示的界面tip文字
}

Campaign:addConfig
{
	id = 10966,
	name = "國宴",
	level = {min = 1},
	icon_pathid = 4396,
	type = 1,

	typeIndex = {true, false, false},
	starLevel = {0, 8},
	sortIndex = {0, 27, 0},
	recommendIndex = {0, 2, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0 , action={type="talk", target=749}},
		},
	brief_desc = "保持活躍每週可領取國宴獎勵",
	detail_desc = "保持活躍，提升戰力，即可獲得更好的國宴獎勵",
	award = 
		{
			{icon = 5605 , tip = "彩鑽"},
			{icon = 1565 , tip = "馬草"},
			{icon = 6256 , tip = "秘術"},
			{icon = 5234 , tip = "龍紋金元"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,						-- 开启时间类型 (格式同服务器脚本)
	time_sect =									-- 开启时间类型 (格式同服务器脚本)
		{},
	hide_on_activity_close = 10966,	--在指定活动关闭时隐藏活动，默认为 0
	tip = "",							-- 活动中显示的界面tip文字
}
--------------------------------------------------------以下内容为道具----------------------------------------------------------------


Campaign:addConfig
{
	id = 1196,
	name = "種植",
	level = {min = 30},
	icon_pathid = 1224,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 1},
	recommendIndex = {0, 0, 12},

	activity_num = 3,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Plant",
			location = {type="custom", target=function () require "GUI.ECPanelPlant".Instance():Toggle() end},
		},
	brief_desc = "播種收穫豐厚獎勵物品",
	detail_desc = "在種植介面進行播種，等待一段時間後即可進行收穫，獲得體力、煉星洗煉道具！",
	award = 
		{
			{icon = 1580 , tip = "體力值"},
			{icon = 1573 , tip = "煉星洗煉道具"},
		},
	time_desc = "全天開放",
	count_num = {type = "common_use_limit", id = 1210},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3035,
	name = "鎖妖塔[00ff00](周)[-]",
	level = {min = 58},
	icon_pathid = 2234,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 2},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=7354}},
		},
	brief_desc = "獎勵兵法物品",
	detail_desc = "鎮壓鎖妖塔中的妖魔，不但可以為民除害，還可以獲得大量三十六計殘片和上古兵略，提升自身實力。",
	award = 
		{
			{icon = 1578 , tip = "三十六計殘片和上古兵略"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 2925},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 6936,
	name = "潼關之圍",
	level = {min = 50},
	icon_pathid = 1214,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 2},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target = 13723}},
		},
	brief_desc = "獎勵無字天書等稀有物品",
	detail_desc = "結伴前往被圍困的潼關，打敗敵軍將領，贏取大量獎勵。",
	award = 
		{
			{icon = 2444 , tip = "無字天書，地術殘卷等稀有物品"},
		},
	time_desc = "活動期間開放",
	count_num = {type = "task", id = 3025},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 794,
	name = "名將試煉",
	level = {min = 30},
	icon_pathid = 1223,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 3},
	recommendIndex = {0, 0, 11},

	activity_num = 5,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_HeroFight",
			location = {type = "custom" ,target = function () require "GUI.ECPanelHeroFight".Instance():ShowPanel(true) end},
		},
	brief_desc = "挑戰名將獲得卡牌",
	detail_desc = "戰勝名將，即可獲得三國或東周名將卡牌。\n名將卡牌可用於卡牌系統中，啟動卡牌屬性。",
	award = 
		{
			{icon = 1571 , tip = "名將卡牌"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 524},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 4973,
	name = "個人試煉",
	level = {min = 67},
	icon_pathid = 585,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 48},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_SelfChallenge",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceSelfChallenge".Instance():ShowPanel(true) end},
		},
	brief_desc = "挑戰自我，突破極限。",
	detail_desc = "每週參與個人試煉，每通關一層，便可獲得天賦精華。每層獎勵每週只能獲得一次。\n試煉排行越高，獲得的排行獎勵越好。",
	award = 
		{
			{icon = 3374, tip = "天賦精華"},
		},
	time_desc = "每週日21:30~下周日20:30",
	count_num = {type = "none", id = 0},
	
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 7, HOUR = 21, MIN = 0, SEC = 0, }, LAST_TIME = 601200},
	},

	hide_on_activity_close = 4935,
	tip = "",
}

Campaign:addConfig
{
	id = 5687,
	name = "同心之證",
	level = {min = 0},
	icon_pathid = 3851,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 60},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=6617}},
		},
	brief_desc = "夫妻同心，其利斷金",
	detail_desc = "夫妻一同完成月老的挑戰，贏取來自月老的祝福和禮物。",
	award = 
		{
			{icon = 3852, tip = "真心石"},
			{icon = 3850, tip = "恩愛值"},
		},
	time_desc = "全天開啟，每天一次",
	count_num = {type = "instance", id = 5608},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},

	hide_on_activity_close = 5687,
	tip = "",
}

Campaign:addConfig
{
	id = 2317,
	name = "八陣圖",
	level = {min = 50},
	icon_pathid = 2051,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 4},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Eight",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceEight".Instance():ShowPanel(true) end},
		},
	brief_desc = "挑戰八陣圖獲取獎勵",
	detail_desc = "在八陣圖中探索不同房間，尋找八陣護法。每個房間有不同的獎勵，擊殺八陣護法還可啟動永久屬性。",
	award = 
		{
			{icon = 2050 , tip = "人物屬性"},
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 5362,
	name = "平定馬賊",
	level = {min = 61},
	icon_pathid = 124,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 16},
	recommendIndex = {0, 0, 10},
	

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=1229}},
		},
	brief_desc = "獲取坐騎喚醒的物品",
	detail_desc = "平定關中馬賊，讓長安的百姓不再受到騷擾。並獲得坐騎喚醒的道具。",
	award = 
		{
			{icon = 1185, tip = "靈珠包裹"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 5281},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3647,
	name = "子午谷",
	level = {min = 59},
	icon_pathid = 2562,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 5},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Valley",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceValley".Instance():ShowPanel(true) end},
		},
	brief_desc = "獎勵培育法器的物品",
	detail_desc = "挑戰子午谷內的敵軍，可以獲得培養法器的夜明珠、淬煉法器的精華碎片、重置培養道具以及法器碎片。",
	award = 
		{
			{icon = 2454 , tip = "夜明珠"},
			{icon = 2453 , tip = "精華碎片"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 3460},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 3457,
	name = "跨服三國志",
	level = {min = 60},
	icon_pathid = 1219,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 6},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "三方跨服血戰沙場",
	detail_desc = "曹操、劉備、孫權三人委任六龍諸國，求能借諸國之力問鼎天下。每週日21:30-22:00，在洪荒幻境戰場傳送官處進入戰場，三方PK勝者為王。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週日21:30-22:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 7, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	hide_on_activity_close = 3974,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	open_notice = noticeEveryMinute(-5, 0, 1266),
	tip = "【跨服三國志】周日21:30-22:00",
}

Campaign:addConfig
{
	id = 5293,
	name = "跨服演武",
	level = {min = 60},
	icon_pathid = 1219,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 6},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "禁衛軍跨服演武",
	detail_desc = "洪荒幻境禁衛軍統帥為提升各將軍作戰能力，將於每週一舉辦演武，隨機加入龍虎陣營激戰演武校場",
	award = 
		{
			{icon = 3814, tip = "武勳"},
		},
	time_desc = "每週一21:30-22:30",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 1, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	hide_on_activity_close = 3974,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	open_notice = noticeEveryMinute(-5, 0, 1428),
	tip = "【跨服演武】週一21:30-22:30",
}


Campaign:addConfig
{
	id = 3463,
	name = "跨服任務",
	level = {min = 60},
	icon_pathid = 1226,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 7},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "洪荒幻境戰備任務",
	detail_desc = "洪荒幻境每週二、四、六的13:00-14:00、19:00-20:00。此期間可前往幻境的曹操、劉備、孫權處接取跨服任務。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週雙日13:00-14:00、19:00-20:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	--hide_on_close = true,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 2, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {WEEK = 4, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {WEEK = 6, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {WEEK = 2, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {WEEK = 4, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {WEEK = 6, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
	},
	hide_on_activity_close = 3974,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	open_notice = noticeEveryMinute(-5, 0, 1267),
	close_notice = noticeEveryMinute(-5, 0, 1268),
	tip = "【洪荒幻境】13:00-14:00、19:00-20:00",
}

--[[
Campaign:addConfig
{
	id = 3920,
	name = "跨服·装填弹药",
	level = {min = 60},
	icon_pathid = 1222,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 8},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "为城中火炮装填弹药",
	detail_desc = "魏国曹操欲修复城中废弃火炮，委任将军前往洪荒流寇处夺取弹药。装填越多的弹药，奖励越丰厚。",
	award = 
		{
			{icon = 2956, tip = "天下号令"},
		},
	time_desc = "13:00-14:00、19:00-20:00开启",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3921,
	name = "跨服·演武训练",
	level = {min = 60},
	icon_pathid = 1222,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 9},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "箭无虚发身手不凡",
	detail_desc = "吴国孙权听闻将军身手不凡，邀将军至演武场演武训练。120秒内击破越多的箭靶，奖励越多丰厚。",
	award = 
		{
			{icon = 2956, tip = "天下号令"},
		},
	time_desc = "13:00-14:00、19:00-20:00开启",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}
]]

Campaign:addConfig
{
	id = 3685,
	name = "洪荒凶獸",
	level = {min = 60},
	icon_pathid = 2586,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 10},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "擊殺洪荒幻境上古凶獸",
	detail_desc = "每週一、三、五、日的13:00、13:15、19:00、19:15，上古凶獸現身洪荒幻境。上古凶獸周身是寶，擊殺之可獲得大量獎勵。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週單日的13:00、19:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	--hide_on_close = true,
	hide_on_activity_close = 3974,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 00, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 19, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 13, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
	},
	--open_notice = noticeEveryMinute(-5, 0, 1269),
	tip = "",
}

Campaign:addConfig
{
	id = 4178,
	name = "戰場拾荒",
	level = {min = 60},
	icon_pathid = 714,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 11},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
			--{type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
		},
	brief_desc = "打掃戰場得獎勵",
	detail_desc = "每週日20:30-21:30期間可前往洪荒幻境進行拾荒活動，撿取戰場遺物即可獲得獎勵！",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
			{icon = 1569 , tip = "功勳"},
		},
	time_desc = "周日20:30-21:30",
	count_num = {type="custom", current=function () return 10-host.reputation(83) end, max=10},
	time_type = CTT.CTT_PER_WEEK,
	--hide_on_close = true,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 7, HOUR = 20, MIN = 30, SEC = 0, }, LAST_TIME = 3600},
	},
	open_notice = noticeOnce(0, 238),
	tip = "",
}

Campaign:addConfig
{
	id = 249,
	name = "除暴安良",
	level = {min = 45},
	icon_pathid = 1214,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 12},
	recommendIndex = {0, 0, 10},
	

	activity_num = 1,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {336, 337, 425, 532, 533, 534, 535,536,537,538,539,540,541,542,543,544,545,546,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,662,663,664,733,1568,735,736,737,738,739,740,741,742,743,744},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=1229}},
		},
	brief_desc = "搜尋並緝捕黃巾匪首",
	detail_desc = "除暴安良為連續任務，前往全國各地殺死匪首即可獲得獎勵，若未在5分鐘內殺死匪首則任務中斷。\n每完成5次任務會得到額外的獎勵任務！",
	award = 
		{
			{icon = 1575, tip = "馬草"},
			{icon = 1576 , tip = "馬具"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 440},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 3104,
	name = "過關斬將",
	level = {min = 40},
	icon_pathid = 972,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 13},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_SpinLottery",
			location = {type="custom", target=function () require "GUI.ECPanelLotteryGame".Instance():ShowPanel() end},
		},
	brief_desc = "過五關斬六將，贏道具",
	detail_desc = "過關斬將，一命到底，只有運氣與實力兼備的好手才能染指關底高價值大獎，寶石、煉星、卡牌、天書、地術應有盡有。",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1421},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2316,
	name = "亂世秘寶",
	level = {min = 70},
	icon_pathid = 1200,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 14},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Treasure",
			location = {type="custom", target=function () require "GUI.ECPanelTreasure".Instance():OpenPanel() end},
		},
	brief_desc = "使用藏寶圖尋找寶藏",
	detail_desc = "通過仙境採摘活動獲取神秘寶圖碎片，合成寶圖之後，按照寶圖指引到目標地點挖寶可獲得豐厚獎勵。",
	show_tip = "沒有藏寶圖，進行仙境採摘可以獲得哦！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "全天開放",
	count_num = {type = none, id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3016,
	name = "酒藝",
	level = {min = 51},
	icon_pathid = 2235,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 15},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Wine",
			location = {type="custom", target=function () require "GUI.ECPanelWineGame".Instance():ShowPanel() end},
		},
	brief_desc = "與其他玩家比拼酒量",
	detail_desc = "提升自己的酒量，與其他玩家拼酒，可獲得積分，道具，稱號，時裝等豐厚的獎勵。",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1203,
	name = "闖天關",
	level = {min = 35},
	icon_pathid = 917,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 16},
	recommendIndex = {0, 0, 0},
	

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Pass",
			location = {type = "custom" ,target = function () require "GUI.ECPanelPass".Instance():Toggle() end},
		},
	brief_desc = "通過闖天關的考驗",
	detail_desc = "參加闖天關可獲得靈羽和光羽。\n靈羽可用于翅膀培養。\n光羽可用於幻化飛升。",
	award = 
		{
			{icon = 1574 , tip = "靈羽"},
			{icon = 4467 , tip = "光羽"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 793,
	name = "擂臺爭霸",
	level = {min = 30},
	icon_pathid = 1222,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 17},
	recommendIndex = {0, 0, 0},

	activity_num = 1,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Arena",
			location = {type = "custom" ,target = function () require "GUI.ECPanelArena".Instance():Toggle() end},
		},
	brief_desc = "擂臺競技獲取榮譽",
	detail_desc = "完成擂臺可獲得大量榮譽。換取符文書籍，解鎖符文。",
	award = 
		{
			{icon = 1570 , tip = "技能絕招"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 525},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 45,
	name = "神樹",
	level = {min = 50},
	icon_pathid = 1224,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 18},
	recommendIndex = {0, 0, 7},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=913}},
		},
	brief_desc = "培育神樹獲取韜略果",
	detail_desc = "韜略果的品質由低到高對應白、藍、黃、綠、紫五種顏色，品質越高，獎勵越豐厚。",
	award = 
		{
			{icon = 1572 , tip = "韜略"},
		},
	time_desc = "全天開放",
	count_num = {type = "common_use_limit", id = 420},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3442,
	name = "龍爭虎鬥",
	level = {min = 47},
	icon_pathid = 2548,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 19},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation =
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -101, z = 22, action={type="talk", target=7858}}
		},
	brief_desc = "即時匹配競技",
	detail_desc = "曹氏父子為鞏固霸業，求才若渴，化身市井舉辦龍爭虎鬥大會，重金招募天下豪傑以攬入麾下。",
	award =
		{
			{icon = 1459 , tip = "漢帝密令"},
		},
	time_desc = "每週二，四，五21:30-21:45開啟。",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}
-- 实时竞技喊话用
Campaign:addConfig
{
	id = 3439,
	name = "單騎戰",
	level = {min = 47},
	icon_pathid = 2548,
	type = 2,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 20},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation =
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -101, z = 22, action={type="talk", target=7858}}
		},
	brief_desc = "即時匹配競技",
	detail_desc = "劉關張三兄弟為匡扶漢室，改名更姓化身客商潛入王城，舉辦龍爭虎鬥大會，重金招募天下豪傑以攬入麾下。比賽將於每週二，四，五開啟。",
	award =
		{
			{icon = 1459 , tip = "漢帝密令"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 2, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	open_notice = noticeEveryMinute(-5, 0, 1225),
	tip = "",
}

Campaign:addConfig
{
	id = 3440,
	name = "三英戰",
	level = {min = 47},
	icon_pathid = 2548,
	type = 2,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 21},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation =
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -101, z = 22, action={type="talk", target=7858}}
		},
	brief_desc = "即時匹配競技",
	detail_desc = "劉關張三兄弟為匡扶漢室，改名更姓化身客商潛入王城，舉辦龍爭虎鬥大會，重金招募天下豪傑以攬入麾下。比賽將於每週二，四，五開啟。",
	award =
		{
			{icon = 1459 , tip = "漢帝密令"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 4, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	open_notice = noticeEveryMinute(-5, 0, 1226),
	tip = "",
}
Campaign:addConfig
{
	id = 3441,
	name = "五虎戰",
	level = {min = 47},
	icon_pathid = 2548,
	type = 2,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 22},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation =
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -101, z = 22, action={type="talk", target=7858}}
		},
	brief_desc = "即時匹配競技",
	detail_desc = "劉關張三兄弟為匡扶漢室，改名更姓化身客商潛入王城，舉辦龍爭虎鬥大會，重金招募天下豪傑以攬入麾下。比賽將於每週二，四，五開啟。",
	award =
		{
			{icon = 1459 , tip = "漢帝密令"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 5, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	open_notice = noticeEveryMinute(-5, 0, 1227),
	tip = "",
}

Campaign:addConfig
{
	id = 1202,
	name = "皇陵寶庫",
	level = {min = 30},
	icon_pathid = 771,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 23},
	recommendIndex = {0, 0, 6},

	activity_num = 15,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Mausoleum",
			location = {type = "custom" ,target = function () require "GUI.ECPanelMausoleum".Instance():Toggle(3) end},
		},
	brief_desc = "[8BA9FF]消耗10點體力[-]",
	detail_desc = "通關皇陵寶庫可獲得神器。\n皇陵寶庫有S、A、B、C的評價等級，評價等級越高，獎勵越好。",
	award = 
		{
			{icon = 1579 , tip = "神器"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 830},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1200,
	name = "皇陵密室",
	level = {min = 25},
	icon_pathid = 775,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 24},
	recommendIndex = {0, 0, 5},

	activity_num = 5,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Mausoleum",
			location = {type = "custom" ,target = function () require "GUI.ECPanelMausoleum".Instance():Toggle(2) end},
		},
	brief_desc = "[8BA9FF]消耗10點體力[-]",
	detail_desc = "通關皇陵密室可獲得裝備升級道具。\n皇陵密室有S、A、B、C的評價等級，評價等級越高，獎勵越好。",
	award = 
		{
			{icon = 1582 , tip = "原石"},
			{icon = 1577 , tip = "皮料"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 829},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1199,
	name = "皇陵偏殿",
	level = {min = 25},
	icon_pathid = 774,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 25},
	recommendIndex = {0, 0, 4},
	
	activity_num = 5,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Mausoleum",
			location = {type = "custom" , target = function () require "GUI.ECPanelMausoleum".Instance():Toggle(1) end},
		},
	brief_desc = "[8BA9FF]消耗10點體力[-]",
	detail_desc = "通關皇陵偏殿可獲得裝備升級道具。\n皇陵偏殿有S、A、B、C的評價等級，評價等級越高，獎勵越好。",
	award = 
		{
			{icon = 1573 , tip = "煉星石"},
			{icon = 1581 , tip = "洗煉石"},
		},
	time_desc = "全天開放",
	count_num = {type = "instance", id = 828},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2780,
	name = "單人戰場",
	level = {min = 52},
	icon_pathid = 592,
	type = 3,	--日常

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 27},
	recommendIndex = {0, 0, 3},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Battle",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceBattle".Instance():Toggle() end},
		},
	brief_desc = "參與戰場獲得豐富獎勵",
	detail_desc = "戰場破敵獲取積分，積分越高獎勵越豐厚！\n注意：戰場將在每日11:40，17:40，20:40開啟！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "定時開啟",
	count_num = {type = "instance", id = 2497},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

--真正的单人战场活动，仅用于喊话
Campaign:addConfig
{
	id = 2635,
	name = "單人戰場",
	level = {min = 65},
	icon_pathid = 592,
	type = 0,	--日常

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 0},
	recommendIndex = {0, 0, 0},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Battle",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceBattle".Instance():Toggle() end},
		},
	brief_desc = "參與戰場獲得豐富獎勵",
	detail_desc = "戰場破敵獲取積分，積分越高獎勵越豐厚！\n注意：戰場將在每日11：40，17：40，20：40開啟！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "定時開啟",
	count_num = {type = "instance", id = 2497},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{
		{ BEGIN_TIME = {HOUR = 11, MIN = 40, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {HOUR = 17, MIN = 40, SEC = 0, }, LAST_TIME = 300},
		{ BEGIN_TIME = {HOUR = 20, MIN = 40, SEC = 0, }, LAST_TIME = 300},
	},
	open_notice = noticeEveryMinute(-5, 0, 1107),
	tip = "",
}


Campaign:addConfig
{
	id = 15290,    --此跑跑大赛用于本服的活动预告和喊话
	name = "跑跑大賽",
	level = {min = 60},
	icon_pathid = 4050,
	type = 3,	--日常


	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 7},
	recommendIndex = {0, 0, 0},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
		},
	-- operation = 
	-- 	{
	-- 		operation_type = 2,
	-- 		ui = "Panel_Instance_Battle",
	-- 		location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceBattle".Instance():Toggle() end},
	-- 	},
	brief_desc = "參與跑跑大賽獲得豐富獎勵",
	detail_desc = "完成跑跑大賽，排名越高獎勵越好！\n注意：大賽將在每日13:20，13:30，13:40開啟！\n每日三次，入場時間持續2分鐘，過期不候！",
	award = 
		{
			{icon = 1861 , tip = "伯樂經"},
		},
	time_desc = "13:20~13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 16, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 17, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 18, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 19, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 20, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 21, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 12, DAY = 22, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	open_notice = noticeEveryMinute(-2, 0, 2432),
	hide_on_activity_close = 15697,
}

--真正的跑跑大赛
Campaign:addConfig
{
	id = 15287,
	name = "跑跑大賽",
	level = {min = 60},
	icon_pathid = 4050,
	type = 5,	--日常

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 7, 0, 2},
	recommendIndex = {0, 0, 0},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=19603}},
		},
	brief_desc = "參與跑跑大賽獲得豐富獎勵",
	detail_desc = "完成跑跑大賽，排名越高獎勵越好！\n注意：大賽將在每日13:20，13:30，13:40開啟！\n每日三次，入場時間持續2分鐘，過期不候！",
	award = 
		{
			{icon = 1861 , tip = "伯樂經"},
		},
	time_desc = "13:20~13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 23, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 24, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 25, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 26, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 27, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 28, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2020, MONTH = 4, DAY = 29, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	hide_on_activity_close = 15697,
}

Campaign:addConfig
{
	id = 19282,    --此跑跑大赛用于本服的活动预告和喊话
	name = "勝者為王",
	level = {min = 50},
	icon_pathid = 4050,
	type = 3,	--日常


	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 7},
	recommendIndex = {0, 0, 0},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = {type = "custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
		},
	-- operation = 
	-- 	{
	-- 		operation_type = 2,
	-- 		ui = "Panel_Instance_Battle",
	-- 		location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceBattle".Instance():Toggle() end},
	-- 	},
	brief_desc = "參與勝者為王戰場獲得豐富獎勵",
	detail_desc = "參與勝者為王戰場，積分排名越高獎勵越好！\n注意：戰場將在每日13:20，13:35開啟！\n每日兩次，入場時間持續3分鐘，過期不候！",
	award = 
		{
			{icon = 1861 , tip = "伯樂經"},
		},
	time_desc = "13:20~13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 5, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 6, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 7, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 8, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 9, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 10, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 11, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
--	open_notice = noticeEveryMinute(-2, 0, 2432),
	hide_on_activity_close = 19282,
}

--真正的胜者为王
Campaign:addConfig
{
	id = 19283,
	name = "勝者為王",
	level = {min = 50},
	icon_pathid = 4050,
	type = 5,	--日常

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 7, 0, 2},
	recommendIndex = {0, 0, 0},
	
	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=22013}},
		},
	brief_desc = "參與勝者為王戰場獲得豐富獎勵",
	detail_desc = "參與勝者為王戰場，積分排名越高獎勵越好！\n注意：戰場將在每日13:20，13:35開啟！\n每日兩次，入場時間持續3分鐘，過期不候！",
	award = 
		{
			{icon = 1861 , tip = "伯樂經"},
		},
	time_desc = "13:20~13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 5, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 6, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 7, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 8, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 9, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 10, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 5, DAY = 11, HOUR = 13, MIN = 20, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	hide_on_activity_close = 19283,
}

Campaign:addConfig
{
	id = 3103,
	name = "幫會戰",
	level = {min = 36},
	icon_pathid = 1222,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 6},
	sortIndex = {0, 0, 28},
	recommendIndex = {0, 1, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_FactionWar",
			location = {type = "custom", target = function () require "GUI.ECPanelFactionWar".Instance():TryPopup() end},
		},
	brief_desc = "眾幫會爭奪六國各城池領地",
	detail_desc = "每週三、週六開啟，眾幫會參與爭奪六國各城池領地。參與戰鬥可獲勝負和排名獎勵，成功佔領領地每日還可領取領地獎勵。",
	award = 
		{
			{icon = 2336, tip = "上古兵策"},
			{icon = 1453 , tip = "過關斬將通牒"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "每週三、六開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 863,
	name = "幫會果樹",
	level = {min = 25},
	icon_pathid = 1224,
	type = 3,	--日常

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 29},
	recommendIndex = {0, 0, 3},
	
	activity_num = 1,
	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "培育幫會果樹",
	detail_desc = "每晚21：00開始進行幫會果樹澆水，完成活動將會獲得幫會貢獻、幫會建設度以及幫會小豬餵養所需道具！",
	award = 
		{
			{icon = 1566 , tip = "幫會貢獻"},
			{icon = 2184 , tip = "幫會建設度"}
		},
	time_desc = "21:00~21:10",
	count_num = {type = "task", id = 699},
	time_type = CTT.CTT_PER_DAY,					-- 开启时间类型 (格式同服务器脚本)
	time_sect =										-- 开启时间类型 (格式同服务器脚本)
	{
		{ BEGIN_TIME = {HOUR = 21, MIN = 0, SEC = 0, }, LAST_TIME = 600},
	},
	open_notice = noticeEveryMinute(-10, 0, 507),
	close_notice = noticeFactionRepuOnce(0, 508, 1),	--更新帮会声望(1)后喊话
	tip = "",
}

Campaign:addConfig
{
	id = 1640,
	name = "幫會小豬",
	level = {min = 25},
	icon_pathid = 1141,
	type = 3,	--日常

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 30},
	recommendIndex = {0, 0, 2},
	
	activity_num = 1,
	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "為幫會小豬餵食神奇果",
	detail_desc = "攜帶神奇果前往幫會莊園餵養幫會小豬可獲得幫會貢獻和幫會建設度，小豬成長值達到上限後可由幫主召喚長大的小豬。",
	award = 
		{
			{icon = 1566 , tip = "幫會貢獻"},
			{icon = 2184 , tip = "幫會建設度"}
		},
	time_desc = "全天開放",
	count_num = {type = "common_use_limit", id = 834},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2721,
	name = "幫會防守[00ff00](周)[-]",
	level = {min = 25},
	icon_pathid = 574,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 31},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "擊敗怪物守衛幫會莊園",
	detail_desc = "幫主與幫會總管(莊園內)交談即可開啟活動，防禦怪物進攻保護本幫財物不受損失即可獲得獎勵。\n（[ff0000]每日20：30-21：10分之間無法開啟[-]）",
	award = 
		{
			{icon = 1899 , tip = "幫會貢獻、木材、資材和建設度"},
			{icon = 1182 , tip = "2級以上寶石"},
			{icon = 497 , tip = "洗煉石"},
		},
	time_desc = "幫主開啟",
	count_num = {type = "faction_reputation", id = 11, max = 1},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2496,
	name = "天降寶箱",
	level = {min = 35},
	icon_pathid = 1900,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 32},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -47.43, z = 64.45, action={type="none", target=0}}
		},
	brief_desc = "爭奪寶箱贏得稀有道具",
	detail_desc = "活動期間會在王城地圖內隨機刷出寶箱，開啟可隨機獲得道具獎勵，其中也包括[ff2400]商城道具[-]！每次活動[ff2400]每人最多開3個[-]，不要太貪心喲！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "10:30和17:00",
	-- count_num = {type = "common_use_limit", id = 2781},
	count_num = {type = "reputation", id = 63, max = 3},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 10, MIN = 30, SEC = 20, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 17, MIN = 0, SEC = 20, }, LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-10, 0, 1061),
	close_notice = noticeEveryMinute(-5, 0, 1062),
	tip = "",
}

Campaign:addConfig
{
	id = 6837,
	name = "八卦熔煉秘寶",
	level = {min = 36},
	icon_pathid = 4458,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 32},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -140.5, z = 120.7, action={type="none", target=0}}
		},
	brief_desc = "使用八卦熔煉變廢為寶",
	detail_desc = "活動期間，使用八卦熔煉爐可隨機熔煉出任意道具，其中包括[ff2400]稀有坐騎[-]！[ff2400]每天可免費熔煉5次[-]，使用[ff2400]八卦秘卷[-]獲得更多熔煉機會！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "13:00~14:00",
	count_num = {type = "common_use_limit", id = 6888},
	--count_num = {type = "reputation", id = 63, max = 5},
	time_type = CTT.CTT_PER_YEAR2,	
	--hide_on_close = true,
	hide_on_activity_close = 6926,
	time_sect ={
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 26, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 27, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 28, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 29, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 30, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 1, DAY = 31, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {YEAR = 2023, MONTH = 2, DAY = 1, HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
	},
	open_notice = noticeEveryMinute(-10, 0, 1775),
	close_notice = noticeEveryMinute(-10, 0, 1776),
	tip = "",
}


Campaign:addConfig
{
	id = 8723,--每个地区注意更换活动  大陆地区为8723   台湾地区为8724    韩国地区为8725
	name = "遠征戰場",
	level = {min = 60},
	icon_pathid = 5354,
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 32},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -49.6, z = 156.9, action={type="talk", target=749}}
		},
	brief_desc = "遠征戰場",
	detail_desc = "活動期間，滿足條件的玩家可進入[ff2400]“遠征戰場”[-]參加物資爭奪戰，與其他地區玩家同場競技，勇奪第一！",
	award = 
		{
			{icon = 5355 , tip = "九州遺物"},
		},
	time_desc = "18:10~18:45",
	-- count_num = {type = "common_use_limit", id = 2781},
	count_num = {type = "reputation", id = 0,},
	time_type = CTT.CTT_PER_YEAR2,	
	--hide_on_close = true,
	hide_on_activity_close = 8875,--与各个地区六龙庆典活动一致
	--time_desc = "限时开启",
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 12, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 13, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 14, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 15, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 16, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 17, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
		{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 18, HOUR = 18, MIN = 10, SEC = 0, }, LAST_TIME = 2100},
	},
	open_notice = noticeEveryMinute(-10, 0, 2025),
	tip = "",
}

Campaign:addConfig
{
	id = 3027,
	name = "合服補償",
	level = {min = 0},
	icon_pathid = 1185,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 34},
	recommendIndex = {0, 0, 20},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -24.3, z = 80.8, action={type="talk", target=7420}}
		},
	brief_desc = "領取合服補償",
	detail_desc = "合服活動開啟期間，每天均可與王城的甄宓交談領取一份合服補償獎勵！",
	award = 
		{
			{icon = 747 , tip = "傳奇經驗丹"},
			{icon = 2076 , tip = "2倍經驗丸"},
			{icon = 276 , tip = "100綁定鑽石"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1348},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3028,
	name = "合服補償",
	level = {min = 0},
	icon_pathid = 1185,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 35},
	recommendIndex = {0, 0, 20},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -24.3, z = 80.8, action={type="talk", target=7420}}
		},
	brief_desc = "領取合服補償",
	detail_desc = "合服活動開啟期間，每天均可與王城的甄宓交談領取一份合服補償獎勵！",
	award = 
		{
			{icon = 738 , tip = "綠色豪傑酒"},
			{icon = 724 , tip = "綠色封魔帖"},
			{icon = 743 , tip = "綠色押鏢令"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1349},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3013,
	name = "擊殺GM",
	level = {min = 0},
	icon_pathid = 1223,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 36},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 3,
			desc = "六龍GM成員將在邊境隨機刷新，快去尋找吧！"
		},
	brief_desc = "在邊境擊殺六龍GM",
	detail_desc = "活動開啟後在邊境隨機地點出現六龍GM成員，殺死六龍GM成員將掉落大量無歸屬獎勵，所有參與玩家均有機會拾取！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
		},
	time_desc = "不定時開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}
--[[
Campaign:addConfig
{
	id = 3076,
	name = "圣诞赠礼",
	level = {min = 0},
	icon_pathid = 2359,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 37},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -1.89 ,z = 81.52 , action={type="talk", target=7530}}
		},
	brief_desc = "领取圣诞袜子",
	detail_desc = "圣诞老人每日都会免费送你一只圣诞袜子，快去打开看看是什么礼物吧！\n注意：圣诞雪人活动中会赠与额外的圣诞袜子！",
	award = 
		{
			{icon = 1578 , tip = "随机奖励"},
			{icon = 4496 , tip = "冬日礼赞(限时)"},
		},
	time_desc = "限时开启",
	count_num = {type = "task", id = 1355},
	time_type = CTT.CTT_PER_YEAR,
	time_sect = 
	{
		{ BEGIN_TIME = {MONTH = 12, DAY = 22, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	hide_on_close = true,
	time_sect = {},
	tip = "",
}
]]--
Campaign:addConfig
{
	id = 3076,
	name = "聖誕雪人",
	level = {min = 55},
	icon_pathid = 2360,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 38},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1351},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -48.11 ,z = 63.99 , action={type="talk", target=7489}}
		},
	brief_desc = "采雪球堆雪人得禮物",
	detail_desc = "每日12、14、16、18、20、22點時京郊會降下瑞雪，在此期間可以前往挖掘雪球，使用雪球在王城培養自己的雪人即可獲得聖誕獎勵！",
	award = 
		{
			{icon = 9522 , tip = "聖誕時裝"},
			{icon = 2359 , tip = "聖誕襪子"},
			{icon = 1183 , tip = "雪人大小排行獎勵"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 3184,
	name = "不顯示，雪堆出現提示",
	level = {min = 0},
	icon_pathid = 2360,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 3,
			desc = "8點開始，每隔兩小時可在京郊採集雪球"
		},
	brief_desc = "前往京郊採集雪球",
	detail_desc = "每日12、14、16、18、20、22點京郊會出現聖誕雪堆，採集到的雪球可用來培養雪人哦！",
	award = 
		{
			{icon = 1578 , tip = "隨機獎勵"},
			{icon = 2360 , tip = "聖誕雪球"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 14, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 20, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 3600},
	},
	open_notice = noticeOnce(0, 215),
	close_notice = noticeOnce(0, 216),
	tip = "",
	hide_on_activity_close = 3076,
}

Campaign:addConfig
{
	id = 3561,
	name = "新春送禮",
	level = {min = 0},
	icon_pathid = 2559,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 39},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -48.11 ,z = 64 , action={type="talk", target=7987}}
		},
	brief_desc = "領取六龍新春禮品",
	detail_desc = "每天與六龍新春大使交談可領取新春紅包和新春活動任務！\n提示：獎勵豐厚，童叟無欺！",
	award = 
		{
			{icon = 2561 , tip = "春節禮袋"},
			{icon = 2557 , tip = "新春鞭炮"},
		},
	time_desc = "全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 6, MIN = 0, SEC = 0, }, LAST_TIME = 583200},
	},
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3562,
	name = "驅趕年獸",
	level = {min = 0},
	icon_pathid = 2557,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 40},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 3,
			desc = "每日12:00至18:00在王城城外隨機刷新落單年獸！"
		},
	brief_desc = "尋找落單年獸",
	detail_desc = "每日12:00至18:00在王城城外隨機刷新落單的年獸，殺死可獲得擊殺年獸積分，使用鞭炮可快速擊殺落單年獸！",
	award = 
		{
			{icon = 592 , tip = "擊殺年獸積分"},
			{icon = 2586 , tip = "擊殺年獸排行獎勵"},
		},
	time_desc = "12:00-18:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 21600},
	},
	open_notice = noticeOnce(0, 217),
	close_notice = noticeOnce(0, 218),
	hide_on_activity_close = 3561,
	tip = "",
}

Campaign:addConfig
{
	id = 3563,
	name = "年獸攻城",
	level = {min = 0},
	icon_pathid = 2586,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 41},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 3,
			desc = "年獸攻城啦，還不去城門防守想什麼呢？"
		},
	brief_desc = "怪物攻城送好禮",
	detail_desc = "春節期間每日21:15會有大量年獸進攻王城，擊殺年獸可獲得積分！\n提示：恐怖的年獸會掉落大量新春禮袋，見者有份！",
	award = 
		{
			{icon = 2557 , tip = "新春鞭炮"},
			{icon = 2561 , tip = "春節禮袋"},
		},
	time_desc = "每晚21:15",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 21, MIN = 15, SEC = 0, }, LAST_TIME = 600},
	},
	open_notice = noticeEveryMinute(-5, 0, 219),
	close_notice = noticeOnce(0, 220),
	hide_on_activity_close = 3561,
	tip = "",
}

Campaign:addConfig
{
	id = 3677,
	name = "仙境年獸",
	level = {min = 0},
	icon_pathid = 2555,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 42},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5022, x = 1, z = -31, action={type="none", target=0}}
		},
	brief_desc = "搶年獸得福袋",
	detail_desc = "春節期間每日12:00、16:00、19:00、22:00會有大量年獸入侵南華仙境，更有可能出現恐怖的年獸，擊殺可獲得大量禮袋！",
	award = 
		{
			{icon = 2561 , tip = "春節禮袋"},
		},
	time_desc = "12:00/16:00\n19:00/22:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 27, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 28, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 29, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 30, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY = 31, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 1, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 2, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 3, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 4, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 5, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 6, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 7, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 8, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 2, DAY = 9, HOUR = 22, MIN = 0, SEC = 0, }, LAST_TIME = 1802},
	},
	open_notice = noticeEveryMinute(-5, 0, 226),
	close_notice = noticeOnce(0, 227),
	hide_on_activity_close = 3561,
	tip = "",
}

Campaign:addConfig
{
	id = 4236,
	name = "愚人節",
	level = {min = 35},
	icon_pathid = 3167,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 43},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 3,
			desc = "13點-22點期間每個整點都會有福利資訊，就看你信不信！"
		},
	brief_desc = "尋找整蠱大師領取福利",
	detail_desc = "活動期間每日13:00-22:00每個整點都會放出整蠱大師的消息，不過，消息是否準確呢？",
	award = 
		{
			{icon = 2448 , tip = "愚人節禮物"},
			{icon = 3166 , tip = "愚人徽章"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 4, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 518400},
	},
	tip = "",
}


Campaign:addConfig
{
	id = 4358,
	name = "慶典祭祀",
	level = {min = 20},
	icon_pathid = 3267,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 44},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -48.11, z = 63.99, action={type="talk", target=10544}}
		},
	brief_desc = "祭祀物品得神龍",
	detail_desc = "活動期間每日向年度慶典神龍祭祀物品，貢獻達到一定數量即可領取獎勵，活動結束時更有排行榜好禮等你拿！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 3267 , tip = "幻朧"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 4, DAY = 7, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 4271,
	name = "週年集字",
	level = {min = 20},
	icon_pathid = 3240,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 45},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -90.9, z = 160.7, action={type="talk", target=10454}}
		},
	brief_desc = "收集卡片兌換禮品",
	detail_desc = "活動期間每日進入“伏龍秘境”副本打怪集卡，可在六龍慶典介面兌換超級大禮。",
	award = 
		{
			{icon = 8587, tip = "週年慶坐騎"},
			{icon = 1454 , tip = "週年慶稱號"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2021, MONTH = 10, DAY = 28, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 4524,
	name = "仙獸獵苑",
	level = {min = 45},
	icon_pathid = 2552,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 46},
	recommendIndex = {0, 0, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1983,1984,1985,1986,1987,1988,1989,1990,1991,2015,2244,2245,2246,2247,2248,2249,2250,2255,2256,2257,2258},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = 52.73, z = 45.03, action={type="talk", target=10505}}
		},
	brief_desc = "做任務得寵物道具",
	detail_desc = "每日完成“拯救仙獸”任務、“仙獸獵苑”副本，可獲得寵物口糧、洗髓丹、秘隕、寶玉與寵物蛋碎片。",
	award = 
		{
			{icon = 3123, tip = "寵物口糧"},
			{icon = 3362, tip = "寵物蛋碎片"},
			{icon = 3289, tip = "秘隕"},
			{icon = 3708, tip = "寶玉"},
		},
	time_desc = "全天開啟",
	count_num = {type = "task", id = 2258},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 4690,
	name = "極限挑戰",
	level = {min = 50},
	icon_pathid = 1219,
	type = 0,

	typeIndex = {false, true, true},
	starLevel = {0, 5},
	sortIndex = {0, 27, 47},
	recommendIndex = {0, 3, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {2021,2017,2018,2019,2020,2044,2045,2046,2047,2048,2064,2067,2068,2069,2070,2071,2072,2073,2074},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -8.95, z = 170.73, action={type="talk", target=10732}}
		},
	brief_desc = "擊殺怪物獲得豐碩獎勵",
	detail_desc = "于王城典韋處接取任務擊殺高於或相當於自身等級的怪物，任務分為多個階段，每完成一個階段即可獲得獎勵，並自動接取下一階段任務。",
	award = 
		{
			{icon = 2229, tip = "地術殘卷"},
			{icon = 2228, tip = "無字天書"},
			{icon = 2230, tip = "通靈神冊"},
		},
	time_desc = "4月21日至4月27日",
	count_num = {type = "task", id = 2074},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 4, DAY = 21, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 4967,
	name = "超越極限",
	level = {min = 55},
	icon_pathid = 1219,
	type = 0,

	typeIndex = {false, true, true},
	starLevel = {0, 5},
	sortIndex = {0, 28, 48},
	recommendIndex = {0, 3, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087,2088,2089,2091,2092,2093,2094,2095,2096,2097},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -8.95, z = 170.73, action={type="talk", target=10942}}
		},
	brief_desc = "完成任務獲取豐碩獎勵",
	detail_desc = "于王城典韋處接取，任務分三大階段，每一階段都有豐碩獎勵等你拿！",
	award = 
		{
			{icon = 2229, tip = "地術殘卷"},
			{icon = 2228, tip = "無字天書"},
			{icon = 2230, tip = "通靈神冊"},
		},
	time_desc = "5月5日至5月11日",
	count_num = {type = "task", id = 2097},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 5, DAY = 5, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 5237,
	name = "福星收錄",
	level = {min = 20},
	icon_pathid = 3647,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 49},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -48.5, z = 64.1, action={type="talk", target=11275}}
		},
	brief_desc = "祈福兌換有好禮",
	detail_desc = "活動期間在福星老人處使用福星彩珠祈福，當祈福次數到達一定值時即會獲得好禮，活動結束時更有排行榜好禮等你拿！福星彩珠也可在六龍慶典介面兌換禮品。",
	award = 
		{
			{icon = 3123 , tip = "寵物經驗丹"},
			{icon = 2229 , tip = "地術殘卷"},
			{icon = 1454 , tip = "神秘稱號"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 8, DAY = 6, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}


Campaign:addConfig
{
	id = 5220,
	name = "歡樂翻牌",
	level = {min = 20},
	icon_pathid = 3678,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 50},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Publictest",
			location = {type = "custom", target = function () require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_ChildrenDay01" end) end},
		},
	brief_desc = "翻卡牌得好禮",
	detail_desc = "在六龍慶典介面中開啟歡樂翻牌活動，根據3次翻牌的結果，可領取不同的獎勵，每日最多可領取3次獎勵。",
	award = 
		{
			{icon = 3678 , tip = "歡樂值"},
			{icon = 6561 , tip = "時裝"},
		},
	time_desc = "限時開啟",
	count_num = {type = "common_use_limit", id = 5233},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 5, DAY = 26, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 5259,
	name = "糖果屋",
	level = {min = 20},
	icon_pathid = 3676,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 51},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -90.96, z = 162.71, action={type="talk", target=11314}}
		},
	brief_desc = "前往糖果屋玩耍",
	detail_desc = "活動期間與王城NPC怪叔叔交談可以前往糖果屋，在糖果屋內不被糖果人粘到即可獲得獎勵，每日可進入5次，最多獲得3次成功獎勵，失敗則可獲得小紅花！",
	award = 
		{
			{icon = 3676 , tip = "小紅花"},
			{icon = 1454 , tip = "幸運兒稱號"},
		},
	time_desc = "限時開啟",
	count_num = {type = "instance", id = 5253},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 5, DAY = 26, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}


Campaign:addConfig
{
	id = 5240,
	name = "歡樂值兌換",
	level = {min = 20},
	icon_pathid = 1454,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 52},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Publictest",
			location = {type = "custom", target = function () require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_ChildrenDay02" end) end},
		},
	brief_desc = "歡樂值換稱號",
	detail_desc = "糖果節活動期間積累的歡樂值可在活動結束後於六龍慶典介面兌換專屬稱號！",
	award = 
		{
			{icon = 1454 , tip = "糖果節稱號"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 6, DAY = 2, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 259200},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 4788,
	name = "歐國盃競猜",
	level = {min = 20},
	icon_pathid = 3712,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 53},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = 65.72, z = 154.06, action={type="talk", target=10743}}
		},
	brief_desc = "歐國盃競猜得大獎",
	detail_desc = "活動期間可在歐國盃競猜官處使用歐國盃代幣參與競猜。",
	award = 
		{
			{icon = 3782 , tip = "高盧英姿"},
			{icon = 1185 , tip = "時裝禮包"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 6, DAY = 2, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 2419200},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 5504,
	name = "奧運田徑賽",
	level = {min = 30},
	icon_pathid = 3918,
	type = 0,

	typeIndex = {true, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 29, 54},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5009, x = 95.99, z = 84.52, action={type="talk", target=1417}}
		},
	brief_desc = "奧運田徑賽",
	detail_desc = "活動期間可在臥龍崗孫醫仙處參加比賽。",
	award = 
		{
			{icon = 766 , tip = "業餘組參賽令"},
		},
	time_desc = "限時開啟",
	count_num = {type = "task", id = 2259},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2016, MONTH = 7, DAY = 28, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 777600},
	},
	tip = "",
}
Campaign:addConfig
{
	id = 5753,
	name = "月圓中秋",
	level = {min = 1},
	icon_pathid = 4056,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Publictest",
			location = {type = "custom", target = function () require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_Moon-moon" end) end},
		},
	brief_desc = "贈送禮物獲得獎品",
	detail_desc = "活動期間內參與刺探軍情、九龍鼎、火燒敵營任務可獲得中秋專屬禮包，集齊中秋快樂四個字還能兌換大獎！更有排行榜等你衝擊！",
	award = 
		{
			{icon = 10052 , tip = "夜宴·神"},
			{icon = 10051 , tip = "絮嵐尋夢"},
			{icon = 1454 , tip = "拜月者·四"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 9, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}
Campaign:addConfig
{
	id = 5966,
	name = "國力爭霸",
	level = {min = 30},
	icon_pathid = 2210,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 20},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -48.2, z = -115.5, action={type="talk", target=12590}}
		},
	brief_desc = "國力爭霸戰",
	detail_desc = "活動期間內貢獻本國將軍戰力，可獲得高額獎勵，還能衝擊排行榜，獲得稀有坐騎！全新玩法，國家爭霸，全國玩家都能得到獎勵，還不快來參加！",
	award = 
		{
			{icon = 10080 , tip = "墨魂·神"},
			{icon = 2230 , tip = "通靈神冊"},
			{icon = 1454 , tip = "國之無雙·六"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2022, MONTH = 9, DAY = 29, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}

Campaign:addConfig
{
	id = 7059,
	name = "英雄令",
	level = {min = 60},
	icon_pathid = 3405,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 38},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_TaskQuest",
			location = {nation = -1, type = "custom",target = function () require "GUI.ECPanelTaskQuest".Instance():ShowPanel(true) end},
		},
	brief_desc = "煮酒論英雄",
	detail_desc = "國家、幫會英雄令每日各完成前三次可獲得大量經驗及銀子獎勵。國家、幫會英雄令整體進度完成後，每位參加的將軍還可各獲得一份豐厚禮包。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1583 , tip = "大量銀子"},
			{icon = 4351 , tip = "豐厚禮包"},
		},
	time_desc = "限時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 7138,				--7139青龙 7140朱雀  7141白虎 7142玄武
	name = "聖獸齊襲",
	level = {min = 50},
	icon_pathid = 4587,			--4585青龙 4586 白虎 4587 玄武
	type = 2,

	typeIndex = {false, true, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 40},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=348}},
		},
	brief_desc = "聖獸齊襲",
	detail_desc = "前往挑戰聖獸可獲得人皇遺篇，並有幾率獲得絕世坐騎。",
	award = 
		{
			{icon = 2231 , tip = "人皇遺篇"},
			{icon = 4585 , tip = "青龍之靈"}, 
			{icon = 4586 , tip = "白虎之靈"}, 
			{icon = 4587 , tip = "玄武之靈"}, 
		},
	time_desc = "18:00-22:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
	{BEGIN_TIME = {YEAR = 2022, MONTH = 1, DAY =27, HOUR = 6, MIN = 0, SEC = 0, }, LAST_TIME = 1188000},
	},
	
	hide_on_activity_close = 7138,
	
	tip = "",
}

--[[
--特殊处理
Campaign:addConfig
{
	id = 7139,				--7139青龙 7140朱雀  7141白虎 7142玄武
	name = "圣兽青龙",
	level = {min = 50},
	icon_pathid = 4585,			--4585青龙 4586 白虎 4587 玄武
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 40},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=348}},
		},
	brief_desc = "圣兽青龙",
	detail_desc = "挑战圣兽青龙可获得人皇遗篇，并有几率获得绝世坐骑青龙之灵。",
	award = 
		{
			{icon = 4585 , tip = "青龙之灵"}, 
			{icon = 2231 , tip = "人皇遗篇"},
		},
	time_desc = "18:00-22:00",
	count_num = {type = "task", id = 2840},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
	},
	
	hide_on_activity_close = 7138,
	
	tip = "",
}

local FourSpiritCfg = dofile "Configs/fourspirit.lua"
l_configs[#l_configs].id = FourSpiritCfg.id[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].name = FourSpiritCfg.name[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].icon_pathid = FourSpiritCfg.icon_pathid[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].brief_desc = FourSpiritCfg.name[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].detail_desc = FourSpiritCfg.detail_desc[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].award[1].icon = FourSpiritCfg.icon_pathid[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].award[1].tip = FourSpiritCfg.tip[FourSpiritCfg.OpenInstance]
l_configs[#l_configs].count_num.id =  FourSpiritCfg.TaskID
local ECActivityInfo = require "Social.ECActivityInfo"
local info = ECActivityInfo.GetStateInfo(7138)
if info then
	local opentime = os.date("*t",info.opentime)
	local endtime = os.date("*t",info.endtime)
	for i=info.opentime,info.endtime,86400 do
		local timestruct = { BEGIN_TIME = {YEAR = os.date("*t",i).year, MONTH = os.date("*t",i).month, DAY = os.date("*t",i).day, HOUR = 18, MIN = 0, SEC = 0, }, LAST_TIME = 14400},
	 	table.insert(l_configs[#l_configs].time_sect,timestruct)
	end 	
end
]]


--阵营战
Campaign:addConfig
{
	id = 7298,				
	name = "陣營戰",
	level = {min = 65},
	icon_pathid = 319,			
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 6},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_CampWar",
			location = { type ="custom", target = function () require "GUI.ECPanelCampResourceWar".Instance():ShowPanel(true) end},
		},
	brief_desc = "陣營戰",
	detail_desc = "楚漢爭霸，難解難分。眾將士將入古戰場，化身楚兵漢將重現戰場紛爭。每日19:30到20:00之間參與陣營戰，可獲得大量武士令",
	award = 
		{
			{icon = 5146 ,tip = "武士令"}, 
		},
	time_desc = "19:30-20:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
	{BEGIN_TIME = {HOUR =19, MIN = 30,SEC =0,},LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 1881),
	--hide_judge_func = function () return not require "Main.ECCampWar".IsCampwarFunctionOpen()	end	,

	hide_on_activity_close = 7298,
	tip = "【陣營戰】19:30-20:00",
}

--器魂日常
Campaign:addConfig
{
	id = 7319,
	name = "四方聖獸",
	level = {min = 70},
	icon_pathid = 4741,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 46},
	recommendIndex = {0, 0, 0},

	activity_num = 5,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = 35.6, z = 33.8, action={type="talk", target=15893}}
		},
	brief_desc = "做任務得器魂道具",
	detail_desc = "每日完成“四方聖獸”任務，消滅在國家內遊蕩的聖獸幻象，即可獲得增加自身聖獸之力的道具——聖靈石，與珍貴道具器靈符。",
	award = 
		{
			{icon = 4741, tip = "1級聖靈石"},
			{icon = 4773, tip = "1級器靈符"},
		},
	time_desc = "全天開啟",
	count_num = {type = "task", id = 3197},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

--跨服阵营战
Campaign:addConfig
{
	id = 8804,				
	name = "跨服陣營戰",
	level = {min = 65},
	icon_pathid = 3770,			
	type = 3,

	typeIndex = {false, false, true},
	starLevel = {0, 8},
	sortIndex = {0, 0, 6},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Nation",
			location = { type ="custom", target = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end},
		},
	brief_desc = "跨服陣營戰",
	detail_desc = "楚漢爭霸，難解難分。眾將士將入古戰場，化身楚兵漢將重現戰場紛爭。每日13:20到13:50之間參與跨服陣營戰，可獲得大量武士令",
	award = 
		{
			{icon = 5146 ,tip = "武士令"}, 
		},
	time_desc = "13:20-13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
	{BEGIN_TIME = {HOUR =13, MIN = 20,SEC =0,},LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 2098),
	hide_on_activity_close = 8803,
	hide_judge_func = function() return not require "Main.ECServerWarMan".IsServerWarFunctionOpen() end,
	tip = "",
}


Campaign:addConfig
{
	id = 10099,
	name = "趣味競猜",
	level = {min = 36},
	icon_pathid = 3678,
	type = 0,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 29, 55},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, sid=5003, x = -81.66, z = -6.62, action={type="talk", target=16891}}
		},
	brief_desc = "趣味競猜",
	detail_desc = "活動期間可在王城魯大師處參加玩法。",
	award = 
		{
			{icon = 2677 , tip = "春秋遺物"},
			{icon = 1170 , tip = "三國卡包·傳奇"},
		},
	time_desc = "全天開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	hide_on_close = true,
	time_sect = {
		{ BEGIN_TIME = {YEAR = 2017, MONTH = 12, DAY = 21, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	tip = "",
}
Campaign:addConfig
{
	id = 18908,
	name = "六國演武",
	level = {min = 40},
	icon_pathid = 1439,
	type = 2,

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 12},
	recommendIndex = {0, 0, 10},
	

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=21248}},
		},
	brief_desc = "參加演武，勇奪第一",
	detail_desc = "參與演武，獲得積分參與排行兌換獎勵",
	award = 
		{
			{icon = 1575, tip = "馬草"},
			{icon = 1754 , tip = "綁鑽"},
		},
	time_desc = "活動期間全天開放",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	hide_on_activity_close = 18908,
	tip = "",
}
------------------------------------------------运营活动不显示--------------------------------------------------------------

Campaign:addConfig
{
	id = 1274,
	name = "成長基金等級版",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "1980鑽石", --购买价格
	brief2_desc = "8888鑽石",  --返还价格
	detail_desc = "　　購買成長基金，快速成長。", --内容1
	detail2_desc = "　　購買後立即返還1980鑽石。\n　　每升10級額外返還200鑽石，總計返還高達", --内容2
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月15日0點-10月29日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 15, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1275,
	name = "成長基金時間版",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "2880鑽石", --购买价格
	brief2_desc = "8888鑽石",  --返还价格
	detail_desc = "　　購買成長基金，快速成長。", --内容1
	detail2_desc = "　　購買後立即返還1980鑽石。\n　　每天額外返還200鑽石，總計返還高達", --内容2
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月8日0點-10月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1276,
	name = "首充",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "充值鑽石，額外返利",
	detail_desc = "　　活動期間每日儲值達到一定數量即可領取豪華禮品。\n　該獎勵每日重置。　　",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年9月1日0點-2016年9月1日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 9, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 31536000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1277,
	name = "每日儲值1",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "儲值鑽石，額外返點",
	detail_desc = "　　活動期間每儲值達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月8日0點-10月15日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604799},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1278,
	name = "每日儲值2",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "消費鑽石，額外返利",
	detail_desc = "　　活動期間每日消費達到一定數量即可領取豪華禮品。\n　該獎勵每日重置。　　",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月15日0點-10月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 15, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1279,
	name = "每日儲值3",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "消費鑽石，額外返利",
	detail_desc = "　　活動期間每消費達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1280,
	name = "每日儲值4",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "首次儲值，領取大獎",
	detail_desc = "　　帳號第一次儲值達到60鑽即可領取。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1281,
	name = "累積儲值1",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "每日首充，領取大獎",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月8日0點-10月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1378,
	name = "累積儲值2",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1379,
	name = "每日消費1",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月8日0點-10月15日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604799},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1380,
	name = "每日消費2",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月15日0點-10月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 15, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1381,
	name = "累積消費",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月8日0點-10月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 8, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1382,
	name = "暫未使用", --暂未使用
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1383,
	name = "暫未使用", --暂未使用
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1384,
	name = "暫未使用", --暂未使用
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1385,
	name = "暫未使用", --暂未使用
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年8月25日0點-10月25日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 1456,
	name = "暫未使用", --暂未使用
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "成長基金",
	detail_desc = "　　帳號每日儲值達到60鑽即可領取。\n　該獎勵每日重置。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年6月10日-6月30日",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 1, DAY = 1, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 100000},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2491,
	name = "開服戰力排行榜",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "儲值鑽石，額外返點",
	detail_desc = "　　活動期間每儲值達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年9月20日0點-9月22日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 9, DAY = 19, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 345600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2492,
	name = "開服等級排行榜",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "儲值鑽石，額外返點",
	detail_desc = "　　活動期間每儲值達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年9月21日0點-9月24日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 9, DAY = 21, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 259200},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2493,
	name = "開服卡牌排行榜",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "儲值鑽石，額外返點",
	detail_desc = "　　活動期間每儲值達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年9月21日0點-9月24日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 9, DAY = 21, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 259200},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2494,
	name = "限時沖級",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "沖級領獎",
	detail_desc = "　　活動期間每達到一定等級即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年9月23日0點-9月26日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 9, DAY = 23, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 259200},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2495,
	name = "連續團購",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "儲值鑽石，額外返點",
	detail_desc = "　　活動期間每儲值達到一定數量即可領取豪華禮品。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月15日0點-10月29日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 15, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

Campaign:addConfig
{
	id = 2546,
	name = "尊享進階",
	level = {min = 1},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_Instance_Story",
			location = {type = "custom" ,target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end},
		},
	brief_desc = "尊享進階，盡享尊貴",
	detail_desc = "　　活動期間達到獎勵條件可獲得豐厚獎勵。購買禮包能加速衝刺到達條件。",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "2015年10月15日0點-10月29日0點",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = { 
	{BEGIN_TIME = {YEAR = 2015, MONTH = 10, DAY = 15, HOUR = 0, MIN = 0, SEC = 0, }, LAST_TIME = 1209600},
	            },
	tip = "",
}

------------------------------------------------叛军精锐不显示--------------------------------------------------------------
Campaign:addConfig
{
	id = 1164,
	name = "蠻錘力士",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "蠻錘力士",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 9, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 12, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 15, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 18, MIN = 30, SEC = 0, }, LAST_TIME = 1800},	            
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 90),
}

Campaign:addConfig
{
	id = 1165,
	name = "裂顱者",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "裂顱者",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 10, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 16, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},	            
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 91),
}

Campaign:addConfig
{
	id = 1166,
	name = "失控惡獸",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "失控惡獸",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 11, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 17, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 21, MIN = 0, SEC = 0, }, LAST_TIME = 1800},	            
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 92),
}

Campaign:addConfig
{
	id = 1252,
	name = "破陣先鋒",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "破陣先鋒",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 9, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 17, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 93),
}

Campaign:addConfig
{
	id = 1253,
	name = "破陣金剛",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "破陣金剛",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 10, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 94),
}

Campaign:addConfig
{
	id = 2419,
	name = "斬首狂徒",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "破陣金剛",
	detail_desc = "叛軍精銳",
	award = 
		{
			{icon = 1568 , tip = "鑽石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定時開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 20, MIN = 35, SEC = 0, }, LAST_TIME = 1800},
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 98),
}

--[[
Campaign:addConfig
{
	id = 2420,
	name = "金刀护法",
	level = {min = 30},
	icon_pathid = 716,
	type = 0,

	typeIndex = {false, false, false},
	starLevel = {0, 7},
	sortIndex = {0, 3, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 2,
			ui = "Panel_NationBoss",
			location = {type = "custom" ,target = function () require "GUI.ECPanelNationBoss".Instance():Toggle() end},
		},
	brief_desc = "破阵金刚",
	detail_desc = "叛军精锐",
	award = 
		{
			{icon = 1568 , tip = "钻石"},
			{icon = 1578 , tip = "道具"},
		},
	time_desc = "定时开启",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = 
	{ 
		{ BEGIN_TIME = {HOUR = 19, MIN = 30, SEC = 0, }, LAST_TIME = 3600},
		{ BEGIN_TIME = {HOUR = 20, MIN = 40, SEC = 0, }, LAST_TIME = 3600},
	},
	tip = "",
	open_notice = noticeEveryMinute(-5, 0, 99),
}
]]

--------------------------------以下显示于帮会活动界面中-----------------------------------

Campaign:addConfig
{
	id = 3103,
	name = "幫會戰",
	level = {min = 36},
	icon_pathid = 1222,
	type = 4,
	faction_level = {min = 2},

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 26, 0},
	recommendIndex = {0, 1, 0},
	activity_num = 5,

	operation = 
		{
			operation_type = 2,
			ui = "Panel_FactionWar",
			location = {type = "custom", target = function () require "GUI.ECPanelFactionWar".Instance():TryPopup() end},
		},
	brief_desc = "眾幫會爭奪六國各城池領地",
	detail_desc = "每週三、週六開啟，眾幫會參與爭奪六國各城池領地。參與戰鬥可獲勝負和排名獎勵，成功佔領領地每日還可領取領地獎勵。",
	award = 
		{
			{icon = 2336, tip = "上古兵策"},
			{icon = 1453 , tip = "過關斬將通牒"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "每週三、六開啟",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_close = true,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2455,
	name = "幫會遠征",
	level = {min = 55},
	icon_pathid = 1222,
	type = 4,
	faction_level = {min = 3},

	typeIndex = {false, true, false},
	starLevel = {0, 6},
	sortIndex = {0, 19, 0},
	recommendIndex = {0, 8, 0},
	activity_num = 5,

	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1054,1055,1056,1057,1058,1059},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=413}},
		},
	brief_desc = "前往敵國後方騷擾",
	detail_desc = "與幫會管理員交談接取任務，前往敵國京郊進行騷擾，任務完成後可獲得豐厚獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
			{icon = 758, tip = "黃巾寶藏"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 1053},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1639,
	name = "幫會押鏢",
	level = {min = 30},
	icon_pathid = 1213,
	type = 4,
	faction_level = {min = 1},

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 20, 0},
	recommendIndex = {0, 4, 0},
	activity_num = 10,

	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {698},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {{nation = 0, action={type="talk", target=413}},
						{nation = 0, action={type="talk", target=413}},}
		},
	brief_desc = "押送本幫鏢車前往邊境",
	detail_desc = "本幫幫主與幫會管理員交談即可接取任務，開啟後護送鏢車至邊境大將處交還即可得到獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫貢、幫會資材和建設度"},
		},
	time_desc = "幫主開啟",
	count_num = {type = "common_use_limit", id = 865},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 1979,
	name = "幫會煉丹",
	level = {min = 25},
	icon_pathid = 1212,
	type = 4,
	faction_level = {min = 1},

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 24, 0},
	recommendIndex = {0, 2, 0},
	activity_num = 20,

	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "參與煉製幫會丹藥",
	detail_desc = "與幫會丹爐互動可參與幫會煉丹，完成要求即可獲得獎勵。每日幫會煉丹進度完成後,所有幫會成員可獲得神丹獎勵!",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 345},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 796,
	name = "幫會跑環",
	level = {min = 25},
	icon_pathid = 563,
	type = 4,
	faction_level = {min = 1},

	typeIndex = {false, true, false},
	starLevel = {0, 5},
	sortIndex = {0, 25, 0},
	recommendIndex = {0, 1, 0},
	activity_num = 2,

	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks = {436, 437, 438, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, main = 702},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=413}},
		},
	brief_desc = "獲得幫會貢獻",
	detail_desc = "與幫會管理員交談獲得任務，完成任務要求即可獲得幫會貢獻、幫會資材和幫會建設度獎勵！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	time_desc = "全天開放",
	count_num = {type = "task", id = 592},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 863,
	name = "幫會果樹",
	level = {min = 25},
	icon_pathid = 1224,
	type = 4,	--日常
	faction_level = {min = 1},

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 15},
	recommendIndex = {0, 0, 3},
	activity_num = 1,

	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "培育幫會果樹",
	detail_desc = "每晚21：00開始進行幫會果樹澆水，完成活動將會獲得幫會貢獻、幫會建設度以及幫會小豬餵養所需道具！",
	award = 
		{
			{icon = 1566 , tip = "幫會貢獻"},
			{icon = 2184 , tip = "幫會建設度"}
		},
	time_desc = "21:00~21:10",
	count_num = {type = "task", id = 699},
	time_type = CTT.CTT_PER_DAY,					-- 开启时间类型 (格式同服务器脚本)
	time_sect =										-- 开启时间类型 (格式同服务器脚本)
	{
		{ BEGIN_TIME = {HOUR = 21, MIN = 0, SEC = 0, }, LAST_TIME = 600},
	},
	--open_notice = noticeEveryMinute(-10, 0, 507),
	--close_notice = noticeFactionRepuOnce(0, 508, 1),	--更新帮会声望(1)后喊话
	tip = "",
}

Campaign:addConfig
{
	id = 1640,
	name = "幫會小豬",
	level = {min = 25},
	icon_pathid = 1141,
	type = 4,	--日常
	faction_level = {min = 1},

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 16},
	recommendIndex = {0, 0, 2},
	activity_num = 1,

	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "為幫會小豬餵食神奇果",
	detail_desc = "攜帶神奇果前往幫會莊園餵養幫會小豬可獲得幫會貢獻和幫會建設度，小豬成長值達到上限後可由幫主召喚長大的小豬。",
	award = 
		{
			{icon = 1566 , tip = "幫會貢獻"},
			{icon = 2184 , tip = "幫會建設度"}
		},
	time_desc = "全天開放",
	count_num = {type = "common_use_limit", id = 834},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 2721,
	name = "幫會防守[00ff00](周)[-]",
	level = {min = 25},
	icon_pathid = 574,
	type = 4,
	faction_level = {min = 2},

	typeIndex = {false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 17},
	recommendIndex = {0, 0, 0},
	activity_num = 0,

	operation = 
		{
			operation_type = 1,
			state = "faction",
			tasks ={},
			location = {nation = -1,type = "custom", action={type="custom", target=function () require "GUI.ECPanelFactionBuild".Instance():Toggle() end},},
		},
	brief_desc = "擊敗怪物守衛幫會莊園",
	detail_desc = "幫主與幫會總管(莊園內)交談即可開啟活動，防禦怪物進攻保護本幫財物不受損失即可獲得獎勵。（[ff0000]每日20：30-21：10分之間無法開啟[-]）",
	award = 
		{
			{icon = 1899 , tip = "幫會貢獻、木材、資材和建設度"},
			{icon = 1182 , tip = "2級以上寶石"},
			{icon = 497 , tip = "洗煉石"},
		},
	time_desc = "幫主開啟",
	count_num = {type = "faction_reputation", id = 11, max = 1},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 5238,
	name = "六龍百科",
	level = {min = 36},
	icon_pathid = 1198,
	type = 3,

	typeIndex = {false, true, true},
	starLevel = {4, 5},
	sortIndex = {6, 26, 33},
	recommendIndex = {4, 0, 0},

	activity_num = 0,
	operation = 
		{
			-- operation_type = 2,
			-- ui = "SubPanel_Question",
			-- location = {type = "custom" ,target = function () require "GUI.ECSubPanelQuestion".Instance():OpenPanel(require "GUI.ECPanelQuestion".Instance().m_ExportId) end},
			operation_type = 3,
			desc = "活動期間點擊主介面上的答題按鈕即可參與。"
		},
	brief_desc = "日常答題獲得大量經驗！",
	detail_desc = "每週一到週五的日常答題活動，除了經驗以外，如果每週獲得的百科分數達到40分，還可以參加周日的推舉孝廉活動喲！",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 3641 , tip = "孝廉狀"},
		},
	time_desc = "週一至週五14:30-24:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 1, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
		{ BEGIN_TIME = {WEEK = 2, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
		{ BEGIN_TIME = {WEEK = 3, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
		{ BEGIN_TIME = {WEEK = 4, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
		{ BEGIN_TIME = {WEEK = 5, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
	},
	open_notice = noticeEveryMinute(-5, 0, 1413),
	close_notice = noticeEveryMinute(-5, 0, 1414),
	tip = "",
}

Campaign:addConfig
{
	id = 5239,
	name = "推舉孝廉",
	level = {min = 36},
	icon_pathid = 3641,
	type = 3,

	typeIndex = {false, true, true},
	starLevel = {4, 5},
	sortIndex = {0, 0, 32},
	recommendIndex = {0, 0, 1},

	activity_num = 0,
	operation = 
		{
			-- operation_type = 2,
			-- ui = "SubPanel_Question",
			-- location = {type = "custom" ,target = function () require "GUI.ECSubPanelQuestion".Instance():OpenPanel(require "GUI.ECPanelQuestion".Instance().m_ExportId) end},
			operation_type = 3,
			desc = "本周百科積分在40以上，活動期間點擊主介面上的答題按鈕即可參與。"
		},
	brief_desc = "獎勵孝廉狀，可換稱號",
	detail_desc = "每週百科分數達到40以上的玩家才能參與！正確率高且答題速度快的前100名會進入排行榜。為了公平，推舉孝廉[ff0000]活動期間首次打開介面[-]才開始計時。",
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 3641 , tip = "孝廉狀"},
		},
	time_desc = "周日14:30-24:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 7, HOUR = 14, MIN = 30, SEC = 0, }, LAST_TIME = 34200},
	},
	open_notice = noticeEveryMinute(-5, 0, 1415),
	close_notice = noticeEveryMinute(-5, 0, 1416),
	-- hide_judge_func = function() 
	-- 	local QuestConfig = dofile "Configs/quest_activity.lua"
	-- 	return QuestConfig[1].passnum > require "Main.ECGame".Instance().m_HostPlayer:GetReputation(105)
	-- end,
	tip = "",
}

--------------------------------以下显示于跨服活动界面中-----------------------------------

Campaign:addConfig
{
	id = 3457,
	name = "跨服三國志",
	level = {min = 60},
	icon_pathid = 1219,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 8, 0, 0, 10},
	sortIndex = {0, 0, 6, 0, 1},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=8233}},
		},
	brief_desc = "三方跨服血戰沙場",
	detail_desc = "曹操、劉備、孫權三人委任六龍諸國，求能借諸國之力問鼎天下。每週日21:30-22:00，在洪荒幻境戰場傳送官處進入戰場，三方PK勝者為王。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週日21:30-22:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 7, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	hide_on_activity_close = 3974,
	open_notice = noticeEveryMinute(-5, 0, 1266),
	tip = "",
}

Campaign:addConfig
{
	id = 5293,
	name = "跨服演武",
	level = {min = 60},
	icon_pathid = 1219,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 8, 0, 0, 10},
	sortIndex = {0, 0, 6, 0, 1},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target={11445,11592}}},
		},
	brief_desc = "禁衛軍跨服演武",
	detail_desc = "洪荒幻境禁衛軍統帥為提升各將軍作戰能力，將於每週一舉辦演武，隨機加入龍虎陣營激戰演武校場",
	award = 
		{
			{icon = 3814, tip = "武勳"},
		},
	time_desc = "每週一21:30-22:30",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	time_sect = 
	{
		{BEGIN_TIME = {WEEK = 1, HOUR = 21, MIN = 30, SEC = 0, }, LAST_TIME = 1800}
	},
	hide_on_activity_close = 3974,
	open_notice = noticeEveryMinute(-5, 0, 1428),
	tip = "",
}

Campaign:addConfig
{
	id = 3462,
	name = "跨·糧草先行",
	level = {min = 60},
	icon_pathid = 1226,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 7, 0, 2},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1691},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=8235}},
		},
	brief_desc = "搶收糧草儲備軍糧",
	detail_desc = "蜀國劉玄德率兵駐紮洪荒幻境，委任將軍搶收糧草。獲得越多的糧草，獎勵越豐厚。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週雙日的13:00-14:00、19:00-20:00",
	count_num = {type = "reputation", id = 80, max = 1},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_activity_close = 3974,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3920,
	name = "跨·裝填火炮",
	level = {min = 60},
	icon_pathid = 1226,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 8, 0, 3},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1692},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=8236}},
		},
	brief_desc = "為城中火炮裝填彈藥",
	detail_desc = "魏國曹操欲修復城中廢棄火炮，委任將軍前往洪荒流寇處奪取彈藥。裝填越多的彈藥，獎勵越豐厚。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週雙日的13:00-14:00、19:00-20:00",
	count_num = {type = "reputation", id = 82, max = 1},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_activity_close = 3974,
	time_sect = {},
	tip = "",
}

Campaign:addConfig
{
	id = 3921,
	name = "跨·百發百中",
	level = {min = 60},
	icon_pathid = 1226,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 9, 0, 4},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {1693},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target=8234}},
		},
	brief_desc = "箭無虛發身手不凡",
	detail_desc = "吳國孫權聽聞將軍身手不凡，邀將軍至演武場演武訓練。120秒內擊破越多的箭靶，獎勵越多豐厚。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週雙日的13:00-14:00、19:00-20:00",
	count_num = {type = "reputation", id = 81, max = 1},
	time_type = CTT.CTT_ALL_TIME_OPEN,
	hide_on_activity_close = 3974,
	time_sect = {},
	tip = "",
}


Campaign:addConfig
{
	id = 3685,
	name = "洪荒-饕餮",
	level = {min = 60},
	icon_pathid = 2586,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 10, 0, 5},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, sid = 5024, x=178, z=-152, action={type="none", target=0}},
		},
	brief_desc = "擊殺洪荒凶獸-饕餮",
	detail_desc = "每週一、三、五、日的13:00和19:15，上古凶獸-饕餮現身洪荒幻境。上古凶獸周身是寶，擊殺之可獲得大量獎勵。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週單日的13:00、19:15",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	hide_on_activity_close = 3974,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 1269),
	tip = "",
}

Campaign:addConfig
{
	id = 3686,
	name = "洪荒-朱雀",
	level = {min = 60},
	icon_pathid = 2586,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 11, 0, 6},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, sid = 5024, x=-45, z=-45, action={type="none", target=0}},
		},
	brief_desc = "擊殺洪荒凶獸-朱雀",
	detail_desc = "每週一、三、五、日的13:15和19:00，上古凶獸-朱雀現身洪荒幻境。上古凶獸周身是寶，擊殺之可獲得大量獎勵。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週單日的13:15、19:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	hide_on_activity_close = 3974,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 1271),
	tip = "",
}

Campaign:addConfig
{
	id = 3687,
	name = "洪荒-地狼",
	level = {min = 60},
	icon_pathid = 2586,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 6, 0, 0, 6},
	sortIndex = {0, 0, 12, 0, 7},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, sid = 5024, x=-151, z=187, action={type="none", target=0}},
		},
	brief_desc = "擊殺洪荒凶獸-地狼",
	detail_desc = "每週一、三、五、日的13:00和19:00，上古凶獸-地狼現身洪荒幻境。上古凶獸周身是寶，擊殺之可獲得大量獎勵。",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
		},
	time_desc = "每週單日的13:00、19:00",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_WEEK,
	hide_on_activity_close = 3974,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 1,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 1,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 3,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 5,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 13, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
		{ BEGIN_TIME = {WEEK = 7,HOUR = 19, MIN = 0, SEC = 0, }, LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 1272),
	tip = "",
}


Campaign:addConfig
{
	id = 4178,
	name = "戰場拾荒",
	level = {min = 60},
	icon_pathid = 714,
	type = 5,

	typeIndex = {false, false, false, false, true},
	starLevel = {0, 0, 0, 0, 6},
	sortIndex = {0, 0, 0, 0, 8},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, sid = 5024, x= -32.8, z= -32.3, action={type="none", target=0}},
		},
	brief_desc = "打掃戰場得獎勵",
	detail_desc = "每週日20:30-21:30期間可前往洪荒幻境進行拾荒活動，撿取戰場遺物即可獲得獎勵！",
	award = 
		{
			{icon = 2956, tip = "天下號令"},
			{icon = 1569 , tip = "功勳"},
		},
	time_desc = "周日20:30-21:30",
	count_num = {type="custom", current=function () return 10-host.reputation(83) end, max=10},
	time_type = CTT.CTT_PER_WEEK,
	--hide_on_close = true,
	time_sect = 
	{
		{ BEGIN_TIME = {WEEK = 7, HOUR = 20, MIN = 30, SEC = 0, }, LAST_TIME = 3600},
	},
	open_notice = noticeOnce(0, 238),
	tip = "",
}

--跨服阵营战
Campaign:addConfig
{
	id = 8804,				
	name = "跨服陣營戰",
	level = {min = 65},
	icon_pathid = 3770,			
	type = 5,

	typeIndex = {false, false,false,false, true},
	starLevel = {0, 8, 0, 0, 10},
	sortIndex = {0, 0, 6, 0, 1},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = -1, action={type="talk", target={16131,16132}}},	
		},
	brief_desc = "跨服陣營戰",
	detail_desc = "楚漢爭霸，難解難分。眾將士將入古戰場，化身楚兵漢將重現戰場紛爭。每日13:20到13:50之間參與陣營戰，可獲得大量武士令",
	award = 
		{
			{icon = 5146 ,tip = "武士令"}, 
		},
	time_desc = "13:20-13:50",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_DAY,
	time_sect = {
	{BEGIN_TIME = {HOUR =13, MIN = 20,SEC =0,},LAST_TIME = 1800},
	},
	open_notice = noticeEveryMinute(-5, 0, 2098),
	hide_on_activity_close = 8803,
	tip = "",
}



--------------------------------以下显示于委托页面中-----------------------------------

Campaign:addConfig
{
	count_num = {type = "task", id = 0},
	taskid_receive = 2099,  --填手动接取的任务id
	taskid = 2100,  --填界面显示读取内容的任务id
	id = 0,  --没用到，填0就好
	activityid = 840,  --填对应的活动id，用于读取活动次数
	name = "迷宮探寶",  --填活动名称
	level = {min = 30},  --填活动开启等级，用于判断角色等级不满足时的界面文字提示
	icon_pathid = 503,  --填活动图标id
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 2,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},  --填奖励图标和tips
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 3600,
}

Campaign:addConfig
{
	count_num = {type = "task", id = 440},
	taskid_receive = 2103,
	taskid = 2104,  --填任务id
	id = 0,
	activityid = 249,
	name = "除暴安良",
	level = {min = 45},
	icon_pathid = 1214,
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},  --填奖励图标和tips
			{icon = 1575, tip = "馬草"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}

Campaign:addConfig
{
	count_num = {type = "task", id = 978},
	taskid_receive = 2109,
	taskid = 2110,  --填任务id
	id = 0,
	activityid = 2260,
	name = "降妖除魔",
	level = {min = 55},
	icon_pathid = 109,
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}

Campaign:addConfig
{
	count_num = {type = "task", id = 1053},
	taskid_receive = 2105,
	taskid = 2106,  --填任务id
	id = 0,
	activityid = 2455,
	name = "幫會遠征",
	level = {min = 55},
	icon_pathid = 1222,
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},  --填奖励图标和tips
			{icon = 1566 , tip = "幫會貢獻"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}

Campaign:addConfig
{
	count_num = {type = "task", id = 1060},
	taskid_receive = 2107,
	taskid = 2108,  --填任务id
	id = 0,
	activityid = 2456,
	name = "國家遠征",
	level = {min = 60},
	icon_pathid = 1219,
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1569 , tip = "功勳"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}


Campaign:addConfig
{
	count_num = {type = "task", id = 1051},
	taskid_receive = 2101,
	taskid = 2102,  --填任务id
	id = 0,
	activityid = 2315,
	name = "仙境採摘",  --填活动名称
	level = {min = 70},  --填活动开启等级，用于判断角色等级不满足时的界面文字提示
	icon_pathid = 1976,  --填活动图标id
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},  --填奖励图标和tips
			{icon = 1200 , tip = "藏寶圖"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}

Campaign:addConfig
{
	count_num = {type = "task", id = 0},
	taskid_receive = 2275,  --填手动接取的任务id
	taskid = 2276,  --填界面显示读取内容的任务id
	id = 0,  --没用到，填0就好
	activityid = 796,  --填对应的活动id，用于读取活动次数
	name = "幫會跑環",  --填活动名称
	level = {min = 25},  --填活动开启等级，用于判断角色等级不满足时的界面文字提示
	icon_pathid = 563,  --填活动图标id
	typeIndex = {false, false, false, true},  --第四个填true，则显示在委托页
	shop_item_id = 10989,  --委托令id
	costNum = 1,  --消耗委托令数量
	award = 
		{
			{icon = 1568 , tip = "大量經驗"},
			{icon = 1566 , tip = "幫會貢獻、資材和建設度"},
		},
	tip = "",
	time_sect = {},
	LAST_TIME = 1800,
}

--------------------------------以下用于跨版本服中-----------------------------------

Campaign:addConfig
{
	id = 7530,
	name = "物資爭奪戰",
	level = {min = 60},
	icon_pathid = 5355,
	type = 6,

	typeIndex = {false, false, false, false, false, true},
	starLevel = {0, 0},
	sortIndex = {0, 0, 0},
	recommendIndex = {0, 0, 0},

	activity_num = 0,
	operation = 
		{
			operation_type = 1,
			state = "other",
			tasks = {},
			items = nil,
			condition = {force = 0 , bindmoney = 0},
			location = {nation = 0, action={type="talk", target=15098}},
		},
	brief_desc = "參與物資爭奪戰獲得獎勵",
	detail_desc = "參與物資爭奪戰獲得獎勵",
	award = 
		{
			{icon = 5355 , tip = "九州遺物"},
		},
	time_desc = "每天18:15",
	count_num = {type = "none", id = 0},
	time_type = CTT.CTT_PER_YEAR2,						-- 开启时间类型 (格式同服务器脚本)
	time_sect =									-- 开启时间类型 (格式同服务器脚本)
		{
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 12, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 13, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 14, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 15, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 16, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 17, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},
			{ BEGIN_TIME = {YEAR = 2018, MONTH = 7, DAY = 18, HOUR = 18, MIN = 15, SEC = 0, }, LAST_TIME = 1800},  
		},
	hide_on_activity_close = 8722,	--在指定活动关闭时隐藏活动，默认为 0
		open_notice = noticeEveryMinute(-5, 0, 2022),
	tip = "",							-- 活动中显示的界面tip文字
}
--------------------------------以下用于巅峰武斗场公告-----------------------------------
Campaign:addConfig
{
	id = 8790,						
	type = 2,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 40},
	recommendIndex = {0, 0, 1},

	activity_num = 0,

	count_num = {type = "task", id = 2843},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2017, MONTH = 6, DAY = 12, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	
	
	tip = "",
	close_notice = noticeEveryTime(-4320, 0, 2033,60),
	hide_on_activity_close = 8790,
}
Campaign:addConfig
{
	id = 8773,						
	type = 2,

	typeIndex = {false, false, false},
	starLevel = {0, 0},
	sortIndex = {0, 0, 40},
	recommendIndex = {0, 0, 1},

	activity_num = 0,

	count_num = {type = "task", id = 2843},
	time_type = CTT.CTT_PER_YEAR2,
	time_sect = 
	{
		{ BEGIN_TIME = {YEAR = 2017, MONTH = 6, DAY = 12, HOUR = 12, MIN = 0, SEC = 0, }, LAST_TIME = 604800},
	},
	
	
	tip = "",
	close_notice = noticeEveryTime(-4320, 0, 2034,60),
	hide_on_activity_close = 8773,
}
return Campaign
