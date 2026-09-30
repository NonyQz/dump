
--帮派基地副本相关

local factionBase = factionBase or {}

--寻路npcid
factionBase.AutoMoveNpcIds = 
{
	--帮会小猪
	[1] = 
 	{
 		tid = 831,
		type = 2,
		sid = 5002,
		pos_x = -55.24,
		pos_z = 66.84,
 	},

 	--帮会神树
 	[2] = 
 	{
 		tid = 831,
		type = 1,
		sid = 5002,
		pos_x = -87.09,
		pos_z = 88.08,
 	},

 	--帮会篝火
 	[3] = 
 	{
 		tid = 831,
		type = 1,
		sid = 5002,
		pos_x = -2.36,
		pos_z = 1.14,
 	},

 	--帮会丹炉
 	[4] = 
 	{
 		tid = 4859,
		type = 1,
		sid = 5002,
		pos_x = 71.37,
		pos_z = -62.22,
 	},
}

--守卫家园 npc
factionBase.DefenceNpcs = 
{
	"幫派財寶",
	"幫派建材",
	"幫派戰車",
}

return factionBase