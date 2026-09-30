local export = {}

export[1] = 

	{
 
		campaign_tid = 5238,        	-- 对应活动ID
		
		num_campaign_tid = 5264,		-- 统计分数用的活动ID
		
		lv_limits = 36,					--参与最低等级

		base_reward_tid = 5294,         -- 答对奖励模板

		fail_reward_tid = 5295,         -- 答错奖励模板

		rate_rewards = 
			{
	     		[1] = {require_count = 3, reward_tid = 5298},
				[2] = {require_count = 6, reward_tid = 5299},
				[3] = {require_count = 9, reward_tid = 5300},
				[4] = {require_count = 12, reward_tid = 5301},
			},

		questcount = 15,			-- 抽取的题目数量
		
		passnum = 40,		--参加孝廉考试的分数要求


	}

	export[2] = 

	{
 
		campaign_tid = 5239,        	-- 对应活动ID
		
		lv_limits = 36,					--参与最低等级

		base_reward_tid = 5296,         -- 答对奖励模板

		fail_reward_tid = 5297,         -- 答错奖励模板

		rate_rewards = 
			{
	     		[1] = {require_count = 5, reward_tid = 5298},
				[2] = {require_count = 10, reward_tid = 5299},
				[3] = {require_count = 15, reward_tid = 5300},
				[4] = {require_count = 20, reward_tid = 5301},
			},

		questcount = 25,                -- 抽取的题目数量
	}
	
return export