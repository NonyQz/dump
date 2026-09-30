
--称号ID,填入后在客户端显示
local mountDesc = 
{
	[1] = "白",
	[2] = "藍",
	[3] = "黃",
	[4] = "綠",
	[5] = "紫",
}

local function IsEvaluation()
	if GameUtil and GameUtil.IsEvaluation then
		return GameUtil.IsEvaluation()
	else
		return false
	end
end

local function make_data(t)
	local r = {}
	for k, v in pairs( t ) do
		if not v.check_eva or not IsEvaluation() then
			r[k] = v
		end
	end
	return r
end

local function make_idata(t)
	local r = {}
	for i, v in ipairs( t ) do
		if not v.check_eva or not IsEvaluation() then
			r[#r+1] = v
		end
	end
	return r
end

--[[
	check_eva = true， 需要检查是否评版本
]]

local mountList = make_idata
{
	{
		check_eva = true,
		id = 3226, 
		desc = "主線18級獲得",
	},
	
}

local mountHangList = {

	[17240] = {			--恋席
		[1] = {   --  乘骑人数
			[1] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse",
					hang_name = "HH_ride",			--	挂点
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},
				[1] = { --女
					attach_name = "name_on_horse",
					hang_name = "HH_ride",			--	挂点
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},

			},
		},
		[2] = {   --  乘骑人数
			[1] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse01",
					hang_name = "HH_ride01",			--	挂点
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},
				[1] = { --女
					attach_name = "name_on_horse01",
					hang_name = "HH_ride02",			--	挂点
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},

			},
			[2] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse02",
					hang_name = "HH_ride02",			--	挂点(主角为男)男男
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},

					hang_name1 = "HH_ride01",			--	挂点(主角为女)女男
				},
				[1] = { --女
					attach_name = "name_on_horse02",
					hang_name = "HH_ride02",			--	挂点(主角为男)男女
					ride_stand = "lydown_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "lydown_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},

					hang_name1 = "HH_ride01",			--	挂点(主角为女)女女
				},

			},
		},
	},

	[17546] = {			--阆渊
		[1] = {   --  乘骑人数
			[1] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse",
					hang_name = "HH_ride",			--	挂点
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},
				[1] = { --女
					attach_name = "name_on_horse",
					hang_name = "HH_ride",			--	挂点
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},

			},
		},
		[2] = {   --  乘骑人数
			[1] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse01",
					hang_name = "HH_ride01",			--	挂点
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},
				[1] = { --女
					attach_name = "name_on_horse01",
					hang_name = "HH_ride02",			--	挂点
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},
				},

			},
			[2] = {  -- 人员index
				[0] = { --男
					attach_name = "name_on_horse02",
					hang_name = "HH_ride02",			--	挂点(主角为男)男男
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},

					hang_name1 = "HH_ride01",			--	挂点(主角为女)女男
				},
				[1] = { --女
					attach_name = "name_on_horse02",
					hang_name = "HH_ride02",			--	挂点(主角为男)男女
					ride_stand = "flyrun_c",		--  不配置 默认用AnimationTable.Ride_Stand
					ride_run = "flyrun_c",			--  不配置 默认用AnimationTable.Ride_Run

					_vehicle_offset = 				--  不配置时 默认使用ECPlayer中的 _vehicle_offset
					{
						pos = { x = 0, y = 0, z = 0 },  angle = { x = 0, y = -90, z = 180 }
					},

					hang_name1 = "HH_ride01",			--	挂点(主角为女)女女
				},

			},
		},
	},
}



	



--debug
--dofile "../Lua/Utility/malut.lua".printTable(mountList)

return 
{
     mountDesc = mountDesc,
     mountList = mountList,
     mountHangList = mountHangList,
}