--[[
	配置即将开启功能
	
	用 ComingSoon:addConfig 按顺序添加功能
	
	例：
	ComingSoon:addConfig
	{
		name = "功能名",	--显示的功能名
		type = "equip",		--可为 "equip" (装备) 或 "function" (功能解锁)
		activate_condition =			--激活所需条件
		{
			level_above = 10,	--激活所需等级，0 为不需此条件
			task_is_finished = 132,		--激活所需完成的任务，0 为不需此条件
			task_is_finished_bak = 338,	--(可选) 激活所需完成的备份任务，与 task_is_finished 组合完成其中一个即可，0 或不填表示无此条件
		},
		
		finish_condition =			--完成所需条件，内容格式同 activate_condition
		{
			level_above = 15,
			task_is_finished = 133,
		},
		
		award_task = 201,			--领取奖励发放的任务。当 type 为 "function" (功能解锁) 时应填 0，表示不需领取
			--奖励任务填法：
			--	任务属性：隐藏任务，手动触发，成功时不可重复完成
			--	开启条件：与 finish_condition 一致
			--	完成条件：手动确认完成，等待特定时间0秒，有时间限制10秒
			--	任务奖励：奖励一件物品(可以分职业发不同物品)
		
		equip_entry_icon = "<%= ({101, 102, 103, 104})[host.profession] %>",		--如果需要指定小界面上的图标，需填此项；否则不填
			-- 内容为文件路径或文件路径id字符串 (支持动态文本)
			
		function_desc =				--功能描述，仅当 type 为 "function" (功能解锁) 时需要填
		{
			icon = {atlas = ..., sprite = ..., path_id = ...},		--显示图标
							-- 如果图标在 Allas中，atlas: 图标的Atlas文件路径，sprite: 图标的sprite名
							-- 如果图标是单独文件，path_id: 文件路径id
							-- 如果路标是技能路标，skill_index: 技能位置(参见 skill_unlock.lua)
		},
	}
]]

local ComingSoon = {}

local l_configs = {}
function ComingSoon:getAllConfigs ()
	return l_configs
end

function ComingSoon:addConfig(config)
	l_configs[#l_configs+1] = config
end

--[[

ComingSoon:addConfig	--test1
{
	title = "notitle",
	type = "function",
	activate_condition =
	{
		level_above = 5,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 7,
		task_is_finished = 365,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "测试功能解锁",
		icon = {atlas = "Arts/Res/UI/Atlas/skill/SkillAtlas.prefab.u3dext", sprite = "DrugBtn"},
		-- icon = {skill_index = 1},
		desc = "测试功能解锁描述文字",
	},
}

ComingSoon:addConfig	--test2
{
	title = "notitle",
	type = "equip",
	activate_condition =
	{
		level_above = 10,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 12,
		task_is_finished = 0,
	},
	
	equip_entry_icon = "<%= ({501, 539, 539, 539})[host.profession] %>",
	award_task = 339,
}

]]

ComingSoon:addConfig	--防具
{
	title = "絕世寶物",
	type = "equip",
	activate_condition =
	{
		level_above = 1,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 10,
		task_is_finished = 515,
	},
	
	-- equip_entry_icon = "<%= ({561})[host.profession] %>",
	equip_entry_icon = "561",

	award_task = 453,
}

ComingSoon:addConfig	--武器
{
	title = "絕世寶物",
	type = "equip",
	activate_condition =
	{
		level_above = 10,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above =15,
		task_is_finished = 517,
	},
	
	-- equip_entry_icon = "<%= ({101, 102, 103, 104})[host.profession] %>",	--ID顺序：刀，枪，杖，弓
	equip_entry_icon = "569",
	
	award_task = 452,
}

ComingSoon:addConfig	--XP技能
{
	title = "終極技能",
	type = "function",
	activate_condition =
	{
		level_above = 15,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 16,
		task_is_finished = 572,
		task_is_finished_bak = 499,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "無雙絕技",
		icon = { skill_index = 5 },
		desc = "    職業終極技能，擁有超大範圍的群攻秒怪效果",
	},
}

ComingSoon:addConfig	--坐骑
{
	title = "汗血寶馬",
	type = "function",
	activate_condition =
	{
		level_above = 16,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 20,
		task_is_finished = 504,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "汗血寶馬",
		icon = {path_id = 573},
		desc = "    提升移動速度的同時，還能增加主角屬性，等級越高增加越多",
	},
}

ComingSoon:addConfig	--内装本
{
	title = "挑戰新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 20,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	award_task = 788,
	
	function_desc =
	{
		name = "皇陵密室",
		icon = {path_id = 773},
		desc = "    升階裝備用的材料，都在副本裡掉",
	},
}

ComingSoon:addConfig	--材料本
{
	title = "挑戰新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 25,
		task_is_finished = 98,
	},
	
	award_task = 718,
	
	function_desc =
	{
		name = "皇陵偏殿",
		icon = {path_id = 773},
		desc = "    煉星石、洗煉石、都可以在皇陵偏殿打到",
	},
}

ComingSoon:addConfig	--抽奖
{
	title = "新功能開啟",
	type = "function",
	activate_condition =
	{
		level_above = 25,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 26,
		task_is_finished = 431,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "錢莊",
		icon = {path_id = 775},
		desc = "    神秘的禮包裡究竟藏著什麼？等你來發現",
	},
}

ComingSoon:addConfig	--竞技场
{
	title = "PK新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 26,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	award_task = 731,
	
	function_desc =
	{
		name = "擂臺",
		icon = {path_id = 773},
		desc = "    不必多說了，一直戰鬥下去吧",
	},
}

-- ComingSoon:addConfig	--国战
-- {
-- 	title = "统一天下",
-- 	type = "function",
-- 	activate_condition =
-- 	{
-- 		level_above = 26,
-- 		task_is_finished = 0,
-- 	},
	
-- 	finish_condition =
-- 	{
-- 		level_above = 30,
-- 		task_is_finished = 0,
-- 	},
	
-- 	award_task = 731,
	
-- 	function_desc =
-- 	{
-- 		name = "万人国战",
-- 		icon = {path_id = 938},
-- 		desc = "    热血战斗，万人国战从这一刻开始！你的血性还在吗？",
-- 	},
-- }

ComingSoon:addConfig	--世界BOSS
{
	title = "野外BOSS",
	type = "function",
	activate_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 31,
		task_is_finished = 0,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "叛軍精銳",
		icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "build04_a"},
		desc = "    隱藏在世界各處的精英怪物，夠膽就去試試吧！",
	},
}

-- ComingSoon:addConfig	--卡牌黑市
-- {
-- 	title = "卡牌新玩法",
-- 	type = "function",
-- 	activate_condition =
-- 	{
-- 		level_above = 31,
-- 		task_is_finished = 0,
-- 	},
	
-- 	finish_condition =
-- 	{
-- 		level_above = 32,
-- 		task_is_finished = 0,
-- 	},
	
-- 	award_task = 0,
	
-- 	function_desc =
-- 	{
-- 		name = "卡牌黑市",
-- 		icon = {path_id = 775},
-- 		desc = "    除了名将试炼副本，卡牌黑市里也能得到卡牌",
-- 	},
-- }

ComingSoon:addConfig	--翅膀   闯天关（一起开）
{
	title = "翅膀系統",
	type = "function",
	activate_condition =
	{
		level_above = 31
		,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	award_task = 657,
	
	function_desc =
	{
		name = "絕世之翼",
		icon = {path_id = 917},
		desc = "        幻翼一出，誰與爭鋒",
	},
}

ComingSoon:addConfig	--精英扫荡
{
	title = "精英新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	award_task = 465,
	
	function_desc =
	{
		name = "精英掃蕩",
		icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "build04_a"},
		desc = "    累計擊殺精英怪獎勵永久屬性！",
	},
}

ComingSoon:addConfig	--精炼
{
	title = "坐騎培養",
	type = "function",
	activate_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 45,
		task_is_finished = 0,
	},
	
	award_task = 678,
	
	function_desc =
	{
		name = "馬具精煉",
		icon = {path_id = 971},
		desc = "    別忘了給你的坐騎也弄一套極品裝備喲",
	},
}

ComingSoon:addConfig	--龙争虎斗
{
	title = "即時競技",
	type = "function",
	activate_condition =
	{
		level_above = 45,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 47,
		task_is_finished = 0,
	},
	
	award_task = 1652,
	
	function_desc =
	{
		name = "龍爭虎鬥",
		icon = {path_id = 2548},
		desc = "    多種模式匹配，挑戰真實玩家",
	},
}

ComingSoon:addConfig	--天赋
{
	title = "神秘經脈",
	type = "function",
	activate_condition =
	{
		level_above = 47,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 50,
		task_is_finished = 0,
	},
	
	award_task = 677,
	
	function_desc =
	{
		name = "天賦",
		icon = {path_id = 572},
		desc = "    天賦是需要後天培養的，點亮天賦，獲得更多屬性",
	},
}

ComingSoon:addConfig	--拼酒
{
	title = "酒藝",
	type = "function",
	activate_condition =
	{
		level_above = 50,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 51,
		task_is_finished = 0,
	},
	
	award_task = 667,
	
	function_desc =
	{
		name = "英雄來拼酒",
		icon = {path_id = 2235},
		desc = "    哥倆好呀！六六六啊！喝！",
	},
}

ComingSoon:addConfig	--单人战场
{
	title = "單人戰場",
	type = "function",
	activate_condition =
	{
		level_above = 51,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 52,
		task_is_finished = 0,
	},
	
	award_task = 1211,
	
	function_desc =
	{
		name = "勝者為王",
		icon = {path_id = 773},
		desc = "    百家爭鳴，勝者只有一個",
	},
}

ComingSoon:addConfig	--翅膀飞升
{
	title = "幻化培養",
	type = "function",
	activate_condition =
	{
		level_above = 52,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 55,
		task_is_finished = 0,
	},
	
	award_task = 2638,
	
	function_desc =
	{
		name = "幻化飛升",
		icon = {path_id = 4403},
		desc = "    幻化飛升，準備迎接天命的召喚",
	},
}

ComingSoon:addConfig	--摇一摇
{
	title = "緣定今生",
	type = "function",
	activate_condition =
	{
		level_above = 52,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 56,
		task_is_finished = 0,
	},
	
	award_task = 1212,
	
	function_desc =
	{
		name = "搖一搖",
		icon = {path_id = 562},
		desc = "    有緣人你在哪里？過來嗨",
	},
}

ComingSoon:addConfig	--锁妖塔	三十六计
{
	title = "兵法",
	type = "function",
	activate_condition =
	{
		level_above = 56,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 58,
		task_is_finished = 0,
	},
	
	award_task = 466,
	
	function_desc =
	{
		name = "三十六計",
		icon = {path_id = 773},
		desc = "    兵者，國之大事，死生之地，存亡之道，不可不察也",
	},
}

ComingSoon:addConfig	--法器
{
	title = "神秘聖物",
	type = "function",
	activate_condition =
	{
		level_above = 58,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 59,
		task_is_finished = 0,
	},
	
	award_task = 669,
	
	function_desc =
	{
		name = "法器",
		icon = {path_id = 2543},
		desc = "    擁有強大能力的神聖寶物，只有英雄才可擁有",
	},
}

ComingSoon:addConfig	--坐骑唤醒
{
	title = "坐騎喚醒",
	type = "function",
	activate_condition =
	{
		level_above = 59,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 61,
		task_is_finished = 0,
	},
	
	award_task = 2234,
	
	function_desc =
	{
		name = "坐騎",
		icon = {path_id = 573},
		desc = "    喚醒非出戰坐騎，百分比提升屬性",
	},
}

ComingSoon:addConfig	--将魂
{
	title = "將魂",
	type = "function",
	activate_condition =
	{
		level_above = 61,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 62,
		task_is_finished = 0,
	},
	
	award_task = 2832,
	
	function_desc =
	{
		name = "將魂",
		icon = {path_id = 4644},
		desc = "    絕世將魂降臨，非大氣魄者不可得之",
	},
}
ComingSoon:addConfig	--器灵
{
	title = "器靈",
	type = "function",
	activate_condition =
	{
		level_above = 62,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 70,
		task_is_finished = 0,
	},
	
	award_task = 2980,
	
	function_desc =
	{
		name = "器靈",
		icon = {path_id = 5358},
		desc = "    絕世器靈降臨，非大氣魄者不可得之",
	},
}





--[[


ComingSoon:addConfig	--名将试炼
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 20,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	award_task = 667,
	
	function_desc =
	{
		name = "名将试炼",
		icon = {path_id = 773},
		desc = "    与三国名将切磋，拿经验，得卡牌",
	},
}

ComingSoon:addConfig	--帮会
{
	title = "帮会系统",
	type = "function",
	activate_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 25,
		task_is_finished = 0,
	},
	
	award_task = 668,
	
	function_desc =
	{
		name = "帮会",
		icon = {path_id = 563},
		desc = "          无兄弟，不游戏",
	},
}

ComingSoon:addConfig	--神器炼星
{
	title = "神器培养",
	type = "function",
	activate_condition =
	{
		level_above = 25,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 26,
		task_is_finished = 0,
	},
	
	award_task = 671,
	
	function_desc =
	{
		name = "炼星",
		icon = {path_id = 972},
		desc = "    武器，盔甲的主要培养方式，属性加的就是任性",
	},
}

ComingSoon:addConfig	--悬赏
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 26,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 28,
		task_is_finished = 0,
	},
	
	award_task = 669,
	
	function_desc =
	{
		name = "悬赏",
		icon = {path_id = 773},
		desc = "    各式各样的新奇玩法，五花八门的随机任务，全都在悬赏玩法里",
	},
}

ComingSoon:addConfig	--神器洗炼
{
	title = "神器培养",
	type = "function",
	activate_condition =
	{
		level_above = 28,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 29,
		task_is_finished = 0,
	},
	
	award_task = 672,
	
	function_desc =
	{
		name = "洗炼",
		icon = {path_id = 972},
		desc = "    孔子说过：好装备都是洗出来的",
	},
}

ComingSoon:addConfig	--国战
{
	title = "统一天下",
	type = "function",
	activate_condition =
	{
		level_above = 29,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	award_task = 0,
	
	function_desc =
	{
		name = "万人国战",
		icon = {path_id = 938},	--574,--764
		desc = "    热血战斗，万人国战从这一刻开始！你的血性还在吗？",
	},
}

ComingSoon:addConfig	--神器转移
{
	title = "神器培养",
	type = "function",
	activate_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 32,
		task_is_finished = 0,
	},
	
	award_task = 675,
	
	function_desc =
	{
		name = "转移",
		icon = {path_id = 972},
		desc = "    不必担心神器过时，属性是可以转移的",
	},
}

ComingSoon:addConfig	--竞技场
{
	title = "PK新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 32,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	award_task = 676,
	
	function_desc =
	{
		name = "擂台",
		icon = {path_id = 773},
		desc = "    不必多说了，一直战斗下去吧",
	},
}

-- ComingSoon:addConfig	--喝酒
-- {
-- 	title = "休闲小玩法",
-- 	type = "function",
-- 	activate_condition =
-- 	{
-- 		level_above = 32,
-- 		task_is_finished = 0,
-- 	},
	
-- 	finish_condition =
-- 	{
-- 		level_above = 35,
-- 		task_is_finished = 0,
-- 	},
	
-- 	award_task = 673,
	
-- 	function_desc =
-- 	{
-- 		name = "对酒当歌",
-- 		icon = {path_id = 979},	--574,--764
-- 		-- icon = {atlas = "Arts/Res/UI/Atlas/Activity/Activity.prefab.u3dext", sprite = "drink02"},
-- 		desc = "    对酒当歌，人生几何，喝酒就加经验，曹操当年可不知道",
-- 	},
-- }

-- ComingSoon:addConfig	--翅膀
-- {
-- 	title = "翅膀系统",
-- 	type = "function",
-- 	activate_condition =
-- 	{
-- 		level_above = 35,
-- 		task_is_finished = 0,
-- 	},
	
-- 	finish_condition =
-- 	{
-- 		level_above = 40,
-- 		task_is_finished = 0,
-- 	},
	
-- 	award_task = 674,
	
-- 	function_desc =
-- 	{
-- 		name = "绝世之翼",
-- 		icon = {path_id = 917},
-- 		desc = "        幻翼一出，谁与争锋",
-- 	},
-- }

ComingSoon:addConfig	--升阶
{
	title = "坐骑培养",
	type = "function",
	activate_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	award_task = 678,
	
	function_desc =
	{
		name = "升阶",
		icon = {path_id = 971},
		desc = "    不要忽略了坐骑的感受哟",
	},
}

ComingSoon:addConfig	--天赋
{
	title = "神秘经脉",
	type = "function",
	activate_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 50,
		task_is_finished = 0,
	},
	
	award_task = 677,
	
	function_desc =
	{
		name = "天赋",
		icon = {path_id = 572},
		desc = "    天赋是需要后天培养的，点亮天赋，获得更多属性",
	},
}


]]

return ComingSoon

----------------------------------------------------------------------------------------------------

--新流程备用配置

--[[

ComingSoon:addConfig	--名将试炼
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 20,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	award_task = 667,
	
	function_desc =
	{
		name = "名将试炼",
		icon = {path_id = 773},
		desc = "    与三国名将切磋，拿经验，得卡牌",
	},
}

ComingSoon:addConfig	--内装本
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 24,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 25,
		task_is_finished = 0,
	},
	
	award_task = ？？？,
	
	function_desc =
	{
		name = "内装本名称",
		icon = {path_id = 773},
		desc = "    想要升阶装备,就来这里吧",
	},
}

ComingSoon:addConfig	--外装本
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 25,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	award_task = ？？？,
	
	function_desc =
	{
		name = "外装本名称",
		icon = {path_id = 773},
		desc = "    想要强化神器,就来这里吧",
	},
}

ComingSoon:addConfig	--经验本
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 30,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 33,
		task_is_finished = 0,
	},
	
	award_task = ？？？,
	
	function_desc =
	{
		name = "经验本名称",
		icon = {path_id = 773},
		desc = "    想要获得大量经验,就来这里吧",
	},
}

ComingSoon:addConfig	--跑环任务
{
	title = "挑战新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 33,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	award_task = ？？？,
	
	function_desc =
	{
		name = "跑环任务",
		icon = {path_id = 773},
		desc = "    主要产出XXXXXX",
	},
}

ComingSoon:addConfig	--竞技场
{
	title = "PK新玩法",
	type = "function",
	activate_condition =
	{
		level_above = 35,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	award_task = 676,
	
	function_desc =
	{
		name = "擂台",
		icon = {path_id = 773},
		desc = "    不必多说了，一直战斗下去吧",
	},
}

ComingSoon:addConfig	--升阶
{
	title = "坐骑培养",
	type = "function",
	activate_condition =
	{
		level_above = 40,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 45,
		task_is_finished = 0,
	},
	
	award_task = 678,
	
	function_desc =
	{
		name = "升阶",
		icon = {path_id = 971},
		desc = "    不要忽略了坐骑的感受哟",
	},
}

ComingSoon:addConfig	--翅膀
{
	title = "翅膀系统",
	type = "function",
	activate_condition =
	{
		level_above = 45,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 48,
		task_is_finished = 0,
	},
	
	award_task = 674,
	
	function_desc =
	{
		name = "绝世之翼",
		icon = {path_id = 917},
		desc = "        幻翼一出，谁与争锋",
	},
}

ComingSoon:addConfig	--天赋
{
	title = "神秘经脉",
	type = "function",
	activate_condition =
	{
		level_above = 48,
		task_is_finished = 0,
	},
	
	finish_condition =
	{
		level_above = 50,
		task_is_finished = 0,
	},
	
	award_task = 677,
	
	function_desc =
	{
		name = "天赋",
		icon = {path_id = 572},
		desc = "    天赋是需要后天培养的，点亮天赋，获得更多属性",
	},
}

]]