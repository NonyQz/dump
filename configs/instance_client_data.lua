--[[
	InstInfo_Client[场景ID] = 
	{
		name = "场景名",
		base_path = "场景文件夹",
		width = 宽度,
		height = 高度,
		need_level = 建议进入等级,
		bg_music = 背景音乐id,
		bg_sound = 背景音效id,
		cull_dist = 显示距离 (可选),
		--相机参数 (可选)
		cam_param =	{ distance = 距离, yaw = 朝向, pitch = 仰角 },
		is_neutral = 是否中立区，true/false
	}
	
	例：
	InstInfo_Client[5003] = 
	{
		name = "王城",
		base_path = "x2",
		width = 512,
		height = 512,
		need_level = 20,
		cam_param = { distance = 10, yaw = 45, pitch = -30 },
	}
]]

local InstInfo_Client = {}

InstInfo_Client[5002] = 
{
	name = "幫會莊園",
	base_path = "x1",
	width = 256,
	height = 256,
	need_level = 25,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[5003] = 
{
	name = "王城",
	base_path = "x2",
	width = 512,
	height = 512,
	need_level = 20,
	bg_music = 203,
	bg_sound = 206,
}
InstInfo_Client[-5003] = 
{
	name = "王城",
	base_path = "x2",
	width = 512,
	height = 512,
	scene_info = "Configs/inst_cfg/5003.lua",
	skybox = "Models/SkyBox/x2_skybox_Enemy.prefab.u3dext",
	bg_music = 203,	
	bg_sound = 206,
	cam_param = { distance = 8.7, yaw = -40.4, pitch = -28.7 },
}
InstInfo_Client[5004] = 
{
	name = "天門關",
	base_path = "x3",
	width = 256,
	height = 256,
	need_level = 30,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[-5004] = 
{
	name = "天門關",
	base_path = "x3",
	width = 256,
	height = 256,
	scene_info = "Configs/inst_cfg/5004.lua",
	skybox = "Models/SkyBox/x3_skybox_Enemy.prefab.u3dext",
	bg_music = 202,	
	bg_sound = 206,
}
InstInfo_Client[5005] = 
{
	name = "邊境",
	base_path = "x4",
	width = 256,
	height = 256,
	need_level = 200,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[-5005] = 
{
	name = "邊境",
	base_path = "x4",
	width = 256,
	height = 256,
	scene_info = "Configs/inst_cfg/5005.lua",
	skybox = "Models/SkyBox/x4_skybox_Enemy.prefab.u3dext",
	need_level = 200,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[5006] = 
{
	name = "京郊",
	base_path = "x5",
	width = 256,
	height = 256,
	need_level = 55,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[-5006] = 
{
	name = "京郊",
	base_path = "x5",
	width = 256,
	height = 256,
	scene_info = "Configs/inst_cfg/5006.lua",
	skybox = "Models/SkyBox/x5_skybox_Enemy.prefab.u3dext",
	need_level = 55,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[5007] = 
{
	name = "隆中",
	base_path = "x6",
	width = 256,
	height = 256,
	need_level = 1,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[5008] = 
{
	name = "迷宮1層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5009] = 
{
	name = "臥龍崗",
	base_path = "x8",
	width = 330,
	height = 330,
	need_level = 1,
	bg_music = 202,
	bg_sound = 206,
	cam_param = { distance = 9.2, yaw = -59.0, pitch = -32.9 },
}
InstInfo_Client[-5009] = 
{
	name = "臥龍崗",
	base_path = "x8",
	width = 330,
	height = 330,
	scene_info = "Configs/inst_cfg/5009.lua",
	skybox = "Models/SkyBox/x8_skybox_Enemy.prefab.u3dext",
	need_level = 1,
	bg_music = 202,
	bg_sound = 206,
	cam_param = { distance = 9.2, yaw = -59.0, pitch = -32.9 },
}
InstInfo_Client[5010] = 
{
	name = "迷宮2層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5011] = 
{
	name = "迷宮3層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5012] = 
{
	name = "迷宮4層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5013] = 
{
	name = "迷宮5層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5014] = 
{
	name = "迷宮6層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5015] = 
{
	name = "迷宮7層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5016] = 
{
	name = "迷宮8層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5017] = 
{
	name = "迷宮9層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5018] = 
{
	name = "迷宮10層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5019] = 
{
	name = "迷宮11層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5020] = 
{
	name = "迷宮12層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5021] = 
{
	name = "迷宮13層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5022] = 
{
	name = "南華仙境",
	base_path = "x17",
	width = 256, 
	height = 256, 
	need_level = 0,
	bg_music = 202,
	bg_sound = 206,
	is_neutral = true,
}
InstInfo_Client[5023] = 
{
	name = "洛陽",
	base_path = "x20",
	width = 512, 
	height = 512, 
	need_level = 0,
	bg_music = 202,
	bg_sound = 206,
	cull_dist = 400,
	is_neutral = true,
}
InstInfo_Client[5024] =		--跨服中心服
{
	name = "洪荒幻境",
	base_path = "x20",
	width = 512, 
	height = 512, 
	scene_info = "Configs/inst_cfg/5024.lua",
	skybox = "Models/SkyBox/x20_skybox_night.prefab.u3dext",
	need_level = 0,
	bg_music = 202,
	bg_sound = 206,
	cull_dist = 400,
	is_neutral = true,
}
InstInfo_Client[5025] = 
{
	name = "潼關",
	base_path = "x23",
	width = 256,
	height = 256,
	need_level = 90,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[5026] = 
{
	name = "迷宮14層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5027] = 
{
	name = "迷宮15層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[5028] = 
{
	name = "迷宮16層",
	base_path = "x7",
	width = 128, 
	height = 128, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}

InstInfo_Client[5029] = 
{
	name = "南蠻",
	base_path = "x24",
	width = 256, 
	height = 256, 
	need_level = 0,
	bg_music = 204,
	bg_sound = 205,
}
--跨版本全球战
InstInfo_Client[5030] = 
{
	name = "遠征戰場",
	base_path = "x20",
	width = 512, 
	height = 512, 
	need_level = 0,
	bg_music = 202,
	bg_sound = 206,
	cull_dist = 400,
	is_neutral = true,
}

InstInfo_Client[6002] = 
{
	name = "八陣圖副本",
	base_path = "x6",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 206,
}
InstInfo_Client[6003] = 
{
	name = "狂風寨副本",
	base_path = "x6",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 206,
}
InstInfo_Client[6004] = 
{
	name = "王城副本",
	base_path = "x2",
	width = 256,
	height = 256,
	scene_info = "Configs/inst_cfg/6004.lua",
	skybox = "Models/SkyBox/sky_2_red.prefab.u3dext",
	bg_music = 203,	
	bg_sound = 206,
	cam_param = { distance = 8.7, yaw = -40.4, pitch = -28.7 },
}
InstInfo_Client[6005] = 
{
	name = "山神廟",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}
InstInfo_Client[6006] = 
{
	name = "神秘棧道",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,	
	bg_sound = 206,
	cam_param = { distance = 11.9, yaw = -1.8, pitch = -39.5 },
}
InstInfo_Client[6007] = 
{
	name = "名將試煉",
	base_path = "x11",
	width = 32,
	height = 32,
	cam_param = { distance = 8.0, yaw = -87.5, pitch = -25.0 },
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6008] = 
{
	name = "擂臺",
	base_path = "x12",
	width = 32,
	height = 32,	
	bg_music = 204,
	bg_sound = 206,	
}
InstInfo_Client[6009] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6010] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6011] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
}
InstInfo_Client[6012] = 
{
	name = "闖天關",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 9.2, yaw = -89.1, pitch = -33.6 },
}
InstInfo_Client[6013] = 
{
	name = "藏金窟",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}
InstInfo_Client[6014] = 
{
	name = "長板橋",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,	
	bg_sound = 206,
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
}
InstInfo_Client[6015] = 
{
	name = "蒼天劫",
	base_path = "x11",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,
	cam_param = { distance = 8.0, yaw = -87.5, pitch = -25.0 },
}
InstInfo_Client[6016] = 
{
	name = "亂長安",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,	
	bg_sound = 206,	
	cam_param = { distance = 8.0, yaw = -90.5, pitch = -30.2 },
}
InstInfo_Client[6017] = 
{
	name = "戰宛城",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
	cam_param = { distance = 8.0, yaw = -91.1, pitch = -26.8 },
}
InstInfo_Client[6018] = 
{
	name = "鄴城禍",
	base_path = "x12",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 8.0, yaw = 92.9, pitch = -31.8 },	
}
InstInfo_Client[6019] = 
{
	name = "群英會",
	base_path = "x12",
	width = 32,
	height = 62,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 8.0, yaw = 92.9, pitch = -31.8 },	
}
InstInfo_Client[6020] = 
{
	name = "憶虎牢",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 8.0, yaw = -90.5, pitch = -30.2 },
}
InstInfo_Client[6021] = 
{
	name = "華容道",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 5.6, yaw = -3.8, pitch = -21 },
}
InstInfo_Client[6022] = 
{
	name = "甘露寺",
	base_path = "x12",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 8.0, yaw = -90.9, pitch = -31.8 },	
}
InstInfo_Client[6023] = 
{
	name = "戰潼關",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 206,		
	cam_param = { distance = 8.0, yaw = -90.5, pitch = -30.2 },
}
InstInfo_Client[6024] = 
{
	name = "空城計",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 205,		
	cam_param = { distance = 9.8, yaw = -0.4, pitch = -32.9 },
}
InstInfo_Client[6025] = 
{
	name = "藏金窟",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,	
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}
InstInfo_Client[6026] = 
{
	name = "藏金窟",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,	
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}
InstInfo_Client[6027] = 
{
	name = "長板橋",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
}
InstInfo_Client[6028] = 
{
	name = "長板橋",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
}
InstInfo_Client[6029] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 94.9, pitch = -32.5 },
}
InstInfo_Client[6030] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 94.9, pitch = -32.5 },
}
InstInfo_Client[6031] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 94.9, pitch = -32.5 },
}
InstInfo_Client[6032] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 94.9, pitch = -32.5 },
}
InstInfo_Client[6033] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 93.1, pitch = -34.5 },
}	
InstInfo_Client[6034] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 93.1, pitch = -34.5 },
}
InstInfo_Client[6035] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 93.1, pitch = -34.5 },
}
InstInfo_Client[6036] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}
InstInfo_Client[6037] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}
InstInfo_Client[6038] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}
InstInfo_Client[6039] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}
InstInfo_Client[6040] = 
{
	name = "借東風",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,	
	bg_sound = 206,	
	cam_param = { distance = 8.0, yaw = -90.5, pitch = -30.2 },
}
InstInfo_Client[6041] = 
{
	name = "戰合淝",
	base_path = "x12",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 8.0, yaw = 92.9, pitch = -31.8 },
}
InstInfo_Client[6042] = 
{
	name = "失荊州",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
	cam_param = { distance = 8.0, yaw = -91.1, pitch = -26.8 },
}
InstInfo_Client[6043] = 
{
	name = "出祁山",
	base_path = "x11",
	width = 32,
	height = 32,
	bg_music = 204,
	bg_sound = 205,
	cam_param = { distance = 8.0, yaw = -87.5, pitch = -25.0 },
}
--90级后副本
InstInfo_Client[6044] = 
{
	name = "天覆陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6045] = 
{
	name = "地載陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6046] = 
{
	name = "風揚陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6047] = 
{
	name = "雲垂陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6048] = 
{
	name = "龍飛陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6049] = 
{
	name = "虎翼陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6050] = 
{
	name = "鳥翔陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6051] = 
{
	name = "蛇蟠陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6052] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6053] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6054] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6055] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}
InstInfo_Client[6056] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6057] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6058] = 
{
	name = "藏金窟",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}
InstInfo_Client[6059] = 
{
	name = "長板橋",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,	
	bg_sound = 206,
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
}
InstInfo_Client[6060] = 
{
	name = "單人戰場",
	base_path = "x6",
	width = 256,
	height = 256,
	need_level = 25,
	bg_music = 202,
	bg_sound = 206,
}

InstInfo_Client[6061] = 
{
	name = "盜瓜小賊之家",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6 },
}

InstInfo_Client[6062] = 
{
	name = "鎖妖塔·妖劫篇",
	base_path = "x18",
	width = 64,
	height = 64,
	need_level = 200,  --寻路时判断是否可寻,副本无用
	bg_music = 204,
	bg_sound = 205,
}

InstInfo_Client[6063] = 
{
	name = "天絕陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6064] = 
{
	name = "地烈陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6065] = 
{
	name = "風吼陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6066] = 
{
	name = "寒冰陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6067] = 
{
	name = "金光陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6068] = 
{
	name = "化血陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6069] = 
{
	name = "落魂陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6070] = 
{
	name = "紅沙陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6071] = 
{
	name = "幫會戰戰場",
	base_path = "x19",
	width = 128,
	height = 128,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6072] = 
{
	name = "精英掃蕩",
	base_path = "x12",
	width = 32,
	height = 32,	
	bg_music = 204,
	bg_sound = 206,	
}

InstInfo_Client[6074] = 
{
	name = "獵苑",
	base_path = "x6",
	width = 256,
	height = 256,
	need_level = 1,
	bg_music = 202,
	bg_sound = 206,
}
InstInfo_Client[6075] = 
{
	name = "封禪台",
	base_path = "x12",
	width = 32,
	height = 32,	
	bg_music = 204,
	bg_sound = 206,	
}
InstInfo_Client[6076] = 
{
	name = "銅雀塔",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,	
}
InstInfo_Client[6077] = 
{
	name = "白帝城",
	base_path = "x18",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 206,
}
InstInfo_Client[6078] = 
{
	name = "跨服三國志",
	base_path = "x20",
	width = 512,
	height = 512,
	scene_info = "Configs/inst_cfg/6078.lua",
	skybox = "Models/SkyBox/x20_skybox_red.prefab.u3dext",
	bg_music = 204,
	bg_sound = 206,
}

InstInfo_Client[6079] = 
{
	name = "子午谷",
	base_path = "x6",
	width = 256,
	height = 256,
	need_level = 1,
	bg_music = 202,
	bg_sound = 206,
}

InstInfo_Client[6080] = 
{
	name = "燒連營",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 5.6, yaw = -3.8, pitch = -21 },
}

InstInfo_Client[6081] = 
{
	name = "加九錫",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,	
	bg_sound = 206,	
	cam_param = { distance = 8.0, yaw = -90.5, pitch = -30.2 },
}

InstInfo_Client[6082] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}

InstInfo_Client[6083] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}

InstInfo_Client[6084] = 
{
	name = "伏龍秘境",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = -91.0, pitch = -19.9 },
}

InstInfo_Client[6085] = 
{
	name = "仙獸獵苑",
	base_path = "x10",
	width = 128,
	height = 128,
	bg_music = 204,
	bg_sound = 206,		
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
}

InstInfo_Client[6086] = 
{
	name = "個人試煉",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 9.2, yaw = -89.1, pitch = -33.6 },
}

InstInfo_Client[6087] = 
{
	name = "糖果小屋",
	base_path = "x9",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,
	cam_param = { distance = 9.1, yaw = -91.8, pitch = -34.6},
}

InstInfo_Client[6088] = 
{
	name = "平定馬賊",
	base_path = "x10",
	width = 32,
	height = 32,
	cam_param = { distance = 11.9, yaw = -179.6, pitch = -36 },
	bg_music = 204,
	bg_sound = 205,	
}
InstInfo_Client[6089] = 
{
	name = "演武校場",
	base_path = "x20",
	width = 512,
	height = 512,
	skybox = "Models/SkyBox/x20_skybox_red.prefab.u3dext",
	bg_music = 204,
	bg_sound = 206,
}
InstInfo_Client[6090] = 
{
	name = "巔峰武鬥場",
	base_path = "x23",
	width = 512,
	height = 512,
	bg_music = 204,
	bg_sound = 206,
}
InstInfo_Client[6091] = 
{
	name = "同心之證",
	base_path = "x21",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,
}
InstInfo_Client[6092] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0, pitch = -30.5 },
}

InstInfo_Client[6093] = 
{
	name = "六合陣",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6094] = 
{
	name = "皇陵偏殿",
	base_path = "x13",
	width = 32,
	height = 32,
	bg_music = 204,	
	bg_sound = 205,	
}

InstInfo_Client[6095] = 
{
	name = "試煉之巔",
	base_path = "x16",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 9.2, yaw = -89.1, pitch = -33.6 },
}

InstInfo_Client[6096] = 
{
	name = "皇陵密室",
	base_path = "x14",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 206,	
	cam_param = { distance = 9.2, yaw = -89.1, pitch = -33.6 },
}

InstInfo_Client[6097] = 
{
	name = "潼關之圍",
	base_path = "x23",
	width = 256,
	height = 256,
	need_level = 90,
	bg_music = 202,
	bg_sound = 206,
	cam_param = { distance = 9.2, yaw = -89.1, pitch = -33.6 },
}

InstInfo_Client[6098] = 
{
	name = "聖誕秘境",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = -91.0, pitch = -19.9 },
}

InstInfo_Client[6099] = 
{
	name = "聖誕秘境",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = -91.0, pitch = -19.9 },
}

InstInfo_Client[6100] = 
{
	name = "朱雀聖壇",
	base_path = "x18",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = -90.0, pitch = -19.9 },
}

InstInfo_Client[6101] = 
{
	name = "皇陵寶庫",
	base_path = "x15",
	width = 32,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
}
InstInfo_Client[6102] = 
{
	name = "青龍聖壇",
	base_path = "x20",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}

InstInfo_Client[6103] = 
{
	name = "冥府追魂",
	base_path = "x22",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}

InstInfo_Client[6104] = 
{
	name = "陣營戰",
	base_path = "x25",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -33.6 },
}
InstInfo_Client[6105] = 
{
	name = "玄武聖壇",
	base_path = "x17",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6106] =		--跨服物资争夺
{
	name = "物資爭奪戰",
	base_path = "x20",
	width = 512, 
	height = 512, 
	skybox = "Models/SkyBox/x20_skybox_night.prefab.u3dext",
	need_level = 0,
	bg_music = 202,
	bg_sound = 206,
	cull_dist = 400,
	is_neutral = true,
}
InstInfo_Client[6107] =		--跨服物资争夺
{
	name = "白虎聖壇",
	base_path = "x5",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6108] = 
{
	name = "跨服陣營戰",
	base_path = "x25",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -33.6 },
}

InstInfo_Client[6113] = 
{
	name = "誅仙謎雲",
	base_path = "x5",
	width = 64,
	height = 64,
	bg_music = 204,	
	bg_sound = 205,	
}


InstInfo_Client[6115] = 
{
	name = "書院·迷陣",
	base_path = "x22",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6116] = 
{
	name = "跑跑大賽",
	base_path = "x25",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -33.6 },
}

InstInfo_Client[6117] = 
{
	name = "春日演武",
	base_path = "x22",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6118] = 
{
	name = "春日演武",
	base_path = "x22",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6119] = 
{
	name = "春日演武",
	base_path = "x22",
	width = 64,
	height = 64,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -19.9 },
}
InstInfo_Client[6120] = 
{
	name = "勝者為王",
	base_path = "x25",
	width = 256,
	height = 256,
	bg_music = 204,
	bg_sound = 205,		
	cam_param = { distance = 8.5, yaw = 0.0, pitch = -33.6 },
}
return InstInfo_Client