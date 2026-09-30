local function get_nation_name(nation_id)
	local NATION_DATA = require "Social.ECNationData"
	return NATION_DATA.NATION_NAME[nation_id]
end


local rank_slot = {}
--个人榜
rank_slot[1] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 5
	end,
	name = "世界戰力排行榜",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限
	lv_limit = 0,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[2] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		local tids = {6,7,8,9,10,11}
		return tids[nation]
	end,
	name = "本國戰力排行榜",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}
rank_slot[3] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 1
	end,
	name = "等級排行榜",
	list_title = {"排名","玩家名","所屬國家","角色等級"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[4] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 33
	end,
	name = "卡牌榜",
	list_title = {"排名","玩家名","所屬國家","收集聲望"},
	activity_id = 0,
	upper_limit = 50, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
--国家榜
rank_slot[5] = 
{
	client_special = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 100000 --比较特殊
	end,
	name = "綜合國力排行",
	list_title ={"排名","國家名","國王名","綜合國力"},
	activity_id = 0,
	upper_limit = 6, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --king name
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --power/mind
		return ret
	end,
}
rank_slot[6] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		local tids = {43,44,45,46,47,48}
		return tids[nation]
	end,
	name = "本國功勛榜",
	list_title = {"排名","玩家名","職業","功勛"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
--帮会榜
rank_slot[7] = 
{
	faction = true, --帮派榜需要单独处理
	show = true,
	get_tid = function(nation)--榜单tid
		return 312
	end,
	name = "幫會世界排行",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
rank_slot[8] = 
{
	faction = true,
	show = true,
	get_tid = function(nation)--榜单tid
		local tids = {300,301,302,303,304,305}
		return tids[nation]
	end,
	name = "幫會國家排行",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******"  --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
--职业
rank_slot[9] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 35
	end,
	name = "破軍",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
rank_slot[10] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 36
	end,
	name = "蒼龍",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限
	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
rank_slot[11] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 37
	end,
	name = "天煌",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限
	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
rank_slot[12] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 38
	end,
	name = "九曜",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
--鲜花榜
rank_slot[13] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 19
	end,
	name = "世界歷史花仙榜",
	list_title = {"排名","玩家名","所屬國家","歷史收花數"},
	activity_id = 0,
	upper_limit = 50, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[14] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		local tids = {21,22,23,24,25,26}
		return tids[nation]
	end,
	name = "本國本周花仙榜",
	list_title = {"排名","玩家名","所屬國家","本周收花數"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[15] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 55
	end,
	name = "世界歷史護花榜",
	list_title = {"排名","玩家名","所屬國家","歷史送花數"},
	activity_id = 0,
	upper_limit = 50, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[16] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		local tids = {57,58,59,60,61,62}
		return tids[nation]
	end,
	name = "本國本周護花榜",
	list_title = {"排名","玩家名","所屬國家","本周送花數"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--每月14情人节送花榜
rank_slot[70] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 318
	end,
	name = "執子之手",
	list_title = {"排名","玩家名","所屬國家","送花數"},
	activity_id = 7208,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--每月14情人节送花老榜
rank_slot[72] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 319
	end,
	name = "執子之手",
	list_title = {"排名","玩家名","所屬國家","送花數"},
	activity_id = 7529,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--每月14情人节收花榜
rank_slot[71] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 316
	end,
	name = "與子偕老",
	list_title = {"排名","玩家名","所屬國家","收花數"},
	activity_id = 7208,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--每月14情人节收花老榜
rank_slot[73] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 317
	end,
	name = "與子偕老",
	list_title = {"排名","玩家名","所屬國家","收花數"},
	activity_id = 7529,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--活动排行
rank_slot[17] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 75
	end,
	name = "聖誕襪子收集榜",
	list_title = {"排名","玩家名","所屬國家","聖誕襪子數"},
	activity_id = 3076,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[18] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 241
	end,
	name = "聖誕雪人榜",
	list_title = {"排名","玩家名","所屬國家","雪人大小"},
	activity_id = 3076,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[19] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 306
	end,
	name = "幫會幽州老榜-1",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}

rank_slot[20] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 307
	end,
	name = "幫會冀州老榜-2",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
rank_slot[21] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 308
	end,
	name = "幫會豫州老榜-3",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
rank_slot[22] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 309
	end,
	name = "幫會揚州老榜-4",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
rank_slot[23] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 310
	end,
	name = "幫會荊州老榜-5",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
rank_slot[24] = 
{
	faction = true,
	show = false,
	get_tid = function(nation)--榜单tid
		return 311
	end,
	name = "幫會益州老榜-6",
	list_title = {"排名","幫會名","幫主","幫會實力"},
	activity_id = 0,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.name --name 帮派名&帮主
		ret[#ret+1] = data.tx_private == 0 and data.name2 or "******" --帮主
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --帮派建设度
		return ret
	end,
}
---实时竞技
rank_slot[25] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 77
	end,
	name = "單騎戰",
	list_title = {"排名","玩家","國家","積分"},
	activity_id = 3442,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[26] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 79
	end,
	name = "三英戰",
	list_title = {"排名","玩家","國家","積分"},
	activity_id = 3442,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[27] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 81
	end,
	name = "五虎戰",
	list_title = {"排名","玩家","國家","積分"},
	activity_id = 3442,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[28] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 251
	end,
	name = "新春英雄",
	list_title = {"排名","玩家","國家","擊殺年獸積分"},
	activity_id = 3561,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[29] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 85
	end,
	name = "深情獻花榜",
	list_title = {"排名","玩家","國家","節日送花數"},
	activity_id = 3983,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[30] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 89
	end,
	name = "慶典祭祀榜",
	list_title = {"排名","玩家","國家","祭祀總貢獻"},
	activity_id = 4358,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[31] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 90
	end,
	name = "慶典祭祀榜",
	list_title = {"排名","玩家","國家","祭祀總貢獻"},
	activity_id = 4525,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[32] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 93
	end,
	name = "荒城",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
rank_slot[33] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 229
	end,
	name = "食力模範榜",
	list_title = {"排名","玩家","國家","交錦旗次數"},
	activity_id = 4790,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[34] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 230
	end,
	name = "食力模範榜",
	list_title = {"排名","玩家","國家","交錦旗次數"},
	activity_id = 4795,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[35] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 167
	end,
	name = "福星收錄榜",
	list_title = {"排名","玩家","國家","祈福值"},
	activity_id = 5237,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[36] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 168
	end,
	name = "福星收錄榜",
	list_title = {"排名","玩家","國家","祈福值"},
	activity_id = 5243,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[37] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 107
	end,
	name = "百科榜",
	list_title = {"排名","玩家名","所屬國家","積分"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[38] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 109
	end,
	name = "孝廉榜",	--新榜
	list_title = {"排名","玩家名","所用時間","積分"},
	activity_id = 5239,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = string.format("%02d:%02d:%02d", math.floor((data.time or 0)/3600), math.floor(math.fmod(data.time or 0,3600)/60), math.fmod(data.time or 0,60))	--所用时间
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[47] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 110
	end,
	name = "孝廉榜",	--老榜
	list_title = {"排名","玩家名","所用時間","積分"},
	activity_id = 5361,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = string.format("%02d:%02d:%02d", math.floor((data.time or 0)/3600), math.floor(math.fmod(data.time or 0,3600)/60), math.fmod(data.time or 0,60))	--所用时间
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
} 

--跨服测试榜单
rank_slot[39] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 111
	end,
	name = "幽-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[40] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 112
	end,
	name = "冀-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[41] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 113
	end,
	name = "豫-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[42] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 114
	end,
	name = "揚-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[43] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 115
	end,
	name = "荊-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[44] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 116
	end,
	name = "益-跨服排行測試",
	list_title = {"排名","玩家名","職業","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = PROFESSION[data.profession] --profession
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,	
}

rank_slot[45] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 243
	end,
	name = "祈福榜",
	list_title = {"排名","玩家","國家","為本國祈福點數"},
	activity_id = 5271,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[46] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 244
	end,
	name = "祈福榜",
	list_title = {"排名","玩家","國家","為本國祈福點數"},
	activity_id = 5326,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[48] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 131
	end,
	name = "助威榜",	--新榜
	list_title = {"排名","玩家名","國家","助威值"},
	activity_id = 5527,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[49] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 132
	end,
	name = "助威榜",	--老榜
	list_title = {"排名","玩家名","國家","助威值"},
	activity_id = 5528,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
} 
rank_slot[50] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 129
	end,
	name = "巔峰武鬥場選手",	--新榜
	list_title = {"排名","玩家名","國家","戰鬥力"},
	activity_id = 5530,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[51] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 130
	end,
	name = "巔峰武鬥場選手",	--老榜
	list_title = {"排名","玩家名","國家","戰鬥力"},
	activity_id = 5531,
	upper_limit = 10, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
} 

rank_slot[52] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 137
	end,
	name = "奧運金牌榜",
	list_title = {"排名","玩家","國家","金牌數"},
	activity_id = 5504,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[53] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 138
	end,
	name = "奧運金牌榜",
	list_title = {"排名","玩家","國家","金牌數"},
	activity_id = 5505,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[54] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 135
	end,
	name = "恩愛老公榜",
	list_title = {"排名","玩家名","所屬國家","恩愛值"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[55] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 139
	end,
	name = "恩愛老婆榜",
	list_title = {"排名","玩家名","所屬國家","恩愛值"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[56] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 249
	end,
	name = "月圆中秋榜",
	list_title = {"排名","玩家","國家","月圆价"},
	activity_id = 5753,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[57] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 250
	end,
	name = "月圓中秋榜",
	list_title = {"排名","玩家","國家","月圓值"},
	activity_id = 5775,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}



rank_slot[58] = 
{
	show = true,
	nation = true, --国家=true
	get_tid = function(nation)--榜单tid
		return 328 --比较特殊
	end,
	name = "國力爭霸榜",
	list_title ={"排名","國家名","國王名","國家戰力"},
	activity_id = 5966,
	upper_limit = 6, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = get_nation_name(LuaUInt64.ToDouble(data.id)) --nation
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --king name
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --power/mind
		return ret
	end,
}

rank_slot[59] = 
{
	show = true,
	nation = true,
	get_tid = function(nation)--榜单tid
		return 329 --比较特殊
	end,
	name = "國力爭霸榜",
	list_title ={"排名","國家名","國王名","國家戰力"},
	activity_id = 5993,
	upper_limit = 6, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = get_nation_name(LuaUInt64.ToDouble(data.id)) --nation
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --king name
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --power/mind
		return ret
	end,
}

rank_slot[60] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 253
	end,
	name = "爭霸貢獻榜",
	list_title = {"排名","玩家","國家","貢獻值"},
	activity_id = 5966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}
rank_slot[61] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 254
	end,
	name = "爭霸貢獻榜",
	list_title = {"排名","玩家","國家","貢獻值"},
	activity_id = 5993,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[62] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 145
	end,
	name = "名師榜",
	list_title = {"排名","玩家名","國家","師德值"},
	activity_id = 6473,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[63] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 237
	end,
	name = "感恩積分榜",
	list_title = {"排名","玩家名","國家","感恩值"},
	activity_id = 6712,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[64] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 238
	end,
	name = "感恩积分榜",
	list_title = {"排名","玩家名","國家","感恩值"},
	activity_id = 6713,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[65] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 153
	end,
	name = "總英雄等級排行榜",
	list_title = {"排名","玩家名","所屬國家","英雄等級"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[66] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 242
	end,
	name = "聖誕雪人榜",
	list_title = {"排名","玩家名","所屬國家","雪人大小"},
	activity_id = 6975,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[67] =  --新春英雄老榜排行榜
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 252
	end,
	name = "新春英雄",
	list_title = {"排名","玩家","國家","擊殺年獸積分"},
	activity_id = 7094,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[68] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 149
	end,
	name = "國鏢捐獻榜",	--新榜
	list_title = {"排名","玩家名","國家","捐獻值"},
	activity_id = 5942,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

rank_slot[69] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 150
	end,
	name = "國鏢捐獻榜",	--老榜
	list_title = {"排名","玩家名","國家","捐獻值"},
	activity_id = 7304,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
} 
rank_slot[101] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 94
	end,
	name = "赤離",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}

rank_slot[102] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 173
	end,
	name = "幽州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[103] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 174
	end,
	name = "冀州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[104] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 175
	end,
	name = "豫州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[105] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 176
	end,
	name = "揚州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[106] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 177
	end,
	name = "荊州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[107] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 178
	end,
	name = "益州國宴榜",
	list_title = {"排名","玩家名","等級","國宴積分"},
	activity_id = 10966,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[108] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 247
	end,
	name = "鵲橋相會榜",
	list_title = {"排名","玩家名","等級","貢獻值"},
	activity_id = 12220,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
}

rank_slot[109] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 95
	end,
	name = "玄戈",
	list_title = {"排名","玩家名","所屬國家","戰鬥力"},
	activity_id = 0,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --fightvalue
		return ret
	end,
}
--七夕老榜
rank_slot[110] = 
{
	show = true,				--是否显示,true:默认显示
	get_tid = function(nation)--榜单tid
		return 248
	end,
	name = "鵲橋相會榜",
	list_title = {"排名","玩家名","等級","貢獻值"},
	activity_id = 12221,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = tostring(data.level) --level
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value)) --reputation
		return ret
	end,
} 


--蓝色妖姬花仙榜
rank_slot[111] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 203
	end,
	name = "藍色妖姬花仙榜",
	list_title = {"排名","玩家名","所屬國家","歷史收花數"},
	activity_id = 0,
	upper_limit = 50, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--蓝色妖姬护花榜
rank_slot[112] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 205
	end,
	name = "藍色妖姬護花榜",
	list_title = {"排名","玩家名","所屬國家","歷史送花數"},
	activity_id = 0,
	upper_limit = 50, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--蓝色妖姬收花活动
rank_slot[113] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 207
	end,
	name = "百花仙子",
	list_title = {"排名","玩家名","所屬國家","藍色妖姬收花數"},
	activity_id = 13512,
	upper_limit = 100, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}


--蓝色妖姬送花活动
rank_slot[114] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 209
	end,
	name = "護花騎士",
	list_title = {"排名","玩家名","所屬國家","藍色妖姬送花數"},
	activity_id = 13512,
	upper_limit = 100, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}


--蓝色妖姬收花活动  领奖期
rank_slot[115] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 208
	end,
	name = "百花仙子",
	list_title = {"排名","玩家名","所屬國家","藍色妖姬收花數"},
	activity_id = 13513,
	upper_limit = 100, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}


--蓝色妖姬送花活动  领奖期
rank_slot[116] = 
{
	flower = true,
	show = true,
	get_tid = function(nation)--榜单tid
		return 210
	end,
	name = "護花騎士",
	list_title = {"排名","玩家名","所屬國家","藍色妖姬送花數"},
	activity_id = 13513,
	upper_limit = 100, --显示上限
	lv_limit = 1,  --玩家排行榜显示等级下限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--双十一新榜
rank_slot[117] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 223
	end,
	name = "雙十一貢獻榜",
	list_title = {"排名","玩家名","所屬國家","貢獻值"},
	activity_id = 15246,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--双十一老榜

rank_slot[118] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 224
	end,
	name = "雙十一貢獻榜",
	list_title = {"排名","玩家名","所屬國家","貢獻值"},
	activity_id = 15247,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--演武排行新榜
rank_slot[119] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 255
	end,
	name = "演武積分榜",
	list_title = {"排名","玩家名","所屬國家","積分值"},
	activity_id = 18908,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

--演武排行老榜
rank_slot[120] = 
{
	show = true,
	get_tid = function(nation)--榜单tid
		return 256
	end,
	name = "演武積分榜",
	list_title = {"排名","玩家名","所屬國家","積分值"},
	activity_id = 18909,
	upper_limit = 100, --显示上限

	gen_rank_data = function(data)
		local ret = {}
		ret[#ret+1] = tostring(data.index)
		ret[#ret+1] = data.tx_private == 0 and data.name or "******" --name
		ret[#ret+1] = get_nation_name(data.profession) --nation
		ret[#ret+1] = tostring(LuaUInt64.ToDouble(data.value))
		return ret
	end,
}

---结束榜单配置

local rank_config = {}

local function Slot(id)
	return rank_slot[id]
end

rank_config[1] = 
{
	title = "個人",
	slots = {
		Slot(1),
		Slot(2),
		Slot(3),
		Slot(4),
		Slot(65),
	},
}

rank_config[2] = 
{
	title = "國家",
	slots = {
		Slot(5),
		Slot(6),
		Slot(102),
		Slot(103),
		Slot(104),
		Slot(105),
		Slot(106),
		Slot(107),
	},
}

rank_config[3] = 
{
	title = "幫會",
	slots = {
		Slot(7),
		Slot(8),
		Slot(19),
		Slot(20),
		Slot(21),
		Slot(22),
		Slot(23),
		Slot(24),
	},
}
rank_config[4] = 
{
	title = "職業",
	slots = {
		Slot(9),
		Slot(10),
		Slot(11),
		Slot(12),
		Slot(32),
		Slot(101),
		Slot(109),
	},
}
rank_config[5] = 
{
	title = "鮮花",
	slots = {
		Slot(13),
		Slot(14),
		Slot(15),
		Slot(16),
		Slot(70),
		Slot(71),
		Slot(72),
		Slot(73),
		Slot(111),
		Slot(112),
		Slot(113),
		Slot(114),
		Slot(115),
		Slot(116),
	},
}

rank_config[6] = 
{
	title = "武神",
	slots = {
		Slot(25),
		Slot(26),
		Slot(27),
	},
}

rank_config[7] = 
{
	title = "活動",
	slots = {
		--Slot(17),
		Slot(18),
		Slot(28),
		Slot(67),
		Slot(29),
		Slot(30),
		Slot(31),
		Slot(33),
		Slot(34),
		Slot(35),
		Slot(36),
		Slot(45),
		Slot(46),
		Slot(48),
		Slot(49),
		Slot(50),
		Slot(51),
		Slot(52),
		Slot(53),
		Slot(56),
		Slot(57),
		Slot(58),
		Slot(59),
		Slot(60),
		Slot(61),
		Slot(63),
		Slot(64),
		Slot(66),
		Slot(68),
		Slot(69),
		Slot(108),
		Slot(110),
		Slot(117),
		Slot(118),
		Slot(119),
		Slot(120),
	},
}

rank_config[8] = 
{
	title = "才華",
	slots = {
		Slot(37),
		Slot(38),
		Slot(47),
	},
}


rank_config[9] = 
{
	title = "夫妻",
	slots = {
		Slot(54),
		Slot(55),
	},
}

rank_config[10] = 
{
	title = "名師",
	slots = {
		Slot(62),
	},
}
--local malut = dofile "../Lua/Utility/malut.lua"

function rank_config.findMainConfig(tid,nation)
	for i,v in ipairs(rank_config) do
		for i2,v2 in ipairs(v.slots) do
			local tid_ = v2.get_tid(nation)
			if tid_ == tid then
				return i,i2
			end
		end
	end
	return 0,0
end

function rank_config.isFactionTID(tid,nation)
	local i,i2 = rank_config.findMainConfig(tid,nation)
	if i>0 and i2>0 then
		return rank_config[i].slots[i2].faction
	else
		return false
	end
end

function rank_config.isNationTID(tid,nation)
	local i,i2 = rank_config.findMainConfig(tid,nation)
	if i>0 and i2>0 then
		return rank_config[i].slots[i2].nation or rank_config[i].slots[i2].client_special
	else
		return false
	end
end

function rank_config.isFlowerTID(tid,nation)
	local i,i2 = rank_config.findMainConfig(tid,nation)
	if i>0 and i2>0 then
		return rank_config[i].slots[i2].flower
	else
		return false
	end
end

function rank_config.clientSpecial(tid,nation)
	local i,i2 = rank_config.findMainConfig(tid,nation)
	if i>0 and i2>0 then
		return rank_config[i].slots[i2].client_special
	else
		return false
	end
end

function rank_config.toggleShowMode(mainIndex,show)
	if not rank_config[mainIndex] then
		warn("mainIndex:"..mainIndex.." is not valid")
		return
	end
	for i,v in ipairs(rank_config[mainIndex].slots) do
		v.show = show
	end
end

function rank_config.toggleShowMode2(mainIndex,subIndex,show)
	if not rank_config[mainIndex] or not rank_config[mainIndex].slots[subIndex] then
		warn("mainIndex:"..mainIndex..",subIndex:"..subIndex.." is not valid")
		return
	end
	rank_config[mainIndex].slots[subIndex].show = show
end


--malut.printTable(rank_config)

return rank_config