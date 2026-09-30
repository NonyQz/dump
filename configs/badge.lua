--[[
	配置功能可用提示(即小圆点)
]]

local badge = {}

local l_configs = {}
function badge:getAllConfigs ()
	return l_configs
end

--[[
	config:
	{
		pos = {panelName, itemName, ...},		--小圆点的位置，panelName: panel名，itemName: 控件名(可有多重)
			-- UILabel 可选的 UILabel，有 UILabel 时将设置可用数量(如新邮件数量)
			-- 可写 pos = "none" 表示无小圆点
			-- 例：pos = {}
	}
]]

--[[
	增加一个具体功能
	param function_name: 功能名
	param parent_name: 所属功能组名，无所属功能组时，应传 "none"
]]
function badge:addFunction(function_name, parent_name)
	return function (config)
		config.bCatalog = false
		config.parent = parent_name
		l_configs[function_name] = config
	end
end

--[[
	增加一个功能组
	param catalog_name: 功能组名
	param parent_name: 父功能组名，无父功能组时，应传 "none"
]]
function badge:addCatalog(catalog_name, parent_name)
	return function (config)
		config.bCatalog = true
		config.parent = parent_name
		l_configs[catalog_name] = config
	end
end

-------------------------------------------------------------------
-- 配置开始


badge:addCatalog("main_menu", "none")	--主菜单
{
	pos = {"panel_menubtn", "Toggle_Menu", "badge"},
}

badge:addCatalog("communication", "main_menu")	--好友详细信息
{
	pos = {"panel_menu", "Btn_Friend", "badge"},
}

badge:addCatalog("communication_friend", "communication")	--好友/好友标签
{
	pos = {"panel_communication", "Gound_Rtn", "Rtn01", "badge"},
}

badge:addFunction("communication_friend_wish", "communication_friend")	--好友/好友标签/好友祝福标签
{
	pos = {"panel_communication", "SubPanel_Friend", "Gound_FriendRtn", "FriendRtn04", "badge"},
}

badge:addFunction("skill_main", "main_menu")	--技能详细信息
{
	pos = {"panel_menu", "Btn_Skill", "badge"},
}

badge:addCatalog("tallent", "main_menu")	--天赋详细信息
{
	pos = {"panel_menu", "Btn_Talent", "badge"},
}
badge:addFunction("tallent_upgrade", "tallent")	--天赋领悟详细信息
{
	pos = {"panel_tallent", "SubPanel_Rdobtn", "RdoBtn01", "badge"},
}
badge:addFunction("tallent_break", "tallent")	--天赋领悟详细信息
{
	pos = {"panel_tallent", "SubPanel_Rdobtn", "RdoBtn02", "badge"},
}

badge:addCatalog("officer", "main_menu")	--官印详细信息
{
	pos = {"panel_menu", "Btn_Officer", "badge"},
}
badge:addFunction("officer1", "officer")	--爵位详细信息
{
	pos = {"panel_officer", "SubPanel_Rdobtn", "RdoBtn01", "badge"},
}
badge:addFunction("officer2", "officer")	--徽章详细信息
{
	pos = {"panel_officer", "SubPanel_Rdobtn", "RdoBtn02", "badge"},
}
badge:addCatalog("card", "main_menu")	--卡牌详细信息
{
	pos = {"panel_menu", "Btn_Card", "badge"},
}
badge:addCatalog("card_collect", "card")	--卡牌/收集按钮
{
	pos = {"panel_card", "Group_Rtn", "Rtn01", "badge"},
}
badge:addCatalog("card_shop", "card")	--卡牌/黑市按钮
{
	pos = {"panel_card", "Group_Rtn", "Rtn03", "badge"},
}
badge:addCatalog("god_card_collect", "card")	--卡牌/神将卡收集按钮
{
	pos = {"panel_card", "Group_Rtn", "Rtn04", "badge"},
}

do 
	for i=1,20 do
		badge:addFunction("card_main_" .. i, "card_collect")	--卡牌/收集
		{
			float = true,
			pos = {"panel_card", "SubPanel_Main","List_MainList","MainList01_"..i,"badge_"..i},
		}
	end
end

do 
	for i=1,22 do
		badge:addFunction("god_card_main_" .. i, "god_card_collect")	--卡牌/神将卡收集
		{
			float = true,
			pos = {"panel_card", "SubPanel_Main2","List_MainList","MainList01_"..i,"badge_"..i},
		}
	end
end

badge:addCatalog("achievement_title", "main_menu")	--成就/称号
{
	pos = {"panel_menu", "Btn_Achievement", "badge"},
}

badge:addCatalog("achievement", "achievement_title")	--成就详细信息
{
	pos = {"panel_achievement", "Gound_Rtn", "Rtn01","badge"},
}

badge:addFunction("achievement_tab_1", "achievement")	--成就/初露锋芒
{
	pos = {"panel_achievement", "SubPanel_Achievement","ScrollView_Pandect","SubAchievement_Rtn01","badge"},
}
badge:addFunction("achievement_tab_2", "achievement")	--成就/声名鹊起
{
	pos = {"panel_achievement", "SubPanel_Achievement","ScrollView_Pandect","SubAchievement_Rtn02","badge"},
}
badge:addFunction("achievement_tab_3", "achievement")	--成就/征战四方
{
	pos = {"panel_achievement", "SubPanel_Achievement","ScrollView_Pandect","SubAchievement_Rtn03","badge"},
}
badge:addFunction("achievement_tab_4", "achievement")	--成就/逐鹿中原
{
	pos = {"panel_achievement", "SubPanel_Achievement","ScrollView_Pandect","SubAchievement_Rtn04","badge"},
}
badge:addFunction("achievement_tab_5", "achievement")	--成就/问鼎九州
{
	pos = {"panel_achievement", "SubPanel_Achievement","ScrollView_Pandect","SubAchievement_Rtn05","badge"},
}


badge:addCatalog("title", "achievement_title")	--称号详细信息
{
	pos = {"panel_achievement", "Gound_Rtn", "Rtn02","badge"},
}
badge:addFunction("title_tab_2", "title")	--称号/平步青云
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn02","badge"},
}
badge:addFunction("title_tab_3", "title")	--称号/行走天涯
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn03","badge"},
}
badge:addFunction("title_tab_4", "title")	--称号/百战成钢
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn04","badge"},
}
badge:addFunction("title_tab_5", "title")	--称号/侠肝义胆
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn05","badge"},
}
badge:addFunction("title_tab_6", "title")	--称号/社会关系(隐藏)
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn06","badge"},
}
badge:addFunction("title_tab_7", "title")	--称号/修身养性
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn07","badge"},
}
badge:addFunction("title_tab_8", "title")	--称号/奋武扬威
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn08","badge"},
}
badge:addFunction("title_tab_9", "title")	--称号/独步天下
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn09","badge"},
}
badge:addFunction("title_tab_10", "title")	--称号/拜将封侯
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn10","badge"},
}
badge:addFunction("title_tab_11", "title")	--称号/人在江湖
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn11","badge"},
}
badge:addFunction("title_tab_12", "title")	--称号/异域殊方
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn12","badge"},
}
badge:addFunction("title_tab_13", "title")	--称号/龙战玄黄
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn13","badge"},
}
badge:addFunction("title_tab_14", "title")	--称号/跨服称号(隐藏)
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn14","badge"},
}
badge:addFunction("title_tab_15", "title")	--图片称号(图王霸业)
{
	pos = {"panel_achievement", "SubPanel_Title","ScrollView_Pandect","SubTitle_Rtn15","badge"},
}











badge:addFunction("package", "main_menu")	--背包
{
	pos = {"panel_menu", "Btn_Inventory","badge"},
}

badge:addCatalog("faction", "main_menu")	--帮会详细信息
{
	pos = {"panel_menu", "Btn_Faction", "badge"},
}

badge:addCatalog("faction_main", "faction")	--帮会标签页
{
	pos = {"panel_faction", "Group_Rtn", "Rtn01", "badge"},
}

badge:addFunction("faction_donate", "faction_main")	--帮会/捐献按钮
{
	pos = {"panel_faction", "SubPanel_FactionMain", "BtnList","Btn_Donate", "badge"},
}

badge:addFunction("faction_apply", "faction_main")	--帮会/申请列表
{
	pos = {"panel_faction", "SubPanel_FactionMain", "BtnList","Btn_ApplyList", "badge"},
}

badge:addFunction("faction_activity", "faction")	--帮会活动标签页
{
	pos = {"panel_faction", "Group_Rtn", "Rtn02", "badge"},
}

badge:addCatalog("faction_build", "faction")	--帮会战车打造小红点①
{
	pos = {"panel_faction", "SubPanel_FactionMain", "BtnList","Btn_Build", "badge"},
}

badge:addCatalog("faction_build_car", "faction_build")	--帮会战车打造小红点②
{
	pos = {"panel_factionbuild", "Group_Building", "Btn_Building07", "badge"},
}

badge:addFunction("factioncar_make", "faction_build_car")	--帮会战车打造小红点③
{
	pos = {"panel_factioncar", "SubPanel_Rtn", "Rtn01", "badge"},
}

badge:addFunction("faction_build_reward", "faction_build")	--帮会/建设按钮
{
	pos = {"none"},
}

badge:addCatalog("equip_underwear", "main_menu")	--装备
{
	pos = {"panel_menu", "Btn_Strength", "badge"},
}

badge:addFunction("gradeup", "equip_underwear")	--装备可升级/升品质
{
	pos = {"panel_equip_underwear", "RdoGroup","Rdo1", "badge"},
}

badge:addFunction("attach", "equip_underwear")	--装备可镶嵌
{
	pos = {"panel_equip_underwear", "RdoGroup","Rdo2", "badge"},
}

badge:addFunction("engrave", "equip_underwear")	--装备可镌刻
{
	pos = {"panel_equip_underwear", "RdoGroup","Rdo3", "badge"},
}

badge:addCatalog("equip_exterior", "main_menu")	--神器
{
	pos = {"panel_menu", "Btn_Artifact", "badge"},
}

badge:addFunction("starup", "equip_exterior")	--神器可炼星
{
	pos = {"panel_equip_exterior", "RdoGroup","Rdo1", "badge"},
}

badge:addFunction("refresh", "equip_exterior")	--神器可洗炼
{
	pos = {"panel_equip_exterior", "RdoGroup","Rdo2", "badge"},
}
badge:addFunction("intensify", "equip_exterior")	--神器可器魂恢复进度
{
	pos = {"panel_equip_exterior", "RdoGroup","Rdo4", "badge"},
}
badge:addFunction("intensifybtn", "equip_exterior")	--神器可器魂恢复进度
{
	pos = {"panel_equip_exterior", "Widget", "SubPanel_Intensify","SubPanel_ShowAttri","Btn_LevelUp", "badge"},
}
badge:addCatalog("wing", "main_menu")	--翅膀
{
	pos = {"panel_menu", "Btn_Wing", "badge"},
}

badge:addFunction("wing_train", "wing")	--翅膀可培养
{
	pos = {"panel_wing", "Group_Rtn","Rtn01", "badge"},
}

badge:addFunction("wing_soul", "wing")	--翅膀精魄
{
	pos = {"panel_wing", "Group_Rtn","Rtn03", "badge"},
}

badge:addFunction("wing_flyup", "wing")	--幻化飞升
{
	pos = {"panel_wing", "Group_Rtn", "Rtn04", "badge"},
}

badge:addCatalog("ride", "main_menu")	--骑乘
{
	pos = {"panel_menu", "Btn_Riding", "badge"},
}

badge:addFunction("ride_getup", "ride")	--骑乘可进阶
{
	pos = {"panel_ride", "RdoGroup","Rdo1", "badge"},
}
badge:addFunction("ride_getover", "ride")	--骑乘可唤醒
{
	pos = {"panel_ride", "RdoGroup","Rdo3", "badge"},
}
badge:addCatalog("nation", "main_menu")	--国家
{
	pos = {"panel_menu", "Btn_Nation", "badge"},
}

badge:addFunction("nation_donate", "nation")	--国家/捐献按钮
{
	pos = {"panel_nation", "Widget","SubPanel_Nation", "SSubPanel_NationMain","Btn_NationDonate", "badge"},
}
badge:addFunction("nation_officer_reward", "nation")	--国家/官员礼包
{
	pos = "none"
}
badge:addFunction("weak_nation_reward", "nation")	--国家/弱国奖励
{
	pos = {"panel_nation", "Widget","SubPanel_Nation", "SSubPanel_NationMain","Btn_NationRelation", "badge"},
}

badge:addCatalog("magic_weapon", "main_menu")	--法器
{
	pos = {"panel_menu", "Btn_Faqi", "badge"},
}
badge:addFunction("magic_train", "magic_weapon")	--法器培养
{
	pos = {"panel_anqi", "Group_Rtn","Rtn01", "badge"},
}

badge:addFunction("magic_refine", "magic_weapon")	--法器淬炼
{
	pos = {"panel_anqi", "Group_Rtn","Rtn02", "badge"},
}

badge:addCatalog("pet", "main_menu")	--宠物
{
	pos = {"panel_menu", "Btn_Pet", "badge"},
}
badge:addCatalog("pet_main", "pet")	--宠物主页签
{
	pos = {"panel_pet", "Group_Rtn", "Rtn01", "badge"},
}
badge:addFunction("pet_exp_up", "pet_main")	--宠物经验喂养
{
	pos = "none",
}
badge:addFunction("pet_attach_equip", "pet_main")	--宠物装备灵兵
{
	pos = "none",
}
badge:addCatalog("pet_star", "pet")	--宠物炼妖页签
{
	pos = {"panel_pet", "Group_Rtn", "Rtn02", "badge"},
}
badge:addFunction("pet_star_up", "pet_star")	--宠物炼妖
{
	pos = "none",
}
badge:addFunction("pet_combine", "pet")	--宠物合宠页签
{
	pos = {"panel_pet", "Group_Rtn", "Rtn03", "badge"},
}
badge:addCatalog("secrets_book", "main_menu")	--秘籍
{
	pos = {"panel_menu", "Btn_Secrets", "badge"},
}
badge:addFunction("secrets_book_gradeup", "secrets_book")	--宠物炼妖
{
	pos = "none",
}

------MenuOther
badge:addCatalog("menu_other", "none")	--MenuOther
{
	pos = {"panel_menuother", "Btn_Chance", "badge"},
}

badge:addCatalog("reward", "menu_other")	--福利
{
	pos = {"panel_menuother", "Btn_Reward", "badge"},
}

badge:addFunction("online_reward", "reward")	--在线奖励(福利界面)
{
	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_RewardTime", "badge"},
}

badge:addFunction("rewardregister", "reward")	--签到奖励(福利界面)	
{
	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_RewardRegister", "badge"},
}

badge:addCatalog("public_lottery", "menu_other")	--公测福利入口
{
	pos = {"panel_menuother", "Btn_OpenBeta", "badge"},
}

badge:addFunction("public_welfare", "menu_other")	--回馈福利
{
	pos = {"panel_menuother", "Gound_MenuOther","Table_X2","Btn_Welfare", "badge"},
}

badge:addCatalog("limit_buy", "menu_other")	--限时折扣入口
{
	pos = {"panel_menuother", "Gound_MenuOther","Table_X1","Btn_TimeLimitSell", "badge"},
}

badge:addFunction("public_login_lottery", "public_lottery")	--登录有礼(公测福利)
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_PublicTestLogin", "badge"},
}

badge:addFunction("limit_reward", "public_lottery")	--定点豪礼 
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_Time_Reward", "badge"},
}

badge:addFunction("childrens_day", "public_lottery")	--6.1儿童节(公测福利)
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_ChildrenDay01", "badge"},
}
badge:addFunction("childrens_day2", "public_lottery")	--6.1儿童节2(公测福利)
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_ChildrenDay02", "badge"},
}

badge:addFunction("olympic_reward", "public_lottery")	--奥运比赛
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_Olympic", "badge"},
}

badge:addFunction("welfare_monday", "public_lottery")	--周一福利
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_MondayWelfare", "badge"},
}

badge:addFunction("monthlove01", "public_lottery")	--情人节收花里程碑
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_FlowerReward01", "badge"},
}

badge:addFunction("monthlove02", "public_lottery")	--情人节送花里程碑
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_FlowerReward02", "badge"},
}

badge:addFunction("GuoQing", "public_lottery")	--欢度国庆
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_GuoQing_3Days", "badge"},
}

badge:addFunction("task_quest", "public_lottery")	--英雄令
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_TaskQuest", "badge"},
}

badge:addFunction("MagicBox", "public_lottery")	--八卦熔炼
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_MagicBox", "badge"},
}

badge:addFunction("Thanksgiving_day", "public_lottery")	--感恩节
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_ThanksgivingDay", "badge"},
}

badge:addFunction("Springrenwu", "public_lottery")	--每日运签
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_Springrenwu", "badge"},
}

badge:addFunction("Springcard", "public_lottery")	--春节翻牌界面
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_Springcard", "badge"},
}

badge:addFunction("CollectMap", "public_lottery")	--拼图玩法界面
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_CollectMap", "badge"},
}

badge:addFunction("continuous_buy", "public_lottery")	--累积充值
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_AccumulateRecharge", "badge"},
}

badge:addFunction("TeachersDay", "public_lottery")	--教师节引导任务
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_TeachersDay", "badge"},
}

badge:addFunction("TeachersDay_Daily", "public_lottery")	--教师节日常任务
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_TeachersDay_Daily", "badge"},
}

badge:addFunction("DoubleEleven_Sign", "public_lottery")	--双十一签到
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_DoubleEleven_Sign", "badge"},
}

badge:addFunction("DoubleEleven_Rew", "public_lottery")	--双十一个人
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_DoubleEleven_Rew", "badge"},
}

badge:addFunction("DoubleEleven_Des", "public_lottery")	--双十一描述
{
	pos = {"panel_publictest", "ScrollView_RewardList", "Rtn_DoubleEleven_Des", "badge"},
}
-- badge:addFunction("login_days", "reward")	--开服大奖(福利界面)
-- {
-- 	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_RewardOpen", "badge"},
-- }

badge:addFunction("level_reward", "reward")	--等级福利(福利界面)
{
	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_RewardLevel", "badge"},
}

badge:addFunction("lottery", "menu_other")	--钱庄
{
	pos = {"panel_menuother", "Btn_Lottery", "badge"},
}

badge:addFunction("open_reward", "menu_other")	--开服奖励
{
	pos = {"panel_menuother", "Gound_MenuOther","Table_X2","Btn_OpenReward", "badge"},
}
badge:addFunction("open_reward2", "menu_other")	--开服奖励
{
	pos = {"panel_menuother", "Gound_MenuOther","TableOther","Btn_OpenReward", "badge"},
}
badge:addFunction("common_reward", "menu_other")	--通用奖励
{
	pos = {"panel_menuother", "Btn_CommonReward", "badge"},
}
badge:addFunction("update", "menu_other")	--更新奖励
{
	pos = {"panel_menuother", "Gound_MenuOther","Table_X1","Btn_Update", "badge"},
}

badge:addFunction("first_recharge", "none")	--首次充值
{
	pos = {"panel_charhead", "Btn_FirstRecharge", "badge"},
}

badge:addFunction("login_days_new", "menu_other")	--开服大奖(福利界面)
{
	pos = {"panel_menuother", "TableOther", "Btn_BigRewardOpen", "badge"},
}
badge:addFunction("login_days_new2", "menu_other")	--开服大奖(福利界面)
{
	pos = {"panel_menuother", "Table", "Table_X2","Btn_BigRewardOpen", "badge"},
}

badge:addFunction("qqright_reward", "none") --QQ特权礼包奖励
{
	pos = {"panel_menuother", "TableOther", "Btn_QQVIP", "badge"},
}

badge:addFunction("player_back_reward", "menu_other") --玩家回归礼包奖励
{
	pos = {"panel_menuother", "Table", "Table_X2", "Btn_PlayerBack", "badge"},
}

badge:addFunction("ceremony_reward", "menu_other") --周年祭祀活动
{
	pos = {"panel_menuother", "Table", "Table_X1", "Btn_Ceremony", "badge"},
}

badge:addFunction("oldplayergift_reward", "menu_other")	--开服奖励
{
	pos = {"panel_menuother", "Gound_MenuOther","Table_X2","Btn_OldplayerGift", "badge"},
}

badge:addFunction("treasure_can_reward", "menu_other") --定时宝箱奖励
{
	pos = {"panel_menuother", "Table", "Table_X2", "Btn_TreasureCan", "badge"},
}
badge:addFunction("super_welfare_reward", "menu_other")	--六龙赠礼
{
	pos = {"panel_menuother", "Table", "Table_X2", "Btn_SuperWelfare", "badge"},
}

------VIP
badge:addCatalog("vipreward", "none")	--vip
{
	pos = {"panel_charhead", "Btn_Vip", "badge"},
}

do
	for i=1,20 do
		badge:addFunction("vip_choose"..i, "vipreward")	--vip1-15
		{
			pos = {"panel_vip", "SubPanel_VipRight",string.format("Btn_LevelChoose%02d",i), "badge"},
		}
	end
end

badge:addCatalog("activity", "none")	--活动列表
{
	pos = {"panel_activity", "All", "Background", "badge"},
}

badge:addFunction("activity_daily", "activity")	--日常活动
{
	pos = {"panel_quest_activitynew", "SubPanel_Rdobtn", "RdoBtn02", "badge"},
}

badge:addFunction("activity_nation", "activity")	--国家活动
{
	pos = {"panel_quest_activitynew", "SubPanel_Rdobtn", "RdoBtn01", "badge"},
}

badge:addFunction("activity_challenge", "activity")	--挑战活动
{
	pos = {"panel_quest_activitynew", "SubPanel_Rdobtn", "RdoBtn03", "badge"},
}

badge:addFunction("activity_entrust", "activity")	--活动委托
{
	pos = {"panel_quest_activitynew", "SubPanel_Rdobtn", "RdoBtn04", "badge"},
}

badge:addFunction("activity_reputation", "activity")	--活跃度奖励
{
	pos = "none",
}

badge:addFunction("challenge", "none")	--挑战
{
	pos = {"panel_challenge", "badge"},
}

badge:addFunction("nation_war_reward", "none")	--国战奖励
{
	pos = {"panel_national_war_foreshow", "Widget", "Btn_Foreshow", "badge"},
}

badge:addCatalog("rewardpay", "menu_other")	--福利
{
	pos = {"panel_menuother", "Btn_RewardPay", "badge"},
}


badge:addFunction("vip_reward", "rewardpay")	--至尊福利(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_RewardVIP", "badge"},
}

badge:addFunction("day_achievement_reward", "reward")	--至尊福利(福利界面)
{
	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_Achievement01", "badge"},
}

badge:addFunction("count_achievement", "reward")	--至尊福利(福利界面)
{
	pos = {"panel_reward", "ScrollView_RewardList", "Rtn_Achievement02", "badge"},
}

badge:addFunction("growth_fund_level", "rewardpay")	--成长基金(等级版)(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_GrowthFund_A", "badge"},
}
badge:addFunction("growth_fund_time", "rewardpay")	--成长基金(时间版)(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_GrowthFund_B", "badge"},
}
badge:addFunction("daily_recharge", "rewardpay")	--每日充值(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_DailyRecharge", "badge"},
}
badge:addFunction("recharge_rebate", "rewardpay")	--充值返利(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_RechargeRebate", "badge"},
}
badge:addFunction("first_recharge3", "rewardpay")	--首次充值(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_FirstRecharge", "badge"},
}
badge:addFunction("group_buy", "rewardpay")	--连续团购(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_GroupBuy", "badge"},
}
badge:addFunction("group_buy2", "limit_buy")	--连续团购(福利界面)
{
	pos = {"panel_timelimitbuy", "ScrollView_RewardList", "Rtn_GroupBuy", "badge"},
}
badge:addFunction("growth_highlevel", "rewardpay")	--尊享进阶(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_Respected", "badge"},
}
badge:addFunction("consumer_rebate", "rewardpay")	--消费返利(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_ConsumerRebate", "badge"},
}
badge:addFunction("daily_consumer", "rewardpay")	--每日消费(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_DailyConsumption", "badge"},
}
badge:addFunction("lifelong_award", "rewardpay")	--终生返还(福利界面)
{
	pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_GrowthFund_C", "badge"},
}
--限时抢购
do
	for i=1,2 do
		badge:addFunction("limittime_buy"..i, "rewardpay")
		{
			pos = {"panel_rewardpay", "ScrollView_RewardList", "Rtn_TimeLimitBuy" .. i, "badge"},
		}
	end
	for i=1,2 do
		badge:addFunction("limittime_buy_new"..i, "limit_buy")
		{
			pos = {"panel_timelimitbuy", "ScrollView_RewardList", "Rtn_TimeLimitBuy" .. i, "badge"},
		}
	end
end

badge:addCatalog("strategy", "main_menu")	--计策
{
	pos = {"panel_menu", "Btn_Strategy", "badge"},
}

badge:addFunction("strategy_levelup", "strategy")	--计策可升级
{
	pos = {"panel_strategy", "RdoGroup","Rdo1", "badge"},
}
do
	for i=1,6 do
		badge:addFunction("strategy_level_up_one"..i, "none")	
		{
			pos = {"panel_strategy", "Widget", "Group_Rtn",string.format("Rtn%02d",i), "badge"},
		}
	end
end
badge:addFunction("strategy_starup", "strategy")	--计策可聚灵
{
	pos = {"panel_strategy", "RdoGroup","Rdo2", "badge"},
}
do
	for i=1,6 do
		badge:addFunction("strategy_star_up_one"..i, "none")	
		{
			pos = {"panel_strategy", "Widget", "Group_Rtn",string.format("Rtn%02d",i), "badge"},
		}
	end
end
-- badge:addCatalog("mall", "menu_other")	--商城
-- {
-- 	pos = {"panel_menuother", "Btn_Mall", "badge"},
-- }

-- badge:addFunction("推荐", "mall")	--商城/推荐
-- {
-- 	pos = {"panel_goldshop", "Gound_Rtn","Grid", "Rtn01", "badge"},
-- }
-- 配置结束
-------------------------------------------------------------------

-- dofile "../Lua/Utility/malut.lua".printTable(badge:getAllConfigs())

return badge

