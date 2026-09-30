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
	title = "\n整蠱大師兌換活動",
	exchange = "兌換時間：",
	time = "2016/5/19 0:00-2016/5/25 24:00", --该时间随服务器变更，不需要进行修改
	desc = "整蠱大師活動兌換[ff0000]好禮[-]!",
	timeuseActivity = true,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}

public_awards[1] = 
{
	desc = "",
	--愚人节兑换1
	items = 
	{
		[1] = {id=10368,num=15,},
		[2] = {id=15158,num=15,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=22041,num=1,}, --兑换称号的修改，每年需要更换新的称号ID
	},
	--任务ID
	task = 3423,  --此任务每月15号清记次，不要跨15日开启
	--gender = "female", --性别配置，both或不写就是不限制  "male","female","both"
}
public_awards[2] = 
{
	desc = "",
	--愚人节兑换2
	items = 
	{
		[1] = {id=15158,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=1182,num=10,},
	},
	--任务ID
	task = 1966,
	--gender = "male", --性别配置，both或不写就是不限制  "male","female","both"
}
public_awards[3] = 
{
	desc = "",
	--愚人节兑换3
	items = 
	{
		[1] = {id=10368,num=1,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=13607,num=2,},
	},
	--任务ID
	task = 1965,
}

return public_awards