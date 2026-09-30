--[==[
	配置提示列表的显示内容
	注意：列举顺序会影响游戏中的显示顺序。符合条件的time，取最长的决定界面显示时间
	例子：
	TipGuide:addConfig("test_1")
	{
		id = 1,
		windowLife = 10,
		condition = { 
				is_in_scene = 0,   --场景 为0时，表示哪个场景都可以 可以注掉
				level = { min = 50, max = 90,}, --等级 最低 最高  全为0时表示任何等级都可以 可以注掉
				task_has = { 3252, 3252,}, --身上挂的活动 数组 可以注掉
				activity_opened = { 7095, }, --开启的活动 可以注掉
			},
		content = {
			[1] = {
				icon_pathid = 1574,
				desc = "[00ff00]提示文本1最多12个字[-]",
			},
		},
		taskid = {3252,}, -- 数组 可以condition内的保持一致,可以填0，不允许注掉。
	}
]==]

local TipGuide = {}

local l_configs = {}
function TipGuide:getAllConfigs ()
	return l_configs
end

function TipGuide:addConfig(function_name,config)
	return function (config)
		if l_configs[function_name] then
			error("duplicated function name:" .. tostring(function_name))
		end
		config.name = function_name
		l_configs[function_name] = config
	end
end
--[[
TipGuide:addConfig("test_1")
{
	id = 1,
	windowLife = 10,
	condition = { 
			is_in_scene = 0,   --场景 为0时，表示哪个场景都可以 
			level = { min = 50, max = 90,}, --等级 最低 最高
			task_has = { 3252, 3252,}, --身上挂的活动
			activity_opened = { 7095, }, --开启的活动
		},
	icon_pathid = 1574,
	desc = "提示文本1",
	taskid = 2761,
}
]]
--测试用配置
TipGuide:addConfig("tips_1")--名字不能重复 名字不要有汉字
{
	id = 1, --序号依次递增，不能有重复
	windowLife = 20,--提示文本最多显示时长
	condition = { 
			is_in_scene = 5003,--场景ID 配置0为所有场景生效
			--level = { min = 50, max = 100,},--等级限制
			task_has = {3252,},--玩家身上已经接取此任务时生效
			--activity_opened = {7095,},--活动开启时间生效
		},
	content = {
			[1] = {
				icon_pathid = 1574,--图标路径
				desc = "符文重置，請重新配置",--提示文本，可修改颜色
			},
			[2] = {
				icon_pathid = 1574,
				desc = "[00ff00]戰鬥力優化完畢，出擊！[-]",
			},
			[3] = {
				icon_pathid = 1574,
				desc = "[00ff00]是時候表演真正的技術了！[-]",
			},
		},
	taskid = {3252,}, --和 condition内的保持一致,可以填0，不允许注掉。
}

--跨版本专用引导
TipGuide:addConfig("tips_2")--------------重点注意----------------------名字不能重复 名字不要有汉字
{
	id = 2, ------------------------------重点注意----------------------序号依次递增，不能有重复
	windowLife = 20,--提示文本最多显示时长
	condition = { 
			is_in_scene = 5030,--场景ID 配置0为所有场景生效
			--level = { min = 50, max = 100,},--等级限制
			task_has = {3252,},--玩家身上已经接取此任务时生效
			--activity_opened = {7095,},--活动开启时间生效
		},
	content = {
			[1] = {
				icon_pathid = 5480,--图标路径
				desc = "物資爭奪戰於18:15開啟",--提示文本，可修改颜色
			},
			[2] = {
				icon_pathid = 5480,--图标路径
				desc = "技能——請重新配置技能符文",--提示文本，可修改颜色
			},
			[3] = {
				icon_pathid = 5480,
				desc = "藥品——回原服自動刪除",
			},
			[4] = {
				icon_pathid = 5480,
				desc = "切勿散播不正當言論！",
			},
		},
	taskid = {3252,}, -----------重点注意---------和 condition内的保持一致,可以填0，不允许注掉。
}

--跨版本物资争夺战引导
TipGuide:addConfig("tips_3")--------------重点注意----------------------名字不能重复 名字不要有汉字
{
	id = 3, ------------------------------重点注意----------------------序号依次递增，不能有重复
	windowLife = 60,--提示文本最多显示时长（秒）
	condition = { 
			is_in_scene = 6106,--场景ID 配置0为所有场景生效
			--level = { min = 50, max = 100,},--等级限制
			--task_has = {3252,},--玩家身上已经接取此任务时生效
			--activity_opened = {7095,},--活动开启时间生效
		},
	content = {
			[1] = {
				icon_pathid = 5480,--图标路径
				desc = "沿著路標前往佔領一個據點",--提示文本，可修改颜色
			},
			[2] = {
				icon_pathid = 5480,
				desc = "注意地圖中的怪物和礦！",
			},
			[3] = {
				icon_pathid = 5480,
				desc = "盡情與你的對手戰鬥吧！",
			},
		},
	taskid = {0,}, -----------重点注意---------和 condition内的保持一致,可以填0，不允许注掉。
}

--教师节副本
TipGuide:addConfig("tips_4")--------------重点注意----------------------名字不能重复 名字不要有汉字
{
	id = 4, ------------------------------重点注意----------------------序号依次递增，不能有重复
	windowLife = 60,--提示文本最多显示时长（秒）
	condition = { 
			is_in_scene = 6115,--场景ID 配置0为所有场景生效
			--level = { min = 50, max = 100,},--等级限制
			--task_has = {3252,},--玩家身上已经接取此任务时生效
			--activity_opened = {7095,},--活动开启时间生效
		},
	content = {
			[1] = {
				icon_pathid = 5480,--图标路径
				desc = "站在箭頭向前方落腳點傳送",--提示文本，可修改颜色
			},
			[2] = {
				icon_pathid = 5480,
				desc = "無落腳點則會被送回起點",
			},
			[3] = {
				icon_pathid = 5480,
				desc = "努力到達寶箱處的陣眼！",
			},
		},
	taskid = {0,}, -----------重点注意---------和 condition内的保持一致,可以填0，不允许注掉。
}

return TipGuide
