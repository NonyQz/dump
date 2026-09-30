--[[
	配置角色技能的描述信息
	格式：
	player_skill_desc[技能ID] =  --技能名称
	{
		name = 技能显示名,
		icon = 技能图标Path_id,
		short_desc = 技能短简述,
		brief_desc = 技能简述 (动态文本),
		detail_desc = 技能描述 (动态文本),
	}
	
	default 配置为技能共用的数据
	dynamic_text_keys 列举需要编译的动态文本的key
		提示：
			phy_dmg_point()	=> 	物理点数伤害
			phy_dmg_scale()	=> 	物理百分比伤害
			mg_dmg_point()	=> 	法术点数伤害
			mg_dmg_scale()	=> 	法术百分比伤害
]]

local player_skill_desc = {}

-- 列举需要编译的动态文本的key
player_skill_desc.dynamic_text_keys =
{
	"brief_desc",
	"detail_desc",
	"cost_magic",
}

-- 配置所有技能共用的数据
player_skill_desc.default =
{
	name = "",
	icon = "",
	short_desc = "",
	brief_desc = "",
	detail_desc = "",
	cost_magic =
	[[<%
local learned = curlevel > 0

local curCost = expr_on_level(curskill.intonate_limit_mp[1], curlevel)
local nextCost = nil
if curlevel < curskill.level_max then
nextCost = expr_on_level(curskill.intonate_limit_mp[1], curlevel+1)
end

write("法力消耗：")
if learned then
write(math.floor(curCost or 0))
if nextCost and nextCost ~= curCost then
write("→", math.floor(nextCost))
end
else
write(math.floor(nextCost or 0))
end
%>]],
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害,造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
	status = {},
}
--法杖技能
player_skill_desc[9] =
{
	name = "符冰引",
	icon = 36,
	short_desc = "符冰引（濺射普通攻擊）",
	brief_desc = "攻擊當前目標並濺射附近敵人（玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(mg_dmg_scale()*3.4)%>%法術攻擊 + <%=math.floor(mg_dmg_point()*3.4)%>點法術傷害",
}

player_skill_desc[10] =
{
	name = "水龍狂濤",
	icon = 37,
	short_desc = "水龍狂濤（減速群體攻擊）",
	brief_desc = "寒氣傾盆而下，攻擊區域內敵人並減速30%",
	detail_desc = "每次造成 <%=mg_dmg_scale()/2%>%法術攻擊 + <%=mg_dmg_point()/2%>點法術傷害，兩次傷害",
}
player_skill_desc[127] = --符文1
{
	name = "水龍狂濤·急寒",
	icon = 704,
	brief_desc = "減少引導時間，攻擊區域內敵人並減速30%",
	detail_desc = "每次造成 <%=mg_dmg_scale()/2%>%法術攻擊 + <%=mg_dmg_point()/2%>點法術傷害，兩次傷害",
}
player_skill_desc[128] =  --符文2
{
	name = "水龍狂濤·驚濤",
	icon = 707,
	brief_desc = "攻擊區域內敵人並減速30%，增加次數",
	detail_desc = "每次造成 <%=mg_dmg_scale()/2%>%法術攻擊 + <%=mg_dmg_point()/2%>點法術傷害，三次傷害",
}
player_skill_desc[129] =  --符文3
{
	name = "水龍狂濤·無量",
	icon = 703,
	brief_desc = "攻擊區域內敵人並減速30%，範圍擴大",
	detail_desc = "每次造成 <%=mg_dmg_scale()/2%>%法術攻擊 + <%=mg_dmg_point()/2%>點法術傷害，兩次傷害",
}
player_skill_desc[11] =
{
	name = "裂地冰魄",
	icon = 38,
	short_desc = "裂地冰魄（定身群體攻擊）",
	brief_desc = "冰錐破地而出，使敵人凍結<%= expr_for_status(status_param(162).state_time)/1000 %>秒",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[130] = --符文1
{
	name = "裂地冰魄·冰封",
	icon = 705,
	brief_desc = "冰錐破地而出，凍結敵人<%= expr_for_status(status_param(162).state_time)/1000 %>秒",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[131] = --符文2
{
	name = "裂地冰魄·嚴寒",
	icon = 703,
	brief_desc = "裂地冰魄使敵人凍結3秒，被定身單位受到傷害提高<%= -expr_for_status(status_param(92).state_param[1])/10 %>%",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[132] = --符文3
{
	name = "裂地冰魄·急凍",
	icon = 704,
	brief_desc = "急速寒冷，使敵人凍結3秒，自身移動速度提升30%，持續3秒",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[12] =
{
	name = "幽冥歸隱",
	icon = 39,
	short_desc = "幽冥歸隱（護盾技能）",
	brief_desc = "聚集寒氣，形成護盾保護自己",
	detail_desc = "吸收<%= math.floor(expr_for_status(status_param(93).state_param[1]))%>點傷害，持續<%= expr_for_status(status_param(93).state_time)/1000 %>秒",
}
player_skill_desc[133] = --符文1
{
	name = "幽冥歸隱·九幽",
	icon = 706,
	brief_desc = "強化冰盾，獲得更強大的保護",
	detail_desc = "吸收<%= math.floor(expr_for_status(status_param(93).state_param[1]))%>點傷害，持續<%= expr_for_status(status_param(93).state_time)/1000 %>秒",
}
player_skill_desc[134] = --符文2
{
	name = "幽冥歸隱·大隱",
	icon = 704,
	brief_desc = "強化冰盾，冰盾將持續存在60秒",
	detail_desc = "吸收<%= math.floor(expr_for_status(status_param(94).state_param[1]))%>點傷害",
}
player_skill_desc[135] = --符文3
{
	name = "幽冥歸隱·冰封",
	icon = 703,
	brief_desc = "召喚寒冰屏障保護自己，持續<%= expr_for_status(status_param(95).state_time)/1000 %>秒，並使3名隊友進入免控狀態",
	detail_desc = "期間不會受到傷害，但也無法移動、使用技能，隊友免控時間3秒",
}
player_skill_desc[14] =
{
	name = "八門金鎖",
	icon = 40,
	short_desc = "八門金鎖（大範圍群體攻擊）",
	brief_desc = "凍結並粉碎附近敵人，僅對怪物生效",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
--刀客技能
player_skill_desc[24] =
{
	name = "赤焰燃",
	icon = 124,
	short_desc = "赤焰燃（濺射普通攻擊）",
	brief_desc = "攻擊目標，濺射附近怪物（敵方玩家免疫）",
	detail_desc = "五次攻擊共造成 <%=math.floor(phy_dmg_scale()*3.7)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*3.7)%>點物理傷害",
}

player_skill_desc[25] =
{
	name = "泰山壓頂",
	icon = 130,
	short_desc = "泰山壓頂（眩暈群體攻擊）",
	brief_desc = "舉刀跳劈，使敵人眩暈<%= expr_for_status(status_param(81).state_time)/1000 %>秒",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[118] = --符文1
{
	name = "泰山壓頂·裂地",
	icon = 705,
	brief_desc = "舉刀跳劈，使敵人眩暈<%= expr_for_status(status_param(81).state_time)/1000 %>秒",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[119] = --符文2
{
	name = "泰山壓頂·威壓",
	icon = 706,
	brief_desc = "舉刀跳劈，使敵人眩暈<%= expr_for_status(status_param(81).state_time)/1000 %>秒，輸出降低<%= -expr_for_status(status_param(82).state_param[1])/10 %>%持續<%= expr_for_status(status_param(82).state_time)/1000 %>秒",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[120] = --符文3
{
	name = "泰山壓頂·燎原",
	icon = 707,
	brief_desc = "舉刀跳劈，使敵人眩暈<%= expr_for_status(status_param(81).state_time)/1000 %>秒，並持續灼燒附近單位",
	detail_desc = "造成 <%=phy_dmg_scale()/2*1.2%>%物理攻擊 + <%=phy_dmg_point()/2*1.2%>點物理傷害",
}
player_skill_desc[26] =
{
	name = "炎輪濤殺",
	icon = 122,
	short_desc = "炎輪濤殺（群體攻擊）",
	brief_desc = "旋轉攻擊周圍敵人，自身速度降低<%= -expr_for_status(status_param(83).state_param[1])/10 %>%並免控",
	detail_desc = "3秒內共造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[121] =--符文1
{
	name = "炎輪濤殺·豪焰",
	icon = 707,
	brief_desc = "攻擊周圍敵人，自身速度降低<%= -expr_for_status(status_param(83).state_param[1])/10 %>%並免控，持續時間延長2秒",
	detail_desc = "5秒內共造成 <%=math.floor(phy_dmg_scale()*1.4)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*1.4)%>點物理傷害",
}
player_skill_desc[122] = --符文2
{
	name = "炎輪濤殺·神煉",
	icon = 706,
	brief_desc = "攻擊周圍敵人，自身速度降低<%= -expr_for_status(status_param(83).state_param[1])/10 %>%並免控，受到傷害降低<%= expr_for_status(status_param(86).state_param[1])/10 %>%",
	detail_desc = "3秒內共造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[123] = --符文3
{
	name = "炎輪濤殺·炎風",
	icon = 704,
	brief_desc = "攻擊周圍敵人，自身速度提高<%= expr_for_status(status_param(84).state_param[1])/10 %>%並免控",
	detail_desc = "3秒內共造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}

player_skill_desc[27] =
{
	name = "無道瘋魔",
	icon = 109,
	short_desc = "無道瘋魔（提升防禦技能）",
	brief_desc = "進入狂暴狀態，防禦提高，可以在被控制狀態下釋放並且驅散控制效果",
	detail_desc = "物理防禦提高<%= math.floor(expr_for_status(status_param(87).state_param[1]))%>點,法術防禦提高<%= math.floor(expr_for_status(status_param(87).state_param[2]))%>點,持續<%= expr_for_status(status_param(87).state_time)/1000 %>秒",
}
player_skill_desc[124] =--符文1
{
	name = "無道瘋魔·群魔",
	icon = 703,
	brief_desc = "進入狂暴狀態，防禦提高，效果會額外影響最多10名友方玩家，可以在被控制狀態下釋放並且驅散自身控制效果",
	detail_desc = "使自己和友方玩家物理和法術防禦提高150%,持續6秒",
}
player_skill_desc[125] =--符文2
{
	name = "無道瘋魔·天道",
	icon = 706,
	brief_desc = "進入狂暴狀態，防禦提高，效果持續時間延長，可以在被控制狀態下釋放並且驅散控制效果",
	detail_desc = "物理防禦提高<%= math.floor(expr_for_status(status_param(87).state_param[1]))%>點,法術防禦提高<%= math.floor(expr_for_status(status_param(87).state_param[2]))%>點,持續<%= expr_for_status(status_param(87).state_time)/1000 %>秒",
}
player_skill_desc[126] = --符文3
{
	name = "無道瘋魔·長生",
	icon = 704,
	brief_desc = "破釜沉舟，不再提高防禦但屹立不倒，並提高暴擊幾率，可以在被控制狀態下釋放並且驅散控制效果",
	detail_desc = "生命值最低將為1，不會死亡，持續<%= expr_for_status(status_param(88).state_time)/1000 %>秒",
}
--测试用
player_skill_desc[110] =
{
	name = "無道瘋魔(110)",
	icon = 111,
	brief_desc = "(110)釋放怒火，免疫所有控制狀態",
	-- detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻击 + <%=phy_dmg_point()%>点物理伤害",
}
--测试用2
player_skill_desc[117] =
{
	name = "無道瘋魔(117)",
	icon = 105,
	brief_desc = "(117)釋放怒火，免疫所有控制狀態",
	-- detail_desc = "头脑中只有杀意,除了杀戮以外不会被其他因素影响,仿佛蚩尤再世",
}
player_skill_desc[28] =
{
	name = "熾焰火海",
	icon = 111,
	short_desc = "熾焰火海（大範圍群體攻擊）",
	brief_desc = "重創附近敵人，僅對怪物有效",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
--弓手技能
player_skill_desc[34] =
{
	name = "雷擊閃",
	icon = 105,
	short_desc = "雷擊閃（濺射普通攻擊）",
	brief_desc = "攻擊當前目標並濺射附近敵人（玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(phy_dmg_scale()*2)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*2)%>點物理傷害",
}

player_skill_desc[35] =
{
	name = "雷光焦獄",
	icon = 108,
	short_desc = "雷光焦獄（蓄力群體攻擊）",
	brief_desc = "蓄力一箭，攻擊目標及其附近敵人並減速50%",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[145] = --符文1
{
	name = "雷光焦獄·冰寒",
	icon = 705,
	brief_desc = "蓄力攻擊，放置雷電和寒冰陷阱，驅散敵人增益效果並使其減速",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害，減速50%，持續4秒",
}
player_skill_desc[146] = --符文2
{
	name = "雷光焦獄·猛毒",
	icon = 703,
	brief_desc = "蓄力攻擊敵人，使其定身2.5秒",
	detail_desc = "造成<%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[147] = --符文3
{
	name = "雷光焦獄·眩光",
	icon = 704,
	brief_desc = "蓄力攻擊單個敵人，使其3秒內減速50%並無法攻擊或施放技能",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[36] =
{
	name = "九霄風雷",
	icon = 117,
	short_desc = "九霄風雷（群體攻擊）",
	brief_desc = "施放大範圍箭雨，對敵人持續造成傷害",
	detail_desc = "共計造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[148] = --符文1
{
	name = "九霄風雷·凍雨",
	icon = 705,
	brief_desc = "施放大範圍寒冰箭雨，使敵人持續受傷並減速30%",
	detail_desc = "共計造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[149] = --符文2
{
	name = "九霄風雷·風暴",
	icon = 704,
	brief_desc = "施放大範圍箭雨，並延長箭雨的存在時間2秒",
	detail_desc = "共計造成 <%=math.floor(phy_dmg_scale()*1.65)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*1.65)%>點物理傷害",
}
player_skill_desc[150] = --符文3
{
	name = "九霄風雷·毒牙",
	icon = 703,
	brief_desc = "施放大範圍腐蝕箭雨，使敵人持續受傷並降低其30%防禦力",
	detail_desc = "共計造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[37] =
{
	name = "紫蓋騰龍",
	icon = 118,
	short_desc = "紫蓋騰龍（提升攻擊技能）",
	brief_desc = "聚精會神，提升自己的攻擊，持續<%= expr_for_status(status_param(101).state_time)/1000 %>秒",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(101).state_param[1]))%>點",
}
player_skill_desc[151] = --符文1
{
	name = "紫蓋騰龍·雷爆",
	icon = 705,
	brief_desc = "提升攻擊，每次攻擊降低目標50%移動速度",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(101).state_param[1]))%>點",
}
player_skill_desc[152] = --符文2
{
	name = "紫蓋騰龍·隱遁",
	icon = 706,
	brief_desc = "攻擊提升效果減弱，但提高直覺，閃避所有攻擊",
	detail_desc = "物理攻擊提高<%=math.floor(expr_for_status(status_param(101).state_param[1]))%>點，持續<%= expr_for_status(status_param(101).state_time)/1000 %>秒，自身無敵持續3秒",
}
player_skill_desc[153] = --符文3
{
	name = "紫蓋騰龍·蛟牙",
	icon = 704,
	brief_desc = "提升攻擊，增益持續期間，攻擊會延長效果持續時間",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(102).state_param[1]))%>點，每次攻擊效果延長1秒，最多延長9秒",
}
player_skill_desc[38] =
{
	name = "四靈誅邪",
	icon = 129,
	short_desc = "四靈誅邪（大範圍群體攻擊）",
	brief_desc = "轟擊附近敵人，僅對怪物有效",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
--枪客技能
player_skill_desc[29] =
{
	name = "弒鬼神",
	icon = 103,
	short_desc = "弒鬼神（濺射普通攻擊）",
	brief_desc = "攻擊目標，濺射附近怪物（敵方玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(mg_dmg_scale()*4)%>%法術攻擊 + <%=math.floor(mg_dmg_point()*4)%>點法術傷害",
}

player_skill_desc[30] =
{
	name = "斷天白虹",
	icon = 120,
	short_desc = "斷天白虹（定身衝鋒攻擊）",
	brief_desc = "持槍衝鋒，使擊中的敵人身形定住<%= expr_for_status(status_param(107).state_time)/1000 %>秒，4秒內無法使用回天丹",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}

player_skill_desc[136] = --符文1
{
	name = "斷天白虹·黃沙",
	icon = 705,
	brief_desc = "持槍衝鋒，使敵人定身4秒，4秒內無法使用回天丹",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}

player_skill_desc[137] = --符文2
{
	name = "斷天白虹·絞殺",
	icon = 707,
	brief_desc = "持槍衝鋒，使敵人定身3秒，4秒內無法使用回天丹，下次技能的輸出提高<%= (expr_for_status(status_param(108).state_param[1])-1)*100 %>%",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[138] = --符文3
{
	name = "斷天白虹·巽風",
	icon = 704,
	brief_desc = "持槍衝鋒，使敵人定身3秒，4秒內無法使用回天丹，自身的移動速度提升<%= expr_for_status(status_param(113).state_param[1])/10 %>%，持續<%= expr_for_status(status_param(113).state_time)/1000%>秒",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}


player_skill_desc[31] =
{
	name = "萬里黃沙",
	icon = 126,
	short_desc = "萬里黃沙（衝鋒群體攻擊）",
	brief_desc = "連續衝鋒，對範圍內的敵人造成傷害，衝鋒期間處於無敵狀態，自身回復<%= math.floor(expr_for_status(status_param(299).state_param[1]))%>點生命",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}

player_skill_desc[139] = --符文1
{
	name = "萬里黃沙·困龍",
	icon = 704,
	brief_desc = "揚沙使敵人持續受傷，自身在3秒內免疫控制，自身回復<%= math.floor(expr_for_status(status_param(299).state_param[1]))%>點生命",
	detail_desc = "造成 <%=mg_dmg_scale()/2%>%法術攻擊 + <%=mg_dmg_point()/2%>點法術傷害",
}

player_skill_desc[140] = --符文2
{
	name = "萬里黃沙·沙塵",
	icon = 706,
	brief_desc = "持槍連續衝鋒，並聚集沙塵形成護盾保護自己，自身回復<%= math.floor(expr_for_status(status_param(299).state_param[1]))%>點生命",
	detail_desc = "護盾吸收<%= math.floor(expr_for_status(status_param(127).state_param[1]))%>點傷害,持續<%= expr_for_status(status_param(127).state_time)/1000%>秒",
}

player_skill_desc[141] = --符文3
{
	name = "萬里黃沙·魔殤",
	icon = 707,
	brief_desc = "持槍連續衝鋒後造成額外一擊，自身回復<%= math.floor(expr_for_status(status_param(299).state_param[1]))%>點生命",
	detail_desc = "造成 <%=mg_dmg_scale()*0.6%>%法術攻擊 + <%=mg_dmg_point()*0.6%>點法術傷害",
}

player_skill_desc[32] =
{
	name = "掠影流光",
	icon = 112,
	short_desc = "掠影流光（提升攻擊技能）",
	brief_desc = "提振罡氣，增強攻擊，期間攻擊若不暴擊則必定破招，持續<%= expr_for_status(status_param(110).state_time)/1000 %>秒",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(110).state_param[1]))%>點",
}

player_skill_desc[142] = --符文1
{
	name = "掠影流光·狂暴",
	icon = 707,
	brief_desc = "提升攻擊，期間攻擊若不暴擊則必定破招，增加自身當前屬性值40%的暴擊傷害",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(110).state_param[1]))%>點",
}
player_skill_desc[143] = --符文2
{
	name = "掠影流光·強擊",
	icon = 706,
	brief_desc = "提振罡氣，增強攻擊，期間攻擊若不暴擊則必定破招，傷害加深增加35%",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(110).state_param[1]))%>點",
}
player_skill_desc[144] = --符文3
{
	name = "掠影流光·神佑",
	icon = 704,
	brief_desc = "提升攻擊時，每次受傷將延長增益效果時間，期間攻擊若不暴擊則必定破招",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(111).state_param[1]))%>點，每次受到傷害，增益效果延長1s，最多延長<%= math.floor(expr_for_status(status_param(111).state_param[2]))%>秒",
}
player_skill_desc[33] =
{
	name = "十面埋伏",
	icon = 110,
	short_desc = "十面埋伏（大範圍群體攻擊）",
	brief_desc = "重創附近敵人，僅對怪物有效",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
--锤子技能
player_skill_desc[482] =
{
	name = "無為破",
	icon = 3057,
	short_desc = "無為破（濺射普通攻擊）",
	brief_desc = "攻擊目標，濺射附近怪物（敵方玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(phy_dmg_scale()*3.5)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*4)%>點物理傷害",
}
player_skill_desc[486] =
{
	name = "裂風化勁",
	icon = 3059,
	short_desc = "裂風化勁（眩暈群體攻擊）",
	brief_desc = "向前突進，使敵人眩暈<%= expr_for_status(status_param(195).state_time)/1000 %>秒，突進過程中自身免疫控制",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[490] =
{
	name = "裂風化勁·破胄",
	icon = 704,
	brief_desc = "揮錘突進，使敵人眩暈<%= expr_for_status(status_param(195).state_time)/1000 %>秒，附帶<%= expr_for_status(status_param(198).state_time)/1000 %>秒目標<%= -expr_for_status(status_param(198).state_param[1])/10 %>%傷害加深效果，突進過程中自身免疫控制",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[491] =
{
	name = "裂風化勁·蠻錘",
	icon = 705,
	brief_desc = "揮錘突進，使敵人眩暈時間延長至<%= expr_for_status(status_param(195).state_time)/1000 %>秒，突進過程中自身免疫控制",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[492] =
{
	name = "裂風化勁·風襲",
	icon = 707,
	brief_desc = "揮錘突進，使敵人眩暈<%= expr_for_status(status_param(195).state_time)/1000 %>秒，並在4秒內提高自身全元素攻擊50%，突進過程中自身免疫控制",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[487] =
{
	name = "無量煉獄",
	icon = 3058,
	short_desc = "無量煉獄（群體攻擊）",
	brief_desc = "撕裂大地，對敵人造成一次傷害並在4秒內減速50%",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[493] =
{
	name = "無量煉獄·地罰",
	icon = 707,
	brief_desc = "造成一次傷害並在4秒內減速50%，附加4秒流血效果，每次造成25%物理攻擊的真實傷害，目標攻擊時流血效果會延長最多4秒",
	detail_desc = "共計造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[494] =
{
	name = "無量煉獄·真獄",
	icon = 704,
	brief_desc = "撕裂大地，對敵人造成的傷害增加並在4秒內減速50%",
	detail_desc = "共計造成 <%=math.floor(phy_dmg_scale())%>%物理攻擊 + <%=math.floor(phy_dmg_point())%>點物理傷害",
}
player_skill_desc[495] =
{
	name = "無量煉獄·鎖魂",
	icon = 705,
	brief_desc = "撕裂大地，對敵人造成多次傷害，並將減速強化為3秒定身",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[488] =
{
	name = "元陽霸體",
	icon = 3060,
	short_desc = "元陽霸體（提升防禦技能）",
	brief_desc = "獲得守護之力，減少受到的傷害，每次受到傷害增加15%自身攻擊力，最多增加4次，釋放時驅散控制效果",
	detail_desc = "每次受到的傷害降低<%= expr_for_status(status_param(197).state_param[1])/10 %>%，持續<%= expr_for_status(status_param(197).state_time)/1000 %>秒，無次數限制",
}
player_skill_desc[496] =
{
	name = "元陽霸體·涅槃",
	icon = 703,
	brief_desc = "減少受到的傷害，每次受到傷害增加15%自身攻擊力，最多增加4次，每次受到傷害增加攻擊的時間延長1秒，最多延長6秒，釋放時驅散控制效果",
	detail_desc = "每次受到的傷害降低<%= expr_for_status(status_param(197).state_param[1])/10 %>%，持續<%= expr_for_status(status_param(197).state_time)/1000 %>秒，無次數限制",
}
player_skill_desc[497] =
{
	name = "元陽霸體·破空",
	icon = 704,
	brief_desc = "獲得守護之力，減少受到的傷害，每次受到傷害增加15%自身攻擊力，最多增加4次，並在6秒內免疫控制，釋放時驅散控制效果",
	detail_desc = "每次受到的傷害降低<%= expr_for_status(status_param(197).state_param[1])/10 %>%，持續<%= expr_for_status(status_param(197).state_time)/1000 %>秒，無次數限制",
}
player_skill_desc[498] =
{
	name = "元陽霸體·壁壘",
	icon = 706,
	brief_desc = "獲得守護之力，減少受到的傷害，每次受到傷害增加15%自身攻擊力並延長減傷效果，攻擊最多增加4次，減傷最多延長6秒，釋放時驅散控制效果",
	detail_desc = "每次受到的傷害降低<%= expr_for_status(status_param(204).state_param[1])/10 %>%，持續<%= expr_for_status(status_param(204).state_time)/1000 %>秒，無次數限制",
}
player_skill_desc[489] =
{
	name = "聖靈破魂",
	icon = 3061,
	short_desc = "聖靈破魂（大範圍群體攻擊）",
	brief_desc = "碾壓附近敵人，僅對怪物有效",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
--扇子技能
player_skill_desc[587] =
{
	name = "火炎珠",
	icon = 4967,
	short_desc = "火炎珠（濺射普通攻擊）",
	brief_desc = "攻擊當前目標並濺射附近敵人（玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(mg_dmg_scale()*3.4)%>%法術攻擊 + <%=math.floor(mg_dmg_point()*3.4)%>點法術傷害",
}

player_skill_desc[591] =
{
	name = "烈焰衝擊",
	icon = 4968,
	short_desc = "烈焰衝擊（減速群體攻擊）",
	brief_desc = "火柱沖天而起，攻擊區域內敵人並減速50%",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[592] = --符文1
{
	name = "烈焰衝擊·焚天",
	icon = 704,
	brief_desc = "攻擊區域內敵人並減速50%，單次傷害降低，傷害次數增加到4次",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[593] =  --符文2
{
	name = "烈焰衝擊·熾焰",
	icon = 707,
	brief_desc = "攻擊區域內敵人並減速50%，增加傷害",
	detail_desc = "造成 <%=mg_dmg_scale()*1.5%>%法術攻擊 + <%=mg_dmg_point()*1.5%>點法術傷害",
}
player_skill_desc[594] =  --符文3
{
	name = "烈焰衝擊·業火",
	icon = 703,
	brief_desc = "攻擊區域內敵人並造成眩暈，群攻人數上限下降",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[595] =
{
	name = "火鳳燎原",
	icon = 4969,
	short_desc = "火鳳燎原（高傷害群體攻擊）",
	brief_desc = "在前方大範圍召喚烈焰，對區域內敵人持續造成傷害",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[596] = --符文1
{
	name = "火鳳燎原·烈火",
	icon = 705,
	brief_desc = "在前方大範圍召喚烈焰，對區域內敵人持續造成傷害，傷害次數提升至5次，單次傷害下降",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[597] = --符文2
{
	name = "火鳳燎原·引燃",
	icon = 703,
	brief_desc = "在前方大範圍召喚烈焰，對區域內敵人持續造成傷害並減速50%，持續3秒",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[598] = --符文3
{
	name = "火鳳燎原·灼燒",
	icon = 704,
	brief_desc = "在前方大範圍召喚烈焰，對區域內敵人持續造成傷害並附加灼燒效果，持續6秒，灼燒每次造成25%法術攻擊的真實傷害",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[599] =
{
	name = "灼熱氣息",
	icon = 4970,
	short_desc = "灼熱氣息（加攻技能）",
	brief_desc = "提升自己的攻擊，持續<%= expr_for_status(status_param(259).state_time)/1000 %>秒",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(259).state_param[1]))%>點",
}
player_skill_desc[600] = --符文1
{
	name = "灼熱氣息·陽焱",
	icon = 706,
	brief_desc = "提升更多的攻擊，持續<%= expr_for_status(status_param(259).state_time)/1000 %>秒",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(259).state_param[1]))%>點",
}
player_skill_desc[601] = --符文2
{
	name = "灼熱氣息·炎煞",
	icon = 704,
	brief_desc = "提升自己的攻擊，持續<%= expr_for_status(status_param(259).state_time)/1000 %>秒，12秒內技能每命中一個目標一次都會回復生命",
	detail_desc = "法術攻擊提高<%= math.floor(expr_for_status(status_param(259).state_param[1]))%>點，每次回復<%= math.floor(expr_for_status(status_param(260).state_param[1])*1.5)%>生命",
}
player_skill_desc[602] = --符文3
{
	name = "灼熱氣息·日曜",
	icon = 703,
	brief_desc = "召喚烈焰保護自己，持續<%= expr_for_status(status_param(261).state_time)/1000 %>秒，期間自身無敵且不能行動，並對附近敵人造成大量傷害",
	detail_desc = "五次灼燒共造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}
player_skill_desc[603] =
{
	name = "炎陽焚天",
	icon = 4971,
	short_desc = "炎陽焚天（大範圍群體攻擊）",
	brief_desc = "傷害附近敵人，僅對怪物生效",
	detail_desc = "造成 <%=mg_dmg_scale()%>%法術攻擊 + <%=mg_dmg_point()%>點法術傷害",
}

--枪盾技能
player_skill_desc[762] =
{
	name = "水龍吟",
	icon = 7235,
	short_desc = "水龍吟（濺射普通攻擊）",
	brief_desc = "攻擊當前目標並濺射附近敵人（玩家免疫）",
	detail_desc = "四次攻擊共造成 <%=math.floor(phy_dmg_scale()*3.7)%>%物理攻擊 + <%=math.floor(phy_dmg_point()*3.7)%>點物理傷害",
}

player_skill_desc[766] =
{
	name = "冰戟",
	icon = 7236,
	short_desc = "冰戟（減速群體攻擊）",
	brief_desc = "冰戟從天而降，攻擊區域內敵人造成傷害和50%減速，2秒後再次爆炸造成傷害和眩暈",
	detail_desc = "兩段傷害，共造成 <%=phy_dmg_scale()/2%>%物理攻擊 + <%=phy_dmg_point()/2%>點物理傷害",
}
player_skill_desc[767] = --符文1
{
	name = "冰戟·護盾",
	icon = 7240,
	brief_desc = "召喚冰戟的同時給自身增加生命上限20%的護盾",
	detail_desc = "兩段傷害，共造成 <%=phy_dmg_scale()/2%>%物理攻擊 + <%=phy_dmg_point()/2%>點物理傷害",
}
player_skill_desc[768] =  --符文2
{
	name = "冰戟·嚴寒",
	icon = 7241,
	brief_desc = "攻擊區域內敵人並減速50%，增加傷害",
	detail_desc = "兩段傷害，共造成 <%=phy_dmg_scale()/2*1.5%>%物理攻擊 + <%=phy_dmg_point()/2*1.5%>點物理傷害",
}
player_skill_desc[769] =  --符文3
{
	name = "冰戟·眩暈",
	icon = 7242,
	brief_desc = "爆炸後造成的眩暈時間延長1s",
	detail_desc = "兩段傷害，共造成 <%=phy_dmg_scale()/2%>%物理攻擊 + <%=phy_dmg_point()/2%>點物理傷害",
}
player_skill_desc[770] =
{
	name = "極寒領域",
	icon = 7237,
	short_desc = "極寒領域（高傷害群體攻擊）",
	brief_desc = "在自身周圍召喚寒冰，對周圍敵人造成傷害並根據命中人數給自身增加護盾，可疊加",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[771] = --符文1
{
	name = "極寒領域·護體",
	icon = 7243,
	brief_desc = "提高護盾吸收傷害能力",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[772] = --符文2
{
	name = "極寒領域·冰霜",
	icon = 7244,
	brief_desc = "提高技能的傷害",
	detail_desc = "造成 <%=phy_dmg_scale()*1.5%>%物理攻擊 + <%=phy_dmg_point()*1.5%>點物理傷害",
}
player_skill_desc[773] = --符文3
{
	name = "極寒領域·急凍",
	icon = 7245,
	brief_desc = "被冰風暴命中的目標會眩暈1.5秒",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}
player_skill_desc[774] =
{
	name = "霜語者",
	icon = 7238,
	short_desc = "霜語者（加攻技能）",
	brief_desc = "提升自己的攻擊，同時每次普攻或技能命中敵人都會給自身增加護盾，可疊加，持續6秒",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(318).state_param[1]))%>點",
}
player_skill_desc[775] = --符文1
{
	name = "霜語者·霸體",
	icon = 7246,
	brief_desc = "提升自己的攻擊，同時每次普攻或技能命中敵人都會給自身增加護盾，可疊加，期間免疫控制，持續6秒",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(318).state_param[1]))%>點",
}
player_skill_desc[776] = --符文2
{
	name = "霜語者·寒冰",
	icon = 7247,
	brief_desc = "提升更多的攻擊，同時每次普攻或技能命中敵人都會給自身增加護盾，可疊加，持續6秒",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(318).state_param[1]))%>點",
}
player_skill_desc[777] = --符文3
{
	name = "霜語者·護體",
	icon = 7248,
	brief_desc = "提升自己的攻擊，同時每次普攻或技能命中敵人都會給自身增加更多護盾，可疊加，持續6秒",
	detail_desc = "物理攻擊提高<%= math.floor(expr_for_status(status_param(318).state_param[1]))%>點，護盾效果提升50%",
}
player_skill_desc[778] =
{
	name = "水嘯龍吟",
	icon = 7239,
	short_desc = "水嘯龍吟（大範圍群體攻擊）",
	brief_desc = "傷害附近敵人，僅對怪物生效",
	detail_desc = "造成 <%=phy_dmg_scale()%>%物理攻擊 + <%=phy_dmg_point()%>點物理傷害",
}

--爵位技能 begin
player_skill_desc[114] =
{
	name = "破咒術",
	icon = 1142,
	brief_desc = "使用免疫控制",
	detail_desc = "使用後驅散定身、凍結、眩暈類狀態，並在[ffffff]<%= expr_for_status(status_param(64).state_time)/1000 %>[-]秒內免疫上述效果",
}
player_skill_desc[115] =
{
	name = "太極門",
	icon = 1141,
	brief_desc = "使用免疫控制",
	detail_desc = "使用後驅散定身、凍結、眩暈類狀態，獲得一個吸收[ffffff]<%= math.floor(expr_for_status(status_param(65).state_param[1]))%>[-]點傷害的護盾",
}
player_skill_desc[116] =
{
	name = "神形法",
	icon = 1138,
	brief_desc = "使用免疫控制",
	detail_desc = "使用後驅散定身、凍結、眩暈類狀態，移動速度提升[ffffff]<%= expr_for_status(status_param(66).state_param[1])/10 %>%[-]",
}
--爵位技能 end

--战车技能 begin
player_skill_desc[438] =	--霹雳战车攻击技能
{
	name = "霹靂彈",
	icon = 2145,
	brief_desc = "對群體造成火焰傷害並附帶灼燒效果",
	detail_desc = "冷卻時間<%=cool_down_time()%>s、釋放距離18m、對單體目標造成<%=phy_dmg_scale('process')%>%火焰傷害，並使周圍3個目標受到<%=phy_dmg_scale('subobj')%>%火焰傷害，持續3s灼燒",
}
player_skill_desc[439] =
{
	name = "減傷整頓",
	icon = 2146,
	brief_desc = "群體免控技能",
	detail_desc = "冷卻時間<%=cool_down_time()%>s、使用後驅散自身30米內隨機20名友方成員定身、凍結、眩暈類狀態，並在<%=expr_for_status(status_param(176).state_time)/1000%>s內獲得<%=expr_for_status(status_param(176).state_param[1])/10%>%減傷效果並免疫控制",
}
player_skill_desc[440] =
{
	name = "攻擊鼓舞",
	icon = 2147,
	brief_desc = "群體增益技能",
	detail_desc = "冷卻時間<%=cool_down_time()%>s、使用後使30m內隨機20名友方成員獲得30%當前攻擊加成，持續30s",
}
player_skill_desc[643] =	--投石车瞄准
{
	name = "瞄準",
	icon = 5681,
	brief_desc = "開啟瞄準模式",
	detail_desc = "最大瞄準距離<%=expr_for_status(status_param(293).state_param[1])%>米，升級戰車可以提升瞄準距離",
}
player_skill_desc[653] =	--投石车开炮_伪
{
	name = "投石",
	icon = 5683,
	brief_desc = "向目標地點出巨石，瞄準狀態下才可以使用",
	detail_desc = "對半徑12米的敵方造成100%物理攻擊+最大生命50%的傷害，冷卻時間<%=cool_down_time()%>s",
}
player_skill_desc[644] =	--投石车瞄准
{
	name = "關閉瞄準",
	icon = 5682,
	brief_desc = "關閉瞄準模式",
	detail_desc = "關閉瞄準模式",
}
player_skill_desc[646] =	--投石车开炮
{
	name = "開炮",
	icon = 5683,
	brief_desc = "開炮",
	detail_desc = "開炮",
}
--战车技能 end

--变身技能
player_skill_desc[617] =	--霹雳战车攻击技能
{
	name = "霹靂彈",
	icon = 1142,
	brief_desc = "對群體造成火焰傷害並附帶灼燒效果",
	detail_desc = "火焰傷害，持續3s灼燒",
}
player_skill_desc[635] =	--霹雳战车攻击技能
{
	name = "霹靂彈",
	icon = 1142,
	brief_desc = "對群體造成火焰傷害並附帶灼燒效果",
	detail_desc = "火焰傷害，持續3s灼燒",
}

player_skill_desc[817] =	--皇帝_驱逐
{
	name = "靈風",
	icon = 1138,
	brief_desc = "提高50%移動速度，持續4秒",
	detail_desc = "提高50%移動速度，持續4秒",
}
player_skill_desc[818] =	--皇帝_驱逐
{
	name = "寒氣之環",
	icon = 7237,
	brief_desc = "使自身6米內的敵方定身3秒",
	detail_desc = "使自身6米內的敵方定身3秒",
}
player_skill_desc[819] =	--皇帝_驱逐
{
	name = "逍遙遊",
	icon = 1142,
	brief_desc = "使自身3秒內免疫負面效果",
	detail_desc = "使自身3秒內免疫負面效果",
}
player_skill_desc[820] =	--皇帝_驱逐
{
	name = "咒箭",
	icon = 108,
	brief_desc = "使指定目標暈眩4秒",
	detail_desc = "使指定目標暈眩4秒",
}
return player_skill_desc
