local property_Cfg = {}
-- package.cpath = "../../GameSVN/Tools/lualib/?.dll;"..package.cpath

local lpeg = require "lpeg"

local P = lpeg.P --pattern string
local S = lpeg.S --set
local R = lpeg.R --range
local C = lpeg.C --capture
local Ct = lpeg.Ct --capture table
local Cs = lpeg.Cs --capture substitution
local Ca = lpeg.Ca --capture accumulator 类似Cf
local Cmt = lpeg.Cmt --发现字符串立即执行一个函数


local propertyData = GameUtil.ReadFileAllContent("Configs/tidtab_part.txt")

local maybe =  function( pat ) return pat^-1 end
local sign = S"+-"
local int = R"09"^1
local numberStr = maybe(sign) * int
local space = S" \t"^0
local line = Ct(space * ((C(numberStr) * space) ^ 1))
local patternAll = Ct(line * (P("\r")^-1 * P("\n") * line) ^ 0)
local rt = lpeg.match(patternAll, propertyData)

for i=1,#rt do
	local temp = rt[i]
	if #temp > 2 then
		local propertyId = tonumber(temp[1])
		local propertyLv = tonumber(temp[2])
		local oneCfg = property_Cfg[propertyId]
		if not oneCfg then
			property_Cfg[propertyId] = {}
			oneCfg = property_Cfg[propertyId]
		end
		
		local oneLine = oneCfg[propertyLv]
		if not oneLine then
			oneCfg[propertyLv] = {}
			oneLine = oneCfg[propertyLv]
		end
		
		for j=3,#temp do	
			oneLine[#oneLine + 1] = temp[j]
		end
	end
	-- print("string ", i, " is :", table.concat( rt[i], ","))
end

-- print("------938 2 :", property_Cfg[938][2][3])

return property_Cfg



