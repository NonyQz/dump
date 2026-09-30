
--战力值对应将军等级
local RepuValueLvConfig = 
{
	---5个等级对应的贡献值
	[1] = { minvalue = 0, maxvalue = 10000,},
	[2] = { minvalue = 10000, maxvalue = 70000,},
	[3] = { minvalue = 70000, maxvalue = 190000,},
	[4] = { minvalue = 190000, maxvalue = 430000,},
	[5] = { minvalue = 430000, maxvalue = 930000,},
	[6] = { minvalue = 930000, maxvalue = 99999999,},
}

--将军等级对应的基本属性值
local NPCAttributeConfig = 
{
	[1] = {
		hp = 950000000,  --生命上限
		pattack = 209100, --物理攻击
		pdefense = 0, --物理防御
		sattack = 209100, --法术攻击
		sdefense = 0, --法术防御
	},  
	[2] = {
		hp = 1100000000,  --生命上限
		pattack = 229500, --物理攻击
		pdefense = 0, --物理防御
		sattack = 229500, --法术攻击
		sdefense = 0, --法术防御
	},  
	[3] = {
		hp = 1170000000,  --生命上限
		pattack = 249900, --物理攻击
		pdefense = 0, --物理防御
		sattack = 249900, --法术攻击
		sdefense = 0, --法术防御
	},  
	[4] = {
		hp = 1250000000,  --生命上限
		pattack = 290700, --物理攻击
		pdefense = 0, --物理防御
		sattack = 290700, --法术攻击
		sdefense = 0, --法术防御
	},  
	[5] = {
		hp = 1400000000,  --生命上限
		pattack = 331500, --物理攻击
		pdefense = 0, --物理防御
		sattack = 331500, --法术攻击
		sdefense = 0, --法术防御
	},
	[6] = {
		hp = 1600000000,  --生命上限
		pattack = 413100, --物理攻击
		pdefense = 0, --物理防御
		sattack = 413100, --法术攻击
		sdefense = 0, --法术防御
	},  
}
--技能
local NPCSkillConfig = 
{
	[1] = {
		name = "征召",
		icon = 3116,
		levelcfg =
		{
			[1] = { desc = "技能解鎖後，將軍可額外召喚5名御林軍。", minvalue = 10000,maxvalue =69999, },
			[2] = { desc = "將軍可額外召喚10名御林軍。", minvalue = 70000, maxvalue =189999,},
			[3] = { desc = "將軍可額外召喚15名御林軍。", minvalue = 190000, maxvalue =429999,},
			[4] = { desc = "將軍可額外召喚20名御林軍。", minvalue = 430000, maxvalue =929999,},
			[5] = { desc = "將軍可額外召喚25名御林軍。", minvalue = 930000, maxvalue =99999999,},
		},
		unlockvalue = 10000,
	},  
	[2] = {
		name = "國盾",
		icon = 1141,
		levelcfg =
		{
			[1] = { desc = "技能解鎖後，將軍獲得70000000血量的護盾。", minvalue = 70000,maxvalue = 189999, },
			[2] = { desc = "將軍獲得145000000血量的護盾。", minvalue = 190000, maxvalue =429999,},
			[3] = { desc = "將軍獲得220000000血量的護盾。", minvalue = 430000, maxvalue =929999,},
			[4] = { desc = "將軍獲得300000000血量的護盾。", minvalue = 930000, maxvalue =99999999,},
		},
		unlockvalue = 70000,
	},  
	[3] = {
		name = "沐春",
		icon = 3110,
		levelcfg =
		{
			[1] = { desc = "技能解鎖後，將軍可提升10%血量上限。", minvalue = 190000,maxvalue =429999, },
			[2] = { desc = "將軍可提升25%血量上限。", minvalue = 430000, maxvalue =929999,},
			[3] = { desc = "將軍可提升50%血量上限。", minvalue = 930000, maxvalue =99999999,},
		},
		unlockvalue = 190000,
	},  
}

local NationBGConfig = 
{
	[1] = { icon = 3808,},
	[2] = { icon = 3809,},
	[3] = { icon = 3810,},
	[4] = { icon = 3811,},
	[5] = { icon = 3812,},
	[6] = { icon = 3813,},
}
return { 
	RepuValueLvConfig = RepuValueLvConfig,
	NPCAttributeConfig = NPCAttributeConfig,
	NPCSkillConfig = NPCSkillConfig,
	NationBGConfig = NationBGConfig,
	}