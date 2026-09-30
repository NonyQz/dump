
local GuideType = 
	{
		instance_exp_addition = 1,			--经验本经验加成10%
		instance_money_addition = 2,		--金钱本金钱加成10%
		mausoleum02_time = 3,				--内装本上限改为3次
		activity_green = 4,					--国家活动5次必绿
		activity_purple = 5,				--国家活动10次必紫
		quest_seriesnew_oncerefresh = 6,	--悬赏一键刷新
		instance_exp_time = 7,				--经验本上限改为5次
		ringquest_once = 8,					--跑环直接完成任务
		mausoleum01_time = 9,				--材料本上限改为3次
		instance_money_time = 10,			--金钱本上限改为3次
		mausoleum03_time = 11,				--外装本上限为5次
		pass_reset = 12,					--闯天关可额外刷新一次
		equip_oncestarup =13,				--一键炼星功能开启
		arena_time =14,						--可购买5次擂台
		herofight_time =15,					--英雄试炼上限为10次
	}

local Pay_Guide_Cfg = {}

function Pay_Guide_Cfg:getGuideType()
	return GuideType
end

function Pay_Guide_Cfg:addConfig(config)
	if config.guidetype then
		Pay_Guide_Cfg[config.guidetype] = config
	end
end



Pay_Guide_Cfg:addConfig					--经验本经验加成10%
{
	guidetype = GuideType.instance_exp_addition,

	hint = "儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族1[-]，[00ff00]挑戰長板橋可額外獲得10%%經驗[-]，還有更多特權以及[FFFF00]六龍貴族1專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 1,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 0,	--触发引导的VIP等级
}


Pay_Guide_Cfg:addConfig					--金钱本金钱加成10%
{
	guidetype = GuideType.instance_money_addition,

	hint = "儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族2[-]，[00ff00]挑戰藏金窟可額外獲得10%%的銀子[-]，還有更多特權以及[FFFF00]六龍貴族2專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 2,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {0, 1},			--0 1触发
}


Pay_Guide_Cfg:addConfig					--内装本上限改为3次
{
	guidetype = GuideType.mausoleum02_time,

	hint = "儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族3[-]，[00ff00]皇陵密室次數突破至3次[-]，還有更多特權以及[FFFF00]六龍貴族3專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {3,1,2}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 3,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {0, 1, 2},	
}


Pay_Guide_Cfg:addConfig					--国家活动5次必绿
{
	guidetype = GuideType.activity_green,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族4[-]，[00ff00]所有國家活動刷新5次必出綠色品質[-]，還有更多特權以及[FFFF00]六龍貴族4專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 4,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {0, 1, 2, 3},	
}


Pay_Guide_Cfg:addConfig					--国家活动10次必紫
{
	guidetype = GuideType.activity_purple,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族5[-]，[00ff00]所有國家活動刷新10次必出紫色品質[-]，還有更多特權以及[FFFF00]六龍貴族5專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {2,1,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 5,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 4,
}


Pay_Guide_Cfg:addConfig					--悬赏一键刷新
{
	guidetype = GuideType.quest_seriesnew_oncerefresh,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族6[-]，[00ff00]享受懸賞任務一鍵全紫功能[-]，還有更多特權以及[FFFF00]六龍貴族6專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,3,2}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 6,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 5,
}


Pay_Guide_Cfg:addConfig					--经验本上限改为5次
{
	guidetype = GuideType.instance_exp_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族7[-]，[00ff00]長阪坡次數突破至5次[-]，還有更多特權以及[FFFF00]六龍貴族7專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 7,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {4, 5, 6},
	taskIds = {185, 206, 222}	--184,199,221(上一个任务)
}


Pay_Guide_Cfg:addConfig					--跑环直接完成任务
{
	guidetype = GuideType.ringquest_once,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族8[-]，[00ff00]享受貴族商店、一鍵完成跑環[-]，還有更多特權以及[FFFF00]六龍貴族8專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 8,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 7,
}


Pay_Guide_Cfg:addConfig					--材料本上限改为3次
{
	guidetype = GuideType.mausoleum01_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族9[-]，[00ff00]皇陵偏殿次數突破至3次[-]，還有更多特權以及[FFFF00]六龍貴族9專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 9,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {7, 8},
}


Pay_Guide_Cfg:addConfig					--金钱本上限改为3次
{
	guidetype = GuideType.instance_money_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族10[-]，[00ff00]藏金窟次數突破至3次[-]，還有更多特權以及[FFFF00]六龍貴族10專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {2,1,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 10,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {7, 8, 9},
}


Pay_Guide_Cfg:addConfig					--外装本上限为5次
{
	guidetype = GuideType.mausoleum03_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族11[-]，[00ff00]皇陵寶庫次數突破至5次[-]，還有更多特權以及[FFFF00]六龍貴族11專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 11,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = {7, 8, 9, 10},
}


Pay_Guide_Cfg:addConfig					--闯天关可额外刷新一次
{
	guidetype = GuideType.pass_reset,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族12[-]，[00ff00]享受闖天關每日1次額外免費重置[-]，還有更多特權以及[FFFF00]六龍貴族12專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {3,2,1}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 12,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 11,
}


Pay_Guide_Cfg:addConfig					--一键炼星功能开启
{
	guidetype = GuideType.equip_oncestarup,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族13[-]，[00ff00]享受貴族一鍵煉星功能[-]，還有更多特權以及[FFFF00]六龍貴族13專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 13,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 12,
}


Pay_Guide_Cfg:addConfig					--可购买5次擂台
{
	guidetype = GuideType.arena_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族14[-]，[00ff00]擂台增加5次購買次數[-]，還有更多特權以及[FFFF00]六龍貴族14專屬豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {1,2,3}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 14,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 13,
}
			

Pay_Guide_Cfg:addConfig					--英雄试炼上限为10次
{
	guidetype = GuideType.herofight_time,

	hint = "再儲值 [FFFF00]%d鑽[-]即可成為[ff00ff]六龍貴族15[-]，[00ff00]名將試煉次數突破至10次[-]，還有更多特權以及[FFFF00]六龍貴族15專屬頂級豪禮[-]等你來。", 	--%d 是钱数
	rewardIndex = {3,1,2}, 		--比如:在贵族界面下方的道具显示顺序
	vipLv = 15,		--这里的vip等级是再充多少钱就可达到的那个vip等级
	trigVipLv = 14,
}


return Pay_Guide_Cfg

