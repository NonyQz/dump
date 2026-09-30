--大师组比赛配置
local OlympicGameMasterConfig = 
{
	--这个配置内的消耗的物品是同一种 
	[1] = 	
	{
		taskid = 2260, 
		name = "大師組比賽",
		costItem = 
		{ 	
			[1] = { id = 11694, count = 1 }
		},
		imgPathID =3897,
	} ,
	[2] = 	
	{
		taskid = 2301, 
		name = "大師組十連比賽",
		costItem = 
		{ 	
			[1] = { id = 11694, count = 10 }
		},
		imgPathID =3897,
	} ,
}

-----专业组比赛配置
local OlympicGameProfessionConfig = 
{
	[1] = 	
	{
		taskid = 2261, 
		name = "專業組比賽",
		costItem = 
		{ 	
			[1] = { id = 11695, count = 1 }
		},
		imgPathID = 3898,
	},
}

-----业余组比赛配置 [1] [2] [3] [4] 是互斥显示 如果[1][2][3]三者都不能接收时，显示[4]进行重置[1][2][3]任务数据 
local OlympicGameAmateurConfig = 
{
	[1] = 
	{
		taskid = 2262,
		name = "業餘組海選賽",
		costItem = 
		{ 	
			[1] = { id = 11643, count = 1 }
		},
		imgPathID = 3896,
	},


	[2] = 
	{
		taskid = 2263,
		name = "業餘組淘汰賽",
		costItem = 
		{ 	
			[1] = { id = 11835, count = 1 }
		},
		imgPathID = 3896,
	},

	[3] = 
	{
		taskid = 2264,
		name = "業餘組總決賽",
		costItem = 
		{ 	
			[1] = { id = 11836, count = 1}
		},
		imgPathID = 3896 ,
	},

	[4] = 
	{
		taskid = 2300,
		name = "業餘組重置",
		costItem = 
		{ 	
			[1] = { id = 11643, count = 0}
		},
		imgPathID = 3896 ,
	},
}

local sort_function = function(l,r)
	if l.costItem[1].count and r.costItem[1].count then
		return l.costItem[1].count > r.costItem[1].count 
	elseif l.costItem[1].count  then
		return true
	else
		return false
	end
end

local taskIDList = 
{
	[2260] = true,
	[2301] = true,
	[2261] = true,
	[2262] = true,
	[2263] = true,
	[2264] = true,
	[2230] = true
}

return 
{
	OlympicGameMasterConfig = OlympicGameMasterConfig,
	OlympicSortFunc = sort_function,
	OlympicGameProfessionConfig = OlympicGameProfessionConfig,
	OlympicGameAmateurConfig = OlympicGameAmateurConfig,
	taskIDList = taskIDList,
}
