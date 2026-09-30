--[[
	配置角色头顶显示的fx
]]

--[[
	因 gfxState (光效位) 显示的fx
	[gfx_id] = function (info) end,		--gfx_id: 第几个光效位，现支持 56~63, info: 参数 0 ~ 255
		param info: buff_info
		return 1: fx_path_id，fx 路径的id
		return 2: priority，优先级，数值越大，显示位置越靠前
]]
local gfxState = {}

-- --酒坛状态
-- gfxState[59] = function (info)
-- 	local priority = 15
-- 	local grade = info
	
-- 	if grade == 1 then
-- 		return "988", priority
-- 	elseif grade == 2 then
-- 		return "985", priority
-- 	elseif grade == 3 then
-- 		return "989", priority
-- 	elseif grade == 4 then
-- 		return "986", priority
-- 	elseif grade == 5 then
-- 		return "987", priority
-- 	else
-- 		return nil, nil
-- 	end
-- end

-- --刺探情报状态
-- gfxState[60] = function (info)
-- 	local priority = 16
-- 	local grade = info
	
-- 	if grade == 1 then
-- 		return "294", priority  --白色情报
-- 	elseif grade == 2 then
-- 		return "291", priority  --蓝色情报
-- 	elseif grade == 3 then
-- 		return "295", priority  --黄色情报
-- 	elseif grade == 4 then
-- 		return "292", priority  --绿色情报
-- 	elseif grade == 5 then
-- 		return "293", priority  --紫色情报
-- 	else
-- 		return nil, nil
-- 	end
-- end

--国内刺探状态
gfxState[61] = function (info)
	local priority = 25
	local grade = info
	
	if grade == 1 then
		return "984", priority
	elseif grade == 2 then
		return "981", priority
	elseif grade == 3 then
		return "980", priority
	elseif grade == 4 then
		return "982", priority
	elseif grade == 5 then
		return "983", priority
	else
		return nil, nil
	end
end

--各国情报状态
gfxState[62] = function (info)
	local priority = 24
	local grade = info
	
	if grade == 1 then
		return "294", priority
	elseif grade == 2 then
		return "291", priority
	elseif grade == 3 then
		return "295", priority
	elseif grade == 4 then
		return "292", priority
	elseif grade == 5 then
		return "293", priority
	else
		return nil, nil
	end
end

--夺鼎的状态
gfxState[63] = function (info)
	local priority = 17
	local grade = info
	
	if grade == 1 then
		return "289", priority  --白色碎片
	elseif grade == 2 then
		return "286", priority  --蓝色碎片
	elseif grade == 3 then
		return "290", priority  --黄色碎片
	elseif grade == 4 then
		return "287", priority  --绿色碎片
	elseif grade == 5 then
		return "288", priority  --紫色碎片
	else
		return nil, nil
	end
end

return
{
	gfxState = gfxState,
}

