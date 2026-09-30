--[[
	定义指引用到的宏
]]

def_guide (0)

	function env.EASY_HIGHLIGHT (style, ...)
		REQUIRE(ui_is_show(...))
		EXECUTE(ui_highlight(style, ...))
		WAIT(ui_click(...))
	end
	
	local function EASY_HIGHLIGHT_ONEOF (style, ...)
		EXECUTE(ui_highlight_oneof(style, ...))
		WAIT(ui_click_oneof(...))
	end
	
	--[[
		强制高亮scrollView中的项，会卷动到合适的位置
		param scrollViewPos: scrollView 的位置
		param ...: 项的位置
	]]
	local function EASY_HIGHLIGHT_SCROLL_ITEM_EX (style, scrollViewPos, ...)
		EXECUTE(ui_highlight_scrollitem(style, scrollViewPos, ...))
		WAIT(ui_click_oneof(...))
	end

	--[[
		高亮有标记的项
		param parent: parent 的位置
		param posAndPrefix: 项上的标记，如 item_tid_，或 {"AttachItem", "item_tid_"}
		param ...: id (可有一个或多个)
	]]
	function env.EASY_HIGHLIGHT_ONEOF_TAG (style, parent, posAndPrefix, ...)
		local itemPosArray = {}
		for i = 1, select("#", ...) do
			local id = select(i, ...)
			
			local pos = {unpack(parent)}
			pos[#pos+1] = posAndPrefix .. tostring(id)
			pos[#pos+1] = ".."
			
			itemPosArray[#itemPosArray+1] = pos
		end
		
		REQUIRE(ui_is_show(unpack(parent)))
		EASY_HIGHLIGHT_ONEOF(style, unpack(itemPosArray))
		WAIT(ui_click_oneof(unpack(itemPosArray)))
	end
	

	--[[
		高亮scrollView中有标记的项，会卷动到合适的位置
		param scrollViewPos: scrollView 的位置
		param posAndPrefix: 项上的标记，或 {"AttachItem", "item_tid_"}
		param ...: id (可有一个或多个)
	]]
	function env.EASY_HIGHLIGHT_SCROLL_ITEM_WITH_TAG (style, scrollViewPos, posAndPrefix, ...)
		local itemPosArray = {}
		for i = 1, select("#", ...) do
			local id = select(i, ...)
			
			local pos = {unpack(scrollViewPos)}
			if type(posAndPrefix) == "string" then
				pos[#pos+1] = posAndPrefix .. tostring(id)
			else
				for iPos = 1, #posAndPrefix-1 do
					pos[#pos+1] = posAndPrefix[iPos]
				end
				pos[#pos+1] = posAndPrefix[#posAndPrefix] .. tostring(id)	--最后一个是 prefix
			end
			pos[#pos+1] = ".."
			
			itemPosArray[#itemPosArray+1] = pos
		end
		
		EASY_HIGHLIGHT_SCROLL_ITEM_EX(style, scrollViewPos, unpack(itemPosArray))
	end

	----------------------------------------------------------------
	
	--return unpack(t), ...
	local function combine (t, ...)
		local ret = {}
		for i = 1, #t do
			ret[#ret+1] = t[i]
		end
		for i = 1, select("#", ...) do
			ret[#ret+1] = select(i, ...)
		end
		return ret
	end
	
	local function makeFullPos (scrollViewPos, ...)
		if select("#", ...) == 1 and type(select(1, ...)) == "function" then
			local posFunc = select(1, ...)
			return {function ()
				return unpack(combine(scrollViewPos, posFunc()))
			end}
		else
			return combine(scrollViewPos, ...)
		end
	end

	--[[
		高亮scrollView中的项，会卷动到合适的位置
		param scrollViewPos: scrollView 的位置
		param ...: 项的位置
	]]
	function env.EASY_HIGHLIGHT_SCROLL_ITEM (style, scrollViewPos, ...)
		EASY_HIGHLIGHT_SCROLL_ITEM_EX(style, scrollViewPos, makeFullPos(scrollViewPos, ...))
	end
	
	
	----------------------------------------------------------------
	
	--[[
		在内装强化界面中找到合适的强化装备
		param pred: 判定函数
			function pred (equipItemData)
				返回 true 表示合适
		return: 装备控件名 (从ScrollView 开始，不含)
	]]
	function env.find_underwear_to_enhance (pred)
		local ECPanelEquipUnderwear = require "GUI.ECPanelEquipUnderwear"
		local panel = ECPanelEquipUnderwear.Instance()
		
		local listName = panel:GetCurrentEquipListName()
		local itemList = panel:GetCurrentEquipList()
		
		for iItem, itemWrapper in ipairs(itemList) do
			local itemData = itemWrapper.itemHandle:Get()
			if itemData and pred(itemData) then
				return listName, ("Item%02d"):format(iItem)
			end
		end
		return "_item_not_found"
	end
	
	function env.can_underwear_gradeup (item)
		local ECPanelEquipUnderwear = require "GUI.ECPanelEquipUnderwear"
		return ECPanelEquipUnderwear.Instance():CanGradeUp(item)
	end
	
	function env.can_underwear_attach (item)
		local ECPanelEquipUnderwear = require "GUI.ECPanelEquipUnderwear"
		return ECPanelEquipUnderwear.Instance():CanAttachAnyGemInPackage(item)
	end
	
	--[[
		在兵甲强化界面中找到合适的强化装备
		param pred: 判定函数
			function pred (equipItemData)
				返回 true 表示合适
		return: 装备控件名 (从ScrollView 开始，不含)
	]]
	function env.find_exterior_to_enhance (pred)
		local ECPanelEquipExterior = require "GUI.ECPanelEquipExterior"
		local panel = ECPanelEquipExterior.Instance()
		
		local listName = panel:GetCurrentEquipListName()
		local itemList = panel:GetCurrentEquipList()
		
		for iItem, itemWrapper in ipairs(itemList) do
			local itemData = itemWrapper.itemHandle:Get()
			if itemData and pred(itemData) then
				return listName, ("Item%02d"):format(iItem)
			end
		end
		return "_item_not_found"
	end
	
	--[[
		在马具强化界面中找到合适的强化装备
		param pred: 判定函数
			function pred (equipItemData)
				返回 true 表示合适
		return: 装备控件名 (从ScrollView 开始，不含)
	]]
	function env.find_horse_equip_to_enhance (pred)
		local ECPanelRide = require "GUI.ECPanelRide"
		local panel = ECPanelRide.Instance()
		
		local listName = panel:GetCurrentEquipListName()
		local itemList = panel:GetCurrentEquipList()
		
		for iItem, itemWrapper in ipairs(itemList) do
			local itemData = itemWrapper.itemHandle:Get()
			if itemData and pred(itemData) then
				return listName, ("Item%02d"):format(iItem)
			end
		end
		return "_item_not_found"
	end

	--[[
		在装备包裹中找到合适的装备
		param pred: 判定函数
			function pred (equipItemData)
				返回 true 表示合适
		return 1: found (true/false)
		return 2: index
		return 3: itemData
	]]
	function env.find_equip (pred)
		local ECGame = require "Main.ECGame"
		local pack = ECGame.Instance().m_HostPlayer.Package.EquipPack
		for index, itemData in pairs(pack.m_ItemSet) do 
			if pred(itemData) then
				return true, index, itemData
			end
		end
		return false, 0, nil
	end
	
	function env.host_has_faction ()
		local ECGame = require "Main.ECGame"
		local host = ECGame.Instance().m_HostPlayer
		return host and host.InfoData.Faction ~= 0
	end
	
	--[[
		切换内装页签
	]]
	local l_pageMap = { gradeup = 1, attach = 2 }
	function env.switch_underwear_page (page)
		return function ()
			local iPage = l_pageMap[page]
			if iPage then
				local ECPanelEquipUnderwear = require "GUI.ECPanelEquipUnderwear"
				ECPanelEquipUnderwear.Instance():SwitchPage(iPage)
			else
				warn("invalid switch_underwear_page page:", page)
			end
			return true
		end
	end
	
	--[[
		切换外装页签
	]]
	local l_pageMap = { starup = 1, refresh = 2, transfer = 3 }
	function env.switch_exterior_page (page)
		return function ()
			local iPage = l_pageMap[page]
			if iPage then
				local ECPanelEquipExterior = require "GUI.ECPanelEquipExterior"
				ECPanelEquipExterior.Instance():SwitchPage(iPage)
			else
				warn("invalid switch_exterior_page page:", page)
			end
			return true
		end
	end
	
	--[[
		切换马具页签
	]]
	local l_pageMap = { attribute = 1, refine = 2 }
	function env.switch_ride_page (page)
		return function ()
			local iPage = l_pageMap[page]
			if iPage then
				local ECPanelRide = require "GUI.ECPanelRide"
				ECPanelRide.Instance():SwitchPage(iPage)
			else
				warn("invalid switch_ride_page page:", page)
			end
			return true
		end
	end
	
	--[[
		切换翅膀页签
	]]
	local l_pageMap = { train = 1, surface = 2 }
	function env.switch_wing_page (page)
		return function ()
			local iPage = l_pageMap[page]
			if iPage then
				local ECPanelEquipWing = require "GUI.ECPanelEquipWing"
				ECPanelEquipWing.Instance():SwitchPage(iPage)
			else
				warn("invalid switch_wing_page page:", page)
			end
			return true
		end
	end
	
	--[[
		切换组队副本页签
	]]
	function env.switch_mausoleum_page (iPage)
		return function ()
			local ECPanelMausoleum = require "GUI.ECPanelMausoleum"
			ECPanelMausoleum.Instance():SwitchPage(iPage)
			return true
		end
	end
	
	--[[
		切换活动页签	--活动类型:1=经验、2=金钱、3=变强
	]]
	function env.switch_activity_page (iPage)
		return function ()
			local ECPanelActivityNew = require "GUI.ECPanelActivityNew"
			ECPanelActivityNew.Instance():SwitchPage(iPage)
			return true
		end
	end
	
	--[[
		切换任务追踪页签, page: "task", "team"
	]]
	function env.switch_task_guide_page (page)
		return function ()
			local ECPanelTaskGuide = require "GUI.ECPanelTaskGuide"
			ECPanelTaskGuide.Instance():SwitchPage(page)
			return true
		end
	end
	
	--[[
		切换任务追踪页签, page:
		local PANEL_MAIN = 0
		local PANEL_CARD_COLLECT = 1
		local PANEL_BAG = 2
		local PANEL_DARK_SHOP = 3
	]]
	function env.switch_card_page (page)
		return function ()
			local ECPanelCard = require "GUI.ECPanelCard"
			ECPanelCard.Instance():SwitchPage(page)
			return true
		end
	end
	
	--[[
		指引玩家点击任务寻径
		param index: 点击第几个寻径
		param name(可选): 自定义步骤名
	]]
	function env.CLICK_TASK_GUIDE (index, name, arrow)
		local name = name and name .. "_" or ""
		if arrow == nil then arrow = true end
		
		STEP(name .. "已接任務")
			WAIT(ui_is_show("panel_questminion"))
		
		STEP(name .. "點任務按鈕")
			EXECUTE(switch_task_guide_page("task"))
		
		STEP(name .. "等尋路任務介面出來")
			EXECUTE(ui_wait_show("panel_questminion", "QuestItem_"..index), delay(0), delay(0))
		
		STEP(name .. "尋路")
			EXECUTE(ui_highlight({shape="quest", arrow= arrow}, "panel_questminion", "QuestItem_"..index))
			WAIT(ui_click("panel_questminion", "QuestItem_"..index))
	end
	
	--[[
		指引玩家点击任务寻径
		param task_id: 任务id
		param name(可选): 自定义步骤名
	]]
	function env.CLICK_TASK_GUIDE_BY_ID (task_id, name)
		local name = name and name .. "_" or ""
		
		STEP(name .. "已接任務")
			WAIT(ui_is_show("panel_questminion"))
		
		STEP(name .. "點任務按鈕")
			EXECUTE(switch_task_guide_page("task"))
		
		STEP(name .. "等尋路任務介面出來")
			EXECUTE(ui_wait_show("panel_questminion", "task_id_"..task_id, ".."), delay(0), delay(0))
		
		STEP(name .. "尋路")
			EXECUTE(ui_highlight({shape="quest", arrow= true}, "panel_questminion", "task_id_"..task_id, ".."))
			WAIT(ui_click("panel_questminion", "task_id_"..task_id, ".."))
	end
	
	--[[
		把背包翻到有物品的页
		param ...: 一个或多个 tid
	]]
	function env.TURN_TO_PACKAGE_PAGE (...)
		local tids = {...}
		EXECUTE(function ()
			local ECPanelChar = require "GUI.ECPanelChar"
			local packagePage = ECPanelChar.Instance().m_PackagePage
			return packagePage:FindOneOfItemAndTurnToPage(tids, 1000, false)
		end)
	end

	function env.wait_for_panel_open_tween (panel_name)
		return delay(0.1 + 0.1)
	end

	--等待窗口打开动画播完
	function env.WAIT_FOR_PANEL_OPEN_TWEEN (panel_name, bForbidClick)
		STEP("等待窗口打開動畫播完：" .. panel_name)
			if bForbidClick then
				EXECUTE(ui_forbid_click())
			end
			EXECUTE(wait_for_panel_open_tween(panel_name))
	end
end_guide (0)

--[[
def_guide (10001)
	WAIT (host_has_buff(14))
	
	STEP "1"
		EASY_HIGHLIGHT({shape="square"}, "panel_charhead", "ImgHead")
	STEP "2"
		EASY_HIGHLIGHT({shape="square"}, "panel_charhead", "ImgHead")
	STEP "2"
		EXECUTE(delay(0.1))
	STEP "4"
		EASY_HIGHLIGHT_SCROLL_ITEM({shape="square"}, {"panel_questminion", "SubPanel_QuestMinion", "Scroll View"}, {"panel_questminion", "task_id_007", ".."}, {"panel_questminion", "task_id_338", ".."})
		
end_guide (10001)

--测试高亮强化物品
def_guide (10002)
	WAIT (host_has_buff(14))
	
	STEP "1"
		EASY_HIGHLIGHT({shape="square"}, "panel_charhead", "ImgHead")
	STEP "2"
		EASY_HIGHLIGHT({shape="square"}, "panel_charhead", "ImgHead")
	STEP "2"
		EXECUTE(delay(0.1))
	STEP "4"
		EASY_HIGHLIGHT_SCROLL_ITEM_WITH_TAG({shape="square"}, {"panel_equip_underwear", "EquipItem"}, {"GradeUpItem", "item_tid_"}, 10001, 10002, 2042, 10003)
	STEP "5"
		EASY_HIGHLIGHT_SCROLL_ITEM_WITH_TAG({shape="square"}, {"panel_equip_underwear", "EquipItem"}, "item_tid_", 10001, 10002, 2042, 10003)
end_guide (10002)

--测试高亮强化物品(高级)
def_guide (10102)
	WAIT (host_has_buff(14))
	
	STEP "1"
		EASY_HIGHLIGHT({shape="square"}, "debuginput", "showlog")
	STEP "2"
		EASY_HIGHLIGHT_SCROLL_ITEM({shape="square"}, {"panel_equip_underwear", "EquipItem"}, function ()
			local function pred (item)
				warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence._fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item.tid == 2042
			end
			return find_underwear_to_enhance(pred)
		end)
	STEP "3"
		EASY_HIGHLIGHT({shape="square"}, "debuginput", "showlog")
	STEP "4"
		EASY_HIGHLIGHT_SCROLL_ITEM({shape="square"}, {"panel_equip_exterior", "EquipItem"}, function ()
			local function pred (item)
				warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence._fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item.tid == 1995
			end
			return find_exterior_to_enhance(pred)
		end)
	STEP "5"
		EASY_HIGHLIGHT({shape="square"}, "debuginput", "showlog")
	STEP "8"
		EASY_HIGHLIGHT_SCROLL_ITEM({shape="square"}, {"panel_ride", "EquipItem"}, function ()
			local function pred (item)
				warn(("item, tid = %d, grade = %d, quality = %d, holes = %d, gems[1] = %d"):format(item.tid, item.m_Essence._fixed_ess.grade, item:CurQuality(), item:SlotCount(), item:GetGemTid(1)))
				return item.tid == 1404
			end
			return find_horse_equip_to_enhance(pred)
		end)
end_guide (10102)

--测试查找物品
def_guide (10202)
	WAIT (host_has_buff(14))
	
	STEP "1"
		REQUIRE(if_true(function ()
			return find_equip(function (itemData)
				return itemData:IsUnderwear()
			end)
		end))
		ABORT_ON_FAIL()
		
	STEP "2"
		EASY_HIGHLIGHT({force=true, shape="round"}, "panel_charhead", "ImgHead")
	
	STEP "3"
		EASY_HIGHLIGHT({force=true, shape="square"}, "panel_charhead", "ImgHead")
	
end_guide (1001)

--测试高亮包裹物品
def_guide (10003)
	WAIT (host_has_buff(14))
	
	STEP "1"
		EASY_HIGHLIGHT({shape="square"}, "debuginput", "showlog")
	STEP "2"
		TURN_TO_PACKAGE_PAGE(10001, 10002, 2042, 10003)
		EXECUTE(delay(0.1))
		EASY_HIGHLIGHT_ONEOF_TAG({shape="square"}, {"panel_char", "PackageScrollView"}, "item_tid_", 10001, 10002, 2042, 10003)
end_guide (10003)

--测试设置页签
def_guide (10004)
	WAIT (host_has_buff(14))
	WAIT (host_level_between(100, 200))
	
	STEP "0"
		EXECUTE(switch_underwear_page("attach"))
		EXECUTE(switch_exterior_page("refresh"))
		EXECUTE(switch_ride_page("refine"))
		EXECUTE(switch_wing_page("surface"))
		EXECUTE(switch_mausoleum_page(2))
		EXECUTE(switch_activity_page(2))
		
		EASY_HIGHLIGHT({shape="square"}, "panel_charhead", "ImgHead")
		
end_guide (10004)

--测试
def_guide (1001)
	WAIT (host_has_buff(14))
	WAIT (host_level_between(100, 200))
	
	STEP "1"
		EASY_HIGHLIGHT({force=true, shape="square"}, "panel_charhead", "ImgHead")
	
	STEP "2"
		EASY_HIGHLIGHT({shape="square"}, "panel_menubtn", "Toggle_Menu")
	
end_guide (1001)

--测试
def_guide (1002)
	WAIT (ui_openpanel("panel_setting"))
	
	WAIT_FOR_PANEL_OPEN_TWEEN("panel_setting", false)
	
	STEP "1"
		EASY_HIGHLIGHT({force=false, shape="square", arrow=true, text="hello"}, "panel_setting", "Range_02")
	
end_guide (1002)
]]
