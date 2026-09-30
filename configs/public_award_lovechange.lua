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
	title = "\n心動兌換活動",
	exchange = "兌換時間：",
	time = "2017/2/13 0:00-2017/2/15 23:59",
	desc = "活動期間收集[ff0000]愛心[-]兌換[ff0000]浪漫之禮[-]!",
	timeuseActivity = false,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}

public_awards[1] = 
{
	desc = "",
	--现充奖励
	items = 
	{
		[1] = {id=8277,num=20,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=8282,num=1,},
	},
	--任务ID
	task = 1669,
}

public_awards[2] = 
{
	desc = "",
	--单身奖励
	items = 	--消耗什么
	{
		[1] = {id=8277,num=15,},
	},
	--产出，--目前只需要配一个award
	output = 	--兑换什么
	{
		[1] = {id=8283,num=1,},
	},
	--任务ID
	task = 1668,
	--性别限制
	--gender = "both", --"male","female","both"
}

public_awards[3] = 
{
	desc = "",
	--弹幕发射器
	items = 
	{
		[1] = {id=8277,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=7739,num=1,},
	},
	--任务ID
	task = 1670,
}

return public_awards