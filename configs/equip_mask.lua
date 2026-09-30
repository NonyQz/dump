--@equip_mask
--[[equip_mask
物品描述信息
]]

local item_desc = {}
--[[equip_mask
物品装备部位
]]
local equip_mask = {}

equip_mask[0] = "兵器"
equip_mask[1] = "鎧甲"
equip_mask[2] = "頭部"
equip_mask[3] = "腰部"
equip_mask[4] = "腿部"
equip_mask[5] = "腳部"
equip_mask[6] = "頸部"
equip_mask[7] = "戒指"
equip_mask[8] = "馬鞭"
equip_mask[9] = "馬鎧"
equip_mask[10] = "馬轡"
equip_mask[11] = "馬鞍"
equip_mask[12] = "馬鐙"
equip_mask[13] = "馬掌"
-- equip_mask[14] = "翅膀"
-- equip_mask[15] = "副手"

item_desc.equip_mask = equip_mask
item_desc.id = 0

--[[PROFTYPE_MASK
职位信息
]]

local prop_mask = {}

prop_mask[-1] = "全部"
prop_mask[0] = "標準"
prop_mask[1] = "破軍"
prop_mask[2] = "蒼龍"
prop_mask[3] = "天煌"
prop_mask[4] = "九曜"
prop_mask[5] = "荒城"
prop_mask[6] = "赤離"
prop_mask[7] = "玄戈"
prop_mask[8] = "玩家預留8"
prop_mask[9] = "玩家預留9"
prop_mask[10] = "預留10"

-- prop_mask[11] = "预留11"
-- prop_mask[12] = "预留12"
-- prop_mask[13] = "预留13"
-- prop_mask[14] = "预留14"
-- prop_mask[15] = "预留15"
-- prop_mask[16] = "预留16"
-- prop_mask[17] = "预留17"
-- prop_mask[18] = "预留18"
-- prop_mask[19] = "预留19"
-- prop_mask[20] = "预留20"
-- prop_mask[21] = "怪物"

item_desc.prop_mask = prop_mask
item_desc.id = 1

------------------------------------------
local item_color = 
{
	[0] = "[ffffff]",
	[1] = "[ffffff]",--品质1颜色
	[2] = "[0077ff]",--品质2颜色
	[3] = "[ffd926]",--品质3颜色
	[4] = "[00e104]",--品质4颜色
	[5] = "[882bf1]",--品质5颜色
	[6] = "[ffd700]",--品质6颜色ff9900橙色
	[7] = "[ffd700]",--品质7颜色
	[8] = "[FFFFFF]",--品质8颜色
	[9] = "[EED5B7]",--战斗力文字颜色
	[10] = "[AAAAAA]",--套装未激活属性灰色
	[11] = "[00e104]",--装备相关功能消耗道具满足数量需求时数字显示绿色
	[12] = "[FF0000]",--装备相关功能消耗道具不满足数量需求时数字显示红色
	[100] = "[ffffff]",--内装专用
	[101] = "[ffffff]",--品质1颜色,内装专用
	[102] = "[0077ff]",--品质2颜色,内装专用
	[103] = "[ffd926]",--品质3颜色,内装专用
	[104] = "[00e104]",--品质4颜色,内装专用
	[105] = "[882bf1]",--品质5颜色,内装专用
	[106] = "[ffd700]",--品质6颜色,内装专用
	[107] = "[ffd700]",--品质7颜色,内装专用
	[108] = "[882bf1]",--品质8颜色,内装专用
}

item_desc.color = item_color


--装备品阶
local item_quality = 
{
	[1] = "一品",
	[2] = "二品",
	[3] = "三品",
	[4] = "四品",
	[5] = "五品",
	[6] = "六品",--预留
	[7] = "七品",--预留
	[8] = "八品",--预留
}

item_desc.quality = item_quality

--装备名称前缀
local item_Prefix = 
{
	[1] = "",		 --品质1装备无前缀
	[2] = "精良·",
	[3] = "優秀·",
	[4] = "卓越·",
	[5] = "無雙·",
	[6] = "傳奇·",--预留
	[7] = "傳說·",--预留
	[8] = "傳說·",--预留
}

item_desc.Prefix = item_Prefix
--------------------------------------
--附加属性类型	数值定义	描述文字
local addon = {}
addon[1] = {
	name = "生命",
	value = "+%d",
	fight = 1,
	mainelementary = {
		[1] = 1,--刀
		[2] = 1,--枪
		[3] = 1,--杖
		[4] = 1,--弓
		[5] = 1,--锤
		[6] = 1,--扇
		[7] = 1,--枪盾
	}
}
addon[2] = {
	name = "法術",
	value = "+%d",
	fight = 1,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[3] = {
	name = "生命",
	value = "+%d%%",
	fight = 3500,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[4] = {
	name = "法術",
	value = "+%d%%",
	fight = 3500,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[5] = {
	name = "物理攻擊",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 25,
		[2] = 0,
		[3] = 0,
		[4] = 25,
		[5] = 25,
		[6] = 0,
		[7] = 25,
	}
}
addon[6] = {
	name = "法術攻擊",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 0,
		[2] = 25,
		[3] = 25,
		[4] = 0,
		[5] = 0,
		[6] = 25,
		[7] = 0,
	}
}
addon[7] = {
	name = "物理攻擊",
	value = "+%d%%",
	fight = 3500,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[8] = {
	name = "法術攻擊",
	value = "+%d%%",
	fight = 3500,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[9] = {
	name = "物理防禦",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 80,
		[2] = 80,
		[3] = 80,
		[4] = 80,
		[5] = 80,
		[6] = 80,
		[7] = 80,
	}
}
addon[10] = {
	name = "法術防禦",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 80,
		[2] = 80,
		[3] = 80,
		[4] = 80,
		[5] = 80,
		[6] = 80,
		[7] = 80,
	}
}
addon[11] = {
	name = "物理防禦",
	value = "+%d%%",
	fight = 2000,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[12] = {
	name = "法術防禦",
	value = "+%d%%",
	fight = 2000,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[13] = {
	name = "傷害加深",
	value = "+%f%%",
	fight = 160,
	valueString = function(v) return string.format("+%f%%", v/10) end,
	mainelementary = {
		[1] = 160,
		[2] = 160,
		[3] = 160,
		[4] = 160,
		[5] = 160,
		[6] = 160,
		[7] = 160,
	}
}
addon[14] = {
	name = "傷害減免",
	value = "+%f%%",
	fight = 160,
	valueString = function(v) return string.format("+%f%%", v/10) end,
	mainelementary = {
		[1] = 160,
		[2] = 160,
		[3] = 160,
		[4] = 160,
		[5] = 160,
		[6] = 160,
		[7] = 160,
	}
}
addon[15] = {
	name = "暴擊等級",
	value = "+%d",
	--value = "+%f%%",
	--显示为百分数,支持小数点后显示
	fight = 15,
	mainelementary = {
		[1] = 10,
		[2] = 10,
		[3] = 10,
		[4] = 10,
		[5] = 10,
		[6] = 10,
		[7] = 10,
	}
}
addon[16] = {
	name = "暴擊傷害",
	value = "+%.1f%%",
	fight = 200,
	valueString = function(v) return string.format("+%.1f%%", v/10) end,
	mainelementary = {
		[1] = 200,
		[2] = 200,
		[3] = 200,
		[4] = 200,
		[5] = 200,
		[6] = 200,
		[7] = 200,
	}
}
addon[17] = {
	name = "暴擊抵抗等級",
	value = "+%d",
	--value = "+%f%%",
	fight = 15,
	mainelementary = {
		[1] = 10,
		[2] = 10,
		[3] = 10,
		[4] = 10,
		[5] = 10,
		[6] = 10,
		[7] = 10,
	}
}
addon[18] = {
	name = "暴擊傷害減免",
	value = "+%f%%",
	fight = 200,
	valueString = function(v) return string.format("+%f%%", v/10) end,
	mainelementary = {
		[1] = 200,
		[2] = 200,
		[3] = 200,
		[4] = 200,
		[5] = 200,
		[6] = 200,
		[7] = 200,
	}
}
addon[19] = {
	name = "風元素攻擊",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 20,
		[2] = 36,
		[3] = 20,
		[4] = 20,
		[5] = 36,
		[6] = 20,
		[7] = 20,
	}
}
addon[20] = {
	name = "火元素攻擊",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 36,
		[2] = 20,
		[3] = 20,
		[4] = 20,
		[5] = 20,
		[6] = 36,
		[7] = 20,
	}
}
addon[21] = {
	name = "水元素攻擊",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 20,
		[2] = 20,
		[3] = 36,
		[4] = 20,
		[5] = 20,
		[6] = 20,
		[7] = 36,
	}
}
addon[22] = {
	name = "雷元素攻擊",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 20,
		[2] = 20,
		[3] = 20,
		[4] = 36,
		[5] = 20,
		[6] = 20,
		[7] = 20,
	}
}
addon[23] = {
	name = "風元素防禦",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 24,
		[2] = 24,
		[3] = 24,
		[4] = 24,
		[5] = 24,
		[6] = 24,
		[7] = 24,
	}
}
addon[24] = {
	name = "火元素防禦",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 24,
		[2] = 24,
		[3] = 24,
		[4] = 24,
		[5] = 24,
		[6] = 24,
		[7] = 24,
	}
}
addon[25] = {
	name = "水元素防禦",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 24,
		[2] = 24,
		[3] = 24,
		[4] = 24,
		[5] = 24,
		[6] = 24,
		[7] = 24,
	}
}
addon[26] = {
	name = "雷元素防禦",
	value = "+%d",
	fight = 15,
	mainelementary = {
		[1] = 24,
		[2] = 24,
		[3] = 24,
		[4] = 24,
		[5] = 24,
		[6] = 24,
		[7] = 24,
	}
}
addon[27] = {
	name = "移動速度",
	value = "+%d",
	fight = 1,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[28] = {
	name = "移動速度",
	value = "+%d%%",
	fight = 1,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[29] = {
	name = "經驗加成",
	value = "+%d%%",
	fight = 1,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[30] = {
	name = "破招等級",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 20,
		[2] = 20,
		[3] = 20,
		[4] = 20,
		[5] = 20,
		[6] = 20,
		[7] = 20,
	}
}
addon[31] = {
	name = "破招",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[32] = {
	name = "格擋等級",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 20,
		[2] = 20,
		[3] = 20,
		[4] = 20,
		[5] = 20,
		[6] = 20,
		[7] = 20,
	}
}
addon[33] = {
	name = "格擋",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[34] = {
	name = "全元素傷害",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}
addon[35] = {
	name = "全元素防禦",
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[36] = {
	name = "基礎生命",
	value = "+%d%%",
	fight = 10,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[37] = {
	name = "基礎物理攻擊",
	value = "+%d%%",
	fight = 10,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[38] = {
	name = "基礎法術攻擊",
	value = "+%d%%",
	fight = 10,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[39] = {
	name = "基礎物理防禦",
	value = "+%d%%",
	fight = 10,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[40] = {
	name = "基礎法術防禦",
	value = "+%d%%",
	fight = 10,
	valueString = function(v) return string.format("+%d%%", v/10) end,
	mainelementary = {
		[1] = 1,
		[2] = 1,
		[3] = 1,
		[4] = 1,
		[5] = 1,
		[6] = 1,
		[7] = 1,
	}
}

addon[41] = {
	name = "攻擊",--装备tip和镶嵌界面程序已做特殊处理,name不生效
	profname = {
		[1] = "物理攻擊",--刀
		[2] = "法術攻擊",--枪
		[3] = "法術攻擊",--杖
		[4] = "物理攻擊",--弓
		[5] = "物理攻擊",--锤
		[6] = "法術攻擊",--扇
		[7] = "物理攻擊",--枪盾
	},
	value = "+%d",
	fight = 10,
	mainelementary = {
		[1] = 25,
		[2] = 25,
		[3] = 25,
		[4] = 25,
		[5] = 25,
		[6] = 25,
		[7] = 25,
	}
}

addon[42] = {
	name = "眩暈抵抗",
	modifyname = {
		[1] = "限制抗性",
		[2] = "限制抗性",
		[3] = "限制抗性",
		[4] = "限制抗性",
		[5] = "限制抗性",
		[6] = "限制抗性",
		[7] = "限制抗性",
	},
	value = "+%.1f%%",
	fight = 1,
	valueString = function(v) return string.format("+%.1f%%", v/10) end,
	mainelementary = {
		[1] = 3000,
		[2] = 3000,
		[3] = 3000,
		[4] = 3000,
		[5] = 3000,
		[6] = 3000,
		[7] = 3000,
	}
}

addon[43] = {
	name = "定身抵抗",
	modifyname = {
		[1] = "限制抗性",
		[2] = "限制抗性",
		[3] = "限制抗性",
		[4] = "限制抗性",
		[5] = "限制抗性",
		[6] = "限制抗性",
		[7] = "限制抗性",
	},
	value = "+%.1f%%",
	fight = 1,
	valueString = function(v) return string.format("+%.1f%%", v/10) end,
	mainelementary = {
		[1] = 1000,
		[2] = 1000,
		[3] = 1000,
		[4] = 1000,
		[5] = 1000,
		[6] = 1000,
		[7] = 1000,
	}
}

addon[44] = {
	name = "沉默抵抗",
	modifyname = {
		[1] = "限制抗性",
		[2] = "限制抗性",
		[3] = "限制抗性",
		[4] = "限制抗性",
		[5] = "限制抗性",
		[6] = "限制抗性",
		[7] = "限制抗性",
	},
	value = "+%.1f%%",
	fight = 1,
	valueString = function(v) return string.format("+%.1f%%", v/10) end,
	mainelementary = {
		[1] = 2000,
		[2] = 2000,
		[3] = 2000,
		[4] = 2000,
		[5] = 2000,
		[6] = 2000,
		[7] = 2000,
	}
}

item_desc.addon = addon
item_desc.id = 2

--属性显示顺序
local Attribute_Order = {
1,3,36,2,4,5,7,37,9,11,39,6,8,38,10,12,40,19,23,20,24,21,25,22,26,13,14,15,16,17,18,27,28,29,30,31,32,33,34,35
}

item_desc.Attribute_Order = Attribute_Order
local legend_attrib_color = 
{
	[1] = "[808080]",--倍率1颜色,传奇宝石倍率属性颜色
	[2] = "[00e104]",--倍率2颜色,传奇宝石倍率属性颜色
	[4] = "[882bf1]",--倍率4颜色,传奇宝石倍率属性颜色
	[6] = "[ffd700]",--倍率6颜色,传奇宝石倍率属性颜色
	[8] = "[ffd700]",--倍率8颜色,传奇宝石倍率属性颜色
	[10] = "[882bf1]",--倍率10颜色,传奇宝石倍率属性颜色
}
item_desc.legend_attrib_color = legend_attrib_color

return item_desc
