--[[
	公测福利
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
	title = "\n週年慶兌換活動",
	exchange = "兌換時間：",
	time = "2020/10/29 0:00-2020/11/04 24:00",
	desc = "完成每日國家活動可得六龍權杖，[ff0000]集字得好禮[-]！",	
	timeuseActivity = true, --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}

public_awards[1] = 
{
	desc = "",
-- 	--激情六龙
	items = 
 	{
 		[1] = {id=12763,num=1,},
 		[2] = {id=12764,num=1,},
 		[3] = {id=12765,num=1,},
 		[4] = {id=12766,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=20318,num=1,},
 	},
 	--任务ID
 	task = 2468,
 }

public_awards[2] = 
{
	desc = "",
	--感谢有你
	items = 
	{
 		[1] = {id=12767,num=1,},
 		[2] = {id=12768,num=1,},
 		[3] = {id=12769,num=1,},
 		[4] = {id=12770,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=12780,num=1,},
	},
	--任务ID
	task = 2469,
}


public_awards[3] = 
{
	desc = "",
	--六龙有你
	items = 	--消耗什么
	{
 		[1] = {id=12765,num=1,},
 		[2] = {id=12766,num=1,},
 		[3] = {id=12769,num=1,},
 		[4] = {id=12770,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 	--兑换什么
	{
		[1] = {id=20334,num=1,},
	},
	--任务ID
	task = 2470,
	--性别限制
	--gender = "both", --"male","female","both"
}
public_awards[4] = 
{
	desc = "",
	--六*4
	items = 
	{
		[1] = {id=12765,num=1,},
		[2] = {id=12765,num=1,},
		[3] = {id=12765,num=1,},
		[4] = {id=12765,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=6726,num=1,},
	},
	--任务ID
	task = 2471,
}
public_awards[5] = 
{
	desc = "",
	--龙*4
	items = 
	{
		[1] = {id=12766,num=1,},
		[2] = {id=12766,num=1,},
		[3] = {id=12766,num=1,},
		[4] = {id=12766,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=4523,num=1,},
	},
	--任务ID
	task = 2472,
}
public_awards[6] = 
{
 	desc = "",
 	--激*1
 	items = 
 	{
 		[1] = {id=12763,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2460,
}
public_awards[7] = 
{
 	desc = "",
 	--情*1
 	items = 
 	{
 		[1] = {id=12764,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2461,
}
public_awards[8] = 
{
 	desc = "",
 	--六*1
 	items = 
 	{
 		[1] = {id=12765,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2462,
}
public_awards[9] = 
{
 	desc = "",
 	--龙*1
 	items = 
 	{
 		[1] = {id=12766,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2463,
}
public_awards[10] = 
{
 	desc = "",
 	--感*1
 	items = 
 	{
 		[1] = {id=12767,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2464,
}
public_awards[11] = 
{
 	desc = "",
 	--谢*1
 	items = 
 	{
 		[1] = {id=12768,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2465,
}
public_awards[12] = 
{
 	desc = "",
 	--有*1
 	items = 
 	{
 		[1] = {id=12769,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2466,
}
public_awards[13] = 
{
 	desc = "",
 	--你*1
 	items = 
 	{
 		[1] = {id=12770,num=1,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=6338,num=1,},
 	},
 	--任务ID
 	task = 2467,
}

return public_awards