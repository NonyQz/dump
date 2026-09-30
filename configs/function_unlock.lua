--[[
	配置功能的解锁条件和部分解锁的表现形式
]]

local function_unlock = {}

local l_configs = {}
function function_unlock:getAllConfigs ()
	return l_configs
end

--[[
	config:
	{
		desc = "强化",							--功能的说明文字
		type = "function",						--功能的类型，可以是"function" (功能), "skill" (技能), "activity" (活动)
		parent = "none",						--父功能id，无父功能填 "none" 
		condition = {type=..., value=...},		--解锁条件，type 可为：
						-- "none" (不能解锁时,如父功能)
						-- "level_above" (等级达到，value为所需等级)
						-- "task_is_finished" (任务完成，value为所需任务)
						-- "task_has_or_finished" (任务接到或完成，value为所需任务)
						-- "activity_opened" (活动开启时显示，value为活动总配置id)
						-- condition = {{type="activity_opened", value=4238}, "and"/"or", {type="activity_opened", value=4238}}   支持多条件
		icon = {atlas = ..., sprite = ..., path_id = ...},		--显示图标
						-- 如果图标在 Allas中，atlas: 图标的Atlas文件路径，sprite: 图标的sprite名
						-- 如果图标是单独文件，path_id: 文件路径id
		
		entry =
		{
			{
				pos = {panelName, itemName, ...},	--功能入口的位置，panelName: panel名，itemName: 控件名(可有多重)
				hide_style = ...,					--隐藏功能入口的方式，可为 "none" (不自动隐藏), "simple" (直接隐藏), "UITable", "UIGrid", "UIList"
			},
			...		--可有多个入口
		},
		
		auto_expand = ...,						--开始解锁时，自动展开某一界面，可为 "none", "panel_menu", "panel_activity" 等
		fly_pos = {panelName, itemName, ...},	--图标飞到的位置，panelName: panel名，itemName: 控件名(可有多重)
		no_notify = true,						--不显示解锁界面 (可选)
	}
]]
function function_unlock:addConfig(function_name)
	return function (config)
		if l_configs[function_name] then
			error("duplicated function name:" .. tostring(function_name))
		end
		l_configs[function_name] = config
	end
end

function_unlock:addConfig("drug")
{
	desc = "藥品",
	type = "function",
	parent = "none",
	condition = { {type="task_is_finished", value=474}, "or", {type = "oneworld_in", value = true },},
	icon = {atlas = "Arts/Res/UI/Atlas/skill/SkillAtlas.prefab.u3dext", sprite = "DrugBtn"},
	entry = 
	{
		{
			pos = {"panel_skill", "Drug"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_skill", "Drug"},
	auto_expand = "none",
	no_notify_oneworld_server = true,
}

function_unlock:addConfig("qualityup")	--父功能：锻造（包括锻造，炼星，镶嵌，洗炼）
{
	desc = "強化",
	type = "function",
	parent = "none",
	condition = "none",
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Strength"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Strength"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_charhead", "ImgHead"},
	auto_expand = "none",
}

function_unlock:addConfig("underwear")
{
	desc = "升級",
	type = "function",
	parent = "qualityup",
	condition = {type="task_has_or_finished", value=475},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Strength"},
	entry = 
	{
		{
			pos = {"panel_equip_underwear", "Rdo1"},
			hide_style = "simple",
		},
		{
			pos = {"panel_itemtip_underwear", "Btn_GradeUp_Outter"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	-- fly_pos = {"panel_charhead", "ImgHead"},
	auto_expand = "none",
}

function_unlock:addConfig("reward")	--父功能：福利（包括在线奖励，活跃度，签到）
{
	desc = "福利",
	type = "function",
	parent = "none",
	condition = "none",
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Reward"},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_Reward"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("rewardvip")		--至尊福利
{
	desc = "等級福利",
	type = "function",
	parent = "reward",
	condition = {type="level_above", value=1},
	icon = {path_id =567},
	entry = 
	{
		{
			pos = {"panel_rewardpay", "Rtn_RewardVIP"},
			hide_style = "UIGrid",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("rewardlevel")		--等级福利
{
	desc = "等級福利",
	type = "function",
	parent = "reward",
	condition = {type="level_above", value=10},
	icon = {path_id =567},
	entry = 
	{
		{
			pos = {"panel_reward", "Rtn_RewardLevel_Outter"},
			hide_style = "UIGrid",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("gohome")		--回城快捷键
{
	desc = "回城卷",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=20},
	icon = {atlas = "Arts/Res/UI/Atlas/QuickBtn/QuickBtnAtlas.prefab.u3dext", sprite = "huicheng"},
	entry = 
	{
		-- {	--程序控制
		-- 	pos = {"panel_quickbtn", "Btn_GoHome"},
		-- 	hide_style = "UITable",
		-- },
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("rewardtime")		--在线奖励
{
	desc = "線上獎勵",
	type = "function",
	parent = "reward",
	condition = {type="level_above", value=27},
	icon = {path_id =567},
	
	entry = 
	{
		{
			pos = {"panel_reward", "Rtn_RewardTime"},
			hide_style = "UIGrid",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("charup")		--变强
{
	desc = "變強",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=28},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "CharUp"},
	
	entry = 
	{
		{
			pos = {"panel_charup", "Btn_CharUp"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_charup", "Btn_CharUp"},
	auto_expand = "none",
}

function_unlock:addConfig("achievement")	--成就
{
	desc = "成就",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=63},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Achievement"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Achievement"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("card")		--卡牌
{
	desc = "卡牌",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=496},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Card"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Card"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
	-- no_notify = true,
}

function_unlock:addConfig("riding")		--坐骑
{
	desc = "坐騎",
	type = "function",
	parent = "none",
	condition = { {type="task_is_finished", value=504}, "or", {type = "oneworld_in", value = true },},
	icon = {atlas = "Arts/Res/UI/Atlas/Ride/RideBtnAtlas.prefab.u3dext", sprite = "Ride"},
	entry = 
	{
		{
			pos = {"panel_ridebtn", "Btn_Ride"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_ridebtn", "Btn_Ride"},
	auto_expand = "none",
	no_notify_oneworld_server = true,
}

function_unlock:addConfig("activity")	--活动
{
	desc = "活動",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=520},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{
		{
			pos = {"panel_activity", "Widget"},
			hide_style = "simple",
		},
		-- {
		-- 	pos = {"panel_activitytime", "Widget"},
		-- 	hide_style = "simple",
		-- },
	},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("newactivity99")	--新活动开启
{
	desc = "活動",
	type = "activity",
	parent = "none",
	condition = {type="level_above", value=24},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{
		{
			pos = {"panel_activity", "Widget"},
			hide_style = "simple",
		},
		{
			pos = {"panel_activitytime", "Widget"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("rewardregister")		--签到
{
	desc = "簽到",
	type = "function",
	parent = "reward",
	condition = {type="level_above", value=23},
	icon = {path_id =566},
	entry = 
	{
		{
			pos = {"panel_reward", "Rtn_RewardRegister"},
			hide_style = "UIGrid",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
	
}

-- function_unlock:addConfig("openbeta")		--公测庆典 签到
-- {
-- 	desc = "登陆有礼",
-- 	type = "function",
-- 	parent = "reward",
-- 	condition = {type="level_above", value=23},
-- 	icon = {path_id =566},
-- 	entry = 
-- 	{
-- 		{
-- 			pos = {"panel_publictest", "Rtn_PublicTestLogin"},
-- 			hide_style = "UIGrid",
-- 		},
-- 	},
	
-- 	fly_pos = {"panel_menuother", "Btn_OpenBeta"},
-- 	auto_expand = "none",
	
-- }

function_unlock:addConfig("challenge")	--父功能：挑战（包括名将挑战，竞技场，闯天关，经验本，材料本，金钱本，内装本，外装本，剧情本）
{
	desc = "挑戰",
	type = "function",
	parent = "none",
	condition = "none",
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "challenge"},
	entry = 
	{
		{
			pos = {"panel_challenge", "Btn_Challenge"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("instancestory")	--组队副本(剧情本)
{
	desc = "新副本",
	type = "function",
	parent = "challenge",
	condition = {type="task_has_or_finished", value=685},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_Story"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Story"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("instanceexp")	--组队副本(经验本)
{
	desc = "新副本",
	type = "function",
	parent = "challenge",
	condition = {type="task_has_or_finished", value=66},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "build02_a"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_ForExp"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("mausoleum02")	--内装本 皇陵密室
{
	desc = "新副本",
	type = "function",
	parent = "challenge",
	condition = {type="task_is_finished", value=788},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_HLSD"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Mausoleum02"},
			hide_style = "simple",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
}

function_unlock:addConfig("mausoleum01")		--材料本 皇陵偏殿
{
	desc = "新副本",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=718},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_HLMS"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Mausoleum01"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("attach")		--镶嵌	
{
	desc = "寶石鑲嵌",
	type = "function",
	parent = "qualityup",
	condition = {type="level_above", value=25},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Strength"},
	entry = 
	{
		{
			pos = {"panel_equip_underwear", "Rdo2"},
			hide_style = "simple",
		},
		{
			pos = {"panel_itemtip_underwear", "Btn_Attach_Outter"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("lottery")	--钱庄抽奖
{
	desc = "錢莊",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=431},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Lottery"},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_Lottery"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("mausoleum03")	--外装本
{
	desc = "",
	type = "function",
	parent = "challenge",
	condition = "none",
	icon = "none",
	entry = {},
	
	fly_pos = "none",
	auto_expand = "none",
}

function_unlock:addConfig("herofight")	--名将试炼
{
	desc = "",
	type = "function",
	parent = "mausoleum03",
	condition = "none",
	icon = "none",
	entry = {},
	
	fly_pos = "none",
	auto_expand = "none",
}

function_unlock:addConfig("arena")	--竞技场
{
	desc = "擂臺",
	type = "function",
	parent = "challenge",
	-- condition = {type="task_is_finished", value=676},
	condition = {type="task_is_finished", value=731},
	icon = {path_id = 773},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Arena"},
			hide_style = "simple",
		},
	},
	 
	fly_pos = {"panel_challenge", "Background"},
	auto_expand = "none",
}

function_unlock:addConfig("instancemoney")	--组队副本(外装本 金钱本 名将试炼一起开)
{
	desc = "新副本",
	type = "function",
	parent = "herofight",
	condition = {type="task_is_finished", value=731},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_HLSD"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_ForMoney"},		--金钱本
			hide_style = "simple",
		},
		{
			pos = {"panel_challengemain", "Btn_Mausoleum03"},	--外装本
			hide_style = "simple",
		},
		{
			pos = {"panel_challengemain", "Btn_HeroFight"},		--名将试炼
			hide_style = "simple",
		},
		{
			pos = {"panel_card", "Btn_GotoHero"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("officer")	--爵位  任务编辑器左下角，开启爵位开启
{
	desc = "爵位",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=687},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Officer"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Officer"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

-- function_unlock:addConfig("guozhan")		--国战
-- {
-- 	desc = "国战",
-- 	type = "function",
-- 	parent = "none",
-- 	condition = {type="task_is_finished", value=731},
-- 	icon = {path_id =938},
-- 	entry = 
-- 	{

-- 	},
	
-- 	fly_pos = {"panel_activity", "All"},
-- 	auto_expand = "none",
	
-- }

function_unlock:addConfig("artifact")	--父功能：神器（包括炼星，洗炼，转移）
{
	desc = "神器",
	type = "function",
	parent = "none",
	condition = "none",
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Artifact"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Artifact"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_menu", "Btn_Artifact"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("starup")		--神器炼星
{
	desc = "神器煉星",
	type = "function",
	parent = "artifact",
	condition = {type="level_above", value=25},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Artifact"},
	entry = 
	{
		{
			pos = {"panel_equip_exterior", "Rdo1"},
			hide_style = "simple",
		},
		{
			pos = {"panel_equip_exterior", "Rdo2"},
			hide_style = "simple",
		},
		{
			pos = {"panel_equip_exterior", "Rdo3"},
			hide_style = "simple",
		},
		{
			pos = {"panel_itemtip_exterior", "Btn_StarUp_Outter"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_itemtip_exterior", "Btn_Refresh_Outter"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("fmt")		--封魔贴快捷键
{
	desc = "封魔帖",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=25},
	icon = {atlas = "Arts/Res/UI/Atlas/QuickBtn/QuickBtnAtlas.prefab.u3dext", sprite = "fmt"},
	entry = 
	{
		-- {	--程序控制
		-- 	pos = {"panel_quickbtn", "Btn_FMT"},
		-- 	hide_style = "UITable",
		-- },
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("nationdonate")		--国家捐献
{
	desc = "國家捐獻",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=30},
	icon = {path_id =566},
	entry = 
	{
		{
			pos = {"panel_nation", "Btn_NationDonate"},
			hide_style = "simple",
		},
		{
			pos = {"panel_nation", "Btn_NationRelation"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Widget"},
	auto_expand = "none",
	no_notify = true,
}

-- function_unlock:addConfig("rewardopen")		--开服大奖（里面版）
-- {
-- 	desc = "开服大奖",
-- 	type = "function",
-- 	parent = "reward",
-- 	condition = {type="level_above", value=29},
-- 	icon = {path_id =566},
-- 	entry = 
-- 	{
-- 		{
-- 			pos = {"panel_reward", "Rtn_RewardOpen_Outter"},
-- 			hide_style = "UIGrid",
-- 		},
-- 	},
	
-- 	fly_pos = {"panel_menuother", "Btn_Chance"},
-- 	auto_expand = "none",
-- }


function_unlock:addConfig("rewardopen_new")		--开服大奖（外面版）
{
	desc = "開服大禮",
	type = "function",
	parent = "reward",
	condition = {type="level_above", value=29},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "BigRewardOpen"},
	entry = 
	{
		{
			pos = {"panel_menuother", "Table_X2", "Btn_BigRewardOpen"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_menuother", "TableOther", "Btn_BigRewardOpen"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menuother", "TableOther", "Btn_BigRewardOpen"},
	auto_expand = "none",
}

function_unlock:addConfig("worldboss")		--世界怪物
{
	desc = "叛軍精銳",
	type = "function",
	parent = "challenge",
	condition = {type="level_above", value=31},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "build04_a"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_WorldBoss"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("carddarkshop")		--卡牌黑市
{
	desc = "卡牌黑市",
	type = "function",
	parent = "card",
	condition = {type="task_is_finished", value=917},
	-- condition = {type="level_above", value=1},
	icon = {path_id = 775},
	entry = 
	{
		{
			pos = {"panel_card", "Rtn03"},
			hide_style = "UIGrid",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("pass")	--闯天关
{
	desc = "",
	type = "function",
	parent = "none",
	condition = "none",
	icon = "none",
	entry = 
	{},
	
	fly_pos = "none",
	auto_expand = "none",
}

function_unlock:addConfig("wing")	--翅膀   闯天关(一起开)
{
	desc = "翅膀",
	type = "function",
	parent = "pass",
	condition = {type="task_is_finished", value=657},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Wing"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Wing"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_challengemain", "Btn_Pass"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("elite")	--精英扫荡
{
	desc = "精英掃蕩",
	type = "function",
	parent = "challenge",
	condition = {type="task_is_finished", value=465},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_Elite"},
	
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Elite"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("refine")		--坐骑精炼
{
	desc = "坐騎精煉",
	parent = "riding",
	condition = {type="task_is_finished", value=678},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Riding"},
	entry = 
	{
		{
			pos = {"panel_ride", "Rdo2"},
			hide_style = "simple",
		},
		{
			pos = {"panel_itemtip_ride", "Btn_Refine_Outter"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_menu", "Btn_Riding"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
	-- no_notify = true,
}

function_unlock:addConfig("tallent")	--天赋
{
	desc = "天賦",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=677},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Tallent"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Talent"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("newactivity3")	--新活动开启
{
	desc = "神秘活動",
	type = "activity",
	parent = "none",
	condition = {type="level_above", value=35},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("nowar")		--免战牌快捷键
{
	desc = "免戰牌",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=36},
	icon = {atlas = "Arts/Res/UI/Atlas/QuickBtn/QuickBtnAtlas.prefab.u3dext", sprite = "nowar"},
	entry = 
	{
		-- {	--程序控制
		-- 	pos = {"panel_quickbtn", "Btn_FMT"},
		-- 	hide_style = "UITable",
		-- },
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("newactivity4")	--新活动开启
{
	desc = "神秘活動",
	type = "activity",
	parent = "none",
	condition = {type="level_above", value=45},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("newactivity5")	--新活动开启
{
	desc = "神秘活動",
	type = "activity",
	parent = "none",
	condition = {type="level_above", value=50},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("drink")	--喝酒快捷键
{
	desc = "對酒當歌",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=35},
	icon = {atlas = "Arts/Res/UI/Atlas/QuickBtn/QuickBtnAtlas.prefab.u3dext", sprite = "drink"},
	entry = 
	{
		-- {	--程序控制
		-- 	pos = {"panel_quickbtn", "Btn_Drink"},
		-- 	hide_style = "UITable",
		-- },
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("eight")	--八阵图
{
	desc = "破解八陣圖",
	type = "function",
	parent = "challenge",
	condition = {type="level_above", value=50},
	icon = {path_id = 773},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Eight"},
			hide_style = "simple",
		},
	},
	 
	fly_pos = {"panel_challenge", "Background"},
	auto_expand = "none",
}

-----------------------------------------------------------------------------------------------------------------------------------

function_unlock:addConfig("mall")	--商城
{
	desc = "商城",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=1},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Mall"},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_Mall"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("auction")	--拍卖行
{
	desc = "拍賣行",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=1},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "AuctionNew"},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_Auction"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menuother", "Btn_Chance"},
	auto_expand = "none",
}

function_unlock:addConfig("battle")		--单人战场
{
	desc = "單人戰場",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=1211},
	icon = {atlas = "Arts/Res/UI/Atlas/Challenge/ChallengeAtlas.prefab.u3dext", sprite = "Build_DRZC"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Battle"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_challenge", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("yao")		--摇一摇
{
	desc = "緣定今生",
	type = "activity",
	parent = "none",
	condition = {type="task_is_finished", value=1212},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",

}

function_unlock:addConfig("jiuyi")		--拼酒
{
	desc = "酒藝",
	type = "activity",
	parent = "none",
	condition = {type="task_is_finished", value=667},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",

}

function_unlock:addConfig("wingsoul")		--神羽精魄 翅膀
{
	desc = "神羽精魄",
	type = "function",
	parent = "none",
	condition = {type="level_above", value=50},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Wing"},
	entry = 
	{
		{
			pos = {"panel_wing", "Rtn03"},
			hide_style = "UIGrid",
		},
		-- {
		-- 	pos = {"panel_itemtip_wing", "Btn_Soul"},
		-- 	hide_style = "UITable",
		-- },
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("kungfusoul")		--武魂
{
	desc = "武魂",
	type = "function",
	parent = "none",
	condition = {{type="level_above", value=75},"and",{type="activity_opened", value=6943}},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Soul"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_KungfuSoul"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("tower")	--锁妖塔
{
	desc = "",
	type = "function",
	parent = "none",
	condition = "none",
	icon = "none",
	entry = 
	{},
	
	fly_pos = "none",
	auto_expand = "none",
}

function_unlock:addConfig("strategy")	--兵法（三十六计
{
	desc = "兵法",
	type = "function",
	parent = "tower",
	condition = {type="task_is_finished", value=466},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Btn_Strategy"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Strategy"},
			hide_style = "UITable",
		},
		{
			pos = {"panel_challengemain", "Btn_Tower"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("engrave")		--镌刻	
{
	desc = "銘文鐫刻",
	type = "function",
	parent = "qualityup",
	condition = {type="level_above", value=60},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Strength"},
	entry = 
	{
		{
			pos = {"panel_equip_underwear", "Rdo3"},
			hide_style = "simple",
		},
		{
			pos = {"panel_itemtip_underwear", "Btn_Refine_Outter"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("magic_train")		--法器	
{
	desc = "法器",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=669},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Btn_Anqi"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Faqi"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("valley")		--子午谷	
{
	desc = "子午谷",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=669},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Btn_Anqi"},
	entry = 
	{
		{
			pos = {"panel_challengemain", "Btn_Valley"},
			hide_style = "simple",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("magic_refine")		--法器淬炼	
{
	desc = "法器",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=669},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Btn_Anqi"},
	entry = 
	{},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("realtimearena")	--龙争虎斗
{
	desc = "龍爭虎鬥",
	type = "activity",
	parent = "none",
	condition = {type="task_is_finished", value=1652},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "ActivityAll"},
	entry = 
	{},
	
	fly_pos = {"panel_activity", "Widget"},
	auto_expand = "none",
}

function_unlock:addConfig("pet")		--宠物
{
	desc = "靈寵",
	type = "function",
	parent = "none",
	condition = {type="task_is_finished", value=1997},	--这个任务不是即将开启，真的是个对话任务
	icon = {atlas = "Arts/Res/UI/Atlas/Pet/Pet_Atlas.prefab.u3dext", sprite = "pet"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_Pet"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("tallent_break")		--天赋突破
{
	desc = "天賦突破",
	type = "function",
	parent = "tallent",
	-- condition = {{type="task_is_finished", value=2090},"and",{type="activity_opened", value=4935}},"or",{type="level_above", value=68},"and",{type="activity_opened", value=4935}},	--这个任务不是即将开启，真的是个对话任务
	condition = {{type="task_is_finished", value=2090},"or",{type="level_above", value=68},"and",{type="activity_opened", value=4935}},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Tallent"},
	entry = 
	{
		{
			pos = {"panel_tallent", "RdoBtn02"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("getover")		--坐骑唤醒
{
	desc = "坐騎喚醒",
	parent = "riding",
	condition = {type="task_is_finished", value=2234},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Riding"},
	entry = 
	{
		{
			pos = {"panel_ride", "Rdo3"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("wedding_ring")		--婚戒
{
	desc = "婚戒",
	type = "function",
	parent = "none",
	condition = {{type="task_is_finished", value=2311},"and",{type="activity_opened", value=5687}},
	icon = {atlas = "Arts/Res/UI/Atlas/Wedding/WeddingAtlas.prefab.u3dext", sprite = "RingBright"},
	entry = 
	{
		{
			pos = {"Panel_Menu", "Btn_HunJie"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("shitu")		--师徒
{
	desc = "師徒",
	type = "function",
	parent = "none",
	condition = {type="activity_opened", value=6358},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Riding"},
	entry = 
	{
		{
			pos = {"panel_communication", "Rtn04"},
			hide_style = "simple",
		},
		
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("fly")		--幻化飞升
{
	desc = "幻化飛升",
	type = "function",
	parent = "wing",
	condition ={{type="activity_opened", value=6786},"and",{type="task_is_finished", value=2638}},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Wing"},
	entry = 
	{
		{
			pos = {"panel_wing", "Rtn04"},
			hide_style = "simple",
		},
		--{
		--	pos = {"panel_itemtip_wing", "Btn_Fly"},
		--	hide_style = "UITable",
		--},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}
---------------------------------------------------活动解锁---------------------------------------------------

function_unlock:addConfig("luckyspin")		--活动：幸运转盘
{
	desc = "幸運轉盤",
	type = "activity",
	parent = "none",
	condition = {type="activity_opened", value=4700},
	icon = {},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_LuckySpin"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("player_back")		--玩家回归礼包
{
	desc = "回歸禮包",
	type = "activity",
	parent = "none",
	condition = {{type="level_above", value=36},"and",{type="activity_opened", value=5378}},
	icon = {},
	entry = 
	{
		{
			pos = {"panel_menuother", "Table_X2", "Btn_PlayerBack"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("badge")		--徽章	
{
	desc = "武勳徽章",
	type = "function",
	parent = "officer",
	condition = {{type="level_above", value=60},"and",{type="activity_opened", value=5388}},
	-- condition = {type="level_above", value=60},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Officer"},
	entry = 
	{
		{
			pos = {"panel_officer", "RdoBtn02"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("luckyspin2")		--活动：天马转盘
{
	desc = "幸運轉盤",
	type = "activity",
	parent = "none",
	condition = {type="activity_opened", value=5466},
	icon = {},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_LuckySpin2"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("ceremony")		--活动：祭祀神龙
{
	desc = "祭祀神龍",
	type = "activity",
	parent = "none",
	condition ={{type="activity_opened", value=5971},"and",{type="level_above", value=36}},
	icon = {},
	entry = 
	{
		{
			pos = {"panel_menuother", "Btn_Ceremony"},
			hide_style = "UITable",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("herosoul")		--将魂
{
	desc = "將魂",
	type = "function",
	parent = "none",
	condition = {{type="task_is_finished", value=2832},"and",{type="activity_opened", value=7186}},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuOtherAtlas.prefab.u3dext", sprite = "Btn_HeroSoul"},
	entry = 
	{
		{
			pos = {"panel_menu", "Btn_HeroSoul"},
			hide_style = "simple",
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("qihun")		--器灵
{
	desc = "器靈",
	type = "function",
	parent = "none",
	condition = {{type="task_is_finished", value=2980},"and",{type="activity_opened", value=7319}},
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Artifact"},
	entry = 
	{
		{
			pos = {"panel_equip_exterior", "Rdo4"},
			hide_style = "simple",
		},
	},
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}

function_unlock:addConfig("carve")		--宝石加工
{
	desc = "寶石加工",
	type = "function",
	parent = "qualityup",
	condition = {{type="level_above", value=60},"and",{type="activity_opened", value=9126}, "and",{type="is_gem_alllevel_above", value = 300 },} ,
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Strength"},
	entry = 
	{
		{
			pos = {"panel_equip_underwear", "Rdo4"},
			hide_style = "simple",
		},
	},
	fly_pos = {"panel_menubtn", "Toggle_Menu"},
	auto_expand = "none",
}


-----------------------------------老玩家激活码--------------------------------------
function_unlock:addConfig("OldPlayer")		--回馈福利
{
	desc = "老玩家福利",
	type = "function",
	parent = "none",
	condition = {{type="level_above", value=70},"and",{type="activity_opened", value=8481},"and",{type="activity_opened", value=8613},
	 "and",{type = "oneworld_in", value = false }},
	icon = "none",
	entry = 
	{
		{
			pos = {"panel_setting", "Rtn03"},
			hide_style = "simple",
		},
	},
	
	fly_pos = "none",
	auto_expand = "none",
	no_notify = true,
}

function_unlock:addConfig("secrets")		--秘籍  ！！！所有的配置注意大小写！！！
{
	desc = "秘籍",		--在界面里显示的功能或活动名
	type = "function",	--开启的是功能还是活动，一般都写功能
	parent = "none",	--一般开页签的时候会用到，是父子功能关系，一般情况用不上，如果想用的话，看下“装备”或者“坐骑”功能
	condition = {{type="level_above", value=60},"and",{type="activity_opened", value=9579},},	--开启条件，一般情况下都是等级加活动id，并且是and的关系，也有用or的，看情况配置
	icon = {atlas = "Arts/Res/UI/Atlas/Menu/MenuAtlas.prefab.u3dext", sprite = "Secrets",},	--即将开启里，标题下面的图标资源，左侧是图集路径，右侧是按钮控件名，一般都放到图集里，也支持pathid（搜在线奖励就知道怎么配了）
	entry = 	--未开启的时候，隐藏什么内容
	{
		{
			pos = {"panel_menu", "Btn_Secrets"},	--隐藏menu界面里的，Btn_Secrets按钮
			hide_style = "simple",					--隐藏类型是什么，找这个按钮上一级或者最上级用了什么控件，啥都没有就写"simple" (直接隐藏), 有table就写"UITable", 有grid就写"UIGrid", 有list就写"UIList"
		},
	},
	
	fly_pos = {"panel_menubtn", "Toggle_Menu"},		--解锁后图标飞到哪里，飞到menubtn界面的Toggle_Menu控件上
	auto_expand = "none",	--开始解锁时，自动展开某一界面，可为 "none", "panel_menu", "panel_activity" 等
}
return function_unlock