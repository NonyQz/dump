
--剧情副本副本相关

local instanceStory = instanceStory or {}

--副本id集合
instanceStory.ChapterTitles = 
{
	[1] = 885,  --"章节一·苍天劫",
	[2] = 886,  --"章节二·乱长安",
	[3] = 887,  --"章节三·战宛城",
	[4] = 888,  --"章节四·邺城祸",
	[5] = 889,  --"章节五·群英会",
	[6] = 890,  --"章节六·忆虎牢",
	[7] = 891,  --"章节七·华容道",
	[8] = 892,  --"章节八·甘露寺",
	[9] = 893,  --"章节九·战潼关",
	[10] = 894,  --"章节十·空城计",
	[11] = 2088,  --"章节十一·借东风",
	[12] = 2089,  --"章节十二·战合淝",
	[13] = 2090,  --"章节十三·失荆州",
	[14] = 2091,  --"章节十四·出祁山",
	[15] = 4179,  --"章节十五·烧连营",
	[16] = 4180,  --"章节十六·加九锡",
}

--副本名称集合
instanceStory.ChapterNames = 
{
	[1] = "章節一·蒼天劫",
	[2] = "章節二·亂長安",
	[3] = "章節三·戰宛城",
	[4] = "章節四·鄴城禍",
	[5] = "章節五·群英會",
	[6] = "章節六·憶虎牢",
	[7] = "章節七·華容道",
	[8] = "章節八·甘露寺",
	[9] = "章節九·戰潼關",
	[10] = "章節十·空城計",
	[11] = "章節十一·借東風",
	[12] = "章節十二·戰合淝",
	[13] = "章節十三·失荊州",
	[14] = "章節十四·出祁山",
	[15] = "章節十五·燒連營",
	[16] = "章節十六·加九錫",
}

--关卡副本具体信息
instanceStory.ChapterInfo = 
{
	--章节一·苍天劫
	[1] =  
 	{
 		[1] = { icon = 1440, reqPower = 30000, reward = {4152}, rewardId = 1133, },
 		[2] = { icon = 1440, reqPower = 50000, reward = {986,4152}, rewardId = 1134, },
 		[3] = { icon = 1440, reqPower = 70000, reward = {1557,4152}, rewardId = 1135, },
 	},

	--章节二·乱长安
	[2] =  
 	{
 		[1] = { icon = 1441, reqPower = 60000, reward = {4152}, rewardId = 1136, },
 		[2] = { icon = 1441, reqPower = 100000, reward = {1209,4152}, rewardId = 1137, },
 		[3] = { icon = 1441, reqPower = 140000, reward = {1570,4152}, rewardId = 1138, },
 	},

 	--章节三·战宛城
	[3] =  
 	{
 		[1] = { icon = 1442, reqPower = 110000, reward = {4152}, rewardId = 1139, },
 		[2] = { icon = 1442, reqPower = 170000, reward = {842,4152}, rewardId = 1140, },
 		[3] = { icon = 1442, reqPower = 230000, reward = {1587,4152}, rewardId = 1141, },
 	},

	--章节四·邺城祸
	[4] =  
 	{
 		[1] = { icon = 1443, reqPower = 160000, reward = {4152}, rewardId = 1142, },
 		[2] = { icon = 1443, reqPower = 240000, reward = {907,4152}, rewardId = 1143, },
 		[3] = { icon = 1443, reqPower = 320000, reward = {1565,4152}, rewardId = 1144, },
 	},

 	--章节五·群英会
	[5] =  
 	{
 		[1] = { icon = 1444, reqPower = 220000, reward = {4152}, rewardId = 1145, },
 		[2] = { icon = 1444, reqPower = 320000, reward = {1209,4152}, rewardId = 1146, },
 		[3] = { icon = 1444, reqPower = 420000, reward = {1562,4152}, rewardId = 1147, },
 	},

	--章节六·忆虎牢
	[6] =  
 	{
 		[1] = { icon = 1445, reqPower = 280000, reward = {4152}, rewardId = 1148, },
 		[2] = { icon = 1445, reqPower = 400000, reward = {842,4152}, rewardId = 1149, },
 		[3] = { icon = 1445, reqPower = 520000, reward = {1560,4152}, rewardId = 1150, },
 	},

 	--章节七·华容道
	[7] =  
 	{
 		[1] = { icon = 1446, reqPower = 320000, reward = {4152}, rewardId = 1151, },
 		[2] = { icon = 1446, reqPower = 480000, reward = {907,4152}, rewardId = 1152, },
 		[3] = { icon = 1446, reqPower = 640000, reward = {1559,4152}, rewardId = 1153, },
 	},

	--章节八·甘露寺
	[8] =  
 	{
 		[1] = { icon = 1447, reqPower = 400000, reward = {4152}, rewardId = 1154, },
 		[2] = { icon = 1447, reqPower = 600000, reward = {1209,4152}, rewardId = 1155, },
 		[3] = { icon = 1447, reqPower = 800000, reward = {1554,4152}, rewardId = 1156, },
 	},

 	--章节九·战潼关
	[9] =  
 	{
 		[1] = { icon = 1448, reqPower = 500000, reward = {4152}, rewardId = 1157, },
 		[2] = { icon = 1448, reqPower = 700000, reward = {842,4152}, rewardId = 1158, },
 		[3] = { icon = 1448, reqPower = 900000, reward = {1578,4152}, rewardId = 1159, },
 	},

	--章节十·空城计
	[10] =  
 	{
 		[1] = { icon = 1449, reqPower = 600000, reward = {4152}, rewardId = 1160, },
 		[2] = { icon = 1449, reqPower = 900000, reward = {907,4152}, rewardId = 1161, },
 		[3] = { icon = 1449, reqPower = 1200000, reward = {1556,4152}, rewardId = 1162, },
 	},
	
--以下内容为新增，未完全填好

	--章节十一·借东风
	[11] =  
 	{
 		[1] = { icon = 1894, reqPower = 1200000, reward = {4152}, rewardId = 2113, },
 		[2] = { icon = 1894, reqPower = 2000000, reward = {1209,4152}, rewardId = 2114, },
 		[3] = { icon = 1894, reqPower = 2800000, reward = {5650,4152}, rewardId = 2115, },
 	},

	--章节十二·战合淝
	[12] =  
 	{
 		[1] = { icon = 1895, reqPower = 2000000, reward = {4152}, rewardId = 2116, },
 		[2] = { icon = 1895, reqPower = 3000000, reward = {842,4152}, rewardId = 2117, },
 		[3] = { icon = 1895, reqPower = 4000000, reward = {5651,4152}, rewardId = 2118, },
 	},

	--章节十三·失荆州
	[13] =  
 	{
 		[1] = { icon = 1446, reqPower = 2500000, reward = {4152}, rewardId = 2119, },
 		[2] = { icon = 1446, reqPower = 3500000, reward = {907,4152}, rewardId = 2120, },
 		[3] = { icon = 1446, reqPower = 4500000, reward = {4790,4152}, rewardId = 2121, },
 	},

	--章节十四·出祁山
	[14] =  
 	{
 		[1] = { icon = 1897, reqPower = 3000000, reward = {4152}, rewardId = 2122, },
 		[2] = { icon = 1897, reqPower = 4000000, reward = {4797,4152}, rewardId = 2123, },
 		[3] = { icon = 1897, reqPower = 5000000, reward = {5652,4152}, rewardId = 2124, },
 	},
 	
 	--章节十五·烧连营
	[15] =  
 	{
 		[1] = { icon = 1835, reqPower = 4000000, reward = {4152}, rewardId = 4211, },
 		[2] = { icon = 1835, reqPower = 5000000, reward = {4797,4152}, rewardId = 4212, },
 		[3] = { icon = 1835, reqPower = 6000000, reward = {1555,4152}, rewardId = 4213, },
 	},

	--章节十六·加九锡
	[16] =  
 	{
 		[1] = { icon = 1896, reqPower = 5000000, reward = {4152}, rewardId = 4214, },
 		[2] = { icon = 1896, reqPower = 6000000, reward = {4797,4152}, rewardId = 4215, },
 		[3] = { icon = 1896, reqPower = 7000000, reward = {1568,4152}, rewardId = 4216, },
 	},


}


return instanceStory