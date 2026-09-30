
local vip_cfgs = {}

vip_cfgs.max_level = 20

vip_cfgs[1] =
{
	name = "貴族 1",
	icon = 12,
	upgrade = 1,
	daily_reward = 0,
	rights =
	{
		exp_increase = 5,
		exp_offline_increase = 1,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族1豪華禮包[-]",
		[2] = "[669CFF]挑戰長板橋可額外獲得10%的經驗",
		[3] = "[669CFF]開啟倉庫功能",
		[4] = "每日可額外使用1次經驗丹，共11次",
		
	}
}

vip_cfgs[2] =
{
	name = "貴族 2",
	icon = 12,
	upgrade = 10,
	daily_reward = 0,
	rights =
	{
		exp_increase = 5,
		exp_offline_increase = 2,	--离线经验系数
		vigour_times = 2,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族2豪華禮包",
		[2] = "[669CFF]挑戰藏金窟可額外獲得10%的銀子",
		[3] = "[669CFF]每日可額外挑戰2次皇陵密室，共3次",
		[4] = "每日可額外購買1次體力，共3次",
		[5] = "每日可額外使用2次經驗丹，共12次",
		[6] = "每日可額外使用1次暢行丹，共3次",
		[7] = "以及貴族1全部特權",
	}
}

vip_cfgs[3] =
{
	name = "貴族 3",
	icon = 12,
	upgrade = 30,
	daily_reward = 0,
	rights =
	{
		exp_increase = 5,
		exp_offline_increase = 3,	--离线经验系数
		vigour_times = 3,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族3豪華禮包",
		[2] = "[669CFF]國家活動（刺探軍情、無間道、九龍鼎）刷新達到5次，必出綠色及以上品質",
		[3] = "[669CFF]每日可額外挑戰1次長阪橋，共4次",
		[4] = "[669CFF]長板橋和藏金窟可使用掃蕩功能快速通關",
		[5] = "每日可額外使用3次經驗丹，共13次",
		[6] = "以及貴族2全部特權",
	}
}

vip_cfgs[4] =
{
	name = "貴族 4",
	icon = 12,
	upgrade = 50,
	daily_reward = 0,
	rights =
	{
		exp_increase = 10,
		exp_offline_increase = 4,	--离线经验系数
		vigour_times = 4,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族4豪華禮包",
		[2] = "[669CFF]每日可額外挑戰1次藏金窟，共2次",
		[3] = "每日可額外購買2次體力，共4次",
		[4] = "每日可額外使用4次經驗丹，共14次",
		[5] = "每日可額外使用2次暢行丹，共4次",
		[6] = "以及貴族3全部特權",
	}
}

vip_cfgs[5] =
{
	name = "貴族 5",
	icon = 12,
	upgrade = 100,
	daily_reward = 0,
	rights =
	{
		exp_increase = 10,
		exp_offline_increase = 5,	--离线经验系数
		vigour_times = 5,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族5豪華禮包",
		[2] = "[669CFF]國家活動（刺探軍情、無間道、九龍鼎）刷新達到10次，必出紫色品質",
		[3] = "每日可額外使用5次經驗丹，共15次",
		[4] = "[669CFF]開啟子午穀掃蕩功能",
		[5] = "以及貴族4全部特權",
	}
}

vip_cfgs[6] =
{
	name = "貴族 6",
	icon = 12,
	upgrade = 200,
	daily_reward = 0,
	rights =
	{
		exp_increase = 10,
		exp_offline_increase = 6,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族6豪華禮包",
		[2] = "[669CFF]開啟懸賞一鍵刷新功能，可一鍵將所有懸賞任務刷新為紫色",
		[3] = "[669CFF]每日可額外挑戰1次精英掃蕩副本，共2次",
		[4] = "[669CFF]開啟贈送99朵鮮花功能",
		[5] = "每日可額外購買3次體力，共5次",
		[6] = "每日可額外使用6次經驗丹，共16次",
		[7] = "每日可額外使用3次暢行丹，共5次",
		[8] = "以及貴族5全部特權",
	}
}

vip_cfgs[7] =
{
	name = "貴族 7",
	icon = 12,
	upgrade = 300,
	daily_reward = 0,
	rights =
	{
		exp_increase = 15,
		exp_offline_increase = 7,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族7豪華禮包",
		[2] = "[669CFF]每日可額外挑戰2次長板橋，共5次",
		[3] = "每日可額外購買4次體力，共6次",
		[4] = "每日可額外使用7次經驗丹，共17次",
		[5] = "以及貴族6全部特權",
	}
}

vip_cfgs[8] =
{
	name = "貴族 8",
	icon = 12,
	upgrade = 500,
	daily_reward = 0,
	rights =
	{
		exp_increase = 15,
		exp_offline_increase = 8,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族8豪華禮包",
		[2] = "[669CFF]開啟跑環一鍵完成任務功能",
		[3] = "[669CFF]開啟卡牌合成功能，可點擊單張卡牌介面上的合成按鈕合成指定的卡牌",
		[4] = "[669CFF]開啟貴族專屬活動-一騎當千，每日可獲得4個無字天書殘卷",
		[5] = "[669CFF]開啟貴族商店，可以更優惠的價格購買更為豐富的道具",
		[6] = "每日可額外購買5次體力，共7次",
		[7] = "以及貴族7全部特權",
	}
}

vip_cfgs[9] =
{
	name = "貴族 9",
	icon = 12,
	upgrade = 700,
	daily_reward = 0,
	rights =
	{
		exp_increase = 15,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族9豪華禮包",
		[2] = "[669CFF]每日可額外挑戰2次精英掃蕩副本，共3次",
		[3] = "[669CFF]每日可額外挑戰2次皇陵偏殿，共3次",
		[4] = "[669CFF]每日可額外進行2次神樹活動，共5次",
		[5] = "[669CFF]法器培養次數提升至15次",
		[6] = "每日可額外購買6次體力，共8次",
		[7] = "每日可額外使用8次經驗丹，共18次",
		[8] = "以及貴族8全部特權",
	}
}

vip_cfgs[10] =
{
	name = "貴族 10",
	icon = 12,
	upgrade = 1000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 20,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族10豪華禮包",
		[2] = "[669CFF]魅力無敵，其他玩家將可看到您裝備的翅膀",
		[3] = "[669CFF]每日可額外挑戰2次藏金窟，共3次",
		[4] = "每日可額外進行2次幫會捐獻，共5次",
		[5] = "每日可額外購買7次體力，共9次",
		[6] = "每日可額外使用4次暢行丹，共6次",
		[7] = "以及貴族9全部特權",
	}
}

vip_cfgs[11] =
{
	name = "貴族 11",
	icon = 12,
	upgrade = 1500,
	daily_reward = 0,
	rights =
	{
		exp_increase = 20,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族11豪華禮包",
		[2] = "[669CFF]每日可額外挑戰3次精英掃蕩副本，共4次",
		[3] = "[669CFF]每日可額外挑戰1次皇陵寶庫，共2次",
		[4] = "[669CFF]每日可額外進行2次國家捐獻，共5次",
		[5] = "[669CFF]完成一騎當千活動，每日可獲得12個無字天書殘卷",
		[6] = "每日可額外購買8次體力，共10次",
		[7] = "每日可額外使用9次經驗丹，共19次",
		[8] = "以及貴族10全部特權",
	}
}

vip_cfgs[12] =
{
	name = "貴族 12",
	icon = 12,
	upgrade = 2000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 20,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族12豪華禮包",
		[2] = "[669CFF]每日可額外刷新1次闖天關",
		[3] = "[669CFF]開啟贈送999朵鮮花功能",
		[4] = "[669CFF]魅力無限，其他玩家將可看到您出戰的寵物",
		[5] = "每日可額外購買10次體力，共12次",
		[6] = "每日可額外使用5次暢行丹，共7次",
		[7] = "以及貴族11全部特權",
	}
}

vip_cfgs[13] =
{
	name = "貴族 13",
	icon = 12,
	upgrade = 4000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族13豪華禮包",
		[2] = "[669CFF]開啟神器一鍵煉星功能，無需重複操作自動煉星至指定等級",
		[3] = "[669CFF]每日可額外挑戰4次精英掃蕩副本，共5次",
		[4] = "[669CFF]每日可額外進行7次幫會捐獻，共10次",
		[5] = "[669CFF]魅力無敵，其他玩家將可看到您召喚的法器",
		[6] = "每日可額外購買11次體力，共13次",
		[7] = "每日可額外使用10次經驗丹，共20次",
		[8] = "每日可額外使用6次暢行丹，共8次",
		[9] = "以及貴族12全部特權",
	}
}

vip_cfgs[14] =
{
	name = "貴族 14",
	icon = 12,
	upgrade = 8000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族14豪華禮包",
		[2] = "[669CFF]每日可額外購買5次擂臺挑戰",
		[3] = "[669CFF]每日可額外進行7次國家捐獻，共10次",
		[4] = "[669CFF]完成一騎當千活動，每日可獲得24個無字天書殘卷",
		[5] = "每日可額外購買13次體力，共15次",
		[6] = "以及貴族13全部特權",
	}
}

vip_cfgs[15] =
{
	name = "貴族 15",
	icon = 12,
	upgrade = 15000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族15豪華禮包",
		[2] = "[669CFF]每日可額外挑戰名將試煉5次，共計10次",
		[3] = "每日可額外購買18次體力，共20次",
		[4] = "每日可額外使用7次暢行丹，共9次",
		[5] = "以及貴族14全部特權",
	}
}

vip_cfgs[16] =
{
	name = "貴族 16",
	icon = 12,
	upgrade = 20000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族16豪華禮包",
		[2] = "[669CFF]挑戰長板橋可再額外獲得5%的經驗，共計15%",
		[3] = "[669CFF]法器培養次數提升至20次",
		[4] = "每日可額外購買20次體力，共22次",
		[5] = "每日可額外使用11次經驗丹，共21次",
		[6] = "以及貴族15全部特權",
	}
}

vip_cfgs[17] =
{
	name = "貴族 17",
	icon = 12,
	upgrade = 25000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族17豪華禮包",
		[2] = "[669CFF]每日可獲得功勛的上限提升至6000",
		[3] = "每日可額外購買23次體力，共25次",
        [4] = "每日可額外使用12次經驗丹，共22次",
		[5] = "每日可額外使用8次暢行丹，共10次",
		[6] = "以及貴族16全部特權",
	}
}

vip_cfgs[18] =
{
	name = "貴族 18",
	icon = 12,
	upgrade = 30000,
	daily_reward = 0,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族18豪華禮包",
		[2] = "[669CFF]每日可額外挑戰3次長板橋，共6次",
		[3] = "[669CFF]不定期開啟貴族專賣商店，可以購買更為豐富的限量道具",
		[4] = "每日可額外購買28次體力，共30次",
		[5] = "每日可額外使用13次經驗丹，共23次",
		[6] = "以及貴族17全部特權",
	}
}

vip_cfgs[19] =
{
	name = "貴族 19",
	icon = 12,
	upgrade = 35000,
	daily_reward = 10000379,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族19豪華禮包",
		[2] = "[669CFF]每日可領取1次貴族19專屬每日禮包",
		[3] = "[669CFF]每日可額外使用1次黃巾密信，共2次",
		[4] = "[669CFF]貴族專賣開售期間每日可額外免費刷新1次，共4次",
		[5] = "每日可額外購買30次體力，共32次",
		[6] = "每日可額外使用15次經驗丹，共25次",
		[7] = "每日可額外使用9次暢行丹，共11次",
		[8] = "以及貴族18全部特權",
	}
}

vip_cfgs[20] =
{
	name = "貴族 20",
	icon = 12,
	upgrade = 40000,
	daily_reward = 10000378,
	rights =
	{
		exp_increase = 25,
		exp_offline_increase = 9,	--离线经验系数
		vigour_times = 1,   --体力购买次数
	},
	rights_desc = 
	{
		[1] = "[669CFF]可領取貴族20豪華禮包",
		[2] = "[669CFF]每日可領取1次貴族20專屬每日禮包",
		[3] = "[669CFF]每日可額外挑戰1次平定馬賊，共2次",
		[4] = "[669CFF]貴族專賣開售期間每日可額外免費刷新3次，共6次",
		[5] = "每日可額外購買32次體力，共34次",
		[6] = "每日可額外使用18次經驗丹，共28次",
		[7] = "每日可額外使用10次暢行丹，共12次",
		[8] = "以及貴族19全部特權",
	}
}

return vip_cfgs

