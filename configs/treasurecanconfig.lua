--[[
	挂机宝箱
]]
local TreasureCanCfgs = {}
-- 宝箱列表
TreasureCanCfgs[1] = 
{	
	name = "青銅寶箱",
	id = 11872,
	open_need_time = 3600,
	icon = 3959,
	reward_tid = 12034,
	display = true,  --显示
	level_limits = {min=30,max=200},--此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
	seconds_per_diamond = 300, --每多少秒消耗1钻石 
	rewards = 
	{
		mustobtain = 
		{
			[1] = {id = 12038,num = 1, },  
		},
		possibleobtain = 
		{
			[1] = {id = 11873,num = 1, }, 
			[2] = {id = 11773,num = 1, }, 
			[3] = {id = 10277,num = 5, }, 
			[4] = {id = 1547,num = 3, }, 
		},
	},
	shopid = 225,
	chipcount = 4,
}

TreasureCanCfgs[2] = 
{	
	name = "白銀寶箱",
	id = 11873,
	open_need_time = 7200,
	icon = 3960,
	reward_tid = 12035,
	display = true,  --显示
	level_limits = {min=30,max=200},--此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
	seconds_per_diamond = 300, --每多少秒消耗1钻石 
	rewards = 
	{
		mustobtain = 
		{
			[1] = {id = 12039,num = 1, }, 
		},
		possibleobtain = 
		{
			[1] = {id = 11874,num = 1, }, 
			[2] = {id = 6667,num = 1, }, 
			[3] = {id = 9393,num = 1, }, 
			[4] = {id = 9469,num = 1, }, 
		},
	},
	shopid = 226,
	chipcount = 8,
}

TreasureCanCfgs[3] = 
{	
	name = "黃金寶箱",
	id = 11874,
	open_need_time = 14400,
	icon = 3961,
	reward_tid = 11436,
	display = true,  --显示
	level_limits = {min=30,max=200},--此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
	seconds_per_diamond = 300, --每多少秒消耗1钻石 
	rewards = 
	{
		mustobtain = 
		{
			[1] = {id = 12040,num = 1, }, 
		},
		possibleobtain = 
		{
			[1] = {id = 11875,num = 1, }, 
			[2] = {id = 12042,num = 1, }, 
			[3] = {id = 2553,num = 1, }, 
			[4] = {id = 411,num = 1, }, 
		},
	},
	shopid = 227,
	chipcount = 16,
}

TreasureCanCfgs[4] = 
{	
	name = "鑽石寶箱",
	id = 11875,
	open_need_time = 28800,
	icon = 3962,
	reward_tid = 12037,
	display = true,  --显示
	level_limits = {min=30,max=200},--此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
	seconds_per_diamond = 300, --每多少秒消耗1钻石 
	rewards = 
	{
		mustobtain = 
		{
			[1] = {id = 12041,num = 1, }, 
		},
		possibleobtain = 
		{
			[1] = {id = 12043,num = 1, }, 
			[2] = {id = 12042,num = 1, }, 
			[3] = {id = 12044,num = 1, }, 
			[4] = {id = 4523,num = 1, },  
		},
	},
	shopid = 228,
	chipcount = 32,
}

-- 显示四个箱子总奖励 即大界面上的奖励展示 
local AllRewards = 
{
	[1] = {id = 11439,num = 1, }, 
	[2] = {id = 7776,num = 1, }, 
	[3] = {id = 11566,num = 1, }, 
	[4] = {id = 4523,num = 1, }, 
	[5] = {id = 9469,num = 1, },
	[6] = {id = 6667,num = 1, }, 
	[7] = {id = 4584,num = 1, }, 
}

-----------------------------------------------
local SortFunc = function(l,r)
	if l.open_need_time and r.open_need_time then
		return l.open_need_time < r.open_need_time
	elseif l.open_need_time then
		return true
	else
		return false
	end
end
--宝箱碎片id 
local TreasureCanChip = 
{
	id = 11876,
}
--显示宝箱主界面的活动ID 
local CanActivityID = 5673
--兑换道具的活动ID 
local ChipExchangeActivityID = 5691

--兑换商店id 
--local TreasureCanNPCShopID = 11887

return 
{
	TreasureCanCfgs = TreasureCanCfgs,
	SortFunc = SortFunc,
	AllRewards = AllRewards,
	TreasureCanChip = TreasureCanChip,
	TreasureCanNPCShopID = TreasureCanNPCShopID,
	CanActivityID = CanActivityID,
	ChipExchangeActivityID = ChipExchangeActivityID,
}
	