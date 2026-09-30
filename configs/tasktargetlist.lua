local QuestList={}

--[[
ObjInfo:任务 ID
postype: 坐标点类型，可为：
	省略或 "normal"，此时以下字段生效
		nation: 国家ID，0 为本国，-1 为不限，-2 为其他任意国家，-3 敌国，-4 盟国，1~6 对应各国 (暂时可不填，相当于 0 本国)
		sid:场景 ID (0表示不需寻径)
		x，z:坐标点
	"taskpos": 接任务位置
action: 到达目标点后的操作
	type = "none"：寻路到目标点后不做动作
	type = "kill"：杀死怪物或NPC
		参数：target，怪物或NPC tid
	type = "talk"：与NPC对话
		参数：target，NPC tid
	type = "mine"：采矿
		参数：target，矿 tid
	type = "autofight"：开始自动战斗
	type = "escort"：运镖专用寻径
	type = "useitem"：使用物品
		参数：target，物品 tid
	type = "dropinfo"：调用物品来源
		参数：target，物品来源 id (见 DropInfo.lua)
	type = "custom"：执行函数
		参数：target，将执行的函数
		可利用的函数
			select_ivtr_item(itemTid)	-- 打开包裹界面并选中指定ID物品
			task_try_pairing(taskTid)	-- 检查触发任务结对，id为任务自身id
			task_try_pairing_with_spouse(taskTid) 	--结对任务判断夫妻关系，id为任务自身id
			function () speak(speakid) end	--调用speak喊话id
	type = "redirect": 执行函数，以函数结果为目标
		参数：target，将执行的函数，函数返回值同 target 本身
		可利用的函数
			make_random_target(pos_list)	-- 生成函数，函数随机返回位置列表中的一个
				例
			QuestList[339] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_random_target
			{
				{ nation=0, sid = 5003 ,x = -50 ,z = -50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = -50 ,z = 50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = 50 ,z = -50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = 50 ,z = 50, action={type="autofight"} },
			} } }
			make_nearest_target(pos_list)	-- 生成函数，函数返回位置列表中的最近的一个
				例
			QuestList[338] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5003 ,x = -50 ,z = -50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = -50 ,z = 50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = 50 ,z = -50, action={type="autofight"} },
				{ nation=0, sid = 5003 ,x = 50 ,z = 50, action={type="autofight"} },
				{ nation=0, sid = 5004 ,x = -10 ,z = 10, action={type="autofight"} },
			} } }
		
	distance = 停止距离(可选)
	例：
		action={type="mine", target=93}
		action={type="mine", target=93, distance=3}
]]


--变强与掉落索引寻路
QuestList[-1] = { nation=0, sid  = 5003 ,x = -160 ,z = 121, action={type="talk", target=2685}, } --迷宫探宝
QuestList[-2] = { nation=0, sid  = 5003 ,x = -225 ,z = 65, action={type="talk", target=913}, } --神树
QuestList[-3] = { nation=0, sid  = 5003 ,x = 9 ,z = 34, action={type="talk", target=1229}, } --除暴安良
QuestList[-4] = { nation=0, sid  = 5003 ,x = -78 ,z = -29, action={type="talk", target=413}, } --帮会跑环

QuestList[21] = { nation=0, sid  = 5002 ,x = 71.37 ,z = -62.22, action={type="talk", target=4859}, }
QuestList[25] = { nation=0, sid  = 5002 ,x = -94 ,z = 54, action={type="mine", target=93}, }
--帮会防守
QuestList[29] = { nation=0, sid  = 5002 ,x = -1.46 ,z = -56.81, action={type="autofight", target=0}, }

--帮会战
QuestList[1390] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[1409] = { nation=1, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1410] = { nation=2, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1411] = { nation=3, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1412] = { nation=4, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1413] = { nation=5, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1414] = { nation=6, sid  = 5004 ,x = 49 ,z = 53.2, action={type="none",target = 0}, }
QuestList[1508] = { postype="taskpos", action={type="kill", target=7621}, }
QuestList[1415] = { nation=1, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1416] = { nation=2, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1417] = { nation=3, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1418] = { nation=4, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1419] = { nation=5, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1420] = { nation=6, sid  = 5005 ,x = 0 ,z = 0, action={type="none",target = 0}, }
QuestList[1509] = { postype="taskpos", action={type="none", target=0}, }
QuestList[1403] = { nation=1, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }
QuestList[1404] = { nation=2, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }
QuestList[1405] = { nation=3, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }
QuestList[1406] = { nation=4, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }
QuestList[1407] = { nation=5, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }
QuestList[1408] = { nation=6, sid  = 5005 ,x = 96 ,z = -41, action={type="kill",target = 785}, }

QuestList[30] = { nation=0, sid  = 5002 ,x = 53 ,z = 83, action={type="mine", target=96}, }
QuestList[31] = { nation=0, sid  = 5002 ,x = 19 ,z = 79, action={type="none", target=0}, }
QuestList[34] = { nation=0, sid  = 5002 ,x = 84 ,z = 54, action={type="mine", target=94}, }
QuestList[37] = { nation=0, sid  = 5002 ,x = 64.3 ,z = 13.8, action={type="kill", target=123}, }
QuestList[47] = { nation=0, sid  = 5002 ,x = 63 ,z = -54, action={type="mine", target=98}, }
QuestList[57] = { nation=0, sid  = 5002 ,x = -33 ,z = -95, action={type="mine", target=99}, }
QuestList[59] = { nation=0, sid  = 5002 ,x = -88,z = -46, action={type="kill", target=134}, }
QuestList[306] = { nation=0, sid  = 5002 ,x = -59 ,z = 100.7, action={type="mine", target=95}, }
QuestList[307] = { nation=0, sid  = 5002 ,x = -30 ,z = 93, action={type="kill", target=909}, }
QuestList[345] = { nation=0, sid  = 5002 ,x = -35 ,z = 99, action={type="kill", target=909}, }
QuestList[62] = { nation=0, sid  = 5003 ,x = -211 ,z = 142, action={type="none", target=0}, }
QuestList[92] = { nation=0, sid  = 5003 ,x = 206.65 ,z = -65.99, action={type="none", target=0}, }
QuestList[96] = { nation=0, sid  = 5004 ,x = -81 ,z = 63, action={type="none", target=0}, }
QuestList[107] = { nation=0, sid  = 5005 ,x = -17.3 ,z = -20, action={type="none", target=0}, }
QuestList[164] = { nation=0, sid  = 5004 ,x = -59.9 ,z = 80.3, action={type="none", target=0}, }
QuestList[201] = { nation=0, sid  = 5004 ,x = -53 ,z = 35, action={type="mine", target=669}, }
QuestList[167] = { nation=0, sid  = 5004 ,x = -81 ,z = 18, action={type="none", target=0}, }
QuestList[175] = { nation=0, sid  = 5004 ,x = 72.6 ,z = 81.7, action={type="none", target=0}, }
QuestList[181] = { nation=0, sid  = 5004 ,x = 85 ,z = 46.3, action={type="mine", target=670}, }
QuestList[204] = { nation=0, sid  = 5004 ,x = -49 ,z = -58, action={type="mine", target=671}, }
QuestList[193] = { nation=0, sid  = 5004 ,x = 43.4 ,z = -78.2, action={type="none", target=0}, }
QuestList[207] = { nation=0, sid  = 5005 ,x = -19 ,z = 18, action={type="none", target=0}, }
QuestList[211] = { nation=0, sid  = 5005 ,x = -51,z = 69.2, action={type="mine", target=794}, }
QuestList[217] = { nation=0, sid  = 5005 ,x = -81.3 ,z = 37, action={type="none", target=0}, }
QuestList[247] = { nation=0, sid  = 5005 ,x = -77 ,z = -82, action={type="mine", target=795}, }
QuestList[228] = { nation=0, sid  = 5005 ,x = 16 ,z = -72, action={type="mine", target=796}, }
QuestList[230] = { nation=0, sid  = 5005 ,x = 93.4 ,z = -44, action={type="none", target=0}, }
QuestList[232] = { nation=0, sid  = 5005 ,x = 40.9 ,z = -87.8, action={type="none", target=0}, }
QuestList[250] = { nation=0, sid  = 5005 ,x = 98 ,z = 72, action={type="mine", target=798}, }
QuestList[309] = { nation=0, sid  = 5003 ,x = -93 ,z = -197, action={type="autofight", target=0}, }
QuestList[310] = { nation=0, sid  = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight", target=0}, }
QuestList[311] = { nation=0, sid  = 5003 ,x = 126.6 ,z = -18.7, action={type="autofight", target=0}, }
QuestList[312] = { nation=0, sid  = 5003 ,x = 196 ,z = 50, action={type="autofight", target=0}, }
QuestList[313] = { nation=0, sid  = 5004 ,x = -59 ,z = 80, action={type="autofight", target=0}, }
QuestList[314] = { nation=0, sid  = 5004 ,x = -83 ,z = 19, action={type="autofight", target=0}, }
QuestList[315] = { nation=0, sid  = 5004 ,x = 75 ,z = 90, action={type="autofight", target=0}, }
QuestList[316] = { nation=0, sid  = 5004 ,x = -44 ,z = -37, action={type="autofight", target=0}, }
QuestList[317] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[318] = { nation=0, sid  = 5004 ,x = 70 ,z = -80, action={type="autofight", target=0}, }
--王城新建任务追踪
QuestList[429] = { nation=0, sid  = 5003 ,x = -203 ,z = -16, action={type="talk", target=913}, }
QuestList[73] = { nation=0, sid  = 5003 ,x = -217 ,z = -163.24, action={type="mine", target=344}, } --救人
QuestList[76] = { nation=0, sid  = 5003 ,x = -104 ,z = -187.4, action={type="mine", target=345}, } --黑风旗
QuestList[77] = { nation=0, sid  = 5003 ,x = 47.8 ,z = -96.1, action={type="kill", target=329}, } --黄风劫匪
QuestList[81] = { nation=0, sid  = 5003 ,x = -93 ,z = -197, action={type="autofight", target=0}, } 
QuestList[102] = { nation=0, sid  = 5003 ,x = 171.1 ,z = 144.76, action={type="mine", target=4459},} --简易陷坑
QuestList[104] = { nation=0, sid  = 5003 ,x = 221 ,z = 134, action={type="kill", target=338}, }  --炊具堆
QuestList[428] = { nation=0, sid  = 5003 ,x = -202 ,z = -23, action={type="kill", target=325}, }  --小偷
QuestList[432] = { nation=0, sid  = 5003 ,x = 32.13 ,z = 161.85, action={type="kill", target=2008, distance=6}, }  --敌国奸细
QuestList[68] = { nation=0, sid = 5003 ,x = -123.79 ,z = 108.38, action={type="none", target=0}, }
QuestList[88] = { nation=0, sid = 5003 ,x = 152.23,z = 113.48, action={type="useitem", target=4461}, }
QuestList[97] = { nation=0, sid = 0 ,x = 0,z = 0, action={type="escort"}, }
QuestList[522] = { nation=0, sid = 5003 ,x = -224.96 ,z = 64.16, action={type="none", target=0}, }
QuestList[523] = { nation=0, sid = 5003 ,x = -224.8 ,z = 65, action={type="talk", target=913}, }
QuestList[525] = { nation=0, sid = 5003 ,x = -137.13 ,z = 35.53, action={type="none", target=0}, }
QuestList[527] = { nation=0, sid = 5003 ,x = 124 ,z = -158, action={type="kill", target=2637}, }
QuestList[529] = { nation=0, sid = 5003 ,x = 32.13 ,z = 161.85, action={type="talk", target=2014}, }
QuestList[434] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, }
QuestList[646] = { nation=0, sid = 5003 ,x = -207.68 ,z = 21.91, action={type="kill", target=325}, }
QuestList[66] = {  nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelChallengeMain".Instance():Toggle() end}, }
QuestList[659] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () select_ivtr_item(2032) end}, }
QuestList[526] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelFaction".Instance():Toggle() end}, }
QuestList[251] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, }
QuestList[431] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, }
QuestList[528] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡30级
QuestList[185] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡35级
QuestList[206] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡40级
QuestList[222] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡45级
QuestList[237] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡50级
QuestList[245] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡55级
QuestList[123] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡60级
QuestList[141] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡65级
QuestList[1207] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡70级
QuestList[1235] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡72级
QuestList[1275] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡74级
QuestList[1304] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡76级
QuestList[1320] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡78级
QuestList[1336] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡80级
QuestList[1590] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡82级
QuestList[1630] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡84级
QuestList[1835] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡86级
QuestList[1851] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡88级
QuestList[1938] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡90级

QuestList[2235] = { nation=0, sid = 5003 ,x = 8.83 ,z = 33.81, action={type="talk", target=1229}, } --坐骑副本指引

QuestList[684] = { nation=0, sid = 5003 ,x = -219.6 ,z = 154.43, action={type="talk", target=3981}, }
QuestList[685] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelChallengeMain".Instance():Toggle() end},}
--QuestList[687] = { nation=0, sid = 0 ,x = 0 ,z = 29.2, action={type="talk", target=2014}, }
QuestList[688] = { nation=0, sid = 5003 ,x = -219.6 ,z = 154.43, action={type="talk", target=2634}, }
QuestList[689] = { nation=0, sid = 5003 ,x = -219.6 ,z = 154.43, action={type="kill", target=2900}, }
--点击追踪后打开活动界面“Panel_Quest_ActivityNew”示例
--QuestList[434] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, }

--5007任务追踪
QuestList[366] = { nation=0, sid  = 5007 ,x = 109 ,z = 54, action={type="autofight", target=0}, }
QuestList[375] = { nation=0, sid  = 5007 ,x = -58 ,z = 95, action={type="mine", target=1126}, }
QuestList[381] = { nation=0, sid  = 5007 ,x = -59 ,z = 87, action={type="talk", target=1060}, }
QuestList[385] = { nation=0, sid  = 5007 ,x = -104 ,z = 48, action={type="mine", target=1127}, }
QuestList[388] = { nation=0, sid  = 5007 ,x = -40 ,z = -21, action={type="autofight", target=0}, }
QuestList[402] = { nation=0, sid  = 5007 ,x = 107 ,z = -33, action={type="mine", target=1128}, }
QuestList[404] = { nation=0, sid  = 5007 ,x = 37 ,z = -73, action={type="talk", target=1068}, }
QuestList[409] = { nation=0, sid  = 5007 ,x = -28 ,z = -57, action={type="mine", target=1129}, }
QuestList[418] = { nation=0, sid  = 5003 ,x = -211 ,z = 142, action={type="none", target=0}, }
QuestList[442] = { nation=0, sid  = 6002 ,x = -89 ,z = -6, action={type="autofight", target=0}, } --八阵图
QuestList[443] = { nation=0, sid  = 6003 ,x = 78 ,z = -90, action={type="autofight", target=0}, } --狂风寨
--卧龙岗任务追踪
QuestList[472] = { nation=0, sid = 5009 ,x = 101 ,z = 100, action={type="autofight", target=1431}, }
QuestList[474] = { nation=0, sid = 5009 ,x = 77.26 ,z = 104.15, action={type="mine", target=1446}, }
QuestList[475] = { nation=0, sid = 5009 ,x = 27.84 ,z = 113.26, action={type="kill", target=1432, distance=0}, }
QuestList[478] = { nation=0, sid = 5009 ,x = 0.6 ,z = 103.93, action={type="mine", target=1447}, }
QuestList[480] = { nation=0, sid = 5009 ,x = 0.91 ,z = 70.65, action={type="kill", target=1434, distance=2}, }
QuestList[482] = { nation=0, sid = 5009 ,x = -32.58 ,z = 63.27, action={type="mine", target=1449}, }
QuestList[484] = { nation=0, sid = 5009 ,x = -64.54 ,z = 52.34, action={type="kill", target=1436, distance=0}, }
QuestList[487] = { nation=0, sid  = 5009 ,x = -84.72 ,z = 83.39, action={type="talk", target=1421}, }
QuestList[488] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[489] = { nation=0, sid  = 5009 ,x = -0.67 ,z = -63, action={type="kill", target=1438, distance=0}, }
QuestList[491] = { nation=0, sid = 5009 ,x = 33.84 ,z = -62.86, action={type="mine", target=1450}, }
QuestList[492] = { nation=0, sid = 5009 ,x = 52.01 ,z = -70.29, action={type="mine", target=1451}, }
QuestList[493] = { nation=0, sid = 5009 ,x = 30.62 ,z = -96.3, action={type="mine", target=1452}, }
QuestList[495] = { nation=0, sid = 5009 ,x = 88.84,z = -77.81, action={type="none", target=0}, }
QuestList[498] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[499] = { nation=0, sid  = 5009 ,x = -81.63 ,z = -20.16, action={type="talk", target=1496}, }
QuestList[501] = { nation=0, sid = 5009 ,x = -28.14 ,z = -61.12, action={type="none", target=0}, }
QuestList[505] = { nation=0, sid = 5003 ,x = -208 ,z = 174, action={type="none", target=0}, }
QuestList[514] = { nation=0, sid = 5009 ,x = -42.76 ,z = 37.06, action={type="kill", target=1503, distance=0}, }
QuestList[515] = { nation=0, sid = 5009 ,x = -25 ,z = 27, action={type="none", target=0}, }
QuestList[519] = { nation=0, sid = 5009 ,x = 76.17 ,z = -75.36, action={type="mine", target=1685}, }
--卧龙岗副本任务追踪
QuestList[567] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[568] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[569] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[570] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[700] = { nation=0, sid = 6005 ,x = 0 ,z = -5, action={type="useitem", target=3011}, }
QuestList[571] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[572] = { nation=0, sid = 6006 ,x = 1 ,z = -20, action={type="autofight", target=0}, }
QuestList[573] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
QuestList[574] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, }
--封魔帖任务
--20级
QuestList[274] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }
QuestList[275] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }
QuestList[276] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }
QuestList[277] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }
QuestList[278] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }

--80级
QuestList[279] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
QuestList[280] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
QuestList[281] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
QuestList[282] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
QuestList[283] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
--40级
QuestList[284] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[285] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[286] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[287] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[288] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
--50级
QuestList[289] = { nation=0, sid  = 5006 ,x = 44.9 ,z = -97.4, action={type="autofight", target=0}, }
QuestList[290] = { nation=0, sid  = 5006 ,x = 44.9 ,z = -97.4, action={type="autofight", target=0}, }
QuestList[291] = { nation=0, sid  = 5006 ,x = 44.9 ,z = -97.4, action={type="autofight", target=0}, }
QuestList[292] = { nation=0, sid  = 5006 ,x = 44.9 ,z = -97.4, action={type="autofight", target=0}, }
QuestList[293] = { nation=0, sid  = 5006 ,x = 44.9 ,z = -97.4, action={type="autofight", target=0}, }
--60级
QuestList[294] = { nation=0, sid  = 5006 ,x = 29 ,z = 91, action={type="autofight", target=0}, }
QuestList[295] = { nation=0, sid  = 5006 ,x = 29,z = 91, action={type="autofight", target=0}, }
QuestList[296] = { nation=0, sid  = 5006 ,x = -69 ,z = 1, action={type="autofight", target=0}, }
QuestList[297] = { nation=0, sid  = 5006 ,x = -69 ,z = 1, action={type="autofight", target=0}, }
QuestList[298] = { nation=0, sid  = 5006 ,x = -51 ,z = -78, action={type="autofight", target=0}, }

--夺鼎任务追踪
QuestList[258] = { nation=-3, sid  = 5003 ,x = 21 ,z = 4, action={type="talk", target=400}, }
--神树任务追踪
QuestList[320] = { nation=0, sid  = 5003 ,x = -202 ,z = -23, action={type="kill", target=325}, }
QuestList[321] = { nation=0, sid  = 5003 ,x = -212 ,z = -93, action={type="mine", target=912}, }
QuestList[322] = { nation=0, sid  = 5003 ,x = -203 ,z = -16, action={type="talk", target=913}, }
--刺探任务追踪
QuestList[261] = { nation=1, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
QuestList[262] = { nation=2, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
QuestList[263] = { nation=3, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
QuestList[264] = { nation=4, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
QuestList[265] = { nation=5, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
QuestList[266] = { nation=6, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
--喝酒任务追踪
QuestList[363] = { nation=0, sid  = 5007 ,x = -63 ,z = -91, action={type="none", target=0}, }
--挂机打宝的随机自动寻路
	--迷宫一层
QuestList[652] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5008 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},	--东土石俑
	{ nation=0, sid = 5008 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},	--东土石俑
	{ nation=0, sid = 5008 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},	--东土熊罴
	{ nation=0, sid = 5008 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},	--东土熊罴
} } }
	--迷宫二层
QuestList[792] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5010 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5010 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5010 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5010 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫三层
QuestList[793] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5011 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5011 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5011 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5011 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫四层
QuestList[794] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5012 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5012 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5012 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5012 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫五层
QuestList[795] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5013 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5013 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5013 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5013 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫六层
QuestList[796] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5014 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5014 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5014 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5014 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫七层
QuestList[797] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5015 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5015 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5015 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5015 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫八层
QuestList[798] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5016 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5016 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5016 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5016 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫九层
QuestList[799] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5017 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5017 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5017 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5017 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十层
QuestList[1006] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5018 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5018 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5018 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5018 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十一层
QuestList[1007] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5019 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5019 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5019 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5019 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十二层
QuestList[1008] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5020 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5020 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5020 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5020 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十三层
QuestList[1009] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5021 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5021 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5021 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5021 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十四层
QuestList[2375] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5026 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5026 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5026 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5026 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十五层
QuestList[2376] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5027 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5027 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5027 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5027 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
	--迷宫十六层
QuestList[2377] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_random_target
{
	{ nation=0, sid = 5028 ,x = 31.17 ,z = -19.01, action = {type="autofight"}},
	{ nation=0, sid = 5028 ,x = -31.16 ,z = 19.38, action = {type="autofight"}},
	{ nation=0, sid = 5028 ,x = -21.69 ,z = -19.5, action = {type="autofight"}},
	{ nation=0, sid = 5028 ,x = 25.1 ,z = 26.94, action = {type="autofight"}},
} } }
--悬赏任务追踪
QuestList[600] = { nation=0, sid  = 5003 ,x = 125.3 ,z = -91.5, action={type="mine", target=935}, }
QuestList[625] = { nation=0, sid  = 5005 ,x = 84.86 ,z = -22.35, action={type="mine", target=797}, }
QuestList[679] = { nation=0, sid  = 5009 ,x = 26.9 ,z = -40.01, action={type="none", target=0}, }
QuestList[680] = { nation=0, sid  = 5003 ,x = -108.31 ,z = -217.39, action={type="none", target=0}, }
QuestList[681] = { nation=0, sid  = 5004 ,x = -47.27 ,z = -22.36, action={type="none", target=0}, }
QuestList[682] = { nation=0, sid  = 5005 ,x = -14.37 ,z = -55.82, action={type="none", target=0}, }
QuestList[683] = { nation=0, sid  = 5006 ,x = 42.58 ,z = -21.89, action={type="none", target=0}, }
QuestList[867] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceExp".Instance():Toggle() end}, }

--除暴安良任务寻找地点
QuestList[336] = { nation=0, sid = 5003 ,x = 27.86 ,z = -149.95, action={type="none", target=0}, }
QuestList[337] = { nation=0, sid = 5003 ,x = -207.86 ,z = -96.97, action={type="none", target=0}, }
QuestList[425] = { nation=0, sid = 5003 ,x = -4.88 ,z = 179.42, action={type="none", target=0}, }
QuestList[532] = { nation=0, sid = 5003 ,x = 148.9 ,z = -90.1, action={type="none", target=0}, }
QuestList[533] = { nation=0, sid = 5003 ,x = 226.62 ,z = -145.81, action={type="none", target=0}, }
QuestList[534] = { nation=0, sid = 5003 ,x = -74.34 ,z = -214.59, action={type="none", target=0}, }
QuestList[535] = { nation=0, sid = 5003 ,x = 27.86 ,z = -149.95, action={type="none", target=0}, }
QuestList[536] = { nation=0, sid = 5003 ,x = -207.86 ,z = -96.97, action={type="none", target=0}, }
QuestList[537] = { nation=0, sid = 5003 ,x = -4.88 ,z = 179.42, action={type="none", target=0}, }
QuestList[538] = { nation=0, sid = 5003 ,x = 148.9 ,z = -90.1, action={type="none", target=0}, }
QuestList[539] = { nation=0, sid = 5003 ,x = 226.62 ,z = -145.81, action={type="none", target=0}, }
QuestList[540] = { nation=0, sid = 5003 ,x = -74.34 ,z = -214.59, action={type="none", target=0}, }
QuestList[541] = { nation=0, sid = 5004 ,x = -66.16 ,z = 99.6, action={type="none", target=0}, }
QuestList[542] = { nation=0, sid = 5004 ,x = 37.94 ,z = 91.18, action={type="none", target=0}, }
QuestList[543] = { nation=0, sid = 5004 ,x = 95.69 ,z = 42.54, action={type="none", target=0}, }
QuestList[544] = { nation=0, sid = 5004 ,x = 102.99 ,z = -83.47, action={type="none", target=0}, }
QuestList[545] = { nation=0, sid = 5004 ,x = -81.31 ,z = -24.08, action={type="none", target=0}, }
QuestList[546] = { nation=0, sid = 5004 ,x = -5.95 ,z = -87.6, action={type="none", target=0}, }

QuestList[547] = { nation=0, sid = 5005 ,x = -96.51 ,z = 90.27, action={type="none", target=0}, }
QuestList[548] = { nation=0, sid = 5005 ,x = -57 ,z = 4.86, action={type="none", target=0}, }
QuestList[549] = { nation=0, sid = 5005 ,x = -103.3 ,z = -105.6, action={type="none", target=0}, }
QuestList[550] = { nation=0, sid = 5005 ,x = 50.7 ,z = -98.2, action={type="none", target=0}, }
QuestList[551] = { nation=0, sid = 5005 ,x = -44.3 ,z = -97.3, action={type="none", target=0}, }
QuestList[552] = { nation=0, sid = 5005 ,x = 95.2 ,z = -10, action={type="none", target=0}, }

QuestList[558] = { nation=0, sid = 5006 ,x = 72.7 ,z = 21.5, action={type="none", target=0}, }
QuestList[559] = { nation=0, sid = 5006 ,x = 78 ,z = 91.9, action={type="none", target=0}, }
QuestList[560] = { nation=0, sid = 5006 ,x = -89.3 ,z = 74.9, action={type="none", target=0}, }
QuestList[561] = { nation=0, sid = 5006 ,x = -87.6 ,z = -50.9, action={type="none", target=0}, }
QuestList[562] = { nation=0, sid = 5006 ,x = 26 ,z = -86.9, action={type="none", target=0}, }
QuestList[563] = { nation=0, sid = 5006 ,x = 86.1 ,z = -73.4, action={type="none", target=0}, }

QuestList[2388] = { nation=0, sid = 5006 ,x = 72.7 ,z = 21.5, action={type="none", target=0}, }
QuestList[2389] = { nation=0, sid = 5006 ,x = 78 ,z = 91.9, action={type="none", target=0}, }
QuestList[2390] = { nation=0, sid = 5006 ,x = -89.3 ,z = 74.9, action={type="none", target=0}, }
QuestList[2391] = { nation=0, sid = 5006 ,x = -87.6 ,z = -50.9, action={type="none", target=0}, }
QuestList[2392] = { nation=0, sid = 5006 ,x = 26 ,z = -86.9, action={type="none", target=0}, }
QuestList[2393] = { nation=0, sid = 5006 ,x = 86.1 ,z = -73.4, action={type="none", target=0}, }

--除暴安良任务杀boss
QuestList[577] = { postype="taskpos", action={type="kill", target=2271}, }
QuestList[578] = { postype="taskpos", action={type="kill", target=2272}, }
QuestList[579] = { postype="taskpos", action={type="kill", target=2273}, }
QuestList[580] = { postype="taskpos", action={type="kill", target=2274}, }
QuestList[581] = { postype="taskpos", action={type="kill", target=2275}, }
QuestList[582] = { postype="taskpos", action={type="kill", target=2276}, }
QuestList[583] = { postype="taskpos", action={type="kill", target=2277}, }
QuestList[584] = { postype="taskpos", action={type="kill", target=2278}, }
QuestList[585] = { postype="taskpos", action={type="kill", target=2279}, }
QuestList[586] = { postype="taskpos", action={type="kill", target=2280}, }
QuestList[587] = { postype="taskpos", action={type="kill", target=2281}, }
QuestList[588] = { postype="taskpos", action={type="kill", target=2282}, }
QuestList[589] = { postype="taskpos", action={type="kill", target=2283}, }
QuestList[590] = { postype="taskpos", action={type="kill", target=2284}, }
QuestList[591] = { postype="taskpos", action={type="kill", target=2285}, }
QuestList[960] = { postype="taskpos", action={type="kill", target=5411}, }
QuestList[961] = { postype="taskpos", action={type="kill", target=5412}, }
QuestList[962] = { postype="taskpos", action={type="kill", target=5413}, }
QuestList[963] = { postype="taskpos", action={type="kill", target=5414}, }
QuestList[964] = { postype="taskpos", action={type="kill", target=5415}, }
QuestList[965] = { postype="taskpos", action={type="kill", target=5416}, }
QuestList[966] = { postype="taskpos", action={type="kill", target=5417}, }
QuestList[967] = { postype="taskpos", action={type="kill", target=5418}, }
QuestList[968] = { postype="taskpos", action={type="kill", target=5419}, }
QuestList[969] = { postype="taskpos", action={type="kill", target=5420}, }

QuestList[2395] = { postype="taskpos", action={type="kill", target=12607}, }
QuestList[2396] = { postype="taskpos", action={type="kill", target=12608}, }
QuestList[2397] = { postype="taskpos", action={type="kill", target=12609}, }
QuestList[2398] = { postype="taskpos", action={type="kill", target=12610}, }
QuestList[2399] = { postype="taskpos", action={type="kill", target=12611}, }

--除暴安良特殊寻找地点
QuestList[733] = { nation=0, sid = 5009 ,x = 40 ,z = -132.9, action={type="useitem", target=4017}, }
QuestList[734] = { nation=0, sid = 5003 ,x = 219.47 ,z = 25.33, action={type="useitem", target=4018}, }
QuestList[735] = { nation=0, sid = 5004 ,x = -91.77 ,z = -53.59, action={type="useitem", target=4019}, }
QuestList[736] = { nation=0, sid = 5005 ,x = 52.73 ,z = 26.93, action={type="useitem", target=4020}, }
QuestList[737] = { nation=0, sid = 5006 ,x = 88.9 ,z = 3.4, action={type="useitem", target=4021}, }
QuestList[738] = { nation=0, sid = 5006 ,x = -39.73 ,z = 95.72, action={type="useitem", target=4022}, }
QuestList[970] = { nation=0, sid = 5005 ,x = -65 ,z = -62.8, action={type="useitem", target=5691}, }
QuestList[975] = { nation=0, sid = 5003 ,x = -43.6 ,z = -167.4, action={type="useitem", target=5692}, }
QuestList[976] = { nation=0, sid = 5003 ,x = -209.4 ,z = -33.1, action={type="useitem", target=5693}, }
QuestList[977] = { nation=0, sid = 5004 ,x = -24.69 ,z = -22.49, action={type="useitem", target=5694}, }

QuestList[2400] = { nation=0, sid = 5006 ,x = 88.9 ,z = 3.4, action={type="useitem", target=12612}, }
QuestList[2401] = { nation=0, sid = 5006 ,x = -39.73 ,z = 95.72, action={type="useitem", target=12613}, }

--除暴安良特殊杀掉落boss
QuestList[739] = { postype="taskpos", action={type="kill", target=4024}, }
QuestList[740] = { postype="taskpos", action={type="kill", target=4025}, }
QuestList[741] = { postype="taskpos", action={type="kill", target=4026}, }
QuestList[742] = { postype="taskpos", action={type="kill", target=4027}, }
QuestList[743] = { postype="taskpos", action={type="kill", target=4028}, }
QuestList[744] = { postype="taskpos", action={type="kill", target=4029}, }
QuestList[971] = { postype="taskpos", action={type="kill", target=5405}, }
QuestList[972] = { postype="taskpos", action={type="kill", target=5406}, }
QuestList[973] = { postype="taskpos", action={type="kill", target=5407}, }
QuestList[974] = { postype="taskpos", action={type="kill", target=5408}, }

QuestList[2402] = { postype="taskpos", action={type="kill", target=12605}, }
QuestList[2403] = { postype="taskpos", action={type="kill", target=12606}, }

--国内夺鼎
QuestList[447] = { nation=0, sid  = 5003 ,x = 21 ,z = 4, action={type="talk", target=400}, }
--国内刺探
QuestList[448] = { nation=0, sid = 5004 ,x = 38 ,z = 25, action={type="talk", target=620}, }
--英雄试炼追踪
QuestList[661] = { nation=0, sid = 6007 ,x = 0 ,z = 0, action={type="autofight", target=0}, }

--剧情副本
QuestList[747] = { nation=0, sid = 6015 ,x = 0 ,z = 10, action={type="autofight", target=0}, }	--剧情第1章
QuestList[748] = { nation=0, sid = 6016 ,x = 0 ,z = 7, action={type="autofight", target=0}, }	--剧情第2章
QuestList[749] = { nation=0, sid = 6017 ,x = 0 ,z = 7, action={type="autofight", target=0}, }	--剧情第3章
QuestList[750] = { nation=0, sid = 6018 ,x = 0 ,z = -7, action={type="autofight", target=0}, }	--剧情第4章
QuestList[751] = { nation=0, sid = 6019 ,x = 0 ,z = -7, action={type="autofight", target=0}, }	--剧情第5章
QuestList[752] = { nation=0, sid = 6020 ,x = 0 ,z = 7, action={type="autofight", target=0}, }	--剧情第6章
QuestList[753] = { nation=0, sid = 6021 ,x = -5 ,z = -20, action={type="autofight", target=0}, }	--剧情第7章
QuestList[754] = { nation=0, sid = 6022 ,x = 0 ,z = 7, action={type="autofight", target=0}, }	--剧情第8章
QuestList[755] = { nation=0, sid = 6023 ,x = 0 ,z = 7, action={type="autofight", target=0}, }	--剧情第9章
QuestList[756] = { nation=0, sid = 6024 ,x = -5 ,z = -20, action={type="autofight", target=0}, }	--剧情第10章

QuestList[808] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --25级剧情副本指引
QuestList[809] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --30级剧情副本指引
QuestList[810] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --35级剧情副本指引
QuestList[811] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --40级剧情副本指引
QuestList[812] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --45级剧情副本指引
QuestList[813] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --50级剧情副本指引
QuestList[814] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --55级剧情副本指引
QuestList[815] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --60级剧情副本指引
QuestList[816] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelInstanceStory".Instance():Toggle() end}, } --65级剧情副本指引

--盗马贼任务
QuestList[455] = { nation=0, sid  = 5003 ,x = 14.6 ,z = -70.05, action={type="kill", target=1264}, }
QuestList[456] = { nation=0, sid  = 5003 ,x = 145.19 ,z = -76.05, action={type="kill", target=1265}, }
QuestList[457] = { nation=0, sid  = 5003 ,x = 221.02 ,z = 25.97, action={type="kill", target=1266}, }
QuestList[458] = { nation=0, sid  = 5003 ,x = 115.69 ,z = -147.09, action={type="kill", target=1267}, }
QuestList[459] = { nation=0, sid  = 5003 ,x = -142.93 ,z = -210, action={type="kill", target=1268}, }

--运镖任务追踪
QuestList[346] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[347] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[348] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[349] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[350] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
-- QuestList[346] = { nation=0, sid  = 5003 ,x = -65.9 ,z = 9.3, action={type="talk",target= 399}, }	--原来类型是escort，备份一下
-- QuestList[347] = { nation=0, sid  = 5003 ,x = -65.9 ,z = 9.3, action={type="talk",target= 399}, }
-- QuestList[348] = { nation=0, sid  = 5003 ,x = -65.9 ,z = 9.3, action={type="talk",target= 399}, }
-- QuestList[349] = { nation=0, sid  = 5003 ,x = -65.9 ,z = 9.3, action={type="talk",target= 399}, }
-- QuestList[350] = { nation=0, sid  = 5003 ,x = -65.9 ,z = 9.3, action={type="talk",target= 399}, }

QuestList[51] = { nation=0, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight",target = 0}, }

--火攻任务追踪
QuestList[593] = { nation=-3, sid  = 5005 ,x = 22.08 ,z = -65.67, action={type="useitem", target=2560}, }
QuestList[594] = { nation=-3, sid  = 5005 ,x = -71.12 ,z = -65.98, action={type="useitem", target=2558}, }
--QuestList[595] = { nation=-3, sid  = 5005 ,x = 6.87 ,z = -13.8, action={type="useitem", target=2559}, }
QuestList[596] = { nation=-3, sid  = 5005 ,x = -12.27 ,z = 52.55, action={type="useitem", target=2557}, }

--京郊任务矿
QuestList[119] = { nation=0, sid  = 5006 ,x = 43 ,z = -52, action={type="mine", target=711}, } --止血草
QuestList[125] = { nation=0, sid  = 5006 ,x = 11 ,z = 20, action={type="mine", target=712}, } --陷阱
QuestList[128] = { nation=0, sid  = 5006 ,x = 92 ,z = 40, action={type="mine", target=713}, } --粮袋
QuestList[134] = { nation=0, sid  = 5006 ,x = 2 ,z = 64, action={type="mine", target=714}, } --解毒草
QuestList[136] = { nation=0, sid  = 5006 ,x = -20 ,z = 67, action={type="mine", target=715}, } --梦魂花
QuestList[143] = { nation=0, sid  = 5006 ,x = -52 ,z = 30, action={type="mine", target=716}, } --檀香草
QuestList[149] = { nation=0, sid  = 5006 ,x = -105 ,z = -42, action={type="mine", target=717}, } --藏粮洞
QuestList[152] = { nation=0, sid  = 5006 ,x = -33 ,z = -54, action={type="mine", target=718}, } --太平道旗帜

--帮会任务
QuestList[698] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }	--帮会运镖
QuestList[699] = { nation=0, sid  = 5002 ,x = -16.51 ,z = 70.27, action={type="mine",target = 3002}, }	--帮会植树
QuestList[437] = { nation=0, sid  = 5003 ,x = 212.2 ,z = 198.9, action={type="mine", target=936}, }	--采矿
QuestList[438] = { nation=0, sid  = 0 ,x = 0 ,z = 0, 
	action={type="custom", target = function () require "GUI.ECPanelMausoleum".Instance():Toggle(2) end}, } --皮料
QuestList[907] = { nation=0, sid  = 5003 ,x = -48 ,z = 64.2, action={type="useitem", target=4692}, }
QuestList[908] = { nation=0, sid  = 5004 ,x = -12.9,z = 29.6, action={type="useitem", target=4693}, }		
QuestList[909] = { nation=0, sid  = 5005 ,x = -16.89 ,z = -3.17, action={type="useitem", target=4694}, }
QuestList[910] = { nation=0, sid  = 5009 ,x = -48.33 ,z = -50.98, action={type="useitem", target=4695}, }
QuestList[911] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[912] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[913] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[914] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[957] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5002 ,x = 70.48 ,z = -65.11, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 68.85 ,z = -62.01, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 70.72 ,z = -59.4, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 73.75 ,z = -64.11, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 73.89 ,z = -60.82, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 72.58 ,z = -59.4, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 69.36 ,z = -60.42, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 74.02 ,z = -62.4, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 72.31 ,z = -65.21, action={type="useitem", target=4937} },
				{ nation=0, sid = 5002 ,x = 69.18 ,z = -63.55, action={type="useitem", target=4937} },
			} } }
QuestList[958] =  { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5002 ,x = 70.48 ,z = -65.11, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 68.85 ,z = -62.01, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 70.72 ,z = -59.4, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 73.75 ,z = -64.11, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 73.89 ,z = -60.82, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 72.58 ,z = -59.4, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 69.36 ,z = -60.42, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 74.02 ,z = -62.4, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 72.31 ,z = -65.21, action={type="kill", target=4885} },
				{ nation=0, sid = 5002 ,x = 69.18 ,z = -63.55, action={type="kill", target=4885} },
			} } }

--跑环任务使用信号弹
QuestList[712] = { nation=0, sid  = 5004 ,x = -18 ,z = 8, action={type="useitem", target=3845}, } --天门关
QuestList[729] = { nation=0, sid  = 5005 ,x = 51 ,z = 65, action={type="useitem", target=4015}, } --边境

--跑环任务到达区域
QuestList[728] = { nation=0, sid = 5006 ,x = 28,z = 20, action={type="none", target=0}, } --京郊
QuestList[932] = { nation=0, sid = 5005 ,x = -68,z = -71, action={type="none", target=0}, } --查看边境弩车
QuestList[933] = { nation=0, sid = 5005 ,x = 9,z = 81, action={type="none", target=0}, } --查看边境弩车

--跑环任务开面板
QuestList[716] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelMausoleum".Instance():Toggle(2) end}, } --皮料
QuestList[721] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelQuestSeriesNew".OpenSelfServe(1) end}, } --悬赏令·二
QuestList[722] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelQuestSeriesNew".OpenSelfServe(1) end}, } --悬赏令·三
QuestList[723] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelQuestSeriesNew".OpenSelfServe(1) end}, } --悬赏令·四
QuestList[724] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelQuestSeriesNew".OpenSelfServe(1) end}, } --悬赏令·五

--跑环任务采矿
QuestList[901] = { nation=0, sid  = 5004 ,x = 21.36 ,z = 82.83, action={type="mine", target=4683}, }	--清理天门关的杂草
QuestList[902] = { nation=0, sid  = 5005 ,x = 109.83 ,z = -103.51, action={type="mine", target=4684}, }	--边境翻找宝物
QuestList[903] = { nation=0, sid  = 5006 ,x = 46.41 ,z = 46.44, action={type="mine", target=4685}, }	--京郊窃取财宝
QuestList[714] = { nation=0, sid  = 5004 ,x = -103 ,z = -82, action={type="mine", target=4912}, }	--天门关采集铁矿
QuestList[715] = { nation=0, sid  = 5004 ,x = 103 ,z = -52, action={type="mine", target=4913}, }	--天门关采集铁矿
QuestList[725] = { nation=0, sid  = 5004 ,x = -37 ,z = 83, action={type="mine", target=4914}, }	--窃取天门小校埋藏的情报
QuestList[726] = { nation=0, sid  = 5004 ,x = -55 ,z = 22, action={type="mine", target=4915}, }	--窃取天门小校埋藏的情报
QuestList[931] = { nation=0, sid  = 5005 ,x = -110 ,z = -112, action={type="mine", target=4916}, }	--翻找边境的乱石堆
QuestList[939] = { nation=0, sid  = 5006 ,x = -40 ,z = -91, action={type="mine", target=4917}, }	--销毁太平道众的粮食储备
QuestList[952] = { nation=0, sid  = 5006 ,x = -1 ,z = -112, action={type="mine", target=4918}, }	--京郊采集铁矿
QuestList[953] = { nation=0, sid  = 5006 ,x = 106 ,z = 86, action={type="mine", target=4682}, }	--京郊采集铁矿
QuestList[954] = { nation=0, sid  = 5006 ,x = -23 ,z = 67, action={type="mine", target=4681}, }	--京郊采集草药
QuestList[955] = { nation=0, sid  = 5006 ,x = 40 ,z = -50, action={type="mine", target=4919}, }	--京郊采集草药

--副本任务追踪
QuestList[789] = { nation=0, sid = 0 ,x = 0,z = 0, action={type="autofight", target=0}, } --经验副本01（884）

--组队本任务追踪
QuestList[826] = { nation=0, sid = 6009 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本828
QuestList[827] = { nation=0, sid = 6029 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本958
QuestList[828] = { nation=0, sid = 6030 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本959
QuestList[829] = { nation=0, sid = 6031 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本960
QuestList[830] = { nation=0, sid = 6032 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本961
QuestList[831] = { nation=0, sid = 6010 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本829
QuestList[832] = { nation=0, sid = 6033 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本962
QuestList[833] = { nation=0, sid = 6034 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本967
QuestList[834] = { nation=0, sid = 6035 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本968
QuestList[835] = { nation=0, sid = 6011 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本830
QuestList[836] = { nation=0, sid = 6036 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本969
QuestList[837] = { nation=0, sid = 6037 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本970
QuestList[838] = { nation=0, sid = 6038 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本971
QuestList[839] = { nation=0, sid = 6039 ,x = 0,z = 0, action={type="autofight", target=0}, } --组队副本972

--降妖除魔
QuestList[979] = { nation=1, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5843}, }
QuestList[983] = { nation=1, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5844}, }
QuestList[984] = { nation=1, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5845}, }
QuestList[985] = { nation=2, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5846}, }
QuestList[986] = { nation=2, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5847}, }
QuestList[987] = { nation=2, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5848}, }
QuestList[988] = { nation=3, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5849}, }
QuestList[989] = { nation=3, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5850}, }
QuestList[990] = { nation=3, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5851}, }
QuestList[991] = { nation=4, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5852}, }
QuestList[992] = { nation=4, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5853}, }
QuestList[993] = { nation=4, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5854}, }
QuestList[999] = { nation=5, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5855}, }
QuestList[1000] = { nation=5, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5856}, }
QuestList[1001] = { nation=5, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5857}, }
QuestList[1002] = { nation=6, sid = 5003 ,x = 218.5,z = -133.8, action={type="useitem", target=5858}, }
QuestList[1003] = { nation=6, sid = 5004 ,x = 77.37,z = -99.6, action={type="useitem", target=5859}, }
QuestList[1004] = { nation=6, sid = 5005 ,x = -100.4,z = 20.2, action={type="useitem", target=5860}, }
QuestList[981] = { postype="taskpos", action={type="kill", target=5865}, }
QuestList[994] = { postype="taskpos", action={type="kill", target=5866}, }
QuestList[995] = { postype="taskpos", action={type="kill", target=5867}, }
QuestList[996] = { postype="taskpos", action={type="kill", target=5868}, }
QuestList[997] = { postype="taskpos", action={type="kill", target=5869}, }
QuestList[998] = { postype="taskpos", action={type="kill", target=5870}, }	

--中立区采集挂机
QuestList[1020] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5022 ,x = -111.07 ,z = 46.7, action={type="mine", target=6159} },
				{ nation=0, sid = 5022 ,x = -111.53 ,z = 54.36, action={type="mine", target=6159} },
				{ nation=0, sid = 5022 ,x = -111.3 ,z = 62.01, action={type="mine", target=6159} },
				{ nation=0, sid = 5022 ,x = -111.56 ,z = 71.09, action={type="mine", target=6159} },
				{ nation=0, sid = 5022 ,x = -104.96 ,z = 85.08, action={type="mine", target=6159} },
			} } }
QuestList[1021] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5022 ,x = 96.37 ,z = 82.76, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 93.01 ,z = 79.33, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 91.37 ,z = 74.49, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 90.77 ,z = 69.11, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 90.78 ,z = 63.4, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 91.39 ,z = 57.55, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 92.17 ,z = 51.86, action={type="useitem", target=6186} },
				{ nation=0, sid = 5022 ,x = 93.15 ,z = 46.79, action={type="useitem", target=6186} },
			} } }
QuestList[1022] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5022 ,x = -68.31,z = -93.66, action={type="mine", target=6161} },
				{ nation=0, sid = 5022 ,x = -54.88 ,z = -96.66, action={type="mine", target=6161} },
				{ nation=0, sid = 5022 ,x = -52.77 ,z = -90.65, action={type="mine", target=6161} },
				{ nation=0, sid = 5022 ,x = -62.05 ,z = -93.91, action={type="mine", target=6161} },
				{ nation=0, sid = 5022 ,x = -47.57 ,z = -94.37, action={type="mine", target=6161} },
				{ nation=0, sid = 5022 ,x = -68.74 ,z = -89.09, action={type="mine", target=6161} },
			} } }
QuestList[1029] = { nation=-1, sid = 5003 ,x = 60.78 ,z = -78.17, action={type="useitem", target=6189}, }
QuestList[1030] = { nation=-1, sid = 5003 ,x = -187.86 ,z = -144.83, action={type="useitem", target=6190}, }
QuestList[1031] = { nation=-1, sid = 5003 ,x = 219.9 ,z = 68, action={type="useitem", target=6191}, }
QuestList[1032] = { nation=-1, sid = 5004 ,x = 36.67 ,z = -95.13, action={type="useitem", target=6192}, }
QuestList[1033] = { nation=-1, sid = 5004 ,x = 14.36 ,z = 87.56, action={type="useitem", target=6193}, }
QuestList[1034] = { nation=-1, sid = 5005 ,x = -97.63 ,z = -50.67, action={type="useitem", target=6194}, }
QuestList[1035] = { nation=-1, sid = 5005 ,x = 40.44 ,z = 71.23, action={type="useitem", target=6195}, }
QuestList[1036] = { nation=-1, sid = 5006 ,x = -53.57 ,z = 0.14, action={type="useitem", target=6196}, }
QuestList[1037] = { nation=-1, sid = 5006 ,x = 8.11 ,z = 68.16, action={type="useitem", target=6197}, }
QuestList[1038] = { nation=-1, sid = 5022 ,x = 41.64 ,z = 67.41, action={type="useitem", target=6198}, }
QuestList[1039] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () select_one_of_ivtr_item(6201,6202,6203,6204,6205) end}, }
QuestList[1040] = { nation=0, sid = 5022 ,x = -30.53 ,z = -35.98, action={type="useitem", target=6199}, }

QuestList[1043] = { postype="taskpos", action={type="kill", target=6213}, }
QuestList[1044] = { postype="taskpos", action={type="kill", target=6214}, }
QuestList[1045] = { postype="taskpos", action={type="kill", target=6215}, }
QuestList[1046] = { postype="taskpos", action={type="kill", target=6216}, }
QuestList[1047] = { postype="taskpos", action={type="kill", target=6217}, }

--帮会远征
QuestList[1054] = { nation=1, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1055] = { nation=2, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1056] = { nation=3, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1057] = { nation=4, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1058] = { nation=5, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1059] = { nation=6, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }

--国家远征
QuestList[1061] = { nation=1, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1062] = { nation=2, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1063] = { nation=3, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1064] = { nation=4, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1065] = { nation=5, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }
QuestList[1066] = { nation=6, sid = 5006 ,x = 71.66 ,z = 20.87, action={type="autofight", target=0}, }

--VIP任务
QuestList[1094] = { nation=-3, sid = 5005 ,x = 0.16 ,z = 16.85, action={type="useitem", target=6346}, }
QuestList[1095] = { nation=-3, sid = 5005 ,x = 4.36 ,z = 81.5, action={type="useitem", target=6347}, }
QuestList[1096] = { nation=-3, sid = 5004 ,x = -7.1 ,z = -65.42, action={type="useitem", target=6348}, }
QuestList[1097] = { nation=-3, sid = 5004 ,x = 43.54 ,z = -9.67, action={type="useitem", target=6349}, }
QuestList[1098] = { nation=-3, sid = 5004 ,x = 47.21 ,z = 48.56, action={type="useitem", target=6350}, }
QuestList[1099] = { nation=-3, sid = 5004 ,x = -60.9 ,z = 54.6, action={type="useitem", target=6351}, }
QuestList[1100] = { nation=-3, sid = 5003 ,x = 188.2 ,z = -197.1, action={type="useitem", target=6352}, }
QuestList[1101] = { nation=-3, sid = 5003 ,x = 187.9,z = -93.5, action={type="useitem", target=6353}, }
QuestList[1102] = { nation=-3, sid = 5003 ,x = 182.3,z = -5.3, action={type="useitem", target=6354}, }
QuestList[1103] = { nation=-3, sid = 5003 ,x = 136 ,z = 65.6, action={type="useitem", target=6355}, }
QuestList[1104] = { nation=-3, sid = 5003 ,x = 40.2,z = 65.3, action={type="useitem", target=6356}, }
QuestList[1105] = { nation=-3, sid = 5003 ,x = -48.6,z = 65.3, action={type="useitem", target=6357}, }
QuestList[1111] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1112] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1113] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1114] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1115] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1116] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1117] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1118] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1119] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1120] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1121] = { postype="taskpos", action={type="autofight", target=0}, }
QuestList[1122] = { postype="taskpos", action={type="autofight", target=0}, }
--国战指引
QuestList[915] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(204) end}, }

--国内情缘任务
QuestList[1159] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(203) end}, }
QuestList[1174] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1174) end}, }
QuestList[1175] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1175) end}, }
QuestList[1176] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1176) end}, }
QuestList[1177] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1177) end}, }
QuestList[1178] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1178) end}, }
QuestList[1179] = { postype="taskpos", action={type="custom", target=function () task_try_pairing(1179) end}, }
QuestList[1164] = { nation=0, sid = 5009 ,x = -24.96 ,z = -53.8, action={type="none", target=0}, }
QuestList[1165] = { nation=0, sid = 5003 ,x = -47.8 ,z = -115.8, action={type="none", target=0}, }
QuestList[1166] = { nation=0, sid = 5003 ,x = 123.5 ,z = 64.4, action={type="none", target=0}, }
QuestList[1167] = { nation=0, sid = 5004 ,x = -7.06 ,z = 53.7, action={type="none", target=0}, }
QuestList[1168] = { nation=0, sid = 5004 ,x = -7.1 ,z = -65.42, action={type="none", target=0}, }
QuestList[1169] = { nation=0, sid = 5005 ,x = -67.4 ,z = -10.2, action={type="none", target=0}, }
QuestList[1170] = { nation=0, sid = 5005 ,x = 46.6 ,z = -5.9, action={type="none", target=0}, }

--武魂任务
QuestList[1188] = { nation=-3, sid = 5006 ,x = -88 ,z = -88, action={type="autofight", target=0}, }
QuestList[1189] = { nation=-3, sid = 5006 ,x = -47 ,z = -74, action={type="autofight", target=0}, }
QuestList[1190] = { nation=-3, sid = 5006 ,x = -91 ,z = -45, action={type="autofight", target=0}, }


--盗宝小贼之家
QuestList[31] = { nation=0, sid = 6061 ,x = 0 ,z = 8, action={type="autofight", target=0}, }
QuestList[32] = { nation=0, sid = 6061 ,x = 0 ,z = -5, action={type="mine", target=6751}, }

--南华仙境
QuestList[1217] = { nation=0, sid = 5005 ,x = 100.23 ,z = -91.33, action={type="talk", target=6107}, }
QuestList[1218] = { nation=0, sid = 5005 ,x = 100.23 ,z = -91.33, action={type="talk", target=6107}, }
QuestList[1219] = { nation=0, sid = 5005 ,x = 100.23 ,z = -91.33, action={type="talk", target=6107}, }
QuestList[1224] = { nation=0, sid = 5022 ,x = -80.63 ,z = 60.08, action={type="mine", target=6798}, }
QuestList[1265] = { nation=0, sid = 5022 ,x = -62.07 ,z = 95.92, action={type="useitem", target=6884}, }
QuestList[1272] = { nation=0, sid = 5022 ,x = 96.34 ,z = 96.35, action={type="none", target=0}, }
QuestList[1294] = { nation=0, sid = 5022 ,x = 61.2 ,z = 14.9, action={type="mine", target=6160}, }
QuestList[1317] = { nation=0, sid = 5022 ,x = -82.9 ,z = -50.9, action={type="mine", target=7030}, }	--药箱
QuestList[1332] = { nation=0, sid = 5022 ,x = -66.2 ,z = -101.1, action={type="mine", target=7040}, }	--汲灵阵
QuestList[1298] = { nation=0, sid = 5022 ,x = -103.19 ,z = 38.65, action={type="useitem", target=7025}, }	--探测灵脉
QuestList[1299] = { nation=0, sid = 5022 ,x = -103.95 ,z = 64.76, action={type="useitem", target=7026}, }	--探测灵脉
QuestList[1301] = { nation=0, sid = 5022 ,x = -36.56 ,z = 73.06, action={type="useitem", target=7027}, }	--搜索
QuestList[1308] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(211) end}, } --在线等待
QuestList[1309] = { nation=0, sid = 5022 ,x = -7 ,z = 98, action={type="mine", target=7028}, } --蚀魂帆
QuestList[1311] = { nation=0, sid = 5022 ,x = 95.3 ,z = 95.2, action={type="autofight", target=0}, }
QuestList[1312] = { nation=0, sid = 5022 ,x = 94.75 ,z = 80.65, action={type="useitem", target=7029}, }		--采代灵竹
QuestList[1322] = { nation=0, sid = 5022 ,x = -56.8 ,z = -93.5, action={type="useitem", target=7032}, }		--查看
QuestList[1325] = { nation=0, sid = 5022 ,x = -71.02 ,z = -79.11, action={type="useitem", target=7036}, }	--灵药种子
QuestList[1327] = { nation=0, sid = 5022 ,x = -85.39 ,z = -69.590, action={type="useitem", target=7037}, }	--水坛
QuestList[1331] = { nation=0, sid = 5022 ,x = -67 ,z = -102, action={type="kill", target=7045}, }	--药园灵兽
QuestList[1578] = { nation=0, sid = 5022 ,x = 63.53 ,z = -27.68, action={type="mine", target=7721}, }	--宁神花
QuestList[1579] = { nation=0, sid = 5022 ,x = 61.3 ,z = -53.03, action={type="useitem", target=7722}, }	--宁神香１
QuestList[1580] = { nation=0, sid = 5022 ,x = 87.92 ,z = -45.82, action={type="useitem", target=7726}, }	--宁神香２
QuestList[1583] = { nation=0, sid = 5022 ,x = 98.6 ,z = -55.4, action={type="useitem", target=7723}, }	--宁神咒
QuestList[1581] = { nation=0, sid = 5022 ,x = 100.41 ,z = -56.1, action={type="none", target=0}, }	--寻找火凤
QuestList[1587] = { nation=0, sid = 5022 ,x = 84.37 ,z = -79.87, action={type="none", target=0}, }	--寻找可疑人
--圣诞雪堆任务
QuestList[1351] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_nearest_target
{
	{ nation=0, sid = 5006 ,x = 75.69 ,z = -55.85, action = {type="mine",target = 7543}},
	{ nation=0, sid = 5006 ,x = 60.4 ,z = -92.3, action = {type="mine",target = 7543}},
} } }
QuestList[1513] = { postype="taskpos", action={type="kill", target=7630}, }

--元旦黑市商人任务
QuestList[1544] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[1545] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=7}, }
QuestList[1546] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="dropinfo", target=1}, }
QuestList[1550] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="custom", target = function () require "GUI.ECPanelQuestSeriesNew".OpenSelfServe(1) end}, }
--情人节有缘人任务
QuestList[1606]= { nation=0, sid = 5003 ,x = -48 ,z = 64, action={type="custom", target=function () task_try_pairing(1606) end}, }
QuestList[1607]= { nation=0, sid = 5003 ,x = -48 ,z = 64, action={type="custom", target=function () task_try_pairing(1607) end}, }
--情人节二选一任务寻路
QuestList[1601]= { nation=0, sid = 5003 ,x = -144 ,z = -21, action={type="talk", target=373}, }
--情人节放烟火任务
QuestList[1598]= { nation=0, sid = 5003 ,x = -48 ,z = 130, action={type="custom", target=function () task_try_pairing(1598) end}, }	--男
QuestList[1611]= { nation=0, sid = 5003 ,x = -48 ,z = 130, action={type="custom", target=function () task_try_pairing(1611) end}, }	--女
--情人节采集玫瑰任务寻路的提示
QuestList[1597] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1228) end}, }	--男
QuestList[1612] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1228) end}, }	--女

--洛阳任务
QuestList[1620] = { nation=0, sid = 5023 ,x = 55.5 ,z = -208.5, action={type="mine", target=7800}, }	--财物箱
QuestList[1625] = { nation=0, sid = 5023 ,x = 218.5 ,z = -132, action={type="mine", target=7801}, }	--药箱
QuestList[1814] = { nation=0, sid = 5023 ,x = 99 ,z = -117, action={type="kill", target=7832}, }
QuestList[1817] = { nation=0, sid = 5023 ,x = 65.54 ,z = -54.67, action={type="useitem", target=10024}, }
QuestList[1819] = { nation=0, sid = 5023 ,x = 109 ,z = -53, action={type="mine", target=10019}, }
QuestList[1820] = { nation=0, sid = 5023 ,x = 100 ,z = -40, action={type="kill", target=7835}, }
QuestList[1826] = { nation=0, sid = 5023 ,x = -22 ,z = -157, action={type="mine", target=7802}, }
QuestList[1830] = { nation=0, sid = 5023 ,x = -44 ,z = -197, action={type="mine", target=10017}, }
QuestList[1838] = { nation=0, sid = 5023 ,x = -148 ,z = -148, action={type="useitem", target=10086}, }
QuestList[1847] = { nation=0, sid = 5023 ,x = -52 ,z = 39, action={type="mine", target=10020}, }

--青冥宝剑任务
QuestList[1673] = { nation=0, sid  = 5009 ,x = 110.54 ,z = -46.79, action={type="mine", target=8285}, }	--卧龙岗
QuestList[1674] = { nation=0, sid  = 5003 ,x = 65 ,z = -47, action={type="mine", target=8286}, }	--王城
QuestList[1675] = { nation=0, sid  = 5004 ,x = -7 ,z = -96, action={type="mine", target=8287}, }	--天门关
QuestList[1676] = { nation=0, sid  = 5022 ,x = 24.81 ,z = -34.13, action={type="mine", target=8288}, }	--南华仙境
QuestList[1677] = { nation=0, sid  = 5006 ,x = -83 ,z = 105, action={type="mine", target=8289}, }	--京郊
QuestList[1678] = { nation=0, sid  = 5005 ,x = 90 ,z = 110, action={type="mine", target=8290}, }	--边境

--中心服任务
QuestList[1691]  --粮草
 = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="redirect", target=make_nearest_target
			{
				{ nation=0, sid = 5024 ,x = -38.54,z = -171.67, action={type="mine", target=8324} },
				{ nation=0, sid = 5024 ,x = -27.93 ,z = -162.93, action={type="mine", target=8322} },
				{ nation=0, sid = 5024 ,x = -37.44 ,z = -173.89, action={type="mine", target=8320} },
				{ nation=0, sid = 5024 ,x = 86.33,z = -175.16, action={type="mine", target=8324} },
				{ nation=0, sid = 5024 ,x = 85.05 ,z = -169.18, action={type="mine", target=8322} },
				{ nation=0, sid = 5024 ,x = 86.36 ,z = -172.66, action={type="mine", target=8320} },
			} } }
QuestList[1692] = { nation=0, sid  = 5024 ,x = -160 ,z = 85, action={type="none", target=0}, } --流寇
QuestList[1772] = { nation=0, sid  = 5024 ,x = 174 ,z = 174, action={type="useitem", target=8339}, } --战书

--春节
QuestList[1680] = { postype="taskpos", action={type="kill", target=8529}, }
QuestList[1683] = { postype="taskpos", action={type="kill", target=8529}, }
QuestList[1686] = { postype="taskpos", action={type="kill", target=8529}, }
QuestList[1689] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () select_one_of_ivtr_item(8318,8162) end}, }
QuestList[1685] = { nation=0, sid = 5003 ,x = 24 ,z = -185, action={type="useitem", target=8493}, }
QuestList[1690] = { postype="taskpos", action={type="none", target=0}, }

--摇钱树
QuestList[1782] = { nation=0, sid = 5003 ,x = -209 ,z = -87, action={type="mine", target=912}, }
QuestList[1783] = { nation=0, sid = 5003 ,x = -161 ,z = -68, action={type="kill", target=8605}, }
QuestList[1784] = { nation=0, sid = 5003 ,x = -107 ,z = 38.7, action={type="talk", target=348}, }
QuestList[1786] = { postype="taskpos", action={type="custom", target=function () speak(234) end}, }

--潼关任务
QuestList[2281] = { nation=0, sid = 5025 ,x = 104.2 ,z = -109.96, action={type="none", target=0}, }
QuestList[1867] = { nation=0, sid = 5025 ,x = 11.27 ,z = -58.21, action={type="mine", target=9266}, }
QuestList[1869] = { nation=0, sid = 5025 ,x = 20.79 ,z = -69.32, action={type="mine", target=9267}, }
QuestList[1870] = { nation=0, sid = 5025 ,x = 68.86 ,z = -47.56, action={type="none", target=0}, }
QuestList[1877] = { nation=0, sid = 5025 ,x = -61.9 ,z = -19.28, action={type="none", target=0}, }
QuestList[1883] = { nation=0, sid = 5025 ,x = -85.4 ,z = -96.13, action={type="autofight", target=9271}, }
QuestList[1884] = { nation=0, sid = 5025 ,x = -71.11 ,z = -73.91, action={type="none", target=0}, }
QuestList[1890] = { nation=0, sid = 5025 ,x = -49.21 ,z = -101.34, action={type="autofight", target=9272}, }
QuestList[1891] = { nation=0, sid = 5025 ,x = 106.74 ,z = 35.96, action={type="useitem", target=9998}, }
QuestList[1892] = { nation=0, sid = 5025 ,x = -62.81 ,z = 25.57, action={type="none", target=0}, }
QuestList[1897] = { nation=0, sid = 5025 ,x = -80.35 ,z = 57.1, action={type="useitem", target=9999}, }
QuestList[1902] = { nation=0, sid = 5025 ,x = 109.63 ,z = -8.79, action={type="useitem", target=10000}, }
QuestList[1905] = { nation=0, sid = 5025 ,x = 87.06 ,z = 1.29, action={type="none", target=0}, }
QuestList[1906] = { nation=0, sid = 5025 ,x = 97.45 ,z = -5.27, action={type="autofight", target=9273}, }
QuestList[1908] = { nation=0, sid = 5025 ,x = 76.78 ,z = 37.06, action={type="none", target=0}, }
QuestList[1909] = { nation=0, sid = 5025 ,x = 61.42 ,z = 41.42, action={type="useitem", target=10001}, }
QuestList[1914] = { nation=0, sid = 5025 ,x = -23.95 ,z = 72.38, action={type="none", target=0}, }
QuestList[1922] = { nation=0, sid = 5025 ,x = -0.09 ,z = 81.49, action={type="none", target=0}, }
QuestList[1924] = { nation=0, sid = 5025 ,x = -79.63 ,z = 90.39, action={type="none", target=0}, }
QuestList[1927] = { nation=0, sid = 5025 ,x = -37.88 ,z = 79.66, action={type="none", target=0}, }
QuestList[1931] = { nation=0, sid = 5025 ,x = 39.82 ,z = 2.99, action={type="none", target=0}, }
QuestList[1872] = { postype="taskpos", action={type="kill", target=9324}, }
QuestList[1879] = { postype="taskpos", action={type="kill", target=9325}, }
QuestList[1886] = { postype="taskpos", action={type="kill", target=9326}, }
QuestList[1899] = { postype="taskpos", action={type="kill", target=9327}, }
QuestList[1917] = { postype="taskpos", action={type="kill", target=9328}, }
QuestList[1934] = { postype="taskpos", action={type="kill", target=9328}, }
QuestList[1876] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡92级
QuestList[1889] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡84级
QuestList[1904] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡86级
QuestList[1919] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡88级
QuestList[1936] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelActivityNew".Instance():Create() end}, } --卡90级

--南蛮
QuestList[1960] = { nation=0, sid = 5003 ,x = -142.4 ,z = 16.7, action={type="none", target=0}, } --自动寻路到武器店老板
QuestList[1961] = { nation=0, sid = 5003 ,x = -142.4 ,z = 16.7, action={type="kill", target=14340}, } --自动击杀召唤的怪物
QuestList[2827] = { nation=0, sid = 5029 ,x = -5.1 ,z = 100, action={type="none", target=0}, } --寻路到南蛮
QuestList[2848] = { nation=0, sid = 5029 ,x = -31.4 ,z = 86.9, action={type="kill", target=14362}, } --自动击杀怪物
QuestList[2850] = { nation=0, sid = 5029 ,x = 4.5 ,z = 67.6, action={type="talk", target=14358}, }--自动与忙长牙交谈
QuestList[2851] = { nation=0, sid = 5029 ,x = -14.3 ,z = 59.1, action={type="talk", target=14359}, }--自动与左长老交谈
QuestList[2852] = { nation=0, sid = 5029 ,x = -38.6 ,z = 54.6, action={type="kill", target=14364}, } --自动击杀怪物
QuestList[2853] = { nation=0, sid = 5029 ,x = -49.8 ,z = 62.4, action={type="mine", target=14584}, }--自动采矿
QuestList[2854] = { nation=0, sid = 5029 ,x = -10.7 ,z = 16.6, action={type="kill", target=14366}, } --自动击杀怪物
QuestList[2856] = { nation=0, sid = 5029 ,x = 1.3 ,z = -13.5, action={type="kill", target=14362}, } --自动击杀怪物
QuestList[2857] = { nation=0, sid = 5029 ,x = 1.1 ,z = -19.7, action={type="kill", target=14363}, } --自动击杀怪物
QuestList[2859] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级10
QuestList[2860] = { nation=0, sid = 5029 ,x = 10,z = 16.5, action={type="useitem", target=14947}, } --自动使用道具
QuestList[2865] = { nation=0, sid = 5029 ,x = -64.2 ,z = 44.5, action={type="none", target=0}, } --寻路到三洞
QuestList[2873] = { nation=0, sid = 5029 ,x = -85.5 ,z = 4.3, action={type="none", target=0}, } --寻路到二洞
QuestList[2877] = { nation=0, sid = 5029 ,x = -55 ,z = 20, action={type="none", target=0}, } --寻路到骑兵队
QuestList[2878] = { nation=0, sid = 5029 ,x = -55 ,z = 23, action={type="kill", target=14439}, } --自动击杀韦侬查
QuestList[2879] = { nation=0, sid = 5029 ,x = -55 ,z = 23, action={type="kill", target=14440}, } --自动击杀恶狼
QuestList[2880] = { nation=0, sid = 5029 ,x = -44.8,z = 23.3, action={type="useitem", target=15003}, } --自动使用道具
QuestList[2883] = { nation=0, sid = 5029 ,x = -67.6 ,z = 104.8, action={type="mine", target=15002}, }--自动采矿
QuestList[2884] = { nation=0, sid = 5029 ,x = -90.3 ,z = 99.1, action={type="kill", target=14443}, } --自动击杀阿会喃精锐
QuestList[2885] = { nation=0, sid = 5029 ,x = -72.8 ,z = 96, action={type="kill", target=14442}, } --自动击杀阿会喃
QuestList[2888] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级25
QuestList[3038] = { nation=0, sid = 5029 ,x = 85.4 ,z = -83.9, action={type="kill", target=14444}, } --自动击杀擂台勇者
QuestList[3043] = { nation=0, sid = 5029 ,x = 53.2 ,z = -82.1, action={type="kill", target=14445}, } --自动击杀恼人黑熊
QuestList[3044] = { nation=0, sid = 5029 ,x = 80,z = -80, action={type="useitem", target=15231}, } --自动使用道具
QuestList[3047] = { nation=0, sid = 5029 ,x = 35.4 ,z = -60.2, action={type="kill", target=14446}, } --自动击杀山贼
QuestList[3049] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级35
QuestList[3057] = { nation=0, sid = 5029 ,x = -90.3 ,z = -96.5, action={type="kill", target=14448}, } --自动击杀灵兔
QuestList[3059] = { nation=0, sid = 5029 ,x = -18.1 ,z = -97.5, action={type="kill", target=14449}, } --自动击杀藤甲军
QuestList[3062] = { nation=0, sid = 5029 ,x = -46.5,z = -34.4, action={type="useitem", target=15524}, } --自动使用道具
QuestList[3064] = { nation=0, sid = 5029 ,x = -54.3 ,z = -71.4, action={type="kill", target=14450}, } --自动击杀土方
QuestList[3066] = { nation=0, sid = 5029 ,x = -80 ,z = -60, action={type="none", target=0}, } --寻路到野藤林
QuestList[3067] = { nation=0, sid = 5029 ,x = -86.8 ,z = -56.7, action={type="kill", target=14451}, } --自动击杀藤甲军
QuestList[3069] = { nation=0, sid = 5029 ,x = -80,z = -70, action={type="useitem", target=15525}, } --自动使用道具
QuestList[3072] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级50
QuestList[3073] = { nation=0, sid = 5029 ,x = 30 ,z = 30, action={type="none", target=0}, } --寻路到哑泉
QuestList[3074] = { nation=0, sid = 5029 ,x = 30,z = 30, action={type="useitem", target=15530}, } --自动使用道具
QuestList[3075] = { nation=0, sid = 5029 ,x = 72.9 ,z = 21.6, action={type="none", target=0}, } --寻路到秃龙
QuestList[3076] = { nation=0, sid = 5029 ,x = 72.9 ,z = 21.6, action={type="kill", target=14453}, } --自动击杀恶霸
QuestList[3078] = { nation=0, sid = 5029 ,x = 96.3 ,z = 5.3, action={type="mine", target=14585}, }--自动采矿
QuestList[3079] = { nation=0, sid = 5029 ,x = 96.3 ,z = 5.3, action={type="kill", target=14453}, } --自动击杀恶霸
QuestList[3081] = { nation=0, sid = 5029 ,x = 97.8 ,z = -42.1, action={type="kill", target=15521}, } --自动击杀精锐
QuestList[3083] = { nation=0, sid = 5029 ,x = 66 ,z = -27, action={type="none", target=0}, } --寻路到妖道
QuestList[3084] = { nation=0, sid = 5029 ,x = 66 ,z = -27, action={type="kill", target=14454}, } --自动击杀妖道
QuestList[3085] = { nation=0, sid = 5029 ,x = 69.8 ,z = -27.6, action={type="kill", target=14455}, } --自动击杀妖道
QuestList[3087] = { nation=0, sid = 5029 ,x = 74.3 ,z = -24.7, action={type="mine", target=15531}, }--自动采矿
QuestList[3092] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级60
QuestList[3093] = { nation=0, sid = 5029 ,x = 53 ,z = 56, action={type="none", target=0}, } --寻路到八纳洞
QuestList[3094] = { nation=0, sid = 5029 ,x = 43.7 ,z = 81.4, action={type="kill", target=14456}, } --自动击杀毒蛇
QuestList[3096] = { nation=0, sid = 5029 ,x = 30.8 ,z = 87.8, action={type="mine", target=15532}, }--自动采矿
QuestList[3097] = { nation=0, sid = 5029 ,x = 43.7 ,z = 81.4, action={type="kill", target=14456}, } --自动击杀毒蛇
QuestList[3098] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1981) end}, } --在线等待
QuestList[3100] = { nation=0, sid = 5029 ,x = 78.8,z = 87, action={type="useitem", target=15533}, } --自动使用道具
QuestList[3102] = { nation=0, sid = 5029 ,x = 89.6 ,z = 59.5, action={type="kill", target=14457}, } --自动击杀狼
QuestList[3103] = { nation=0, sid = 5029 ,x = 78.9 ,z = 76.5, action={type="kill", target=14471}, } --自动击杀大象
QuestList[3107] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () require "GUI.ECPanelSoul".Instance():OpenPanel(nil) end}, } --卡英雄等级75



--战场拾荒
QuestList[1944] = { nation=0, sid  = 0 ,x = 0  ,z = 0 , action={type="redirect", target = make_nearest_target
{
	{ nation=0, sid = 5024 ,x = -119 ,z = 205, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = 142 ,z = -86, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = 75 ,z = -120, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = 163 ,z = -192, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = -140 ,z = -135, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = -171 ,z = 164, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = -59 ,z = 14, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = 23 ,z = -53, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = -79 ,z = -98, action = {type="custom",target=function () speak(238) end}},
	{ nation=0, sid = 5024 ,x = -74 ,z = -37, action = {type="custom",target=function () speak(238) end}},
} } }
QuestList[1946] = { postype="taskpos", action={type="kill", target=10205}, }
QuestList[1947] = { postype="taskpos", action={type="kill", target=10206}, }

--愚人节活动
QuestList[1958] = { nation=0, sid = 5003 ,x = -107 ,z = 38.7, action={type="talk", target=348}, }

--复活节活动
QuestList[1969] = { nation=0, sid = 5003 ,x = 22 ,z = -144, action={type="mine", target=10381}, }	--胡萝卜
QuestList[1970] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_random_target
{
	{ nation=0, sid = 5005 ,x = -19 ,z = 78, action={type="autofight"} },	--食腐土狼776
	{ nation=0, sid = 5005 ,x = -9 ,z = -63, action={type="autofight"} },	--食腐狂狼783
	{ nation=0, sid = 5006 ,x = 77 ,z = -81 , action={type="autofight"} },	--野狼674
	{ nation=0, sid = 5006 ,x = 22 ,z = -68 , action={type="autofight"} },	--黑熊676
} } }
QuestList[1971] = { nation=0, sid = 5003 ,x = 103 ,z = -26, action={type="mine", target=10382}, }	--百合

--周年庆活动
QuestList[1981] = { nation=0, sid = 5003 ,x = -89.7 ,z = 161.2, action={type="talk", target=10454}, }    --寻路到庆典侍郎处

--宠物活动任务：拯救天狼
QuestList[1983] = { nation=0, sid = 5003 ,x = 165.61 ,z = -75.09, action={type="kill", target=10510}, }  --失控机关人
QuestList[1986] = { nation=0, sid = 5003 ,x = 236.79 ,z = -163.13, action={type="mine", target=10515}, }  --幼崽的毛发
QuestList[1984] = { nation=0, sid = 5003 ,x = 227.33 ,z = -160.34, action={type="none", target=0}, }  --机关追踪
QuestList[1987] = { nation=0, sid = 5003 ,x = 55.24 ,z = -110.79, action={type="none", target=0}, }  --二次追踪
QuestList[1989] = { nation=0, sid = 5003 ,x = 53.74 ,z = -120.59, action={type="mine", target=10581}, } --解除符咒
QuestList[1985] = { postype="taskpos", action={type="kill", target=10511}, } --悲伤的天狼
QuestList[1988] = { postype="taskpos", action={type="kill", target=10512}, } --邪恶力士
QuestList[1990] = { postype="taskpos", action={type="kill", target=10513}, } --狂暴天狼
QuestList[1991] = { nation=0, sid = 5003 ,x = 67.4 ,z = 113.6, action={type="talk", target=10505}, } --清理害兽
QuestList[1993] = { nation=0, sid = 6085 ,x = 4.39 ,z = -20.68, action={type="autofight", target=10546}, }
--宠物活动优化任务
QuestList[2246] = { nation=0, sid = 5003 ,x = 27.41 ,z = 177.46, action={type="useitem", target=11526}, }--喂食饲料
QuestList[2247] = { nation=0, sid = 5003 ,x = 152.3 ,z = 33.8, action={type="none", target=0}, }   --去无人之地打开盒子
QuestList[2248] = { nation=0, sid = 5003 ,x = 152.3 ,z = 33.8, action={type="autofight", target=10511}, }   --击杀天狼
QuestList[2249] = { nation=0, sid = 5003 ,x = 134.1 ,z = 105.2, action={type="mine", target=11506}, }  --采集醉仙草
QuestList[2245] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1467) end}, } --杀怪喊话
QuestList[2255] = { nation=0, sid = 5003 ,x = 34.72,z = 172.49, action={type="useitem", target=11529}, }--喂食嫩草
QuestList[2256] = { nation=0, sid = 5003 ,x = 32.71 ,z = 184.34, action={type="useitem", target=11530}, }--喂食谷糠
QuestList[2257] = { nation=0, sid = 5003 ,x = 49.86 ,z = 173.32, action={type="useitem", target=11531}, }--喂食青草
--劳动节活动
QuestList[2050] = { nation=0, sid = 5003 ,x = 22 ,z = -144, action={type="mine", target=10824}, }
QuestList[2051] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[2052] = { nation=0, sid = 5003 ,x = 32 ,z = -125, action={type="none", target=0}, }
QuestList[2053] = { nation=0, sid = 5003 ,x = -206 ,z = -20, action={type="none", target=0}, }

QuestList[2060] = { nation=0, sid = 5005 ,x = -42 ,z = -102, action={type="mine", target=10825}, }
QuestList[2061] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="escort"}, }
QuestList[2062] = { nation=0, sid = 5005 ,x = -7 ,z = -91, action={type="mine", target=10826}, }
QuestList[2063] = { nation=0, sid = 5005 ,x = 55 ,z = 28, action={type="none", target=0}, }

QuestList[2055] = { nation=0, sid = 5006 ,x = 32 ,z = -20, action={type="mine", target=10827}, }
QuestList[2056] = { nation=0, sid = 5006 ,x = 25 ,z = 20, action={type="none", target=0}, }
QuestList[2057] = { nation=0, sid = 5006 ,x = 82 ,z = -68, action={type="mine", target=10828}, }
QuestList[2058] = { nation=0, sid = 5006 ,x = -46 ,z = 73, action={type="none", target=0}, }

--极限挑战任务追踪喊话
QuestList[2017] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2018] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2019] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2020] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2044] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2045] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2046] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2047] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2048] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2064] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2067] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2068] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2069] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2070] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2071] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2072] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2073] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }
QuestList[2074] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1361) end}, }

--天赋突破解锁任务
QuestList[2090] = { nation=0, sid = 5003 ,x = -84 ,z = 14, action={type="talk", target=7354}, }

--超越极限任务
QuestList[2077] = { nation=-3, sid = 5005 ,x = -90.21 ,z = -23.66, action={type="kill", target=10984}, activity=4967, }  --魔黄泉
QuestList[2078] = { nation=-6, sid = 5004 ,x = 39.49 ,z = -89.82, action={type="kill", target=10925}, activity=4967, }   --末路枭雄
QuestList[2080] = { nation=-3, sid = 5005 ,x = 88.5 ,z = -22.38, action={type="kill", target=10985}, activity=4967, }    --钢铁巨人
QuestList[2081] = { nation=-6, sid = 5004 ,x = -0.91 ,z = -31.78, action={type="kill", target=10926}, activity=4967, }    --屠戮神将
QuestList[2084] = { nation=-3, sid = 5005 ,x = -41.5 ,z = 91, action={type="kill", target=10986}, activity=4967, }    --炼狱囚客
QuestList[2086] = { nation=-6, sid = 5004 ,x = 24.22 ,z = -57.91, action={type="kill", target=10927}, activity=4967, }    --无双赤鬼
QuestList[2088] = { nation=-6, sid = 5004 ,x = 85.75 ,z = 28.64, action={type="kill", target=10928}, activity=4967, }    --狂野战魔
QuestList[2093] = { nation=-3, sid = 5005 ,x = 32.28 ,z = 66.71, action={type="kill", target=10987}, activity=4967, }     --涅槃彩凤
QuestList[2095] = { nation=-6, sid = 5004 ,x = -6.65 ,z = -85.56, action={type="kill", target=10929}, activity=4967, }     --绝地守护者
QuestList[2149] = { nation=0, sid = 5005 ,x = 93.87 ,z = 86.17, action={type="kill", target=10988}, }     --孤光使者（彩蛋）
QuestList[2153] = { nation=0, sid = 5003 ,x = -221.18 ,z = 64.86, action={type="none", target=0}, }      --神树下忏悔（彩蛋）
QuestList[2079] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }
QuestList[2085] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }
QuestList[2087] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }
QuestList[2092] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }
QuestList[2094] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }
QuestList[2096] = { nation=-5, sid = -1 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1395) end}, }

--新职业占卜任务
QuestList[2111] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10955}, activity=4968, }    --第一日寻路到管辂处
QuestList[2112] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4968, }          --首日占卜
QuestList[2113] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10955}, activity=4968, }    --一日问卜寻路到管辂处
QuestList[2114] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4968, }          --首日答案1
QuestList[2115] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4968, }          --首日答案2

QuestList[2116] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10961}, activity=4969, }    --第二日寻路到管辂处
QuestList[2117] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日领奖
QuestList[2118] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日发奖1
QuestList[2119] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日发奖2
QuestList[2120] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日发奖3
QuestList[2121] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10961}, activity=4969, }    --二日问卜寻路到管辂处
QuestList[2122] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日答案1
QuestList[2123] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4969, }          --次日答案2

QuestList[2124] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10962}, activity=4970, }    --第三日寻路到管辂处
QuestList[2125] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日领奖
QuestList[2126] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日发奖1
QuestList[2127] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日发奖2
QuestList[2128] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日发奖3
QuestList[2129] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10962}, activity=4970, }    --三日问卜寻路到管辂处
QuestList[2130] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日答案1
QuestList[2131] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日答案2
QuestList[2145] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4970, }          --三日答案3

QuestList[2132] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10963}, activity=4971, }    --第四日寻路到管辂处
QuestList[2133] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日领奖
QuestList[2134] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日发奖1
QuestList[2135] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日发奖2
QuestList[2136] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日发奖3
QuestList[2137] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10963}, activity=4971, }    --四日问卜寻路到管辂处
QuestList[2138] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971 }          --四日答案1
QuestList[2139] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日答案2
QuestList[2146] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日答案3
QuestList[2147] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4971, }          --四日发奖4

QuestList[2140] = { nation=0, sid = 5003 ,x = 58 ,z = 43.26, action={type="talk", target=10964}, activity=4972, }    --第五日寻路到管辂处
QuestList[2141] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4972, }          --五日领奖
QuestList[2142] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4972, }          --五日发奖1
QuestList[2143] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4972, }          --五日发奖2
QuestList[2144] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4972, }          --五日发奖3
QuestList[2148] = { nation=0, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=4972, }          --五日发奖4

--婚戒解锁任务的寻路
QuestList[2310] = { nation=0, sid = 5003 ,x = -152.2 ,z = 1.7, action={type="talk", target=6617 }, }

--奥运会赛跑寻路
QuestList[2259] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="escort"}, } 

--据点争夺日常任务寻路
QuestList[2324] = { nation=-1, sid  = 5022 ,x = -5.9 ,z = 30.1, action={type="none",target = 0},activity=5712, }      --寻路至南华仙境
QuestList[2325] = { nation=-1, sid  = 5023 ,x = 13.8 ,z = 13.9, action={type="none",target = 0},activity=5712, }	--寻路至洛阳
QuestList[2363] = { nation=-1, sid  = 5022 ,x = -5.9 ,z = 30.1, action={type="none",target = 0},activity=5712, }      --寻路至南华仙境
QuestList[2364] = { nation=-1, sid  = 5023 ,x = 13.8 ,z = 13.9, action={type="none",target = 0},activity=5712, }	--寻路至洛阳
QuestList[2365] = { nation=-1, sid  = 5022 ,x = -5.9 ,z = 30.1, action={type="none",target = 0},activity=5712, }      --寻路至南华仙境
QuestList[2371] = { nation=-1, sid  = 5023 ,x = 13.8 ,z = 13.9, action={type="none",target = 0},activity=5712, }	--寻路至洛阳

--818翻牌任务
QuestList[2326] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom",
	target = function () 
		local ECActivityInfo = require "Social.ECActivityInfo"
		if ECActivityInfo.IsOpen(5719) then
			require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_luckycards" end) 
		end

	end,}, activity=5719,
 } 
QuestList[2327] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=5719, } 
QuestList[2330] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=5719, } 
QuestList[2331] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=5719, } 
QuestList[2332] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=5719, } 


--中秋翻牌活动
QuestList[2343] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=5753, } 
QuestList[2344] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=5753, } 
QuestList[2349] = { nation=0, sid = 5005 ,x = 10.0 ,z = 15.0, action={type="talk", target=750}, activity=5753, } 
QuestList[2350] = { nation=0, sid = 5005 ,x = 10.0 ,z = 15.0, action={type="talk", target=750}, activity=5753, } 
QuestList[2345] = { nation=0, sid = 5003 ,x = -6.9 ,z = -6.0, action={type="talk", target=350}, activity=5753, } 
QuestList[2346] = { nation=0, sid = 5003 ,x = -6.9 ,z = -6.0, action={type="talk", target=350}, activity=5753, } 
QuestList[2352] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=5753, } 
QuestList[2351] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=5753, } 
QuestList[2354] = { nation=0, sid = 5003 ,x = 8.8 ,z = 33.8, action={type="talk", target=1229}, activity=5753, } 
QuestList[2353] = { nation=0, sid = 5003 ,x = 8.8 ,z = 33.8, action={type="talk", target=1229}, activity=5753, } 
QuestList[2347] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=5753, } 
QuestList[2348] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=5753, } 
QuestList[2356] = { nation=0, sid = 5003 ,x = -49.7 ,z = 158.6, action={type="talk", target=749}, activity=5753, } 
QuestList[2357] = { nation=0, sid = 5003 ,x = -49.7 ,z = 158.6, action={type="talk", target=749}, activity=5753, } 
QuestList[2358] = { nation=0, sid = 5003 ,x = -49.7 ,z = 158.6, action={type="talk", target=749}, activity=5753, } 

--国力争霸活动
QuestList[2408] = { nation=-3, sid  = 5003 ,x = -87.3 ,z = 3.9, action={type="useitem", target=12630}, activity=5966, } --火把
QuestList[2409] = { nation=0, sid = 5003 ,x = -48.2 ,z = -115.5, action={type="talk", target=12590}, activity=5966, } --火把回复

QuestList[2425] = { nation=-3, sid  = 5003 ,x = -47.7 ,z = -78.1, action={type="useitem", target=12639}, activity=5966, } --陷阱
QuestList[2426] = { nation=0, sid = 5003 ,x = -48.2 ,z = -115.5, action={type="talk", target=12590}, activity=5966, } --陷阱回复

QuestList[2415] = { nation=-3, sid  = 5003 ,x = -47.7 ,z = 64.2, action={type="useitem", target=12635}, activity=5966, } --谣言
QuestList[2416] = { nation=0, sid = 5003 ,x = -48.2 ,z = -115.5, action={type="talk", target=12590}, activity=5966, } --陷阱回复

QuestList[2414] = { nation=0, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight",target = 0}, activity=5966, } --护镖
QuestList[2417] = { nation=-3, sid = 5003 ,x = 191.9 ,z = 48.6, action={type="autofight", target=0}, activity=5966, } --杀敌国怪
QuestList[2413] = { nation=0, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight",target = 0}, activity=5966, } --杀敌国人

QuestList[2418] = { nation=0, sid = 5003 ,x = -49.7 ,z = 158.6, action={type="talk", target=749}, activity=5966, } --找丞相
QuestList[2419] = { nation=0, sid = 5003 ,x = -48.2 ,z = -115.5, action={type="talk", target=12590}, activity=5966, } --回复将军

QuestList[2420] = { nation=0, sid = 5005 ,x = 10 ,z = 15, action={type="talk", target=750}, activity=5966, } --找边境大将
QuestList[2421] = { nation=0, sid = 5003 ,x = -48.2 ,z = -115.5, action={type="talk", target=12590}, activity=5966, } --回复将军



--周年庆每日观光任务
QuestList[2444] = { nation=0, sid = 5009 ,x = -8.8,z = -22.8, action={type="none", target=0}, } --卧龙岗瀑布下
QuestList[2445] = { nation=0, sid = 5009 ,x = 117.7,z = 102, action={type="none", target=0}, } --卧龙岗水车旁
QuestList[2447] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1717) end}, } --周年庆刺探喊话
QuestList[2450] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1718) end}, } --周年庆国战喊话
QuestList[2448] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1719) end}, } --周年庆子午谷喊话
QuestList[2451] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1720) end}, } --周年庆青睐等级喊话
QuestList[2446] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1721) end}, } --周年庆杀敌喊话
QuestList[2449] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1722) end}, } --周年庆锁妖塔喊话

--重阳节文人任务
QuestList[2440] = { nation=0, sid = 5003 ,x = -12.3 ,z = -127.4, action={type="talk", target=12217}, activity=5837, } 
--2018新七夕相关任务
QuestList[3362] = { nation=0, sid = 5003 ,x = -1.2 ,z = 77.7, action={type="talk", target=18103}, activity=12220, } 
QuestList[3364] = { nation=0, sid  = 5003 ,x = 120 ,z = 65, action={type="none",target = 0},activity=12220, }	--寻路至洛阳

--光棍节活动

--单身任务
QuestList[2486] = { nation=0, sid = 5003 ,x = -199.4 ,z = -17.1, action={type="useitem", target=12946}, activity=6475, } --调查宝箱
QuestList[2538] = { nation=0, sid = 5003 ,x = -199.4 ,z = -17.1, action={type="useitem", target=13087}, activity=6475, } --任务失败后无经验调查宝箱
QuestList[2483] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --找月老
QuestList[2484] = { nation=0, sid = 5003 ,x = -152.2 ,z = 1.7, action={type="talk", target=6617}, activity=6475, } --找童子
QuestList[2485] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6475, } --找左慈
QuestList[2487] = { nation=0, sid = 5003 ,x = -199.4 ,z = -17.1, action={type="useitem", target=12955}, activity=6475, } --开箱子
QuestList[2539] = { nation=0, sid = 5003 ,x = -199.4 ,z = -17.1, action={type="useitem", target=13088}, activity=6475, } --组队开箱子
QuestList[2488] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=12950}, activity=6475, } --对着月老使用道具

QuestList[2495] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6475, } --找左慈
QuestList[2496] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=6475, } --找夏侯淳
QuestList[2497] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=6475, } --找夏侯淳
QuestList[2498] = { nation=0, sid = 5003 ,x = 41.7 ,z = 177.9, action={type="talk", target=11487}, activity=6475, } --找米花儿
QuestList[2499] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=6475, } --找夏侯淳
QuestList[2500] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=12961}, activity=6475, } --对着月老使用道具

QuestList[2501] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6475, } --找左慈
QuestList[2502] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=6475, } --找军需官
QuestList[2503] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=6475, } --找军需官
QuestList[2504] = { nation=0, sid = 5003 ,x = 10 ,z = 15, action={type="talk", target=750}, activity=6475, } --找边境大将
QuestList[2505] = { nation=0, sid = 5003 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=6475, } --找军需官
QuestList[2506] = { nation=0, sid = 5003 ,x = -220.0 ,z = 65.2, action={type="useitem", target=12960}, activity=6475, } --在神树下祈福
QuestList[2507] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=12962}, activity=6475, } --对着月老使用道具

--七天奖励
QuestList[2508] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --普通奖励
QuestList[2535] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --组队1
QuestList[2536] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --组队2
QuestList[2537] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --组队3

QuestList[2521] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --第五天
QuestList[2522] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --第六天
QuestList[2523] = { nation=0, sid = 5003 ,x = -152.0 ,z = 4.5, action={type="talk", target=1156}, activity=6475, } --第七天

--组队结局
QuestList[2516] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=12967}, activity=6475, } --对着月老使用道具
QuestList[2531] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=13085}, activity=6475, } --对着月老使用道具
QuestList[2532] = { nation=0, sid = 5003 ,x = -149.6 ,z = 4.9, action={type="useitem", target=13086}, activity=6475, } --对着月老使用道具

--米花儿结局
QuestList[2525] = { nation=0, sid = 5003 ,x = 41.7 ,z = 177.9, action={type="talk", target=11487}, activity=6475, } --找米花儿



--感恩节 每日任务
QuestList[2559] = { nation=-1, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=6712, }  --杀3000个自身等级怪物     
QuestList[2562] = { nation=-1, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=6712, }  --击杀50个敌国玩家        
QuestList[2563] = { nation=0, sid  = 0 ,x = 21 ,z = 4, action={type="talk", target=400}, activity=6712, }  --完成九龙鼎一次      
QuestList[2564] = { nation=0, sid  = 0 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=6712, }  --完成边境军需一次
QuestList[2565] = { nation=0, sid  = 0 ,x = -65.9 ,z = 9.3, action={type="talk", target=399}, activity=6712, }  --完成镖镖必达一次     
QuestList[2566] = { nation=0, sid  = 0 ,x = -6.9 ,z = -6.0, action={type="talk", target=350}, activity=6712, }  --完成火烧敌营一次        
QuestList[2567] = { nation=0, sid  = 0 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=6712, }  --完成无间道一次      
QuestList[2568] = { nation=-1, sid  = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=6712, }  --完成今日感恩七次

--感恩节 日常NPC任务
QuestList[2624] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6712, } --找左慈
QuestList[2625] = { nation=0, sid = 5003 ,x = -215.2 ,z = -203.2, action={type="kill", target=13413}, activity=6712, }  --杀贼

QuestList[2628] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=6712, } --找夏侯淳
QuestList[2629] = { nation=0, sid = 5003 ,x = 127.1 ,z = 181.7, action={type="kill", target=13413}, activity=6712, }  --杀贼

QuestList[2626] = { nation=0, sid = 5003 ,x = -49.7 ,z = 158.6, action={type="talk", target=749}, activity=6712, } --找丞相
QuestList[2627] = { nation=0, sid = 5003 ,x = 215.9 ,z = 27.6, action={type="kill", target=13413}, activity=6712, }  --杀贼

QuestList[2632] = { nation=0, sid = 5005 ,x = 10 ,z = 15, action={type="talk", target=750}, activity=6712, } --找边境大将
QuestList[2633] = { nation=0, sid = 5005 ,x = -105.4 ,z = -9.5, action={type="kill", target=13413}, activity=6712, }  --杀贼

QuestList[2630] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=6712, } --找曹植
QuestList[2631] = { nation=0, sid = 5003 ,x = -108.6 ,z = -215.5, action={type="kill", target=13413}, activity=6712, }  --杀贼


--封魔之卷任务自动寻路

--25级

QuestList[2620] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }
QuestList[2621] = { nation=0, sid=0 ,x=0 ,z=0, action={type="redirect", target=make_nearest_target
{
	{ nation=0, sid = 5003 ,x = 47.8 ,z = -96.1, action={type="autofight"} },	--黄风劫匪329
	{ nation=0, sid = 5003 ,x = 205 ,z = -78, action={type="autofight"} },	--恶狼335
	{ nation=0, sid = 5003 ,x = 152.93 ,z = -172.48 , action={type="autofight"} },	--异国潜入者336
	{ nation=0, sid = 5003 ,x = 118 ,z = -26 , action={type="autofight"} },	--黑风团精锐330
	{ nation=0, sid = 5003 ,x = 196 ,z = 50 , action={type="autofight"} },	--黄风协术士331
	{ nation=0, sid = 5003 ,x = 213 ,z = 130.4 , action={type="autofight"} },	--流寇枪兵332
	{ nation=0, sid = 5004 ,x = -86.6 ,z = 47.3 , action={type="autofight"} },	--银鬃狼638
	{ nation=0, sid = 5004 ,x = -59 ,z = 80, action={type="autofight"} },	--异国术士639
	{ nation=0, sid = 5004 ,x = -59.4 ,z = 32 , action={type="autofight"} },	--游荡巨熊640
	{ nation=0, sid = 5004 ,x = -83 ,z = 19 , action={type="autofight"} },	--异国奇兵641
	{ nation=0, sid = 5004 ,x = 50 ,z = 73 , action={type="autofight"} },	--兵匪642
	{ nation=0, sid = 5004 ,x = 75 ,z = 90 , action={type="autofight"} },	--异国潜伏者643
	{ nation=0, sid = 5004 ,x = 92 ,z = 6 , action={type="autofight"} },	--边塞醉鬼644
} } }

--40级
QuestList[2601] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
QuestList[2616] = { nation=0, sid  = 5004 ,x = -77 ,z = -71, action={type="autofight", target=0}, }
--65级
QuestList[2606] = { nation=0, sid  = 5006 ,x = -69 ,z = 1, action={type="autofight", target=0}, }
QuestList[2607] = { nation=0, sid  = 5006 ,x = -51 ,z = -78, action={type="autofight", target=0}, }
--80级
QuestList[2602] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }
QuestList[2573] = { nation=0, sid  = 5022 ,x = 74 ,z = -47, action={type="autofight", target=0}, }

--国家运镖
QuestList[2373] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1787) end},  activity=6771, } --护送任务
QuestList[2639] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1788) end},  activity=5942, } --周常任务

--元旦在

QuestList[2642] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6929, } --找左慈
QuestList[2643] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=6929, } --找左慈
QuestList[2644] = { nation=0, sid = 5009 ,x = -24.3 ,z = -0.1, action={type="useitem", target=13708}, activity=6929, } --在卧龙岗观赏流星
QuestList[2646] = { nation=0, sid = 5003 ,x = -47.8 ,z = 129.8, action={type="useitem", target=13724}, activity=6929, } --在王城观赏流星
QuestList[2648] = { nation=0, sid = 5004 ,x = -18.2 ,z = 8.2, action={type="useitem", target=13725}, activity=6929, } --在天门关观赏流星
QuestList[2650] = { nation=0, sid = 5005 ,x = 50.7 ,z = -0.6, action={type="useitem", target=13726}, activity=6929, } --在边境观赏流星

---圣诞节
QuestList[2654] = { nation=0, sid = 5005 ,x = -61.4 ,z = -5, action={type="talk", target=13730}, activity=6938,} --找圣诞老人
QuestList[2696] = { nation=0, sid = 5005 ,x = -61.4 ,z = -5, action={type="talk", target=13730}, activity=6938,} --找圣诞老人
QuestList[2700] = { nation=0, sid = 5005 ,x = -61.4 ,z = -5, action={type="talk", target=13730}, activity=6938,} --找圣诞老人
QuestList[2656] = { nation=0, sid = 5005 ,x = 89 ,z = 80.5, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2658] = { nation=0, sid = 5005 ,x = -36.9 ,z = 63, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2659] = { nation=0, sid = 5005 ,x = -80.6 ,z = 91.1, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2660] = { nation=0, sid = 5005 ,x = -96 ,z = 43, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2661] = { nation=0, sid = 5005 ,x = -70.6 ,z = 42.7, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2662] = { nation=0, sid = 5005 ,x = -55.8 ,z = -90.8, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2663] = { nation=0, sid = 5005 ,x = 60 ,z = -92, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2664] = { nation=0, sid = 5005 ,x = 90.3 ,z = -54.5, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2665] = { nation=0, sid = 5005 ,x = 60.8 ,z = -36.6, action={type="none", target= 0}, activity=6938,}---使用物品
QuestList[2666] = { nation=0, sid = 5005 ,x = 90.3 ,z = 7.5, action={type="none", target= 0}, activity=6938,}---使用物品


QuestList[2711] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2719] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2701] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2690] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2689] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2702] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1826) end}, activity=6938, }
QuestList[2692] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2703] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2691] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2704] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2655] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2705] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2694] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="kill", target=13783}, activity=6938,}
QuestList[2668] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2679] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}
QuestList[2713] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="none", target= 0}, activity=6938,}


---怪物攻城
QuestList[2725] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1827) end},  }--寻路



---国家英雄令
QuestList[2737] = { nation=-1, sid  = 5022 ,x = -35.8 ,z = -1.6, action={type="autofight", target=0}, activity=7059, } --击杀南华异域术士
QuestList[2738] = { nation=-1, sid  = 5023 ,x = 190 ,z = -68, action={type="autofight", target=0}, activity=7059, } --击杀洛阳异域术士
QuestList[2739] = { nation=-1, sid  = 5025 ,x = -22.2 ,z = -59.2, action={type="autofight", target=0}, activity=7059, } --击杀潼关异域术士
QuestList[2732] = { nation=0, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight",target = 0}, activity=7059, }--杀敌
QuestList[2733] = { nation=-3, sid  = 5003 ,x = -47.7 ,z = -78.1, action={type="useitem", target=14270}, activity=7059, } --陷阱
---帮会英雄令
QuestList[2745] = { nation=-1, sid  = 5022 ,x = -35.8 ,z = -1.6, action={type="autofight", target=0}, activity=7059, } --击杀南华异域术士
QuestList[2744] = { nation=-1, sid  = 5023 ,x = 190 ,z = -68, action={type="autofight", target=0}, activity=7059, } --击杀洛阳异域术士
QuestList[2746] = { nation=-1, sid  = 5025 ,x = -22.2 ,z = -59.2, action={type="autofight", target=0}, activity=7059, } --击杀潼关异域术士
QuestList[2747] = { nation=0, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight",target = 0}, activity=7059, }--杀敌
QuestList[2748] = { nation=-3, sid  = 5003 ,x = -47.7 ,z = -78.1, action={type="useitem", target=14269}, activity=7059, } --陷阱

--封魔帖100级
QuestList[2752] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖
QuestList[2753] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖
QuestList[2754] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖
QuestList[2755] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖
QuestList[2756] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖

QuestList[2758] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖合成
QuestList[2760] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(1832) end}, } --100级封魔帖合成


--春节翻牌相关任务
QuestList[2810] = { nation=-3, sid = 5005 ,x = -3.3 ,z = 1.1, action={type="useitem", target=14326}, activity=7143, }  --打听消息
QuestList[2811] = { nation=-3, sid = 5003 ,x = 152.7 ,z = 28.2, action={type="useitem", target=14327}, activity=7143, } --查探情况
QuestList[2812] = { nation=-3, sid = 5003 ,x = -47.9 ,z = 130.5, action={type="useitem", target=14328}, activity=7143, } --查探情况
QuestList[2813] = { nation=-3, sid = 5003 ,x = -47.9 ,z = 130.5, action={type="kill", target=14336}, activity=7143, } --杀掉卫兵
QuestList[2814] = { nation=-3, sid = 5003 ,x = -119.2 ,z = 61.0, action={type="useitem", target=14329}, activity=7143, } --放火
QuestList[2815] = { nation=-3, sid = 5003 ,x = -47.1 ,z = -20.6, action={type="useitem", target=14330}, activity=7143, }  --散播谣言
QuestList[2816] = { nation=-3, sid = 0 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=7143, }  --杀人
QuestList[2817] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=7143, }  --回去复命

QuestList[2790] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=7143, } --找夏侯惇
QuestList[2791] = { nation=0, sid = 5003 ,x = 107.1 ,z = 63.8, action={type="useitem", target=14319}, activity=7143, } --巡逻
QuestList[2792] = { nation=0, sid = 5003 ,x = 107.1 ,z = 63.8, action={type="kill", target=14334}, activity=7143, }  --杀人
QuestList[2793] = { nation=0, sid = 5003 ,x = -49.0 ,z = -86.1, action={type="useitem", target=14320}, activity=7143, } --巡逻
QuestList[2794] = { nation=0, sid = 5003 ,x = -49.0 ,z = -86.1, action={type="kill", target=14334}, activity=7143, } --杀人
QuestList[2795] = { nation=0, sid = 5003 ,x = -201.2 ,z = 63.4, action={type="useitem", target=14321}, activity=7143, } --巡逻
QuestList[2796] = { nation=0, sid = 5003 ,x = -201.2 ,z = 63.4, action={type="kill", target=14334}, activity=7143, } --杀人
QuestList[2797] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=7143, }  --回复夏侯惇

QuestList[2803] = { nation=0, sid = 5003 ,x = 55.0 ,z = 88.8, action={type="talk", target=351}, activity=7143, } --找夏侯惇
QuestList[2804] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=7143, } --找左慈
QuestList[2805] = { nation=0, sid = 5003 ,x = -116.0 ,z = -32.0, action={type="talk", target=1278}, activity=7143, } --找黑市商人
QuestList[2806] = { nation=0, sid = 5004 ,x = -27.0 ,z = 32.0, action={type="talk", target=617}, activity=7143, } --找难民李某
QuestList[2807] = { nation=0, sid = 5004 ,x = 11.0 ,z = 68.0, action={type="talk", target=618}, activity=7143, } --找行脚商人
QuestList[2808] = { nation=0, sid = 5004 ,x = -64.9 ,z = 97.2, action={type="useitem", target=14325}, activity=7143, } --找探子
QuestList[2809] = { nation=0, sid = 5004 ,x = -64.9 ,z = 97.2, action={type="kill", target=14335}, activity=7143, } --杀了他

QuestList[2798] = { nation=0, sid = 5003 ,x = -77.2 ,z = 41.3, action={type="talk", target=67}, activity=7143, } --找车夫
QuestList[2799] = { nation=0, sid = 5009 ,x = -24.3 ,z = -0.1, action={type="useitem", target=14322}, activity=7143, } --卧龙岗
QuestList[2800] = { nation=0, sid = 5003 ,x = -47.8 ,z = 129.8, action={type="useitem", target=14323}, activity=7143, } --王城
QuestList[2801] = { nation=0, sid = 5004 ,x = -18.2 ,z = 8.2, action={type="useitem", target=14324}, activity=7143, } --天门关
QuestList[2802] = { nation=0, sid = 5003 ,x = -77.2 ,z = 41.3, action={type="talk", target=67}, activity=7143, } --车夫

QuestList[2784] = { nation=0, sid = 5003 ,x = 41.7 ,z = 177.9, action={type="talk", target=11487}, activity=7143, }
QuestList[2785] = { nation=0, sid = 5003 ,x = 27.9 ,z = 178.4, action={type="useitem", target=14311}, activity=7143, }
QuestList[2786] = { nation=0, sid = 5003 ,x = 113.4 ,z = 32.5, action={type="useitem", target=14316}, activity=7143, }
QuestList[2787] = { nation=0, sid = 5003 ,x = 151.8 ,z = -76.9, action={type="useitem", target=14317}, activity=7143, }
QuestList[2788] = { nation=0, sid = 5003 ,x = 220.2 ,z = -65.6, action={type="useitem", target=14318}, activity=7143, }
QuestList[2789] = { nation=0, sid = 5003 ,x = 41.7 ,z = 177.9, action={type="talk", target=11487}, activity=7143, }

QuestList[2828] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom",
	target = function () 
		local ECActivityInfo = require "Social.ECActivityInfo"
		if ECActivityInfo.IsOpen(7143) then
			require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_Springrenwu" end) 
		end

	end,}, activity=7143,
 } 

 QuestList[2829] = { nation=-1, sid = 0 ,x = 0 ,z = 0, action={type="custom",
	target = function () 
		local ECActivityInfo = require "Social.ECActivityInfo"
		if ECActivityInfo.IsOpen(7143) then
			require "GUI.ECPanelPublicReward".Instance():OpenPanel(function(panel) panel.m_CurPageName="Rtn_Springcard" end) 
		end

	end,}, activity=7143,
 } 

----------------------------植树节相关任务寻路
QuestList[2892] = { nation=0, sid = 5005 ,x = 40.9 ,z = -93.1, action={type="autofight", target=786}, activity=7528, } 
QuestList[2895] = { nation=0, sid = 5003 ,x = -105.3 ,z = 38.5, action={type="talk", target=348}, activity=7528, } 

QuestList[2899] = { nation=0, sid = 5003 ,x = -47.8 ,z = 63.7, action={type="useitem", target=15037}, activity=7528, } 
QuestList[2900] = { nation=0, sid = 5003 ,x = -156.6 ,z = 109.2, action={type="useitem", target=15038}, activity=7528, } 
QuestList[2901] = { nation=0, sid = 5003 ,x = 21.8 ,z = -2.7, action={type="useitem", target=15039}, activity=7528, } 
QuestList[2902] = { nation=0, sid = 5003 ,x = 177.1 ,z = 208.8, action={type="useitem", target=15040}, activity=7528, } 

QuestList[2904] = { nation=0, sid = 5003 ,x = -152.2 ,z = 1.7, action={type="talk", target=6617}, activity=7528, } 

QuestList[2911] = { nation=0, sid = 5005 ,x = -36.7 ,z = 57.1, action={type="autofight", target=777}, activity=7528, } 
QuestList[2914] = { nation=0, sid = 5009 ,x = 96.0 ,z = 84.5, action={type="talk", target=1417}, activity=7528, } 

QuestList[2920] = { nation=0, sid = 5004 ,x = 82.7 ,z = 28.7, action={type="useitem", target=15041}, activity=7528, } 
QuestList[2921] = { nation=0, sid = 5004 ,x = -81.0 ,z = -39.5, action={type="useitem", target=15042}, activity=7528, } 
QuestList[2922] = { nation=0, sid = 5004 ,x = 86.3 ,z = -86.7, action={type="useitem", target=15043}, activity=7528, } 

QuestList[2924] = { nation=0, sid = 5004 ,x = 51.5 ,z = 73.2, action={type="autofight", target=642}, activity=7528, } 
QuestList[2926] = { nation=0, sid = 5004 ,x = -0.8 ,z = 19.4, action={type="talk", target=616}, activity=7528, } 

QuestList[2932] = { nation=0, sid = 5005 ,x = -59.2 ,z = 101.4, action={type="useitem", target=15044}, activity=7528, } 
QuestList[2933] = { nation=0, sid = 5005 ,x = -49.0 ,z = 79.1, action={type="useitem", target=15045}, activity=7528, } 
QuestList[2934] = { nation=0, sid = 5005 ,x = 94.5 ,z = -15.1, action={type="useitem", target=15046}, activity=7528, } 

QuestList[2937] = { nation=0, sid = 5005 ,x = 73.2 ,z = 77.7, action={type="autofight", target=788}, activity=7528, } 
QuestList[2938] = { nation=0, sid = 5003 ,x = -69.5 ,z = 29.6, action={type="talk", target=17255}, activity=7528, } 

QuestList[2943] = { nation=0, sid = 5003 ,x = 21.8 ,z = -2.7, action={type="useitem", target=15073}, activity=7528, } 

QuestList[2945] = { nation=0, sid = 5003 ,x = 107.1 ,z = 63.8, action={type="useitem", target=15047}, activity=7528, } 
QuestList[2946] = { nation=0, sid = 5003 ,x = -49.0 ,z = -86.1, action={type="useitem", target=15048}, activity=7528, } 
QuestList[2974] = { nation=0, sid = 5003 ,x = -201.2 ,z = 63.4, action={type="useitem", target=15049}, activity=7528, } 
QuestList[2947] = { nation=0, sid = 5003 ,x = -201.2 ,z = 63.4, action={type="kill", target=14334}, activity=7528, }

QuestList[2948] = { nation=0, sid = 5003 ,x = -43.5 ,z = -202.0, action={type="useitem", target=15050}, activity=7528, } 
QuestList[2949] = { nation=0, sid = 5003 ,x = -111.1 ,z = -211.0, action={type="useitem", target=15051}, activity=7528, } 
QuestList[2950] = { nation=0, sid = 5003 ,x = -208.3 ,z = -191.1, action={type="useitem", target=15052}, activity=7528, } 
QuestList[2952] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=7528, }


--------------------------------------------------------------------------------------------清明节

QuestList[2996] = { nation=0, sid = 5003 ,x = -48.1 ,z = -115.4, action={type="useitem", target=15150}, activity=7639, } 
QuestList[2997] = { nation=0, sid = 5003 ,x = -48.1 ,z = -115.4, action={type="kill", target=14334}, activity=7639, } 
QuestList[2998] = { nation=0, sid = 5004 ,x = -7.0 ,z = 52.0, action={type="useitem", target=15151}, activity=7639, } 
QuestList[2999] = { nation=0, sid = 5004 ,x = -7.0 ,z = 52.0, action={type="kill", target=14334}, activity=7639, } 
QuestList[3000] = { nation=0, sid = 5005 ,x = -3.0 ,z = 44.0, action={type="useitem", target=15152}, activity=7639, } 
QuestList[3001] = { nation=0, sid = 5005 ,x = -3.0 ,z = 44.0, action={type="kill", target=14334}, activity=7639, } 

QuestList[3002] = { nation=-1, sid  = 5005 ,x = 0 ,z = 0, action={type="autofight", target=0}, activity=7639, } 

QuestList[3003] = { nation=-3, sid = 5005 ,x = 19.8 ,z = 72.0, action={type="useitem", target=15153}, activity=7639, } 
QuestList[3004] = { nation=-3, sid = 5004 ,x = -56.0 ,z = -54.8, action={type="useitem", target=15154}, activity=7639, } 
QuestList[3006] = { nation=-3, sid = 5004 ,x = -17.2 ,z = 14.0, action={type="useitem", target=15155}, activity=7639, } 

QuestList[3007] = { nation=0, sid = 5003 ,x = -212.0 ,z = -201.9, action={type="useitem", target=15156}, activity=7639, } 


--器魂
QuestList[3153] = { nation=0, sid = 5005 ,x = 51.1 ,z = -6.7, action={type="none", target=0}, } 
QuestList[3154] = { nation=0, sid = 5005 ,x = 51.1 ,z = -6.7, action={type="kill", target=15897}, }
QuestList[3155] = { nation=0, sid = 5004 ,x = -74.9 ,z = 33.3, action={type="none", target=0}, } 
QuestList[3156] = { nation=0, sid = 5004 ,x = -74.9 ,z = 33.3, action={type="kill", target=15900}, } 
QuestList[3157] = { nation=0, sid = 5006 ,x = 94.8 ,z = -72, action={type="none", target=0}, } 
QuestList[3158] = { nation=0, sid = 5006 ,x = 94.8 ,z = -72, action={type="kill", target=15899}, }
QuestList[3159] = { nation=0, sid = 5009 ,x = -13.8 ,z = -32.6, action={type="none", target=0}, } 
QuestList[3160] = { nation=0, sid = 5009 ,x = -13.8 ,z = -32.6, action={type="kill", target=15898}, } 
--器魂日常寻路
QuestList[3189] = { nation=0, sid = 5003 ,x = 197.9 ,z = -55.9, action={type="none", target=0}, } 
QuestList[3190] = { nation=0, sid = 5003 ,x = 28 ,z = -185.5, action={type="none", target=0}, } 
QuestList[3191] = { nation=0, sid = 5003 ,x = -207.4 ,z = 60.9, action={type="none", target=0}, } 
QuestList[3192] = { nation=0, sid = 5003 ,x = -45.5 ,z = -99, action={type="none", target=0}, } 
QuestList[3193] = { nation=0, sid = 5004 ,x = -64 ,z = 41.4, action={type="none", target=0}, } 
QuestList[3194] = { nation=0, sid = 5009 ,x = -46 ,z = -49, action={type="none", target=0}, } 
QuestList[3195] = { nation=0, sid = 5005 ,x = -18 ,z = -3, action={type="none", target=0}, } 
--器魂自动杀怪
QuestList[3167] = { postype="taskpos", action={type="kill", target=15903}, }
QuestList[3168] = { postype="taskpos", action={type="kill", target=15904}, }
QuestList[3169] = { postype="taskpos", action={type="kill", target=15905}, }
QuestList[3170] = { postype="taskpos", action={type="kill", target=15906}, }
QuestList[3171] = { postype="taskpos", action={type="kill", target=15907}, }
QuestList[3172] = { postype="taskpos", action={type="kill", target=15908}, }
QuestList[3173] = { postype="taskpos", action={type="kill", target=15909}, }
QuestList[3174] = { postype="taskpos", action={type="kill", target=15910}, }
QuestList[3175] = { postype="taskpos", action={type="kill", target=15911}, }
QuestList[3176] = { postype="taskpos", action={type="kill", target=15912}, }
QuestList[3177] = { postype="taskpos", action={type="kill", target=15913}, }
QuestList[3178] = { postype="taskpos", action={type="kill", target=15914}, }
QuestList[3179] = { postype="taskpos", action={type="kill", target=15915}, }
QuestList[3180] = { postype="taskpos", action={type="kill", target=15916}, }
QuestList[3181] = { postype="taskpos", action={type="kill", target=15917}, }
QuestList[3182] = { postype="taskpos", action={type="kill", target=15918}, }

--端午节
QuestList[3206] = { nation=0, sid = 5005 ,x = 50 ,z = -10, action={type="none", target=0},activity=5271, } 
QuestList[3213] = { nation=0, sid = 5003 ,x = -220.5 ,z = 64.8, action={type="useitem", target=16001}, activity=5271, } 
QuestList[3214] = { nation=0, sid = 5003 ,x = 23,z = 180, action={type="useitem", target=16002}, activity=5271, } 
QuestList[3215] = { nation=0, sid = 5003 ,x = -116.2 ,z = -30.6, action={type="none", target=0},activity=5271, } 
QuestList[3216] = { nation=0, sid = 5003 ,x = -114.3,z = -31.3, action={type="kill", target=16004}, activity=5271, } 
QuestList[3218] = { nation=0, sid = 5009 ,x = -64,z = 86, action={type="mine", target=16005}, activity=5271, } 
QuestList[3219] = { nation=0, sid = 5003 ,x = 40 ,z = 175, action={type="useitem", target=16006}, activity=5271, } 
QuestList[3220] = { nation=0, sid = 5009 ,x = -70 ,z = -35, action={type="useitem", target=16007}, activity=5271, }
QuestList[3229] = { nation=0, sid = 5009 ,x = -70 ,z = -35, action={type="useitem", target=16044}, activity=5271, }

--教师节中途退出，寻找入口NPC诸葛亮
QuestList[3436] = { nation=0, sid = 5003 ,x = -123.5 ,z = -31, action={type="talk", target=19323}, activity=14744, } 
QuestList[3452] = { nation=0, sid = 5003 ,x = -123.5 ,z = -31, action={type="talk", target=19323}, activity=14744, } 

--双十一
QuestList[3481] = { nation=0, sid = 5003 ,x = 167.1 ,z = -83.6, action={type="mine", target=19547}, activity=15246, }--挖矿任务
QuestList[3482] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }--挖矿交任务

--对话
QuestList[3483] = { nation=0, sid = 5003 ,x = -140.6 ,z = 139.9, action={type="talk", target=401}, activity=15246, }--1
QuestList[3484] = { nation=0, sid = 5003 ,x = -150 ,z = 2, action={type="talk", target=1156}, activity=15246, }--2
QuestList[3485] = { nation=0, sid = 5003 ,x = -7.5 ,z = -6, action={type="talk", target=350}, activity=15246, }--3
QuestList[3486] = { nation=0, sid = 5003 ,x = 41.7 ,z = 177.9, action={type="talk", target=11487}, activity=15246, }--4
QuestList[3487] = { nation=0, sid = 5003 ,x = -50 ,z = 159 , action={type="talk", target=749}, activity=15246, }--5
QuestList[3488] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }--交

QuestList[3523] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }  --日常接任务
--双十一踩边
QuestList[3489] = { nation=0, sid = 5003 ,x = -106 ,z = 39, action={type="talk", target=348}, activity=15246, }
QuestList[3490] = { nation=-3, sid = 5005 ,x = -80.1 ,z = -14.0, action={type="useitem", target=19548}, activity=15246, }
QuestList[3491] = { nation=-3, sid = 5005 ,x = -7.1 ,z = -91.3, action={type="useitem", target=19549}, activity=15246, }
QuestList[3492] = { nation=-3, sid = 5005 ,x = 48.4 ,z = -6.3, action={type="useitem", target=19550}, activity=15246, }

--双十一答题寻路
QuestList[3494] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3497] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3521] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3503] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3506] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3509] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3512] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3515] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3518] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
QuestList[3493] = { nation=0, sid = 5003 ,x = -77.3 ,z = 79.2, action={type="talk", target=19544}, activity=15246, }
--双十一喊话关联
QuestList[3467] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(2421) end}, activity=15246, }
QuestList[3468] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(2421) end}, activity=15246, }--以上两个是摇一摇
QuestList[3479] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(2426) end}, activity=15246, }--打高级怪喊话
QuestList[3480] = { nation=0, sid = 0 ,x = 0 ,z = 0, action={type="custom", target=function () speak(2425) end}, activity=15246, }--pk喊话

return QuestList