
local index = 0 --自动加入index字段，便于排序
local NPCList = setmetatable({}, {__newindex=function(t,k,v)
	index = index + 1
	v.index = index
	rawset(t,k,v)
end})


--ObjInfo:NPC ID
--sid:场景 ID (0表示不需寻径，即随身NPC)
--name：NPC显示名
--scene：场景名
--x，y，z:寻路坐标点
--pos_x,pos_z:地图显示坐标点
--name_color:显示名颜色
--type:NPC的地图显示类型，0为不显示，1为NPC，2为怪物，3为传送,4为国战npc,5为地图显示列表隐藏
--activity(可选):{活动tid, ...}，当其中一个活动开启时才在M图上显示npc

--王城
NPCList[10767] = { name = "周獵戶" ,type = 5 ,sid = 5003 ,x = 217 ,z = -47 ,pos_x = 217,pos_z = -47,desc = "榮",activity = {4791}}
NPCList[10768] = { name = "蔡百萬" ,type = 5 ,sid = 5003 ,x = 11 ,z = -160 ,pos_x = 11,pos_z = -160,desc = "最",activity = {4791}}
NPCList[10769] = { name = "佃戶" ,type = 5 ,sid = 5003 ,x = 197 ,z = -171 ,pos_x = 197,pos_z = -171,desc = "光",activity = {4791}}
NPCList[10770] = { name = "地主" ,type = 5 ,sid = 5003 ,x = -98 ,z = -36 ,pos_x = -98,pos_z = -36,activity = {4791}}
NPCList[10771] = { name = "養豬人" ,type = 5 ,sid = 5003 ,x = -25 ,z = -80 ,pos_x = -25,pos_z = -80,desc = "動",activity = {4791}}
NPCList[10772] = { name = "王婆" ,type = 5 ,sid = 5003 ,x = -207 ,z = -79 ,pos_x = -207,pos_z = -79,desc = "勞",activity = {4791}}

NPCList[10383] = { name = "復活節使者" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "復活節",activity = {4238}}
NPCList[10384] = { name = "兔子" ,type = 1 ,sid = 5003 ,x = 11 ,z = -160 ,pos_x = 11,pos_z = -160,activity = {4238}}
NPCList[10385] = { name = "屠夫" ,type = 1 ,sid = 5003 ,x = -98 ,z = -36 ,pos_x = -98,pos_z = -36,activity = {4238}}
NPCList[10454] = { name = "慶典侍郎" ,type = 1 ,sid = 5003 ,x = -90.4 ,z = 160.3 ,pos_x = -90.4,pos_z = 160.3,desc = "年度慶典",activity = {4271}}
NPCList[10386] = { name = "異域游商" ,type = 1 ,sid = 5003 ,x = 54 ,z = 41 ,pos_x = 54,pos_z = 41,activity = {4238}}
NPCList[10732] = { name = "典韋" ,type = 1 ,sid = 5003 ,x = -8.95 ,z = 170.73 ,pos_x = -8.95,pos_z = 170.73,desc = "挑戰",activity = {4690}}
NPCList[10743] = { name = "歐國盃競猜官" ,type = 1 ,sid = 5003 ,x = 65.72 ,z = 154.06 ,pos_x = 65.72,pos_z = 154.06,desc = "歐國盃",activity = {4788}}
NPCList[10744] = { name = "歐國盃兌獎官" ,type = 1 ,sid = 5003 ,x = 65.29 ,z = 158.91 ,pos_x = 65.29,pos_z = 158.91,desc = "歐國盃",activity = {4789}}
NPCList[10942] = { name = "典韋" ,type = 1 ,sid = 5003 ,x = -8.95 ,z = 170.73 ,pos_x = -8.95,pos_z = 170.73,desc = "極限",activity = {4967}}
NPCList[10955] = { name = "管輅" ,type = 1 ,sid = 5003 ,x = 58 ,z = 43.26 ,pos_x = 58,pos_z = 43.26,desc = "新職業",activity = {4968}}  --管辂1
NPCList[10961] = { name = "管輅" ,type = 1 ,sid = 5003 ,x = 58 ,z = 43.26 ,pos_x = 58,pos_z = 43.26,desc = "新職業",activity = {4969}}  --管辂2
NPCList[10962] = { name = "管輅" ,type = 1 ,sid = 5003 ,x = 58 ,z = 43.26 ,pos_x = 58,pos_z = 43.26,desc = "新職業",activity = {4970}}  --管辂3
NPCList[10963] = { name = "管輅" ,type = 1 ,sid = 5003 ,x = 58 ,z = 43.26 ,pos_x = 58,pos_z = 43.26,desc = "新職業",activity = {4971}}  --管辂4
NPCList[10964] = { name = "管輅" ,type = 1 ,sid = 5003 ,x = 58 ,z = 43.26 ,pos_x = 58,pos_z = 43.26,desc = "新職業",activity = {4972}}  --管辂5
NPCList[11275] = { name = "福星老人" ,type = 1 ,sid = 5003 ,x = -48.5 ,z = 64.1 ,pos_x = -48.5,pos_z = 64.1,desc = "福",activity = {5237}}
NPCList[11733] = { name = "何老闆" ,type = 1 ,sid = 5003 ,x = 35 ,z = 90 ,pos_x = 35,pos_z = 90,desc = "",activity = {5581}}
NPCList[11760] = { name = "潼關馬夫" ,type = 3 ,sid = 5003 ,x = 59.11 ,z = 37.95 ,pos_x = 59.11,pos_z = 37.95}
NPCList[12217] = { name = "嗜酒的文人" ,type = 1 ,sid = 5003 ,x = -12.3 ,z = -127.4 ,pos_x = -12.3,pos_z = -127.4,desc = "",activity = {5837}}  
NPCList[12833] = { name = "神龍左使" ,type = 1 ,sid = 5003 ,x = -12 ,z = 77 ,pos_x = -12,pos_z = 77,desc = "神龍使",activity = {5971}}  
NPCList[12834] = { name = "神龍右使" ,type = 1 ,sid = 5003 ,x = -12 ,z = 77 ,pos_x = -12,pos_z = 77,desc = "",activity = {5971}}
NPCList[12952] = { name = "節日大使" ,type = 1 ,sid = 5003 ,x = 23.52 ,z = 109.5 ,pos_x = 23.52,pos_z = 109.5,desc = "",activity = {6470}}
--教师节
NPCList[19323] = { name = "諸葛亮" ,type = 1 ,sid = 5003 ,x = -123.5 ,z = -31 ,pos_x = -123.5 ,pos_z = -31, activity = {14744}}
NPCList[19393] = { name = "思勤" ,type = 1 ,sid = 5003 ,x = -127.5 ,z = -31,pos_x = -127.5 ,pos_z = -31, activity = {14744}}
NPCList[19418] = { name = "水鏡先生" ,type = 1 ,sid = 5003 ,x = -125.5 ,z = -31 ,pos_x = -125.5 ,pos_z = -31, activity = {14744}}
NPCList[19410] = { name = "人參果樹" ,type = 1 ,sid = 5003 ,x = 226.7 ,z = -73.7 ,pos_x = 226.7 ,pos_z = -73.7, activity = {14744}}
NPCList[19455] = { name = "人參果" ,type = 1 ,sid = 5003 ,x = 221.4 ,z = -77.5 ,pos_x = 221.4 ,pos_z = -77.5, activity = {14744}}
--双十一
NPCList[19544] = { name = "段瑢" ,type = 1 ,sid = 5003 ,x = -77.3 ,z = 79.2 ,pos_x = -77.3 ,pos_z = 79.2, activity = {15246}}
--七夕
NPCList[18103] = { name = "鵲仙" ,type = 1 ,sid = 5003 ,x = -1.2 ,z = 77.7 ,pos_x =-1.2,pos_z = 77.7,desc = "七夕",activity = {12220}}
NPCList[18111] = { name = "玄兒" ,type = 1 ,sid = 5003 ,x = 2.2 ,z = 77.7 ,pos_x = 2.2,pos_z = 77.7,activity = {12220}}

NPCList[14595] = { name = "南蠻" ,type = 3 ,sid = 5003 ,x = -125.1 ,z = -126.2 ,pos_x = -125.1,pos_z = -126.2,activity = {7531}}
NPCList[15893] = { name = "齊林" ,type = 1 ,sid = 5003 ,x = 35.6 ,z = 33.8 ,pos_x = 35.6,pos_z = 33.8,desc = "器",activity = {7319}} 
NPCList[15122] = { name = "補償使者" ,type = 1 ,sid = 5003 ,x = -4.1 ,z = 169.4 ,pos_x = -4.1,pos_z = 169.4,activity = {7625},

    service_compensate =  --补偿服务
	{
		service_name = "領取補償獎勵", 
		activity ={7533},
	},
} 
NPCList[15574] = { name = "馬超" ,type = 1 ,sid = 5003 ,x = -101.78 ,z = -21.39 ,pos_x = -101.78,pos_z = -21.39,desc = "陣",activity = {7823},}
NPCList[15889] = { name = "大喬" ,type = 1 ,sid = 5003 ,x = 40.04 ,z = 137.33 ,pos_x = 40.04,pos_z = 137.33,activity = {8472},}

NPCList[13723] = { name = "潼關密使" ,type = 1 ,sid = 5003 ,x = 66.7 ,z = 29.3 ,pos_x = 66.7,pos_z = 29.3,desc = "潼",activity = {6936},
	service_info =	--打开界面
	{
		service_name = "潼關之圍", 
		need_level = 50,
		target_panel = function () require "GUI.ECPanelInstanceRift".Instance():ShowPanel(true) end
	},
} 
--据点争夺
 NPCList[11967] = { name = "前鋒有秩" ,type = 1 ,sid = 5003 ,x = -6.9 ,z = 24.6 ,pos_x = -6.9,pos_z = 24.6,desc = "據",activity = {5740}}
 NPCList[11968] = { name = "前鋒統領" ,type = 1 ,sid = 5003 ,x = -6.9 ,z = 21.4 ,pos_x = -6.9,pos_z = 21.4,activity = {5712}}

 --国镖活动
  NPCList[12477] = { name = "太僕寺卿" ,type = 1 ,sid = 5003 ,x = -61.7 ,z = 130.8 ,pos_x = -61.7,pos_z = 130.8,desc = "國鏢",activity = {5942},
  	service_info =	--打开界面
	{
		service_name = "建造國鏢", 
		need_level = 36,
		target_panel = function () require "GUI.ECPanelNationEscort".Instance():Toggle() end
	},
}

 --八卦熔炉
  NPCList[13606] = { name = "八卦熔煉爐" ,type = 1 ,sid = 5003 ,x = -140.5 ,z = 120.7 ,pos_x = -140.5,pos_z = 120.7,desc = "熔",activity = {6837},
  	service_info =	--打开界面
	{
		service_name = "八卦熔煉秘寶", 
		need_level = 36,
		target_panel = function () require "GUI.ECPanelMagicBox".Instance():Create() end
	},
}
--儿童节
NPCList[11314] = { name = "怪叔叔" ,type = 1 ,sid = 5003 ,x = -91 ,z = 163 ,pos_x = -91,pos_z = 163,activity = {5259},desc = "糖"}

--大逃亡副本
NPCList[15148] = { name = "葛玄" ,type = 1 ,sid = 5003 ,x = 50 ,z = 16 ,pos_x = 50,pos_z = 16,desc = "冥",activity = {7643},
	service_info_chasesoul =	--打开界面
	{
		service_name = "冥府追魂", 
		need_level = 50,
		target_panel = function () require "GUI.ECPanelInstanceChaseSoul".Instance():ShowPanel() end,

	},
}


NPCList[8392] = { name = "天字燈謎" ,type = 1 ,sid = 5003 ,x = -78.3 ,z = 108.1 ,pos_x = -78.3,pos_z = 108.1,desc = "謎",activity = {3656}}
NPCList[8397] = { name = "地字燈謎" ,type = 1 ,sid = 5003 ,x = -48.03927 ,z = 64.10349 ,pos_x = -48.03927,pos_z = 64.10349,desc = "謎",activity = {3656}}
NPCList[8393] = { name = "玄字燈謎" ,type = 1 ,sid = 5003 ,x = 122.1426 ,z = 64.10349 ,pos_x = 122.1426,pos_z = 64.10349,desc = "謎",activity = {3656}}
NPCList[8398] = { name = "黃字燈謎" ,type = 1 ,sid = 5003 ,x = 167.5506 ,z = 147.6814 ,pos_x = 167.5506,pos_z = 147.6814,desc = "謎",activity = {3656}}
NPCList[8399] = { name = "宇字燈謎" ,type = 1 ,sid = 5003 ,x = 105.4753 ,z = -37.24103 ,pos_x = 105.4753,pos_z = -37.24103,desc = "謎",activity = {3656}}
NPCList[8394] = { name = "宙字燈謎" ,type = 1 ,sid = 5003 ,x = 221.4353 ,z = -61.83213 ,pos_x = 221.4353,pos_z = -61.83213,desc = "謎",activity = {3656}}
NPCList[8395] = { name = "洪字燈謎" ,type = 1 ,sid = 5003 ,x = 24.89853 ,z = -187.5305 ,pos_x = 24.89853,pos_z = -187.5305,desc = "謎",activity = {3656}}
NPCList[8396] = { name = "荒字燈謎" ,type = 1 ,sid = 5003 ,x = -72.90221 ,z = -76.4949 ,pos_x = -72.90221,pos_z = -76.4949,desc = "謎",activity = {3656}}
NPCList[8400] = { name = "日字燈謎" ,type = 1 ,sid = 5003 ,x = -212.7604 ,z = -165.7508 ,pos_x = -212.7604,pos_z = -165.7508,desc = "謎",activity = {3656}}
NPCList[8401] = { name = "月字燈謎" ,type = 1 ,sid = 5003 ,x = -192.1701 ,z = -95.05865 ,pos_x = -192.1701,pos_z = -95.05865,desc = "謎",activity = {3656}}
NPCList[7773] = { name = "禁軍統領" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "獵",activity = {3366}}
NPCList[850] = { name = "守護神" ,type = 4 ,sid = 5003 ,x = -48 ,z = 130 ,pos_x = -48,pos_z = 130}
NPCList[851] = { name = "光輝祭司" ,type = 4 ,sid = 5003 ,x = -47 ,z = -78 ,pos_x = -47,pos_z = -78}
NPCList[852] = { name = "暗夜祭司" ,type = 4 ,sid = 5003 ,x = 95 ,z = 64 ,pos_x = 95,pos_z = 64}
NPCList[1236] = { name = "南郊守將" ,type = 4 ,sid = 5003 ,x = 37 ,z = -187 ,pos_x = 37,pos_z = -187}
NPCList[1237] = { name = "東郊守將" ,type = 4 ,sid = 5003 ,x = 207 ,z = -47 ,pos_x = 207,pos_z = -47}
NPCList[67] = { name = "王城車夫" ,type = 3 ,sid = 5003 ,x = -77.22 ,z = 41.3 ,pos_x = -77.22,pos_z = 41.3}
NPCList[7420] = { name = "甄宓" ,type = 1 ,sid = 5003 ,x = -24.3 ,z = 80.8 ,pos_x = -24.3,pos_z = 80.8,desc = "補償",activity = {7868,7869,7870,7871,7872,3028}}
NPCList[7489] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7490] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7491] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7492] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7493] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7494] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7495] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7496] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7497] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7498] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7499] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7500] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7501] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7502] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7503] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7504] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7505] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7506] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7507] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}
NPCList[7508] = { name = "聖誕雪人" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "雪人",activity = {3076}}

NPCList[7987] = { name = "六龍新春大使" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "龍",activity = {3561}}

NPCList[8291] = { name = "王城鞭炮箱" ,type = 1 ,sid = 5003 ,x = -73.98 ,z = 81.66 ,pos_x = -73.98,pos_z = 81.66,desc = "",activity = {3561}}
NPCList[8292] = { name = "東郊鞭炮箱" ,type = 1 ,sid = 5003 ,x = 209.4 ,z = -35.85 ,pos_x = 209.4,pos_z = -35.85,desc = "",activity = {3561}}
NPCList[8293] = { name = "南郊鞭炮箱" ,type = 1 ,sid = 5003 ,x = 22.5 ,z = -185.1 ,pos_x = 22.5,pos_z = -185.1,desc = "",activity = {3561}}
NPCList[8294] = { name = "東郊守將" ,type = 1 ,sid = 5003 ,x = 214.23 ,z = -47.5 ,pos_x = 214.23,pos_z = -47.5,desc = "",activity = {3561}}
NPCList[8295] = { name = "南郊守將" ,type = 1 ,sid = 5003 ,x = 34 ,z = -191.59 ,pos_x = 34,pos_z = -191.59,desc = "",activity = {3561}}

NPCList[10544] = { name = "年度慶典神龍" ,type = 1 ,sid = 5003 ,x = -48.11 ,z = 63.99 ,pos_x = -48.11,pos_z = 63.99,desc = "龍",activity = {4358},

	service_info =	--打开界面
	{
		service_name = "慶典祭祀", 
		need_level = 20,
		target_panel = function () require "GUI.ECPanelAnniversary".Instance():Toggle() end
	},
}
--国庆争霸活动
NPCList[12590] = { name = "國力爭霸將軍" ,type = 1 ,sid = 5003 ,x = -48.2 ,z = -115.5 ,pos_x = -48.2,pos_z = -115.5,desc = "霸",activity = {5966},

	service_info =	--打开界面
	{
		service_name = "國力爭霸", 
		need_level = 30,
		target_panel = function () require "GUI.ECPanelGuoLiZhengBa".Instance():Toggle() end
	},
}

NPCList[21084] = { name = "貓老闆" ,type = 1 ,sid = 5003 ,x = 10.5 ,z = -50 ,pos_x = -6.9,pos_z = -6,desc = "貓"}
NPCList[350] = { name = "荀彧" ,type = 1 ,sid = 5003 ,x = -7.5 ,z = -6 ,pos_x = -6.9,pos_z = -6,desc = "燒"}
NPCList[399] = { name = "軍需官" ,type = 1 ,sid = 5003 ,x = -66 ,z = 10 ,pos_x = -65.9,pos_z = 9.3,desc = "鏢"}
NPCList[400] = { name = "九龍鼎" ,type = 1 ,sid = 5003 ,x = 22.24162 ,z = 4.923556 ,pos_x = 22.24162,pos_z = 4.923556,desc = "鼎"}
NPCList[413] = { name = "幫會管理員" ,type = 1 ,sid = 5003 ,x = -78.56 ,z = -29.07 ,pos_x = -78.56,pos_z = -29.07,desc = "幫"}
NPCList[7860] = { name = "關羽" ,type = 1 ,sid = 5003 ,x = -101 ,z = 18 ,pos_x = -101,pos_z = 18,desc = "武"}
NPCList[7858] = { name = "劉備" ,type = 1 ,sid = 5003 ,x = -101 ,z = 22 ,pos_x = -101,pos_z = 22}
NPCList[7859] = { name = "張飛" ,type = 1 ,sid = 5003 ,x = -101 ,z = 14 ,pos_x = -101,pos_z = 14}
NPCList[8556] = { name = "武學大師" ,type = 1 ,sid = 5003 ,x = 34.1 ,z = -24.64 ,pos_x = 34.1,pos_z = -24.64,desc = "轉\n職",activity = {3864}}
NPCList[11853] = { name = "游國行者" ,type = 1 ,sid = 5003 ,x = 10.32 ,z = -24.64 ,pos_x = 10.32,pos_z = -24.64,desc = "轉\n國",activity = {5674}}
NPCList[17265] = { name = "小書童" ,type = 1 ,sid = 5003 ,x = 36.71 ,z = -24.26,pos_x = 36.71,pos_z = -24.26,}
NPCList[11745] = { name = "曹仁" ,type = 1 ,sid = 5003 ,x = 23.52 ,z = 90 ,pos_x = 23.52,pos_z = 90,activity = {5589}}
NPCList[11794] = { name = "賈詡" ,type = 1 ,sid = 5003 ,x = 23.52 ,z = 93 ,pos_x = 23.52,pos_z = 93,activity = {5589}}

NPCList[401] = { name = "陳王曹植" ,type = 1 ,sid = 5003 ,x = -140.6 ,z = 139.9 ,pos_x = -140.6,pos_z = 139.9,desc = "間"}
NPCList[913] = { name = "神樹" ,type = 1 ,sid = 5003 ,x = -224.8 ,z = 65 ,pos_x = -224.8,pos_z = 65,desc = "樹"}
NPCList[8597] = { name = "搖錢樹" ,type = 1 ,sid = 5003 ,x = -207.66 ,z = -27 ,pos_x = -207.66,pos_z = -27,desc = "錢",activity = {3865}}
NPCList[8598] = { name = "搖錢樹" ,type = 1 ,sid = 5003 ,x = -207.66 ,z = -27 ,pos_x = -207.66,pos_z = -27,desc = "錢",activity = {3865}}
NPCList[8599] = { name = "搖錢樹" ,type = 1 ,sid = 5003 ,x = -207.66 ,z = -27 ,pos_x = -207.66,pos_z = -27,desc = "錢",activity = {3865}}
NPCList[1229] = { name = "許褚" ,type = 1 ,sid = 5003 ,x = 8.83 ,z = 33.81 ,pos_x = 8.83,pos_z = 33.81,desc = "暴",
				service_horse =	
				{
					need_level = 61,
				},
			}
NPCList[6358] = { name = "張遼" ,type = 1 ,sid = 5003 ,x = -21.3 ,z = -41.5 ,pos_x = -21.3,pos_z = -41.5,desc = "貴族"}
NPCList[990] = { name = "篝火" ,type = 1 ,sid = 5003 ,x = -135.52 ,z = 34.92 ,pos_x = -135.52,pos_z = 34.92,desc = "酒"}
NPCList[2685] = { name = "發丘中郎將" ,type = 1 ,sid = 5003 ,x = -159.88 ,z = 121.47 ,pos_x = -159.88,pos_z = 121.47,desc = "掛"}
NPCList[4176] = { name = "黃門左侍郎" ,type = 1 ,sid = 5003 ,x = 23.52,z = 101.28 ,pos_x = 23.52,pos_z = 115.28,desc = "稱"}
NPCList[8353] = { name = "黃門右侍郎" ,type = 1 ,sid = 5003 ,x = 23.52,z = 105.28 ,pos_x = 23.52,pos_z = 95.28,desc = "號"}
NPCList[4449] = { name = "程昱" ,type = 1 ,sid = 5003 ,x = 44 ,z = 137.33 ,pos_x = 44,pos_z = 137.33,desc = "賞"}
NPCList[348] = { name = "左慈" ,type = 1 ,sid = 5003 ,x = -106 ,z = 39 ,pos_x = -105.3,pos_z = 38.5,desc = "降",	
	service_info_four =	--打开界面
	{
		service_name = "四聖獸", 
		need_level = 50,
		target_panel = function () require "GUI.ECPanelFourSpirit".Instance():ShowPanel(true) end,
		activity ={7138},
	},
}
NPCList[1156] = { name = "月老" ,type = 1 ,sid = 5003 ,x = -150 ,z = 2 ,pos_x = -150,pos_z = 0,desc = "婚"}
NPCList[6617] = { name = "紅線童子" ,type = 1 ,sid = 5003 ,x = -152.18 ,z = 1.73 ,pos_x = -152.18,pos_z = 1.73,

	service_marriagering =	--开启婚戒
	{
		service_name = "開啟婚戒", 
		need_level = 0,
		target_panel = function () require "GUI.ECPanelMarriageRing".Instance():OpenPanel(nil) end
	},
	service_info =	--打开界面
	{
		service_name = "同心之證", 
		need_level = 0,
		target_panel = function () require "GUI.ECPanelInstanceCouple".Instance():Toggle() end
	},


}
NPCList[372] = { name = "武器店老闆" ,type = 1 ,sid = 5003 ,x = -145 ,z = 15 ,pos_x = -145,pos_z = 16.2}
NPCList[373] = { name = "服裝店老闆" ,type = 1 ,sid = 5003 ,x = -146.5 ,z = -20 ,pos_x = -146.5,pos_z = -21.6}
NPCList[374] = { name = "藥店老闆" ,type = 1 ,sid = 5003 ,x = -137 ,z = -32.9 ,pos_x = -136.7,pos_z = -32.9,
	
	service_welfare =	 --福利服务
	{	
		service_name = "充值補償獎勵", 
		activity ={7624},
	},
}
NPCList[6797] = { name = "華佗" ,type = 1 ,sid = 5003 ,x = -134.2 ,z = -31.47 ,pos_x = -134.2,pos_z = -31.47}
NPCList[349] = { name = "張遼" ,type = 0 ,sid = 5003 ,x = -55 ,z = -120 ,pos_x = -55.3,pos_z = -120.9}
NPCList[351] = { name = "夏侯惇" ,type = 1 ,sid = 5003 ,x = 54.97 ,z = 88.85 ,pos_x = 54.97,pos_z = 88.85,desc = "征"}
NPCList[10631] = { name = "寵物商人" ,type = 1 ,sid = 5003 ,x = 67.4 ,z = 108.29 ,pos_x = 67.4,pos_z = 108.29}
NPCList[353] = { name = "左慈化身" ,type = 0 ,sid = 5003 ,x = 144.8 ,z = -9.74 ,pos_x = 144.8,pos_z = -9.74}
NPCList[383] = { name = "左慈2" ,type = 0 ,sid = 5003 ,x = 160 ,z = 25 ,pos_x = 160,pos_z = 25}
NPCList[352] = { name = "探子" ,type = 1 ,sid = 5003 ,x = 151.5 ,z = 116.51 ,pos_x = 151.5,pos_z = 116.51}
NPCList[4460] = { name = "探子" ,type = 1 ,sid = 5003 ,x = 183.76 ,z = 159.47 ,pos_x = 183.76,pos_z = 159.47}
NPCList[355] = { name = "被俘虜的術士" ,type = 1 ,sid = 5003 ,x = 87.26 ,z = -37.91 ,pos_x = 87.26,pos_z = -37.91}
NPCList[354] = { name = "受傷的信使" ,type = 1 ,sid = 5003 ,x = 216.74 ,z = -84.82 ,pos_x = 216.74,pos_z = -84.82}
NPCList[749] = { name = "曹丞相" ,type = 1 ,sid = 5003 ,x = -50 ,z = 159 ,pos_x = -49,pos_z = 158.6}
NPCList[1047] = { name = "鄭鏢師" ,type = 1 ,sid = 5003 ,x = 49 ,z = -186 ,pos_x = 49,pos_z = -186}
NPCList[1278] = { name = "雜貨商人" ,type = 1 ,sid = 5003 ,x = -116 ,z = -32 ,pos_x = -116,pos_z = -32}
NPCList[2011] = { name = "華佗1" ,type = 0 ,sid = 5003 ,x = -90.18 ,z = -73.3 ,pos_x = -90.18,pos_z = -73.3}
NPCList[2028] = { name = "華佗2" ,type = 0 ,sid = 5003 ,x = -131.85 ,z = -123.46 ,pos_x = -131.85,pos_z = -123.46}
NPCList[2013] = { name = "督郵官" ,type = 1 ,sid = 5003 ,x = -44.17 ,z = -208.56 ,pos_x = -44.17,pos_z = -208.56}
NPCList[2634] = { name = "許褚" ,type = 0 ,sid = 5003 ,x = -219.6 ,z = 154.43 ,pos_x = -219.6,pos_z = 154.43}
NPCList[2009] = { name = "左慈" ,type = 1 ,sid = 5003 ,x = -224.25 ,z = 69.45 ,pos_x = -224.25,pos_z = 69.45}
NPCList[2010] = { name = "王府總管" ,type = 1 ,sid = 5003 ,x = -130.08 ,z = 88.58 ,pos_x = -130.08,pos_z = 88.58}
NPCList[2012] = { name = "一車草藥" ,type = 0 ,sid = 5003 ,x = -189.9 ,z = -92.42 ,pos_x = -189.9,pos_z = -92.42}
NPCList[2631] = { name = "敵國飛行器" ,type = 0 ,sid = 5003 ,x = 113.78 ,z = -150.7 ,pos_x = 113.78,pos_z = -150.7}
NPCList[2007] = { name = "飛賊我來也" ,type = 0 ,sid = 5003 ,x = -122.53 ,z = 110.05 ,pos_x = -122.53,pos_z = 110.05}
NPCList[2014] = { name = "可疑分子" ,type = 0 ,sid = 5003 ,x = 32.13 ,z = 161.85 ,pos_x = 32.13,pos_z = 161.85}
NPCList[2008] = { name = "敵國奸細" ,type = 0 ,sid = 5003 ,x = 32.13 ,z = 161.85 ,pos_x = 32.13,pos_z = 161.85}
NPCList[2006] = { name = "王城太歲" ,type = 0 ,sid = 5003 ,x = -207.81 ,z = 167.83 ,pos_x = -207.81,pos_z = 167.83}
NPCList[324] = { name = "惡霸" ,type = 2 ,sid = 5003 ,x = -219.06 ,z = 126.26 ,pos_x = -219.06,pos_z = 126.26}
NPCList[325] = { name = "盜匪" ,type = 2 ,sid = 5003 ,x = -199.7 ,z = 26.3 ,pos_x = -199.7,pos_z = 26.3}
NPCList[326] = { name = "兵痞" ,type = 2 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}
NPCList[339] = { name = "兵痞頭目" ,type = 2 ,sid = 5003 ,x = -181.36 ,z = -87.36 ,pos_x = -181.36,pos_z = -87.36}
NPCList[327] = { name = "黑熊" ,type = 2 ,sid = 5003 ,x = -191 ,z = -171 ,pos_x = -191,pos_z = -171}
NPCList[328] = { name = "黑風強盜" ,type = 2 ,sid = 5003 ,x = -84.45 ,z = -184.14 ,pos_x = -84.45,pos_z = -184.14}
NPCList[340] = { name = "李鬼" ,type = 2 ,sid = 5003 ,x = -129.54 ,z = -208.43 ,pos_x = -129.54,pos_z = -208.43}
NPCList[329] = { name = "黃風劫匪" ,type = 2 ,sid = 5003 ,x = 47.8 ,z = -96.1 ,pos_x = 47.8,pos_z = -96.1}
NPCList[336] = { name = "異國潛入者" ,type = 2 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}
NPCList[335] = { name = "惡狼" ,type = 2 ,sid = 5003 ,x = 205 ,z = -78 ,pos_x = 205,pos_z = -78}
NPCList[330] = { name = "黑風團精銳" ,type = 2 ,sid = 5003 ,x = 118 ,z = -26 ,pos_x = 118,pos_z = -26}
NPCList[341] = { name = "黑旋風" ,type = 2 ,sid = 5003 ,x = 85.74 ,z = -31.34 ,pos_x = 85.74,pos_z = -31.34}
NPCList[331] = { name = "黃風邪術士" ,type = 2 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}
NPCList[332] = { name = "流寇槍兵" ,type = 2 ,sid = 5003 ,x = 213 ,z = 130.4 ,pos_x = 213,pos_z = 130.4}
NPCList[333] = { name = "流寇弓手" ,type = 2 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}
NPCList[342] = { name = "流寇首領" ,type = 2 ,sid = 5003 ,x = 132.96 ,z = 195.76 ,pos_x = 132.96,pos_z = 195.76}
NPCList[385] = { name = "" ,type = 0 ,sid = 5003 ,x = -126.3 ,z = -85.2 ,pos_x = -126.3,pos_z = -85.2}
NPCList[386] = { name = "" ,type = 0 ,sid = 5003 ,x = -79 ,z = -199 ,pos_x = -79,pos_z = -199}
NPCList[1737] = { name = "臥龍崗" ,type = 3 ,sid = 5003 ,x = -213.7 ,z = 197.64 ,pos_x = -213.7,pos_z = 197.64}
NPCList[657] = { name = "天門關" ,type = 3 ,sid = 5003 ,x = 206.6 ,z = -203.5 ,pos_x = 206.6,pos_z = -203.5}
NPCList[747] = { name = "京郊" ,type = 3 ,sid = 5003 ,x = 196 ,z = 210 ,pos_x = 196,pos_z = 210}
NPCList[11487] = { name = "米花兒" ,type = 1 ,sid = 5003 ,x = 41.7 ,z = 177.9 ,pos_x = 41.7,pos_z = 177.9} --宠物活动另外NPC

NPCList[7354] = { name = "守塔人" ,type = 1 ,sid = 5003 ,x = -84 ,z = 14 ,pos_x = -84,pos_z = 12,
	service_info =	--打开界面
	{
		service_name = "鎖妖塔", 
		need_level = 58,
		target_panel = function () require "GUI.ECPanelInstanceTower".Instance():Toggle() end
	},
	service_info_selfchallenge =	--打开界面
	{
		service_name = "個人試煉", 
		need_level = 67,
		target_panel = function () require "GUI.ECPanelInstanceSelfChallenge".Instance():Toggle() end,
		activity = {4935,4973},
	},

}

NPCList[18555] = { name = "神秘劍客" ,type = 1 ,sid = 5003 ,x = -6,z = 16,pos_x = -6,pos_z = 16,desc = "劍",activity = {13017},
		service_info_chasesoul =	--打开界面
	{
		service_name = "誅仙謎雲", 
		need_level = 50,
		target_panel = function () require "GUI.ECPanelInstanceFourSwords".Instance():ShowPanel() end,

	},
}
NPCList[21248] = { name = "演武" ,type = 1 ,sid = 5003 ,x = -6,z = 16,pos_x = -6,pos_z = 16,activity = {18908}}
--替代服装武器老板任务的NPC
NPCList[17256] = { name = "齊世" ,type = 1 ,sid = 5003 ,x = -69.3 ,z = 32.5 ,pos_x = -69.3,pos_z = 32.5,activity = {10932}}
NPCList[17255] = { name = "木蘭" ,type = 1 ,sid = 5003 ,x = -69.3 ,z = 29.5 ,pos_x = -69.3,pos_z = 29.5,activity = {10932}}
NPCList[17329] = { name = "清明游商" ,type = 1 ,sid = 5003 ,x = -2 ,z = 77 ,pos_x = -2,pos_z = 77,desc = "清明",activity = {7639}}

NPCList[4862] = { name = "潛殺者" ,type = 0 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}
NPCList[4864] = { name = "潛殺者" ,type = 0 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}
NPCList[4865] = { name = "潛殺者" ,type = 0 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}
NPCList[4866] = { name = "潛殺者" ,type = 0 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}
NPCList[4867] = { name = "潛殺者" ,type = 0 ,sid = 5003 ,x = 152.93 ,z = -172.48 ,pos_x = 152.93,pos_z = -172.48}

NPCList[4868] = { name = "兵痞" ,type = 0 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}
NPCList[4869] = { name = "兵痞" ,type = 0 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}
NPCList[4870] = { name = "兵痞" ,type = 0 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}
NPCList[4871] = { name = "兵痞" ,type = 0 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}
NPCList[4872] = { name = "兵痞" ,type = 0 ,sid = 5003 ,x = -124.85 ,z = -92.31 ,pos_x = -124.85,pos_z = -92.31}

NPCList[4873] = { name = "黑熊" ,type = 0 ,sid = 5003 ,x = -194.58 ,z = -185.42 ,pos_x = -194.58,pos_z = -185.42}
NPCList[4874] = { name = "黑熊" ,type = 0 ,sid = 5003 ,x = -194.58 ,z = -185.42 ,pos_x = -194.58,pos_z = -185.42}
NPCList[4875] = { name = "黑熊" ,type = 0 ,sid = 5003 ,x = -194.58 ,z = -185.42 ,pos_x = -194.58,pos_z = -185.42}
NPCList[4876] = { name = "黑熊" ,type = 0 ,sid = 5003 ,x = -194.58 ,z = -185.42 ,pos_x = -194.58,pos_z = -185.42}
NPCList[4877] = { name = "黑熊" ,type = 0 ,sid = 5003 ,x = -194.58 ,z = -185.42 ,pos_x = -194.58,pos_z = -185.42}

NPCList[4878] = { name = "黃風邪術士" ,type = 0 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}
NPCList[4886] = { name = "黃風邪術士" ,type = 0 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}
NPCList[4887] = { name = "黃風邪術士" ,type = 0 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}
NPCList[4888] = { name = "黃風邪術士" ,type = 0 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}
NPCList[4889] = { name = "黃風邪術士" ,type = 0 ,sid = 5003 ,x = 196 ,z = 50 ,pos_x = 196,pos_z = 50}

NPCList[4895] = { name = "流寇弓手" ,type = 0 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}
NPCList[4898] = { name = "流寇弓手" ,type = 0 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}
NPCList[4900] = { name = "流寇弓手" ,type = 0 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}
NPCList[4901] = { name = "流寇弓手" ,type = 0 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}
NPCList[4902] = { name = "流寇弓手" ,type = 0 ,sid = 5003 ,x = 136 ,z = 165 ,pos_x = 136,pos_z = 165}

--跨版本商店服务器
NPCList[749] = { name = "丞相" ,type = 1 ,sid = 5003 ,x = -49.7 ,z = 158.6 ,pos_x = -49.7 ,pos_z = 158.6,
	
	service_info =	 --全球战
	{	
		service_name = "遠征戰場", 
		need_level = 60,
		activity ={8875},--该活动与六龙庆典显示活动相同
		target_panel = function () 		
			local ECPanelOneWorldWarLocalArea  = require "GUI.ECPanelOneWorldWarLocalArea"
			ECPanelOneWorldWarLocalArea.Instance():ShowPanel(true)
		end
	},

	custom_services = {
		{
			get_showname = function() return "國宴" end,
			action = function()
				local ECPanelNationFeast = require "GUI.ECPanelNationFeast"
				ECPanelNationFeast.Instance():ShowPanel(true)
			end,
			enable = function()
				local ECPanelNationFeast = require "GUI.ECPanelNationFeast"
				return ECPanelNationFeast.Instance():CanEnter()
			end,
		},
	}
	
}


--趣味竞猜游戏NPC
NPCList[16891] = { name = "魯大師" ,type = 1 ,sid = 5003 ,x = -81.66 ,z = -6.62 ,pos_x = -81.66,pos_z = -6.62,activity ={10099},--该活动与六龙庆典显示活动相同
	service_info =	 --全球战
	{	
		service_name = "趣味競猜", 
		need_level = 36,
		target_panel = function () 		
			local ECPanelSizeQuit  = require "GUI.ECPanelSizeQuit"
			ECPanelSizeQuit.Instance():OpenPanel()
		end
	},
}



--天门关
NPCList[8402] = { name = "天字燈謎" ,type = 1 ,sid = 5004 ,x = -97.6669 ,z = 55.35156 ,pos_x = -97.6669,pos_z = 55.35156,desc = "謎",activity = {3657}}
NPCList[8407] = { name = "地字燈謎" ,type = 1 ,sid = 5004 ,x = -82.06053 ,z = -2.121696 ,pos_x = -82.06053,pos_z = -2.121696,desc = "謎",activity = {3657}}
NPCList[8403] = { name = "玄字燈謎" ,type = 1 ,sid = 5004 ,x = -53.86131 ,z = 72.34696 ,pos_x = -53.86131,pos_z = 72.34696,desc = "謎",activity = {3657}}
NPCList[8408] = { name = "黃字燈謎" ,type = 1 ,sid = 5004 ,x = -26.67246 ,z = 75.65274 ,pos_x = -26.67246,pos_z = 75.65274,desc = "謎",activity = {3657}}
NPCList[8409] = { name = "宇字燈謎" ,type = 1 ,sid = 5004 ,x = 0.1156921 ,z = 26.08556 ,pos_x = 0.1156921,pos_z = 26.08556,desc = "謎",activity = {3657}}
NPCList[8404] = { name = "宙字燈謎" ,type = 1 ,sid = 5004 ,x = 75.97417 ,z = 53.35101 ,pos_x = 75.97417,pos_z = 53.35101,desc = "謎",activity = {3657}}
NPCList[8405] = { name = "洪字燈謎" ,type = 1 ,sid = 5004 ,x = 62.85486 ,z = -13.82815 ,pos_x = 62.85486,pos_z = -13.82815,desc = "謎",activity = {3657}}
NPCList[8406] = { name = "荒字燈謎" ,type = 1 ,sid = 5004 ,x = -7.786293 ,z = -25.03058 ,pos_x = -7.786293,pos_z = -25.03058,desc = "謎",activity = {3657}}
NPCList[8410] = { name = "日字燈謎" ,type = 1 ,sid = 5004 ,x = -82.05959 ,z = -26.33249 ,pos_x = -82.05959,pos_z = -26.33249,desc = "謎",activity = {3657}}
NPCList[8411] = { name = "月字燈謎" ,type = 1 ,sid = 5004 ,x = 36.6189 ,z = -89.17105 ,pos_x = 36.6189,pos_z = -89.17105,desc = "謎",activity = {3657}}
NPCList[854] = { name = "天門關大將" ,type = 4 ,sid = 5004 ,x = -12.7 ,z = 52.7 ,pos_x = -12.7,pos_z = 52.7}
NPCList[4741] = { name = "國戰密道" ,type = 4 ,sid = 5004 ,x = -97 ,z = -33 ,pos_x = -97,pos_z = -33}
NPCList[4742] = { name = "巨石" ,type = 4 ,sid = 5004 ,x = -97 ,z = -33 ,pos_x = -97,pos_z = -33}
NPCList[614] = { name = "龐德公" ,type = 1 ,sid = 5004 ,x = -98 ,z = 51.3 ,pos_x = -98,pos_z = 51.3}
NPCList[615] = { name = "守將張郃" ,type = 1 ,sid = 5004 ,x = -19 ,z = 76 ,pos_x = -19,pos_z = 76}
NPCList[616] = { name = "副將滿寵" ,type = 1 ,sid = 5004 ,x = -0.8 ,z = 19.4 ,pos_x = -0.8,pos_z = 19.4}
NPCList[617] = { name = "難民李某" ,type = 1 ,sid = 5004 ,x = -27 ,z = 32 ,pos_x = -27,pos_z = 32}
NPCList[618] = { name = "行腳商人" ,type = 1 ,sid = 5004 ,x = 11 ,z = 68 ,pos_x = 11,pos_z = 68}
NPCList[619] = { name = "天門小校" ,type = 0 ,sid = 5004 ,x = 81 ,z = 98 ,pos_x = 81,pos_z = 98}
NPCList[620] = { name = "天門小校" ,type = 1 ,sid = 5004 ,x = 37 ,z = 25 ,pos_x = 37,pos_z = 25,desc = "探"}
NPCList[621] = { name = "徐晃" ,type = 1 ,sid = 5004 ,x = -42.58 ,z = -60.44 ,pos_x = -42.58,pos_z = -60.44}
NPCList[1048] = { name = "李鏢師" ,type = 1 ,sid = 5004 ,x = 10 ,z = 41 ,pos_x = 10,pos_z = 41}
NPCList[638] = { name = "銀鬃狼" ,type = 2 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}
NPCList[639] = { name = "異國術士" ,type = 2 ,sid = 5004 ,x = -59 ,z = 80 ,pos_x = -59,pos_z = 80}
NPCList[640] = { name = "遊蕩巨熊" ,type = 2 ,sid = 5004 ,x = -59.4 ,z = 32 ,pos_x = -59.4,pos_z = 32}
NPCList[641] = { name = "異國奇兵" ,type = 2 ,sid = 5004 ,x = -83 ,z = 19 ,pos_x = -83,pos_z = 19}
NPCList[642] = { name = "兵匪" ,type = 2 ,sid = 5004 ,x = 50 ,z = 73 ,pos_x = 50,pos_z = 73}
NPCList[643] = { name = "異國潛伏者" ,type = 2 ,sid = 5004 ,x = 75 ,z = 90 ,pos_x = 75,pos_z = 90}
NPCList[644] = { name = "邊塞醉鬼" ,type = 2 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}
NPCList[645] = { name = "異國哨探" ,type = 2 ,sid = 5004 ,x = 64 ,z = -23 ,pos_x = 64,pos_z = -23}
NPCList[646] = { name = "關外流寇" ,type = 2 ,sid = 5004 ,x = -38.75 ,z = -28.95 ,pos_x = -38.75,pos_z = -28.95}
NPCList[647] = { name = "鐵鬃灰熊" ,type = 2 ,sid = 5004 ,x = -80 ,z = -80 ,pos_x = -80,pos_z = -80}
NPCList[648] = { name = "異國前鋒" ,type = 2 ,sid = 5004 ,x = 70 ,z = -80 ,pos_x = 70,pos_z = -80}
NPCList[649] = { name = "攻城部隊" ,type = 2 ,sid = 5004 ,x = 90 ,z = -47 ,pos_x = 90,pos_z = -47}
NPCList[654] = { name = "奇兵將領" ,type = 2 ,sid = 5004 ,x = -82 ,z = -2 ,pos_x = -82,pos_z = -2}
NPCList[655] = { name = "“瘋狗”" ,type = 2 ,sid = 5004 ,x = -79.34 ,z = -52.38 ,pos_x = -79.34,pos_z = -52.38}
NPCList[656] = { name = "上將軍" ,type = 2 ,sid = 5004 ,x = 97 ,z = -99 ,pos_x = 97,pos_z = -99}
NPCList[658] = { name = "前往王城" ,type = 3 ,sid = 5004 ,x = -97 ,z = 82 ,pos_x = -97,pos_z = 82}
NPCList[659] = { name = "前往邊境" ,type = 3 ,sid = 5004 ,x = -31 ,z = -85 ,pos_x = -31,pos_z = -85}

NPCList[4903] = { name = "邪惡巫女" ,type = 0 ,sid = 5004 ,x = -64 ,z = 93 ,pos_x = -64,pos_z = 93}
NPCList[4904] = { name = "邪惡巫女" ,type = 0 ,sid = 5004 ,x = -64 ,z = 93 ,pos_x = -64,pos_z = 93}
NPCList[4905] = { name = "邪惡巫女" ,type = 0 ,sid = 5004 ,x = -64 ,z = 93 ,pos_x = -64,pos_z = 93}
NPCList[4906] = { name = "邪惡巫女" ,type = 0 ,sid = 5004 ,x = -64 ,z = 93 ,pos_x = -64,pos_z = 93}
NPCList[4907] = { name = "邪惡巫女" ,type = 0 ,sid = 5004 ,x = -64 ,z = 93 ,pos_x = -64,pos_z = 93}

NPCList[4908] = { name = "急先鋒" ,type = 0 ,sid = 5004 ,x = 85 ,z = -85 ,pos_x = 85,pos_z = -85}
NPCList[4920] = { name = "急先鋒" ,type = 0 ,sid = 5004 ,x = 85 ,z = -85 ,pos_x = 85,pos_z = -85}
NPCList[4921] = { name = "急先鋒" ,type = 0 ,sid = 5004 ,x = 85 ,z = -85 ,pos_x = 85,pos_z = -85}
NPCList[4922] = { name = "急先鋒" ,type = 0 ,sid = 5004 ,x = 85 ,z = -85 ,pos_x = 85,pos_z = -85}
NPCList[4923] = { name = "急先鋒" ,type = 0 ,sid = 5004 ,x = 85 ,z = -85 ,pos_x = 85,pos_z = -85}

NPCList[4925] = { name = "馬雲祿" ,type = 0 ,sid = 5004 ,x = -56.82 ,z = -40.56 ,pos_x = -56.82,pos_z = -40.56}
NPCList[4926] = { name = "馬雲祿" ,type = 0 ,sid = 5004 ,x = -56.82 ,z = -40.56 ,pos_x = -56.82,pos_z = -40.56}
NPCList[4927] = { name = "馬雲祿" ,type = 0 ,sid = 5004 ,x = -56.82 ,z = -40.56 ,pos_x = -56.82,pos_z = -40.56}
NPCList[4928] = { name = "馬雲祿" ,type = 0 ,sid = 5004 ,x = -56.82 ,z = -40.56 ,pos_x = -56.82,pos_z = -40.56}
NPCList[4929] = { name = "馬雲祿" ,type = 0 ,sid = 5004 ,x = -56.82 ,z = -40.56 ,pos_x = -56.82,pos_z = -40.56}

NPCList[4930] = { name = "邊塞醉鬼" ,type = 0 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}
NPCList[4931] = { name = "邊塞醉鬼" ,type = 0 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}
NPCList[4932] = { name = "邊塞醉鬼" ,type = 0 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}
NPCList[4933] = { name = "邊塞醉鬼" ,type = 0 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}
NPCList[4934] = { name = "邊塞醉鬼" ,type = 0 ,sid = 5004 ,x = 92 ,z = 6 ,pos_x = 92,pos_z = 6}

NPCList[4936] = { name = "銀鬃狼" ,type = 0 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}
NPCList[4938] = { name = "銀鬃狼" ,type = 0 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}
NPCList[4939] = { name = "銀鬃狼" ,type = 0 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}
NPCList[4940] = { name = "銀鬃狼" ,type = 0 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}
NPCList[4941] = { name = "銀鬃狼" ,type = 0 ,sid = 5004 ,x = -86.6 ,z = 47.3 ,pos_x = -86.6,pos_z = 47.3}

--京郊
NPCList[10779] = { name = "孫獵戶" ,type = 5 ,sid = 5006 ,x = 50 ,z = -73 ,pos_x = 50,pos_z = -73,desc = "榮",activity = {4793}}
NPCList[10780] = { name = "采參人" ,type = 5 ,sid = 5006 ,x = -54 ,z = 33 ,pos_x = -54,pos_z = 33,desc = "勞",activity = {4793}}
NPCList[10781] = { name = "京郊民勇" ,type = 5 ,sid = 5006 ,x = -62 ,z = -45 ,pos_x = -62,pos_z = -45,desc = "最",activity = {4793}}
NPCList[10782] = { name = "賣炭翁" ,type = 5 ,sid = 5006 ,x = 59 ,z = -59 ,pos_x = 59,pos_z = -59,desc = "光",activity = {4793}}
NPCList[10783] = { name = "王夫子" ,type = 5 ,sid = 5006 ,x = 0 ,z = 48 ,pos_x = 0,pos_z = 48,desc = "動",activity = {4793}}

NPCList[696] = { name = "吳宇" ,type = 1 ,sid = 5006 ,x = 58 ,z = -71 ,pos_x = 58,pos_z = -71}
NPCList[697] = { name = "張獵戶" ,type = 1 ,sid = 5006 ,x = 23 ,z = -51 ,pos_x = 23,pos_z = -51}
NPCList[698] = { name = "陳子楓" ,type = 1 ,sid = 5006 ,x = 71 ,z = 1 ,pos_x = 71,pos_z = 1}
NPCList[699] = { name = "王猛將" ,type = 1 ,sid = 5006 ,x = 67 ,z = 38 ,pos_x = 67,pos_z = 38}
NPCList[700] = { name = "吳老大" ,type = 1 ,sid = 5006 ,x = 1 ,z = 72 ,pos_x = 1,pos_z = 72}
NPCList[701] = { name = "吳老二" ,type = 1 ,sid = 5006 ,x = -69 ,z = 81 ,pos_x = -69,pos_z = 81}
NPCList[702] = { name = "鐵大力" ,type = 1 ,sid = 5006 ,x = -47 ,z = 47 ,pos_x = -47,pos_z = 47}
NPCList[703] = { name = "馮家旺" ,type = 1 ,sid = 5006 ,x = -59 ,z = 19 ,pos_x = -59,pos_z = 19}
NPCList[704] = { name = "執法伍長" ,type = 1 ,sid = 5006 ,x = -65 ,z = -44 ,pos_x = -65,pos_z = -44}
NPCList[705] = { name = "夏侯亮" ,type = 1 ,sid = 5006 ,x = -95 ,z = -68 ,pos_x = -95,pos_z = -68}
NPCList[674] = { name = "野狼" ,type = 2 ,sid = 5006 ,x = 77 ,z = -81 ,pos_x = 77,pos_z = -81}
NPCList[675] = { name = "野狼王" ,type = 2 ,sid = 5006 ,x = 93 ,z = -65 ,pos_x = 93,pos_z = -65}
NPCList[676] = { name = "黑熊" ,type = 2 ,sid = 5006 ,x = 22 ,z = -68 ,pos_x = 22,pos_z = -68}
NPCList[677] = { name = "黑熊王" ,type = 2 ,sid = 5006 ,x = 23 ,z = -89 ,pos_x = 23,pos_z = -89}
NPCList[678] = { name = "義軍搜刮者" ,type = 2 ,sid = 5006 ,x = -1 ,z = -86 ,pos_x = -1,pos_z = -86}
NPCList[679] = { name = "義軍前哨" ,type = 2 ,sid = 5006 ,x = -10 ,z = -15 ,pos_x = -10,pos_z = -15}
NPCList[680] = { name = "義軍嘍囉" ,type = 2 ,sid = 5006 ,x = 29 ,z = 6 ,pos_x = 29,pos_z = 6}
NPCList[681] = { name = "義軍精銳" ,type = 2 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}
NPCList[682] = { name = "義軍首領" ,type = 2 ,sid = 5006 ,x = 88 ,z = 21 ,pos_x = 88,pos_z = 21}
NPCList[683] = { name = "暴動礦工" ,type = 2 ,sid = 5006 ,x = 29 ,z = 91 ,pos_x = 29,pos_z = 91}
NPCList[684] = { name = "藥人礦工" ,type = 2 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}
NPCList[685] = { name = "太平道巫師" ,type = 2 ,sid = 5006 ,x = -40 ,z = 96 ,pos_x = -40,pos_z = 96}
NPCList[686] = { name = "礦工頭目" ,type = 2 ,sid = 5006 ,x = -2 ,z = 97 ,pos_x = -2,pos_z = 97}
NPCList[687] = { name = "嗜血凶徒" ,type = 2 ,sid = 5006 ,x = -21 ,z = 41 ,pos_x = -21,pos_z = 41}
NPCList[688] = { name = "亡命凶徒" ,type = 2 ,sid = 5006 ,x = -69 ,z = 1 ,pos_x = -69,pos_z = 1}
NPCList[689] = { name = "太平道教眾" ,type = 2 ,sid = 5006 ,x = -103 ,z = 32 ,pos_x = -103,pos_z = 32}
NPCList[690] = { name = "太平道頭目" ,type = 2 ,sid = 5006 ,x = -96 ,z = 4 ,pos_x = -96,pos_z = 4}
NPCList[691] = { name = "逃跑兵卒" ,type = 2 ,sid = 5006 ,x = -94 ,z = -45 ,pos_x = -94,pos_z = -45}
NPCList[692] = { name = "暴動兵卒" ,type = 2 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}
NPCList[693] = { name = "太平道精銳" ,type = 2 ,sid = 5006 ,x = -51 ,z = -78 ,pos_x = -51,pos_z = -78}
NPCList[694] = { name = "太平大聖" ,type = 2 ,sid = 5006 ,x = -47 ,z = -92 ,pos_x = -47,pos_z = -92}
NPCList[748] = { name = "前往王城" ,type = 3 ,sid = 5006 ,x = 97 ,z = -91 ,pos_x = 97,pos_z = -91}

NPCList[4974] = { name = "太平聖女" ,type = 0 ,sid = 5006 ,x = -76 ,z = 2 ,pos_x = -76,pos_z = 2}
NPCList[4976] = { name = "太平聖女" ,type = 0 ,sid = 5006 ,x = -76 ,z = 2 ,pos_x = -76,pos_z = 2}
NPCList[4977] = { name = "太平聖女" ,type = 0 ,sid = 5006 ,x = -76 ,z = 2 ,pos_x = -76,pos_z = 2}
NPCList[4978] = { name = "太平聖女" ,type = 0 ,sid = 5006 ,x = -76 ,z = 2 ,pos_x = -76,pos_z = 2}
NPCList[4979] = { name = "太平聖女" ,type = 0 ,sid = 5006 ,x = -76 ,z = 2 ,pos_x = -76,pos_z = 2}

NPCList[4980] = { name = "暴君" ,type = 0 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}
NPCList[4981] = { name = "暴君" ,type = 0 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}
NPCList[4982] = { name = "暴君" ,type = 0 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}
NPCList[4983] = { name = "暴君" ,type = 0 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}
NPCList[4984] = { name = "暴君" ,type = 0 ,sid = 5006 ,x = -91 ,z = -87 ,pos_x = -91,pos_z = -87}

NPCList[4985] = { name = "藥人礦工" ,type = 0 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}
NPCList[4986] = { name = "藥人礦工" ,type = 0 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}
NPCList[4987] = { name = "藥人礦工" ,type = 0 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}
NPCList[4988] = { name = "藥人礦工" ,type = 0 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}
NPCList[4989] = { name = "藥人礦工" ,type = 0 ,sid = 5006 ,x = 86 ,z = 95 ,pos_x = 86,pos_z = 95}

NPCList[4990] = { name = "義軍精銳" ,type = 0 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}
NPCList[4991] = { name = "義軍精銳" ,type = 0 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}
NPCList[4992] = { name = "義軍精銳" ,type = 0 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}
NPCList[4993] = { name = "義軍精銳" ,type = 0 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}
NPCList[4994] = { name = "義軍精銳" ,type = 0 ,sid = 5006 ,x = 68 ,z = 11 ,pos_x = 68,pos_z = 11}

NPCList[4995] = { name = "太平道巫師" ,type = 0 ,sid = 5006 ,x = -44 ,z = 98 ,pos_x = -44,pos_z = 98}
NPCList[4996] = { name = "太平道巫師" ,type = 0 ,sid = 5006 ,x = -44 ,z = 98 ,pos_x = -44,pos_z = 98}
NPCList[4997] = { name = "太平道巫師" ,type = 0 ,sid = 5006 ,x = -44 ,z = 98 ,pos_x = -44,pos_z = 98}
NPCList[4998] = { name = "太平道巫師" ,type = 0 ,sid = 5006 ,x = -44 ,z = 98 ,pos_x = -44,pos_z = 98}
NPCList[4999] = { name = "太平道巫師" ,type = 0 ,sid = 5006 ,x = -44 ,z = 98 ,pos_x = -44,pos_z = 98}

--边境
NPCList[707] = { name = "跨國傳送" ,type = 3 ,sid = 5005 ,x = -3.5 ,z = -4.14 ,pos_x = -3.5,pos_z = -4.14}

NPCList[10773] = { name = "貨郎" ,type = 5 ,sid = 5005 ,x = -29 ,z = 89 ,pos_x = -29,pos_z = 89,desc = "勞",activity = {4792}}
NPCList[10774] = { name = "老李頭" ,type = 5 ,sid = 5005 ,x = -38 ,z = -67 ,pos_x = -38,pos_z = -67,desc = "光",activity = {4792}}
NPCList[10775] = { name = "挖井人" ,type = 5 ,sid = 5005 ,x = -82 ,z = -71 ,pos_x = -82,pos_z = -71,desc = "最",activity = {4792}}
NPCList[10776] = { name = "茶小二" ,type = 5 ,sid = 5005 ,x = -18 ,z = -12 ,pos_x = -18,pos_z = -12,activity = {4792}}
NPCList[10777] = { name = "墾荒人" ,type = 5 ,sid = 5005 ,x = 22 ,z = -69 ,pos_x = 22,pos_z = -69,desc = "榮",activity = {4792}}
NPCList[10778] = { name = "董二壯" ,type = 5 ,sid = 5005 ,x = 22 ,z = 73 ,pos_x = 22,pos_z = 73,desc = "動",activity = {4792}}

NPCList[8412] = { name = "天字燈謎" ,type = 1 ,sid = 5005 ,x = 60.38203 ,z = 3.017621 ,pos_x = 60.38203,pos_z = 3.017621,desc = "謎",activity = {3658}}
NPCList[8417] = { name = "地字燈謎" ,type = 1 ,sid = 5005 ,x = 71.88069 ,z = 68.27219 ,pos_x = 71.88069,pos_z = 68.27219,desc = "謎",activity = {3658}}
NPCList[8413] = { name = "玄字燈謎" ,type = 1 ,sid = 5005 ,x = 22.01228 ,z = 73.22006 ,pos_x = 22.01228,pos_z = 73.22006,desc = "謎",activity = {3658}}
NPCList[8418] = { name = "黃字燈謎" ,type = 1 ,sid = 5005 ,x = -36.05284 ,z = 55.12088 ,pos_x = -36.05284,pos_z = 55.12088,desc = "謎",activity = {3658}}
NPCList[8419] = { name = "宇字燈謎" ,type = 1 ,sid = 5005 ,x = -71.11887 ,z = 59.52815 ,pos_x = -71.11887,pos_z = 59.52815,desc = "謎",activity = {3658}}
NPCList[8414] = { name = "宙字燈謎" ,type = 1 ,sid = 5005 ,x = -66.2831 ,z = -21.45045 ,pos_x = -66.2831,pos_z = -21.45045,desc = "謎",activity = {3658}}
NPCList[8415] = { name = "洪字燈謎" ,type = 1 ,sid = 5005 ,x = -73.3791 ,z = -66.57816 ,pos_x = -73.3791,pos_z = -66.57816,desc = "謎",activity = {3658}}
NPCList[8416] = { name = "荒字燈謎" ,type = 1 ,sid = 5005 ,x = 27.42536 ,z = -77.03924 ,pos_x = 27.42536,pos_z = -77.03924,desc = "謎",activity = {3658}}
NPCList[8420] = { name = "日字燈謎" ,type = 1 ,sid = 5005 ,x = 62.04676 ,z = -94.77042 ,pos_x = 62.04676,pos_z = -94.77042,desc = "謎",activity = {3658}}
NPCList[8421] = { name = "月字燈謎" ,type = 1 ,sid = 5005 ,x = 86.25755 ,z = -60.97253 ,pos_x = 86.25755,pos_z = -60.97253,desc = "謎",activity = {3658}}
NPCList[750] = { name = "邊境大將" ,type = 1 ,sid = 5005 ,x = 10 ,z = 15 ,pos_x = 10,pos_z = 15,desc = "刺"}
NPCList[751] = { name = "華佗" ,type = 1 ,sid = 5005 ,x = -45.74 ,z = 61.72 ,pos_x = -45.74,pos_z = 61.72}
NPCList[752] = { name = "瘟疫倖存者" ,type = 1 ,sid = 5005 ,x = -77 ,z = 66 ,pos_x = -77,pos_z = 66}
NPCList[753] = { name = "拾荒者王大" ,type = 1 ,sid = 5005 ,x = -22 ,z = 6.5 ,pos_x = -22,pos_z = 6.5}
NPCList[754] = { name = "王二" ,type = 1 ,sid = 5005 ,x = -97 ,z = -42 ,pos_x = -97,pos_z = -42}
NPCList[755] = { name = "徐庶" ,type = 1 ,sid = 5005 ,x = 25 ,z = -44 ,pos_x = 25,pos_z = -44}
NPCList[756] = { name = "廖化" ,type = 1 ,sid = 5005 ,x = 67 ,z = 40.8 ,pos_x = 67,pos_z = 40.8}
NPCList[1049] = { name = "歐陽鏢師" ,type = 1 ,sid = 5005 ,x = 0 ,z = 49 ,pos_x = 0,pos_z = 49}
NPCList[6107] = { name = "南華仙童" ,type = 1 ,sid = 5005 ,x = 100.23 ,z = -91.33 ,pos_x = 100.23,pos_z = -91.33}
NPCList[6761] = { name = "南華仙境" ,type = 3 ,sid = 5005 ,x = 102.42 ,z = -97.14 ,pos_x = 102.42,pos_z = -97.14}
-- NPCList[7293] = { name = "六龙程序" ,type = 2 ,sid = 5005 ,x = -53.7 ,z = -81.2 ,pos_x = -53.7,pos_z = -81.2,activity = {3013}}
-- NPCList[7294] = { name = "六龙策划" ,type = 2 ,sid = 5005 ,x = -88.4 ,z = -10.8 ,pos_x = -88.4,pos_z = -10.8,activity = {3013}}
-- NPCList[7295] = { name = "六龙运营" ,type = 2 ,sid = 5005 ,x = 99.4 ,z = -19 ,pos_x = 99.4,pos_z = -19,activity = {3013}}
NPCList[16970] = { name = "張角尋路" ,type = 5 ,sid = 5022 ,x = -4 ,z = 32 ,pos_x = -4,pos_z = 32}
NPCList[776] = { name = "食腐土狼" ,type = 2 ,sid = 5005 ,x = -19 ,z = 78 ,pos_x = -19,pos_z = 78}
NPCList[777] = { name = "劫掠強盜" ,type = 2 ,sid = 5005 ,x = -35.07 ,z = 53.78 ,pos_x = -35.07,pos_z = 53.78}
NPCList[778] = { name = "疫病行屍" ,type = 2 ,sid = 5005 ,x = -79 ,z = 90 ,pos_x = -79,pos_z = 90}
NPCList[779] = { name = "邪惡方士" ,type = 2 ,sid = 5005 ,x = -96 ,z = 40 ,pos_x = -96,pos_z = 40}
NPCList[780] = { name = "屍兵" ,type = 2 ,sid = 5005 ,x = -59 ,z = -52 ,pos_x = -59,pos_z = -52}
NPCList[781] = { name = "士兵亡魂" ,type = 2 ,sid = 5005 ,x = -71.32 ,z = -102 ,pos_x = -71.32,pos_z = -102}
NPCList[783] = { name = "食腐狂狼" ,type = 2 ,sid = 5005 ,x = -9 ,z = -63 ,pos_x = -9,pos_z = -63}
NPCList[784] = { name = "黑心商人" ,type = 2 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}
NPCList[785] = { name = "異國斥候" ,type = 2 ,sid = 5005 ,x = 98 ,z = -45 ,pos_x = 98,pos_z = -45}
NPCList[786] = { name = "異國精兵" ,type = 2 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}
NPCList[787] = { name = "尋仇強盜" ,type = 2 ,sid = 5005 ,x = 63.74,z = -35.2 ,pos_x = 63.74,pos_z = -35.2}
NPCList[788] = { name = "邊境強盜" ,type = 2 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}
NPCList[789] = { name = "大方士" ,type = 2 ,sid = 5005 ,x = -104 ,z = 10 ,pos_x = -104,pos_z = 10}
NPCList[790] = { name = "將軍亡魂" ,type = 2 ,sid = 5005 ,x = -51 ,z = -100 ,pos_x = -51,pos_z = -100}
NPCList[791] = { name = "巨象" ,type = 2 ,sid = 5005 ,x = 10 ,z = -111 ,pos_x = 10,pos_z = -111}
NPCList[792] = { name = "裴元紹" ,type = 2 ,sid = 5005 ,x = 92.5 ,z = 99.7 ,pos_x = 92.5,pos_z = 99.7}
NPCList[660] = { name = "前往天門關" ,type = 3 ,sid = 5005 ,x = -4.7 ,z = 103.5 ,pos_x = -4.7,pos_z = 103.5}
NPCList[7868] = { name = "前往洛陽" ,type = 3 ,sid = 5005 ,x = -97.85 ,z = -108.46 ,pos_x = -97.85,pos_z = -108.46}

NPCList[4945] = { name = "疫病屍魔" ,type = 0 ,sid = 5005 ,x = -67 ,z = 86 ,pos_x = -67,pos_z = 86}
NPCList[4946] = { name = "疫病屍魔" ,type = 0 ,sid = 5005 ,x = -67 ,z = 86 ,pos_x = -67,pos_z = 86}
NPCList[4947] = { name = "疫病屍魔" ,type = 0 ,sid = 5005 ,x = -67 ,z = 86 ,pos_x = -67,pos_z = 86}
NPCList[4948] = { name = "疫病屍魔" ,type = 0 ,sid = 5005 ,x = -67 ,z = 86 ,pos_x = -67,pos_z = 86}
NPCList[4949] = { name = "疫病屍魔" ,type = 0 ,sid = 5005 ,x = -67 ,z = 86 ,pos_x = -67,pos_z = 86}

NPCList[4952] = { name = "蠻王" ,type = 0 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}
NPCList[4953] = { name = "蠻王" ,type = 0 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}
NPCList[4954] = { name = "蠻王" ,type = 0 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}
NPCList[4955] = { name = "蠻王" ,type = 0 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}
NPCList[4956] = { name = "蠻王" ,type = 0 ,sid = 5005 ,x = 70.9 ,z = 81.8 ,pos_x = 70.9,pos_z = 81.8}

NPCList[4959] = { name = "戰象" ,type = 0 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}
NPCList[4960] = { name = "戰象" ,type = 0 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}
NPCList[4961] = { name = "戰象" ,type = 0 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}
NPCList[4962] = { name = "戰象" ,type = 0 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}
NPCList[4963] = { name = "戰象" ,type = 0 ,sid = 5005 ,x = 42.8 ,z = -91 ,pos_x = 42.8,pos_z = -91}

NPCList[4964] = { name = "士兵亡魂" ,type = 0 ,sid = 5005 ,x = -71.32,z = -101.99 ,pos_x = -71.32,pos_z = -101.99}
NPCList[4965] = { name = "士兵亡魂" ,type = 0 ,sid = 5005 ,x = -71.32,z = -101.99 ,pos_x = -71.32,pos_z = -101.99}
NPCList[4966] = { name = "士兵亡魂" ,type = 0 ,sid = 5005 ,x = -71.32,z = -101.99 ,pos_x = -71.32,pos_z = -101.99}
NPCList[4967] = { name = "士兵亡魂" ,type = 0 ,sid = 5005 ,x = -71.32,z = -101.99 ,pos_x = -71.32,pos_z = -101.99}
NPCList[4968] = { name = "士兵亡魂" ,type = 0 ,sid = 5005 ,x = -71.32,z = -101.99 ,pos_x = -71.32,pos_z = -101.99}

NPCList[4969] = { name = "黑心商人" ,type = 0 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}
NPCList[4970] = { name = "黑心商人" ,type = 0 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}
NPCList[4971] = { name = "黑心商人" ,type = 0 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}
NPCList[4972] = { name = "黑心商人" ,type = 0 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}
NPCList[4973] = { name = "黑心商人" ,type = 0 ,sid = 5005 ,x = 99.3 ,z = 7.4 ,pos_x = 99.3,pos_z = 7.4}

--2016圣诞节
NPCList[13730] = { name = "聖誕老人" ,type = 1 ,sid = 5005 ,x = -61.4 ,z = -5 ,pos_x = -61.4,pos_z = -5,desc = "",activity = {6938},}

NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = 89 ,z = 80.5 ,pos_x = 89,pos_z = 80.5,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = -36.9 ,z = 63 ,pos_x = -36.9,pos_z = 63,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = -80.6 ,z = 91.1 ,pos_x = -80.6,pos_z = 91.1,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = -96 ,z = 43 ,pos_x = -96,pos_z = 43,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = -66 ,z = 41.4 ,pos_x = -66,pos_z = 41.4,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = -55.8 ,z = -90.8 ,pos_x = -55.8,pos_z = -90.8,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = 60 ,z = -92 ,pos_x = 60,pos_z = -92,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = 90.3 ,z = -54.5 ,pos_x = 90.3,pos_z = -54.5,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = 60.8 ,z = -36.6 ,pos_x = 60.8,pos_z = -36.6,desc = "",activity = {6938},}
NPCList[13732] = { name = "聖誕寶箱" ,type = 1 ,sid = 5005 ,x = 90.3 ,z = 7.5 ,pos_x = 90.3,pos_z = 7.5,desc = "",activity = {6938},}


NPCList[7631] = { name = "聖誕仙鹿" ,type = 1 ,sid = 5005 ,x = -61.8 ,z = 1.1 ,pos_x = -61.8,pos_z = 1.1,desc = "",activity = {6938},}
NPCList[7631] = { name = "聖誕仙鹿" ,type = 1 ,sid = 5005 ,x = -59.1 ,z = 4.1 ,pos_x = -59.1,pos_z = 4.1,desc = "",activity = {6938},}
NPCList[7631] = { name = "聖誕仙鹿" ,type = 1 ,sid = 5005 ,x = -53.6 ,z = 6 ,pos_x = -53.6,pos_z = 6,desc = "",activity = {6938},}
NPCList[7631] = { name = "聖誕仙鹿" ,type = 1 ,sid = 5005 ,x = -65.3 ,z = 2.2 ,pos_x = -65.3,pos_z = 2.2,desc = "",activity = {6938},}
NPCList[7631] = { name = "聖誕仙鹿" ,type = 1 ,sid = 5005 ,x = -68.5 ,z = 0.9 ,pos_x = -68.5,pos_z = 0.9,desc = "",activity = {6938},}


--隆中
NPCList[1073] = { name = "武器架" ,type = 0 ,sid = 5007 ,x = 99.4 ,z = 35.5 ,pos_x = 99.4,pos_z = 35.5}
NPCList[1066] = { name = "王鐵匠" ,type = 1 ,sid = 5007 ,x = 88.8 ,z = 46.7 ,pos_x = 88.8,pos_z = 46.7}
NPCList[1058] = { name = "黃月英" ,type = 1 ,sid = 5007 ,x = 101.7 ,z = 77 ,pos_x = 101.7,pos_z = 77}
NPCList[25] = { name = "孫醫仙" ,type = 1 ,sid = 5007 ,x = 85 ,z = 71 ,pos_x = 85,pos_z = 71}
NPCList[1059] = { name = "小童子" ,type = 1 ,sid = 5007 ,x = 11 ,z = 103 ,pos_x = 11,pos_z = 103}
NPCList[1060] = { name = "水鏡先生" ,type = 1 ,sid = 5007 ,x = -59 ,z = 87 ,pos_x = -59,pos_z = 87}
NPCList[1061] = { name = "劉備" ,type = 1 ,sid = 5007 ,x = -85 ,z = 36 ,pos_x = -85,pos_z = 36}
NPCList[1062] = { name = "諸葛亮" ,type = 1 ,sid = 5007 ,x = -59 ,z = -4 ,pos_x = -59,pos_z = -4}
NPCList[1063] = { name = "諸葛均" ,type = 1 ,sid = 5007 ,x = -20 ,z = -35 ,pos_x = -20,pos_z = -35}
NPCList[1064] = { name = "關羽" ,type = 1 ,sid = 5007 ,x = 33.4 ,z = -1 ,pos_x = 33.4,pos_z = -1}
NPCList[1065] = { name = "山賊俘虜" ,type = 1 ,sid = 5007 ,x = 30.5 ,z = -2.5 ,pos_x = 30.5,pos_z = -2.5}
NPCList[1067] = { name = "王大壯" ,type = 1 ,sid = 5007 ,x = 93 ,z = -19 ,pos_x = 93,pos_z = -19}
NPCList[1068] = { name = "山賊李四" ,type = 1 ,sid = 5007 ,x = 37 ,z = -73 ,pos_x = 37,pos_z = -73}
NPCList[1069] = { name = "黃承彥" ,type = 1 ,sid = 5007 ,x = -31 ,z = -72 ,pos_x = -31,pos_z = -72}
NPCList[1070] = { name = "坐騎" ,type = 0 ,sid = 5007 ,x = -33 ,z = -72 ,pos_x = -33,pos_z = -72}
NPCList[1071] = { name = "趙雲" ,type = 1 ,sid = 5007 ,x = -82 ,z = -80 ,pos_x = -82,pos_z = -80}
NPCList[1074] = { name = "木樁" ,type = 0 ,sid = 5007 ,x = 113 ,z = 56 ,pos_x = 113,pos_z = 56}
NPCList[1075] = { name = "無賴" ,type = 2 ,sid = 5007 ,x = 101 ,z = 106 ,pos_x = 101,pos_z = 106}
NPCList[1076] = { name = "黃天教信徒" ,type = 2 ,sid = 5007 ,x = -21 ,z = 90.6 ,pos_x = -21,pos_z = 90.6}
NPCList[1077] = { name = "神棍" ,type = 2 ,sid = 5007 ,x = -14 ,z = 59 ,pos_x = -14,pos_z = 59}
NPCList[1078] = { name = "無賴頭目" ,type = 2 ,sid = 5007 ,x = -40 ,z = 62.6 ,pos_x = -40,pos_z = 62.6}
NPCList[1079] = { name = "大黑熊" ,type = 2 ,sid = 5007 ,x = -75 ,z = 98.6 ,pos_x = -75,pos_z = 98.6}
NPCList[1080] = { name = "野狼" ,type = 2 ,sid = 5007 ,x = -87 ,z = 81 ,pos_x = -87,pos_z = 81}
NPCList[1081] = { name = "白狼王" ,type = 2 ,sid = 5007 ,x = -104 ,z = 57 ,pos_x = -104,pos_z = 57}
NPCList[1082] = { name = "攔路地痞" ,type = 2 ,sid = 5007 ,x = -63 ,z = 56 ,pos_x = -63,pos_z = 56}
NPCList[1130] = { name = "遊蕩黑熊" ,type = 2 ,sid = 5007 ,x = -47 ,z = 20 ,pos_x = -47,pos_z = 20}
NPCList[1157] = { name = "妖女" ,type = 2 ,sid = 5007 ,x = -2 ,z = -12 ,pos_x = -2,pos_z = -12}
NPCList[1084] = { name = "失魂無賴" ,type = 2 ,sid = 5007 ,x = 5.5 ,z = -36 ,pos_x = 5.5,pos_z = -36}
NPCList[1085] = { name = "山賊哨探" ,type = 2 ,sid = 5007 ,x = 27 ,z = -38 ,pos_x = 27,pos_z = -38}
NPCList[1086] = { name = "山賊嘍囉" ,type = 2 ,sid = 5007 ,x = 76 ,z = -4 ,pos_x = 76,pos_z = -4}
NPCList[1087] = { name = "山賊打手" ,type = 2 ,sid = 5007 ,x = 69 ,z = -33 ,pos_x = 69,pos_z = -33}
NPCList[1089] = { name = "黃巾嘍囉" ,type = 2 ,sid = 5007 ,x = 15 ,z = -100 ,pos_x = 15,pos_z = -100}
NPCList[1090] = { name = "路障" ,type = 2 ,sid = 5007 ,x = 4.6 ,z = -83 ,pos_x = 4.6,pos_z = -83}
NPCList[1091] = { name = "妖狼" ,type = 2 ,sid = 5007 ,x = -17.5 ,z = -87 ,pos_x = -17.5,pos_z = -87}
NPCList[1131] = { name = "妖術士" ,type = 2 ,sid = 5007 ,x = -56 ,z = -64 ,pos_x = -56,pos_z = -64}
NPCList[1092] = { name = "黃巾精銳" ,type = 2 ,sid = 5007 ,x = -89 ,z = -62 ,pos_x = -89,pos_z = -62}
NPCList[1093] = { name = "黃大仙" ,type = 2 ,sid = 5007 ,x = -81 ,z = -41 ,pos_x = -81,pos_z = -41}
NPCList[1158] = { name = "前往王城" ,type = 3 ,sid = 5007 ,x = -104 ,z = -107.5 ,pos_x = -104,pos_z = -107.5}
--卧龙岗
NPCList[1415] = { name = "黃月英" ,type = 1 ,sid = 5009 ,x = 85.17 ,z = 120.85 ,pos_x = 85.17,pos_z = 120.85}
NPCList[1416] = { name = "王鐵匠" ,type = 1 ,sid = 5009 ,x = 115.41 ,z = 91.77 ,pos_x = 115.41,pos_z = 91.77}
NPCList[1417] = { name = "孫醫仙" ,type = 1 ,sid = 5009 ,x = 95.99,z = 84.52 ,pos_x = 95.99,pos_z = 84.52}
NPCList[1428] = { name = "黃月英" ,type = 1 ,sid = 5009 ,x = 58.52 ,z = 95.39 ,pos_x = 58.52,pos_z = 95.39}
NPCList[1418] = { name = "華佗" ,type = 1 ,sid = 5009 ,x = 14.71 ,z = 103.51 ,pos_x = 14.71,pos_z = 103.51}
NPCList[1419] = { name = "王二" ,type = 1 ,sid = 5009 ,x = -14 ,z = 100.82 ,pos_x = -14,pos_z = 100.82}
NPCList[1492] = { name = "華佗" ,type = 1 ,sid = 5009 ,x = -13.19 ,z = 79.38 ,pos_x = -13.19,pos_z = 79.38}
NPCList[1420] = { name = "諸葛亮" ,type = 1 ,sid = 5009 ,x = -59.69 ,z = 78.64 ,pos_x = -59.69,pos_z = 78.64}
NPCList[1421] = { name = "諸葛亮" ,type = 1 ,sid = 5009 ,x = -84.72 ,z = 83.39 ,pos_x = -84.72,pos_z = 83.39}
NPCList[1422] = { name = "劉備" ,type = 1 ,sid = 5009 ,x = -84.92 ,z = 81.71 ,pos_x = -84.92,pos_z = 81.71}
NPCList[1423] = { name = "火油車" ,type = 0 ,sid = 5009 ,x = -82.59 ,z = 84.68 ,pos_x = -82.59,pos_z = 84.68}
NPCList[1681] = { name = "壯丁" ,type = 1 ,sid = 5009 ,x = -31.81 ,z = 18.54 ,pos_x = -31.81,pos_z = 18.54}
NPCList[1424] = { name = "諸葛亮" ,type = 1 ,sid = 5009 ,x = -9.13 ,z = -22.6 ,pos_x = -9.13,pos_z = -22.6}
NPCList[1659] = { name = "崔州平" ,type = 1 ,sid = 5009 ,x = 65.58 ,z = -87.3 ,pos_x = 65.58,pos_z = -87.3}
NPCList[1425] = { name = "趙雲" ,type = 1 ,sid = 5009 ,x = 101.28 ,z = -51.27 ,pos_x = 101.28,pos_z = -51.27}
NPCList[1426] = { name = "飛行器" ,type = 0 ,sid = 5009 ,x = 87.08 ,z = -38.29 ,pos_x = 87.08,pos_z = -38.29}
NPCList[1427] = { name = "諸葛亮" ,type = 1 ,sid = 5009 ,x = -43.05 ,z = -59.01 ,pos_x = -43.05,pos_z = -59.01}
NPCList[1496] = { name = "黃月英" ,type = 1 ,sid = 5009 ,x = -81.63 ,z = -20.16 ,pos_x = -81.63,pos_z = -20.16}
NPCList[1429] = { name = "劉備" ,type = 1 ,sid = 5009 ,x = -56.32 ,z = -51.23 ,pos_x = -56.32,pos_z = -51.23}
NPCList[1430] = { name = "趙雲" ,type = 1 ,sid = 5009 ,x = -44.9 ,z = -59.86 ,pos_x = -44.9,pos_z = -59.86}
NPCList[1491] = { name = "武器架" ,type = 1 ,sid = 5009 ,x = 113.35,z = 118.69 ,pos_x = 113.35,pos_z = 118.69}
NPCList[1431] = { name = "木樁" ,type = 2 ,sid = 5009 ,x = 103.75 ,z = 90.2 ,pos_x = 103.75,pos_z = 90.2}
NPCList[1432] = { name = "襲村山賊" ,type = 2 ,sid = 5009 ,x = 27.84 ,z = 113.26 ,pos_x = 27.84,pos_z = 113.26}
NPCList[1525] = { name = "山賊刀手" ,type = 2 ,sid = 5009 ,x = -11.42 ,z = 99.17 ,pos_x = -11.42,pos_z = 99.17}
NPCList[1434] = { name = "巡山探子" ,type = 2 ,sid = 5009 ,x = 0.33 ,z = 71.97 ,pos_x = 0.33,pos_z = 71.97}
NPCList[1435] = { name = "陷阱高手" ,type = 2 ,sid = 5009 ,x = -30.43 ,z = 72.37 ,pos_x = -30.43,pos_z = 72.37}
NPCList[1436] = { name = "山賊壯漢" ,type = 2 ,sid = 5009 ,x = -64.54 ,z = 52.34 ,pos_x = -64.54,pos_z = 52.34}
NPCList[1437] = { name = "山賊頭領" ,type = 2 ,sid = 5009 ,x = -81.05 ,z = 56.35 ,pos_x = -81.05,pos_z = 56.35}
NPCList[1503] = { name = "山賊嘍囉" ,type = 2 ,sid = 5009 ,x = -42.76 ,z = 37.06 ,pos_x = -42.76,pos_z = 37.06}
NPCList[1504] = { name = "橋頭匪首" ,type = 2 ,sid = 5009 ,x = -29.52 ,z = 21.17 ,pos_x = -29.52,pos_z = 21.17}
NPCList[1438] = { name = "巡山哨兵" ,type = 2 ,sid = 5009 ,x = -0.8 ,z = -66.67 ,pos_x = -0.8,pos_z = -66.67}
NPCList[1439] = { name = "哨兵頭目" ,type = 2 ,sid = 5009 ,x = -5.44 ,z = -82.17 ,pos_x = -5.44,pos_z = -82.17}
NPCList[1442] = { name = "黃巾妖術師" ,type = 2 ,sid = 5009 ,x = 47.7 ,z = -113.68 ,pos_x = 47.7,pos_z = -113.68}
NPCList[1443] = { name = "天公將軍" ,type = 2 ,sid = 5009 ,x = 75.42 ,z = -104.19 ,pos_x = 75.42,pos_z = -104.19}
NPCList[1736] = { name = "前往王城" ,type = 3 ,sid = 5009 ,x = -71.2 ,z = -79.15 ,pos_x = -71.2,pos_z = -79.15}
NPCList[11877] = { name = "黃承彥" ,type = 1 ,sid = 5009 ,x = 120.6 ,z = 130.5 ,pos_x = 120.6,pos_z = 130.5, activity = {5739}}
NPCList[12931] = { name = "水鏡先生" ,type = 1 ,sid = 5009 ,x = -55.02 ,z = -39.73 ,pos_x = -55.02,pos_z = -39.73, desc="師徒",activity = {6358},
	service_info =	--打开界面
	{
		service_name = "試煉之巔", 
		need_level = 0,
		target_panel = function () require "GUI.ECPanelInstanceMentorShip".Instance():Toggle() end,
	},
}
--南华仙境
NPCList[6094] = { name = "南華老仙" ,type = 1 ,sid = 5022 ,x = -18.13 ,z = -0.92 ,pos_x = -18.13,pos_z = -0.92}
NPCList[7698] = { name = "南華護法" ,type = 1 ,sid = 5022 ,x = -19.29 ,z = -19.6 ,pos_x = -19.29,pos_z = -19.6}
NPCList[6095] = { name = "南華侍者" ,type = 0 ,sid = 5022 ,x = -64.45 ,z = 30.2 ,pos_x = -64.45,pos_z = 30.2}
NPCList[6096] = { name = "張梁" ,type = 1 ,sid = 5022 ,x = -108.65 ,z = 78.41 ,pos_x = -108.65,pos_z = 78.41}
NPCList[6097] = { name = "張寶" ,type = 0 ,sid = 5022 ,x = -36.72 ,z = 73.17 ,pos_x = -36.72,pos_z = 73.17}
NPCList[6098] = { name = "張寶" ,type = 0 ,sid = 5022 ,x = -46.25 ,z = 102.38 ,pos_x = -46.25,pos_z = 102.38}
NPCList[6099] = { name = "南華侍者" ,type = 0 ,sid = 5022 ,x = -43.57 ,z = 87.85 ,pos_x = -43.57,pos_z = 87.85}
NPCList[6100] = { name = "左慈" ,type = 0 ,sid = 5022 ,x = 10.01 ,z = 60.4 ,pos_x = 10.01,pos_z = 60.4}
NPCList[6101] = { name = "受傷樵夫" ,type = 0 ,sid = 5022 ,x = 90.82 ,z = 40.42 ,pos_x = 90.82,pos_z = 40.42}
NPCList[7033] = { name = "樵夫" ,type = 0 ,sid = 5022 ,x = 90.82 ,z = 40.42 ,pos_x = 90.82,pos_z = 40.42}
NPCList[6102] = { name = "明月" ,type = 1 ,sid = 5022 ,x = -78.44 ,z = -46.65 ,pos_x = -78.44,pos_z = -46.65}
NPCList[6103] = { name = "清風" ,type = 1 ,sid = 5022 ,x = -43.18 ,z = -93.91 ,pos_x = -43.18,pos_z = -93.91}
NPCList[6104] = { name = "南華老仙" ,type = 0 ,sid = 5022 ,x = 39.25 ,z = -55.35 ,pos_x = 39.25,pos_z = -55.35}
NPCList[6105] = { name = "左慈" ,type = 0 ,sid = 5022 ,x = 38.82 ,z = 65.73 ,pos_x = 38.82,pos_z = 65.73}
NPCList[6106] = { name = "火鳳" ,type = 1 ,sid = 5022 ,x = 100.07 ,z = -57 ,pos_x = 100.07,pos_z = -57}
NPCList[6108] = { name = "南華侍衛" ,type = 3 ,sid = 5022 ,x = 87.43 ,z = -6.57 ,pos_x = 87.43,pos_z = -6.57}
NPCList[6109] = { name = "南華侍衛" ,type = 3 ,sid = 5022 ,x = 0.51 ,z = -103.42 ,pos_x = 0.51,pos_z = -103.42}
NPCList[6110] = { name = "南華侍衛" ,type = 3 ,sid = 5022 ,x = -90.83 ,z = 1.88 ,pos_x = -90.83,pos_z = 1.88}
NPCList[7046] = { name = "藥園靈獸" ,type = 0 ,sid = 5022 ,x = -68.43 ,z = -103.8 ,pos_x = -68.43,pos_z = -103.8}
NPCList[6145] = { name = "仙境異獸" ,type = 2 ,sid = 5022 ,x = -75.4 ,z = -8.04 ,pos_x = -75.4,pos_z = -8.04}
NPCList[6146] = { name = "護陣玄獸" ,type = 2 ,sid = 5022 ,x = -93.07 ,z = 50.71 ,pos_x = -93.07,pos_z = 50.71}
NPCList[6147] = { name = "護陣甲俑" ,type = 2 ,sid = 5022 ,x = -83.04 ,z = 76.91 ,pos_x = -83.04,pos_z = 76.91}
NPCList[6148] = { name = "暴怒黑熊" ,type = 2 ,sid = 5022 ,x = -8 ,z = 84.3 ,pos_x = -8,pos_z = 84.3}
NPCList[6149] = { name = "神秘術士" ,type = 2 ,sid = 5022 ,x = 72.4 ,z = 73.2 ,pos_x = 72.4,pos_z = 73.2}
NPCList[6150] = { name = "黃巾力士" ,type = 2 ,sid = 5022 ,x = 68.73 ,z = 46.94 ,pos_x = 68.73,pos_z = 46.94}
NPCList[6151] = { name = "采藥狂徒" ,type = 2 ,sid = 5022 ,x = -62.12 ,z = -82 ,pos_x = -62.12,pos_z = -82}
NPCList[6152] = { name = "黃天妖女" ,type = 2 ,sid = 5022 ,x = -73.27 ,z = -63.46 ,pos_x = -73.27,pos_z = -63.46}
NPCList[6154] = { name = "石柱喚獸" ,type = 2 ,sid = 5022 ,x = 92.54 ,z = -69.99 ,pos_x = 92.54,pos_z = -69.99}
NPCList[6155] = { name = "地公將軍" ,type = 2 ,sid = 5022 ,x = 82.79 ,z = -79.88 ,pos_x = 82.79,pos_z = -79.88}
NPCList[6156] = { name = "地公蠻勇" ,type = 2 ,sid = 5022 ,x = 74.22 ,z = -47.19 ,pos_x = 74.22,pos_z = -47.19}
NPCList[6157] = { name = "受困的鳳凰" ,type = 0 ,sid = 5022 ,x = 100.07 ,z = -57 ,pos_x = 100.07,pos_z = -57}
NPCList[6163] = { name = "失魂礦工" ,type = 2 ,sid = 5022 ,x = -60.79 ,z = 58.24 ,pos_x = -60.79,pos_z = 58.24}
NPCList[6164] = { name = "守護靈獸" ,type = 2 ,sid = 5022 ,x = -66.3 ,z = 94.7 ,pos_x = -66.3,pos_z = 94.7}
NPCList[6165] = { name = "馭獸者" ,type = 2 ,sid = 5022 ,x = 18.07 ,z = 82.41 ,pos_x = 18.07,pos_z = 82.41}
NPCList[6986] = { name = "黃天死士" ,type = 2 ,sid = 5022 ,x = 95.66 ,z = 94.56 ,pos_x = 95.66,pos_z = 94.56}
NPCList[7043] = { name = "異化靈熊" ,type = 2 ,sid = 5022 ,x = -27.1 ,z = 98.54 ,pos_x = -27.1,pos_z = 98.54}
NPCList[10640] = { name = "幽逸軒" ,type = 5 ,sid = 5022 ,x = -73.48 ,z = -53.22 ,pos_x = -73.48,pos_z = -53.22,desc = "幽逸軒"}
NPCList[10641] = { name = "清竹林" ,type = 5 ,sid = 5022 ,x = 56.98 ,z = 63.42 ,pos_x = 56.98,pos_z = 63.42,desc = "清竹林"}
NPCList[10642] = { name = "玄石場" ,type = 5 ,sid = 5022 ,x = -80.6 ,z = 55.8 ,pos_x = -80.6,pos_z = 55.8,desc = "玄石場"}
NPCList[10643] = { name = "不歸古徑" ,type = 5 ,sid = 5022 ,x = 65.1 ,z = -45.51 ,pos_x = 65.1,pos_z = -45.51,desc = "不歸古徑"}
NPCList[11977] = { name = "天心閣" ,type = 5 ,sid = 5022 ,x = -5.9 ,z = 30.1 ,pos_x = -5.9,pos_z = 30.1,desc = "天心閣",activity = {5712}}
NPCList[11978] = { name = "蓬萊閣" ,type = 5 ,sid = 5022 ,x = -53.3 ,z = -102.4,pos_x = -53.3,pos_z = -102.4,desc = "蓬萊閣",activity = {5712}}
NPCList[11979] = { name = "真武閣" ,type = 5 ,sid = 5022 ,x = 98 ,z = -90.4 ,pos_x = 98,pos_z = -90.4,desc = "真武閣",activity = {5712}}

--洛阳
NPCList[7784] = { name = "史子眇" ,type = 1 ,sid = 5023 ,x = 154.49 ,z = -158.05 ,pos_x = 154.49,pos_z = -158.05}
NPCList[7785] = { name = "洛陽南都尉" ,type = 1 ,sid = 5023 ,x = 62.02 ,z = -187.19 ,pos_x = 62.02,pos_z = -187.19}
NPCList[7786] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = 226.24 ,z = 95.01 ,pos_x = 226.24,pos_z = 95.01}
NPCList[7787] = { name = "南門守將" ,type = 1 ,sid = 5023 ,x = 231.86 ,z = 58.94 ,pos_x = 231.86,pos_z = 58.94}
NPCList[7788] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = 78.26 ,z = -99.1 ,pos_x = 78.26,pos_z = -99.1}
NPCList[10003] = { name = "羽林中郎將" ,type = 1 ,sid = 5023 ,x = 104.27 ,z = -21.51 ,pos_x = 104.27,pos_z = -21.51}
NPCList[10004] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = -24.77 ,z = -142.51 ,pos_x = -24.77,pos_z = -142.51}
NPCList[10005] = { name = "唐姬" ,type = 1 ,sid = 5023 ,x = -20.28 ,z = -199.84 ,pos_x = -20.28,pos_z = -199.84}
NPCList[10006] = { name = "唐洪" ,type = 1 ,sid = 5023 ,x = -61.39 ,z = -172.29 ,pos_x = -61.39,pos_z = -172.29}
NPCList[10007] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = -45.11 ,z = -165.31 ,pos_x = -45.11,pos_z = -165.31}
NPCList[10008] = { name = "史子眇" ,type = 1 ,sid = 5023 ,x = -149.33 ,z = -38.54 ,pos_x = -149.33,pos_z = -38.54}
NPCList[10009] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = -164.44 ,z = 69.44 ,pos_x = -164.44,pos_z = 69.44}
NPCList[10010] = { name = "洛陽南都尉" ,type = 1 ,sid = 5023 ,x = -68.4 ,z = 44.71 ,pos_x = -68.4,pos_z = 44.71}
NPCList[10011] = { name = "右都侯" ,type = 1 ,sid = 5023 ,x = 163.74 ,z = 135.6 ,pos_x = 163.74,pos_z = 135.6}
NPCList[10012] = { name = "楚歌" ,type = 1 ,sid = 5023 ,x = 153.2 ,z = 222.05 ,pos_x = 153.2,pos_z = 222.05}
NPCList[10013] = { name = "西門守將" ,type = 1 ,sid = 5023 ,x = -70.94 ,z = 151.97 ,pos_x = -70.94,pos_z = 151.97}
NPCList[10014] = { name = "洛陽驛臣" ,type = 1 ,sid = 5023 ,x = -148.9 ,z = 216.99 ,pos_x = -148.9,pos_z = 216.99}
NPCList[10015] = { name = "史子眇" ,type = 1 ,sid = 5023 ,x = -148.9 ,z = 216.99 ,pos_x = -148.9,pos_z = 216.99}
NPCList[7864] = { name = "南門傳送" ,type = 3 ,sid = 5023 ,x = 218.46 ,z = -226.62 ,pos_x = 218.46,pos_z = -226.62}
NPCList[7865] = { name = "中門傳送" ,type = 3 ,sid = 5023 ,x = -122.42 ,z = -72.79 ,pos_x = -122.42,pos_z = -72.79}
NPCList[7866] = { name = "西門傳送" ,type = 3 ,sid = 5023 ,x = -223 ,z = 226.21 ,pos_x = -223,pos_z = 226.21}
NPCList[7805] = { name = "棕狼" ,type = 2 ,sid = 5023 ,x = 137.3 ,z = -189 ,pos_x = 137.3,pos_z = -189}
NPCList[7806] = { name = "異族流匪" ,type = 2 ,sid = 5023 ,x = 109.92 ,z = -202.16 ,pos_x = 109.92,pos_z = -202.16}
NPCList[7807] = { name = "異族女巫" ,type = 2 ,sid = 5023 ,x = 80.55 ,z = -213.09 ,pos_x = 80.55,pos_z = -213.09}
NPCList[7808] = { name = "異族妖女" ,type = 2 ,sid = 5023 ,x = 83.62 ,z = -191.96 ,pos_x = 83.62,pos_z = -191.96}
NPCList[7809] = { name = "熊瞎子" ,type = 2 ,sid = 5023 ,x = 67.02 ,z = -169.86 ,pos_x = 67.02,pos_z = -169.86}
NPCList[7810] = { name = "羽林叛軍" ,type = 2 ,sid = 5023 ,x = 209.42 ,z = -149.26 ,pos_x = 209.42,pos_z = -149.26}
NPCList[7811] = { name = "羽林都尉" ,type = 2 ,sid = 5023 ,x = 226.52 ,z = -144.84 ,pos_x = 226.52,pos_z = -144.84}
NPCList[7812] = { name = "羽林術士" ,type = 2 ,sid = 5023 ,x = 211.32 ,z = -117.36 ,pos_x = 211.32,pos_z = -117.36}
NPCList[7832] = { name = "城郊惡霸" ,type = 2 ,sid = 5023 ,x = 99.8 ,z = -117.3 ,pos_x = 99.8,pos_z = -117.3}
NPCList[7833] = { name = "逃兵槍客" ,type = 2 ,sid = 5023 ,x = 95.42 ,z = -68.36 ,pos_x = 95.42,pos_z = -68.36}
NPCList[7834] = { name = "逃兵刀手" ,type = 2 ,sid = 5023 ,x = 64.4 ,z = -54.8 ,pos_x = 64.4,pos_z = -54.8}
NPCList[7835] = { name = "逃兵弩手" ,type = 2 ,sid = 5023 ,x = 99.62 ,z = -40.46 ,pos_x = 99.62,pos_z = -40.46}
NPCList[7857] = { name = "逃兵首領" ,type = 2 ,sid = 5023 ,x = 90.05 ,z = -26.01 ,pos_x = 90.05,pos_z = -26.01}
NPCList[7836] = { name = "蒙面馬賊" ,type = 2 ,sid = 5023 ,x = 2.4 ,z = -93.1 ,pos_x = 2.4,pos_z = -93.1}
NPCList[7837] = { name = "異族男巫" ,type = 2 ,sid = 5023 ,x = 10.2 ,z = -146.73 ,pos_x = 10.2,pos_z = -146.73}
NPCList[7856] = { name = "銀鬃魔狼" ,type = 2 ,sid = 5023 ,x = -19.44 ,z = -176.07 ,pos_x = -19.44,pos_z = -176.07}
NPCList[7838] = { name = "劫掠者" ,type = 2 ,sid = 5023 ,x = -69.45 ,z = -197.83 ,pos_x = -69.45,pos_z = -197.83}
NPCList[7839] = { name = "獨眼龍" ,type = 2 ,sid = 5023 ,x = -81.46 ,z = -212.95 ,pos_x = -81.46,pos_z = -212.95}
NPCList[7840] = { name = "流浪武士" ,type = 2 ,sid = 5023 ,x = -32.7 ,z = 80.5 ,pos_x = -32.7,pos_z = 80.5}
NPCList[7841] = { name = "流浪刀客" ,type = 2 ,sid = 5023 ,x = -68 ,z = 68.8 ,pos_x = -68,pos_z = 68.8}
NPCList[7842] = { name = "落魄文士" ,type = 2 ,sid = 5023 ,x = -36.9 ,z = 120.2 ,pos_x = -36.9,pos_z = 120.2}
NPCList[7843] = { name = "掠奪者" ,type = 2 ,sid = 5023 ,x = -73.74 ,z = 114.37 ,pos_x = -73.74,pos_z = 114.37}
NPCList[7844] = { name = "小股叛軍" ,type = 2 ,sid = 5023 ,x = -143 ,z = 105.9 ,pos_x = -143,pos_z = 105.9}
NPCList[7845] = { name = "嗜殺者" ,type = 2 ,sid = 5023 ,x = -125.1 ,z = 55.2 ,pos_x = -125.1,pos_z = 55.2}
NPCList[7846] = { name = "叛亂騎兵" ,type = 2 ,sid = 5023 ,x = -195.1 ,z = -22.11 ,pos_x = -195.1,pos_z = -22.11}
NPCList[7847] = { name = "林苑棕熊" ,type = 2 ,sid = 5023 ,x = -192.9 ,z = -60.5 ,pos_x = -192.9,pos_z = -60.5}
NPCList[7848] = { name = "叛亂精英" ,type = 2 ,sid = 5023 ,x = -172.9 ,z = 39.3 ,pos_x = -172.9,pos_z = 39.3}
NPCList[7849] = { name = "異族浪人" ,type = 2 ,sid = 5023 ,x = -199.06 ,z = 24.29 ,pos_x = -199.06,pos_z = 24.29}
NPCList[7850] = { name = "狂暴刀手" ,type = 2 ,sid = 5023 ,x = -176.2 ,z = 98.2 ,pos_x = -176.2,pos_z = 98.2}
NPCList[7851] = { name = "異化頭目" ,type = 2 ,sid = 5023 ,x = -198.54 ,z = 100.6 ,pos_x = -198.54,pos_z = 100.6}
NPCList[7852] = { name = "重刀手" ,type = 2 ,sid = 5023 ,x = -98.16 ,z = 223.29 ,pos_x = -98.16,pos_z = 223.29}
NPCList[7853] = { name = "遊俠兒" ,type = 2 ,sid = 5023 ,x = -106.7 ,z = 162 ,pos_x = -106.7,pos_z = 162}
NPCList[7854] = { name = "攻城兵" ,type = 2 ,sid = 5023 ,x = -213.2 ,z = 178 ,pos_x = -213.2,pos_z = 178}
NPCList[7855] = { name = "攻城死士" ,type = 2 ,sid = 5023 ,x = -222.74 ,z = 163.45 ,pos_x = -222.74,pos_z = 163.45}
NPCList[10123] = { name = "衛尉士兵" ,type = 0 ,sid = 5023 ,x = 153 ,z = 218 ,pos_x = 153,pos_z = 218}
NPCList[10635] = { name = "上西門" ,type = 5 ,sid = 5023 ,x = -35.69 ,z = 191.68 ,pos_x = 4.8,pos_z = 192.06,desc = "上西門"}
NPCList[10636] = { name = "平成門" ,type = 5 ,sid = 5023 ,x = 191.39 ,z = -33.76 ,pos_x = 191.93,pos_z = 6.3,desc = "平成門"}
NPCList[10637] = { name = "廣陽門" ,type = 5 ,sid = 5023 ,x = 39.26 ,z = 38.77 ,pos_x = 66.22,pos_z = 65.77,desc = "廣陽門"}
NPCList[10638] = { name = "雲龍門" ,type = 5 ,sid = 5023 ,x = 144.16 ,z = 143.84 ,pos_x = 179.8,pos_z = 180,desc = "雲龍門"}
NPCList[10639] = { name = "上林苑" ,type = 5 ,sid = 5023 ,x = -155.1 ,z = -135.3 ,pos_x = -185.53,pos_z = -185.6,desc = "上林苑"}
NPCList[11893] = { name = "望海樓" ,type = 5 ,sid = 5023 ,x = -70.8 ,z = 192.1 ,pos_x = -70.8,pos_z = 192.1,desc = "望海樓",activity = {5712}}
NPCList[11894] = { name = "煙雨樓" ,type = 5 ,sid = 5023 ,x = 13.8 ,z = 13.9 ,pos_x = 13.8,pos_z = 13.9,desc = "煙雨樓",activity = {5712}}
NPCList[11895] = { name = "太白樓" ,type = 5 ,sid = 5023 ,x = 191.3 ,z = -69.7 ,pos_x = 191.3,pos_z = -69.7,desc = "太白樓",activity = {5712}}
NPCList[17284] = { name = "曹操4" ,type = 5 ,sid = 5023 ,x = -45 ,z = -45 ,pos_x = -45,pos_z = -45}

--盗马
NPCList[1269] = { name = "被盜戰馬01" ,type = 0 ,sid = 5003 ,x = 18.13 ,z = -69.78 ,pos_x = 18.13,pos_z = -69.78}
NPCList[1270] = { name = "被盜戰馬02" ,type = 0 ,sid = 5003 ,x = 143.54 ,z = -78.43 ,pos_x = 143.54,pos_z = -78.43}
NPCList[1271] = { name = "被盜戰馬03" ,type = 0 ,sid = 5003 ,x = 219.79 ,z = 24.11 ,pos_x = 219.79,pos_z = 24.11}
NPCList[1272] = { name = "被盜戰馬04" ,type = 0 ,sid = 5003 ,x = 113.12 ,z = -148.17 ,pos_x = 113.12,pos_z = -148.17}
NPCList[1273] = { name = "被盜戰馬05" ,type = 0 ,sid = 5003 ,x = -141.75 ,z = -212.75 ,pos_x = -141.75,pos_z = -212.75}

--新手副本
NPCList[2070] = { name = "山賊雜兵" ,type = 0 ,sid = 6005 ,x = 0 ,z = 0 ,pos_x = 0,pos_z = 0}
NPCList[2071] = { name = "雜兵隊長" ,type = 0 ,sid = 6005 ,x = 0 ,z = 0 ,pos_x = 0,pos_z = 0}
NPCList[2072] = { name = "山賊哨兵" ,type = 0 ,sid = 6005 ,x = 0 ,z = 0 ,pos_x = 0,pos_z = 0}
NPCList[2073] = { name = "山賊精兵" ,type = 0 ,sid = 6005 ,x = 0 ,z = 0 ,pos_x = 0,pos_z = 0}
NPCList[2076] = { name = "山賊頭領" ,type = 0 ,sid = 6005 ,x = 0 ,z = 0 ,pos_x = 0,pos_z = 0}
NPCList[2077] = { name = "洪荒異獸" ,type = 0 ,sid = 6006 ,x = 5 ,z = -19 ,pos_x = 5,pos_z = -19}
NPCList[2078] = { name = "遠古神熊" ,type = 0 ,sid = 6006 ,x = 0 ,z = -20 ,pos_x = 0,pos_z = -20}
NPCList[2079] = { name = "上古兵俑" ,type = 0 ,sid = 6006 ,x = 0 ,z = -20 ,pos_x = 0,pos_z = -20}
NPCList[2083] = { name = "巨型兵俑" ,type = 0 ,sid = 6006 ,x = 0 ,z = -20 ,pos_x = 0,pos_z = -20}

--皇陵迷宫1层
NPCList[2687] = { name = "勞工冤魂" ,type = 3 ,sid = 5008 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2691] = { name = "摸金校尉" ,type = 3 ,sid = 5008 ,x = 15.91,z = -11.39 ,pos_x = 15.91,pos_z = -11.39}
NPCList[2697] = { name = "東土熊羆" ,type = 2 ,sid = 5008 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2696] = { name = "東土石俑" ,type = 2 ,sid = 5008 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2663] = { name = "王城" ,type = 3 ,sid = 5008 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2664] = { name = "迷宮2層" ,type = 3 ,sid = 5008 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫2层
NPCList[4285] = { name = "勞工冤魂" ,type = 3 ,sid = 5010 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2699] = { name = "東土狂狼" ,type = 2 ,sid = 5010 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2698] = { name = "東土惡狼" ,type = 2 ,sid = 5010 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2665] = { name = "迷宮1層" ,type = 3 ,sid = 5010 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2666] = { name = "迷宮3層" ,type = 3 ,sid = 5010 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫3层
NPCList[4286] = { name = "勞工冤魂" ,type = 3 ,sid = 5011 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2701] = { name = "西域悍匪" ,type = 2 ,sid = 5011 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2700] = { name = "西域竊賊" ,type = 2 ,sid = 5011 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2667] = { name = "迷宮2層" ,type = 3 ,sid = 5011 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2668] = { name = "迷宮4層" ,type = 3 ,sid = 5011 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫4层
NPCList[4287] = { name = "勞工冤魂" ,type = 3 ,sid = 5012 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2693] = { name = "摸金校尉" ,type = 3 ,sid = 5012 ,x = 15.91,z = -11.39 ,pos_x = 15.91,pos_z = -11.39}
NPCList[2703] = { name = "西域流寇" ,type = 2 ,sid = 5012 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2702] = { name = "西域大盜" ,type = 2 ,sid = 5012 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2669] = { name = "迷宮3層" ,type = 3 ,sid = 5012 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2670] = { name = "迷宮5層" ,type = 3 ,sid = 5012 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫5层
NPCList[4288] = { name = "勞工冤魂" ,type = 3 ,sid = 5013 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2705] = { name = "南國方士" ,type = 2 ,sid = 5013 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2704] = { name = "南國術士" ,type = 2 ,sid = 5013 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2671] = { name = "迷宮4層" ,type = 3 ,sid = 5013 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2672] = { name = "迷宮6層" ,type = 3 ,sid = 5013 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫6层
NPCList[4289] = { name = "勞工冤魂" ,type = 3 ,sid = 5014 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2707] = { name = "南國刀客" ,type = 2 ,sid = 5014 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2706] = { name = "南國弓手" ,type = 2 ,sid = 5014 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2673] = { name = "迷宮5層" ,type = 3 ,sid = 5014 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2674] = { name = "迷宮7層" ,type = 3 ,sid = 5014 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫7层
NPCList[4290] = { name = "勞工冤魂" ,type = 3 ,sid = 5015 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2694] = { name = "摸金校尉" ,type = 3 ,sid = 5015 ,x = 15.91,z = -11.39 ,pos_x = 15.91,pos_z = -11.39}
NPCList[2709] = { name = "北境叛將" ,type = 2 ,sid = 5015 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2708] = { name = "北境逃兵" ,type = 2 ,sid = 5015 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2675] = { name = "迷宮6層" ,type = 3 ,sid = 5015 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2676] = { name = "迷宮8層" ,type = 3 ,sid = 5015 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫8层
NPCList[4291] = { name = "勞工冤魂" ,type = 3 ,sid = 5016 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2711] = { name = "北境窮凶" ,type = 2 ,sid = 5016 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2710] = { name = "北境暴徒" ,type = 2 ,sid = 5016 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2677] = { name = "迷宮7層" ,type = 3 ,sid = 5016 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2678] = { name = "迷宮9層" ,type = 3 ,sid = 5016 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫9层
NPCList[4292] = { name = "勞工冤魂" ,type = 3 ,sid = 5017 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[2713] = { name = "中原豪傑" ,type = 2 ,sid = 5017 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2712] = { name = "中原女俠" ,type = 2 ,sid = 5017 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2679] = { name = "迷宮8層" ,type = 3 ,sid = 5017 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2680] = { name = "迷宮10層" ,type = 3 ,sid = 5017 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫10层
NPCList[4293] = { name = "勞工冤魂" ,type = 3 ,sid = 5018 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[5931] = { name = "摸金校尉" ,type = 3 ,sid = 5018 ,x = 15.91,z = -11.39 ,pos_x = 15.91,pos_z = -11.39}
NPCList[2715] = { name = "中原俠士" ,type = 2 ,sid = 5018 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[2714] = { name = "中原猛將" ,type = 2 ,sid = 5018 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[2681] = { name = "迷宮9層" ,type = 3 ,sid = 5018 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[2682] = { name = "迷宮11層" ,type = 3 ,sid = 5018 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫11层
NPCList[5933] = { name = "勞工冤魂" ,type = 3 ,sid = 5019 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[5426] = { name = "乾陣熊羆" ,type = 2 ,sid = 5019 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[5425] = { name = "乾陣石俑" ,type = 2 ,sid = 5019 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[5965] = { name = "迷宮10層" ,type = 3 ,sid = 5019 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[5966] = { name = "迷宮12層" ,type = 3 ,sid = 5019 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫12层
NPCList[5934] = { name = "勞工冤魂" ,type = 3 ,sid = 5020 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[5432] = { name = "坤陣狂狼" ,type = 2 ,sid = 5020 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[5431] = { name = "坤陣惡狼" ,type = 2 ,sid = 5020 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[5967] = { name = "迷宮11層" ,type = 3 ,sid = 5020 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[5968] = { name = "迷宮13層" ,type = 3 ,sid = 5020 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫13层
NPCList[5935] = { name = "勞工冤魂" ,type = 3 ,sid = 5021 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[12476] = { name = "摸金校尉" ,type = 3 ,sid = 5021 ,x = 15.91,z = -11.39 ,pos_x = 15.91,pos_z = -11.39}
NPCList[5438] = { name = "兌陣悍匪" ,type = 2 ,sid = 5021 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[5437] = { name = "兌陣竊賊" ,type = 2 ,sid = 5021 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[5969] = { name = "迷宮12層" ,type = 3 ,sid = 5021 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[5970] = { name = "迷宮14層" ,type = 3 ,sid = 5021 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫14层
NPCList[12473] = { name = "勞工冤魂" ,type = 3 ,sid = 5026 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[12445] = { name = "艮陣山狼" ,type = 2 ,sid = 5026 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[12453] = { name = "艮陣妖狼" ,type = 2 ,sid = 5026 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[12438] = { name = "迷宮13層" ,type = 3 ,sid = 5026 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
NPCList[12439] = { name = "迷宮15層" ,type = 3 ,sid = 5026 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫15层
NPCList[12474] = { name = "勞工冤魂" ,type = 3 ,sid = 5027 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[12458] = { name = "離陣護衛" ,type = 2 ,sid = 5027 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[12459] = { name = "離陣盜寇" ,type = 2 ,sid = 5027 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[12440] = { name = "迷宮14層" ,type = 3 ,sid = 5027 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}
--NPCList[12441] = { name = "迷宫16层" ,type = 3 ,sid = 5027 ,x = -31.15 ,z = 50.1 ,pos_x = -31.15,pos_z = 50.1}
--皇陵迷宫16层
NPCList[12475] = { name = "勞工冤魂" ,type = 3 ,sid = 5028 ,x = -16.61 ,z = -1.68 ,pos_x = -16.61,pos_z = -1.68}
NPCList[12464] = { name = "坎陣古俑" ,type = 2 ,sid = 5028 ,x = -21.69 ,z = -19.5 ,pos_x = -21.69,pos_z = -19.5}
NPCList[12465] = { name = "坎陣厄熊" ,type = 2 ,sid = 5028 ,x = -31.16 ,z = 19.38 ,pos_x = -31.16,pos_z = 19.38}
NPCList[12442] = { name = "迷宮15層" ,type = 3 ,sid = 5028 ,x = 36.59 ,z = -40.73 ,pos_x = 36.59,pos_z = -40.73}

--帮会庄园
NPCList[2639] = { name = "幫會總管" ,type = 1 ,sid = 5002 ,x = -2.71 ,z = 5.52 ,pos_x = -2.71,pos_z = 5.52,desc = "管"}
NPCList[2640] = { name = "幫會小豬" ,type = 1 ,sid = 5002 ,x = -55.24 ,z = 66.84 ,pos_x = -55.24,pos_z = 66.84,desc = "小豬"}
NPCList[2646] = { name = "幫會小豬" ,type = 2 ,sid = 5002 ,x = -55.24 ,z = 66.84 ,pos_x = -55.24,pos_z = 66.84,desc = "小豬"}
NPCList[2641] = { name = "幫會神樹" ,type = 1 ,sid = 5002 ,x = -87.09 ,z = 88.08 ,pos_x = -87.09,pos_z = 88.08,desc = "樹"}
NPCList[2642] = { name = "幫會篝火" ,type = 1 ,sid = 5002 ,x = -2.36 ,z = -1.14 ,pos_x = -2.36,pos_z = -1.14,desc = "火"}
NPCList[2643] = { name = "幫會篝火" ,type = 0 ,sid = 5002 ,x = -2.36 ,z = -1.14 ,pos_x = -2.36,pos_z = -1.14}
NPCList[2644] = { name = "幫會篝火" ,type = 0 ,sid = 5002 ,x = -2.36 ,z = -1.14 ,pos_x = -2.36,pos_z = -1.14}
NPCList[4859] = { name = "幫會丹爐" ,type = 1 ,sid = 5002 ,x = 71.37 ,z = -62.22 ,pos_x = 71.37,pos_z = -62.22,desc = "丹"}

--中心服
NPCList[8235] = { name = "劉備" ,type = 1 ,sid = 5024 ,x = 75.3 ,z = 228.07 ,pos_x = 75.3,pos_z = 228.07,desc = "劉備"}
NPCList[8236] = { name = "曹操" ,type = 1 ,sid = 5024 ,x = 150.5 ,z = 62 ,pos_x = 150.5,pos_z = 62,desc = "曹操"}
NPCList[8234] = { name = "孫權" ,type = 1 ,sid = 5024 ,x = 228.02 ,z = 85.32 ,pos_x = 228.02,pos_z = 85.32,desc = "孫權"}
NPCList[8303] = { name = "關羽" ,type = 1 ,sid = 5024 ,x = 212.58 ,z = -204.49 ,pos_x = 212.58,pos_z = -204.49}
NPCList[8304] = { name = "孫尚香" ,type = 1 ,sid = 5024 ,x = -137.53 ,z = -185.15 ,pos_x = -137.53,pos_z = -185.15}
NPCList[8305] = { name = "玄氣炮" ,type = 1 ,sid = 5024 ,x = 58.1 ,z = 137.5 ,pos_x = 58.1,pos_z = 137.5}
NPCList[8306] = { name = "金鋼炮" ,type = 1 ,sid = 5024 ,x = 135.2 ,z = 57.8 ,pos_x = 135.2,pos_z = 57.8}
NPCList[8307] = { name = "龍椅" ,type = 1 ,sid = 5024 ,x = 179.74 ,z = 179.91 ,pos_x = 179.74,pos_z = 179.91,desc = "內城"}
NPCList[8168] = { name = "魏國軍旗" ,type = 1 ,sid = 5024 ,x = -212.89 ,z = 216.58 ,pos_x = -212.89,pos_z = 216.58,desc = "魏"}
NPCList[8169] = { name = "蜀國軍旗" ,type = 1 ,sid = 5024 ,x = 207.22 ,z = -214.83 ,pos_x = 207.22,pos_z = -214.83,desc = "蜀"}
NPCList[8170] = { name = "吳國軍旗" ,type = 1 ,sid = 5024 ,x = -101.33 ,z = -85.43 ,pos_x = -101.33,pos_z = -85.43,desc = "吳"}
NPCList[8233] = { name = "戰場" ,type = 3 ,sid = 5024 ,x = 227.9 ,z = 172.8 ,pos_x = 227.9,pos_z = 172.8}
NPCList[8232] = { name = "\n回本服" ,type = 3 ,sid = 5024 ,x = 182 ,z = 225.5 ,pos_x = 182,pos_z = 225.5}
NPCList[8240] = { name = "城南密道" ,type = 3 ,sid = 5024 ,x = 58.37 ,z = -87.55 ,pos_x = 58.37,pos_z = -87.55,desc = "密道"}
NPCList[8239] = { name = "城西密道" ,type = 3 ,sid = 5024 ,x = -98.34 ,z = 73.78 ,pos_x = -98.34,pos_z = 73.78,desc = "密道"}
NPCList[8312] = { name = "秘境流寇" ,type = 2 ,sid = 5024 ,x = -185.55 ,z = 96.59 ,pos_x = -185.55,pos_z = 96.59}
NPCList[8313] = { name = "訓練箭靶" ,type = 2 ,sid = 5024 ,x = -185.92 ,z = -185.99 ,pos_x = -185.92,pos_z = -185.99}
NPCList[8308] = { name = "地狼" ,type = 2 ,sid = 5024 ,x = -151.17 ,z = 187.64 ,pos_x = -151.17,pos_z = 187.64}
NPCList[8309] = { name = "朱雀" ,type = 2 ,sid = 5024 ,x = -47.51 ,z = -46.2 ,pos_x = -47.51,pos_z = -46.2}
NPCList[8310] = { name = "饕餮" ,type = 2 ,sid = 5024 ,x = 178.15 ,z = -150.88 ,pos_x = 178.15,pos_z = -150.88}
NPCList[11445] = { name = "禁衛軍統帥" ,type = 1 ,sid = 5024 ,x = 210.95 ,z = 149.06 ,pos_x = 210.95,pos_z = 149.06,desc = "武",activity = {5322}}
NPCList[11592] = { name = "禁衛軍副統帥" ,type = 1 ,sid = 5024 ,x = 148.92 ,z = 213 ,pos_x = 148.92,pos_z = 213,desc = "武",activity = {5322}}
NPCList[11747] = { name = "武神" ,type = 1 ,sid = 5024 ,x = 205.18 ,z = 205.15 ,pos_x = 205.18,pos_z = 205.15,activity = {5585}}

NPCList[16131] = { name = "禦前護衛左侍郎" ,type = 1 ,sid = 5024 ,x = 180.62 ,z = 148.47 ,pos_x = 180.62,pos_z = 148.47,desc = "陣",activity = {8803},
	service_info =	 --跨服阵营战
	{	
		service_name = "跨服陣營", 
		need_level = 60,
		--activity ={8804,},
		no_auto_click = false, --程序不模拟自动点击， true表示需要玩家点击 , false表示自动打开target_panel面板，  默认是true
		target_panel = function () 		
			require "GUI.ECPanelServerCampWar".Instance():ShowPanel(true)
		end
	},
}

NPCList[16132] = { name = "禦前護衛右侍郎" ,type = 1 ,sid = 5024 ,x = 149.2 ,z = 179.9 ,pos_x = 149.2,pos_z = 179.9,desc = "陣",activity = {8803},
	service_info =	 --跨服阵营战
	{	
		service_name = "跨服陣營", 
		need_level = 60,
		--activity ={8804,},
		no_auto_click = false, --程序不模拟自动点击， true表示需要玩家点击 , false表示自动打开target_panel面板，  默认是true
		target_panel = function () 		
			require "GUI.ECPanelServerCampWar".Instance():ShowPanel(true)
		end
	},
}



--跨服三国志
NPCList[8533] = { name = "龍椅" ,type = 1 ,sid = 6078 ,x = 179.74 ,z = 179.91 ,pos_x = 179.74,pos_z = 179.91,desc = "[ffff00]龍椅"}
NPCList[8534] = { name = "玄氣炮" ,type = 1 ,sid = 6078 ,x = 58.1 ,z = 137.5 ,pos_x = 58.1,pos_z = 137.5,desc = "[ffff00]玄氣炮"}
NPCList[8535] = { name = "金鋼炮" ,type = 1 ,sid = 6078 ,x = 135.2 ,z = 57.8 ,pos_x = 135.2,pos_z = 57.8,desc = "[ffff00]金鋼炮"}
NPCList[9049] = { name = "真假丞相·一" ,type = 1 ,sid = 6078 ,x = 93.36 ,z = 225.09 ,pos_x = 93.36 ,pos_z = 225.09,desc = "[ffff00]丞相"}
NPCList[7891] = { name = "真假丞相·二" ,type = 1 ,sid = 6078 ,x = 112.11 ,z = 175.83 ,pos_x = 112.11,pos_z = 175.83,desc = "[ffff00]丞相"}
NPCList[7892] = { name = "真假丞相·三" ,type = 1 ,sid = 6078 ,x = 175 ,z = 112.9 ,pos_x = 175,pos_z = 112.9,desc = "[ffff00]丞相"}
NPCList[7893] = { name = "真假丞相·四" ,type = 1 ,sid = 6078 ,x = 226.37 ,z = 85.53 ,pos_x = 226.37,pos_z = 85.53,desc = "[ffff00]丞相"}
NPCList[8168] = { name = "魏國軍旗" ,type = 1 ,sid = 6078 ,x = -212.89 ,z = 216.58 ,pos_x = -212.89,pos_z = 216.58,desc = "魏"}
NPCList[8169] = { name = "蜀國軍旗" ,type = 1 ,sid = 6078 ,x = 207.22 ,z = -214.83 ,pos_x = 207.22,pos_z = -214.83,desc = "蜀"}
NPCList[8170] = { name = "吳國軍旗" ,type = 1 ,sid = 6078 ,x = -101.33 ,z = -85.43 ,pos_x = -101.33,pos_z = -85.43,desc = "吳"}
NPCList[7888] = { name = "魏國戰鼓" ,type = 1 ,sid = 6078 ,x = -151.3 ,z = 187.89 ,pos_x = -151.3,pos_z = 187.89}
NPCList[7889] = { name = "蜀國戰鼓" ,type = 1 ,sid = 6078 ,x = 178.5 ,z = -151.09 ,pos_x = 178.5,pos_z = -151.09}
NPCList[7890] = { name = "吳國戰鼓" ,type = 1 ,sid = 6078 ,x = -46.46 ,z = -45.5 ,pos_x = -46.46,pos_z = -45.5}
NPCList[7881] = { name = "西城門" ,type = 1 ,sid = 6078 ,x = -35.15 ,z = 191.72 ,pos_x = -35.15,pos_z = 191.72 ,desc = "西門"}
NPCList[7882] = { name = "中城門" ,type = 1 ,sid = 6078 ,x = 39.43 ,z = 39.29 ,pos_x = 39.43,pos_z = 39.29 ,desc = "中門"}
NPCList[7883] = { name = "南城門" ,type = 1 ,sid = 6078 ,x = 191.29 ,z = -33.94 ,pos_x = 191.29,pos_z = -33.94 ,desc = "南門"}
NPCList[8226] = { name = "城南密道" ,type = 3 ,sid = 6078 ,x = 58.37 ,z = -87.55 ,pos_x = 58.37,pos_z = -87.55}
NPCList[8225] = { name = "城西密道" ,type = 3 ,sid = 6078 ,x = -98.34 ,z = 73.78 ,pos_x = -98.34,pos_z = 73.78}


--潼关
NPCList[9201] = { name = "徐晃" ,type = 1 ,sid = 5025 ,x = 40.07 ,z = -61.62 ,pos_x = 40.07,pos_z = -61.62}
NPCList[9202] = { name = "曹洪" ,type = 1 ,sid = 5025 ,x = 8.82 ,z = -104.5 ,pos_x = 8.82,pos_z = -104.5}
NPCList[9205] = { name = "成宜" ,type = 1 ,sid = 5025 ,x = 91.4 ,z = -64.21 ,pos_x = 91.4,pos_z = -64.21}
NPCList[9211] = { name = "關西將領" ,type = 1 ,sid = 5025 ,x = 78.24 ,z = -23.48 ,pos_x = 78.24,pos_z = -23.48}
NPCList[9264] = { name = "侯選" ,type = 1 ,sid = 5025 ,x = -104.95 ,z = -6.48 ,pos_x = -104.95,pos_z = -6.48}
NPCList[9300] = { name = "曹洪2" ,type = 0 ,sid = 5025 ,x = -81.3 ,z = 12.3 ,pos_x = -81.3,pos_z = 12.3}
NPCList[9297] = { name = "徐晃2" ,type = 0 ,sid = 5025 ,x = -105.27 ,z = -79.72 ,pos_x = -105.27,pos_z = -79.72}
NPCList[9209] = { name = "龐德" ,type = 1 ,sid = 5025 ,x = -59.83 ,z = -57.68 ,pos_x = -59.83,pos_z = -57.68}
NPCList[9206] = { name = "賈詡" ,type = 0 ,sid = 5025 ,x = -15.31 ,z = -50.74 ,pos_x = -15.31,pos_z = -50.74}
NPCList[9296] = { name = "曹操" ,type = 1 ,sid = 5025 ,x = 99.78 ,z = 59.43 ,pos_x = 99.78,pos_z = 59.43}
NPCList[9298] = { name = "曹洪3" ,type = 0 ,sid = 5025 ,x = 108 ,z = 35.58 ,pos_x = 108,pos_z = 35.58}
NPCList[9204] = { name = "許褚" ,type = 1 ,sid = 5025 ,x = 97.78 ,z = 86.1 ,pos_x = 97.78,pos_z = 86.1}
NPCList[9203] = { name = "曹仁" ,type = 1 ,sid = 5025 ,x = 79.47 ,z = 26.74 ,pos_x = 79.47,pos_z = 26.74}
NPCList[9299] = { name = "賈詡" ,type = 1 ,sid = 5025 ,x = 98.39 ,z = 31.48 ,pos_x = 98.39,pos_z = 31.48}
NPCList[9210] = { name = "曹軍內應" ,type = 1 ,sid = 5025 ,x = -48.94 ,z = 23.55 ,pos_x = -48.94,pos_z = 23.55}
NPCList[9263] = { name = "呼延嶽" ,type = 1 ,sid = 5025 ,x = -91.48 ,z = 37.97 ,pos_x = -91.48,pos_z = 37.97}
NPCList[9294] = { name = "曹操2" ,type = 0 ,sid = 5025 ,x = -28.69 ,z = 99.87 ,pos_x = -28.69,pos_z = 99.87}
NPCList[9295] = { name = "曹操3" ,type = 0 ,sid = 5025 ,x = 1.49 ,z = 43.49 ,pos_x = 1.49,pos_z = 43.49}
NPCList[9207] = { name = "馬超" ,type = 0 ,sid = 5025 ,x = -39.54 ,z = 50.83 ,pos_x = -39.54,pos_z = 50.83}
NPCList[9302] = { name = "馬超" ,type = 1 ,sid = 5025 ,x = -86.88 ,z = 97.02 ,pos_x = -86.88,pos_z = 97.02}
NPCList[9208] = { name = "韓遂" ,type = 1 ,sid = 5025 ,x = -104.44 ,z = 89.29 ,pos_x = -104.44,pos_z = 89.29}
NPCList[9301] = { name = "韓遂2" ,type = 0 ,sid = 5025 ,x = 30.44 ,z = 9.46 ,pos_x = 30.44,pos_z = 9.46}
NPCList[9303] = { name = "馬超3" ,type = 0 ,sid = 5025 ,x = -9.57 ,z = 0.02 ,pos_x = -9.57,pos_z = 0.02}
NPCList[9200] = { name = "曹操" ,type = 0 ,sid = 5025 ,x = 1.22 ,z = -113.78 ,pos_x = 1.22,pos_z = -113.78}
NPCList[10418] = { name = "潼關車夫" ,type = 3 ,sid = 5025 ,x = 69.79 ,z = -107.03 ,pos_x = 69.79,pos_z = -107.03}
NPCList[11756] = { name = "潼關車夫" ,type = 3 ,sid = 5025 ,x = -105.71 ,z = 39.77 ,pos_x = -105.71,pos_z = 39.77}  -- 车夫2
NPCList[11757] = { name = "潼關車夫" ,type = 3 ,sid = 5025 ,x = 45.22 ,z = 32.62 ,pos_x = 45.22,pos_z = 32.62}      --车夫3

NPCList[17285] = { name = "馬超4" ,type = 5 ,sid = 5025 ,x = 4 ,z = -8 ,pos_x = 4,pos_z = -8}

NPCList[9275] = { name = "憤怒曹軍" ,type = 2 ,sid = 5025 ,x = 100.03 ,z = -106.03 ,pos_x = 100.03,pos_z = -106.03}
NPCList[9276] = { name = "曹軍步兵" ,type = 2 ,sid = 5025 ,x = 54.17 ,z = -101.96 ,pos_x = 54.17,pos_z = -101.96}
NPCList[9277] = { name = "關西步兵" ,type = 2 ,sid = 5025 ,x = 67.19 ,z = -67.41 ,pos_x = 67.19,pos_z = -67.41}
NPCList[9278] = { name = "關西槍兵" ,type = 2 ,sid = 5025 ,x = 99.13 ,z = -28.29 ,pos_x = 99.13,pos_z = -28.29}
NPCList[9279] = { name = "關西先遣隊" ,type = 2 ,sid = 5025 ,x = -81 ,z = -9.86 ,pos_x = -81,pos_z = -9.86}
NPCList[9280] = { name = "鬼才兔" ,type = 2 ,sid = 5025 ,x = -85.4 ,z = -95.6 ,pos_x = -85.4,pos_z = -95.6}
NPCList[9281] = { name = "關西狼虎隊" ,type = 2 ,sid = 5025 ,x = -95.51 ,z = -55.55 ,pos_x = -95.51,pos_z = -55.55}
NPCList[9282] = { name = "金尾鳳" ,type = 2 ,sid = 5025 ,x = -49.21 ,z = -100.81 ,pos_x = -49.21,pos_z = -100.81}
NPCList[9284] = { name = "匈奴莽夫" ,type = 2 ,sid = 5025 ,x = -53.16 ,z = 39.96 ,pos_x = -53.16,pos_z = 39.96}
NPCList[9283] = { name = "羌人弓箭手" ,type = 2 ,sid = 5025 ,x = -98.26 ,z = 52.73 ,pos_x = -98.26,pos_z = 52.73}
NPCList[9285] = { name = "曹軍精銳兵" ,type = 2 ,sid = 5025 ,x = 76.48 ,z = 59.84 ,pos_x = 76.48,pos_z = 59.84}
NPCList[9286] = { name = "曹軍騎兵" ,type = 2 ,sid = 5025 ,x = 97.45 ,z = -5.27 ,pos_x = 97.45,pos_z = -5.27}
NPCList[9287] = { name = "潑皮猴" ,type = 2 ,sid = 5025 ,x = 68.72 ,z = 98.67 ,pos_x = 68.72,pos_z = 98.67}
NPCList[9288] = { name = "斜目灰豹" ,type = 2 ,sid = 5025 ,x = 35.35 ,z = 66.79 ,pos_x = 35.35,pos_z = 66.79}
NPCList[9290] = { name = "關西突進隊" ,type = 2 ,sid = 5025 ,x = -15.99 ,z = 94.17 ,pos_x = -15.99,pos_z = 94.17}
NPCList[9289] = { name = "關西精銳隊" ,type = 2 ,sid = 5025 ,x = -41.75 ,z = 87.29 ,pos_x = -41.75,pos_z = 87.29}
NPCList[9291] = { name = "關西精銳隊長" ,type = 2 ,sid = 5025 ,x = -51.19 ,z = 100.14 ,pos_x = -51.19,pos_z = 100.14}
NPCList[9292] = { name = "關西野戰軍" ,type = 2 ,sid = 5025 ,x = 23.2 ,z = 92.39 ,pos_x = 23.2,pos_z = 92.39}
NPCList[9293] = { name = "暗殺者" ,type = 2 ,sid = 5025 ,x = -17.78 ,z = -27.87 ,pos_x = -17.78,pos_z = -27.87}
NPCList[10727] = { name = "密林" ,type = 5 ,sid = 5025 ,x = -4.57 ,z = -20.55 ,pos_x = -4.57,pos_z = -20.55,desc = "密林"}
NPCList[10725] = { name = "曹營" ,type = 5 ,sid = 5025 ,x = 84.18 ,z = 58.73 ,pos_x = 84.18,pos_z = 58.73,desc = "曹營"}
NPCList[10726] = { name = "關西軍營" ,type = 5 ,sid = 5025 ,x = -89.2 ,z = 89.8 ,pos_x = -89.2,pos_z = 89.8,desc = "關西軍營"}

--南蛮
NPCList[14355] = { name = "孟獲" ,type = 0 ,sid = 5029 ,x = -25.5 ,z = 90.7 ,pos_x = -25.5,pos_z = 90.7}
NPCList[14358] = { name = "忙長牙" ,type = 1 ,sid = 5029 ,x = 4.5 ,z = 67.6 ,pos_x = 4.5,pos_z = 67.6}
NPCList[14359] = { name = "左長老" ,type = 1 ,sid = 5029 ,x = -14.3 ,z = 59.1 ,pos_x = -14.3,pos_z = 59.1}
NPCList[14596] = { name = "追風" ,type = 3 ,sid = 5029 ,x = 8.1 ,z = 98.1 ,pos_x = 8.1,pos_z = 98.1}
NPCList[14361] = { name = "右倪" ,type = 1 ,sid = 5029 ,x = -10.7 ,z = 16.6 ,pos_x = -10.7,pos_z = 16.6}
NPCList[14400] = { name = "三洞難民" ,type = 0 ,sid = 5029 ,x = 11.5 ,z = 14.7 ,pos_x = 11.5,pos_z = 14.7}
NPCList[14357] = { name = "孟優" ,type = 0 ,sid = 5029 ,x = 12.1 ,z = 3.1 ,pos_x = 12.1,pos_z = 3.1}
NPCList[14401] = { name = "蠻王孟獲" ,type = 1 ,sid = 5029 ,x = 13.4 ,z = -0.4 ,pos_x = 13.4,pos_z = -0.4}
NPCList[14461] = { name = "孟優" ,type = 0 ,sid = 5029 ,x = -2.7 ,z = -10.1 ,pos_x = -2.7,pos_z = -10.1}
NPCList[14406] = { name = "阿會喃" ,type = 0 ,sid = 5029 ,x = -96.7 ,z = 95.3 ,pos_x = -96.7,pos_z = 95.3}
NPCList[14402] = { name = "金環三結" ,type = 1 ,sid = 5029 ,x = -102.6 ,z = 46.1 ,pos_x = -102.6,pos_z = 46.1}
NPCList[14405] = { name = "董荼那" ,type = 1 ,sid = 5029 ,x = -94.1 ,z = 2.3 ,pos_x = -94.1,pos_z = 2.3}
NPCList[14403] = { name = "韋儂查" ,type = 0 ,sid = 5029 ,x = -62.7 ,z = 31.6 ,pos_x = -62.7,pos_z = 31.6}
NPCList[14404] = { name = "騎兵隊隊長" ,type = 0 ,sid = 5029 ,x = -43.6 ,z = 23.9 ,pos_x = -43.6,pos_z = 23.9}
NPCList[14932] = { name = "踏月" ,type = 3 ,sid = 5029 ,x = -40.6 ,z = -28.4 ,pos_x = -40.6,pos_z = -28.4}
NPCList[14933] = { name = "淩雲" ,type = 3 ,sid = 5029 ,x = 52.5 ,z = -1.6 ,pos_x = 52.5,pos_z = -1.6}
NPCList[14407] = { name = "圍觀民眾" ,type = 1 ,sid = 5029 ,x = 84.3 ,z = -78 ,pos_x = 84.3,pos_z = -78}
NPCList[14408] = { name = "祝融夫人" ,type = 1 ,sid = 5029 ,x = 55.1 ,z = -101.9 ,pos_x = 55.1,pos_z = -101.9}
NPCList[14409] = { name = "蠻族女子" ,type = 1 ,sid = 5029 ,x = 81.1 ,z = -80.7 ,pos_x = 81.1,pos_z = -80.7}
NPCList[14410] = { name = "烏戈密探" ,type = 1 ,sid = 5029 ,x = -48.2 ,z = -37 ,pos_x = -48.2,pos_z = -37}
NPCList[14411] = { name = "土方" ,type = 1 ,sid = 5029 ,x = -53.8 ,z = -70.6 ,pos_x = -53.8,pos_z = -70.6}
NPCList[14412] = { name = "奚泥" ,type = 1 ,sid = 5029 ,x = -40.5 ,z = -73.8 ,pos_x = -40.5,pos_z = -73.8}
NPCList[14419] = { name = "叛亂首領" ,type = 1 ,sid = 5029 ,x = -86.2 ,z = -60 ,pos_x = -86.2,pos_z = -60}
NPCList[14421] = { name = "難民" ,type = 1 ,sid = 5029 ,x = 32.9 ,z = 29.2 ,pos_x = 32.9,pos_z = 29.2}
NPCList[14422] = { name = "平民" ,type = 1 ,sid = 5029 ,x = 78.9 ,z = 21.6 ,pos_x = 78.9,pos_z = 21.6}
NPCList[14424] = { name = "妖道首領" ,type = 1 ,sid = 5029 ,x = 66.3 ,z = -27.5 ,pos_x = 66.3,pos_z = -27.5}
NPCList[14426] = { name = "雲遊大夫" ,type = 1 ,sid = 5029 ,x = 47.5 ,z = 68.7 ,pos_x = 47.5,pos_z = 68.7}
NPCList[14428] = { name = "狼王" ,type = 1 ,sid = 5029 ,x = 78.2 ,z = 89 ,pos_x = 78.2,pos_z = 89}
NPCList[14427] = { name = "木鹿大王" ,type = 1 ,sid = 5029 ,x = 95.9 ,z = 93.4 ,pos_x = 95.9,pos_z = 93.4}
NPCList[14423] = { name = "朵思大王" ,type = 1 ,sid = 5029 ,x = 105.3 ,z = -23.8 ,pos_x = 105.3,pos_z = -23.8}
NPCList[14418] = { name = "兀突骨" ,type = 1 ,sid = 5029 ,x = 2.2 ,z = -97.3 ,pos_x = 2.2,pos_z = -97.3}


NPCList[14364] = { name = "草藥護衛" ,type = 2 ,sid = 5029 ,x = -44.5 ,z = 60 ,pos_x = -44.5,pos_z = 60}
NPCList[14366] = { name = "蠻族護衛" ,type = 2 ,sid = 5029 ,x = -10.7 ,z = 16.6 ,pos_x = -10.7,pos_z = 16.6}
NPCList[14362] = { name = "蠻族士兵" ,type = 2 ,sid = 5029 ,x = 1.8 ,z = -20.5 ,pos_x = 1.8,pos_z = -20.5}
NPCList[14443] = { name = "阿會喃精銳" ,type = 2 ,sid = 5029 ,x = -76.4 ,z = 101.8 ,pos_x = -76.4,pos_z = 101.8}
NPCList[14437] = { name = "攻寨蠻兵" ,type = 2 ,sid = 5029 ,x = -94 ,z = 31.5 ,pos_x = -94,pos_z = 31.5}
NPCList[14438] = { name = "守寨蠻兵" ,type = 2 ,sid = 5029 ,x = -70.2 ,z = -6.4 ,pos_x = -71.2,pos_z = -8}
NPCList[14440] = { name = "密林惡狼" ,type = 2 ,sid = 5029 ,x = -47 ,z = 29.7 ,pos_x = -47,pos_z = 29.7}
NPCList[14445] = { name = "惱人黑熊" ,type = 2 ,sid = 5029 ,x = 51.6 ,z = -82.3 ,pos_x = 51.6,pos_z = -82.3}
NPCList[14446] = { name = "搗亂山賊" ,type = 2 ,sid = 5029 ,x = 34.7 ,z = -58.1 ,pos_x = 34.7,pos_z = -58.1}
NPCList[14448] = { name = "烏戈靈兔" ,type = 2 ,sid = 5029 ,x = -91.8 ,z = -99.2 ,pos_x = -91.8,pos_z = -99.2}
NPCList[14451] = { name = "叛亂藤甲軍" ,type = 2 ,sid = 5029 ,x = -86.2 ,z = -60 ,pos_x = -86.2,pos_z = -60}
NPCList[14453] = { name = "蠻橫惡霸" ,type = 2 ,sid = 5029 ,x = 93.8 ,z = 3.5 ,pos_x = 93.8,pos_z = 3.5}
NPCList[15521] = { name = "禿龍精銳" ,type = 2 ,sid = 5029 ,x = 98.8 ,z = -38.5 ,pos_x = 98.8,pos_z = -38.5}
NPCList[14454] = { name = "詭異妖道" ,type = 2 ,sid = 5029 ,x = 68 ,z = -21 ,pos_x = 68,pos_z = -21}	
NPCList[14456] = { name = "密林毒蛇" ,type = 2 ,sid = 5029 ,x = 45.3 ,z = 85.2 ,pos_x = 45.3,pos_z = 85.2}
NPCList[14457] = { name = "八納野狼兵" ,type = 2 ,sid = 5029 ,x = 93.3 ,z = 55.3 ,pos_x = 93.3,pos_z = 55.3}
NPCList[14449] = { name = "藤甲軍" ,type = 2 ,sid = 5029 ,x = -13.8 ,z = -99 ,pos_x = -13.8,pos_z = -99}

--宠物活动任务：拯救天狼
NPCList[10505] = { name = "仙獸使者" ,type = 1 ,sid = 5003 ,x = 67.40 ,z = 113.60 ,pos_x = 67.40,pos_z = 113.60,activity = {4524},desc = "寵"}
NPCList[10527] = { name = "天狼幼崽" ,type = 0 ,sid = 5003 ,x = 61.16 ,z = -115.13 ,pos_x = 61.16,pos_z = -115.13,activity = {4524}}

--跨版本服
NPCList[16009] = { name = "傳送木鳥" ,type = 3 ,sid = 5030 ,x = 182 ,z = 225.5 ,pos_x = 182,pos_z = 225.5,desc = "回"}
NPCList[15098] = { name = "物資軍需官" ,type = 3 ,sid = 5030 ,x = 121 ,z = 121 ,pos_x = 121,pos_z = 121,desc = "戰場",activity = {7530}}
NPCList[16208] = { name = "物資軍需官" ,type = 3 ,sid = 5030 ,x = 82.5 ,z = 192.2 ,pos_x = 82.5,pos_z = 192.2,desc = "戰場",activity = {7530}}
NPCList[16209] = { name = "物資軍需官" ,type = 3 ,sid = 5030 ,x = 191.6 ,z = 83 ,pos_x = 191.6,pos_z = 83,desc = "戰場",activity = {7530}}

NPCList[19603] = { name = "跑跑大賽傳送使" ,type = 1 ,sid = 5024 ,x = 182 ,z = 225.5 ,pos_x = 180,pos_z = 220.5,desc = "跑",activity = {15287},
	service_info_four =	--打开界面
	{
		service_name = "跑跑大賽", 
		need_level = 50,
		target_panel = function () require "GUI.ECPanelInstanceHorseRun".Instance():ShowPanel(true) end,
		activity ={15287},
	},
}
--dofile "../Lua/Utility/malut.lua".printTable(NPCList)

return NPCList