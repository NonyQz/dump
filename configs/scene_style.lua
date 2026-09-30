--[[
	配置场景的物体形态变化，如NPC显隐、建筑显隐等
	目前支持用任务状态进行控制
]]

--[[
	此数据表按表中顺序改变物体形态。如果同一物体受多个控制参数控制，靠后的控制参数优先级高
	数据表中的项可以是：
		task(任务ID, 国家类型)
		{
			init() {控制参数1, 控制参数2, ...},			--设置物体初始形态 (原则上一个物体只应有一个初始形态配置，且应在所有同一物体的所有其他配置之前)
			accepted() {控制参数1, 控制参数2, ...},		--设置任务接受后的形态
			can_finish() {控制参数1, 控制参数2, ...},	--设置任务可完成时的形态
			finished() {控制参数1, 控制参数2, ...},		--设置任务完成后的形态
			finish_count(次数) {控制参数1, 控制参数2, ...},		--设置任务完成指定次数后的形态
		}
	
	国家类型可选 (默认为"all")，可为：
		"all"：所有国家生效
		"own"：在本国生效
		
	控制参数可以是：
		npc(NPC_ID) { 操作1, 操作2, ... }
		scene_obj(场景物体名) { 操作1, 操作2, ... }
			场景物体需有 DynamicObj 这个组件
		
	操作可以是：
		show()						--显示
		hide()						--隐藏
		wait(时长)					--等待一段时间
		fix_wait(时长)				--固定等待一段时间
		start_action(动作名)		--开始播动作 (如果紧跟在 show() 之后，最好加个 wait(0))
		loop_action(动作名)			--播循环动作 (动作本身应是循环的) (如果紧跟在 show() 之后，最好加个 fix_wait(0))
		
		其他操作待添加
]]
local scene_style =
{
	-- task(338)	--例子1(all)
	-- {
	-- 	init()
	-- 	{
	-- 		npc(5009, 1491) { hide() },
	-- 	},
	-- },
	-- task(338, "own")	--例子1(own)
	-- {
	-- 	init()
	-- 	{
	-- 		npc(5009, 1491) { show(), fix_wait(0), loop_action("talking_c")},
	-- 	},
	-- 	accepted()
	-- 	{
	-- 		npc(5009, 1491) { start_action("talking_c"), wait(3), hide(), },
	-- 	},
	-- 	can_finish()
	-- 	{
	-- 		npc(5009, 1491) { show(), wait(0), start_action("talking_c")},
	-- 	}
	-- },
	-- task(1049)	--例子2
	-- {
	-- 	finish_count(1)
	-- 	{
	-- 		npc(5009, 1491) { hide(), fix_wait(0), loop_action("talking_c")},
	-- 	},
	-- 	finish_count(3)
	-- 	{
	-- 		npc(5009, 1491) { show(), fix_wait(0), loop_action("talking_c")},
	-- 	},
	-- 	finish_count(5)
	-- 	{
	-- 		npc(5009, 1491) { hide(), fix_wait(0), loop_action("talking_c")},
	-- 	},
	-- },
	task(474)	--黄月英1隐藏,2显示
	{
		init() 
		{
			npc(5009, 1415) { show(), },
			npc(5009, 1428) { hide(), },
		},
		accepted()
		{
			npc(5009, 1415) { wait(3),hide(), },
		},
		can_finish()
		{
			npc(5009, 1428) { show(), },
		},
	},
	task(475)  --显示纵火的怪物、隐藏和显示华佗
	{
		init()
		{
			npc(5009, 1418) { hide(), },
			npc(5009, 1526) { hide(), },
			npc(5009, 1059) { hide(), },
		},
		finished()
		{
			npc(5009, 1418) { show(), },
			npc(5009, 1526) { show(), },
			npc(5009, 1059) { show(), },
		},
	},
	task(479) --隐藏华佗1，完成时隐藏刀手
	{
		init()
		{
			npc(5009, 1525) { show(), },
		},
		finished()
		{
			npc(5009, 1418) { hide(), },
			npc(5009, 1526) { hide(), },
			npc(5009, 1059) { hide(), },	
		},
	},
	task(480) --显示华佗2
	{
		init()
		{
			npc(5009, 1492) { hide(), },
		},
		can_finish()
		{
			npc(5009, 1492) { show(), },
		},
	},
	task(483) --初始化诸葛亮
	{
		init()
		{
			npc(5009, 1420) { hide(), }, --诸葛亮1
			npc(5009, 1421) { hide(), }, --诸葛亮2　
			npc(5009, 1424) { hide(), }, --诸葛亮3
			npc(5009, 1427) { hide(), }, --诸葛亮4
		},
		accepted()
		{
			npc(5009, 1420) { show(), },
		},
	},
	task(484) --隐藏诸葛亮1
	{
		accepted()
		{
			npc(5009, 1420) {  wait(3),hide(), },
		},
	},
	task(485) --显示诸葛亮2
	{
		accepted()
		{
			npc(5009, 1421) { show(), },
		},
	},
	task(487) --舍我其谁？隐藏诸葛亮2，显示诸葛亮3
	{
		init()
		{
			npc(5009, 1422) { hide(), }, --初始化刘备1隐藏
		},
		can_finish()
		{
			npc(5009, 1421) { hide(), },
			npc(5009, 1422) { show(), }, --显示刘备1
			npc(5009, 1424) { show(), },
		},
	},
	task(514) --显示壮丁、火油车和匪首
	{
		init()
		{
			npc(5009, 1423) { hide(), },
			npc(5009, 1681) { hide(), },
		},
		can_finish()
		{
			npc(5009, 1423) { show(), },
			npc(5009, 1681) { show(), },
		}
	},
	task(488) --接取隐藏火油车，几秒后隐藏壮丁,同时隐藏下刘备1,华佗2,黄月英2
	{
		accepted()
		{
			npc(5009, 1423) { hide(), },
			npc(5009, 1681) { wait(5), hide(), },
			npc(5009, 1422) { hide(), },
			npc(5009, 1492) { hide(), },
			npc(5009, 1428) { hide(), },
		},
	},
	task(495) --放火为号，隐藏诸葛亮3，显示赵云1,显示火焰
	{
		init()
		{
			npc(5009, 1425) { hide(), },
			npc(5009, 1426) { hide(), }, --飞行器隐藏
			scene_obj(5009, "fx_x8_huosao_01") { hide() },
			scene_obj(5009, "fx_x8_huosao_02") { hide() },
			scene_obj(5009, "fx_x8_huosao_03") { hide() },
		},
		can_finish()
		{
			scene_obj(5009, "fx_x8_huosao_01") { wait(0), show() },
			scene_obj(5009, "fx_x8_huosao_02") { wait(3), show() },
			scene_obj(5009, "fx_x8_huosao_02") { wait(6), show() },
		},
		finished()
		{
			npc(5009, 1425) { show(), },
			npc(5009, 1426) { show(), },
			npc(5009, 1424) { hide(), },
		},
	},
	task(497) --一飞冲天，隐藏赵云1，显示诸葛亮４
	{
		accepted()
		{
			npc(5009, 1427) { show(), },
			npc(5009, 1682) { show(), },
			npc(5009, 1425) { wait(2), hide(), },
			npc(5009, 1426) { hide(), },
		},
	},
	task(498) --显示黄月英3
	{
		init()
		{
			npc(5009, 1496) { hide(), },
			npc(5009, 1682) { show(), },

		},
		accepted()
		{
			npc(5009, 1496) { show(), },
			npc(5009, 1682) { hide(), },
		},
	},
	task(498) --显示下赵云2
	{
		init()
		{
			npc(5009, 1430) { hide(), },
		},	
		finished()
		{
			npc(5009, 1430) { show(), },
		},	
	},
	task(500) --副本任务完成隐藏黄月英3
	{
		finished()
		{
			npc(5009, 1496) { hide(), },
		},
	},
	task(519) --接取后隐藏崔州平
	{
		init()
		{
			npc(5009, 1659) { show(), },
		},
		accepted()
		{
			npc(5009, 1659) { wait(5), hide(), },
		},
	},
	task(501) --初始化刘备2
	{
		init()
		{
			npc(5009, 1429) { hide(), },
			npc(5009, 1663) { hide(), },
			npc(5009, 1664) { hide(), },
			npc(5009, 1665) { hide(), },
			npc(5009, 1666) { hide(), },
			npc(5009, 1680) { hide(), },
			npc(5009, 1679) { hide(), },
			npc(5009, 1667) { hide(), },
			npc(5009, 1678) { hide(), },
		},
		finished()
		{
			npc(5009, 1429) { show(), },
			npc(5009, 1663) { show(), },
			npc(5009, 1664) { show(), },
			npc(5009, 1665) { show(), },
			npc(5009, 1666) { show(), },
			npc(5009, 1680) { show(), },
			npc(5009, 1679) { show(), },
			npc(5009, 1667) { show(), },
			npc(5009, 1678) { show(), },
		},
	},
	task(504) --完成隐藏的卢马
	{
		finished()
		{
			npc(5009, 1680) { hide(), },
		},
	},
	--王城任务显隐
	task(505) --王城太岁杀出
	{
		init()
		{
			npc(5009, 12931) { hide(), },

		},
		can_finish()
		{
			npc(5003, 2006) { show(), },
			npc(5009, 1429) { hide(), },
			npc(5009, 1663) { hide(), },
			npc(5009, 1664) { hide(), },
			npc(5009, 1665) { hide(), },
			npc(5009, 1666) { hide(), },
			npc(5009, 1679) { hide(), },
			npc(5009, 1667) { hide(), },
			npc(5009, 1678) { hide(), },
			npc(5009, 1430) { hide(), },
			npc(5009, 1427) { hide(), },
			npc(5009, 12931) { show(), },
		},
	},
	task(63) --王城太岁死亡后消失，显示出王城巡守
	{
		init()
		{
			npc(5003, 2634) { hide(), },
			npc(5003, 2009) { hide(), },
		},
		can_finish()
		{
			npc(5003, 2634) { show(), },
		},
	},
	task(684) --任务接取隐藏许禇2634，显示许禇3981
	{
		init()
		{
			npc(5003, 3981) { hide(), },
		},
		accepted()
		{
			npc(5003, 2634) { hide(), },
			npc(5003, 3981) { show(), },
		},
	},
	task(685) --接取后隐藏许褚3981，重新显示2634
	{
		accepted()
		{
			npc(5003, 3981) { hide(), },
			npc(5003, 2634) { show(), },
		},
	},
	task(64) --接取任务隐藏王城巡守2634，显示王城巡守2009
	{
		accepted()
		{
			npc(5003, 2634) { wait(3), hide(), },
			npc(5003, 2009) { wait(3), show(), },
		},
	},
	task(67) --接取后延迟隐藏左慈2009，显示左慈348
	{
		accepted()
		{
			npc(5003, 2009) { wait(5), hide(), },
		},
	},
	task(73) --华佗1显示华佗2隐藏
	{
		init()
		{
			npc(5003, 2011) { show(),},
			npc(5003, 2028) { hide(),},
		},
		can_finish()
		{
			npc(5003, 2011) { hide(),},
			npc(5003, 2028) { show(),},
		},
	},
	task(75)
	{
		finished()
		{
			npc(5003, 2028) { hide(),},
		},
	},
	task(97)
	{
		init()
		{
			npc(5003, 2012) { show(),},
		},
		accepted()
		{
			npc(5003, 2012) { hide(),}, 
		},
	},
	task(432)
	{
		init()
		{
			npc(5003, 2014) { show(),},
		},
		accepted()
		{
			npc(5003, 2014) { hide(),},
		},
	},
	task(80)
	{
		init()
		{
			npc(5003, 349) { show(),},
			npc(5003, 2013) { show(),},
		},
		finished()
		{
			npc(5003, 349) { wait(5), hide(),},
		},
	},
	--城东探子显隐
	task(88)
	{
		init()
		{
			npc(5003, 352) { hide(),},	--探子1隐
			npc(5003, 4460) { hide(),},	--探子2隐
		},
		accepted()
		{
			npc(5003, 352) { show(),},
		},
	},
	task(90)
	{
		can_finish()
		{
			npc(5003, 352) { hide(),},
			npc(5003, 4460) { show(),},
		},
	},
	task(92)
	{
		can_finish()
		{
			npc(5003, 4460) { hide(),},
		},
	},
	task(527) --显示隐藏的敌国飞行器和逃跑的潜入者
	{
		init()
		{
			npc(5003, 2631) { hide(), },
		},
		accepted()
		{
			npc(5003, 2631) { show(), },
		},
	},
	task(95) --飞行传送,接取后隐藏飞行器
	{
		init()
		{
			npc(5003, 354) { show(),},
		},
		accepted()
		{
			npc(5003,  2631) { hide(), },
		},
	},

	--天门小校显隐
	task(175)
	{
		init()
		{
			npc(5004, 619) { hide(), }, --剧情天门小校
		},
		accepted()
		{
			npc(5004, 619) { show(), },
		},
	},

	task(178)
	{
		finished()
		{
			npc(5004, 619) { hide(), },
		},
	},

	--换镖NPC隐藏
	task(346)	--白任务接取
	{
		init() 
		{
			npc(5003, 1047) { hide(), },	--王城换镖
			npc(5004, 1048) { hide(), },	--天门关换镖
			npc(5005, 1049) { hide(), },	--边境换镖
		},
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},

	task(347)	--蓝任务
	{
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},

	task(348)	--黄任务
	{
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},

	task(349)	--绿任务
	{
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},

	task(350)	--紫任务
	{
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},

	--火攻任务隐藏场景火焰
	task(593)
	{
		init()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_06") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_05") { hide() },
		},
		can_finish()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_06") { wait(0), show(), wait(12), hide(), },
			scene_obj(5005, "fx_x4_zhanchehuo_05") { wait(3), show(), wait(9), hide(), },
		},
	},
	task(594)
	{
		init()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_04") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_03") { hide() },
		},
		can_finish()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_04") { wait(0), show(), wait(12), hide(), },
			scene_obj(5005, "fx_x4_zhanchehuo_03") { wait(3), show(), wait(9), hide(), },
		},
	},
	--[[
	task(595)
	{
		init()
		{
			scene_obj(5005, "fx_x4_huosao_07") { hide() },
			scene_obj(5005, "fx_x4_huosao_08") { hide() },
			scene_obj(5005, "fx_x4_huosao_09") { hide() },
		},
		can_finish()
		{
			scene_obj(5005, "fx_x4_huosao_07") { wait(0), show(), wait(12), hide(), },
			scene_obj(5005, "fx_x4_huosao_08") { wait(3), show(), wait(9), hide(), },
			scene_obj(5005, "fx_x4_huosao_09") { wait(6), show(), wait(6), hide(), },
		},
	},
	]]
	task(596)
	{
		init()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_02") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_01") { hide() },
		},
		can_finish()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_02") { wait(0), show(), wait(12), hide(), },
			scene_obj(5005, "fx_x4_zhanchehuo_01") { wait(3), show(), wait(9), hide(), },
		},
		finished()
		{
			scene_obj(5005, "fx_x4_zhanchehuo_01") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_02") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_03") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_04") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_05") { hide() },
			scene_obj(5005, "fx_x4_zhanchehuo_06") { hide() },
		},
	},

	--70级后王城华佗显隐
	task(1213)
	{
		init() 
		{
			npc(5003, 6797) { hide(), },
		},
		accepted() 
		{
			npc(5005, 751) { hide(), },
			npc(5003, 6797) { show(), },
		},
	},
	task(1216)
	{
		--隐藏南华仙境的无用张宝和侍者
		init() 
		{
			npc(5022, 6098) { hide(), },
			npc(5022, 6099) { hide(), },
			npc(5022, 6100) { hide(), },
			npc(5022, 6105) { hide(), },
			npc(5022, 6104) { hide(), },
		},
		finished() 
		{
			npc(5003, 6797) { hide(), },
		},
	},

	task(1266)
	{
		can_finish()
		{
			npc(5022, 6097) { hide(), },
			npc(5022, 6098) { show(), },
		},
	},
	task(1267)
	{
		init() 
		{
			npc(5022, 6095) { show(), },
		},
		accepted()
		{
			npc(5022, 6095) { hide(), },
			npc(5022, 6099) { show(), },
		},
		finished() 
		{
			npc(5022, 6098) { hide(), },
		},
	},
	task(1268)
	{
		accepted()
		{
			npc(5022, 6100) { show(), },
		},
		finished() 
		{
			npc(5022, 6099) { hide(), },
		},
	},
	task(1270)
	{
		can_finish()
		{
			npc(5022, 6100) { hide(), },
			npc(5022, 6105) { show(), },
		},
	},
	task(1296)
	{
		can_finish()
		{
			npc(5022, 6095) { show(), },
		},
	},
	task(1300)
	{
		can_finish()
		{
			npc(5022, 6095) { hide(), },
			npc(5022, 6099) { show(), },
		},
	},
	task(1304)
	{
		can_finish()
		{
			npc(5022, 6100) { show(), },
			npc(5022, 6105) { hide(), },
		},
	},
	task(1309)
	{
		can_finish()
		{
			npc(5022, 6100) { hide(), },
			npc(5022, 6105) { show(), },
		},
	},
	task(1311)
	{
		init() 
		{
			npc(5022, 6101) { show(), },
			npc(5022, 7033) { hide(), },
		},
		finished()
		{
			npc(5022, 6101) { hide(), },
			npc(5022, 7033) { show(), },
		},
	},
	task(1331)
	{
		init() 
		{
			npc(5022, 7046) { hide(), },
		},
		can_finish()
		{
			npc(5022, 7046) { show(), },
		},
	},
	task(1336)
	{
		can_finish()
		{
			npc(5022, 6104) { show(), },
		},
	},

	--圣诞雪人增大
	task(1353,"all")
	{
		init() 
		{
			npc(5002, 7489) { hide(), },
			npc(5002, 7490) { hide(), },
			npc(5002, 7491) { hide(), },
			npc(5002, 7492) { hide(), },
			npc(5002, 7493) { hide(), },
			npc(5002, 7494) { hide(), },
			npc(5002, 7495) { hide(), },
			npc(5002, 7496) { hide(), },
			npc(5002, 7497) { hide(), },
			npc(5002, 7498) { hide(), },
			npc(5002, 7499) { hide(), },
			npc(5002, 7500) { hide(), },
			npc(5002, 7501) { hide(), },
			npc(5002, 7502) { hide(), },
			npc(5002, 7503) { hide(), },
			npc(5002, 7504) { hide(), },
			npc(5002, 7505) { hide(), },
			npc(5002, 7506) { hide(), },
			npc(5002, 7507) { hide(), },
			npc(5002, 7508) { hide(), },
		},
	},
	task(1353,"own")
	{
		init() 
		{
			npc(5002, 7489) { show(), },
			npc(5002, 7490) { hide(), },
			npc(5002, 7491) { hide(), },
			npc(5002, 7492) { hide(), },
			npc(5002, 7493) { hide(), },
			npc(5002, 7494) { hide(), },
			npc(5002, 7495) { hide(), },
			npc(5002, 7496) { hide(), },
			npc(5002, 7497) { hide(), },
			npc(5002, 7498) { hide(), },
			npc(5002, 7499) { hide(), },
			npc(5002, 7500) { hide(), },
			npc(5002, 7501) { hide(), },
			npc(5002, 7502) { hide(), },
			npc(5002, 7503) { hide(), },
			npc(5002, 7504) { hide(), },
			npc(5002, 7505) { hide(), },
			npc(5002, 7506) { hide(), },
			npc(5002, 7507) { hide(), },
			npc(5002, 7508) { hide(), },
		},
		finish_count(1)
		{
			npc(5002, 7489) { hide(), },
			npc(5002, 7490) { show(), },
		},
		finish_count(2)
		{
			npc(5002, 7490) { hide(), },
			npc(5002, 7491) { show(), },
		},
		finish_count(3)
		{
			npc(5002, 7491) { hide(), },
			npc(5002, 7492) { show(), },
		},
		finish_count(4)
		{
			npc(5002, 7492) { hide(), },
			npc(5002, 7493) { show(), },
		},
		finish_count(5)
		{
			npc(5002, 7493) { hide(), },
			npc(5002, 7494) { show(), },
		},
		finish_count(6)
		{
			npc(5002, 7494) { hide(), },
			npc(5002, 7495) { show(), },
		},
		finish_count(10)
		{
			npc(5002, 7495) { hide(), },
			npc(5002, 7496) { show(), },
		},
		finish_count(20)
		{
			npc(5002, 7496) { hide(), },
			npc(5002, 7497) { show(), },
		},
		finish_count(30)
		{
			npc(5002, 7497) { hide(), },
			npc(5002, 7498) { show(), },
		},
		finish_count(40)
		{
			npc(5002, 7498) { hide(), },
			npc(5002, 7499) { show(), },
		},
		finish_count(50)
		{
			npc(5002, 7499) { hide(), },
			npc(5002, 7500) { show(), },
		},
		finish_count(100)
		{
			npc(5002, 7500) { hide(), },
			npc(5002, 7501) { show(), },
		},
		finish_count(150)
		{
			npc(5002, 7501) { hide(), },
			npc(5002, 7502) { show(), },
		},
		finish_count(200)
		{
			npc(5002, 7502) { hide(), },
			npc(5002, 7503) { show(), },
		},
		finish_count(250)
		{
			npc(5002, 7503) { hide(), },
			npc(5002, 7504) { show(), },
		},
		finish_count(300)
		{
			npc(5002, 7504) { hide(), },
			npc(5002, 7505) { show(), },
		},
		finish_count(350)
		{
			npc(5002, 7505) { hide(), },
			npc(5002, 7506) { show(), },
		},
		finish_count(400)
		{
			npc(5002, 7506) { hide(), },
			npc(5002, 7507) { show(), },
		},
		finish_count(500)
		{
			npc(5002, 7507) { hide(), },
			npc(5002, 7508) { show(), },
		},
	},
	--南华仙境
	task(1582)
	{
		init() 
		{
			npc(5022, 6106) { hide(), },
		},
		can_finish()
		{
			npc(5022, 6106) { show(), },
		},
	},

	task(1590)
	{
		accepted()
		{
			npc(5022, 6104) {  wait(10),hide(), },
		},
	},
	--摇钱树隐藏
	task(1787)
	{
		init() 
		{
			npc(5003, 8597) { show(), start_action("stand_c"), },
			npc(5003, 8598) { hide(), },
			npc(5003, 8599) { hide(), },
		},
		finish_count(1)
		{
			npc(5003, 8597) { start_action("idle_c"), wait(3), start_action("stand_c"),},
		},
		finish_count(2)
		{
			npc(5003, 8597) { start_action("idle_c"), wait(3), start_action("stand_c"), hide(),},
			npc(5003, 8598) { wait(2), show(), start_action("idle_c"), wait(2), start_action("stand_c")},
		},
		finish_count(3)
		{
			npc(5003, 8598) { start_action("idle_c"), wait(3), start_action("stand_c"), hide(),},
			npc(5003, 8599) { wait(2), show(), start_action("idle_c"), wait(2), start_action("stand_c")},
		},
	},
	task(1786)
	{
		can_finish()
		{
			npc(5003, 8599) { start_action("idle_c"), wait(3), start_action("stand_c"),},
		},
		finish_count(1)
		{
			npc(5003, 8599) { start_action("idle_c"), wait(3), start_action("stand_c"),},
		},
	},
	--洛阳
	task(1630)
	{
		init() 
		{
			npc(5023, 7786) { show(), },
			npc(5023, 7788) { hide(), },
		},
		can_finish()
		{
			npc(5023, 7786) { hide(), },
			npc(5023, 7788) { show(), },
		},
	},
	task(1825)
	{
		init() 
		{
			npc(5023, 10004) { hide(), },
		},
		can_finish()
		{
			npc(5023, 7788) { hide(), },
			npc(5023, 10004) { show(), },
		},
	},
	task(1834)
	{
		init() 
		{
			npc(5023, 10007) { hide(), },
		},
		can_finish()
		{
			npc(5023, 10004) { hide(), },
			npc(5023, 10007) { show(), },
		},
	},
	task(1836)
	{
		init() 
		{
			npc(5023, 10008) { hide(), },
		},
		can_finish()
		{
			npc(5023, 7784) { hide(), },
			npc(5023, 10008) { show(), },
		},
	},
	task(1840)
	{
		init() 
		{
			npc(5023, 10009) { hide(), },
		},
		can_finish()
		{
			npc(5023, 10007) { hide(), },
			npc(5023, 10009) { show(), },
		},
	},
	task(1846)
	{
		init() 
		{
			npc(5023, 10010) { hide(), },
		},
		can_finish()
		{
			npc(5023, 10009) { hide(), },
			npc(5023, 7785) { hide(), },
			npc(5023, 10010) { show(), },
		},
	},
	task(1851)
	{
		accepted()
		{
			npc(5023, 10010) { hide(), },
		},
	},
	task(1853)
	{
		init() 
		{
			npc(5023, 10012) { hide(), },
		},
		accepted()
		{
			npc(5023, 10012) { show(), },
		},
	},
	task(1859)
	{
		init() 
		{
			npc(5023, 10014) { show(), },
			npc(5023, 10015) { hide(), },
		},
		can_finish()
		{
			npc(5023, 10014) { hide(), },
			npc(5023, 10015) { show(), },
			npc(5023, 10008) { hide(), },
		},
	},
	task(1938)
	{
		accepted()
		{
			npc(5023, 10012) { wait(10), hide(), },
			npc(5023, 10015) { hide(), },
		},
	},
	task(1880) -- 潼关初始洪显示 洪2和3隐藏  任务接受后只显示洪2
	{	
		init() 
		{
			npc(5025, 9202) { show(), },
			npc(5025, 9300) { hide(), },
			npc(5025, 9298) { hide(), },
		},
		accepted()
		{
			npc(5025, 9202) { hide(), },
			npc(5025, 9300) { show(), },
		},
	},
	task(1881) -- 显示徐晃2
	{	
		init() 
		{
			npc(5025, 9201) { show(), },
			npc(5025, 9297) { hide(), },
		},
		accepted()
		{
			npc(5025, 9201) { hide(), },
			npc(5025, 9297) { show(), },
		},
	},
	task(1888) -- 显示贾诩，隐藏曹洪2、徐晃2、显示曹洪、徐晃
	{	
		init() 
		{
			npc(5025, 9299) { show(), },
			npc(5025, 9206) { hide(), },
		},
		accepted()
		{
			npc(5025, 9299) { hide(), },
			npc(5025, 9206) { show(), },
		},
		finished()
		{
			npc(5025, 9300) { hide(), },
			npc(5025, 9202) { show(), },
			npc(5025, 9297) { hide(), },
			npc(5025, 9201) { show(), },
		},
	},
	task(1890) -- 完成任务后贾诩隐藏
	{		
		finished()
		{
			npc(5025, 9206) { hide(), },
			npc(5025, 9299) { show(), },
		},
	},
	task(1891)  -- 任务接受后显示洪3，隐藏洪
	{
		accepted()
		{
			npc(5025, 9202) { hide(), },
			npc(5025, 9298) { show(), },
		},
	},
	task(1893)  -- 任务完成后洪3隐藏，洪显示
    {		
		finished()
		{
			npc(5025, 9298) { hide(), },
			npc(5025, 9202) { show(), },
		},
	},
	task(1897)  -- 任务完成后显示火焰
	{
		init()
		{
			scene_obj(5025, "fx_x4_zhanchehuo_01") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_02") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_03") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_04") { hide() },
		},
		can_finish()
		{
			scene_obj(5025, "fx_x4_zhanchehuo_01") { wait(0), show() },
			scene_obj(5025, "fx_x4_zhanchehuo_02") { wait(0), show() },
			scene_obj(5025, "fx_x4_zhanchehuo_03") { wait(3), show() },
			scene_obj(5025, "fx_x4_zhanchehuo_04") { wait(3), show() },
		},
	},
	task(1898)  -- 隐藏火
	{
		accepted()
		{
            scene_obj(5025, "fx_x4_zhanchehuo_01") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_02") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_03") { hide() },
			scene_obj(5025, "fx_x4_zhanchehuo_04") { hide() },
		},
	},
	task(1912) -- 显示曹操2
	{	
		init() 
		{
			npc(5025, 9296) { show(), },
			npc(5025, 9200) { hide(), },
			npc(5025, 9294) { hide(), },
			npc(5025, 9295) { hide(), },
		},
		accepted()
		{
			npc(5025, 9296) { hide(), },
			npc(5025, 9294) { show(), },
		},
	},
	task(1913)  -- 隐曹操2 现曹操3
	{
		accepted()
		{
			npc(5025, 9294) { wait(2), hide(), },
			npc(5025, 9295) { show(), },
		},
	},
	task(1916) -- 马超出现，曹操3隐藏，曹操4出现
	{	
		init() 
		{
			npc(5025, 9302) { show(), },
			npc(5025, 9207) { hide(), },
			npc(5025, 9303) { hide(), },
		},
		accepted()
		{
			npc(5025, 9302) { hide(), },
			npc(5025, 9207) { show(), },
		},
		finished()
		{
			npc(5025, 9295) { hide(), },
			npc(5025, 9296) { show(), },
		},
	},
	task(1917)  -- 马超消失，马超2显示
    {
		accepted()
		{
			npc(5025, 9207) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9207) { show(), },
		},
		finished()
		{
			npc(5025, 9207) { wait(2), hide(), },
			npc(5025, 9302) { show(), },
		},
	},
	task(1931) -- 韩遂2，马超3出现
	{	
		init() 
		{
			npc(5025, 9208) { show(), },
			npc(5025, 9301) { hide(), },
		},
		accepted()
		{
			npc(5025, 9208) { hide(), },
			npc(5025, 9301) { show(), },
			npc(5025, 9302) { hide(), },
			npc(5025, 9303) { show(), },
		},
	},
	task(1935)  -- 曹操出现，韩遂2马超2消失，韩遂马超出现
    {		
		accepted()
		{
			npc(5025, 9296) { hide(), },
			npc(5025, 9200) { show(), },
		},
		finished()
		{
			npc(5025, 9301) { hide(), },
			npc(5025, 9208) { show(), },
			npc(5025, 9303) { hide(), },
			npc(5025, 9302) { show(), },
		},
	},
	task(1936)  -- 完成后曹操消失
    {
		accepted()
		{
			npc(5025, 9200) { wait(10), hide(), },
			npc(5025, 9296) { show(), },
		},			
		can_finish()
		{
			npc(5025, 9296) { hide(), },
			npc(5025, 9200) { show(), },
		},			
		finished()
		{
			npc(5025, 9200) { hide(), },
			npc(5025, 9296) { show(), },
		},
	},
	task(1872)  -- 隐藏成宜
	{	
		init() 
		{
			npc(5025, 9205) { show(), },
        },
		accepted()
		{
			npc(5025, 9205) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9205) { show(), },
		},
	},
	task(1886)  -- 隐藏庞德
	{	
		init() 
		{
			npc(5025, 9209) { show(), },
        },
		accepted()
		{
			npc(5025, 9209) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9209) { show(), },
		},
	},
	task(1899)  -- 隐藏曹仁
	{	
		init() 
		{
			npc(5025, 9203) { show(), },
        },
		accepted()
		{
			npc(5025, 9203) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9203) { show(), },
		},
	},
	task(1934)  -- 隐藏马超3
	{	
		accepted()
		{
			npc(5025, 9303) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9303) { show(), },
		},
	},
	task(1879)  -- 隐藏侯选
	{	
		init() 
		{
			npc(5025, 9264) { show(), },
        },
		accepted()
		{
			npc(5025, 9264) { hide(), },
		},			
		can_finish()
		{
			npc(5025, 9264) { show(), },
		},
	},
	task(2053)  -- 劳动节王城浇水
	{	
		init() 
		{
			npc(5003, 10821) { show(), },
			npc(5003, 10888) { hide(), },
		},
		accepted()
		{
			npc(5003, 10821) { show(), },
			npc(5003, 10888) { hide(), },
		},			
		can_finish()
		{
			npc(5003, 10821) { hide(), },
			npc(5003, 10888) { show(), },
		},
		finish_count(1)
		{
			npc(5003, 10821) { hide(), },
			npc(5003, 10888) { show(), },
		},
	},
	task(2063)  -- 劳动节边境施肥
	{	
		init() 
		{
			npc(5005, 10822) { show(), },
			npc(5005, 10889) { hide(), },
		},
		accepted()
		{
			npc(5005, 10822) { show(), },
			npc(5005, 10889) { hide(), },
		},			
		can_finish()
		{
			npc(5005, 10822) { hide(), },
			npc(5005, 10889) { show(), },
		},
		finish_count(1)
		{
			npc(5005, 10822) { hide(), },
			npc(5005, 10889) { show(), },
		},
	},
	task(2058)  -- 劳动节京郊播种
	{	
		init() 
		{
			npc(5006, 10829) { show(), },
			npc(5006, 10890) { hide(), },
		},
		accepted()
		{
			npc(5006, 10829) { show(), },
			npc(5006, 10890) { hide(), },
		},			
		can_finish()
		{
			npc(5006, 10829) { hide(), },
			npc(5006, 10890) { show(), },
		},
		finish_count(1)
		{
			npc(5006, 10829) { hide(), },
			npc(5006, 10890) { show(), },
		},
	},
	task(2259)  -- 奥运会丢Buff NPC
	{	
		init() 
		{
			npc(5009, 11246) { hide(), },
			npc(5003, 11246) { hide(), },
			npc(5006, 11246) { hide(), },
		},
		accepted()
		{
			npc(5009, 11246) { show(), },
			npc(5003, 11246) { show(), },
			npc(5006, 11246) { show(), },
		},			
		finish_count(1)
		{
			npc(5009, 11246) { hide(), },
			npc(5003, 11246) { hide(), },
			npc(5006, 11246) { hide(), },
		},
	},
    --南蛮
	task(2857)--孟获的显隐
	{
		init() 
		{
			npc(5029, 14355) { show(), },
			npc(5029, 14401) { hide(), },
		},
		can_finish()
		{
			npc(5029, 14355) { hide(), },
			npc(5029, 14401) { show(), },
		},
	},
	task(2857)--孟优的显隐
	{
		init() 
		{
			npc(5029, 14357) { show(), },
			npc(5029, 14461) { hide(), },
		},
		accepted()
		{
			npc(5029, 14357) { hide(), },
			npc(5029, 14461) { hide(), },
		},
		can_finish()
		{
			npc(5029, 14357) { hide(), },
			npc(5029, 14461) { show(), },
		},
	},
	task(2859)--三洞难民的显隐
	{
		init() 
		{
			npc(5029, 14400) { hide(), },
		},
		can_finish()
		{
			npc(5029, 14400) { show(), },
		},
	},
	task(2878)--韦侬查的显隐
	{
		init() 
		{
			npc(5029, 14403) { hide(), },
			npc(5029, 14404) { hide(), },
		},
		can_finish()
		{
			npc(5029, 14403) { show(), },
			npc(5029, 14404) { show(), },
		},
	},
	task(2885)--阿会喃的显隐
	{
		init() 
		{
			npc(5029, 14406) { hide(), },
		},
		can_finish()
		{
			npc(5029, 14406) { show(), },
		},
	},
	task(2855)--右倪的显隐
	{
		init() 
		{
			npc(5029, 14361) { show(), },
		},
		can_finish()
		{
			npc(5029, 14361) { wait(3),hide(), },
		},
	},
	task(3064)--土方的显隐
	{
		init() 
		{
			npc(5029, 14411) { show(), },
		},
		accepted()
		{
		    npc(5029, 14411) { hide(), },
        },
		can_finish()
		{
			npc(5029, 14411) { wait(3),show(), },
		},
	},
	task(3085)--妖道首领的显隐
	{
		init() 
		{
			npc(5029, 14424) { show(), },
		},
		accepted()
		{
		    npc(5029, 14424) { hide(), },
        },
		can_finish()
		{
			npc(5029, 14424) { show(), },
		},
	},
	task(3088)--神秘女子的显隐
	{
		init() 
		{
			npc(5029, 14425) { show(), },
		},
		accepted()
		{
		    npc(5029, 14425) { hide(), },
        },
        can_finish()
		{
			npc(5029, 14425) { hide(), },
		},
	},
	task(3088)--木人的显隐
	{
		init() 
		{
			npc(5029, 15555) { hide(), },
		},
		accepted()
		{
		    npc(5029, 15555) { show(), },
        },
        can_finish()
		{
			npc(5029, 15555) { show(), },
		},
	},
	task(3209)--端午猴子的显隐
	{
		init() 
		{
			npc(5005, 15995) { show(), },
			npc(5005, 15996) { show(), },
			npc(5005, 15997) { show(), },
		},
		can_finish()
		{
			npc(5005, 15995) { wait(2),hide(), },
			npc(5005, 15996) { wait(2),hide(), },
			npc(5005, 15997) { wait(2),hide(), },
		},
	},
	task(2373) --国家运镖
	{
		accepted()
		{
			npc(5003, 1047) { show(), },
			npc(5004, 1048) { show(), },
			npc(5005, 1049) { show(), },
		},
	},
	--七夕相关
	task(3379)
	{
		init() 
		{
			npc(5009, 18104) { show(), },
		},
		can_finish()
		{
			npc(5009, 18104) { wait(2),hide(), },
		},
	},
	task(3380)
	{
		init() 
		{
			npc(5009, 18105) { show(), },
		},
		can_finish()
		{
			npc(5009, 18105) { wait(2),hide(), },
		},
	},
	task(3381)
	{
		init() 
		{
			npc(5009, 18106) { show(), },
		},
		can_finish()
		{
			npc(5009, 18106) { wait(2),hide(), },
		},
	},
	task(3382)
	{
		init() 
		{
			npc(5022, 18107) { show(), },
		},
		can_finish()
		{
			npc(5022, 18107) { wait(2),hide(), },
		},
	},
	task(3383)
	{
		init() 
		{
			npc(5022, 18108) { show(), },
		},
		can_finish()
		{
			npc(5022, 18108) { wait(2),hide(), },
		},
	},
	task(3384)
	{
		init() 
		{
			npc(5029, 18109) { show(), },
		},
		can_finish()
		{
			npc(5029, 18109) { wait(2),hide(), },
		},
	},
	task(3385)
	{
		init() 
		{
			npc(5029, 18110) { show(), },
		},
		can_finish()
		{
			npc(5029, 18110) { wait(2),hide(), },
		},
	},
	task(3436) --教师节NPC
	{
		init() 
		{
			npc(5003, 19393) { hide(), },--思勤初始隐藏
			npc(5003, 19418) { show(), },--水镜先生初始显示
			npc(5003, 19323) { show(), },--诸葛亮初始显示
		},
		finished()
		{
			npc(5003, 19393) { show(), },--完成引导任务后思勤显示
		},
	},
	task(3440) --教师节树果
	{
		init() 
		{
			npc(5003, 19455) { hide(), },--树果初始隐藏
		},
		finished()
		{
			npc(5003, 19455) { show(), },--摇动手机后树果显示
		},
	},
	task(3441) --教师节树果
	{
		finished()
		{
			npc(5003, 19455) { hide(), },--捡起后树果隐藏
		},
	},
}
return scene_style
