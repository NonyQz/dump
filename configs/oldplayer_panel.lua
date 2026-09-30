local isInGameClient = true

local l_configs = {}

local l_subpanels = {}

function l_configs:wait_activity(activity_id, cb)
	local ECGame = require "Main.ECGame"
	local ActivityEvents = require "Event.ActivityEvents"
	ECGame.EventManager:addHandler(ActivityEvents.ActivityOpenEvent, function (sender, event)
		if event.id == activity_id then
			cb()
		end
	end)
	
	ECGame.EventManager:addHandler(ActivityEvents.ActivityCloseEvent, function (sender, event)
		if event.id == activity_id then
			cb()
		end
	end)
	ECGame.EventManager:addHandler(ActivityEvents.ActivityInfoInit, function (sender, event)
		cb()
	end)	
	
end





--config subpanels
function l_configs:addSubPanel(name)
	return function (config)
		l_subpanels[name] = config
	end
end

--活动是否开放
function l_configs:check_activity(activity_id)
	if not isInGameClient then
		return false
	end
	local ECActivityInfo = require "Social.ECActivityInfo"
	return ECActivityInfo.IsOpen(activity_id)
end
--转换到日期
--[[
local date = os.date("*t",t)
local year = date.year
local month = date.month --(1--12)
local day = date.day --(1-31)
local hour = date.hour --(0-23)
local min = date.min --(0-59)
local sec = date.sec
local wday = date.wday --(weekday, Sunday is 1)
]]
--活动开始和结束时间，单位秒
function l_configs:get_activitytime(activity_id)
	local ECActivityInfo = require "Social.ECActivityInfo"
	local info = ECActivityInfo.GetStateInfo(activity_id)
	if info then
		return info.opentime, info.endtime
	else
		return 0, 0
	end
end

function l_configs:get_activitytime_des(activity_id)
	local ECActivityInfo = require "Social.ECActivityInfo"
	local info = ECActivityInfo.GetStateInfo(activity_id)
	if info then
		local opentime,endtime = info.opentime, info.endtime
		local dateopen = os.date("*t", opentime)
		local dateclose = os.date("*t", endtime)
		return string.format("%4d/%02d/%02d %02d:%02d - %4d/%02d/%02d %02d:%02d",
			dateopen.year, dateopen.month, dateopen.day, dateopen.hour, dateopen.min,
			dateclose.year, dateclose.month, dateclose.day, dateclose.hour, dateclose.min)
	else
		return ""
	end
end

function l_configs:host_gender()
	local ECGame = require "Main.ECGame"
	return ECGame.Instance().m_HostPlayer.InfoData.Gender
end

function l_configs:host_vip_level()
	local ECGame = require "Main.ECGame"
	local hp = ECGame.Instance().m_HostPlayer
	if hp == nil then
		return 0
	end
	local vip_info = hp.m_VipInfo
	if vip_info == nil then
		return 0
	end
	if vip_info.cur_vip_level > MAX_VIP_LEVEL then 
		vip_info.cur_vip_level = MAX_VIP_LEVEL 
	end
	return vip_info.cur_vip_level
end

function l_configs:host_fight()
	local ECGame = require "Main.ECGame"
	local hp = ECGame.Instance().m_HostPlayer
	if hp == nil then
		return 0
	end
	local InfoData = hp.InfoData
	local FightData = InfoData.FightData
	return FightData.FightValue
end

function l_configs:host_level()
	local ECGame = require "Main.ECGame"
	local hp = ECGame.Instance().m_HostPlayer
	if hp == nil then
		return 0
	end
	local InfoData = hp.InfoData
	return math.min(InfoData.Lv,_G.MAXLEVEL)
end

function l_configs:set_visible(panel, path, visible)
	local ECGUITools = require "GUI.ECGUITools"
	ECGUITools.setVisible(panel:FindDirect(path), visible)
end

function l_configs:set_enable(panel, path, enable)
	local ECGUITools = require "GUI.ECGUITools"
	ECGUITools.setEnable(panel:FindChild(path), enable)
end

function l_configs:set_Sprite(panel, path, name)
	panel:FindDirect(path):GetComponent("UISprite").spriteName = string.format("%02d", name)
end

function l_configs:set_text_and_color(panel, path, text, color)
	local ECGUITools = require "GUI.ECGUITools"
	ECGUITools.setTextAndColor(panel:FindDirect(path), text, color)
end

function l_configs:can_accept_task(taskId)
	return (require "Task.ECTaskInterface".CanDeliverTask(taskId)) == 0
end

function l_configs:set_item(panel, path, tid)
	if not isInGameClient then
		return
	end
	local ECIvtrUIUtility = require "Utility.ECIvtrUIUtility"
    ECIvtrUIUtility.SetIconEx2(panel:FindDirect(path), tid, 1)
end
function l_configs:set_icon(pic,tid)
	if not isInGameClient then
		return
	end
	local ECUIUtility = require "Utility.ECUIUtility"
	ECUIUtility.SetIconByPathId(pic, tid)
end

function l_configs:check_host_lv(minLv,maxLv)
	local ECGame = require "Main.ECGame"
	local hp = ECGame.Instance().m_HostPlayer
	if not hp then return false end
	local hostLv = hp.InfoData.Lv
	return (hostLv >=minLv and (maxLv==0 or hostLv <= maxLv)) and true or false
end


function l_configs:check_valid(obj)
	if not obj or obj.isnil then
		return false
	end
	return true
end

function l_configs:formatTime(n_seconds)
	local mi = 60
	local hi = mi * 60
	local di = hi * 24
	local days = math.floor(n_seconds/di)
	local hours = math.floor((n_seconds-days*di)/hi)
	local minutes = math.floor((n_seconds-days*di-hours*hi)/mi)
	local seconds = math.floor(n_seconds-days*di-hours*hi-minutes*mi)
 	return {day=days,hour=hours,min=minutes,sec=seconds,}
end


function l_configs:is_task_completed(taskId)
	local alreadyCount, _, totalCount = require "Task.ECTaskInterface".GetTaskFinishCountInfo(taskId)
	return alreadyCount >= totalCount
end
--dt:计时器间隔
--cb:计时回调函数, 返回true继续计时，否则移除计时器
--eg：
--[[
l_configs:timer_update(1, function()
	l_configs:set_text_and_color(obj, "20:08")
end)
]]
function l_configs:timer_update(dt, cb)
	local timer
	timer = GameUtil.AddGlobalTimer(dt, false, function()
		if cb then
			if not cb() then
				GameUtil.RemoveGlobalTimer(timer)
				timer = 0
			end
		else
			GameUtil.RemoveGlobalTimer(timer)
			timer = 0 
		end
	end)
end

--[[-------------------------------------------
	respath 	---->	界面prefab 名字
	needshow 	---->	界面是否显示
						bool:	是否
						function: 执行结果作为显示与否
	groupItems	---->	从界面上读取 item id, 并显示相应图标
	click 		---->	点击事件处理
	update 		---->	界面更新函数
	create_panel---->	新建界面
]]
----------------------------配置子界面---------------------------------------------

--贵族福利
l_configs:addSubPanel("Rtn_Vip")
{
	configid = 7822,--配置模板id
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Vip or "",
	needshow = function() return l_configs:check_activity(8482) end,

	update = function (self, cfgid)
		-- 显示活动时间
		local str = l_configs:get_activitytime_des(8482)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(self.m_panel:FindDirect("Gound_Bg/Txt_Activitytime"), str)

		local EC = require "Types.Vector3"
		local ElementData = require "Data.ElementData"
		local ECSelfDataInfo = require "Data.ECSelfDataInfo"

		local curval = l_configs:host_vip_level()
		local actval = ECSelfDataInfo.Instance().sharecode_vip_level

		--当前vip等级
		l_configs:set_Sprite(self.m_panel, "Group_Title/Img_VipLevel_Now", curval)
		--激活vip等级
		l_configs:set_Sprite(self.m_panel, "Group_Title/Img_VipLevel_Welfare", actval)

		--奖励列表
		local scroll_view = self.m_panel:FindChild("Scroll View"):GetComponent("UIScrollView")
     	scroll_view:ResetPosition()

     	local pages_node = self.m_panel:FindDirect("Scroll View/Grid")
     	local page_template = pages_node:FindDirect("Day01")
     	page_template:SetActive(false)
     	page_template.localPosition = EC.Vector3.new(0, 0, 0)

     	local data = ElementData.getConfig(cfgid)
		if data == nil then
			return
		end
		local level_count = data.level_count  

		local cangetindex = 1
     	self.status_tab = {}

		local hasmaxstep = ECSelfDataInfo.Instance():ReceivedMaxStep(data.level_configs[1].level_type)
		local startstep = math.min(hasmaxstep+1,level_count-2)

		local i = 1
		for index = startstep, level_count do
			local page_name = string.format("info%02d", i)
        	local cur_page = pages_node:FindChild(page_name)
        	if not cur_page then
            	local page = page_template:Instantiate() 
				page.parent = pages_node
				page.name = page_name

				page.localScale = EC.Vector3.one
				page.localPosition = page_template.localPosition + EC.Vector3.new(210, 0, 0) * (i - 1)
				cur_page = page
        	end
          	cur_page:SetActive(true)
          	self.m_msgHandler:Touch(cur_page)

          	self.idx_step_tab[i] = index

          	local stepval = data.level_configs[index].level_value
          	local steptype = data.level_configs[index].level_type

          	--档位vip等级
			l_configs:set_Sprite(cur_page, "Img_VipLevel_Welfare", stepval)
		    --奖励
		    l_configs:set_item(cur_page, "Gound_Item", ECSelfDataInfo.Instance():GetRewardItem(data.level_configs[index].reward_id))

		    --领奖状态
		    local received = ECSelfDataInfo.Instance():IsReceived(steptype, index)
		    if received then
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", true)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
		    	l_configs:set_enable(cur_page, "Btn_Input", false)
		    else
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", false)

		    	if stepval > curval then --无法领取
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", true)
		    		l_configs:set_enable(cur_page, "Btn_Input", false)
		    	else
			    	if stepval <= actval then --免费领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		self.status_tab[index] = 1
			    	else                      --钻石领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		l_configs:set_text_and_color(cur_page, "Btn_Input/Txt_NeedMoney", data.level_configs[index].buy_price, nil)
			    		self.status_tab[index] = 2
			    	end
			    	l_configs:set_enable(cur_page, "Btn_Input", true)
			    	if cangetindex == 1 then
			    		cangetindex = i
			    	end
			    end
		    end
		    i = i+1
		end

		local delstart = math.max(level_count-hasmaxstep+1,4)
		for i = delstart, level_count do
			local page_name = string.format("info%02d", i)
			local cur_page = pages_node:FindChild(page_name)
			if cur_page ~= nil then
				cur_page:Destroy()
			end
		end

		local grid_ui = pages_node:GetComponent("UIGrid")
		local checkTimer = GameUtil.AddGlobalTimer(0.1, true, function() 
			if self.m_panel and not self.m_panel.isnil then
				grid_ui:DragToMakeVisible(cangetindex-1,1000)
			end
	 		GameUtil.RemoveGlobalTimer(checkTimer)
		end)
	
	end,

	--gifttype-福利类型：vip=1;fight=2;level=3;time=4;
	click = {
		Btn_Input = {gifttype = 1,  name = "",     },
		Gound_Item = {gifttype = 1, name = "tips", },
	},
	
	badgeupdate = function()
		if not isInGameClient then
			return 0,""
		end
		return 1,"Widget/ScrollView_RewardList/Grid/Rtn_Vip/Gound_Tab/badge"
	end,
}


--战力福利
l_configs:addSubPanel("Rtn_Power")
{
	configid = 7659,--配置模板id
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Power or "",
	needshow = function() return l_configs:check_activity(8483) end,

	update = function (self, cfgid)
	
			-- 显示活动时间
		local str = l_configs:get_activitytime_des(8483)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(self.m_panel:FindDirect("Gound_Bg/Txt_Activitytime"), str)
		
		
		local EC = require "Types.Vector3"
		local ElementData = require "Data.ElementData"
		local ECSelfDataInfo = require "Data.ECSelfDataInfo"

		local curval = math.floor(l_configs:host_fight()/10000)
		local str = string.format(StringTable.Get(301507), curval)
		if curval == 0 then
			str = tostring(l_configs:host_fight())
		end

		local actval = ECSelfDataInfo.Instance().sharecode_fight/10000

		--当前v战力
		l_configs:set_text_and_color(self.m_panel, "Group_Title/Txt_Level_Now", str)
		--激活战力
		l_configs:set_text_and_color(self.m_panel, "Group_Title/Img_Level_Welfare", string.format(StringTable.Get(301507), actval))

		     	local pages_node = self.m_panel:FindDirect("Scroll View/Grid")
     	local page_template = pages_node:FindDirect("Day01")
     	page_template:SetActive(false)
     	page_template.localPosition = EC.Vector3.new(0, 0, 0)

     	local data = ElementData.getConfig(cfgid)
		if data == nil then
			return
		end
		local level_count = data.level_count  

		local cangetindex = 1
     	self.status_tab = {}

		local hasmaxstep = ECSelfDataInfo.Instance():ReceivedMaxStep(data.level_configs[1].level_type)
		local startstep = math.min(hasmaxstep+1,level_count-2)

		local i = 1
		for index = startstep, level_count do
			local page_name = string.format("info%02d", i)
        	local cur_page = pages_node:FindChild(page_name)
        	if not cur_page then
            	local page = page_template:Instantiate() 
				page.parent = pages_node
				page.name = page_name

				page.localScale = EC.Vector3.one
				page.localPosition = page_template.localPosition + EC.Vector3.new(210, 0, 0) * (i - 1)
				cur_page = page
        	end
          	cur_page:SetActive(true)
          	self.m_msgHandler:Touch(cur_page)

          	self.idx_step_tab[i] = index

          	local stepval = math.floor(data.level_configs[index].level_value/10000)
          	local steptype = data.level_configs[index].level_type

          	--档位战力
			l_configs:set_text_and_color(cur_page, "Txt_Level_Welfare", string.format(StringTable.Get(301507), stepval))

		    --奖励
		    l_configs:set_item(cur_page, "Gound_Item", ECSelfDataInfo.Instance():GetRewardItem(data.level_configs[index].reward_id))

		    --领奖状态
		    local received = ECSelfDataInfo.Instance():IsReceived(steptype, index)
		    if received then
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", true)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
		    	l_configs:set_enable(cur_page, "Btn_Input", false)
		    else
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", false)

		    	if stepval > curval then --无法领取
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", true)
		    		l_configs:set_enable(cur_page, "Btn_Input", false)
		    	else
			    	if stepval <= actval then --免费领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		self.status_tab[index] = 1
			    	else                      --钻石领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		l_configs:set_text_and_color(cur_page, "Btn_Input/Txt_NeedMoney", data.level_configs[index].buy_price, nil)
			    		self.status_tab[index] = 2
			    	end
			    	l_configs:set_enable(cur_page, "Btn_Input", true)
			    	if cangetindex == 1 then
			    		cangetindex = i
			    	end
			    end
		    end
		    i = i+1
		end

		local delstart = math.max(level_count-hasmaxstep+1,4)
		for i = delstart, level_count do
			local page_name = string.format("info%02d", i)
			local cur_page = pages_node:FindChild(page_name)
			if cur_page ~= nil then
				cur_page:Destroy()
			end
		end

		local grid_ui = pages_node:GetComponent("UIGrid")
		local checkTimer = GameUtil.AddGlobalTimer(0.1, true, function() 
			if self.m_panel and not self.m_panel.isnil then
				grid_ui:DragToMakeVisible(cangetindex-1,1000)
			end
	 		GameUtil.RemoveGlobalTimer(checkTimer)
		end)
	
	end,

	--gifttype-福利类型：vip=1;fight=2;level=3;time=4;
	click = {
		Btn_Input = {gifttype = 2,  name = "",     },
		Gound_Item = {gifttype = 2, name = "tips", },
	},

	badgeupdate = function()
		if not isInGameClient then
			return 0,""
		end

		return 2,"Widget/ScrollView_RewardList/Grid/Rtn_Power/Gound_Tab/badge"
	end,
}

--等级福利
l_configs:addSubPanel("Rtn_Level")
{
	configid = 7827,--配置模板id
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Level or "",
	needshow = function() return l_configs:check_activity(8484) end,
	update = function (self, cfgid)
	
		-- 显示活动时间
		local str = l_configs:get_activitytime_des(8484)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(self.m_panel:FindDirect("Gound_Bg/Txt_Activitytime"), str)
		
		
		local EC = require "Types.Vector3"
		local ElementData = require "Data.ElementData"
		local ECSelfDataInfo = require "Data.ECSelfDataInfo"

		local curval = math.floor(l_configs:host_level())
		local actval = ECSelfDataInfo.Instance().sharecode_level

		--当前等级
		l_configs:set_text_and_color(self.m_panel, "Group_Title/Txt_Level_Now", curval)
		--激活等级
		l_configs:set_text_and_color(self.m_panel, "Group_Title/Img_Level_Welfare", string.format(StringTable.Get(301508), actval))

		--奖励列表
		local scroll_view = self.m_panel:FindChild("Scroll View"):GetComponent("UIScrollView")
     	scroll_view:ResetPosition()


     	local pages_node = self.m_panel:FindDirect("Scroll View/Grid")
     	local page_template = pages_node:FindDirect("Day01")
     	page_template:SetActive(false)
     	page_template.localPosition = EC.Vector3.new(0, 0, 0)

     	local data = ElementData.getConfig(cfgid)
		if data == nil then
			return
		end
		local level_count = data.level_count  

		local cangetindex = 1
     	self.status_tab = {}

		local hasmaxstep = ECSelfDataInfo.Instance():ReceivedMaxStep(data.level_configs[1].level_type)
		local startstep = math.min(hasmaxstep+1,level_count-2)

		local i = 1
		for index = startstep, level_count do
			local page_name = string.format("info%02d", i)
        	local cur_page = pages_node:FindChild(page_name)
        	if not cur_page then
            	local page = page_template:Instantiate() 
				page.parent = pages_node
				page.name = page_name

				page.localScale = EC.Vector3.one
				page.localPosition = page_template.localPosition + EC.Vector3.new(210, 0, 0) * (i - 1)
				cur_page = page
        	end
          	cur_page:SetActive(true)
          	self.m_msgHandler:Touch(cur_page)

          	self.idx_step_tab[i] = index

          	local stepval = data.level_configs[index].level_value
          	local steptype = data.level_configs[index].level_type

          	--档位战力
			l_configs:set_text_and_color(cur_page, "Txt_Level_Welfare", string.format(StringTable.Get(301508), stepval))

		    --奖励
		    l_configs:set_item(cur_page, "Gound_Item", ECSelfDataInfo.Instance():GetRewardItem(data.level_configs[index].reward_id))

		    --领奖状态
		    local received = ECSelfDataInfo.Instance():IsReceived(steptype, index)
		    if received then
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", true)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
		    	l_configs:set_enable(cur_page, "Btn_Input", false)
		    else
		    	l_configs:set_visible(cur_page, "Btn_Input/Txt_OverGet", false)

		    	if stepval > curval then --无法领取
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
		    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", true)
		    		l_configs:set_enable(cur_page, "Btn_Input", false)
		    	else
			    	if stepval <= actval then --免费领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		self.status_tab[index] = 1
			    	else                      --钻石领取
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Free", false)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_NeedMoney", true)
			    		l_configs:set_visible(cur_page, "Btn_Input/Txt_Condition", false)
			    		l_configs:set_text_and_color(cur_page, "Btn_Input/Txt_NeedMoney", data.level_configs[index].buy_price, nil)
			    		self.status_tab[index] = 2
			    	end
			    	l_configs:set_enable(cur_page, "Btn_Input", true)
			    	if cangetindex == 1 then
			    		cangetindex = i
			    	end
			    end
		    end
		    i = i+1
		end

		local delstart = math.max(level_count-hasmaxstep+1,4)
		for i = delstart, level_count do
			local page_name = string.format("info%02d", i)
			local cur_page = pages_node:FindChild(page_name)
			if cur_page ~= nil then
				cur_page:Destroy()
			end
		end

		local grid_ui = pages_node:GetComponent("UIGrid")
		local checkTimer = GameUtil.AddGlobalTimer(0.1, true, function() 
			if self.m_panel and not self.m_panel.isnil then
				grid_ui:DragToMakeVisible(cangetindex-1,1000)
			end	
	 		GameUtil.RemoveGlobalTimer(checkTimer)
		end)
	
	end,

	--gifttype-福利类型：vip=1;fight=2;level=3;time=4;
	click = {
		Btn_Input = {gifttype = 3,  name = "",     },
		Gound_Item = {gifttype = 3, name = "tips", },
	},

	badgeupdate = function()
		if not isInGameClient then
			return 0,""
		end

		return 3,"Widget/ScrollView_RewardList/Grid/Rtn_Level/Gound_Tab/badge"
	end,
}

--限时冲级
l_configs:addSubPanel("Rtn_LimitLevel")
{
	configid = 8470,--配置模板id
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_LimitLevel or "",
	needshow = function() return l_configs:check_activity(8485) end,

	update = function (self, cfgid)
	
				-- 显示活动时间
		local str = l_configs:get_activitytime_des(8485)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(self.m_panel:FindDirect("Gound_Bg/Txt_Activitytime"), str)	
	
	
		local EC = require "Types.Vector3"
		local ElementData = require "Data.ElementData"
		local ECSelfDataInfo = require "Data.ECSelfDataInfo"

		if not isInGameClient then return end
		if not l_configs:check_valid(self.m_panel) then
			return
		end

		local sharecode_level = ECSelfDataInfo.Instance().sharecode_level
		local limit_step = ECSelfDataInfo.Instance().limit_step
		local limit_time = ECSelfDataInfo.Instance().limit_time  --最近一次限时领奖的时间
		local limit_level = ECSelfDataInfo.Instance().limit_level--最近一次限时领奖的等级

		local data = ElementData.getConfig(cfgid)
		if data == nil then
			return 
		end

		local level_count = data.level_count 

		--已领的档位
		local finishmaxstep = ECSelfDataInfo.Instance():GetFinishStep(cfgid)
		if finishmaxstep < 0 then
			return
		end
		--超时的档位
		local outstep = ECSelfDataInfo.Instance():GetTimeoutStep(cfgid)

		if finishmaxstep == level_count or outstep == level_count then
			l_configs:set_visible(self.m_panel, "Btn_Input", false)
			l_configs:set_visible(self.m_panel, "Group_OverReward", true)
		else
			l_configs:set_visible(self.m_panel, "Btn_Input", true)
			l_configs:set_visible(self.m_panel, "Group_OverReward", false)
		end

		local step = math.max(outstep, finishmaxstep)
		step = math.min(step+1, oldplayer_step_max)

		--warn("555555", finishmaxstep, step, outstep, limit_step)

		local stepval = data.level_configs[step].level_value
		local steptype = data.level_configs[step].level_type
      	local reward_id = data.level_configs[step].reward_id
      	local expiration = data.level_configs[step].expiration
      	--warn("666666", stepval, limit_level, sharecode_level)

		local function show_cooldown(tleft)
			local tdate = l_configs:formatTime(tleft) --
			local str = StringTable.Get(301509):format(tdate.day, tdate.hour, tdate.min, tdate.sec)
			l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", str, nil)
			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", true)
		end

		local function tickfun()
			if not isInGameClient then return false end
			if not l_configs:check_valid(self.m_panel) then
				return false
			end

			local endtime = limit_time + expiration
			local tcur = GameUtil.GetServerGMTTime() --当前服务器时间
			local tleft = endtime - tcur
			--warn("--------------", tleft, endtime, tcur)

			if tleft < 0 then
				show_cooldown(0)
				l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)
				return false
			end
			show_cooldown(tleft)
			return true
		end

		local function show_rewarditem(reward_id)
			local RewardData, dataType = ElementData.getConfig(reward_id)
			if RewardData == nil then
				return
			end
			self.rewards = {}
			--奖励
			for i = 1, 5 do
				local itemid = RewardData.items[i].id
				self.rewards[i] = itemid
				if itemid > 0 then
		   			l_configs:set_item(self.m_panel, "Group_Item/Item0"..i, itemid)
		   			l_configs:set_visible(self.m_panel, "Group_Item/Item0"..i, true)
		   		else
		   			l_configs:set_visible(self.m_panel, "Group_Item/Item0"..i, false)
		   		end
			end
		end

      	--等级
		l_configs:set_text_and_color(self.m_panel, "Group_Title/Label_VipTitle", string.format(StringTable.Get(301508), stepval))

		local host_val = l_configs:host_level()
		if stepval < host_val then
			local status = ECSelfDataInfo.Instance():GetLimitStatus(steptype, step)
    		--warn("1111:", status, step, outstep)
    		if status == 1 then
    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)
    		else
				tickfun()
				l_configs:timer_update(1, tickfun)
			end
			
			l_configs:set_enable(self.m_panel, "Btn_Input", true)
			l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))
					    
		    l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", true)
    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", false)
    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
    		l_configs:set_enable(self.m_panel, "Btn_Input", true)

    		show_rewarditem(reward_id)
    	elseif host_val == stepval then
    		local status = ECSelfDataInfo.Instance():GetLimitStatus(steptype, step)
    		--warn("1234:", status, step, outstep)
    		if status == 1 then
				l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)

				l_configs:set_enable(self.m_panel, "Btn_Input", true)
				l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))
						    
			    l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", true)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
	    		l_configs:set_enable(self.m_panel, "Btn_Input", true)

    			show_rewarditem(reward_id)
    		elseif status == 2 then
    			tickfun()
				l_configs:timer_update(1, tickfun)

				l_configs:set_enable(self.m_panel, "Btn_Input", true)
				l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))
						    
			    l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", true)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
	    		l_configs:set_enable(self.m_panel, "Btn_Input", true)

    			show_rewarditem(reward_id)
    		end

		elseif host_val < stepval then
			local status = ECSelfDataInfo.Instance():GetLimitStatus(steptype, step)
			--warn("---------------status:outstep", status,outstep, step)
			if status == 0 then
				if outstep > 0 then
					local outval = data.level_configs[math.max(outstep,1)].level_value

					l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))

		    		show_rewarditem(reward_id)

		    		l_configs:set_enable(self.m_panel, "Btn_Input", false)

		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", false)
		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)

		    		local del = math.abs(host_val-outval) --当前等级达到超时等级
		    		--warn("1213-----del:", del, host_val, outval, stepval)
		    		if host_val < outval then
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)
		    			l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_NextGift", string.format(StringTable.Get(301514), outval), nil)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", true)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", false)		    		
		    		elseif host_val == outval then
		    			tickfun()
						l_configs:timer_update(1, tickfun)
		    			l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_Condition", string.format(StringTable.Get(301513), math.abs(host_val-stepval)), nil)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", true)
		    		else
		    			tickfun()
						l_configs:timer_update(1, tickfun)
		    			l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_Condition", string.format(StringTable.Get(301513), math.abs(host_val-stepval)), nil)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
		    			l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", true)		    		
		    		end
		    	else
					tickfun()
					l_configs:timer_update(1, tickfun)
					l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))

		    		show_rewarditem(reward_id)

		    		l_configs:set_enable(self.m_panel, "Btn_Input", false)

		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", false)
		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", true)
		    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
		    		l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_Condition", string.format(StringTable.Get(301513), math.abs(host_val-stepval)), nil)
		    	end
	    	elseif status == 1 then
				l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)
				l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))

	    		show_rewarditem(reward_id)

	    		l_configs:set_enable(self.m_panel, "Btn_Input", false)

	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", false)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", true)
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
	    		l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_Condition", string.format(StringTable.Get(301513), math.abs(host_val-stepval)), nil)

	    	elseif status == 2 then --超时
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition/Txt_LimitTime", false)
	    		l_configs:set_text_and_color(self.m_panel, "Btn_Input/Txt_NextGift", string.format(StringTable.Get(301514), stepval), nil)

				
				local nextstep = math.min(step+1, oldplayer_step_max)
				stepval = data.level_configs[nextstep].level_value
      			reward_id = data.level_configs[nextstep].reward_id
				if stepval > 0 then
					l_configs:set_text_and_color(self.m_panel, "Group_Title/Label_VipTitle", string.format(StringTable.Get(301508), stepval))
					l_configs:set_text_and_color(self.m_panel, "Gound_Bg/Txt_Instructions", string.format(StringTable.Get(301510), stepval))
				end
				if reward_id > 0 then
					show_rewarditem(reward_id)
				end

				l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Free", false)
		    	l_configs:set_visible(self.m_panel, "Btn_Input/Txt_NextGift", true)
		    	l_configs:set_visible(self.m_panel, "Btn_Input/Txt_Condition", false)		    		
	    		l_configs:set_visible(self.m_panel, "Btn_Input/Txt_OverGet", false)
	    		l_configs:set_enable(self.m_panel, "Btn_Input", false)

	    	end

		end

		self.curstep = step
		
	end,

	--gifttype-福利类型：vip=1;fight=2;level=3;time=4;
	click = {
		Btn_Input = {gifttype = 4,  name = "", },
	},
	
		badgeupdate = function()
		if not isInGameClient then
			return 0,""
		end
		return 4,"Widget/ScrollView_RewardList/Grid/Rtn_LimitLevel/Gound_Tab/badge"
	end,
}

--老兵商店
--l_configs:addSubPanel("Rtn_Shop")
--{
--	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Shop or "",
--	needshow = function() return l_configs:check_activity(7319) end,
--}

--好友邀请
l_configs:addSubPanel("Rtn_Invite")
{
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Invite or "",
	needshow = function() return l_configs:check_activity(8480) and require "Data.ECSelfDataInfo".Instance():CanInvitOther() end,

	update = function (self, cfgid)
		local ECSelfDataInfo = require "Data.ECSelfDataInfo"
	    local datainfo = ECSelfDataInfo.Instance()
	    if datainfo.invit_sharecode_type ~= 2 then
	        return
	    end

	    local txt_code = self.m_panel:FindDirect("Group_Input/Input"):GetComponent("UIInput")
	    if datainfo.invit_sharecode == "" then --没有激活码
	        txt_code:set_value(StringTable.Get(301500))
	    else
	        txt_code:set_value(datainfo.invit_sharecode)
	    end
	
	end,

	click = {
		Btn_FriendInput = function(self, sender)
			self:ApplyActivityCode()
		end,
	},
}

--福利说明
l_configs:addSubPanel("Rtn_Info")
{
	respath = isInGameClient and RESPATH.SubPanel_OldPlayerGift_Info or "",
	needshow = function() return l_configs:check_activity(8480) end,
	
	update = function (self, cfgid)
					-- 显示活动时间
		local str = l_configs:get_activitytime_des(8480)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(self.m_panel:FindDirect("Gound_Bg/Txt_Activitytime"), str)
	end,	
	
	
}

return l_subpanels

