
--副本喊话
local instance_speak =
{

	[4] = "敵軍將在%d秒後入侵莊園",
	[5]	= "活動結束，%d秒後進行獎勵結算",
	[6] = "再堅持%d秒，就能拿到禮物了",
	[7] = "再堅持%d秒，即可獲得月老的祝福",
	[8] = "本次跑跑大賽將會在%d秒後開始",
	[63] = "陣營戰將于%d秒後開始",
	[64] = "鎮台巨獸將於%d秒後降臨"
}

local meta = {}
meta.__index = function(t,k)
	if k<4 or k>70 then
		error('instance_speak is invalid range, (4-60) expected,got' .. k)
	else
		return rawget(t,k)
	end
end

setmetatable(instance_speak,meta)

return instance_speak
