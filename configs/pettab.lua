
local function parseData(propertyData)
	if propertyData:sub(-1) ~= "\n" then
		propertyData = propertyData .. "\n"
	end
	local propertyTab = {}
	local iLine = 0
	for line in propertyData:gmatch("([^\r\n]*)\r-\n") do
		iLine = iLine + 1
		if iLine > 2 then
			local _,_,pet_tid, level, baseHP, basePhyAtk, basePhyDef, baseMagAtk, baseMagDef
				= line:find("(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)")

			local data = {}
			data.pet_tid = tonumber(pet_tid)
			data.level = tonumber(level)
			data.baseHP = tonumber(baseHP)
			data.basePhyAtk = tonumber(basePhyAtk)
			data.basePhyDef = tonumber(basePhyDef)
			data.baseMagAtk = tonumber(baseMagAtk)
			data.baseMagDef = tonumber(baseMagDef)
			--只考虑1级的
			if data.level == 1 then
				local key = tonumber(pet_tid)
				propertyTab[key] = data
				--print("data:",pet_tid, level, baseHP, basePhyAtk, basePhyDef, baseMagAtk, baseMagDef)
			end
		end
	end
	return propertyTab
end

--pettab.txt
local propertyData = GameUtil.ReadFileAllContent("Configs/pettab.txt")
local propertyTab = parseData(propertyData)
--petdevelop.txt(游戏中没有使用到此数据)
local propertyDevData = nil--GameUtil.ReadFileAllContent("Configs/petdevelop.txt")
local propertyTabDev = nil -- parseData(propertyDevData)
---------------------------------------------------------
return
{
	propertyTab = propertyTab,
	propertyTabDev = propertyTabDev,
}
