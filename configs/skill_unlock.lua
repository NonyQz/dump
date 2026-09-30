--[[
	配置技能解锁的部分表现形式，将并入 funcion_unlock 数据
	功能名为 "skill_index_n"，n 为技能序号 (1~5，5为xp技)
	desc, condition, icon 将自动生成，可留空不填
]]

local skill_unlock = {}

local l_configs = {}
function skill_unlock:getAllConfigs ()
	return l_configs
end

function skill_unlock:addConfig(function_name)
	return function (config)
		l_configs[function_name] = config
	end
end

skill_unlock:addConfig("skill_sp")	-- skill_3, skill_4, skill_5 的共同背景
{
	desc = "",
	condition = "none",
	parent = "none",
	icon = "none",
	
	entry =
	{
		-- {
		-- 	pos = {"panel_skill", "BgSkill"},
		-- 	hide_style = "none",
		-- },
	},
	auto_expand = "none",
	fly_pos = "none",
}

skill_unlock:addConfig("skill_index_1")
{
	desc = "",
	condition = "none",
	parent = "none",
	icon = "none",
	
	entry =
	{
		{
			pos = {"panel_skill", "Skill02"},
			hide_style = "none",
		},
	},
	auto_expand = "none",
	fly_pos = {"panel_skill", "Skill02"},
}

skill_unlock:addConfig("skill_index_2")
{
	desc = "",
	condition = "none",
	parent = "none",
	icon = "none",
	
	entry =
	{
		{
			pos = {"panel_skill", "Skill03"},
			hide_style = "none",
		},
	},
	auto_expand = "none",
	fly_pos = {"panel_skill", "Skill03"},
}

skill_unlock:addConfig("skill_index_3")
{
	desc = "",
	condition = "none",
	parent = "skill_sp",
	icon = "none",
	
	entry =
	{
		{
			pos = {"panel_skill", "Skill04"},
			hide_style = "none",
		},
	},
	auto_expand = "none",
	fly_pos = {"panel_skill", "Skill04"},
}

skill_unlock:addConfig("skill_index_4")
{
	desc = "",
	condition = "none",
	parent = "skill_sp",
	icon = "none",
	
	entry =
	{
		{
			pos = {"panel_skill", "Skill05"},
			hide_style = "none",
		},
	},
	auto_expand = "none",
	fly_pos = {"panel_skill", "Skill05"},
}

skill_unlock:addConfig("skill_index_5")
{
	desc = "",
	condition = "none",
	parent = "skill_sp",
	icon = "none",
	
	entry =
	{
		{
			pos = {"panel_skill", "Skillxp"},
			hide_style = "none",
		},
	},
	auto_expand = "none",
	-- fly_pos = "none",
	fly_pos = {"panel_skill", "Skillxp"},
}

return skill_unlock
