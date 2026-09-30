
-- camp_resource_war_cfg.lua
--阵营争夺战配置文件 
local SPEED_COUNT = 4 --四个旗子 
local MAXPOINT = 2500 --最大资源点数
local RewardRepuID = 217 --奖励声望ID
local EnterWaitTime = 30 --匹配后等待进入副本时间
local ActivityID = 7298 -- 阵营战前提活动ID 
local AutoMoveInfo = 
{
	[1] =  { name = "聖泉", tid = 15000 , type = "autofight", sid = 6104, x=-75.7,z=48.8, btn_name = "Btn_shengquan_qizi", },
	[2] =  { name = "玄寶", tid = 15001 , type = "autofight", sid = 6104, x=76.51, z=63.07 , btn_name = "Btn_xuanbao_qizi", },
	[3] =  { name = "天眼", tid = 14998 , type = "autofight", sid = 6104, x=-76.51, z=-63.07,  btn_name = "Btn_tianyan_qizi", },
	[4] =  { name = "地藏", tid = 14999 , type = "autofight", sid = 6104, x=75.7,z=-48.8, btn_name = "Btn_dizan_qizi", },
}
local AutoMoveButtonName = 
{
	["Btn_shengquan_qizi"] = 1,
	["Btn_xuanbao_qizi"] = 2,
	["Btn_tianyan_qizi"] = 3,
	["Btn_dizan_qizi"] = 4,
	["qizhi_shengquan"] = 1,
	["qizhi_xuanbao"] = 2,
	["qizhi_tianyan"] = 3,
	["qizhi_dizan"] = 4,
}
local BigMapButtonName = 
{
	[1] = "qizhi_tianyan",
	[2] = "qizhi_dizan",
	[3] = "qizhi_xuanbao",
	[4] = "qizhi_shengquan",
}
local Reward = 
{
	--阵营胜利 所有人员获得奖励
	Camp_V_Reward = {
		title = "勝利獎勵",
		reward_item = 
		{
			[1] = { id = 12563, num = 1 ,}, 
			[2] = { id = 12563, num = 1 ,},
			[3] = { id = 12563, num = 1 ,},
		},
	},
	Camp_F_Reward = {
		title = "失敗獎勵",
		reward_item = 
		{
			[1] = { id = 12234, num = 1 ,}, 
			[2] = { id = 12234, num = 1 ,},
			[3] = { id = 12234, num = 1 ,},
		},
	},
	--个人在阵营内排名奖励
	Rank_Reward = 
	{
		[1] = {
			title = "第1名獎勵",
			reward_item = 
			{
				[1] = { id = 12563, num = 1 ,}, 
				[2] = { id = 12563, num = 1 ,},
				[3] = { id = 12563, num = 1 ,},
			},
		},
	},

}
local CostTypeDefine =
{
    ITEM = 1,		--消耗物品 
    REPU = 5,		--消耗声望
}
local FirstReward = 
{
	desc = "首勝獎勵",
	--任务ID
	task = 3109,
	repu = 213,
	--下面暂时都用不到
	--[[
	items = 
	{
		[1] = { id = 213, num = 1, type = CostTypeDefine.REPU, }, --id表示声望ID，num表示最小声望值 
		--[2] = { id = 11280, num = 1, type = CostTypeDefine.ITEM, }, --id表示物品ID，num表示数量 
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = { id = 11336, num = 1, },
	},
	]]
}
return {
	speed_count = SPEED_COUNT,
	maxpoint = MAXPOINT,
	AutoMoveInfo = AutoMoveInfo,
	AutoMoveButtonName = AutoMoveButtonName, 
	BigMapButtonName = BigMapButtonName,
	Reward = Reward,
	FirstReward = FirstReward, 
	RewardRepuID = RewardRepuID,
	EnterWaitTime = EnterWaitTime,
	ActivityID = ActivityID,
}

