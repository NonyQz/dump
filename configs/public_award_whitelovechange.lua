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
	title = "\n白色情人節兌換活動",
	exchange = "兌換時間：",
	time = "以官網時間為準",
	desc = "[ff0000]白玫瑰[-]+[ff0000]巧克力[-]=[ff0000]浪漫之禮[-]!",
	timeuseActivity = false,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}

public_awards[1] = 
{
	desc = "",
	--男性奖励
	items = 
	{
		[1] = {id=8663,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=9000,num=1,},
	},
	--任务ID
	task = 1793,
	-- gender = "male",
}

public_awards[2] = 
{
	desc = "",
	--女性奖励
	items = 	--消耗什么
	{
		[1] = {id=8664,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 	--兑换什么
	{
		[1] = {id=9001,num=1,},
	},
	--任务ID
	task = 1794,
	-- gender = "female",
	--性别限制
	--gender = "both", --"male","female","both"
}

public_awards[3] = 
{
	desc = "",
	--妇女节礼包
	items = 
	{
		[1] = {id=8663,num=1,},
		[2] = {id=8664,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=9002,num=1,},
	},
	--任务ID
	task = 1795,
}

return public_awards