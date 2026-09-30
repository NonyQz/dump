------------------------
--                    --
--    便捷聊天配置    --
--                    --
------------------------
local convenient_chat = {}


--[[
	850  	守护神
	851 	光辉祭司
	852 	暗夜祭司
	854 	天门关大将
	1236 	南郊守将
	1237 	东郊守将
]]--

--国战command_id用1-20
convenient_chat.guozhan =
{
	[1] =
	{
		command_id = 1,
		message = "守護神集合！速度！！！守護神集合了。",
		npc_tid = 850,
	},

	[2] =
	{
		command_id = 2,
		message = "速度來人，集火暗夜祭祀。",
		npc_tid = 852,
	},

	[3] =
	{
		command_id = 3,
		message = "暗夜祭司請求支援。",
		npc_tid = 852,
	},

	[4] =
	{
		command_id = 4,
		message = "準備進攻光輝祭司。",
		npc_tid = 851,
	},

	[5] =
	{
		command_id = 5,
		message = "回守光輝祭司，回守光輝祭司。",
		npc_tid = 851,
	},

	[6] =
	{
		command_id = 6,
		message = "南郊守將處集合！",
		npc_tid = 1236,
	},

	[7] =
	{
		command_id = 7,
		message = "南郊守將請求支援！",
		npc_tid = 1236,
	},

	[8] =
	{
		command_id = 8,
		message = "武力集中東郊守將，速度打下復活點",
		npc_tid = 1237,
	},

	[9] =
	{
		command_id = 9,
		message = "東郊守將處準備幹架",
		npc_tid = 1237,
	},

	[10] =
	{
		command_id = 10,
		message = "激戰天門關大將",
		npc_tid = 854,
	},
}

--跨服三国志command_id用21-40
convenient_chat.kuafusanguozhi =
{
	[1] =
	{
		command_id = 21,
		message = "目標龍椅，火力壓制其他兩方。",
		npc_tid = 8533,
	},

	[2] =
	{
		command_id = 22,
		message = "丞相可以增加BUFF，速速打下左一丞相",
		npc_tid = 9049,
	},

	[3] =
	{
		command_id = 23,
		message = "丞相可以增加BUFF，速速打下左二丞相。",
		npc_tid = 7891,
	},


	[4] =
	{
		command_id = 24,
		message = "丞相可以增加BUFF，速速打下右一丞相。",
		npc_tid = 7893,
	},

	[5] =
	{
		command_id = 25,
		message = "丞相可以增加BUFF，速速打下右二丞相。",
		npc_tid = 7892,
	},
	
	[6] =
	{
		command_id = 26,
		message = "玄氣炮傷害高，快搶下玄氣炮支援內城。",
		npc_tid = 8534,
	},

	[7] =
	{
		command_id = 27,
		message = "金剛炮火力猛，請搶下金剛炮支援內城。",
		npc_tid = 8535,
	},

	[8] =
	{
		command_id = 28,
		message = "城南密道可以快速進內城，速度打下，支援內城。",
		npc_tid = 8226,
	},

	[9] =
	{
		command_id = 29,
		message = "城西密道可以快速進內城，速度打下，支援內城。",
		npc_tid = 8225,
	},
}

--本服阵营战command_id用41-60
convenient_chat.benfuzhenyingzhan =
{
	[1] =
	{
		command_id = 41,
		message = "圓盤中心，圍剿鎮魔巨獸",
		scene_id = 6104,
		target_x = 0,
		target_z = 0,
	},

	[2] =
	{
		command_id = 42,
		message = "佔據天眼陣旗",
		scene_id = 6104,
		target_x = -76.51,
		target_z = -63.07,
	},

	[3] =
	{
		command_id = 43,
		message = "搶下地藏陣旗",
		scene_id = 6104,
		target_x = 75.7,
		target_z = -48.8,
	},

	[4] =
	{
		command_id = 44,
		message = "佔據玄寶陣旗",
		scene_id = 6104,
		target_x = 76.51,
		target_z = 63.07,
	},

	[5] =
	{
		command_id = 45,
		message = "佔據聖泉陣旗",
		scene_id = 6104,
		target_x = -75.7,
		target_z = 48.8,
	},
}

--跨服阵营战command_id用61-80
convenient_chat.kuafuzhenyingzhan =
{
	[1] =
	{
		command_id = 61,
		message = "圓盤中心，圍剿鎮魔巨獸",
		scene_id = 6108,
		target_x = 0,
		target_z = 0,
	},

	[2] =
	{
		command_id = 62,
		message = "佔據天眼陣旗",
		scene_id = 6108,
		target_x = -76.51,
		target_z = -63.07,
	},

	[3] =
	{
		command_id = 63,
		message = "搶下地藏陣旗",
		scene_id = 6108,
		target_x = 75.7,
		target_z = -48.8,
	},

	[4] =
	{
		command_id = 64,
		message = "佔據玄寶陣旗",
		scene_id = 6108,
		target_x = 76.51,
		target_z = 63.07,
	},

	[5] =
	{
		command_id = 65,
		message = "佔據聖泉陣旗",
		scene_id = 6108,
		target_x = -75.7,
		target_z = 48.8,
	},
}

--跨服物资争夺command_id用81-100
convenient_chat.kuafuwuzizhengduo =
{
	[1] =
	{
		command_id = 81,
		message = "集火大據點",
		scene_id = 6106,
		target_x = -184.07,
		target_z = -186.49,
	},

	[2] =
	{
		command_id = 82,
		message = "集火中據點",
		scene_id = 6106,
		target_x = -47.14,
		target_z = -45.85,
	},

	[3] =
	{
		command_id = 83,
		message = "集火小據點",
		scene_id = 6106,
		target_x = 35.22,
		target_z = 40.05,
	},
}

return convenient_chat