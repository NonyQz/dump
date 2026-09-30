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
	title = "\n福星收錄兌換活動",
	exchange = "兌換時間：",
	time = "2020/9/3 0:00-2020/9/9 24:00",
	desc = "活動期間收集[ff0000]福星彩珠[-]即可兌換[ff0000]好禮[-]!",
	timeuseActivity = true,  --true 表示界面上的兑换显示时间用活动的 显示格式是 "%04d/%d/%d/%d点" -"%04d/%d/%d/%d点",
					-- false 表示时间用 time 配置的
}

public_awards[1] = 
{
	desc = "",
	--福柱珠换奖励
	items = 
	{
		[1] = {id=11278,num=200,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=20213,num=1,},
	},
	--任务ID
	task = 2171,
}
public_awards[2] = 
{
	desc = "",
	--福、禄珠换奖励
	items = 	--消耗什么
	{
		[1] = {id=11279,num=200,},
	},
	--产出，--目前只需要配一个award
	output = 	--兑换什么
	{
		[1] = {id=20214,num=1,},
	},
	--任务ID
	task = 2176,
	--性别限制
	--gender = "both", --"male","female","both"
}
public_awards[3] = 
{
	desc = "",
	--福、寿珠换奖励
	items = 
	{
		[1] = {id=11280,num=200,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=20215,num=1,},
	},
	--任务ID
	task = 2177,
}
public_awards[4] = 
{
	desc = "",
	--福、喜珠换奖励
	items = 
	{
		[1] = {id=11281,num=200,},
	},
	--产出，--目前只需要配一个award
	output = 
	{
		[1] = {id=20216,num=1,},
	},
	--任务ID
	task = 2178,
}
 public_awards[5] = 
{
	desc = "",
-- 	--福禄寿喜兑奖
	items = 
 	{
 		[1] = {id=11278,num=200,},
 		[2] = {id=11279,num=200,},
 		[3] = {id=11280,num=200,},
 		[4] = {id=11281,num=200,},
 	},
 	--产出，--目前只需要配一个award
 	output = 
 	{
 		[1] = {id=20217,num=1,},
 	},
 	--任务ID
 	task = 2187,
 }
-- public_awards[6] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换5
-- 	items = 
-- 	{
-- 		[1] = {id=10453,num=1,},
-- 		[2] = {id=10453,num=1,},
-- 		[3] = {id=10453,num=1,},
-- 		[4] = {id=10453,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=8372,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2005,
-- }
-- public_awards[7] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换6单字激
-- 	items = 
-- 	{
-- 		[1] = {id=10446,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2006,
-- }
-- public_awards[8] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换7单字情
-- 	items = 
-- 	{
-- 		[1] = {id=10447,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2007,
-- }
-- public_awards[9] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换8单字国
-- 	items = 
-- 	{
-- 		[1] = {id=10448,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2008,
-- }
-- public_awards[10] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换9单字战
-- 	items = 
-- 	{
-- 		[1] = {id=10449,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2009,
-- }
-- public_awards[11] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换10单字唯
-- 	items = 
-- 	{
-- 		[1] = {id=10450,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2010,
-- }
-- public_awards[12] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换11单字我
-- 	items = 
-- 	{
-- 		[1] = {id=10451,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2013,
-- }
-- public_awards[13] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换12单字六
-- 	items = 
-- 	{
-- 		[1] = {id=10452,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2011,
-- }
-- public_awards[14] = 
-- {
-- 	desc = "",
-- 	--半周年庆兑换6单字激
-- 	items = 
-- 	{
-- 		[1] = {id=10453,num=1,},
-- 	},
-- 	--产出，--目前只需要配一个award
-- 	output = 
-- 	{
-- 		[1] = {id=6338,num=1,},
-- 	},
-- 	--任务ID
-- 	task = 2012,
-- }
return public_awards