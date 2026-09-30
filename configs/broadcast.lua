--广播、跑马灯互斥调整的界面,需要使用小写名
local broadcast = {}       --广播信息
local systemtips = {}      --系统信息

systemtips["down_panel"] = 
{
	["panel_menu"] = true, --显示在下面
}


broadcast.down_panel = 
{
	["panel_menu"] = true, --显示在下面
}



systemtips.up_panel = 
{
	
	--需要把跑马灯加入界面上方的，在此处添加界面信息
}


broadcast.up_panel = 
{
	["panel_char"] = true, --以下的需要显示在上面
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
	["panel_quest_activitynew"] = true,
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
	["panel_fashionbox"] = true, --时装橱柜界面
	["Panel_Server_CampWar"]  = true, --跨服阵营战
}

return 
{
	broadcast = broadcast,
	systemtips = systemtips,
}