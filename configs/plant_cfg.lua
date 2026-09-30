local level_num = {}
local plant_cfgs = {}

-- 同时种植数量和角色等级之间的关系配置
level_num[30] = 1	-- 30级可种植1个
level_num[50] = 2	-- 50级可种植2个
level_num[70] = 3	-- 70级可种植3个
-- 可种植列表
plant_cfgs[1] = 
{	
	seed_name = "體力果",
	seed_level = 1,
	ripe_time = 1800,
	icon = 1439,
	reward_tid = 1204,
	level_need = 30 ,	-- 30级可解锁
	display = true,  --显示
	level_limits = {min=1,max=59},--此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
}

plant_cfgs[2] = 
{	
	seed_name = "體力果",
	seed_level = 2,
	ripe_time = 1800,
	icon = 1439,
	reward_tid = 1205,
	level_need = 60 ,	-- 60级可解锁
	display = true,  --不显示
	level_limits = {min=60,max=120},
}

plant_cfgs[3] = 
{	
	seed_name = "繁星果",
	seed_level = 1,
	ripe_time = 3600,
	icon = 1438,
	reward_tid = 1206,
	level_need = 35 ,	-- 35级可解锁
	display = true,
}

plant_cfgs[4] = 
{	
	seed_name = "繁星果",
	seed_level = 2,
	ripe_time = 10800,
	icon = 1438,
	reward_tid = 1207,
	level_need = 55 ,	-- 55级可解锁
	display = false,
}

plant_cfgs[5] = 
{	
	seed_name = "異象果",
	seed_level = 1,
	ripe_time = 5400,
	icon = 1437,
	reward_tid = 1208,
	level_need = 40 ,	-- 40级可解锁
	display = true,
}

plant_cfgs[6] = 
{	
	seed_name = "異象果",
	seed_level = 2,
	ripe_time = 7200,
	icon = 1437,
	reward_tid = 1209,
	level_need = 60 ,	-- 60级可解锁
	display = false,
}

plant_cfgs[7] = 
{	
	seed_name = "鎏金果",
	seed_level = 2,
	ripe_time = 7200,
	icon = 275,
	reward_tid = 1738,
	level_need = 45 ,	-- 45级可解锁
	display = true,
}

plant_cfgs[8] = 
{	
	seed_name = "經驗果",
	seed_level = 2,
	ripe_time = 9000,
	icon = 747,
	reward_tid = 1739,
	level_need = 50 ,	-- 50级可解锁
	display = true,
}

-----------------------------------------------
local sort_function = function(l,r)
	if l.ripe_time and r.ripe_time then
		return l.ripe_time < r.ripe_time
	elseif l.ripe_time then
		return true
	else
		return false
	end
end

return 
{
	level_num = level_num,
	plant_cfgs = plant_cfgs,
	sort_function = sort_function,
}
	