--[[
	配置成长界面内容
]]

local charup_config = {
	tab_list = {},
	reference_fightvalue = 0,
}

--[[
	添加进度页
	config:
	{
		tab_name = ...,			--分页名
		progress_list =
		{
			[index] =
			{
				drop_type = ...,		--掉落物品类型 (DropInfo.Map 中的序号)，决定名称、图标、功能开启前提、点“立即前往”效果
				unlock_type = ...,		--解锁类型
				value_type = ...,		--哪个值，如“宝石镶嵌”为"attach"，神器炼星为"star"
				reference_value = ...,		--参考值，整数数组模板id
			},
			...
		},
	}
	
例：
add_progress_page
{
	tab_name = "我要变强",
	progress_list =
	{
		{ drop_type = 1, unlock_name = "attach", value_type = "attach", reference_value = 101, },
		{ drop_type = 2, unlock_name = "star", value_type = "star", reference_value = 102, },
	}
}
]]
local function add_progress_page (config)
	config.tab_type = "progress"
	table.insert(charup_config.tab_list, config)
end

--[[
	添加物品来源页
	config:
	{
		tab_name = ...,				--分页名
		drop_type_list =			--掉落物品类型列表
		{
			[drop_type_index] =
			{
				drop_type = ...,	--掉落物品类型 (DropInfo.Map 中的序号)，决定名称、图标、功能开启前提、点“立即前往”效果
				detail_desc = ...,	--详细说明文字(可为动态文本，尤其是可以用 GameUtil.IsEvaluation() 判断是否(苹果)评估版)
			},
			...
		},
	}

例：
add_drop_page
{
	tab_name = "我要神器",
	drop_type_list =
	{
		{ drop_type = 1, detail_desc = "可从xxx获得神器", },
		{ drop_type = 2, detail_desc = "可从yyy获得神器", },
	}
}
]]
local function add_drop_page (config)
	config.tab_type = "drop"
	table.insert(charup_config.tab_list, config)
end

--[[
	添加物品来源组
	config:
	{
		tab_name = ...,				--分页名
		tab_list =					--掉落物品类型列表
		{
			[tab_index] = ...,		--内容为 add_drop_page 内容
			...
		},
	}

例：
add_drop_group
{
	tab_name = "我要材料",
	tab_list =
	{
		{
			tab_name = "材料1",
			drop_type_list =
			{
				{ drop_type = 1, detail_desc = "可从xxx获得材料1", },
				{ drop_type = 2, detail_desc = "可从yyy获得材料1", },
			}
		},
		{
			tab_name = "材料2",
			drop_type_list =
			{
				{ drop_type = 1, detail_desc = "可从xxx获得材料2", },
				{ drop_type = 2, detail_desc = "可从yyy获得材料2", },
			}
		},
	}
}
]]
local function add_drop_group (config)
	config.tab_type = "group"
	for i, tab in ipairs(config.tab_list) do
		tab.tab_type = "drop"
	end
	table.insert(charup_config.tab_list, config)
end

--[[
	设置战斗力参考值，整数数组模板id
	
例：
set_reference_fightvalue(111)
]]
local function set_reference_fightvalue (value)
	charup_config.reference_fightvalue = value
end

-- 数据开始
--------------------------------------------------------------

add_progress_page
{
	tab_name = "我要變強",
	progress_list =
	{
		{ drop_type = 34, unlock_name = "underwear", value_type = "grade_up", reference_value = 1405, },
		{ drop_type = 35, unlock_name = "attach", value_type = "attach", reference_value = 1406, },
		{ drop_type = 36, unlock_name = "starup", value_type = "starup", reference_value = 1407, },
		{ drop_type = 37, unlock_name = "starup", value_type = "refresh", reference_value = 1408, },
		{ drop_type = 38, unlock_name = "", value_type = "skill_levelup", reference_value = 1409, },
		{ drop_type = 39, unlock_name = "arena", value_type = "rune", reference_value = 1410, },
		{ drop_type = 40, unlock_name = "refine", value_type = "horse_train", reference_value = 1411, },
		{ drop_type = 41, unlock_name = "refine", value_type = "horse_equip_refine", reference_value = 1412, },
		{ drop_type = 42, unlock_name = "wing", value_type = "wing_train", reference_value = 1413, },
		{ drop_type = 43, unlock_name = "tallent", value_type = "talent", reference_value = 1414, },
		{ drop_type = 44, unlock_name = "officer", value_type = "officer", reference_value = 1415, },
		{ drop_type = 45, unlock_name = "card", value_type = "card", reference_value = 1416, },
		{ drop_type = 46, unlock_name = "achievement", value_type = "title", reference_value = 1417, },
		--20160401新增
		{ drop_type = 68, unlock_name = "pet", value_type = "pet_level", reference_value = 4691, },
		{ drop_type = 69, unlock_name = "pet", value_type = "pet_score", reference_value = 4692, },
		{ drop_type = 70, unlock_name = "pet", value_type = "pet_star", reference_value = 4693, },
		{ drop_type = 71, unlock_name = "magic_train", value_type = "magic_train", reference_value = 4694, },
		{ drop_type = 72, unlock_name = "magic_refine", value_type = "magic_refine", reference_value = 4695, },
		{ drop_type = 73, unlock_name = "strategy", value_type = "strategy_level", reference_value = 4696, },
		{ drop_type = 74, unlock_name = "strategy", value_type = "strategy_starlevel", reference_value = 4697, },
		{ drop_type = 75, unlock_name = "engrave", value_type = "engrave", reference_value = 4698, },
		{ drop_type = 76, unlock_name = "wingsoul", value_type = "wingsoul", reference_value = 4699, },
		--20161209新增
		{ drop_type = 96, unlock_name = "fly", value_type = "wingfly", reference_value = 7192, },
		{ drop_type = 97, unlock_name = "getover", value_type = "Getover", reference_value = 7191, },
		{ drop_type = 80, unlock_name = "talent_break", value_type = "talent_levelup", reference_value = 7193, },
		{ drop_type = 99, unlock_name = "pet", value_type = "pet_equip", reference_value = 7194, },
		{ drop_type = 100, unlock_name = "officer", value_type = "officer_levelup", reference_value = 7195, },
	}
}

add_drop_page
{
	tab_name = "我要鑽石",
	drop_type_list =
	{
		{ drop_type = 47, detail_desc = "<%if GameUtil.IsEvaluation() then%>儲值可獲得鑽石<%else%>儲值可獲得鑽石，月卡還有豐厚優惠!<%end%>", },
		{ drop_type = 14, detail_desc = "每日活躍度寶箱可獲得鑽石", },
		{ drop_type = 49, detail_desc = "完成部分成就可獲得鑽石", },
		{ drop_type = 50, detail_desc = "使用黃巾寶藏·財帛並擊殺怪物可獲得", },
		{ drop_type = 62, detail_desc = "完成征戰之路系列任務可獲得鑽石", },
	}
}

add_drop_page
{
	tab_name = "我要神器",
	drop_type_list =
	{
		{ drop_type = 8, detail_desc = "皇陵寶庫掉落大量神器", },
		{ drop_type = 51, detail_desc = "使用黃巾寶藏·兵甲並擊殺怪物可獲得", },
		{ drop_type = 26, detail_desc = "迷宮探寶有概率掉落神器", },
		{ drop_type = 11, detail_desc = "擊殺叛軍精銳可拾取稀有神器", },
		{ drop_type = 12, detail_desc = "闖天關概率掉落神器", },
		{ drop_type = 20, detail_desc = "可在拍賣行購買他人出售的神器", },
	}
}

add_drop_page
{
	tab_name = "我要馬具",
	drop_type_list =
	{
		{ drop_type = 28, detail_desc = "完成除暴安良任務可獲得馬具", },
		{ drop_type = 52, detail_desc = "使用黃巾寶藏·馬鎧並擊殺怪物可獲得", },
		{ drop_type = 20, detail_desc = "可在拍賣行購買他人出售的馬具", },
	}
}

add_drop_page
{
	tab_name = "我要卡牌",
	drop_type_list =
	{
		{ drop_type = 10, detail_desc = "挑戰名將試煉可獲得卡牌", },
		{ drop_type = 21, detail_desc = "錢莊可抽取大量稀有卡牌", },
		{ drop_type = 25, detail_desc = "可使用虎符在卡店兌換卡牌", },
		{ drop_type = 3, detail_desc = "挑戰劇情副本掉落部分卡牌", },
	}
}

add_drop_group
{
	tab_name = "我要任務道具",
	tab_list =
	{
		{
			tab_name = "封魔帖",
			drop_type_list =
			{
				{ drop_type = 16, detail_desc = "完成商會跑環可獲得封魔帖", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市中兌換", },
				{ drop_type = 19, detail_desc = "商城中可購買封魔帖", },
				{ drop_type = 56, detail_desc = "大地圖擊殺同等級怪物概率獲得", },
				{ drop_type = 26, detail_desc = "迷宮探寶掛機概率獲得", },
				{ drop_type = 2, detail_desc = "低品質封魔帖可合成高品質封魔帖", },
				{ drop_type = 22, detail_desc = "福利-簽到可獲得封魔帖", },
				{ drop_type = 23, detail_desc = "福利-線上獎勵可獲得封魔帖", },
			}
		},

		{
			tab_name = "酒",
			drop_type_list =
			{
				{ drop_type = 16, detail_desc = "完成商會跑環可獲得酒", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市中兌換", },
				{ drop_type = 19, detail_desc = "商城中可購買酒", },
				{ drop_type = 56, detail_desc = "大地圖擊殺同等級怪物概率獲得", },
				{ drop_type = 26, detail_desc = "迷宮探寶掛機概率獲得", },
				{ drop_type = 2, detail_desc = "低品質酒可合成高品質酒", },
				{ drop_type = 22, detail_desc = "福利-簽到可獲得酒", },
				{ drop_type = 23, detail_desc = "福利-線上獎勵可獲得酒", },
			}
		},

		{
			tab_name = "押鏢令",
			drop_type_list =
			{
				{ drop_type = 16, detail_desc = "完成商會跑環可獲得押鏢令", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市中兌換", },
				{ drop_type = 19, detail_desc = "商城中可購買押鏢令", },
				{ drop_type = 56, detail_desc = "大地圖擊殺同等級怪物概率獲得", },
				{ drop_type = 26, detail_desc = "迷宮探寶掛機概率獲得", },
				{ drop_type = 2, detail_desc = "低品質押鏢令可合成高品質押鏢令", },
				{ drop_type = 22, detail_desc = "福利-簽到可獲得押鏢令", },
				{ drop_type = 23, detail_desc = "福利-線上獎勵可獲得押鏢令", },
			}
		},

		{
			tab_name = "黃巾寶藏",
			drop_type_list =
			{
				{ drop_type = 15, detail_desc = "完成國家活動可獲得黃巾寶藏系列道具", },
				
			}
		},
	}
}

add_drop_group
{
	tab_name = "我要材料",
	tab_list =
	{
		{
			tab_name = "皮料原石",
			drop_type_list =
			{
				{ drop_type = 7, detail_desc = "組隊挑戰皇陵密室可獲得皮料和原石", },
				{ drop_type = 56, detail_desc = "大地圖擊殺同等級怪物概率獲得", },
				{ drop_type = 2, detail_desc = "低等級皮料原石可合成高等級皮料原石", },
				{ drop_type = 54, detail_desc = "使用黃巾寶藏·輜重並完成任務可獲得", },
			}
		},

		{
			tab_name = "煉星",
			drop_type_list =
			{
				{ drop_type = 6, detail_desc = "組隊挑戰皇陵偏殿可獲得煉星石", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市兌換", },
				--{ drop_type = 21, detail_desc = "钱庄中有概率抽取获得炼星石", },
				{ drop_type = 53, detail_desc = "使用黃巾寶藏·玉石並完成任務", },
				{ drop_type = 18, detail_desc = "種植種子可收穫煉星石", },
				{ drop_type = 2, detail_desc = "低等級煉星石可合成高等級煉星石", },
				{ drop_type = 19, detail_desc = "可在商城中購買煉星石和保底符", },
			}
		},

		{
			tab_name = "洗煉",
			drop_type_list =
			{
				{ drop_type = 6, detail_desc = "組隊挑戰皇陵偏殿可獲得洗煉石", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市兌換洗煉石", },
				--{ drop_type = 21, detail_desc = "钱庄中有概率抽取获得洗炼石", },
				{ drop_type = 53, detail_desc = "使用黃巾寶藏·玉石並完成任務可獲得", },
				{ drop_type = 18, detail_desc = "種植種子可收穫洗煉石", },
				{ drop_type = 15, detail_desc = "完成國家活動可獲得洗煉石", },
				{ drop_type = 19, detail_desc = "可在商城中購買洗煉石和鎖定符", },
				{ drop_type = 22, detail_desc = "簽到可獲得洗煉石", },
			}
		},
		
		{
			tab_name = "寶石",
			drop_type_list =
			{
				{ drop_type = 24, detail_desc = "可在幫會商店使用幫貢兌換寶石", },
				{ drop_type = 48, detail_desc = "參與國戰可獲得寶石獎勵", },
				{ drop_type = 22, detail_desc = "簽到可獲得寶石", },
				{ drop_type = 13, detail_desc = "可使用靈羽在闖天關易市兌換寶石", },
				{ drop_type = 19, detail_desc = "可在商城中購買寶石", },
			}
		},

		{
			tab_name = "靈羽",
			drop_type_list =
			{
				{ drop_type = 12, detail_desc = "挑戰闖天關可獲得大量靈羽", },
			}
		},

		{
			tab_name = "馬草",
			drop_type_list =
			{
				{ drop_type = 28, detail_desc = "完成除暴安良任務可獲得馬草", },
			}
		},

		{
			tab_name = "韜略",
			drop_type_list =
			{
				{ drop_type = 27, detail_desc = "參與神樹活動可獲得大量韜略", },
			}
		},

		{
			tab_name = "絕招",
			drop_type_list =
			{
				{ drop_type = 9, detail_desc = "可使用榮譽在擂臺商店兌換絕招", },
			}
		},
--20160401新加
		{
			tab_name = "寵物口糧",
			drop_type_list =
			{
				{ drop_type = 67, detail_desc = "完成仙獸獵苑可獲得寵物口糧", },
			}
		},

		{
			tab_name = "洗髓丹",
			drop_type_list =
			{
				{ drop_type = 67, detail_desc = "完成仙獸獵苑可獲得洗髓丹", },
			}
		},

		{
			tab_name = "煉妖丹",
			drop_type_list =
			{
				{ drop_type = 67, detail_desc = "完成仙獸獵苑可獲得煉妖丹", },
			}
		},

		{
			tab_name = "夜明珠",
			drop_type_list =
			{
				{ drop_type = 77, detail_desc = "挑戰子午谷副本可獲得夜明珠", },
				{ drop_type = 19, detail_desc = "可在商城中購買夜明珠", },
			}
		},

		{
			tab_name = "精華碎片",
			drop_type_list =
			{
				{ drop_type = 77, detail_desc = "挑戰子午谷副本可獲得精華碎片", },
			}
		},

		{
			tab_name = "兵法殘片",
			drop_type_list =
			{
				{ drop_type = 63, detail_desc = "挑戰鎖妖塔副本可獲得兵法殘片", },
			}
		},

		{
			tab_name = "上古兵策",
			drop_type_list =
			{
				{ drop_type = 63, detail_desc = "挑戰鎖妖塔副本可獲得上古兵策", },
				{ drop_type = 19, detail_desc = "可在商城中購買上古兵策", },
			}
		},

		{
			tab_name = "銘文",
			drop_type_list =
			{
				{ drop_type = 78, detail_desc = "挑戰龍爭虎鬥可獲得銘文", },
				{ drop_type = 19, detail_desc = "可在商城中購買銘文", },
			}
		},

		{
			tab_name = "魂魄",
			drop_type_list =
			{
				{ drop_type = 79, detail_desc = "參與亂世秘寶玩法可獲得魂魄", },
			}
		},
--20161212新加
		{
			tab_name = "光羽",
			drop_type_list =
			{
				{ drop_type = 12, detail_desc = "挑戰闖天關可獲得光羽", },
			}
		},

		{
			tab_name = "秘隕",
			drop_type_list =
			{
				{ drop_type = 67, detail_desc = "完成仙獸獵苑可獲得秘隕", },
			}
		},

		{
			tab_name = "寶玉",
			drop_type_list =
			{
				{ drop_type = 67, detail_desc = "完成仙獸獵苑可獲得寶玉", },
			}
		},

        {
			tab_name = "天賦精華",
			drop_type_list =
			{
				{ drop_type = 98, detail_desc = "挑戰個人試煉可獲得天賦精華", },
			}
		},

		{
			tab_name = "喚醒寶珠",
			drop_type_list =
			{
				{ drop_type = 107, detail_desc = "完成平定馬賊可獲得喚醒寶珠", },
			}
		},

		{
			tab_name = "造化石",
			drop_type_list =
			{
				{ drop_type = 77, detail_desc = "挑戰子午谷副本可獲得造化石", },
				{ drop_type = 19, detail_desc = "可在商城中購買造化石", },
			}
		},

		{
			tab_name = "回元丹",
			drop_type_list =
			{
				{ drop_type = 98, detail_desc = "個人試煉每週領取", },
				{ drop_type = 19, detail_desc = "商城中可購買回元丹", },
			}
		},

		{
			tab_name = "委託令",
			drop_type_list =
			{
				{ drop_type = 23, detail_desc = "福利-線上獎勵可獲得委託令", },
				{ drop_type = 15, detail_desc = "完成國家活動概率可獲得委託令", },
				{ drop_type = 19, detail_desc = "商城中可購買委託令", },
			}
		},

		{
			tab_name = "百合花",
			drop_type_list =
			{
				{ drop_type = 15, detail_desc = "完成國家活動概率可獲得百合花", },
			}
		},


		{
			tab_name = "愛心蛋糕",
			drop_type_list =
			{
				{ drop_type = 15, detail_desc = "完成國家活動概率可獲得愛心蛋糕", },
			}
		},


	}
}

add_drop_group
{
	tab_name = "其他",
	tab_list =
	{
		{
			tab_name = "體力",
			drop_type_list =
			{
				{ drop_type = 18, detail_desc = "種植種子可收穫體力", },
			}
		},

		{
			tab_name = "功勛",
			drop_type_list =
			{
				{ drop_type = 48, detail_desc = "參與國戰可獲得大量功勛", },
				{ drop_type = 15, detail_desc = "每日完成國家活動可獲得大量功勛", },
				{ drop_type = 57, detail_desc = "擊敗敵國玩家可獲得功勳", },
				{ drop_type = 61, detail_desc = "每日國家捐獻可獲得功勛", },
			}
		},

		{
			tab_name = "幫貢",
			drop_type_list =
			{
				{ drop_type = 58, detail_desc = "完成幫會跑環任務可獲得幫貢", },
				{ drop_type = 59, detail_desc = "每日21:00，參與幫會果樹活動可獲得", },
				{ drop_type = 60, detail_desc = "每日幫會捐獻可獲得幫貢", },
			}
		},
		{
			tab_name = "漢帝密令",
			drop_type_list =
			{
				{ drop_type = 78, detail_desc = "參與完成龍爭虎鬥可獲得大量漢帝密令", },
			}
		},
		{
			tab_name = "天下號令",
			drop_type_list =
			{
				{ drop_type = 101, detail_desc = "參加跨服三國志可獲得海量天下號令", },
				{ drop_type = 102, detail_desc = "擊殺洪荒凶獸可獲得天下號令", },
				{ drop_type = 103, detail_desc = "完成跨服任務可獲得天下號令", },
			}
		},
		{
			tab_name = "武勳",
			drop_type_list =
			{
				{ drop_type = 104, detail_desc = "參與完成跨服演武可獲得大量的武勳", },
			}
		},
		{
			tab_name = "孝廉",
			drop_type_list =
			{
				{ drop_type = 105, detail_desc = "參與完成六龍百科可獲得孝廉", },
				{ drop_type = 106, detail_desc = "參與每週末的推舉孝廉可獲得大量孝廉", },
			}
		},
	}
}

set_reference_fightvalue(1418)

--------------------------------------------------------------
-- 数据结束

return charup_config
