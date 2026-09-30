--[[
	配置角色技能状态的描述信息
	格式：
	player_skill_status_desc[技能状态ID] =
	{
		name = 状态名称,
		icon = 图标path id,
		condition = 触发条件 (包含等级需求),
		effect = 状态效果,
	}
	
	default 配置为技能共用的数据
	dynamic_text_keys 列举需要编译的动态文本的key
	
	状态相关参数：
		UInt32 "state_id";	--ItemName: 技能目标状态包1的ID
		__expression[5] "state_param"; --ItemName: 技能目标状态包调用的状态参数1-5
		__expression "state_time";--ItemName: 技能目标状态包1调用的状态时间
		__expression "state_probability";--ItemName: 技能目标状态包1调用的成功率

]]

local player_skill_status_desc = {}

-- 列举需要编译的动态文本的key
player_skill_status_desc.dynamic_text_keys =
{
	"condition",
	"effect",
}

-- 配置所有技能共用的数据
player_skill_status_desc.default =
{
	name = "",
	condition = [[觸發機率：<%
local activateLevel = status_activate_level()
local effectLevel = curlevel < activateLevel and activateLevel or curlevel

write(expr_on_level(curstatus.state_probability, effectLevel) / 10, "%")

if curlevel < activateLevel then
write((" (技能等級%d生效)"):format(activateLevel))
end
%>]],
	effect = "",
}

player_skill_status_desc[38] =
{
	name = "破甲",
	icon = 30,
	effect = "火焰融化敵人的盔甲，受到影響的敵人物理防禦降低<%= -expr_for_status(curstatus.state_param[1]) %>點，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[39] =
{
	name = "擊暈",
	icon = 30,
	effect = "巨大的氣浪衝擊附近地面，敵人有機率眩暈<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[40] =
{
	name = "狂暴",
	icon = 30,
	effect = "免疫各種控制效果，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[41] =
{
	name = "嗜血",
	icon = 30,
	effect = "每秒鐘恢復<%= expr_for_status(curstatus.state_param[1]) %>點生命，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[42] =
{
	name = "削弱",
	icon = 30,
	effect = "罡風衝擊敵人，受到影響的敵人法術防禦降低<%= -expr_for_status(curstatus.state_param[1]) %>點，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[43] =
{
	name = "定身",
	icon = 30,
	effect = "罡風將敵人困住，<%= expr_for_status(curstatus.state_time)/1000 %>秒內使其無法移動",
}
player_skill_status_desc[44] =
{
	name = "無敵",
	icon = 30,
	effect = "揮舞長槍，周圍形成密集氣流，使自己處於無敵狀態，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[45] =
{
	name = "減速",
	icon = 30,
	effect = "雙腳被凍麻，受到影響的單位移動速度降低<%= -expr_for_status(curstatus.state_param[1])/1000 %>%，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[46] =
{
	name = "遲緩",
	icon = 30,
	effect = "雙腳被凍麻，受到影響的單位移動速度降低<%= -expr_for_status(curstatus.state_param[1])/10 %>%，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[47] =
{
	name = "霜凍",
	icon = 30,
	effect = "嚴寒撕裂敵人的皮膚，使其水抗性降低<%= -expr_for_status(curstatus.state_param[1])%>點，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[48] =
{
	name = "凍結",
	icon = 30,
	effect = "全身被凍僵，受到影響的單位無法行動，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[49] =
{
	name = "冰盾",
	icon = 30,
	effect = "寒風護體，吸收<%= expr_for_status(curstatus.state_param[1])%>點傷害，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[50] =
{
	name = "回春",
	icon = 30,
	effect = "逆天改命，<%= expr_for_status(curstatus.state_time)/1000 %>秒內可以獲得一次免死機會",
}
player_skill_status_desc[51] =
{
	name = "雷擊",
	icon = 30,
	effect = "雷電之力吞噬敵人<%= expr_for_status(curstatus.state_param[1]) %>點法力",
}
player_skill_status_desc[52] =
{
	name = "沉默",
	icon = 30,
	effect = "麻痹敵人，使其有機率無法使用技能，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[53] =
{
	name = "閃避",
	icon = 30,
	effect = "身手變得更加敏捷，閃避單體技能傷害，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
player_skill_status_desc[54] =
{
	name = "會心",
	icon = 30,
	effect = "籍由雷電的力量提升自己<%= expr_for_status(curstatus.state_param[1])%>點會心，持續<%= expr_for_status(curstatus.state_time)/1000 %>秒",
}
return player_skill_status_desc
