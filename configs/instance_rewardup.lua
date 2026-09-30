--Instance_RewardUp
--活动:副本翻倍奖励

local Instance_RewardUp = Instance_RewardUp or {}

--活动相关信息
--parm: 
	--instType --1.经验副本 2.金钱副本 3.皇陵偏殿 4.皇陵密室 5.皇陵宝库
	--explain  --公告
	--reward --奖励信息

Instance_RewardUp.activeyIds = 
{
 	2626,
 	2627,
 	2628,
 	2629,
 	2630,
}

Instance_RewardUp.activeyInfo = 
{
 	[2626] = 
 	{
 		instType = 1,
		explain = "在酣戰天下活動期間，通關長板橋可獲得雙倍通關經驗獎勵!", 
		reward = {2716}, 											
 	},

 	[2627] = 
 	{
 		instType = 2, 
		explain = "在酣戰天下活動期間，通關藏金窟可獲得雙倍通關銀兩獎勵!", 
		reward = {2717}, 											
 	},

 	[2628] = 
 	{
 		instType = 3, 
		explain = "在酣戰天下活動期間，通關皇陵偏殿可獲得雙倍通關獎勵!", 
		reward = {2718}, 											
 	},
 	
 	[2629] = 
 	{
 		instType = 4, 
		explain = "在酣戰天下活動期間，通關皇陵密室可獲得雙倍通關獎勵!", 
		reward = {2719}, 											
 	},
 	
 	[2630] = 
 	{
 		instType = 5, 
		explain = "在酣戰天下活動期間，通關皇陵寶庫可獲得雙倍通關獎勵!", 
		reward = {2720}, 											
 	},
 	
}

return Instance_RewardUp