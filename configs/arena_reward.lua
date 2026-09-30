--竞技场

local arena_reward = arena_reward or {}

--排行奖励
arena_reward.reward = 
{
	--#第几档 该档名次下限 该档名次上限 该档的奖励发放配置表id
	{id = 1, minLv = 1, maxLv = 1, rewardId = 768, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 2, minLv = 2, maxLv = 2, rewardId = 769, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 3, minLv = 3, maxLv = 3, rewardId = 770, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 4, minLv = 4, maxLv = 10, rewardId = 771, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 5, minLv = 11, maxLv = 20, rewardId = 772, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 6, minLv = 21, maxLv = 50, rewardId = 773, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 7, minLv = 51, maxLv = 100, rewardId = 774, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 8, minLv = 101, maxLv = 200, rewardId = 775, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 9, minLv = 201, maxLv = 500, rewardId = 776, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 10, minLv = 501, maxLv = 1000, rewardId = 777, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 11, minLv = 1001, maxLv = 2000, rewardId = 778, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 12, minLv = 2001, maxLv = 3000, rewardId = 779, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 13, minLv = 3001, maxLv = 5000, rewardId = 780, rewardId_Win = 788, rewardId_Fail = 789},
	{id = 14, minLv = 5001, maxLv = 9999999, rewardId = 780, rewardId_Win = 788, rewardId_Fail = 789},
}

--竞技场排名怪头像和战斗力
arena_reward.monsterInfo = 
{
	[1668] = {head = 1044, power = 180000, nation = 0},--赵云
	[1669] = {head = 1005, power = 140000, nation = 0},--关羽
	[1670] = {head = 1035, power = 100000, nation = 0},--许褚
	[1671] = {head = 1046, power = 85000, nation = 0},--周瑜
	[1672] = {head = 1047, power = 75000, nation = 0},--诸葛亮
	[1673] = {head = 1017, power = 65000, nation = 0},--马超
	[1674] = {head = 1042, power = 58000, nation = 0},--张辽
	[1675] = {head = 1039, power = 57000, nation = 0},--张飞
	[1676] = {head = 1007, power = 56000, nation = 0},--黄月英
	[1677] = {head = 1041, power = 55000, nation = 0},--张角
}

return arena_reward