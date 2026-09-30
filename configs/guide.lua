--showclick 1 输入此命令后点击控件，在log里就可以看到界面名和所点击的控件名了
	
--用 def_guide (ID) 定义一个指引，ID 为保存指引完成状态时使用的编号，已完成的指引不再激活

-- do return end

-- def_guide (1)		--定义1号指引

-- end_guide (1)

-- def_guide (8)		--定义8号指引，装备强化，需 点击角色头像-->点击强化-->点击一键填充-->点击锻造-->关闭界面

	--第0步是指引入口，设定指引激活条件
	
	-- REQUIRE(host_level_between(0, 20))	--指引激活的前提 (目的是优化性能，可省略)
	-- REQUIRE(host_level_between(200, 20))	--指引激活的前提 (目的是优化性能，可省略)
	-- WAIT(task_has(21), item_has(500, 5))	--指引激活的条件：有21号任务，有5个500号物品
	
	-- 用 STEP 定义指引步骤。步骤名可用于跳转(功能预留)和调试
	-- STEP "click ImgHead"	--定义步骤 "click ImgHead"
	
		--用 REQUIRE 设定步骤成立的条件，不满足时返回前一步 (返回第0步则指引中断)
		--  多个 REQUIRE 间为“或”的关系，在 REQUIRE 中写多个条件为“与”的关系
		
		-- REQUIRE(item_has(500, 5))		--需有5个500号物品
		-- REQUIRE(ui_is_show("panel_charhead", "ImgHead"))		--ui控件需显示："panel_charhead" 窗口上的 "ImgHead" 控件
		
		--用 EXECUTE 设定步骤执行的操作，一般为显示指示性UI元素，当前步骤结束时会自动清除正在显示的指示框
		
		-- EXECUTE(ui_highlight("panel_charhead", "ImgHead"))	--在ui控件上附加指示框：在 "panel_charhead" 窗口上的 "ImgHead" 控件上
		
		--用 WAIT 设定步骤完成的条件，满足时进入下一步 (若已在最后一步则指引完成)
		--  多个 WAIT 间为“或”的关系，在 WAIT 中写多个条件为“与”的关系
		
		-- WAIT(ui_click("panel_charhead", "ImgHead"))		--需点击ui控件
		-- WAIT(ui_is_show("panel_menu", "Btn_Strength"))	--ui控件需显示
	
-- 	STEP "wait me23nu"
-- 		EXECUTE(ui_wait_show("panel_menu"), delay(0.2))

-- 	STEP "click Btn_Strength"
-- 		REQUIRE(item_has(500, 5))
		
-- 		EASY_HIGHLIGHT({shape="square"}, "panel_menu", "Btn_Strength")		--非强制
-- 		--等效于：
-- 		-- REQUIRE(ui_is_show("panel_menu", "Btn_Strength"))
-- 		-- EXECUTE(ui_highlight("panel_menu", "Btn_Strength"))
-- 		-- WAIT(ui_click("panel_menu", "Btn_Strength"))
		
-- 		EASY_HIGHLIGHT({force=true, shape="square"}, "panel_menu", "Btn_Strength")	--强制
-- 		--等效于：
-- 		-- REQUIRE(ui_is_show("panel_menu", "Btn_Strength"))
-- 		-- EXECUTE(ui_force_highlight("panel_menu", "Btn_Strength"))
-- 		-- WAIT(ui_click("panel_menu", "Btn_Strength"))	

-- 	STEP "wait equip_qualityup"
-- 		EXECUTE(ui_wait_show("panel_equip_qualityup"), delay(0.2))

-- 	STEP "click Btn_Fill"
-- 		REQUIRE(item_has(500, 5))
		
-- 		EASY_HIGHLIGHT({shape="square"}, "panel_equip_qualityup", "Btn_Fill")
	
-- 	STEP "click Btn_Forge"
-- 		REQUIRE(item_has(500, 5))
		
-- 		EASY_HIGHLIGHT({shape="square"}, "panel_equip_qualityup", "Btn_Forge")
	
-- 	-- STEP "wait for result"
-- 	-- 	WAIT(item_has(522))1860
	
-- 	STEP "click Btn_Close"
-- 		--用 FINISH 将指引标记为已完成，即使后面的步骤失败
-- 		FINISH()
		
-- 		EASY_HIGHLIGHT({shape="square"}, "panel_equip_qualityup", "Btn_Close")

-- --用 end_guide (ID) 结束指引定义，ID 需与 def_guide 中的 ID 匹配
-- end_guide (8)		--结束8号指引

-----------------------------------------------------------
-- 定义宏操作


-- 定义宏操作结束
-----------------------------------------------------------


	
	-- STEP "移动摄影机"
		-- REQUIRE(task_has(16))
		
		-- EASY_HIGHLIGHT({shape="square"}, "CameraMove", "Widget")	--这步是移动摄影机，用点击界面上的控件可以实现吗？
	
	-- STEP "使用摇杆"
		-- REQUIRE(task_has(16))
		
		-- EASY_HIGHLIGHT({shape="square"}, "Rocker", "RockerBtn")
		--等效于：
		--  REQUIRE(ui_is_show("Menu", "Btn_Strength"))
		--  EXECUTE(ui_highlight("square", "Menu", "Btn_Strength"))
		--  WAIT(ui_click("Menu", "Btn_Strength"))

	-- STEP "寻路回去交任务"
		-- REQUIRE(task_has(16))
		
		-- EASY_HIGHLIGHT({shape="square"}, "QuestMinion", "Quest")
	
	-- STEP "点击交任务"
		-- REQUIRE(task_has(16))
		
		-- EASY_HIGHLIGHT({shape="square"}, "NpcQuest", "Btn_Finish")
		
		--用 FINISH 将指引标记为已完成，即使后面的步骤失败
		-- FINISH()
		
-- end_guide (10)

def_guide (95)

	C_REQUIRE_NOT(task_is_finished(470))
	
	WAIT(task_server_can_finish(470))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路")

end_guide (95)

def_guide (1)		--晨练(对话)
	
	C_REQUIRE_NOT(task_is_finished(471))
	
	WAIT(task_openpanel("receive_prompt",471))

	STEP "等接任務介面出來後，點擊接任務"

		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  歡迎來到六龍爭霸，讓我們從[E47833]第一個任務[-]開始我們的冒險旅程吧！"}, "panel_npcquest", "Btn_Confirm")
	
	-- STEP "等1秒"
	
	--  	EXECUTE(delay(1))
	
	-- STEP "手的特效"
	
	-- 	EXECUTE(start_fx(965))
		
	-- 	WAIT(camera_pan())
				
	CLICK_TASK_GUIDE(1,"接任務後的尋路")

	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",471))
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  很好就是這樣，點這裡[E47833]交任務[-]，接下來還有很多事情要做！"}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
	
end_guide (1)

-- def_guide (2)		--杀！杀！杀！(打怪)前
	
-- 	C_REQUIRE_NOT(task_is_finished(472))
	
-- 	WAIT(func_is_unlocked("skill_index_1"))
	
-- 	STEP "临时配置，等上一步出现后延迟0秒"
	
-- 	 	EXECUTE(delay(1))
		
-- 	CLICK_TASK_GUIDE(1,"接任务后的寻路")
	
-- 	-- STEP "等2秒"
	
-- 	--  	EXECUTE(delay(1))
	
-- 	-- STEP "手的特效"
	
-- 	-- 	EXECUTE(start_fx(964))
		
-- 	-- 	WAIT(camera_zoom())
	
-- 	STEP "强制结束"
	
-- 		C_WAIT(task_can_finish(472))

-- 		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
	
-- end_guide (2)
		
def_guide (3)		--杀！杀！杀！(打怪)后
	
	C_REQUIRE_NOT(task_is_finished(472))
	
	WAIT(task_server_can_finish(472))
	 	
	-- CLICK_TASK_GUIDE(1,"交任务前的寻路")

	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("manual_finish",472))	--点击寻路直接弹交任务界面，用manual_finish.
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (3)

def_guide (4)		--月英的应对(对话)
	
	C_REQUIRE_NOT(task_is_finished(473))
	
	WAIT(task_has(473))
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",473))
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()

end_guide (4)

def_guide (5)		--有备无患(采集)前

	C_REQUIRE_NOT(task_is_finished(474))
	
	C_REQUIRE_NOT(task_server_can_finish(474))
	
	WAIT(task_is_finished(473))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("receive",474))

	STEP "等接任務介面出來後，點擊接任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Accept")
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
end_guide (5)
	
def_guide (6)		--有备无患(采集)后

	C_REQUIRE_NOT(task_is_finished(474))
	
	WAIT(task_server_can_finish(474))
	
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",474))
		
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (6)

def_guide (7)		--准备动手(对话)前

	C_REQUIRE_NOT(task_is_finished(566))
	
	WAIT(func_is_unlocked("drug"))
	
	CLICK_TASK_GUIDE(1,"交任務的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("receive",566))
	
	STEP "等接任務介面出來"
		
		EXECUTE(ui_wait_show("panel_npcquest"), delay(0))

	STEP "等接任務介面出來後，點擊接任務"
		
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Accept")
		
		FINISH()
		
		ABORT_ON_FAIL()

end_guide (7)
		
def_guide (8)		--准备动手(对话)后
	
	C_REQUIRE_NOT(task_is_finished(566))
	
	WAIT(task_server_can_finish(566))
	
	CLICK_TASK_GUIDE(1,"交任務的尋路")
		
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",566))
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (8)

def_guide (9)		--小打小闹(强化内装+打怪)前

	C_REQUIRE_NOT(task_is_finished(475))
	
	WAIT(func_is_unlocked("underwear"),item_has(1412))
	
	WAIT(func_is_unlocked("underwear"),item_has(2042))
	
	STEP "檢測是否有沒強化過的裝備"

		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return item:IsUnderwear() and item.m_Essence._fixed_ess.grade < 2
			end)
		end))
	
		ABORT_ON_FAIL()
	
	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_charhead"))
	
	STEP "點擊左上角角色信息"
		
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_equip_underwear")
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  接下來我們來[E47833]升級裝備[-]！"}, "panel_menubtn", "Toggle_Menu")

	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "點擊強化按鈕"
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  點擊這裡打開[E47833]裝備介面[-]！"}, "panel_menu", "Btn_Strength")
	
	STEP "等接強化介面出來"
		
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_underwear"), delay(0))
	
	STEP "點擊強化按鈕"
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  點擊[E47833]一鍵升級[-]裝備就變強啦！"}, "panel_equip_underwear", "Btn_OnceGradeUp")	--Btn_GradeUp
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()

end_guide (9)

def_guide (10)		--小打小闹(强化内装+打怪)后

	C_REQUIRE_NOT(task_is_finished(475))
	
	WAIT(task_server_can_finish(475))
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("manual_finish",475))
		
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		ABORT_ON_FAIL()
		
		FINISH()
	
end_guide (10)

def_guide (11)		--玩火自焚(打怪)前

	C_REQUIRE_NOT(task_is_finished(476))
	
	WAIT(task_openpanel("receive_prompt",476))
	
	STEP "等接任務介面出來後，點擊接任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Confirm")
			
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()

end_guide (11)

def_guide (12)		--玩火自焚(打怪)后
	
	C_REQUIRE_NOT(task_is_finished(476))
	
	WAIT(task_server_can_finish(476))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(476))
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("manual_finish",476))
		
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (12)

def_guide (13)		--神医华佗(对话)

	C_REQUIRE_NOT(task_is_finished(477))
	
	WAIT(task_openpanel("receive_prompt",477))

	STEP "等接任務介面出來後，點擊接任務"
		
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Confirm")
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",477))
		
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (13)

def_guide (14)

	C_REQUIRE_NOT(task_has(478))
	
	C_REQUIRE_NOT(task_is_finished(478))
	
	WAIT(task_is_finished(477))
	
	STEP "等接任務介面出來"
		
		EXECUTE(ui_wait_show("panel_npcquest"), delay(0))

	STEP "等接任務介面出來後，點擊接任務"

		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Accept")
	
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (14)

def_guide (15)		--救死扶伤(采集)前	升级技能

	C_REQUIRE_NOT(task_is_finished(478))
	
	C_REQUIRE_NOT(task_can_finish(478))

	WAIT(task_has(478))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))
		
	CLICK_TASK_GUIDE(1,"做任務的尋路")
	
end_guide (15)	

def_guide (16)		--救死扶伤(采集)后
	
	C_REQUIRE_NOT(task_is_finished(478))
	
	WAIT(task_server_can_finish(478))
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路")
	
	STEP "等還任務介面出來"
	
		EXECUTE(ui_wait_show("panel_npcquest"), delay(0))
		
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (16)

-- def_guide (17)		--倒下留人(打怪)前
	
-- 	C_REQUIRE_NOT(task_is_finished(479))
	
-- 	WAIT(func_is_unlocked("skill_index_2"))
	
-- 	STEP "临时配置，等上一步出现后延迟0秒"
	
-- 	 	EXECUTE(delay(2))
	
-- 	CLICK_TASK_GUIDE(1,"接任务的寻路")
	
-- 	STEP "强制结束"
	
-- 		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
-- 		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
-- 		EXIT()
	
-- end_guide (17)
	
def_guide (18)		--倒下留人(打怪)后

	C_REQUIRE_NOT(task_is_finished(479))
	
	WAIT(task_server_can_finish(479))
						
	-- CLICK_TASK_GUIDE(1,"接任务后的寻路")

	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",479))
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
	
end_guide (18)

def_guide (19)		--贼人势众(一键强化+打怪)前

	C_REQUIRE_NOT(task_is_finished(480))
	
	 WAIT(task_is_finished(479))
	 
	 STEP "等接任務介面出來"
		
		EXECUTE(ui_wait_show("panel_npcquest"), delay(0))
	 	
	 STEP "等接任務介面出來後，點擊接任務"

		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Accept")
		
		ABORT_ON_FAIL()
	
	CLICK_TASK_GUIDE(1,"做任務後的尋路")
		
end_guide (19)

def_guide (20)		--贼人势众(一键强化+打怪)后

	C_REQUIRE_NOT(task_is_finished(480))
	
	WAIT(task_server_can_finish(480))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路")

	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("finish",480))
	
	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(0))
	
	STEP "等還任務介面出來後，點擊還任務"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_npcquest", "Btn_Finish")
		
		FINISH()
		
		ABORT_ON_FAIL()
	
end_guide (20)

------------------------从这开始要填寻路的第三个参数了

def_guide (21)		--目标诸葛亮(打怪)前

	C_REQUIRE_NOT(task_is_finished(481))
	
	WAIT(task_is_finished(480))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("receive",481))

	STEP "等接任務介面出來後，點擊接任務"
		
		EASY_HIGHLIGHT({shape="square"}, "panel_npcquest", "Btn_Accept")
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (21)

def_guide (22)		--目标诸葛亮(打怪)后

	C_REQUIRE_NOT(task_is_finished(481))
	
	WAIT(task_server_can_finish(481))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (22)

def_guide (23)		--拆陷阱专家(采集)前

	C_REQUIRE_NOT(task_is_finished(482), task_can_finish(482))
	
	WAIT(task_has(482))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (23)

def_guide (24)		--拆陷阱专家(采集)后

	C_REQUIRE_NOT(task_is_finished(482))
	
	WAIT(task_server_can_finish(482))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (24)

def_guide (25)		--智计无双(对话)

	C_REQUIRE_NOT(task_is_finished(483))
	
	WAIT(task_has(483))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(483))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (25)

def_guide (26)		--有迹可寻(打怪)前

	C_REQUIRE_NOT(task_is_finished(484))
	
	WAIT(task_is_finished(483))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("receive",484))

	STEP "等接任務介面出來後，點擊接任務"

		EASY_HIGHLIGHT({shape="square"}, "panel_npcquest", "Btn_Accept")

	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (26)

def_guide (27)		--有迹可寻(打怪)后

	C_REQUIRE_NOT(task_is_finished(484))
	
	WAIT(task_server_can_finish(484))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (27)

def_guide (28)		--密令(打怪)

	C_REQUIRE_NOT(task_is_finished(485))
	
	WAIT(task_has(485))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(485))
		
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
end_guide (28)

def_guide (29)		--山神庙秘密

	C_REQUIRE_NOT(task_is_finished(486))
	
	WAIT(task_has(486))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(486))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)
	
end_guide (29)

def_guide (30)
	
	C_REQUIRE_NOT(task_has(567))
	
	C_REQUIRE_NOT(task_is_finished(567))
	
	WAIT(task_is_finished(486))
	
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)
	
	STEP "等還任務介面出來"
	
		C_WAIT(task_openpanel("receive",487))

	STEP "等接任務介面出來後，點擊接任務"
		
		EASY_HIGHLIGHT({shape="square"}, "panel_npcquest", "Btn_Accept")
		
end_guide (30)

def_guide (31)		--副本1，引导挂机

	C_REQUIRE_NOT(task_is_finished(564))
	
	WAIT(task_has(487), is_in_scene(6005))
	
	STEP "等掛機按鈕顯示"
	
		WAIT(ui_is_show("panel_autofight"))

	STEP "引導用掛機"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_autofight")
		
		EASY_HIGHLIGHT({force=true, force_time=1, shape="head", arrow= true}, "panel_autofight", "Btn_AutoFight")
		
		LEAVE_FORCE_MODE()
		
		FINISH()
		
		ABORT_ON_FAIL()
	
	STEP "強制結束"
	
		C_WAIT(task_can_finish(472))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
	
		EXIT()

end_guide (31)

def_guide (32)		--副本1，松绑

	C_REQUIRE_NOT(task_is_finished(700))
	
	C_REQUIRE_NOT(task_can_finish(700))
	
	WAIT(task_has(700))
	
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
		
		FINISH()
		
		ABORT_ON_FAIL()

end_guide (32)

-- def_guide (33)		--副本1引导退出

-- 	C_REQUIRE_NOT(task_is_finished(487))
	
-- 	WAIT(task_server_can_finish(487))

-- 	STEP "等退出按钮显示"
	
-- 		EXECUTE(ui_wait_show("panel_out"), delay(0))

-- 	STEP "副本打完后引导退出"
	
-- 		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_out","panel_popup")
		
-- 		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  副本已经打完了，[E47833]点这里退出[-]"}, "panel_out", "Btn_Out")
		
-- 		LEAVE_FORCE_MODE()
		
-- 		ABORT_ON_FAIL()

-- 	STEP "等确认界面出来"
	
-- 		EXECUTE(ui_wait_show("panel_popup"), delay(0))

-- 	STEP "点击确定"
	
-- 		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_popup", "Btn_Approve")
		
-- 		ABORT_ON_FAIL()
		
-- 		FINISH()
		
-- end_guide (33)

def_guide (33)
	
	C_REQUIRE_NOT(task_has(514))
	
	C_REQUIRE_NOT(task_is_finished(514))
	
	WAIT(task_is_finished(487))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (33)

def_guide (34)		--贼势汹汹(打怪)前

	C_REQUIRE_NOT(task_is_finished(514))
	
	WAIT(task_has(514))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (34)

def_guide (35)		--贼势汹汹(打怪)后

	C_REQUIRE_NOT(task_is_finished(514))
	
	WAIT(task_server_can_finish(514))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (35)

def_guide (36)		--秘密武器

	C_REQUIRE_NOT(task_is_finished(515))
	
	C_REQUIRE_NOT(task_can_finish(515))
	
	WAIT(task_has(515))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (36)

def_guide (37)		--即将开启

	C_REQUIRE_NOT(task_is_finished(516))
	
	WAIT(task_has(516))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_next"))
	
	STEP "等確認介面出來"
	
		EXECUTE(delay(2))
	
	STEP "點即將開啟"
		
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  我準備了[E47833]一件高級裝備[-]，點擊這裡打開介面！"}, "panel_next", "Widget")

	STEP "等確認介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
			
		C_WAIT(ui_is_show("panel_nextinfo"))
	
	STEP "點領取"
	
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  [E47833]點擊這裡領取[-]，裝備品質分為：[ffffff]白[-]、[0077ff]藍[-]、[ffd926]黃[-]、[00e104]綠[-]、[882bf1]紫[-]！"}, "panel_nextinfo", "Btn_GetAward")
		
		FINISH()
		
		ABORT_ON_FAIL()
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
		
end_guide (37)

def_guide (38)		--探查究竟(打怪)后

	C_REQUIRE_NOT(task_is_finished(516))
	
	WAIT(task_server_can_finish(516))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(516))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (38)

def_guide (39)		--此物可用

	C_REQUIRE_NOT(task_has(488))
	
	C_REQUIRE_NOT(task_is_finished(488))
	
	WAIT(task_is_finished(516))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等接任務介面出來"
	
		C_WAIT(task_openpanel("receive",508))

	STEP "等接任務介面出來後，點擊接任務"
	
		EASY_HIGHLIGHT({shape="square"}, "panel_npcquest", "Btn_Accept")
		
		FINISH()
		
		ABORT_ON_FAIL()
	
end_guide (39)

def_guide (40)		--押运过程中寻路

	C_REQUIRE_NOT(task_is_finished(488))
	
	WAIT(task_has(488))
	
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)
	
	STEP "等2秒"
	
		EXECUTE(delay(2))
	
	STEP "點加速"
	
		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  押鏢時點擊這裡[E47833]給鏢車加速[-]！"}, "panel_goodstransport_quick", "Btn_Quick")

		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (40)

def_guide (41)		--拔除眼线(打怪)前

	C_REQUIRE_NOT(task_is_finished(489))
	
	WAIT(task_is_finished(488))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等接任務介面出來"
	
		C_WAIT(task_openpanel("receive",489))

	STEP "等接任務介面出來後，點擊接任務"
		
		EASY_HIGHLIGHT({shape="square"}, "panel_npcquest", "Btn_Accept")
	
end_guide (41)

def_guide (42)

	C_REQUIRE_NOT(task_is_finished(489))
	
	C_REQUIRE_NOT(task_server_can_finish(489))
	
	WAIT(task_has(489))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)

end_guide (42)

def_guide (43)		--拔除眼线(打怪)后

	C_REQUIRE_NOT(task_is_finished(489))
	
	WAIT(task_server_can_finish(489))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (43)

def_guide (44)		--有借无还(打怪)

	C_REQUIRE_NOT(task_is_finished(490))
	
	WAIT(task_has(490))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(490))
		
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
end_guide (44)

def_guide (45)		--秘密潜入(采集)前

	C_REQUIRE_NOT(task_is_finished(491))
	
	C_REQUIRE_NOT(task_can_finish(491))
	
	WAIT(task_has(491))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (45)

def_guide (46)		--秘密潜入(采集)后

	C_REQUIRE_NOT(task_is_finished(491))
	
	WAIT(task_server_can_finish(491))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()

end_guide (46)

def_guide (47)		--第二个目标(采集)前

	C_REQUIRE_NOT(task_is_finished(492))
	
	C_REQUIRE_NOT(task_can_finish(492))
	
	WAIT(task_has(492))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (47)

def_guide (48)		--第二个目标(采集)后

	C_REQUIRE_NOT(task_is_finished(492))
	
	WAIT(task_server_can_finish(492))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
	STEP "強制結束"
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()

end_guide (48)

def_guide (49)		--第三个目标(采集)前

	C_REQUIRE_NOT(task_is_finished(493))
	
	C_REQUIRE_NOT(task_can_finish(493))
	
	WAIT(task_has(493))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
		
		EXIT()
	
end_guide (49)

def_guide (50)		--第三个目标(采集)后

	C_REQUIRE_NOT(task_is_finished(493))
	
	WAIT(task_server_can_finish(493))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
			
		EXIT()

end_guide (50)

def_guide (51)		--内应崔州平(对话)

	C_REQUIRE_NOT(task_is_finished(517))
	
	WAIT(task_has(517))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(517))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (51)

def_guide (52)		--黄巾妖术师(打怪)前

	C_REQUIRE_NOT(task_is_finished(518))
	
	WAIT(task_openpanel("receive",518))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
end_guide (52)

def_guide (53)		--黄巾妖术师(打怪)后

	C_REQUIRE_NOT(task_is_finished(518))
	
	WAIT(task_server_can_finish(518))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (53)

def_guide (54)		--二代天公将军接任务的寻路
	
	C_REQUIRE_NOT(task_is_finished(494))
	
	WAIT(func_is_unlocked("skill_index_4"))

	STEP "臨時配置，等上一步出現後延遲0秒"
	
	 	EXECUTE(delay(2))
	
	CLICK_TASK_GUIDE(1,"做任務的尋路",false)
	
end_guide (54)

def_guide (55)		--二代天公将军(打怪)前

	C_REQUIRE_NOT(task_is_finished(494))
	
	WAIT(task_openpanel("receive",494))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
end_guide (55)

def_guide (56)		--二代天公将军(打怪)后

	C_REQUIRE_NOT(task_is_finished(494))
	
	WAIT(task_server_can_finish(494))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (56)

def_guide (57)		--兵家大忌(采集)前

	C_REQUIRE_NOT(task_is_finished(519))
	
	C_REQUIRE_NOT(task_can_finish(519))
	
	WAIT(task_openpanel("receive",519))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
end_guide (57)

def_guide (58)		--兵家大忌(采集)后

	C_REQUIRE_NOT(task_is_finished(519))
	
	WAIT(task_server_can_finish(519))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (58)

def_guide (59)		--放火为号(采集)前

	C_REQUIRE_NOT(task_is_finished(495))
	
	WAIT(task_has(495))
	
	-- CLICK_TASK_GUIDE(1,"接任务的寻路",false)
	
	STEP "等放火介面出來"
	
		EXECUTE(ui_wait_show("panel_taskitem"), delay(0))
	
	STEP "點擊放火"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_taskitem")

		EASY_HIGHLIGHT({force=true, force_time=1, shape="square", arrow= true}, "panel_taskitem", "Btn_Item")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (59)

def_guide (60)		--放火为号(采集)后

	C_REQUIRE_NOT(task_is_finished(495))
	
	WAIT(task_server_can_finish(495))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_skill", "Img_Skill02"))
		
		C_WAIT(ui_click("panel_autofight", "Btn_AutoFight"))
			
		EXIT()

end_guide (60)

def_guide (61)		--豪胆将军(对话)

	C_REQUIRE_NOT(task_is_finished(496))
	
	WAIT(task_has(496))
	
	STEP "等任務可完成"
		WAIT(task_can_finish(496))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (61)

def_guide (62)		--激活卡牌

	C_REQUIRE_NOT(task_is_finished(642))
	
	WAIT(func_is_unlocked("card"), host_level_between(10,20))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "點擊左上角角色信息"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn", "panel_menu","panel_card")
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  卡牌是個很好玩的[E47833]收集玩法[-]，操作簡單又耐玩！"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
		
		C_WAIT(ui_is_show("panel_menu"))
		
	STEP "點擊卡片按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  點擊這裡[E47833]打開卡牌的介面[-]！"}, "panel_menu", "Btn_Card")
	
	STEP "等接角色介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0.5))
		
		C_WAIT(ui_is_show("panel_card"))
	
	STEP "點擊第一個組合"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="close", arrow= true, text="甄姬：\n  讓我們先[E47833]從第一個組合開始[-]，點擊進入介面！"}, "panel_card", "MainList01_1")
		
		ABORT_ON_FAIL()
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_card"), delay(0))
	
	STEP "點擊開啟按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  獲得卡牌之後一定要來這裡開啟，[E47833]開啟才能增加屬性[-]，讓你變得更強！"}, "panel_card", "Btn_Activate_1")

		LEAVE_FORCE_MODE()
		
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)

end_guide (62)

def_guide (63)		--脱身之法(对话)

	C_REQUIRE_NOT(task_is_finished(642))
	
	WAIT(task_has(642))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(642))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (63)

def_guide (64)		--一飞冲天接任务

	C_REQUIRE_NOT(task_is_finished(497))
	
	WAIT(task_is_finished(642))
	
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)
	
end_guide (64)

def_guide (93)		--一飞冲天	旋转摄影机

	C_REQUIRE_NOT(task_is_finished(497))
	WAIT(task_server_can_finish(497))
	
	STEP "手的特效"
		EXECUTE(start_fx(965))
		WAIT(camera_pan())

end_guide (93)

def_guide (65)		--万事俱备(采集)前

	C_REQUIRE_NOT(task_is_finished(498))
	
	C_REQUIRE_NOT(task_can_finish(498))
	
	WAIT(task_openpanel("receive",498))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
end_guide (65)

def_guide (66)		--万事俱备前(采集)后

	C_REQUIRE_NOT(task_is_finished(498))
	
	WAIT(task_server_can_finish(498))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (66)

def_guide (67)		--副本2，引导挂机
	
	C_REQUIRE_NOT(task_is_finished(441))
	
	WAIT(func_is_unlocked("skill_index_5"), is_in_scene(6006))

	STEP "等掛機按鈕顯示"
	
		WAIT(ui_is_show("panel_autofight"))
	
	STEP "臨時配置，等上一步出現後延遲2秒"
	
	 	EXECUTE(delay(1))
		
	STEP "引導用掛機"
		
		EASY_HIGHLIGHT({shape="head", arrow= true}, "panel_autofight", "Btn_AutoFight")
		
		FINISH()
		
		ABORT_ON_FAIL()
		
end_guide (67)

def_guide (68)		--XP技能

	C_REQUIRE_NOT(task_is_finished(499))
	
	C_REQUIRE_NOT(task_can_finish(499))
	
	WAIT(task_complete(441))
	
	STEP "等技能介面出來"
	
		EXECUTE(ui_wait_show("panel_skill"), delay(0))
		
	STEP "用XP技"
	
		EASY_HIGHLIGHT({shape="xp", arrow= true, text="甄姬：\n  [E47833]職業最終技能Get[-]！怒氣滿後輕鬆一點秒全屏，[E47833]掛機打怪就能加怒氣[-]！"}, "panel_skill", "Img_Skillxp")
		
		-- WAIT(task_complete(441))
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (68)

def_guide (94)		--通知诸葛亮	拉近摄影机

	C_REQUIRE_NOT(task_is_finished(500))
	WAIT(task_server_can_finish(500))
						
	STEP "等點燈介面出來"
		EXECUTE(delay(5))
	
	STEP "手的特效"
		EXECUTE(start_fx(964))
		WAIT(camera_zoom())

end_guide (94)

def_guide (69)		--一举成功(采集)前

	C_REQUIRE_NOT(task_is_finished(501))
	
	C_REQUIRE_NOT(task_can_finish(501))
	
	WAIT(task_openpanel("receive",501))
	
	CLICK_TASK_GUIDE(1,"接任務的尋路",false)
	
	STEP "等點燈介面出來"
	
		EXECUTE(ui_wait_show("panel_taskitem"), delay(0))
	
	STEP "點擊點燈"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_taskitem")

		EASY_HIGHLIGHT({force=true, force_time=1, shape="square", arrow= true}, "panel_taskitem", "Btn_Item")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (69)

def_guide (70)		--一举成功(采集)后

	C_REQUIRE_NOT(task_is_finished(502))
	
	WAIT(task_server_can_finish(502))
						
	CLICK_TASK_GUIDE(1,"還任務後的尋路",false)

end_guide (70)

def_guide (71)		--良禽择木而栖(对话)

	C_REQUIRE_NOT(task_is_finished(503))
	
	WAIT(task_has(503))
	
	STEP "等任務可完成"
	
		WAIT(task_can_finish(503))
						
	CLICK_TASK_GUIDE(1,"接任務後的尋路",false)

end_guide (71)

def_guide (72)		--引导上马

	C_REQUIRE_NOT(task_has(505))
	
	C_REQUIRE_NOT(task_is_finished(505))

	WAIT(func_is_unlocked("riding"))
		
	STEP "引導上馬"
	
		EASY_HIGHLIGHT({shape="up", arrow= true, text="甄姬：\n  駕！駕！駕！尋路時會[E47833]自動上馬[-]！"}, "panel_ridebtn", "Btn_Ride")
		
		ABORT_ON_FAIL()
		
		FINISH()
	
	CLICK_TASK_GUIDE(1,"交任務前的尋路",false)
	
	STEP "強制結束"
	
		C_WAIT(ui_click("panel_ridebtn", "Btn_Ride"))
		
		EXIT()

end_guide (72)

def_guide (73)		--剧情本	OK

	WAIT(func_is_unlocked("instancestory"))
	
	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_challenge"))

	STEP "點擊挑戰按鈕"
		
		EXECUTE(set_toggle(false, "panel_menuother", "Btn_Chance"))
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_challenge", "panel_challengemain","panel_instance_story")

		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  各式各樣的[E47833]副本[-]玩法等你挑戰！"}, "panel_challenge", "Btn_Challenge")
		
	STEP "等挑戰介面出來"
	
		C_WAIT(ui_is_show("panel_challengemain"))
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	WAIT_FOR_PANEL_OPEN_TWEEN("panel_challenge", true)

	STEP "點擊試煉按鈕"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="close", arrow= true, text="甄姬：\n  首先是[E47833]劇情副本[-]，點擊打開列表！"}, "panel_challengemain", "Btn_Story")
	
	STEP "等試煉介面出來"
	
		EXECUTE(ui_wait_show("panel_instance_story"), ui_forbid_click(), delay(0.2))
		
	STEP "點擊立即挑戰"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true}, "panel_instance_story", "Btn_Fight")
		
		ABORT_ON_FAIL()
		
		LEAVE_FORCE_MODE()
		
		FINISH()
		
end_guide (73)

def_guide (74)		--经验本	OK

	C_REQUIRE_NOT(task_is_finished(66))

	WAIT(func_is_unlocked("instanceexp"))
	
	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_challenge"))

	STEP "點擊挑戰按鈕"
	
		EXECUTE(set_toggle(false, "panel_menuother", "Btn_Chance"))
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_challenge", "panel_challengemain","panel_instance_exp")

		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]長板橋[-]副本解鎖啦！產出海量經驗！也叫經驗副本！"}, "panel_challenge", "Btn_Challenge")
		
	STEP "等挑戰介面出來"
	
		C_WAIT(ui_is_show("panel_challengemain"))
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	WAIT_FOR_PANEL_OPEN_TWEEN("panel_challenge", true)

	STEP "點擊試煉按鈕"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="close", arrow= true, text="甄姬：\n  更多的副本玩法會[E47833]逐步開啟[-]，記得常打開介面看看呀！"}, "panel_challengemain", "Btn_ForExp")
	
	STEP "等試煉介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_instance_exp"), delay(0.2))
		
	STEP "點擊立即挑戰"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="close", arrow= true}, "panel_instance_exp", "Group_Enter")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (74)

-- def_guide (75)		--抽奖

-- 	WAIT(func_is_unlocked("lottery"))
	
-- 	STEP "等主界面出来"
	
-- 		WAIT(ui_is_show("panel_menuother"))

-- 	STEP "展开右上角界面"

-- 		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  [E47833]抽奖[-]时间到！看看自己的手气如何吧！"}, "panel_menuother", "Btn_Chance")
	
-- 	STEP "等界面展开"

-- 		EXECUTE(ui_forbid_click(), delay(0))
		
-- 		C_WAIT(ui_is_show("panel_menuother", "Table"))

-- 	STEP "点击抽奖入口"
	
-- 		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  运气好的话可以抽到[E47833]紫色卡牌[-]哟！"}, "panel_menuother", "Btn_Lottery")	
		
-- 	STEP "等钱庄界面显示"

-- 		EXECUTE(ui_forbid_click(), delay(0))
		
-- 		C_WAIT(ui_is_show("panel_lottery"))
		
-- 	STEP "点击抽奖"
	
-- 		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  好期待呀~好期待！"}, "panel_lottery", "Btn_Once01")
		
-- 		ABORT_ON_FAIL()
	
-- end_guide (75)

def_guide (76)	--使用盗神令	OK
	
	C_REQUIRE_NOT(task_is_finished(69))
	
	WAIT(task_has(659), item_has(2032, 1))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))

	STEP "點擊左上角角色信息"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_char","panel_itemtip_otheritem")
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "點擊背包按鈕"
	
		EXECUTE(ui_close_all_except("panel_menu"))
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true}, "panel_menu", "Btn_Inventory")
		
	STEP "等背包介面出來"
	
		C_WAIT(ui_openpanel("panel_char"))
	
	STEP "使用盜神令"
	
		TURN_TO_PACKAGE_PAGE(2032)
		
		EXECUTE(delay(0.1))
		
		EASY_HIGHLIGHT_ONEOF_TAG({force="redirect", force_time=2, shape="square", arrow= true}, {"panel_char", "PackageScrollView"}, "item_tid_", 2032)
	
	STEP "等tip介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "點擊使用"

		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true}, "panel_itemtip_otheritem", "Btn_Type1")
		
		LEAVE_FORCE_MODE()
		
	STEP "關閉介面"
	
		FINISH()

		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_char", "Btn_Close")
		
		ABORT_ON_FAIL()
		
	CLICK_TASK_GUIDE(1,"交任務前的尋路",false)
		
end_guide (76)

---------------------------------------------------------------------

def_guide (77)		--内装强化	OK

	WAIT(ui_openpanel("panel_equip_underwear"))
	
	STEP "檢測"
		
		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return item:NeedSpecialGradeUp() and can_underwear_gradeup(item)
			end)
		end))
		
		EXIT_ON_FAIL()
		
	STEP "等強化介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0.1))
		
	STEP "選擇一個可以進階的裝備"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_equip_underwear")
		
		REQUIRE(ui_is_show("panel_equip_underwear", "EquipItem", "GradeUpItem"))
		
		EASY_HIGHLIGHT_SCROLL_ITEM({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  終於存夠升階材料了！升階裝備能[E47833]提升品質[-]，之外還能[E47833]增加寶石鑲嵌孔[-]！"}, {"panel_equip_underwear", "EquipItem"}, function ()
			local function pred (item)
				return item:NeedSpecialGradeUp() and can_underwear_gradeup(item)
			end
			return find_underwear_to_enhance(pred)
		end)
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
		
	STEP "點擊進階按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_underwear", "Btn_SpecialGradeUp")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (77)

def_guide (78)		--宝石镶嵌	OK
	
	WAIT(func_is_unlocked("attach"), ui_openpanel("panel_equip_underwear"))

	STEP "檢測"
	
		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return can_underwear_attach(item)
			end)
		end))
		
		EXIT_ON_FAIL()
		
	STEP "等鑲嵌介面出來"
	
		EXECUTE(switch_underwear_page("attach"), ui_forbid_click(), delay(0))

	STEP "選擇一個可以鑲嵌的裝備"
	
		REQUIRE(ui_is_show("panel_equip_underwear", "EquipItem", "Group_Attach"))
		
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_equip_underwear", "panel_menubtn")
		
		EASY_HIGHLIGHT_SCROLL_ITEM({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  [E47833]不同部位[-]可以鑲嵌[E47833]不同寶石[-]喲！"}, {"panel_equip_underwear", "EquipItem"}, function ()
			
			local function pred (item)
				return can_underwear_attach(item)
			end
			return find_underwear_to_enhance(pred)
		end)
	
	STEP "等"
	
		EXECUTE(delay(0))
	
	STEP "點擊首個寶石"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  [E47833]點擊寶石圖示[-]即可鑲嵌，再次點擊就能取下！"}, "panel_equip_underwear", "Group_Img_1")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (78)

def_guide (79)		--使用封魔贴	OK
	
	WAIT(host_level_between(25,25), item_has(877,1), ui_openpanel("panel_char"))
	WAIT(host_level_between(25,25), item_has(878,1), ui_openpanel("panel_char"))
	
	STEP "等"	
	
		EXECUTE(delay(1))
	
	STEP "等接主功能表介面出來"
		
		REQUIRE(ui_is_show("panel_char", "SubPanel_Inventory"))
		
		EXIT_ON_FAIL()
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	STEP "使用封魔貼"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn", "panel_menu","panel_char", "panel_itemtip_otheritem")

		TURN_TO_PACKAGE_PAGE(877)
		
		EXECUTE(delay(0.1))
		
		EASY_HIGHLIGHT_ONEOF_TAG({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  使用封魔貼會接受一個打怪任務，[E47833]可以隨主線一起完成[-]，這就是白送經驗！"}, {"panel_char", "PackageScrollView"}, "item_tid_", 877, 878)
	
	STEP "等tip介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "點擊使用"

		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  封魔貼的[E47833]品質越高獎勵就越好[-]！"}, "panel_itemtip_otheritem", "Btn_Type1")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (79)

def_guide (80)		--加帮会	OK

	C_REQUIRE_NOT(if_true(function () return host_has_faction() end))
	
	WAIT(task_is_finished(81), host_level_between(25,40))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "點擊左下角"
	
		EXECUTE(ui_close_all())
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("leftdown", "panel_menu")
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  發現你還沒有[E47833]加入幫會[-]！"}, "panel_menubtn", "Toggle_Menu")
		
		ABORT_ON_FAIL()
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
		
		C_WAIT(ui_is_show("panel_menu"))
		
	STEP "點擊幫派按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true, text="甄姬：\n  加入幫會不但有[E47833]好多好兄弟一起玩[-]，還有更多[E47833]幫會玩法[-]等你發現！"}, "panel_menu", "Btn_Faction")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (80)

def_guide (81)		--英雄试炼	OK

	WAIT(func_is_unlocked("instancemoney"), ui_openpanel("panel_herofight"))
	
	STEP "等試煉介面出來"
		
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_herofight"), delay(0))
		
	STEP "點擊立即挑戰"
	
		EASY_HIGHLIGHT({shape="quest", arrow= true, text="甄姬：\n  挑戰三國名將[E47833]得卡片[-]，除此之外，卡片介面裡的[E47833]卡片商店[-]也賣卡牌！"}, "panel_herofight", "Btn_Fight")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (81)

def_guide (82)		--激活爵位技	OK

	WAIT(func_is_unlocked("officer"))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))

	STEP "點擊左上角角色信息"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_officer","SSubPanel_SkillInof")

		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  鑒於你在六龍爭霸裡的優秀表現，GM大大要[E47833]封你爵位啦[-]！"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "點擊爵位按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]提升屬性[-]，[E47833]領取俸祿[-]，強大的[E47833]爵位技[-]，一個都少不了！"}, "panel_menu", "Btn_Officer")
	
	STEP "等接爵位介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_officer"), delay(0))

	STEP "點擊第一個技能"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]爵位技[-]會隨著爵位提升而[E47833]自動解鎖和升級[-]！"}, "panel_officer", "Skill01")
	
	STEP "等tip介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_officer", "SSubPanel_SkillInof"), delay(0))
		
	STEP "點擊使用按鈕"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  提升爵位需要[E47833]功勛值，通過國戰，九龍鼎（體），刺探軍情（體）玩法獲得[-]！"}, "panel_officer", "Btn_Use")

		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()

end_guide (82)

def_guide (83)		--翅膀(翅膀功能打开界面默认选第一个)	OK

	WAIT(func_is_unlocked("wing"), ui_openpanel("panel_wing"), item_has(1282,5), item_has(1986,1))

	STEP "等接翅膀介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	STEP "點擊培養按鈕"
	
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  我會告訴你[E47833]靈羽去挑戰裡面的闖天關副本獲得[-]嗎！"}, "panel_wing", "Btn_Train")
	
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (83)

def_guide (84)		--闯天关	OK

	WAIT(func_is_unlocked("wing"), ui_openpanel("panel_pass"))

	STEP "等組隊副本出來"
	
		EXECUTE(ui_forbid_click(), delay(0.2))
		
	STEP "點擊進入"
		
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  拿到靈羽之後記得去[E47833]升級翅膀[-]呀！"}, "panel_pass", "Btn_Hand")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (84)

def_guide (85)	--竞技场	OK

	WAIT(func_is_unlocked("arena"), ui_openpanel("panel_arena"))

	STEP "等擂臺介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0.1))
		
	STEP "點擊第一個挑戰按鈕"

		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  擂臺是專門PK的地方，[E47833]打贏能獲得榮譽值[-]，榮譽值能[E47833]換符文[-]！"}, "panel_arena", "Btn_Challenge")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (85)

def_guide (86)		--符文	OK

	WAIT(host_level_between(30,40), ui_openpanel("panel_char","subpanel_inventory"), item_has(2462))
	WAIT(host_level_between(30,40), ui_openpanel("panel_char","subpanel_inventory"), item_has(2471))
	WAIT(host_level_between(30,40), ui_openpanel("panel_char","subpanel_inventory"), item_has(2483))
	WAIT(host_level_between(30,40), ui_openpanel("panel_char","subpanel_inventory"), item_has(2489))
	WAIT(host_level_between(30,40), ui_openpanel("panel_char","subpanel_inventory"), item_has(10589))
	
	STEP "等"	
	
		EXECUTE(delay(1))
	
	STEP "等接主功能表介面出來"
		
		REQUIRE(ui_is_show("panel_char", "SubPanel_Inventory"))
		
		EXIT_ON_FAIL()
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	STEP "使用符文"
	
		TURN_TO_PACKAGE_PAGE(2462, 2471, 2483, 2489, 10589)
		
		EXECUTE(delay(0.1))
		
		EASY_HIGHLIGHT_ONEOF_TAG({shape="square", arrow= true, text="甄姬：\n  技能符文在[E47833]擂臺商店裡[-]有賣，但要用擂臺榮譽值兌換！"}, {"panel_char", "PackageScrollView"}, "item_tid_", 2462, 2471, 2483, 2489, 10589)
			
	STEP "等tip介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "點擊使用"

		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  使用符文書後即可[E47833]開啟符文[-]！"}, "panel_itemtip_otheritem", "Btn_Type1")
	
	STEP "等接技能介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_skillmain"), delay(0.5))
	
	STEP "點擊第一個符文"
	
		EASY_HIGHLIGHT({shape="charhead", arrow= true, text="甄姬：\n  技能搭配[E47833]不同的符文[-]還會產生[E47833]不同玩法[-]，這就需要你在以後來慢慢探索了！"}, "panel_skillmain", "Group_Sign01_2")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (86)

-- def_guide (89)		--坐骑升阶

-- 	WAIT(host_level_between(45,45), ui_openpanel("panel_ride"), item_has(1182,5))

-- 	STEP "等坐骑界面出来"
	
-- 		EXECUTE(ui_forbid_click(), ui_wait_show("panel_ride"), delay(0))	
		
-- 	STEP "点升阶战按钮"
	
-- 		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_ride")
	
-- 		EASY_HIGHLIGHT({shape="skillup", arrow= true, text="貂蝉：\n  进阶坐骑可以大量[E47833]提升坐骑的属性[-]"}, "panel_ride", "Btn_GetUp")
		
-- 		LEAVE_FORCE_MODE()
		
-- 		ABORT_ON_FAIL()
		
-- 		FINISH()
		
-- end_guide (89)

def_guide (87)		--马具精炼	OK

	WAIT(func_is_unlocked("refine"), ui_openpanel("panel_ride"), item_has(1179,1), item_has(1180,1))
	WAIT(func_is_unlocked("refine"), ui_openpanel("panel_ride"), item_has(1174,1), item_has(1178,1))

	STEP "自動翻頁+等待坐騎介面出來"
		
		EXECUTE(switch_ride_page("refine"), ui_forbid_click(), delay(0))
		
	STEP "點擊自動放入按鈕"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_ride")
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  馬具的培養是通過[E47833]吞噬其他馬具[-]提升自身屬性！"}, "panel_ride", "Btn_Add_Automatic")

	STEP "點精煉"
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  所以平時獲得的馬具不要隨便賣店喲！"}, "panel_ride", "Btn_Refine")

end_guide (87)

def_guide (88)		--领悟天赋	OK

	WAIT(func_is_unlocked("tallent"), ui_openpanel("panel_tallent"))
	
	STEP "等接天賦介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0.2))
		
	STEP "點擊領悟按鈕"

		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  只需點擊一下就可以[E47833]開啟天賦[-]了，開啟天賦能給你[E47833]增加屬性[-]的！"}, "panel_tallent", "Btn_Up")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (88)

def_guide (89)		--神器炼星	OK

	WAIT(func_is_unlocked("starup"),item_has(590,1), ui_openpanel("panel_equip_exterior"))
		
	STEP "等接神器介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0.2))

	STEP "點擊煉星按鈕"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_equip_exterior")

		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  [E47833]煉星石[-]在[E47833]挑戰功能[-]裡有專門的副本可以得！"}, "panel_equip_exterior", "Btn_StarUp")

		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()		

end_guide (89)

def_guide (90)	--国战引导

	WAIT(ui_openpanel("panel_national_war_open"))
	
	STEP "等玩家點是"
	
		WAIT(ui_click("panel_national_war_open","Btn_Approve"))
		
		FINISH()
	
	STEP "等玩家在場景裡"
	
		WAIT(is_in_scene(5003))
		
		WAIT(is_in_scene(5005))

	STEP "等國戰按鈕出現"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_national_war_mini"), delay(0.2))
		
		ABORT_ON_FAIL()
	
	STEP "等接天賦介面出來"
	
		EXECUTE(delay(15))
	
	STEP "點國戰按鈕"	
	
		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  點擊打開[E47833]國戰地圖[-]！"}, "panel_national_war_mini", "Widget")
		
	STEP "等接國戰介面出來"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_national_war_info"), delay(0.2))
		
		ABORT_ON_FAIL()
	
	STEP "等接傳送按鈕出來"
	
		REQUIRE(ui_is_show("panel_national_war_info"))
		
		WAIT(ui_is_show("panel_national_war_info", "Btn_Transmit06"))
		
		ABORT_ON_FAIL()
	
	STEP "點傳送"
	
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  點擊[E47833]頭像[-]自動尋路！"}, "panel_national_war_info", "Btn_Npc06")
	
	STEP "關閉"
	
		EXIT()
		
	STEP "等玩家點否則關閉引導"
	
		C_WAIT(ui_click("panel_national_war_open","Btn_Refuse"))
		
		FINISH()
		
end_guide (90)

def_guide (91)	--种植

	WAIT(ui_openpanel("panel_quest_activitynew"), host_level_between(30,40))
	
	STEP "等接活動介面出來"
	
		EXECUTE(switch_activity_page(3), ui_forbid_click(), delay(0))
		
	STEP "點第三個活動"	
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_quest_activitynew", "panel_plant")
	
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  玩種植[E47833]獎勵體力[-]！沒錯！就是[E47833]獎勵體力[-]！"}, "panel_quest_activitynew", "Btn_AutoMove_1")
	
	STEP "等種植介面出來"	
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_plant"), delay(0.2))
		
	STEP "點種植"		

		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true, text="甄姬：\n  除了等待系統回復體力，種植體力果實也可以回復體力喲！"}, "panel_plant", "Group_Right_1", "Btn_Sow")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (91)

def_guide (92)	--合成封魔贴

	WAIT(host_level_between(26,40), item_has(878,5), ui_openpanel("panel_char"))
	
	STEP "等"
	
		EXECUTE(delay(1))
	
	STEP "等接主功能表介面出來"
		
		REQUIRE(ui_is_show("panel_char", "SubPanel_Inventory"))
		
		EXIT_ON_FAIL()
	
		EXECUTE(ui_forbid_click(), delay(0))
	
	STEP "點擊合成按鈕"

		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  封魔貼可以[E47833]合成[-]，合成後品質會變更高"}, "panel_char", "Btn_Combine")
		
		ABORT_ON_FAIL()

	STEP "等背包介面出來"

		C_WAIT(ui_openpanel("panel_item_combine"))
	
	STEP "使用封魔貼"

		TURN_TO_PACKAGE_PAGE(878)
		
		EXECUTE(delay(0.1))
		
		EASY_HIGHLIGHT_ONEOF_TAG({shape="square", layer="TOP", arrow= true, text="甄姬：\n  這裡顯示的道具都是可以合成的，[E47833]並且不會失敗[-]"}, {"panel_char", "PackageScrollView"}, "item_tid_", 878)
	
		ABORT_ON_FAIL()
	
	STEP "點擊合成按鈕"
	
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_item_combine", "Btn_Combine")
		
		ABORT_ON_FAIL()
		
		FINISH()	

end_guide (92)

def_guide (96)	--卡30级
	
	WAIT(task_openpanel("receive",528))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (96)

def_guide (97)	--卡35级
	
	WAIT(task_openpanel("receive",185))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (97)

def_guide (98)	--卡40级
	
	WAIT(task_openpanel("receive",206))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (98)

def_guide (99)	--卡45级
	
	WAIT(task_openpanel("receive",222))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (99)

def_guide (100)	--卡50级
	
	WAIT(task_openpanel("receive",237))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (100)

def_guide (101)	--卡55级
	
	WAIT(task_openpanel("receive",245))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (101)

def_guide (102)	--卡60级
	
	WAIT(task_openpanel("receive",123))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (102)

def_guide (103)	--卡65级
	
	WAIT(task_openpanel("receive",141))
	
	STEP "卡等級點活動的引導1"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升級？去看看[E47833]活動[-]吧，不但好玩還有各種豐厚獎勵喲"}, "panel_activity", "All")

end_guide (103)

def_guide (104)		--卡牌黑市

	WAIT(func_is_unlocked("carddarkshop"))

	STEP "等主介面出來"
	
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "點擊左上角角色信息"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn", "panel_menu","panel_card")
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  卡牌除了名將試煉以外，還可以用[E47833]虎符[-]在[E47833]黑市[-]裡購買！"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主功能表介面出來"
	
		EXECUTE(ui_forbid_click(), delay(0))
		
		C_WAIT(ui_is_show("panel_menu"))
		
	STEP "點擊卡片按鈕"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true }, "panel_menu", "Btn_Card")
	
	STEP "自動翻頁到第三頁"
	
		EXECUTE(switch_card_page(3), ui_forbid_click(), delay(0.5))
		
		C_WAIT(ui_is_show("panel_card"))
	
	STEP "買藍色卡牌包"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  想要[E47833]虎符[-]的話，就去挑戰[E47833]名將試煉[-]吧！"}, "panel_card", "Btn_Buy_1")

end_guide (104)

def_guide (105)		--临时背包提示
	
	WAIT(has_reward_to_receive())

	STEP "等主介面出來"
		
		WAIT(ui_is_show("panel_menuother"))

	STEP "展開右上角介面"

		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  背包滿了，擔心不能獲得新道具嗎？點擊這裡檢視[E47833]臨時背包[-]！"}, "panel_menuother", "Btn_Chance")
	
	STEP "等介面展開"

		EXECUTE(ui_forbid_click(), delay(0))
		
		C_WAIT(ui_is_show("panel_menuother", "Table"))

	STEP "提示臨時背包"
	
		EASY_HIGHLIGHT({shape="close", arrow= true, text="甄姬：\n  領取之前記得要清理背包喲！"}, "panel_menuother", "Btn_CommonReward")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (105)

def_guide (106)	--帮会庄园引导

	WAIT(is_in_scene(5002),ui_openpanel("panel_out"))
	
	STEP "點幫助按鈕"
	
		EASY_HIGHLIGHT({shape="close", arrow= true, text="甄姬：\n  點擊查看[E47833]莊園玩法說明[-]！"}, "panel_out", "Btn_Hit")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (106)

def_guide (200)

	WAIT(hostplayer_transform(9553))

	STEP "等技能介面"
	
		EXECUTE(ui_wait_show("panel_factioncarskill"), delay(0.2))
		
	STEP "瞄準"
		
		EASY_HIGHLIGHT({shape="xp", arrow= true, text="甄姬：\n  恭喜你在戰車營領取了[E47833]投石車[-]！點擊這裡進行[E47833]瞄準[-]"}, "panel_factioncarskill", "Skill02")
		
	STEP "等待"
		
		EXECUTE(delay(1))
	
	STEP "調整准心"
	
		EASY_HIGHLIGHT({shape="xp", arrow= true, text="甄姬：\n  [E47833]拖動搖杆[-]或者[E47833]點擊地面[-]進行瞄準，注意：准心為綠色才可以攻擊"}, "panel_joystick", "Widget")
		
	STEP "等"
		
		EXECUTE(ui_wait_show("panel_skill_common"), delay(0.2))
	
	STEP "發射"
		
		EASY_HIGHLIGHT({shape="xp", arrow= true, text="甄姬：\n  點擊這裡[E47833]發射[-]，距離[E47833]過近[-]或者[E47833]過遠[-]都是不能發射的喔"}, "panel_skill_common", "Skill_01")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide(200)








































































--[[

----------------------------------------------------------------------------------------------------------------------------
														-- 20级以后引导

def_guide (77)		--一键强到19

	C_REQUIRE_NOT(task_is_finished(64))
	WAIT(task_is_finished(644))
	
	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "检测身上是否有可以+19的装备，没有则引导关闭"
		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return item:IsUnderwear() and item.m_Essence._fixed_ess.grade < 19
			end)
		end))
		ABORT_ON_FAIL()
	
	STEP "点击左上角角色信息"
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn", "panel_menu","panel_equip_underwear")
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  你使用过[E47833]一键升级[-]了吗？"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击强化按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true}, "panel_menu", "Btn_Strength")
	
	STEP "等强化界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_underwear"), delay(0.1))
		
	STEP "选择一个可以+19的装备"
		REQUIRE(ui_is_show("panel_equip_underwear", "EquipItem", "GradeUpItem"))
		EASY_HIGHLIGHT_SCROLL_ITEM({force=true, force_time=2, shape="square", arrow= true}, {"panel_equip_underwear", "EquipItem"}, function ()
			local function pred (item)
				-- warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence.fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item:IsUnderwear() and item.m_Essence._fixed_ess.grade < 19
			end
			return find_underwear_to_enhance(pred)
		end)
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), delay(0))
		
	STEP "点击强化按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_underwear", "Btn_OnceGradeUp")
		LEAVE_FORCE_MODE()
		ABORT_ON_FAIL()
	
end_guide (77)

def_guide (78)		--装备进阶

	C_REQUIRE_NOT(task_is_finished(688))
	WAIT(task_has(687), item_has(2035, 5))
	
	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))	
	
	STEP "检测身上是否有可以进阶的装备，没有则引导关闭"
		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return item:IsUnderwear() and item.m_Essence._fixed_ess.grade == 19 and item:CurQuality() == 1
			end)
		end))
		ABORT_ON_FAIL()

	STEP "点击左上角角色信息"
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn", "panel_menu","panel_equip_underwear")
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  装备[E47833]要升阶啦！每20级升阶一次[-]"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击强化按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true}, "panel_menu", "Btn_Strength")
	
	STEP "等强化界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_underwear"), delay(0.1))
		
	STEP "选择一个可以进阶的装备"
		REQUIRE(ui_is_show("panel_equip_underwear", "EquipItem", "GradeUpItem"))
		EASY_HIGHLIGHT_SCROLL_ITEM({force=true, force_time=2, shape="square", arrow= true}, {"panel_equip_underwear", "EquipItem"}, function ()
			local function pred (item)
				-- warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence.fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item:IsUnderwear() and item.m_Essence._fixed_ess.grade == 19 and item:CurQuality() == 1
			end
			return find_underwear_to_enhance(pred)
		end)
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), delay(0))
		
	STEP "点击进阶按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_underwear", "Btn_SpecialGradeUp")
		LEAVE_FORCE_MODE()
		ABORT_ON_FAIL()
		
	-- STEP "关闭界面"
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_equip_underwear", "Btn_Close")
	-- 	FINISH()
	-- 	ABORT_ON_FAIL()
		
end_guide (78)

def_guide (79)		--使用封魔贴
	
	C_REQUIRE_NOT(task_is_finished(66))
	WAIT(task_has(66), item_has(2656, 1))
	
	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "点击左上角角色信息"
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_char","panel_itemtip_otheritem")
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  现在我们来说一下[E47833]封魔贴的使用[-]"}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击背包按钮"
		EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="sysskill", arrow= true, text="甄姬：\n  使用封魔贴后[E47833]会自动接到一个杀怪任务[-]，挂机即可完成，这就是[E47833]白送经验[-]"}, "panel_menu", "Btn_Inventory")
		
	STEP "等背包界面出来"
		C_WAIT(ui_openpanel("panel_char"))
	
	STEP "使用封魔贴"
		-- EXECUTE(ui_close_all_except("panel_char"))
		TURN_TO_PACKAGE_PAGE(2656)
		EXECUTE(delay(0.1))
		EASY_HIGHLIGHT_ONEOF_TAG({force="redirect", force_time=2, shape="square", arrow= true}, {"panel_char", "PackageScrollView"}, "item_tid_", 2656)
	
	STEP "等tip界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "点击使用"
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true}, "panel_itemtip_otheritem", "Btn_Type1")
		LEAVE_FORCE_MODE()
		
	-- STEP "关闭界面"
	-- 	FINISH()
	-- 	-- EXECUTE(ui_close_all_except("panel_char"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_char", "Btn_Close")
	-- 	ABORT_ON_FAIL()
		
end_guide (79)

def_guide (80)	--合成封魔贴
	
	C_REQUIRE_NOT(task_is_finished(67))
	WAIT(task_has(67), item_has(877, 5))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "点击左上角角色信息"
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_charhead","panel_menu","panel_char","panel_item_combine")
		EASY_HIGHLIGHT({shape="leftdown", arrow= true, text="甄姬：\n  封魔贴是可以[E47833]合成[-]的，合成后品质就变高了"}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击背包按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({shape="sysskill", arrow= true}, "panel_menu", "Btn_Inventory")

	STEP "等背包界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_char"), delay(0))	
	
	STEP "点击合成按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_char", "Btn_Combine")

	STEP "等背包界面出来"
		-- EXECUTE(ui_wait_show("panel_item_combine"), delay(0))
		C_WAIT(ui_openpanel("panel_item_combine"))
	
	STEP "使用封魔贴"
		-- EXECUTE(ui_close_all_except("panel_char"))
		TURN_TO_PACKAGE_PAGE(877)
		EXECUTE(delay(0.1))
		EASY_HIGHLIGHT_ONEOF_TAG({shape="square", arrow= true, text="甄姬：\n  这里显示的道具都是可以合成的，[E47833]统一都是5合1[-]，并且不会失败"}, {"panel_char", "PackageScrollView"}, "item_tid_", 877)
	
	STEP "点击合成按钮"
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_item_combine", "Btn_Combine")
		LEAVE_FORCE_MODE()
	
	-- STEP "关闭界面"
	-- 	FINISH()
	-- 	-- EXECUTE(ui_close_all_except("panel_char"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_char", "Btn_Close")
	-- 	ABORT_ON_FAIL()
		
end_guide (80)

def_guide (81)	--使用盗神令
	
	C_REQUIRE_NOT(task_is_finished(69))
	WAIT(task_has(659), item_has(2032, 1))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("panel_menubtn","panel_menu","panel_char","panel_itemtip_otheritem")
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击背包按钮"
		EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true}, "panel_menu", "Btn_Inventory")
		
	STEP "等背包界面出来"
		C_WAIT(ui_openpanel("panel_char"))
	
	STEP "使用盗神令"
		-- EXECUTE(ui_close_all_except("panel_char"))
		TURN_TO_PACKAGE_PAGE(2032)
		EXECUTE(delay(0.1))
		EASY_HIGHLIGHT_ONEOF_TAG({force="redirect", force_time=2, shape="square", arrow= true}, {"panel_char", "PackageScrollView"}, "item_tid_", 2032)
	
	STEP "等tip界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "点击使用"
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT({force="redirect", force_time=2, shape="square", arrow= true}, "panel_itemtip_otheritem", "Btn_Type1")
		LEAVE_FORCE_MODE()
		
	STEP "关闭界面"
		FINISH()
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_char", "Btn_Close")
		ABORT_ON_FAIL()
		
	-- STEP "点击左上角角色信息"
	-- 	EASY_HIGHLIGHT({shape="leftdown", arrow= true}, "panel_menubtn", "Toggle_Menu")	--, text="甄姬：\n  再点击一次展开按钮就会[E47833]收起主菜单[-]"
	-- 	-- WAIT(ui_is_show("panel_questminion", "QuestItem_1"))
	
	CLICK_TASK_GUIDE(1,"交任务前的寻路",false)
		
end_guide (81)

def_guide (82)		--宝石镶嵌

	C_REQUIRE_NOT(task_is_finished(521))
	WAIT(func_is_unlocked("attach"))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "检测身上是否有可以镶嵌的装备，没有则引导关闭"
		REQUIRE(if_true(function ()
			return find_equip(function (item)
				return item:IsUnderwear() and item:SlotCount() > 0 and item:GetGemTid(1) == 0
			end)
		end))
		ABORT_ON_FAIL()

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead", "panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  获得宝石之后就是要[E47833]镶嵌[-]了"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击强化按钮"
	
		-- EXECUTE(switch_underwear_page("attach"))
		
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  点击这里打开[E47833]装备界面[-]"}, "panel_menu", "Btn_Strength")
	
	STEP "等强化界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_underwear"), delay(0.1))
	
	STEP "选择镶嵌页签"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  选择[E47833]镶嵌[-]页签"}, "panel_equip_underwear", "Rdo2")
	
	STEP "等镶嵌界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_underwear"), delay(0))

	STEP "选择一个可以镶嵌的装备"
		REQUIRE(ui_is_show("panel_equip_underwear", "EquipItem", "AttachItem"))
		EASY_HIGHLIGHT_SCROLL_ITEM({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  只有[E47833]蓝色品质以上装备才可以镶嵌[-]，每件装备最多有4个孔，升阶后[E47833]自动开启[-]"}, {"panel_equip_underwear", "EquipItem"}, function ()
			local function pred (item)
				-- warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence.fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item:IsUnderwear() and item:SlotCount() > 0 and item:GetGemTid(1) == 0
			end
			return find_underwear_to_enhance(pred)
		end)
	
	STEP "点击首个宝石"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  镶嵌宝石是[E47833]有顺序[-]的，宝石列表里显示的都是[E47833]可镶嵌的宝石[-]"}, "panel_equip_underwear", "Group_Img_1")
		ABORT_ON_FAIL()
		
	-- STEP "关闭界面"
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_equip_underwear", "Btn_Close")
	-- 	FINISH()
	-- 	ABORT_ON_FAIL()

end_guide (82)

-- def_guide (83)		--英雄试炼

-- 	C_REQUIRE_NOT(task_is_finished(668))
-- 	WAIT(func_is_unlocked("herofight"))

-- 	STEP "等主界面出来"
-- 		WAIT(ui_is_show("panel_challenge"))

-- 	STEP "点击挑战按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_challenge"))
-- 		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]又有新玩法啦[-]！与三国时期的名将一决上下"}, "panel_challenge", "Btn_Challenge")
		
-- 	STEP "等挑战界面出来"
-- 		EXECUTE(ui_forbid_click(), ui_wait_show("panel_challengemain"), delay(0))

-- 	STEP "点击试炼按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  打赢名将会获得[E47833]丰厚奖励[-]"}, "panel_challengemain", "Btn_HeroFight")
	
-- 	STEP "等试炼界面出来"
-- 		EXECUTE(ui_forbid_click(), ui_wait_show("panel_herofight"), delay(0.2))
-- 		-- C_WAIT(ui_openpanel("panel_herofight"))
		
-- 	STEP "点击立即挑战"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_herofight", "Btn_Fight")
-- 		ABORT_ON_FAIL()
-- 		FINISH()
		
-- end_guide (83)

def_guide (83)		--英雄试炼

	WAIT(func_is_unlocked("herofight"), ui_openpanel("panel_herofight"))
	
	STEP "等试炼界面出来"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_herofight"), delay(0.2))
		
	STEP "点击立即挑战"
	
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  挑战三国名将[E47833]获得卡片[-]，激活卡片后可增加属性"}, "panel_herofight", "Btn_Fight")
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (83)

def_guide (84)		--加入派

	C_REQUIRE_NOT(if_true(function () return host_has_faction() end))
	
	WAIT(task_is_finished(668))

	STEP "等主界面出来"
	
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "点击左下角"
	
		ENTER_FORCE_MODE_AND_CLOSE_EXCEPT("leftdown", "panel_menu")
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  发现你还没有[E47833]加入帮会[-]"}, "panel_menubtn", "Toggle_Menu")	--
	
	STEP "等接主菜单界面出来"
	
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击帮派按钮"
	
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true, text="甄姬：\n  加入帮会不但有[E47833]好多兄弟[-]一起玩，还有更多[E47833]帮会玩法[-]"}, "panel_menu", "Btn_Faction")
		
		LEAVE_FORCE_MODE()
		
		ABORT_ON_FAIL()
		
		FINISH()
		
end_guide (84)

def_guide (85)		--神器炼星

	WAIT(func_is_unlocked("starup"),item_has(590,1))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  [E47833]神器开启了[-]！现在我们来提升神器属性"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0.2))
		
	STEP "点击神器按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  通过[E47833]炼星石[-]提升神器属性"}, "panel_menu", "Btn_Artifact")
	
	STEP "等接神器界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
		-- C_WAIT(ui_openpanel("panel_equip_exterior"))

	STEP "点击炼星按钮"
		-- EXECUTE(ui_close_all_except("panel_skillmain"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  装备的[E47833]炼星等级[-]越高，需要的[E47833]炼星石等级[-]也越高"}, "panel_equip_exterior", "Btn_StarUp")
		
	-- STEP "关闭界面"
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_equip_exterior", "Btn_Close")
	
	-- STEP "点击挑战按钮"
	-- 	EXECUTE(ui_close_all_except("panel_challenge"))
	-- 	EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  挑战[E47833]皇陵地宫[-]就可获得炼星石"}, "panel_challenge", "Btn_Challenge")
		
	-- STEP "等挑战界面出来"
	-- 	EXECUTE(ui_wait_show("panel_challengemain"), delay(0))
		
	-- STEP "点击组队副本按钮"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_challengemain", "Btn_Mausoleum")
	
	-- STEP "等组队副本出来"
	-- 	EXECUTE(ui_wait_show("panel_mausoleum"), delay(0.2))
		
	-- STEP "点击进入"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_mausoleum", "Group_Enter")
	-- 	ABORT_ON_FAIL()
	-- 	FINISH()

end_guide (85)

def_guide (86)		--悬赏

	-- WAIT(func_is_unlocked("questseriesnew"))
	WAIT(task_is_finished(669))
	
	STEP "等主界面出来"
		WAIT(ui_is_show("panel_challenge"))
	
	STEP "点击挑战按钮"
		-- EXECUTE(ui_close_all_except("panel_challenge"))
		EASY_HIGHLIGHT({force=true, force_time=1, shape="head", arrow= true, text="甄姬：\n  又有[E47833]新玩法[-]啦！"}, "panel_challenge", "Btn_Challenge")
		
	STEP "等挑战界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_challengemain"), delay(0))

	STEP "点击悬赏按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=1, shape="square", arrow= true, text="甄姬：\n  各式各样的有趣的任务玩法都在[E47833]悬赏玩法里[-]"}, "panel_challengemain", "Btn_QuestSeriesNew")
	
	STEP "等试炼界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_questseriesnew"), delay(0.2))
		-- C_WAIT(ui_openpanel("panel_questseriesnew"))
		
	STEP "点击接受任务"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=1, shape="square", arrow= true, text="甄姬：\n  就算没时间玩，只要[E47833]保持在线[-]也能完成任务"}, "panel_questseriesnew", "Btn_Accept")
		ABORT_ON_FAIL()
		FINISH()
		
	-- STEP "关闭界面"
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_questseriesnew", "Btn_Close")	
		
end_guide (86)

def_guide (87)		--神器洗炼

	WAIT(func_is_unlocked("refresh"),item_has(408,1))
	
	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  神器属性不好？没关系，现在可以[E47833]洗炼[-]了"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0.2))
		
	STEP "点击神器按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  使用[E47833]洗炼石[-]就可以对神器属性做洗炼了"}, "panel_menu", "Btn_Artifact")
	
	STEP "等神器界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
	
	STEP "点洗炼页签"
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_equip_exterior", "Rdo2")
	
	STEP "等洗炼界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
		ABORT_ON_FAIL()
		FINISH()
		-- C_WAIT(ui_openpanel("panel_equip_exterior"))
	
	STEP "点击洗炼按钮"
		-- EXECUTE(ui_close_all_except("panel_skillmain"))
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_equip_exterior", "Btn_Refresh")
		FINISH()
	
	-- STEP "点击保存按钮"
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_exterior", "Btn_Keep")
		
	-- STEP "关闭界面"
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({force=true, force_time=2, shape="close", arrow= true}, "panel_equip_exterior", "Btn_Close")
	
	-- STEP "点击挑战按钮"
	-- 	EXECUTE(ui_close_all_except("panel_challenge"))
	-- 	EASY_HIGHLIGHT({force=true, shape="head", arrow= true}, "panel_challenge", "Btn_Challenge")
		
	-- STEP "等挑战界面出来"
	-- 	EXECUTE(ui_wait_show("panel_challengemain"), delay(0))
		
	-- STEP "点击组队副本按钮"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_challengemain", "Btn_Mausoleum")
	
	-- STEP "等组队副本出来"
	-- 	EXECUTE(ui_wait_show("panel_mausoleum"), delay(0.2))
		
	-- STEP "点击进入"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_mausoleum", "Group_Enter")
	-- 	ABORT_ON_FAIL()
	-- 	FINISH()
	
end_guide (87)

def_guide (88)		--神器转移

	WAIT(func_is_unlocked("transfer"),item_has(1133,1))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  神器过时了？其实神器是可以[E47833]转移属性[-]的"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0.2))
		
	STEP "点击神器按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true}, "panel_menu", "Btn_Artifact")
	
	STEP "等神器界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
	
	STEP "点洗炼页签"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_exterior", "Rdo3")
	
	STEP "等洗炼界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
		
	STEP "点装备1"	
		REQUIRE(ui_is_show("panel_equip_exterior", "EquipItem", "TransferItem"))
		EASY_HIGHLIGHT_SCROLL_ITEM({force=true, force_time=2, shape="square", arrow= true}, {"panel_equip_exterior", "EquipItem"}, function ()
			local function pred (item)
				return item.tid == 1133
			end
			return find_exterior_to_enhance(pred)
		end)
		
	STEP "增加装备"
		REQUIRE(ui_is_show("panel_equip_exterior", "Group_Add"))
		EXECUTE(ui_highlight({force=true, force_time=2, shape="square", arrow= true}, "panel_equip_exterior", "Img_Add01"))
		WAIT(ui_click("panel_equip_exterior", "Group_Add"))
		ABORT_ON_FAIL()
	
	STEP "等洗炼界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equipchoose"), delay(0.2))
	
	STEP "选装备2"
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_equipchoose", "item_1", "Btn_Choose")
	
	STEP "等洗炼界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_equip_exterior"), delay(0.2))
		-- C_WAIT(ui_openpanel("panel_equip_exterior"))
		
	STEP "点转移"
		EASY_HIGHLIGHT({shape="square", arrow= true}, "panel_equip_exterior", "Btn_Transfer")	--, text="甄姬：\n  神器转移[E47833]不消耗道具[-]，想怎么洗就怎么洗"

	-- STEP "关闭界面"
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_equip_exterior", "Btn_Close")
	
	-- STEP "点击挑战按钮"
	-- 	EXECUTE(ui_close_all_except("panel_challenge"))
	-- 	EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  [E47833]又有新玩法啦[-]！想不想与三国时期的[E47833]名将[-]一决上下，现在就可以"}, "panel_challenge", "Btn_Challenge")
		
	-- STEP "等挑战界面出来"
	-- 	EXECUTE(ui_wait_show("panel_challengemain"), delay(0))
		
	-- STEP "点击组队副本按钮"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  打赢名将会获得[E47833]大量的道具奖励[-]"}, "panel_challengemain", "Btn_Mausoleum")
	
	-- STEP "等组队副本出来"
	-- 	EXECUTE(ui_wait_show("panel_mausoleum"), delay(0.2))
		
	-- STEP "点击进入"
	-- 	-- EXECUTE(ui_close_all_except("panel_menu"))
	-- 	EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  3！2！1！[E47833]开始挑战[-]"}, "panel_mausoleum", "Group_Enter")
	-- 	ABORT_ON_FAIL()
	-- 	FINISH()
	
end_guide (88)

def_guide (89)		--激活爵位技

	C_REQUIRE_NOT(task_is_finished(433))
	WAIT(func_is_unlocked("officer"))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead", "panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  鉴于你在天天城战里的优秀表现，GM大大要[E47833]封你爵位啦[-]"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击爵位按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  爵位可以[E47833]增加属性[-]，每日还能[E47833]领取俸禄[-]，除此之外还有[E47833]威力强大的爵位技[-]"}, "panel_menu", "Btn_Officer")
	
	STEP "等接爵位界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_officer"), delay(0))
		-- C_WAIT(ui_openpanel("panel_officer"))
	
	STEP "点击第一个技能"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]爵位技[-]会随着爵位提升而[E47833]自动解锁和升级[-]"}, "panel_officer", "Skill01")
	
	STEP "等tip界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_officer", "SSubPanel_SkillInof"), delay(0))
		
	STEP "点击使用按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  提升爵位需要[E47833]功勋值，通过国战，九龙鼎（体），刺探军情（体）等每日玩法获得[-]"}, "panel_officer", "Btn_Use")
	
	-- STEP "关闭界面"
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_officer", "Btn_Close")	--, text="甄姬：\n  点击[E47833]关闭界面[-]，后面还有很多玩法"
	-- 	FINISH()
	-- 	ABORT_ON_FAIL()
		
end_guide (89)

def_guide (90)		--使用+激活符文

	WAIT(task_is_finished(676), item_has(2462))
	WAIT(task_is_finished(676), item_has(2471))
	WAIT(task_is_finished(676), item_has(2483))
	WAIT(task_is_finished(676), item_has(2489))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n 现在我们就来[E47833]学习符文[-]玩法"}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击背包按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true, text="甄姬：\n  符文是[E47833]技能的新玩法[-]，装备不同符文[E47833]可以改变技能原有效果[-]"}, "panel_menu", "Btn_Inventory")
		
	STEP "等背包界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_char"), delay(0))
		-- C_WAIT(ui_openpanel("panel_char"))
	
	STEP "使用符文"
		TURN_TO_PACKAGE_PAGE(2462, 2471, 2483, 2489)
		EXECUTE(delay(0.1))
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT_ONEOF_TAG({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  不同的技能符文在[E47833]擂台商店里有卖[-]"}, {"panel_char", "PackageScrollView"}, "item_tid_", 2462, 2471, 2483, 2489)
			
	STEP "等tip界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_itemtip_otheritem"), delay(0))	

	STEP "点击使用"
		-- EXECUTE(ui_close_all_except("panel_char", "panel_itemtip_otheritem"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  兑换符文道具后[E47833]使用才能激活符文[-]"}, "panel_itemtip_otheritem", "Btn_Type1")
		
	STEP "关闭界面"
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="close", arrow= true, text="甄姬：\n  符文使用完了，现在我们去[E47833]激活符文[-]"}, "panel_char", "Btn_Close")
	
	STEP "点击技能按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="sysskill", arrow= true, text="甄姬：\n  点击这里[E47833]打开技能界面[-]"}, "panel_menu", "Btn_Skill")
	
	STEP "等接技能界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_skillmain"), delay(0.1))
		-- C_WAIT(ui_openpanel("panel_skillmain"))
	
	STEP "点击第二个技能"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="skillmain", arrow= true, text="甄姬：\n  选择技能，提示一下，[E47833]首个技能是没有符文的[-]"}, "panel_skillmain", "Group_Skill_2")
	
	STEP "等接技能界面打开"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_skillmain"), delay(0.1))
	
	STEP "点击第一个符文"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="charhead", arrow= true, text="甄姬：\n  [E47833]选中第一个符文[-]，这样技能效果就改变了"}, "panel_skillmain", "Group_Sign01_2")

	STEP "关闭界面"
		FINISH()
		-- EXECUTE(ui_close_all_except("panel_char"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="close", arrow= true, text="甄姬：\n  技能搭配[E47833]不同的符文[-]还会产生[E47833]不同玩法[-]，这就需要你在以后来慢慢探索了"}, "panel_skillmain", "Btn_Close")
	
	STEP "点击挑战按钮"
		EXECUTE(ui_close_all_except("panel_challenge"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  终于有机会[E47833]和敌国玩家PK了[-]"}, "panel_challenge", "Btn_Challenge")
		
	STEP "等挑战界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_challengemain"), delay(0))

	STEP "点击擂台按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  擂台是专门PK的地方，[E47833]打赢能获得荣誉值[-]，荣誉值能[E47833]换符文[-]"}, "panel_challengemain", "Btn_Arena")
	
	STEP "等擂台界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_arena"), delay(0.1))
		-- C_WAIT(ui_openpanel("panel_arena"))
		
	STEP "点击第一个挑战按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  准备好就[E47833]开始挑战[-]吧"}, "panel_arena", "Btn_Challenge")	-- "challenger00"
		ABORT_ON_FAIL()
		FINISH()
		
end_guide (90)

-- def_guide (90)		--使用酒

-- 	WAIT(task_is_finished(673), item_has(1159, 1))
	
-- 	STEP "点击左上角角色信息"
-- 		EXECUTE(ui_close_all_except("panel_charhead"))
-- 		EASY_HIGHLIGHT({force=true, shape="leftdown", arrow= true, text="甄姬：\n  之前学习了那么多玩法，是时候休息一下了，[E47833]来喝杯酒[-]"}, "panel_menubtn", "Toggle_Menu")
		
-- 	STEP "等接主菜单界面出来"
-- 		EXECUTE(ui_wait_show("panel_menu"), delay(0))
		
-- 	STEP "点击背包按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="sysskill", arrow= true, text="甄姬：\n  记得[E47833]美酒旁边必须有篝火[-]才行"}, "panel_menu", "Btn_Inventory")
		
-- 	STEP "等背包界面出来"
-- 		EXECUTE(ui_wait_show("panel_char"), delay(0))	
	
-- 	STEP "使用酒"
-- 		TURN_TO_PACKAGE_PAGE(1159)
-- 		EXECUTE(delay(0.1))
-- 		-- EXECUTE(ui_close_all_except("panel_char"))
-- 		EASY_HIGHLIGHT_ONEOF_TAG({force=true, shape="square", arrow= true, text="甄姬：\n  [E47833]喝酒可以加经验[-]，这时候只要坐下来就可以了"}, {"panel_char", "PackageScrollView"}, "item_tid_", 1159)
			
-- 	STEP "等tip界面出来"
-- 		EXECUTE(ui_wait_show("panel_itemtip_otheritem"), delay(0))	

-- 	STEP "点击使用"
-- 		-- EXECUTE(ui_close_all_except("panel_char", "panel_itemtip_otheritem"))
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  别忘了酒也是可以[E47833]合成[-]的，酒的品质越高经验越多"}, "panel_itemtip_otheritem", "Btn_Type1")
		
-- 	STEP "关闭界面"
-- 		FINISH()
-- 		-- EXECUTE(ui_close_all_except("panel_char"))
-- 		EASY_HIGHLIGHT({force=true, shape="close", arrow= true}, "panel_char", "Btn_Close")
-- 		ABORT_ON_FAIL()
		
-- 	STEP "喝酒"
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  使用酒之后点击喝酒才开始喝酒，[E47833]如果远离篝火，点喝酒还能寻路过来[-]"}, "panel_drink", "Btn_Sitdown")
-- 		ABORT_ON_FAIL()
		
-- end_guide (90)

-- def_guide (91)		--升级翅膀

-- 	WAIT(func_is_unlocked("wing"))

-- 	STEP "点击左上角角色信息"
-- 		EXECUTE(ui_close_all_except("panel_charhead", "panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="leftdown", arrow= true, text="甄姬：\n  终于到40级了！开启高级玩法[E47833]翅膀[-]"}, "panel_menubtn", "Toggle_Menu")
	
-- 	STEP "等接主菜单界面出来"
-- 		EXECUTE(ui_wait_show("panel_menu"), delay(0))
		
-- 	STEP "点击翅膀按钮"
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  [E47833]培养翅膀[-]不仅[E47833]可以提升属性[-]，[E47833]外观也会随之变化[-]"}, "panel_menu", "Btn_Wing")
	
-- 	STEP "等接翅膀界面出来"
-- 		EXECUTE(ui_wait_show("panel_wing"), delay(0))
	
-- 	STEP "点击第一个属性"
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  [E47833]选择[-]一项要提升的[E47833]属性[-]"}, "panel_wing", "AttriChoose01")
	
-- 	STEP "点击培养按钮"
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  [E47833]翅膀升阶符[-]通过每日[E47833]活动闯天关[-]获得"}, "panel_wing", "Btn_Train")
	
-- 	STEP "关闭界面"
-- 		EASY_HIGHLIGHT({force=true, shape="close", arrow= true, text="甄姬：\n  点击[E47833]关闭界面[-]，后面还有很多玩法"}, "panel_wing", "Btn_Close")
-- 		FINISH()
-- 		ABORT_ON_FAIL()
	
-- 	STEP "点击挑战按钮"
-- 		EXECUTE(ui_close_all_except("panel_challenge"))
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  接下来我们一起[E47833]闯天关[-]"}, "panel_challenge", "Btn_Challenge")
		
-- 	STEP "等挑战界面出来"
-- 		EXECUTE(ui_wait_show("panel_challengemain"), delay(0))
		
-- 	STEP "点击闯天关按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  每关都有[E47833]丰厚奖励[-]等你挑战"}, "panel_challengemain", "Btn_Pass")
	
-- 	STEP "等组队副本出来"
-- 		EXECUTE(ui_wait_show("panel_pass"), delay(0.2))
		
-- 	STEP "点击进入"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_pass", "Btn_Hand")
-- 		ABORT_ON_FAIL()
-- 		FINISH()
		
-- end_guide (91)

-- def_guide (92)		--坐骑精炼

-- 	WAIT(func_is_unlocked("refine"))

-- 	STEP "点击左上角角色信息"
-- 		EXECUTE(ui_close_all_except("panel_charhead", "panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="leftdown", arrow= true, text="甄姬：\n  你的坐骑[E47833]装备精炼[-]了吗"}, "panel_menubtn", "Toggle_Menu")
	
-- 	STEP "等接主菜单界面出来"
-- 		EXECUTE(ui_wait_show("panel_menu"), delay(0))

-- 	STEP "点击坐骑按钮"
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  通过[E47833]吞噬坐骑装备[-]而成长，没用的坐骑装备记得留着哟"}, "panel_menu", "Btn_Riding")
	
-- 	STEP "等坐骑界面出来"
-- 		EXECUTE(ui_wait_show("panel_ride"), delay(0))

-- 	STEP "点击精炼页签"
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_ride", "Rdo2")
	
-- 	STEP "点装备1"
	-- REQUIRE(ui_is_show("panel_ride", "EquipItem", "RefineItem"))
		
	-- 	EASY_HIGHLIGHT_SCROLL_ITEM({shape="square"}, {"panel_ride", "EquipItem"}, function ()
	-- 		local function pred (item)
	-- 			return item.tid == 2757
	-- 		end
	-- 		return find_horse_equip_to_enhance(pred)
	-- 	end)
	
-- 	STEP "点自动装备"
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true}, "panel_ride", "Btn_Add_Automatic")

-- 	STEP "点精炼"
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  坐骑精炼[E47833]不消耗道具[-]，各种极品属性等你创造"}, "panel_ride", "Btn_Refine")
	
-- 	STEP "关闭界面"
-- 		FINISH()
-- 		EASY_HIGHLIGHT({force=true, shape="close", arrow= true}, "panel_ride", "Btn_Close")
-- 		ABORT_ON_FAIL()
		
-- end_guide (92)

def_guide (91)		--坐骑升阶

	WAIT(task_is_finished(678),item_has(1182,5))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))

	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="貂蝉：\n  是时候把[E47833]坐骑提升一下能力[-]了"}, "panel_menubtn", "Toggle_Menu")
		
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0))
		
	STEP "点击坐骑按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="貂蝉：\n  坐骑培养需要[E47833]炼魂符[-]，炼魂符可以在日常玩法[E47833]除暴安良获得[-]"}, "panel_menu", "Btn_Riding")
	
	STEP "等坐骑界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_ride"), delay(0))	
		-- C_WAIT(ui_openpanel("panel_ride"))
		
	STEP "点升阶战按钮"
		EASY_HIGHLIGHT({force=true, force_time=2, shape="skillup", arrow= true, text="貂蝉：\n  进阶坐骑可以大量[E47833]提升坐骑的属性[-]"}, "panel_ride", "Btn_GetUp")

	-- STEP "关闭界面"
	-- 	FINISH()
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_ride", "Btn_Close")
	-- 	ABORT_ON_FAIL()

end_guide (91)

def_guide (93)		--领悟天赋

	WAIT(func_is_unlocked("tallent"))

	STEP "等主界面出来"
		WAIT(ui_is_show("panel_menubtn"))
	
	STEP "点击左上角角色信息"
		-- EXECUTE(ui_close_all_except("panel_charhead"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="leftdown", arrow= true, text="甄姬：\n  是时候该教你[E47833]激活天赋了[-]"}, "panel_menubtn", "Toggle_Menu")
	
	STEP "等接主菜单界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_menu"), delay(0.2))
		
	STEP "点击天赋按钮"
		-- EXECUTE(ui_close_all_except("panel_menu"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="head", arrow= true, text="甄姬：\n  [E47833]玩果树得韬略，韬略激活天赋[-] ！要记得啊"}, "panel_menu", "Btn_Talent")
	
	STEP "等接天赋界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_tallent"), delay(0.2))
		-- C_WAIT(ui_openpanel("panel_tallent"))
		
	STEP "点击领悟按钮"
		-- EXECUTE(ui_close_all_except("panel_skillmain"))
		EASY_HIGHLIGHT({force=true, force_time=2, shape="square", arrow= true, text="甄姬：\n  只需点击一下就可以[E47833]激活天赋[-]了，激活天赋能给你[E47833]增加属性[-]的"}, "panel_tallent", "Btn_Up")
		
	-- STEP "关闭界面"
	-- 	FINISH()
	-- 	-- EXECUTE(ui_close_all_except("panel_skillmain"))
	-- 	EASY_HIGHLIGHT({shape="close", arrow= true}, "panel_tallent", "Btn_Close")
	-- 	ABORT_ON_FAIL()

end_guide (93)

def_guide (94)
	
	C_REQUIRE_NOT(task_is_finished(102))
	WAIT(task_openpanel("receive",102))
	
	STEP "卡等级点活动的引导1"
		-- EXECUTE(ui_close_all_except("panel_npcquest"))
		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升级？去看看[E47833]活动[-]吧，不但好玩还有各种丰厚奖励哟"}, "panel_activity", "All")

end_guide (94)

def_guide (95)
	
	C_REQUIRE_NOT(task_is_finished(528))
	WAIT(task_openpanel("receive",528))

	STEP "卡等级点活动的引导2"
		-- EXECUTE(ui_close_all_except("panel_npcquest"))
		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  想不想快速升级？去看看[E47833]活动[-]吧，不但好玩还有各种丰厚奖励哟"}, "panel_activity", "All")

end_guide (95)

def_guide (96)	--国战引导

	WAIT(ui_openpanel("panel_national_war_open"))
	
	STEP "等玩家点是"
		WAIT(ui_click("panel_national_war_open","Btn_Approve"))
		FINISH()
	
	STEP "等玩家在场景里"
		WAIT(is_in_scene(5003))
		WAIT(is_in_scene(5005))

	STEP "等国战按钮出现"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_national_war_mini"), delay(0.2))
	
	STEP "等接天赋界面出来"
		EXECUTE(delay(15))
	
	STEP "点国战按钮"	
		EASY_HIGHLIGHT({shape="head", arrow= true, text="甄姬：\n  点击打开[E47833]国战地图[-]，查看活动进度"}, "panel_national_war_mini", "Widget")
		
	STEP "等接国战界面出来"
		EXECUTE(ui_forbid_click(), ui_wait_show("panel_national_war_info"), delay(0.2))
		ABORT_ON_FAIL()
	
	STEP "等接传送按钮出来"
		REQUIRE(ui_is_show("panel_national_war_info"))
		WAIT(ui_is_show("panel_national_war_info", "Btn_Transmit06"))
		ABORT_ON_FAIL()
	
	STEP "点传送"
		EASY_HIGHLIGHT({shape="square", arrow= true, text="甄姬：\n  点击[E47833]传送[-]直接飞到目标身边。也可以点击[E47833]头像[-]寻路过去"}, "panel_national_war_info", "Btn_Transmit06")
	
	STEP "关闭"
		EXIT()
		
	STEP "等玩家点否则关闭引导"
		C_WAIT(ui_click("panel_national_war_open","Btn_Refuse"))
		FINISH()
		
end_guide (96)

-- def_guide (83)		--擂台挑战

-- 	C_REQUIRE_NOT(task_is_finished(81))
-- 	WAIT(func_is_unlocked("challenge"))

-- 	STEP "点击挑战按钮"
-- 		EXECUTE(ui_close_all_except("panel_challenge"))
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  终于有机会[E47833]和敌国玩家PK了[-]"}, "panel_challenge", "Btn_Challenge")
		
-- 	STEP "等挑战界面出来"
-- 		EXECUTE(ui_wait_show("panel_challengemain"), delay(0))

-- 	STEP "点击擂台按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  擂台是专门PK的地方，[E47833]打赢能获得荣誉值[-]，荣誉值能[E47833]换符文[-]"}, "panel_challengemain", "Btn_Arena")
	
-- 	STEP "等擂台界面出来"
-- 		EXECUTE(ui_wait_show("panel_arena"), delay(0.1))
		
-- 	STEP "点击第一个挑战按钮"
-- 		-- EXECUTE(ui_close_all_except("panel_menu"))
-- 		EASY_HIGHLIGHT({force=true, shape="square", arrow= true, text="甄姬：\n  准备好就[E47833]开始挑战[-]吧"}, "panel_arena", "Btn_Challenge")	-- "challenger00"
-- 		ABORT_ON_FAIL()
-- 		FINISH()
		
-- end_guide (83)

-- def_guide (94)		--坐骑升阶

-- 	C_REQUIRE_NOT(task_is_finished(529))
-- 	-- WAIT(task_openpanel("receive_prompt",529))
-- 	WAIT(task_has(529))

-- 	STEP "点击左上角角色信息"
-- 		EXECUTE(ui_close_all_except("panel_charhead"))
-- 		EASY_HIGHLIGHT({force=true, shape="leftdown", arrow= true, text="甄姬：\n  是时候把[E47833]坐骑提升一下能力[-]了"}, "panel_menubtn", "Toggle_Menu")
		
-- 	STEP "等接主菜单界面出来"
-- 		EXECUTE(ui_wait_show("panel_menu"), delay(0))
		
-- 	STEP "点击坐骑按钮"
-- 		EASY_HIGHLIGHT({force=true, shape="head", arrow= true, text="甄姬：\n  坐骑培养需要[E47833]进阶符[-]，进阶符可以在日常玩法[E47833]除暴安良获得[-]"}, "panel_menu", "Btn_Riding")
	
-- 	STEP "等坐骑界面出来"
-- 		EXECUTE(ui_wait_show("panel_ride"), delay(0))	
		
-- 	STEP "点击出战按钮"
-- 		EASY_HIGHLIGHT({force=true, shape="skillup", arrow= true, text="甄姬：\n  进阶坐骑可以大量[E47833]提升坐骑的属性[-]"}, "panel_ride", "Btn_GetUp")

-- 	STEP "关闭界面"
-- 		FINISH()
-- 		EASY_HIGHLIGHT({force=true, shape="close", arrow= true, text="甄姬：\n  点击[E47833]关闭界面[-]，后面还有很多玩法"}, "panel_ride", "Btn_Close")
-- 		ABORT_ON_FAIL()

-- end_guide (94)

-- def_guide (87)		--坐骑精炼

-- 	C_REQUIRE_NOT(task_is_finished(529))
-- 	-- WAIT(task_openpanel("receive_prompt",529))
-- 	WAIT(task_has(529))

]]