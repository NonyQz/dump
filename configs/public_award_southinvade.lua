--[[
	挂机宝箱/定时宝箱碎片兑换道具
]]
local index = 0 --自动加入index字段，便于排序
local public_awards = setmetatable({}, {__newindex=function(t,k,v)
	index = index + 1
	v.index = index
	rawset(t,k,v)
end})


public_awards.baseinfo =
{
	icon = 0,
	title = "南蠻剿匪兌換活動",
	exchange = "兌換時間：",
	time = "以官網時間為準",
	desc = "活動期間擊殺[ff0000]南蠻流寇[-]收集[00ff00]蠻族飾品[-]即可兌換好禮！",
	timeuseActivity = false,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}



public_awards[1] = 
{
	desc = "",
	--兑换1
	items = 
	{
		[1] = {id=14920,num=3,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=4584,num=1,},
	},
	--任务ID
	task = 2864,
	--gender = "female", --性别配置，both或不写就是不限制  "male","female","both"
}
public_awards[2] = 
{
	desc = "",
	--兑换2
	items = 
	{
		[1] = {id=14920,num=3,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=10936,num=1,},
	},
	--任务ID
	task = 2866,
	--gender = "male", --性别配置，both或不写就是不限制  "male","female","both"
}  
public_awards[3] = 
{
	desc = "",
	--兑换3
	items = 
	{
		[1] = {id=14920,num=3,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=6996,num=1,},
	},
	--任务ID
	task = 2867,
}

public_awards[4] = 
{
	desc = "",
	--兑换4
	items = 
	{
		[1] = {id=14920,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=13607,num=2,},
	},
	--任务ID
	task = 2870,
}

public_awards[5] = 
{
	desc = "",
	--兑换5
	items = 
	{
		[1] = {id=14920,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=1182,num=15,},
	},
	--任务ID
	task = 2869,
}

public_awards[6] = 
{
	desc = "",
	--兑换5
	items = 
	{
		[1] = {id=14920,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=2459,num=1,},
	},
	--任务ID
	task = 2871,
}
return public_awards