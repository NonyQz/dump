--聊天气泡互斥调整的界面,需要使用小写名

local up_panel = 
{
	["panel_menu"] = true, --显示在上面
}

local down_panel = 
{
	["panel_char"] = true, --以下的需要显示在下面
	["panel_skillmain"] = true,
	["panel_nation"] = true,
	["panel_faction"] = true,
	["panel_communication"] = true,
	["panel_ranklist"] = true,
	["panel_equip_underwear"] = true,
	["panel_equip_multirefresh"] = true,
	["panel_ride"] = true,
	["panel_wing"] = true,
	["panel_tallent"] = true,
	["panel_officer"] = true,
	["panel_card"] = true,
	["panel_achievement"] = true,
	["panel_goldshop"] = true,
	["panel_rewardopen"] = true,
	--["panel_quest_activitynew"] = true,
	["panel_arena"] = true,
	["panel_arena_shop"] = true,
	["panel_auction"] = true,
	["panel_challengemain"] = true,
	["panel_charupmain"] = true,
	["panel_elite"] = true,
	["panel_equip_exterior"] = true,
	["panel_factionbuild"] = true,
	["panel_factionmonster"] = true,
	["panel_factionshop"] = true,
	["panel_factionskill"] = true,
	["panel_fashionshop"] = true,
	["panel_herofight"] = true,
	["panel_lottery"] = true,
	["panel_map_midmap"] = true,
	["panel_mausoleum"] = true,
	["panel_national_war_info"] = true,
	["panel_national_waraccount"] = true,
	["panel_nationboss"] = true,
	["panel_quest"] = true,
	["panel_npcshop"] = true,
	["panel_pass"] = true,
	["panel_pass_shop"] = true,
	["panel_plant"] = true,
	["panel_questseriesnew"] = true,
	["panel_retrieve"] = true,
	["panel_reward"] = true,
	["panel_rewardpay"] = true,
	["panel_ringquest"] = true,
	["panel_tree"] = true,
	["panel_truefriend"] = true,
	["panel_watchother"] = true,
	["panel_tree"] = true,
	["panel_setting"] = true,
	["panel_herald"] = true,
	["panel_bonus_one"] = true,
	["panel_bonus_five"] = true,
	["panel_factionwar"] = true,
	["panel_factionwarsignup"] = true,
	["panel_factionwarinspire"] = true,
	["panel_strategy"] = true,
	["panel_anqi"] = true,
	["panel_pet"] = true,
	["panel_servicewar_shop"] = true,
	["panel_exchange"] = true,
	["panel_spinlottery"] = true,
	["panel_playerback"] = true,
	["panel_hunjie"] = true,
	["panel_herosoul"] = true,
	["panel_wine"] = true,
	["panel_luckyspin"] = true,
	["panel_luckyspin2"] = true,
	["panel_luckyspin3"] = true,
	["panel_ceremony"] = true,
	["subpanel_question"] = true,
	["panel_publictest"] = true,
	["panel_itemexchange"] = true,	
	["panel_campwar"] = true,    --阵营战界面
	["panel_welfare"] = true,    --回馈福利界面
	["panel_fashionbox"] = true, --时装橱柜界面
	["panel_limitlottery"] = true, --六龙秘宝界面
	["panel_maze2"] = true,      --珍宝楼界面
	["panel_instance_story"] = true,      
	["panel_instance_money"] = true,      --藏金库界面
	["panel_instance_exp"] = true,      --长板桥界面
	["panel_mausoleum"] = true,      --皇陵密室界面
	["panel_pass"] = true,      
	["panel_herofight"] = true,      
	["panel_herofight"] = true,      
	["panel_instance_valley"] = true,      
	["panel_instance_tower"] = true,      
	["panel_instance_battle"] = true,      
	["panel_instance_elite"] = true,      
	["panel_instance_eight"] = true,      
	["panel_nationboss"] = true,  
	["Panel_Server_CampWar"]  = true, --跨服阵营战  
}

local hide_panel = 
{
	["panel_chat"] = true, --以下的需要隐藏气泡
	["panel_npcquest"] = true,
	["panel_revive"] = true,--死亡界面已经置顶显示聊天界面了，不用显示气泡了
	--begin:分享相关UI
	["panel_arena_win"] = true,
	["panel_instance_eight_win"] = true,
	["panel_instance_single_win"] = true,
	["panel_instance_story_win"] = true,
	["panel_pass_win"] = true,
	["panel_mausoleumresult"] = true,
	["panel_instance_temple"] = true,
	["panel_herofightend"] = true,
	["panel_bonus_five"] = true,
	["panel_bonus_one"] = true,
	["panel_show"] = true,
	["panel_shownation"] = true,
	["panel_showranklist"] = true,
	["panel_kungfusoul"] = true,
	["panel_quest_activitynew"] = true,
	--end:


}


return 
{
	up_panel = up_panel,
	down_panel = down_panel,
	hide_panel = hide_panel,
}