local property_Cfg = {}
-- package.cpath = "../../GameSVN/Tools/lualib/?.dll;"..package.cpath

local propertyData = GameUtil.ReadFileAllContent("Configs/pet_special.txt")

if propertyData:sub(-1) ~= "\n" then
	propertyData = propertyData .. "\n"
end
local iLine = 0
for line in propertyData:gmatch("([^\r\n]*)\r-\n") do
	iLine = iLine + 1
	if iLine > 2 then
		local _, _, kind, group, level, baseWindDmg, baseWindDef, baseFireDmg, baseFireDef, baseWaterDmg, baseWaterDef, baseThunderDmg, baseThunderDef
			= line:find("(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)")
		
		local data = {}
		data.kind = tonumber(kind)
		data.group = tonumber(group)
		data.level = tonumber(level)
		data.baseWindDmg = tonumber(baseWindDmg)
		data.baseWindDef = tonumber(baseWindDef)
		data.baseFireDmg = tonumber(baseFireDmg)
		data.baseFireDef = tonumber(baseFireDef)
		data.baseWaterDmg = tonumber(baseWaterDmg)
		data.baseWaterDef = tonumber(baseWaterDef)
		data.baseThunderDmg = tonumber(baseThunderDmg)
		data.baseThunderDef = tonumber(baseThunderDef)

		property_Cfg[data.kind] = property_Cfg[data.kind] or {}
		property_Cfg[data.kind][data.group] = property_Cfg[data.kind][data.group] or {}
		property_Cfg[data.kind][data.group][data.level] = data
		--print(kind, group, level, baseWindDmg, baseWindDef, baseFireDmg, baseFireDef, baseWaterDmg, baseWaterDef, baseThunderDmg, baseThunderDef)
	end
end

--print("--------------",property_Cfg[1][1])

return property_Cfg



