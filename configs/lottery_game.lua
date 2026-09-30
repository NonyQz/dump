local LotteryGameConfig = {}

local configInstance = {}

local TaskType = 
{
	Success = 1,
	Fail = 2,
	Subtask = 3,
	Reward = 4,
}

LotteryGameConfig.time = {[1] = 0.1, [2] = 0.095, [3] = 0.09, [4] = 0.085, [5] = 0.08, [6] = 0.075, [7] = 0.07, [8] = 0.065, [9] = 0.06, [10] = 0.055, [11] = 0.05, [12] = 0.045, [13] = 0.04, [14] = 0.035, [15] = 0.03, [16] = 2, [17] = 0.03, [18] = 0.035, [19] = 0.04, [20] = 0.045, [21] = 0.05, [22] = 0.055, [23] = 0.06, [24] = 0.065, [25] = 0.07, [26] = 0.075, [27] = 0.08, [28] = 0.085, [29] = 0.09, [30] = 0.095, [31] = 0.1, [32] = 0.11, [33] = 0.12, [34] = 0.13, [35] = 0.14, [36] = 0.15, [37] = 0.16, [38] = 0.17, [39] = 0.18, [40] = 0.19, [41] = 0.2, [42] = 0.3,}
LotteryGameConfig.circle = {[1] = 0.1, [2] = 0.1, [3] = 0.1, [4] = 0.1, [5] = 0.1, [6] = 0.1, [7] = 0.1, [8] = 0.1, [9] = 0.1, [10] = 0.1, [11] = 0.1, [12] = 0.1, [13] = 0.1, [14] = 0.1, [15] = 0.1, [16] = 10, [17] = 0.1, [18] = 0.1, [19] = 0.1, [20] = 0.1, [21] = 0.1, [22] = 0.1, [23] = 0.1, [24] = 0.1, [25] = 0.1, [26] = 0.1, [27] = 0.1, [28] = 0.1, [29] = 0.1, [30] = 0.1, [31] = 0.1, [32] = 0.1, [33] = 0.1, [34] = 0.1, [35] = 0.1, [36] = 0.1, [37] = 0.1, [38] = 0.1, [39] = 0.1, [40] = 0.1, [41] = 0.1, [42] = 0.1,}
LotteryGameConfig.waitTime = 0.4
LotteryGameConfig.successWaitTime = 0.5
function LotteryGameConfig:getTaskTypes ()
	return TaskType
end

function LotteryGameConfig:getAllConfigs ()
	return configInstance
end

function LotteryGameConfig:addConfig(config)
	if config then
		configInstance[#configInstance + 1] = config
	end
end

--第一关数据
LotteryGameConfig:addConfig
{
	main_task_id = 1367,
	reward_task_id = 1387,
	key_task_id = 1386,
	main_task_key_tid = 7553,
    name = "東嶺關",
    img = "donglingguan",
	desc = "歷盡艱苦，關雲長一行成功通過東嶺關，護送二夫人繼續走上尋找兄長的道路。前途漫漫，上下求索。請選擇您的獎勵。",
	show = 1,
	--8个任务id和显示图标
	tasks =
	{
		{
			taskId = 1368,
			iconId = 1040,
			taskType = TaskType.Success,
			name = "kongxiu",
		},
		{
			taskId = 1371,
			iconId = 2361,
			taskType = TaskType.Reward,
			name = "T_huangye",
		},
		{
			taskId = 1369,
			subTasks = {1376, 1377, 1378, 1379, 1380},
			iconId = 2366,
			taskType = TaskType.Subtask,
			name = "T_simiao",
		},
		{
			taskId = 1372,
			iconId = 2367,
			taskType = TaskType.Reward,
			name = "T_hebian",
		},
		{
			taskId = 1375,
			iconId = 2363,
			taskType = TaskType.Fail,
			name = "T_minzhai",
		},			
		{
			taskId = 1373,
			iconId = 2364,
			taskType = TaskType.Reward,
			name = "T_shanjiao",
		},	
		{
			taskId = 1370,
			subTasks = {1381, 1382, 1383, 1384, 1385},
			iconId = 2368,
			taskType = TaskType.Subtask,
			name = "T_yingzhai",
		},
		{
			taskId = 1374,
			iconId = 2365,
			taskType = TaskType.Reward,
			name = "T_linjian",
		},	
	},
}

--第二关数据
LotteryGameConfig:addConfig
{
	main_task_id = 1422,
	reward_task_id = 1441,
	key_task_id = 1440,
	main_task_key_tid = 7554,
    name = "洛陽城",
    img = "luoyangcheng",
	desc = "歷盡艱苦，關雲長一行成功通過洛陽城，護送二夫人繼續走上尋找兄長的道路。前途漫漫，上下求索。請選擇您的獎勵。",
	show = 1,
	--8个任务id和显示图标
	tasks =
	{
		{
			taskId = 1442,
			iconId = 1031,
			taskType = TaskType.Success,
			name = "hanfu",
		},
		{
			taskId = 1425,
			iconId = 2361,
			taskType = TaskType.Reward,
			name = "T_huangye",
		},
		{
			taskId = 1423,
			subTasks = {1430, 1431, 1432, 1433, 1434},
			iconId = 2366,
			taskType = TaskType.Subtask,
			name = "T_simiao",
		},
		{
			taskId = 1426,
			iconId = 2367,
			taskType = TaskType.Reward,
			name = "T_hebian",
		},
		{
			taskId = 1429,
			iconId = 2363,
			taskType = TaskType.Fail,
			name = "T_minzhai",
		},			
		{
			taskId = 1427,
			iconId = 2364,
			taskType = TaskType.Reward,
			name = "T_shanjiao",
		},	
		{
			taskId = 1424,
			subTasks = {1435, 1436, 1437, 1438, 1439},
			iconId = 2368,
			taskType = TaskType.Subtask,
			name = "T_yingzhai",
		},
		{
			taskId = 1428,
			iconId = 2365,
			taskType = TaskType.Reward,
			name = "T_linjian",
		},	

	},
}

--第三关数据
LotteryGameConfig:addConfig
{
	main_task_id = 1443,
	reward_task_id = 1463,
	key_task_id = 1462,
	main_task_key_tid = 7555,
    name = "汜水關",
    img = "sishuiguan",
	desc = "歷盡艱苦，關雲長一行成功通過汜水關，護送二夫人繼續走上尋找兄長的道路。前途漫漫，上下求索。請選擇您的獎勵。",
	show = 1,
	--8个任务id和显示图标
	tasks =
	{
		{
			taskId = 1444,
			iconId = 1033,
			taskType = TaskType.Success,
			name = "bianxi",
		},
		{
			taskId = 1447,
			iconId = 2361,
			taskType = TaskType.Reward,
			name = "T_huangye",
		},
		{
			taskId = 1445,
			subTasks = {1452, 1453, 1454, 1455, 1456},
			iconId = 2366,
			taskType = TaskType.Subtask,
			name = "T_simiao",
		},
		{
			taskId = 1448,
			iconId = 2367,
			taskType = TaskType.Reward,
			name = "T_hebian",
		},
		{
			taskId = 1451,
			iconId = 2363,
			taskType = TaskType.Fail,
			name = "T_minzhai",
		},			
		{
			taskId = 1449,
			iconId = 2364,
			taskType = TaskType.Reward,
			name = "T_shanjiao",
		},	
		{
			taskId = 1446,
			subTasks = {1457, 1458, 1459, 1460, 1461},
			iconId = 2368,
			taskType = TaskType.Subtask,
			name = "T_yingzhai",
		},
		{
			taskId = 1450,
			iconId = 2365,
			taskType = TaskType.Reward,
			name = "T_linjian",
		},	


	},
}

--第四关数据
LotteryGameConfig:addConfig
{
	main_task_id = 1464,
	reward_task_id = 1484,
	key_task_id = 1483,
	main_task_key_tid = 7556,
    name = "滎陽關",
    img = "rongyangcheng",
	desc = "歷盡艱苦，關雲長一行成功通過滎陽關，護送二夫人繼續走上尋找兄長的道路。前途漫漫，上下求索。請領取您的獎勵。",
	show = 1,
	--8个任务id和显示图标
	tasks =
	{
		{
			taskId = 1465,
			iconId = 1030,
			taskType = TaskType.Success,
			name = "wangzhi",
		},
		{
			taskId = 1468,
			iconId = 2361,
			taskType = TaskType.Reward,
			name = "T_huangye",
		},
		{
			taskId = 1466,
			subTasks = {1473, 1474, 1475, 1476, 1477},
			iconId = 2366,
			taskType = TaskType.Subtask,
			name = "T_simiao",
		},
		{
			taskId = 1469,
			iconId = 2367,
			taskType = TaskType.Reward,
			name = "T_hebian",
		},
		{
			taskId = 1472,
			iconId = 2363,
			taskType = TaskType.Fail,
			name = "T_minzhai",
		},			
		{
			taskId = 1470,
			iconId = 2364,
			taskType = TaskType.Reward,
			name = "T_shanjiao",
		},	
		{
			taskId = 1467,
			subTasks = {1478, 1479, 1480, 1481, 1482},
			iconId = 2368,
			taskType = TaskType.Subtask,
			name = "T_yingzhai",
		},
		{
			taskId = 1471,
			iconId = 2365,
			taskType = TaskType.Reward,
			name = "T_linjian",
		},	
	},
}

--第五关数据
LotteryGameConfig:addConfig
{
	main_task_id = 1485,
	reward_task_id = 1505,
	key_task_id = 0,
	main_task_key_tid = 7557,
    name = "黃河渡",
    img = "huanghedu",
	desc = "歷盡艱苦，關雲長一行成功通過黃河渡，護送二夫人繼續走上尋找兄長的道路。前途漫漫，上下求索。請領取您的獎勵。",
	show = 1,
	--8个任务id和显示图标
	tasks =
	{
		{
			taskId = 1486,
			iconId = 1015,
			taskType = TaskType.Success,
			name = "qinqi",
		},
		{
			taskId = 1489,
			iconId = 2361,
			taskType = TaskType.Reward,
			name = "T_huangye",
		},
		{
			taskId = 1487,
			subTasks = {1494, 1495, 1496, 1497, 1498},
			iconId = 2366,
			taskType = TaskType.Subtask,
			name = "T_simiao",
		},
		{
			taskId = 1490,
			iconId = 2367,
			taskType = TaskType.Reward,
			name = "T_hebian",
		},
		{
			taskId = 1493,
			iconId = 2363,
			taskType = TaskType.Fail,
			name = "T_minzhai",
		},			
		{
			taskId = 1491,
			iconId = 2364,
			taskType = TaskType.Reward,
			name = "T_shanjiao",
		},	
		{
			taskId = 1488,
			subTasks = {1499, 1500, 1501, 1502, 1503},
			iconId = 2368,
			taskType = TaskType.Subtask,
			name = "T_yingzhai",
		},
		{
			taskId = 1492,
			iconId = 2365,
			taskType = TaskType.Reward,
			name = "T_linjian",
		},	


	},
}

return LotteryGameConfig

-- print(configInstance[1].tasks[2].taskId)
