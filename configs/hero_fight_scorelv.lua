--英雄试炼 根据挑战胜利时间评等级

local hero_fight_ScoreLv = hero_fight_ScoreLv or {}

--时间奖励
hero_fight_ScoreLv.Score = 
{
	{id = 1, mintime = 0, maxtime = 60, name = "S"}, -- <=   <= 单位秒
	{id = 2, mintime = 61, maxtime = 90, name = "A"},
	{id = 3, mintime = 91, maxtime = 120, name = "B"},
	{id = 4, mintime = 121, maxtime = 1000, name = "C"},
}

--失败奖励
hero_fight_ScoreLv.FailReward = 
{
	1254,
}


return hero_fight_ScoreLv