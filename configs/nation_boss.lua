
--国家boss相关

local nationBoss = nationBoss or {}

--boss id 列表
nationBoss.BossIds = 
{

	3960,
	3961,
	3962,
	4450,
	4451,
	6225,
	8310,
	8309,
	8308,
	--6226,

}

--boss信息：boss名称、奖励信息等
nationBoss.InstInfo = 
{
 	[3960] = 
 	{
		name = "蠻錘力士", 
		sence = "王城", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "9:30|12:30|15:30|18:30", 
		reward = {2979,4186,590,408}, 
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5003,
			pos_x = 117,
			pos_z = -23,
		},
		scale = 0.4,
		existTime = "30分鐘", 
 	},

 	[3961] = 
 	{
		name = "裂顱者", 
		sence = "天門關", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "10:00|13:00|16:00|19:00", 
		reward = {4201,4186,590,408}, 
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5004,
			pos_x = 95,
			pos_z = 30, 
		},
		scale = 0.5,
		existTime = "30分鐘", 
 	},

 	[3962] = 
 	{
		name = "失控惡獸", 
		sence = "邊境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "11:30|14:30|17:30|21:00", 
		reward = {4206,4186,590,408},  
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5005,
			pos_x = -70,
			pos_z = 95,
		},
		scale = 0.3,
		existTime = "30分鐘", 
 	},
	
	 [4450] = 
 	{
		name = "破陣先鋒", 
		sence = "京郊", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "9:00|17:00", 
		reward = {4211,4186,590,408},  
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5006,
			pos_x = 60,
			pos_z = 96,
		},
		scale = 0.3,
		existTime = "30分鐘", 
 	},
	
	[4451] = 
 	{
		name = "破陣金剛", 
		sence = "京郊", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "10:30|21:30", 
		reward = {4216,4186,590,408},  
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5006,
			pos_x = -77,
			pos_z = 3,
		},
		scale = 0.3,
		existTime = "30分鐘", 
 	},

	[6225] = 
 	{
		name = "斬首狂徒", 
		sence = "南華仙境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "20:35", 
		reward = {5699,4186,4584,6667},  
		operation = 
		{
			operation_type = 0,--0表示寻路，1表示打开界面
			sid = 5022,
			pos_x = -79,
			pos_z = 61,
		},
		scale = 0.5,
		existTime = "30分鐘", 
 	},

 	 [8310] = 
 	{
		name = "饕餮", 
		sence = "洪荒幻境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "13:00|19:15", 
		reward = {8999},  
		operation = 
		{
			operation_type = 1,--0表示寻路，1表示打开界面
			open_ui = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end,
		},
		scale = 0.3,
		existTime = "30分鐘", 
 	},

 	 	[8309] = 
 	{
		name = "朱雀", 
		sence = "洪荒幻境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "13:15|19:00", 
		reward = {8999},  
		operation = 
		{
			operation_type = 1,--0表示寻路，1表示打开界面
			open_ui = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end,
		},
		scale = 0.3,
		existTime = "30分鐘", 
 	},

	[8308] = 
 	{
		name = "地狼", 
		sence = "洪荒幻境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "13:00|19:00", 
		reward = {8999},  
		operation = 
		{
			operation_type = 1,--0表示寻路，1表示打开界面
			open_ui = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end,
		},
		scale = 0.6,
		existTime = "30分鐘", 
 	},



 	

	--[[
	[6226] = 
 	{
		name = "金刀护法", 
		sence = "南华仙境", 
		reqPower = 999999, 
		line = 0, 
		updataTime = "19:30|20:40", 
		reward = {5704,4186,590,408},  
		sid = 5022,
		pos_x = 103,
		pos_z = 99,
		scale = 0.6,
		existTime = "60分钟", 
 	}
	]]


}

return nationBoss