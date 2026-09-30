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
	icon = 1422,
	title = "寶箱碎片兌換活動",
	exchange = "兌換時間：",
	time = "2018/7/5 0:00-2018/7/7 24:00",
	desc = "",
	timeuseActivity = false,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}


public_awards[1] = 
{
	desc = "",
	--兑换1
	items = 
	{
		[1] = {id=11876,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=7554,num=1,},
	},
	--任务ID
	task = 2313,
	--gender = "female", --性别配置，both或不写就是不限制  "male","female","both"
}
public_awards[2] = 
{
	desc = "",
	--兑换2
	items = 
	{
		[1] = {id=11876,num=3,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=4680,num=1,},
	},
	--任务ID
	task = 2315,
	--gender = "male", --性别配置，both或不写就是不限制  "male","female","both"
}  
public_awards[3] = 
{
	desc = "",
	--兑换3
	items = 
	{
		[1] = {id=11876,num=3,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=1209,num=1,},
	},
	--任务ID
	task = 2316,
}

public_awards[4] = 
{
	desc = "",
	--兑换4
	items = 
	{
		[1] = {id=11876,num=5,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=842,num=1,},
	},
	--任务ID
	task = 2317,
}

public_awards[5] = 
{
	desc = "",
	--兑换5
	items = 
	{
		[1] = {id=11876,num=5,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=907,num=1,},
	},
	--任务ID
	task = 2318,
}
return public_awards