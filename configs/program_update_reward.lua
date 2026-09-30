--[[
	配置更新安装包奖励
	
	program_update_reward =
	{
		[平台] =
		{
			reward_task = 奖励任务,
			reward_version = 更新发奖所需版本,
			update_method = 更新方法,		--可为 "msg", "open_url"
			update_param = 更新参数,		--"msg" 需要一段文字, "open_url" 需要 url
			activity = 作为控制开关的活动id,
		},
	}
	
	版本号特殊处理：
	版本号一般为 local_version.xml 中的 version/@value 字段
	腾讯 android 版本号未正确提升，有以下特殊映射：
		1.1.18 => 51
		1.1.19 => 52
		1.1.20 => 53
		1.1.21 => 54
		1.1.22 => 55
		1.1.23 => 56
]]

local program_update_reward =
{
	android =
	{
		reward_task = 1667,
		reward_version = 54,
		update_method = "msg",
		update_param = "請到對應的商店下載安裝包",
		activity = 3646,
	},
	ios =
	{
		reward_task = 1667,
		reward_version = 103,
		update_method = "open_url",
		update_param = "https://itunes.apple.com/cn/app/id989080154",
		activity = 3646,
	},
	pc =
	{
		reward_task = 1667,
		reward_version = 103,
		update_method = "msg",
		update_param = "請到對應的商店下載安裝包",
		activity = 3646,	--index: 160
	},
}

return program_update_reward
