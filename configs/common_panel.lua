local isInGameClient = ...

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

function l_configs:wait_activity_open(activity_id, cb)
	local ECGame = require "Main.ECGame"
	local ActivityEvents = require "Event.ActivityEvents"
	ECGame.EventManager:addHandler(ActivityEvents.ActivityOpenEvent, function (sender, event)
		if event.id == activity_id then
			cb()
		end
	end)
end

function l_configs:wait_badge_force_refresh(cb)
	local ECGame = require "Main.ECGame"
	local BadgeEvents = require "Event.BadgeEvents"
	ECGame.EventManager:addHandler(BadgeEvents.BadgeForceRefreshEvent, function(sender, event)
		cb()
	end)
end

function l_configs:wait_task_update(taskList, cb)
	local ECGame = require "Main.ECGame"
	local TaskEvents = require "Event.TaskEvents"
	ECGame.EventManager:addHandler(TaskEvents.SimpleNotifyEvent, function(sender, event)
		for i = 1, #taskList do
			if event.taskId == taskList[i] then
				cb()
				break
			end
		end
	end)
end

--个人声望变化
function l_configs:wait_reputation_change(repuID, cb)
	local ECGame = require "Main.ECGame"
	local NotifyReputationChange = require "Event.NotifyReputationChange".NotifyReputationChange
	ECGame.EventManager:addHandler(NotifyReputationChange, function(sender, event)
		if event.index == repuID then
			cb()
		end
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
		return string.format("%4d/%d/%d %d:%02d - %4d/%d/%d %d:%02d",
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

function l_configs:set_visible(panel, path, visible)
	local ECGUITools = require "GUI.ECGUITools"
	ECGUITools.setVisible(panel.m_panel:FindDirect(path), visible)
end

function l_configs:can_accept_task(taskId)
	return (require "Task.ECTaskInterface".CanDeliverTask(taskId)) == 0
end

--UI层级结构一定要一致
function l_configs:set_itemicon(item_obj)
	if not isInGameClient then
		return
	end
	local ECUIUtility = require "Utility.ECUIUtility"
	local idstr = ECUIUtility.ParseTag(item_obj,"itemid_")
	if #idstr >0 and tonumber(idstr) then
		local tid = tonumber(idstr)
		ECUIUtility.SetIvtrItemIcon(item_obj:FindDirect("Img_Item"):GetComponent("UISprite"), tid)
	end
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

function l_configs:set_text_and_color(obj, text, color)
	local ECGUITools = require "GUI.ECGUITools"
	ECGUITools.setTextAndColor(obj, text, color)
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
--配置子界面
--圣诞福袋
l_configs:addSubPanel("Rtn_PublicTestLottery")
{
	respath = isInGameClient and RESPATH.SubPanel_PublicTestLottery or "",
	needshow = false,
	groupItems = { "Group_Item00", "Group_Item01", "Group_Item02", "Group_Item03", "Group_Item04", "Group_Item05"},
	click = {
		Btn_ToGet = {type = "go_shop"}
	},
}

-- 白色情人节活动
l_configs:addSubPanel("Rtn_WhiteLove")
{
	respath = isInGameClient and RESPATH.SubPanel_Love or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(3953) then
			return false
		end
		return true
	end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 6617}

	},
}

-- 白色情人节兑换活动
l_configs:addSubPanel("Rtn_WhiteLoveChange")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 3953, dofile "Configs/public_award_WhiteLoveChange.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(3953) then
			return false
		end
		return true
	end,
}

-- 情人节活动
l_configs:addSubPanel("Rtn_LoveQuest")
{
	respath = isInGameClient and RESPATH.SubPanel_Love or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(3644) then
			return false
		end
		return true
	end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = function() return l_configs:host_gender() == 0 and 372 or 373 end}

	},
}

-- 情人节兑换活动
l_configs:addSubPanel("Rtn_LoveChange")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 3644, dofile "Configs/public_award_LoveChange.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(3644) then
			return false
		end
		return true
	end,
}

-----------------------------------------------------------------春节活动 begin
-- 新春送礼
l_configs:addSubPanel("Rtn_Spring_Gift")
{
	respath = isInGameClient and RESPATH.SubPanel_Spring_Gift or "",
	needshow = function() return l_configs:check_activity(3561) end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 7987}
	},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3561)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

-- 驱赶年兽
l_configs:addSubPanel("Rtn_Spring_Monster1")
{
	respath = isInGameClient and RESPATH.SubPanel_Spring_Monster1 or "",
	needshow = function() return l_configs:check_activity(3561) end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "go_shop"}
	},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3561)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

-- 年兽入侵
l_configs:addSubPanel("Rtn_Spring_Monster2")
{
	respath = isInGameClient and RESPATH.SubPanel_Spring_Monster2 or "",
	needshow = function() return l_configs:check_activity(3561) end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "go_shop"}
	},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3561)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

-- 新春英雄
l_configs:addSubPanel("Rtn_Spring_Hero")
{
	respath = isInGameClient and RESPATH.SubPanel_12Recharge or "",
	needshow = function() return l_configs:check_activity(3561) end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "go_reward_pay", param = require "GUI.ECPanelRewardPay".SUBPAGE.LIMIT_SPRING_MONSTERS}
	},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3561)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

-- 青冥宝剑
-- l_configs:addSubPanel("none")
-- {
-- 	respath = isInGameClient and RESPATH.SubPanel_12Sell or "",
-- 	click = {
-- 		Btn_ToGet = {type = "talk_to_npc", param = 1278}
-- 	},
-- }

-- 六龙新春大使
l_configs:addSubPanel("Rtn_Spring_Hero1")
{
	respath = isInGameClient and RESPATH.SubPanel_Spring_Hero1 or "",
	needshow = function() return l_configs:check_activity(3561) end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"
					, "Group_Item/Group_Item05", "Group_Item/Group_Item06"
				},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 7987}
	},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3561)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

-- 摇钱树活动
l_configs:addSubPanel("Rtn_Money_Tree")
{
	respath = isInGameClient and RESPATH.SubPanel_Money_Tree or "",
	needshow = function() return l_configs:check_activity(3865) end,
	groupItems = {"Group_Item00"},
	update = function(panel)
		if not isInGameClient then return end
		local ECTaskInterface = require "Task.ECTaskInterface"
		if ECTaskInterface.CanDeliverTask(1791) == 0 then
			panel.m_panel:FindDirect("Btn_ToGet"):SetActive(false)
			panel.m_panel:FindDirect("Btn_ToBuy"):SetActive(true)
		else
			panel.m_panel:FindDirect("Btn_ToGet"):SetActive(true)
			panel.m_panel:FindDirect("Btn_ToBuy"):SetActive(false)
		end
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3865)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_ToBuy = {type = "go_shop"},
		Btn_ToGet = function(panelbase, sender)
			local ECTaskUtility = require "Task.ECTaskUtility"
			local ECTaskInterface = require "Task.ECTaskInterface"
			local tasks = {1782,1783,1784,1786}
			local taskID = 0
			for i = 1 , #tasks do
				if ECTaskInterface.HasTask(tasks[i]) then
					taskID = tasks[i]
					break
				end
			end
			panelbase.parent:DestroyPanel()
			if taskID ~= 0 then
				if ECTaskInterface.CanFinishTask(taskID) then
					ECTaskUtility.BeginTaskAwardNPCAutomove(taskID)
				else
					ECTaskUtility.BeginTaskTargetAutomove(taskID)
				end
			else
				panelbase:TalkToNpc(8597)
			end
		end,
	},
}

-- 每月情人节排行榜
l_configs:addSubPanel("Rtn_LoveRank")
{
	respath = isInGameClient and RESPATH.SubPanel_MonthLove or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(7208) then
			return false
		end
		return true
	end,
}

-- 愚人节介绍
l_configs:addSubPanel("Rtn_FoolsDay")
{
	respath = isInGameClient and RESPATH.SubPanel_FoolsDay or "",
	needshow = function() return l_configs:check_activity(4236) end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(4236)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}

--愚人节
l_configs:addSubPanel("Rtn_FoolsDayExchange")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 4236, dofile "Configs/public_award1.lua", RESPATH.SubPanel_PublicTestWord) end,
	needshow = function() return l_configs:check_activity(4236) end,
}

-- 复活节活动
l_configs:addSubPanel("Rtn_FHJ_Explain")
{
	respath = isInGameClient and RESPATH.SubPanel_FHJ_Explain or "",
	needshow = function() return l_configs:check_activity(4238) end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 10383}
	},
}

--复活节排行
l_configs:addSubPanel("Rtn_FHJ_Rank")
{
	create_panel = function(panel)
		return require "GUI.ECPublicTestActivities".ECSubPanelFHJActivity.new(panel)
	end,
	needshow = function()
		return l_configs:check_activity(4238)
	end,
}

-- 周年庆祭祀
l_configs:addSubPanel("Rtn_Anniversary")
{
	respath = isInGameClient and RESPATH.SubPanel_Anniversary or "",
	needshow = function() return l_configs:check_activity(4358) end,
	groupItems = {"Group_Item00"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 10544}
	},
}

-- 劳动大比武
l_configs:addSubPanel("Rtn_LDJ_Explain")
{
	respath = isInGameClient and RESPATH.SubPanel_LDJ_Explain or "",
	needshow = function() return l_configs:check_activity(4790) end,
	update = function(panel)
		local ECGUITools = require "GUI.ECGUITools"
		local ECTaskInterface = require "Task.ECTaskInterface"
		local count = ECTaskInterface.GetTaskFinishCountInfo(2027)
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Gound_Bg/Txt_Num"), tostring(count))
		local sceneIds = {["5003"] = 4791, ["5005"] = 4792, ["5006"] = 4793}
		for k,v in pairs(sceneIds) do
			if require "Social.ECActivityInfo".IsOpen(v) then
				local instcfg = require "Configs.InstanceInfo".Instance():GetData(tonumber(k))
				ECGUITools.UpdateLable(instcfg.name, panel.m_panel:FindDirect("Gound_Bg/Txt_Place"))
				break
			end
		end
	end,
}

--劳动节 exchange
l_configs:addSubPanel("Rtn_LDJ_Exchange")
{
	create_panel = function ( panel )
			local ECSubPanelLDJExchange = require "GUI.ECPublicTestActivities".ECSubPanelLDJExchange
			return ECSubPanelLDJExchange.new(panel)
		end,
	needshow = function() return l_configs:check_activity(4790) end,
}

--劳动节 rank
l_configs:addSubPanel("Rtn_LDJ_Rank")
{
	create_panel = function ( panel )
			local ECSubPanelLDJRank = require "GUI.ECPublicTestActivities".ECSubPanelLDJRank
			return ECSubPanelLDJRank.new(panel)
		end,
	needshow = function() return l_configs:check_activity(4790) end,
}

-- 极限挑战
l_configs:addSubPanel("Rtn_ImpossibleGame")
{
	respath = isInGameClient and RESPATH.SubPanel_ImpossibleGame or "",
	needshow = function() return l_configs:check_activity(4690) end,
	groupItems = {"Group_Item01", "Group_Item02", "Group_Item03", "Group_Item00"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 10732}
	},
}

-- 超越极限
l_configs:addSubPanel("Rtn_ImpossibleGame2")
{
	respath = isInGameClient and RESPATH.SubPanel_ImpossibleGame2 or "",
	needshow = function() return l_configs:check_activity(4967) end,
	groupItems = {"Group_Item01", "Group_Item02", "Group_Item00"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 10942}
	},
}

-- 新职业竞猜
l_configs:addSubPanel("Rtn_NewProActivity")
{
	respath = isInGameClient and RESPATH.SubPanel_NewProActivity or "",
	needshow = function()
		if not l_configs:check_host_lv(35,90) then
			return false
		end
		if not l_configs:check_activity(4975) then
			return false
		end
		return true
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_Go = function (panelbase,sender)
			panelbase.parent:DestroyPanel()
			if l_configs:check_activity(4968) then
				panelbase:TalkToNpc(10955)
			elseif l_configs:check_activity(4969) then
				panelbase:TalkToNpc(10961)
			elseif l_configs:check_activity(4670) then
				panelbase:TalkToNpc(10962)
			elseif l_configs:check_activity(4671) then
				panelbase:TalkToNpc(10963)
			else
				panelbase:TalkToNpc(10964)
			end
		end
	},
}

-- 福星收录
l_configs:addSubPanel("Rtn_Blessing")
{
	respath = isInGameClient and RESPATH.SubPanel_Blessing or "",
	needshow = function() return l_configs:check_activity(5237) end,
	update = function(panel)
		if not isInGameClient then return end
		-- 显示活动时间
		local str = l_configs:get_activitytime_des(5237)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), str)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 11275}
	},
}

--福星收录活动兑换
l_configs:addSubPanel("Rtn_Blessing01")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 5237, dofile "Configs/public_award.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(20,0) then
			return false
		end
		if not l_configs:check_activity(5237) then
			return false
		end
		return true
	end,
}

-- 演武
l_configs:addSubPanel("Rtn_Yanwu")
{
	respath = isInGameClient and RESPATH.SubPanel_Yanwu_Explain or "",
	needshow = function() return l_configs:check_activity(18908) end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(18908)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}
-- 糖果屋
l_configs:addSubPanel("Rtn_ChildrenDay03")
{
	respath = isInGameClient and RESPATH.SubPanel_ChildrenDay03 or "",
	needshow = function() return l_configs:check_activity(5220) end,
	groupItems = {"Group_Item01", "Group_Item02", "Group_Item03", "Group_Item04"},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(5220)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 11314}
	},
}

-- 全服BOSS_1
l_configs:addSubPanel("Rtn_ServertBoss1")
{
	respath = isInGameClient and RESPATH.SubPanel_Server_Boss1 or "",
	needshow = function() return l_configs:check_activity(5404) end,
	groupItems = {"Group_Item/Group_Item00"},
}

-- 全服BOSS_2
l_configs:addSubPanel("Rtn_ServertBoss2")
{
	respath = isInGameClient and RESPATH.SubPanel_Server_Boss2 or "",
	needshow = function() return l_configs:check_activity(5405) end,
	groupItems = {"Group_Item/Group_Item00"},
}

-- 全服BOSS_3
l_configs:addSubPanel("Rtn_ServertBoss3")
{
	respath = isInGameClient and RESPATH.SubPanel_Server_Boss3 or "",
	needshow = function() return l_configs:check_activity(5406) end,
	groupItems = {"Group_Item/Group_Item00"},
}

-- 冲级狂欢
l_configs:addSubPanel("Rtn_DoubleExp")
{
	respath = isInGameClient and RESPATH.SubPanel_DoubleExp or "",
	needshow = function() return l_configs:check_activity(13039) end,
	update = function(panel)
		if not isInGameClient then return end
		local activity_opentime,activity_endtime=l_configs:get_activitytime(13039)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日-%d月%d日",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
		--eg:
	--	local opentime,endtime = l_configs:get_activitytime(13039)
	--	local dateopen = os.date("*t", opentime)
	--	local dateclose = os.date("*t", endtime)
	--	local str = string.format("%4d/%d/%d %d:%02d - %4d/%d/%d %d:%02d",
	--		dateopen.year, dateopen.month, dateopen.day, dateopen.hour, dateopen.min,
	--		dateclose.year, dateclose.month, dateclose.day, dateclose.hour, dateclose.min)
    --
	--	local ECGUITools = require "GUI.ECGUITools"
	--	l_configs:timer_update(1, function()
	--		if not l_configs:check_valid(panel.m_panel) then
	--			return false
	--		end
    --
	--		local tcur = GameUtil.GetServerGMTTime() --当前服务器时间
	--		local tleft = endtime - tcur
    --
	--		if tleft < 0 then
	--			return false
	--		end
    --
	--		local tdate = l_configs:formatTime(tleft)
	--		local str = string.format("%d:%d:%d", tdate.hour+tdate.day*24, tdate.min, tdate.sec)
	--		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), str)
	--		return true
	--	end)
	--end,

	click = {
		Btn_ToGet = {type = "go_activity"}
	},
}

-- 七夕活动
l_configs:addSubPanel("Rtn_QX_Festival")
{
	respath = isInGameClient and RESPATH.SubPanel_Love or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(4353)
	end,
	groupItems = {"Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 6617}
	},
}

-- 巅峰武斗
l_configs:addSubPanel("Rtn_NewPvPActivity02")
{
	respath = isInGameClient and RESPATH.SubPanel_NewPvPActivity02 or "",
	needshow = function() return l_configs:check_activity(5598) end,
}

-- 奥运会
l_configs:addSubPanel("Rtn_Olympic2")
{
	respath = isInGameClient and RESPATH.SubPanel_OlympicGame2 or "",
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		return l_configs:check_activity(5504)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 1417}
	},
}

-- 限时折扣
l_configs:addSubPanel("Rtn_Onsale")
{
	respath = isInGameClient and RESPATH.SubPanel_Onsale or "",
	needshow = function() return l_configs:check_activity(5745) end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02"},
	click = {
		Btn_Go = {type = "go_shop"}
	},
}

-- 转国
--l_configs:addSubPanel("Rtn_NationTransfer")
--{
--	respath = isInGameClient and RESPATH.SubPanel_NationTransfer or "",
--	needshow = function() return l_configs:check_activity(5674) end,
--	click = {
--		Btn_ToGet = {type = "talk_to_npc", param = 11853}
--	},
---}

--奥运活动
l_configs:addSubPanel("Rtn_Olympic")
{
	create_panel = function(panel) return require "GUI.ECSubPanelOlympicGamePage".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		return l_configs:check_activity(5504)

	end,
}

--大富翁
l_configs:addSubPanel("Rtn_Richman")
{
	create_panel = function(panel) return require "GUI.ECSubPanelRichMan".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(4163) then
			return false
		end
		local ECRichmanData = require "Data.ECRichmanData"
		local game_id = 0
		if ECRichmanData.Instance().data then
			game_id = ECRichmanData.Instance().data.game_id
		end

		return game_id >0
	end,
}

--万圣节打怪
l_configs:addSubPanel("Rtn_Halloween")
{
	respath = isInGameClient and RESPATH.Subpanel_Halloween or "",		--资源列表找现有资源，若没有则加进去
	
	needshow = function()											--显示条件
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(4354) then
			return false
		end
		return true 
	end,
	
	click = {														--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 348}
	},
	
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04", "Group_Item00" },		--界面上的哪个道具显示tips
	
}

--儿童节 翻牌
l_configs:addSubPanel("Rtn_ChildrenDay01")
{
	create_panel = function( panel )
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.new(panel, RESPATH.SubPanel_ChildrenDay01, 5216)
	end,
	needshow = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.NeedShow(5216)
	end,

	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		ECSubPanelChildrensDay.RefreshBadge(5216, "childrens_day")
	end
}

--儿童节 声望兑换
l_configs:addSubPanel("Rtn_ChildrenDay02")
{
	create_panel = function( panel )
		return require "GUI.ECSubPanelChildrensDay2".new(panel)
	end,
	needshow = function()
		if not isInGameClient then return false end

		local ECSubPanelChildrensDay2 = require "GUI.ECSubPanelChildrensDay2"
		local bInnerNeedShow = ECSubPanelChildrensDay2.NeedShow()
		if l_configs:check_activity(5220) then--翻牌活动开放
			return bInnerNeedShow
		end

		if not l_configs:check_activity(5240) then --兑换活动未开放
			return false
		end
		return bInnerNeedShow
	end,

	badgeupdate = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay2 = require "GUI.ECSubPanelChildrensDay2"
		ECSubPanelChildrensDay2.RefreshBadge()
	end
}

--妇女节活动任务界面
l_configs:addSubPanel("Rtn_Woman_Quest",5)

{
	respath = isInGameClient and RESPATH.SubPanel_Love or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(3855)
	end,
	groupItems = { "Group_Item00", "Group_Item/Group_Item01", "Group_Item/Group_Item02", "Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = 
	{
		Btn_ToGet = {type = "talk_to_npc", param = function() return l_configs:host_gender() == 0 and 17256 or 17255 end}	--372 373是NPC的id，不是任务的
	},
}

--妇女节活动兑换界面
l_configs:addSubPanel("Rtn_Woman_Reward",5)
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 3855, dofile "Configs/public_award_38woman.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if not l_configs:check_activity(3855) then
			return false
		end
		return true
	end,
}

-------------------------------------------------------------------------------------
-----------------------------------------------------------------春节活动 end

--开始配置


-- --腊日豪礼
-- l_configs:add_grid("Rtn_12Sell", function(panel)
-- 	local ECSubPanelLB3 = require "GUI.ECLBActivity".ECSubPanelLB3
-- 	return ECSubPanelLB3.new(panel)
-- end)
-- {
-- 	needshow = function()
-- 		return require "GUI.ECLBActivity".ECSubPanelLB1.IsLaBaActivityOpen()
-- 	end,
-- }

-- --迎春田猎
-- l_configs:add_grid("Rtn_12Instance", function(panel)
-- 	local ECSubPanelLB2 = require "GUI.ECLBActivity".ECSubPanelLB2
-- 	return ECSubPanelLB2.new(panel)
-- end)
-- {
-- 	needshow = function()
-- 		return require "GUI.ECLBActivity".ECSubPanelLB1.IsLaBaActivityOpen()
-- 	end,
-- }

-- --腊祭祈福
-- l_configs:add_grid("Rtn_KMLantern", function(panel)
-- 	local ECSubPanelLB1 = require "GUI.ECLBActivity".ECSubPanelLB1
-- 	return ECSubPanelLB1.new(panel)
-- end)
-- {
-- 	needshow = function()
-- 		return require "GUI.ECLBActivity".ECSubPanelLB1.IsLaBaActivityOpen()
-- 	end,
-- }

-----------------------------------------------------------------元宵节活动 begin
-- l_configs:add_grid("Rtn_YXJ_Exchange", function(panel)
-- 	local ECSubPanelYXJActivity1 = require "GUI.ECYXJActivity".ECSubPanelYXJActivity1
-- 	return ECSubPanelYXJActivity1.new(panel)
-- end)
--{
-- 	needshow = function()	return require "GUI.ECYXJActivity".ECSubPanelYXJActivity1.IsYXJActivityOpen() end,
-- }

-- l_configs:add_grid("Rtn_YXJ_Explain", function(panel)
-- 	local ECSubPanelYXJActivity2 = require "GUI.ECYXJActivity".ECSubPanelYXJActivity2
-- 	return ECSubPanelYXJActivity2.new(panel)
-- end)
-- {
-- 	needshow = function() return require "GUI.ECYXJActivity".ECSubPanelYXJActivity1.IsYXJActivityOpen() end,
-- }

-- l_configs:add_grid("Rtn_YXJ_Rank", function(panel)
-- 	local ECSubPanelYXJActivity3 = require "GUI.ECYXJActivity".ECSubPanelYXJActivity3
-- 	return ECSubPanelYXJActivity3.new(panel)
-- end)
-- {
-- 	needshow = function() return require "GUI.ECYXJActivity".ECSubPanelYXJActivity1.IsYXJActivityOpen() end,
-- }
-----------------------------------------------------------------元宵节活动 end


--兼容以前页签，例如：全名集字
--[[半周年庆活动兑换
l_configs:addSubPanel("Rtn_Congratulation")
{
	create_panel = function(panel) 
		return require "GUI.ECSubPanelPublicWord".new(panel, 4271, dofile "Configs/public_award.lua",RESPATH.SubPanel_PublicTestWord)
	end,
	needshow = function()
		if not l_configs:check_host_lv(20,0) then
			return false
		end

		if not l_configs:check_activity(4271) then
			return false
		end
		return true
	end,
}
--]]
--强势回归1
l_configs:addSubPanel("Rtn_Back1")
{
	create_panel = function ( panel ) local ECSubPanelBack1 = require "GUI.ECSubPanelBack1" return ECSubPanelBack1.new(panel) end,
	needshow = function()
		if l_configs:check_activity(4272) and  LoginPlatform ~= MSDK_LOGIN_PLATFORM.GUEST then
			return true
		else
			return false
		end
	end,
}

--回归豪礼
l_configs:addSubPanel("Rtn_Back2")
{
	create_panel = function ( panel ) local ECSubPanelBack2 = require "GUI.ECSubPanelBack2" return ECSubPanelBack2.new(panel) end,
	needshow = function()
		if l_configs:check_activity(4272)  and LoginPlatform ~= MSDK_LOGIN_PLATFORM.GUEST then
			return true
		else
			return false
		end
	end,
}

--回归豪礼
l_configs:addSubPanel("Rtn_Back3")
{
	create_panel = function ( panel ) local ECSubPanelBack3 = require "GUI.ECSubPanelBack3" return ECSubPanelBack3.new(panel) end,
	needshow = function()
		if l_configs:check_activity(4272) then
			return true
		else
			return false
		end
	end,
}

--命运之轮（新转盘）
-- l_configs:addSubPanel("Rtn_Turntable")
-- {
-- 	create_panel = function ( panel ) local ECSubPanelTurntable = require "GUI.ECSubPanelTurntable" return ECSubPanelTurntable.new(panel) end,
-- 	needshow = function()
-- 		if not l_configs:check_host_lv(36,0) then
-- 			return false
-- 		end
-- 		local ECSubPanelTurntable = require "GUI.ECSubPanelTurntable"
-- 		return ECSubPanelTurntable.IsTurntableActivityOpen()	--程序读"转盘与活动对应模板"里的活动id
-- 	end,
-- }


-- l_configs:add_grid("Rtn_PublicTestWord1",function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 0,
--	dofile "Configs/public_award1.lua",RESPATH.SubPanel_PublicTestWord)
--end)
-- {
-- 	needshow = function()
-- 		return true
-- 	end,
-- }
--孔明灯
-- l_configs:add_grid("Rtn_KMLantern",function(panel) local ECSubPanelKMLantern = require "GUI.ECSubPanelKMLantern" return ECSubPanelKMLantern.new(panel) end)
-- {
-- 	needshow = function()
-- 		return require "GUI.ECSubPanelKMLantern".IsKMLanternOpen()
-- 	end,
-- }

--测试专用
--[[
l_configs:addSubPanel(100,"测试页签")
{
	respath = "Arts/Res/Prefab/SubPanel_RewardRegister.prefab.u3dext",
	update = function(panel)
		if not isInGameClient then
			return
		end

	end,

	click = function(panelbase,sender)
		if not isInGameClient then
			return
		end
	end,
}
l_configs:add_grid("Rtn_PublicTestBox",100)
{
	needshow = function()
		return true
	end,
}
]]


--端午节领龙旗 
l_configs:addSubPanel("Rtn_DWJ_Explain")
{
	respath = isInGameClient and RESPATH.SubPanel_DWJ_Explain,
	needshow = function()
		if not l_configs:check_host_lv(40,0) then
			return false
		end
		if l_configs:check_activity(5271) then
			return true
		else
			return false
		end
	end,
	click = {
		Btn_Go = {type = "talk_to_npc", param = 11487}
	},
}

--端午节领龙旗 
l_configs:addSubPanel("Rtn_DWJ_Boating")
{
	create_panel = function(panel) return require "GUI.ECSubPanelDWJBoat".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(40,0) then
			return false
		end
		if l_configs:check_activity(5271) then
			return true
		else
			return false
		end
	end,
}

--端午节领龙旗 
l_configs:addSubPanel("Rtn_DWJ_Rank")
{
	create_panel = function(panel) return require "GUI.ECSubPanelDWJRank".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(40,0) then
			return false
		end
		if l_configs:check_activity(5271) then
			return true
		else
			return false
		end
	end,
}

--定点豪礼（指定在线）
l_configs:addSubPanel("Rtn_Time_Reward")
{
	create_panel = function(panel) return require "GUI.ECSubPanelRewardPage".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if l_configs:check_activity(5389) then
			return true
		else
			return false
		end
	end,
}

--全民助威 
l_configs:addSubPanel("Rtn_NewPvPActivity01")
{
	create_panel = function(panel) return require "GUI.ECSubPanelNewPVPActivityPage".new(panel) end,
	needshow = function() return l_configs:check_activity(5510) end,
}

--定时宝箱/挂机宝箱 
l_configs:addSubPanel("Rtn_TreasureCan")
{
	create_panel = function(panel) 
		return require "GUI.ECSubPanelPublicWord".new(panel, 5691, dofile "Configs/public_award_treasurecan.lua",RESPATH.SubPanel_PublicTestWordMulOut)
	end,
	needshow = function()
		if l_configs:check_activity(5673)  or not l_configs:check_activity(5691) then
			return false
		end
		return true
	end,
}

--0818 翻牌
l_configs:addSubPanel("Rtn_luckycards")
{
	needshow = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.NeedShow(5718)
	end,
	create_panel = function( panel )
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.new(panel, RESPATH.SubPanel_luckycards, 5718)
	end,
	badgeupdate = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		ECSubPanelChildrensDay.RefreshBadge(5718, "childrens_day")
	end
}

--周一福利
l_configs:addSubPanel("Rtn_MondayWelfare")
{
	create_panel = function ( panel )
		local ECSubPanelMondayWelfare = require "GUI.ECSubPanelMondayWelfare" 
		return ECSubPanelMondayWelfare.new(panel, RESPATH.Subpanel_MondayWelfare, 5768) 
	end,

	needshow = function()
		--服务器时间
		local serverTime = GameUtil.GetServerGMTTime()
		--wday(返回值星期日为1、星期一为2。。。)
		local day = os.date("*t", serverTime).wday
		if day == 1 then
			day = 7
		else
			day = day - 1
		end
		if l_configs:check_activity(5792) and (day == 1 or day >= 4) then
			return true
		else
			return false
		end
	end,
	
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECSubPanelMondayWelfare = require "GUI.ECSubPanelMondayWelfare"
		ECSubPanelMondayWelfare.RefreshBadge(5768)
	end
}

--月圆中秋活动兑换
l_configs:addSubPanel("Rtn_Moon-moon")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 5753, dofile "Configs/public_award_moon.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		if not l_configs:check_activity(5753) then
			return false
		end
		return true
	end,
}

-- 据点争夺活动
l_configs:addSubPanel("Rtn_Area")
{
	respath = isInGameClient and RESPATH.SubPanel_Area or "",
	needshow = function() return l_configs:check_activity(5712) end,
	groupItems = { "Group_Item00" },
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 11968}
	},
}

-- 国镖活动
l_configs:addSubPanel("Rtn_National_Car")
{
	--respath = isInGameClient and RESPATH.SubPanel_National_Car or "",
	--local npc_tid = 12477
	--local repuID = 999  --暂定 后面读取模板
	--local repuValueMax = 999999
	-- require "GUI.ECSubPanelNationEscort".new(panel, npc_tid, repuID, repuValueMax )
	create_panel = function(panel) return require "GUI.ECSubPanelNationEscort".new(panel, 12477, 16 ) end,
	--needshow = function() return l_configs:check_activity(5942) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(5942)
	end,	
}
--国庆回流7天
l_configs:addSubPanel("Rtn_GuoQing_7Days")
{
	respath = isInGameClient and RESPATH.SubPanel_Backguoqing or "",
	needshow = function() return l_configs:check_activity(5985) end,
}

--国庆回流3天
l_configs:addSubPanel("Rtn_GuoQing_3Days")
{
	respath = isInGameClient and RESPATH.SubPanel_Backguoqing3Day,
	needshow = function() 
		if not l_configs:check_activity(5986) then     --如果活动没开就不显示
			return false
		end
		
    	--if require "Task.ECTaskInterface".GetTaskFinishCountInfo(2406)  >= 5 then  --如果上线天数大于5 就不显示
			--return false
		--end
		
		if l_configs:is_task_completed(3392) then  --如果小于36级就不显示
			return false
		end
		
		return true		
	end,
	click = {
		Btn_GetRewardAllday = {type = "accept_task", param = 3400},
		Btn_GetReward3day = {type = "accept_task", param = 3399},
		Btn_GetReward5day = {type = "accept_task", param = 3398},
		Btn_GetReward7day = {type = "accept_task", param = 3397},
		Btn_GetReward10day = {type = "accept_task", param = 3396},
		Btn_GetReward14day = {type = "accept_task", param = 3395},
	},
	groupItems = {"Group3day/Group_Item00","Group3day/Group_Item01","Group3day/Group_Item02","Group3day/Group_Item03","Group3day/Group_Item04",
				"Group5day/Group_Item00","Group5day/Group_Item01","Group5day/Group_Item02","Group5day/Group_Item03","Group5day/Group_Item04",
				"Group7day/Group_Item00","Group7day/Group_Item01","Group7day/Group_Item02","Group7day/Group_Item03","Group7day/Group_Item04",
				"GroupAllday/Group_Item00","GroupAllday/Group_Item01","GroupAllday/Group_Item02","GroupAllday/Group_Item03","GroupAllday/Group_Item04",
				"Group10day/Group_Item00","Group10day/Group_Item01","Group10day/Group_Item02","Group10day/Group_Item03","Group10day/Group_Item04",
				"Group14day/Group_Item00","Group14day/Group_Item01","Group14day/Group_Item02","Group14day/Group_Item03","Group14day/Group_Item04",},
	
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local taskList = {3400, 3399, 3398, 3397, 3396, 3395}
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
					break
				end
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("GuoQing", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)		--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)	--监听任务变化，设置小红点
		l_configs:wait_activity_open(5986, function() set_badge() end)		--监听活动开启，设置小红点
	end,
	
	update = function (panel)
		if not isInGameClient then return end
		if l_configs:can_accept_task(3399) or l_configs:is_task_completed(3399) then
			l_configs:set_visible(panel,"Group3day",true)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"GroupAllday",false)
			l_configs:set_visible(panel,"Group10day",false)
			l_configs:set_visible(panel,"Group14day",false)
			if not l_configs:is_task_completed(3399) then
				l_configs:set_visible(panel,"Group3day/Sprite",false)
				l_configs:set_visible(panel,"Group3day/Btn_GetReward3day",true)
			else
				l_configs:set_visible(panel,"Group3day/Sprite",true)
				l_configs:set_visible(panel,"Group3day/Btn_GetReward3day",false)
			end
		elseif l_configs:can_accept_task(3398) or l_configs:is_task_completed(3398) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",true)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"GroupAllday",false)
			l_configs:set_visible(panel,"Group10day",false)
			l_configs:set_visible(panel,"Group14day",false)
			if not l_configs:is_task_completed(3398) then
				l_configs:set_visible(panel,"Group5day/Sprite",false)
				l_configs:set_visible(panel,"Group5day/Btn_GetReward5day",true)
			else
				l_configs:set_visible(panel,"Group5day/Sprite",true)
				l_configs:set_visible(panel,"Group5day/Btn_GetReward5day",false)
			end
		elseif l_configs:can_accept_task(3397) or l_configs:is_task_completed(3397) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",true)
			l_configs:set_visible(panel,"GroupAllday",false)
			l_configs:set_visible(panel,"Group10day",false)
			l_configs:set_visible(panel,"Group14day",false)
			if not l_configs:is_task_completed(3397) then
				l_configs:set_visible(panel,"Group7day/Sprite",false)
				l_configs:set_visible(panel,"Group7day/Btn_GetReward7day",true)
			else
				l_configs:set_visible(panel,"Group7day/Sprite",true)
				l_configs:set_visible(panel,"Group7day/Btn_GetReward7day",false)
			end
		elseif l_configs:can_accept_task(3396) or l_configs:is_task_completed(3396) then  --10
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"GroupAllday",false)
			l_configs:set_visible(panel,"Group10day",true)
			l_configs:set_visible(panel,"Group14day",false)
			if not l_configs:is_task_completed(3396) then
				l_configs:set_visible(panel,"Group10day/Sprite",false)
				l_configs:set_visible(panel,"Group10day/Btn_GetReward10day",true)
			else
				l_configs:set_visible(panel,"Group10day/Sprite",true)
				l_configs:set_visible(panel,"Group10day/Btn_GetReward10day",false)
			end
		elseif l_configs:can_accept_task(3395) or l_configs:is_task_completed(3395) then--14
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"GroupAllday",false)
			l_configs:set_visible(panel,"Group10day",false)
			l_configs:set_visible(panel,"Group14day",true)
			if not l_configs:is_task_completed(3395) then
				l_configs:set_visible(panel,"Group14day/Sprite",false)
				l_configs:set_visible(panel,"Group14day/Btn_GetReward14day",true)
			else
				l_configs:set_visible(panel,"Group14day/Sprite",true)
				l_configs:set_visible(panel,"Group14day/Btn_GetReward14day",false)
			end
		elseif l_configs:can_accept_task(3400) or l_configs:is_task_completed(3400) then
			l_configs:set_visible(panel,"GroupAllday",true)
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"Group10day",false)
			l_configs:set_visible(panel,"Group14day",false)
			if not l_configs:is_task_completed(3400) then
				l_configs:set_visible(panel,"GroupAllday/Sprite",false)
				l_configs:set_visible(panel,"GroupAllday/Btn_GetRewardAllday",true)
			else
				l_configs:set_visible(panel,"GroupAllday/Sprite",true)
				l_configs:set_visible(panel,"GroupAllday/Btn_GetRewardAllday",false)
			end
		end
	end,
}


--周年庆集字
l_configs:addSubPanel("Rtn_OYCongratulation")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 4271, dofile "Configs/public_award_OYCongratulation.lua",RESPATH.SubPanel_PublicTestWord) end,
	needshow = function()
		if not l_configs:check_host_lv(20,0) then
			return false
		end
		if not l_configs:check_activity(4271) then
			return false
		end
		return true
	end,
}

-- 光棍节预热
l_configs:addSubPanel("Rtn_Guang11")
{
	respath = isInGameClient and RESPATH.SubPanel_Guang11 or "",
	needshow = function() return l_configs:check_activity(6475) end,
	click = {
		Btn_Go = function(panel, sender)
			if l_configs:can_accept_task(2483) then
				-- 弹面板
				require "GUI.ECPanelNPCQuest".PopForManualReceiveTask(2483)
			else
				panel:TalkToNpc(1156)
			end
		end
	},
}



--每日感恩介绍

l_configs:addSubPanel("Rtn_ThanksDay")
{
	respath = isInGameClient and RESPATH.SubPanel_ThanksDay or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6712)
	end,
}

--八卦熔炼
l_configs:addSubPanel("Rtn_MagicBox")
{
	respath = isInGameClient and RESPATH.SubPanel_MagicBox or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6926)
	end,
	
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		require "Guide.ECFunctionBadge".SetBadgeNumber("MagicBox", l_configs:check_activity(6837) and 1 or 0)
		l_configs:wait_activity(6837, function()
			require "Guide.ECFunctionBadge".SetBadgeNumber("MagicBox", l_configs:check_activity(6837) and 1 or 0)
		end)
		require "Guide.ECFunctionBadge".AddForceRefreshHandler(function()
			require "Guide.ECFunctionBadge".SetBadgeNumber("MagicBox", l_configs:check_activity(6837) and 1 or 0)
		end)		
	end,

	
	update = function(panel)
		if not isInGameClient then 
			return 
		end
		require "Guide.ECFunctionBadge".SetBadgeNumber("MagicBox", 0)
	    if l_configs:check_activity(6837) then
			l_configs:set_visible(panel, "Btn_ToGet", true)
		end
	    if not l_configs:check_activity(6837) then
			l_configs:set_visible(panel, "Btn_ToGet", false)
		end		
	end,
		click = {												--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 13606}		
		},

}
--潼关之围
l_configs:addSubPanel("Rtn_Rift")
{
	respath = isInGameClient and RESPATH.SubPanel_Rift or "",
	needshow = function()
		return l_configs:check_activity(6936)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(6936)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日-%d月%d日",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeHour2"), txt_time)
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02"},
	click = {												--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 13723},	
		},
}

--圣诞狂欢
l_configs:addSubPanel("Rtn_SDJ")
{
	respath = isInGameClient and RESPATH.SubPanel_SDJ or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6938)
	end,
	click = {												--点击按钮后寻路找谁
		Btn_GotoSDJ = {type = "talk_to_npc", param = 13730},	
		Btn_GotoSDJ2 = {type = "talk_to_npc", param = 13730},	
		Btn_GotoSDJ3 = {type = "talk_to_npc", param = 13730},	
		},
}

--圣诞活动组
l_configs:addSubPanel("Rtn_Xmas_Snowman")
{
	respath = isInGameClient and RESPATH.SubPanel_XmasSell or "",
	needshow = function() return l_configs:check_activity(3076) end,
	groupItems = {"Group01/Group_Item01", "Group02/Group_Item02","Group03/Group_Item03","Group04/Group_Item04","Group05/Group_Item05"},
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3076)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 7489}
	},
}

l_configs:addSubPanel("Rtn_Xmas_SnowmanOwn")
{
	respath = isInGameClient and RESPATH.SubPanel_XmasRecharge or "",
	needshow = function() return l_configs:check_activity(3076) end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3076)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	groupItems = {"Group_Item/Group_Item00", "Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03"},
}


--每日感恩
l_configs:addSubPanel("Rtn_ThanksgivingDay")
{
	create_panel = function ( panel )
		local ECSubPanelThanksgivingDay = require "GUI.ECSubPanelThanksgivingDay" 
		return ECSubPanelThanksgivingDay.new(panel, RESPATH.SubPanel_ThanksgivingDay, 6712, "Thanksgiving_day") 
	end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6712)
	end,
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECSubPanelThanksgivingDay = require "GUI.ECSubPanelThanksgivingDay"
		ECSubPanelThanksgivingDay.RefreshBadge(6712, "Thanksgiving_day")
	end
}

--元旦
l_configs:addSubPanel("Rtn_YDJ")
{
	create_panel = function(panel) return require "GUI.ECSubPanelYDJ".new(panel) end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if l_configs:check_activity(6929) then
			return true
		else
			return false
		end
	end,
}

--元旦介绍

l_configs:addSubPanel("Rtn_YDJ_explain")
{
	respath = isInGameClient and RESPATH.SubPanel_YDJ_explain or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6929)
	end,
}

--元旦boss

l_configs:addSubPanel("Rtn_YDJ_Boss")
{
	respath = isInGameClient and RESPATH.SubPanel_YDJ_Boss or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(6929)
	end,
}

--2018七夕寻路
l_configs:addSubPanel("Rtn_QixiD")
{
	respath = isInGameClient and RESPATH.SubPanel_Qixi_Des or "",
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03",},
	needshow = function()
		if not l_configs:check_host_lv(40,0) then
			return false
		end
		return l_configs:check_activity(12220)
	end,
}
--2018七夕奖励介绍
l_configs:addSubPanel("Rtn_QixiR")
{
	respath = isInGameClient and RESPATH.SubPanel_Qixi_Rew or "",
	groupItems = {"Group01/Group_Item01","Group02/Group_Item02","Group03/Group_Item03","Group04/Group_Item04","Group05/Group_Item05",},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 18103}
	},
	needshow = function()
		if not l_configs:check_host_lv(40,0) then
			return false
		end
		return l_configs:check_activity(12220)
	end,
}
--攻城活动

l_configs:addSubPanel("Rtn_MonsterAttack")
{
	respath = isInGameClient and RESPATH.Subpanel_MonsterAttack or "",
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if l_configs:check_activity(6963) then
			return true
		else
			return false
		end
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(6963)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
}


--攻城兑换
l_configs:addSubPanel("Rtn_MonsterChanger")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 6884, 
		   dofile "Configs/public_award_monsterattacker.lua",RESPATH.SubPanel_PublicTestWord4) end,
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if l_configs:check_activity(6963) then
			return true
		else
			return false
		end
	end,
}

--迎春田猎
l_configs:addSubPanel("Rtn_12Instance")
{
	respath = isInGameClient and RESPATH.SubPanel_LaBaShouLie or "",
	needshow = function ()
		if not l_configs:check_host_lv(55,0) then
			return false
		end
		return l_configs:check_activity(3366)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 7773}
	},
}
--腊八祭祀
l_configs:addSubPanel("Rtn_KMLantern")
{
	create_panel = function(panel) return require "GUI.ECLBActivity".ECSubPanelLB1.new(panel) end,
	needshow = function()
		return l_configs:check_activity(3366)
	end,
}
--腊八豪礼
l_configs:addSubPanel("Rtn_LaBaHaoLi")
{
	create_panel = function(panel) return require "GUI.ECLBActivity".ECSubPanelLB3.new(panel) end,
	needshow = function()
		return l_configs:check_activity(3366)
	end,
}

--元宵节兑换
l_configs:addSubPanel("Rtn_YXJ_Exchange")
{
	create_panel = function(panel) return require "GUI.ECYXJActivity".ECSubPanelYXJActivity1.new(panel) end,
	needshow = function () 
	return l_configs:check_activity(3655)
	end,
}

--元宵节说明
l_configs:addSubPanel("Rtn_YXJ_Explain")
{
	respath = isInGameClient and RESPATH.SubPanel_YXJ_Explain or "",
	needshow = function () return l_configs:check_activity(3655)
	end,
	update = function (panel)
		if not isInGameClient then return end
		if l_configs:check_activity(3656) then
			l_configs:set_visible(panel,"Txt_Label/Txt_WangCheng",true)
			l_configs:set_visible(panel,"Txt_Label/Txt_BianJing",false)
			l_configs:set_visible(panel,"Txt_Label/Txt_TianMenGuan",false)
			if not l_configs:check_activity(3656) then
				l_configs:set_visible(panel,"Txt_Label/Txt_WangCheng",false)
			end
		elseif l_configs:check_activity(3657) then
			l_configs:set_visible(panel,"Txt_Label/Txt_TianMenGuan",true)
			l_configs:set_visible(panel,"Txt_Label/Txt_WangCheng",false)
			l_configs:set_visible(panel,"Txt_Label/Txt_BianJing",false)
			if not l_configs:check_activity(3657) then
				l_configs:set_visible(panel,"Txt_Label/Txt_TianMenGuan",false)
			end
		elseif l_configs:check_activity(3658) then
			l_configs:set_visible(panel,"Txt_Label/Txt_BianJing",true)
			l_configs:set_visible(panel,"Txt_Label/Txt_TianMenGuan",false)
			l_configs:set_visible(panel,"Txt_Label/Txt_WangCheng",false)
			if not l_configs:check_activity(3658) then
				l_configs:set_visible(panel,"Txt_Label/Txt_BianJing",false)
			end
		end
	end
}

--元宵节领奖
l_configs:addSubPanel("Rtn_YXJ_Rank")
{
	needshow = function () 
	return l_configs:check_activity(3655)
	end,
	create_panel = function(panel) return require "GUI.ECYXJActivity".ECSubPanelYXJActivity3.new(panel) end,

-- 	local ECSubPanelYXJActivity3 = require "GUI.ECYXJActivity".ECSubPanelYXJActivity3
-- 	return ECSubPanelYXJActivity3.new(panel)
-- end)
-- {
-- 	needshow = function() return require "GUI.ECYXJActivity".ECSubPanelYXJActivity1.IsYXJActivityOpen() end,
-- }
}

--新春红包
l_configs:addSubPanel("Rtn_YearRedBag")
{
	create_panel = function ( panel )
		local ECSubPanelYearRedBag = require "GUI.ECSubPanelYearRedBag" 
		return ECSubPanelYearRedBag.new(panel, RESPATH.SubPanel_YearRedBag, 7095) 
	end,
	--respath = isInGameClient and RESPATH.SubPanel_YearRedBag or "",
	needshow = function () 
		if not l_configs:check_host_lv(36,0) then
			return false
		end
	return l_configs:check_activity(7095)
	end,
}
--节日祝福`春节回流11天
l_configs:addSubPanel("Rtn_2017ChunJie")
{
	respath = isInGameClient and RESPATH.SubPanel_Chunjie or "",
	needshow = function() return l_configs:check_activity(7096) end,
}

--节日祝福`春节回流3天
l_configs:addSubPanel("Rtn_2017ChunJieBack")
{
	respath = isInGameClient and RESPATH.SubPanel_ChunJie3Day,
	needshow = function() 
		if not l_configs:check_activity(7097) then     --如果活动没开就不显示
			return false
		end
		
    	--if require "Task.ECTaskInterface".GetTaskFinishCountInfo(2763)  >= 9 then  --如果上线天数大于等于9 就不显示
		--	return false
		--end
		
		if l_configs:is_task_completed(2764) then  --如果小于36级就不显示
			return false
		end
		
		return true		
	end,
	click = {
	    Btn_GetReward1day = {type = "accept_task", param = 2773},
		Btn_GetReward3day = {type = "accept_task", param = 2765},
		Btn_GetReward5day = {type = "accept_task", param = 2766},
		Btn_GetReward7day = {type = "accept_task", param = 2767},
		Btn_GetReward11day = {type = "accept_task", param = 2768},
	},
	groupItems = {"Group3day/Group_Item00","Group3day/Group_Item01","Group3day/Group_Item02","Group3day/Group_Item03","Group3day/Group_Item04",
				"Group5day/Group_Item00","Group5day/Group_Item01","Group5day/Group_Item02","Group5day/Group_Item03","Group5day/Group_Item04",
				"Group7day/Group_Item00","Group7day/Group_Item01","Group7day/Group_Item02","Group7day/Group_Item03","Group7day/Group_Item04",
				"Group11day/Group_Item00","Group11day/Group_Item01","Group11day/Group_Item02","Group11day/Group_Item03","Group11day/Group_Item04",
				"Group1day/Group_Item00","Group1day/Group_Item01","Group1day/Group_Item02","Group1day/Group_Item03","Group1day/Group_Item04",},
	update = function (panel)
		if not isInGameClient then return end
		if l_configs:can_accept_task(2765) or l_configs:is_task_completed(2765) then
			l_configs:set_visible(panel,"Group3day",true)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"Group11day",false)
			l_configs:set_visible(panel,"Group1day",false)
			l_configs:set_visible(panel,"Label_1357",true)

			if not l_configs:is_task_completed(2765) then
				l_configs:set_visible(panel,"Group3day/Sprite",false)
				l_configs:set_visible(panel,"Group3day/Btn_GetReward3day",true)
				l_configs:set_visible(panel,"Label_1357",true)
			else
				l_configs:set_visible(panel,"Group3day/Sprite",true)
				l_configs:set_visible(panel,"Group3day/Btn_GetReward3day",false)
				l_configs:set_visible(panel,"Label_1357",true)
			end
		elseif l_configs:can_accept_task(2766) or l_configs:is_task_completed(2766) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",true)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"Group11day",false)
			l_configs:set_visible(panel,"Group1day",false)
			l_configs:set_visible(panel,"Label_1357",true)
			if not l_configs:is_task_completed(2766) then
				l_configs:set_visible(panel,"Group5day/Sprite",false)
				l_configs:set_visible(panel,"Group5day/Btn_GetReward5day",true)
				l_configs:set_visible(panel,"Label_1357",true)
			else
				l_configs:set_visible(panel,"Group5day/Sprite",true)
				l_configs:set_visible(panel,"Group5day/Btn_GetReward5day",false)
				l_configs:set_visible(panel,"Label_1357",true)
			end
		elseif l_configs:can_accept_task(2767) or l_configs:is_task_completed(2767) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",true)
			l_configs:set_visible(panel,"Group11day",false)
			l_configs:set_visible(panel,"Group1day",false)
			l_configs:set_visible(panel,"Label_1357",true)
			if not l_configs:is_task_completed(2767) then
				l_configs:set_visible(panel,"Group7day/Sprite",false)
				l_configs:set_visible(panel,"Group7day/Btn_GetReward7day",true)
				l_configs:set_visible(panel,"Label_1357",true)
			else
				l_configs:set_visible(panel,"Group7day/Sprite",true)
				l_configs:set_visible(panel,"Group7day/Btn_GetReward7day",false)
				l_configs:set_visible(panel,"Label_1357",true)
			end
		elseif l_configs:can_accept_task(2768) or l_configs:is_task_completed(2768) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"Group11day",true)
			l_configs:set_visible(panel,"Group1day",false)
			l_configs:set_visible(panel,"Label_1357",true)
			if not l_configs:is_task_completed(2768) then
				l_configs:set_visible(panel,"Group11day/Sprite",false)
				l_configs:set_visible(panel,"Group11day/Btn_GetReward11day",true)
				l_configs:set_visible(panel,"Label_1357",true)
			else
				l_configs:set_visible(panel,"Group11day/Sprite",true)
				l_configs:set_visible(panel,"Group11day/Btn_GetReward11day",false)
				l_configs:set_visible(panel,"Label_1357",true)
			end
		elseif l_configs:can_accept_task(2773) or l_configs:is_task_completed(2773) then
			l_configs:set_visible(panel,"Group3day",false)
			l_configs:set_visible(panel,"Group5day",false)
			l_configs:set_visible(panel,"Group7day",false)
			l_configs:set_visible(panel,"Group11day",false)
			l_configs:set_visible(panel,"Group1day",true)
			l_configs:set_visible(panel,"Label_11",true)
			if not l_configs:is_task_completed(2773) then
				l_configs:set_visible(panel,"Group1day/Sprite",false)
				l_configs:set_visible(panel,"Group1day/Btn_GetReward1day",true)
				l_configs:set_visible(panel,"Label_11",true)
			else
				l_configs:set_visible(panel,"Group1day/Sprite",true)
				l_configs:set_visible(panel,"Group1day/Btn_GetReward1day",false)
				l_configs:set_visible(panel,"Label_11",true)
			end	
		end
	end
}



--春节翻牌
l_configs:addSubPanel("Rtn_Springcard")
{
	needshow = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.NeedShow(7144)
	end,
	create_panel = function( panel )
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		return ECSubPanelChildrensDay.new(panel, RESPATH.SubPanel_Springcard, 7144)
	end,
	badgeupdate = function()
		if not isInGameClient then return false end
		local ECSubPanelChildrensDay = require "GUI.ECSubPanelChildrensDay"
		ECSubPanelChildrensDay.RefreshBadge(7144, "Springcard")
	end
}



--每日运签


l_configs:addSubPanel("Rtn_Springrenwu")
{
	create_panel = function ( panel )
		local ECSubPanelThanksgivingDay = require "GUI.ECSubPanelThanksgivingDay" 
		return ECSubPanelThanksgivingDay.new(panel, RESPATH.SubPanel_ThanksgivingDay, 7143, "Springrenwu") 
	end,
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(7143)
	end,
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECSubPanelThanksgivingDay = require "GUI.ECSubPanelThanksgivingDay"
		ECSubPanelThanksgivingDay.RefreshBadge(7143, "Springrenwu")
	end
}

--[[
-- 四圣兽青龙引导
l_configs:addSubPanel("Rtn_4_Spirit_Qinglong")
{
	
	respath = isInGameClient and RESPATH.SubPanel_4_Spirit_Intro_Qinglong or "",
	needshow = function() 
		local FourSpiritCfg = dofile "Configs/fourspirit.lua"
		return l_configs:check_activity(7138) and FourSpiritCfg.OpenInstance ==1 and l_configs:check_host_lv(50,0) 
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02"},
	click = 
	{
		Btn_Go = {type = "talk_to_npc", param = 348}
	},
	
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7138)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日至%d月%d日 18:00-22:00",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,	
}
]]
--[[ 四圣兽朱雀引导
l_configs:addSubPanel("Rtn_4_Spirit_Zhuque")
{
	
	respath = isInGameClient and RESPATH.SubPanel_4_Spirit_Intro_Zhuque or "",
	needshow = function() 
		local FourSpiritCfg = dofile "Configs/fourspirit.lua"
		return l_configs:check_activity(7138) and FourSpiritCfg.OpenInstance == 2 and l_configs:check_host_lv(50,0) 
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02"},
	click = 
	{
		Btn_Go = {type = "talk_to_npc", param = 348}
	},
	
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7138)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日至%d月%d日 18:00-22:00",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,	
}
-- 四圣兽白虎引导
l_configs:addSubPanel("Rtn_4_Spirit_Baihu")
{
	
	respath = isInGameClient and RESPATH.SubPanel_4_Spirit_Intro_Baihu or "",
	needshow = function() 
		local FourSpiritCfg = dofile "Configs/fourspirit.lua"
		return l_configs:check_activity(7138) and FourSpiritCfg.OpenInstance == 3 and l_configs:check_host_lv(50,0) 
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02"},
	click = 
	{
		Btn_Go = {type = "talk_to_npc", param = 348}
	},
	
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7138)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日至%d月%d日 18:00-22:00",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,	
}

-- 四圣兽玄武引导
l_configs:addSubPanel("Rtn_4_Spirit_Xuanwu")
{
	
	respath = isInGameClient and RESPATH.SubPanel_4_Spirit_Intro_Xuanwu or "",
	needshow = function() 
		local FourSpiritCfg = dofile "Configs/fourspirit.lua"
		return l_configs:check_activity(7138) and FourSpiritCfg.OpenInstance ==4 and l_configs:check_host_lv(50,0) 
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02"},
	click = 
	{
		Btn_Go = {type = "talk_to_npc", param = 348}
	},
	
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7138)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日至%d月%d日 18:00-22:00",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,	
}
]]

--四圣兽齐袭引导
l_configs:addSubPanel("Rtn_4_Spirit_Together")
{
	respath = isInGameClient and RESPATH.SubPanel_4_Spirit_Together or "",
	needshow = function()
		if not l_configs:check_host_lv(50,0) then
			return false
		end
		return l_configs:check_activity(7138)
	end,
	groupItems = {"Group_Item/Group_Item01", "Group_Item/Group_Item02","Group_Item/Group_Item03", "Group_Item/Group_Item04"},
	click = 
	{
		Btn_Go = {type = "talk_to_npc", param = 348}
	},
}


-- 英雄令
l_configs:addSubPanel("Rtn_TaskQuest")
{
	respath = isInGameClient and RESPATH.SubPanel_TaskQuest or "",
	needshow = function()
		if not l_configs:check_host_lv(60,0) then
			return false
		end
		if not l_configs:check_activity(7059) then
			return false
		end
		return true
	end,
	
	click = {
		Btn_Go = function(panel, sender)
			panel.parent:DestroyPanel()
			require "GUI.ECPanelTaskQuest".Instance():ShowPanel(true)
		end
	},
	
	update = function (panel)
		local canGetReward1 = require "GUI.ECPanelTaskQuest".Instance():CanGetNationReward()
		local canGetReward2 = require "GUI.ECPanelTaskQuest".Instance():CanGetFactionReward()
		l_configs:set_visible(panel, "Btn_Go/badge", canGetReward1 or canGetReward2)
	end,
		
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECPanelTaskQuest = require "GUI.ECPanelTaskQuest"
		ECPanelTaskQuest.RefreshBadge(7059)
	end
}

--南蛮入侵第二季介绍

l_configs:addSubPanel("Rtn_Nanmanruqin")
{
	respath = isInGameClient and RESPATH.SubPanel_Nanmanruqin or "",
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		return l_configs:check_activity(7198)
	end,
}

--南蛮入侵第三季
l_configs:addSubPanel("Rtn_SouthInvade")
{
	respath = isInGameClient and RESPATH.SubPanel_SouthInvade or "",
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		return l_configs:check_activity(7316)
	end,
}


--南蛮兑换
l_configs:addSubPanel("Rtn_SouthCharger")
{
	create_panel = function(panel) return require "GUI.ECSubPanelPublicWord".new(panel, 7333, 
		   dofile "Configs/public_award_SouthInvade.lua",RESPATH.SubPanel_PublicTestWord4) end,
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if l_configs:check_activity(7333) then
			return true
		else
			return false
		end
	end,
}




--植树节活动介绍

l_configs:addSubPanel("Rtn_Zhishujie")
{
	respath = isInGameClient and RESPATH.SubPanel_Zhishujie or "",
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		return l_configs:check_activity(7528)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(3865)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_Share = {type = "talk_to_npc", param = 8599}
	},
}

--大逃亡副本
l_configs:addSubPanel("Rtn_ChaseSoul")
{
	respath = isInGameClient and RESPATH.SubPanel_ChaseSoul or "",
	needshow = function()
		if not l_configs:check_host_lv(50,0) then
			return false
		end
		if l_configs:check_activity(7643) then
			return true
		else
			return false
		end
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7643)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeHour2"), txt_time)
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02"},
	click = {												--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 15148},	
		},
}

--清明节活动介绍
l_configs:addSubPanel("Rtn_QMJ")
{
	respath = isInGameClient and RESPATH.SubPanel_QMJ_everyday or "",
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		return l_configs:check_activity(7639)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7639)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_Go = {type = "talk_to_npc", param = 17329}
	},
}
--清明节英灵祭奠
l_configs:addSubPanel("Rtn_QMJ_Task")
{
	respath = isInGameClient and RESPATH.SubPanel_QMJ_task or "",
	needshow = function()
		if not l_configs:check_host_lv(0,0) then
			return false
		end
		return l_configs:check_activity(7639)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7639)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_Go = {type = "talk_to_npc", param = 749}
	},
}


--合服补偿引导（前期&后期）
l_configs:addSubPanel("Rtn_Hefubuchang")
{
	respath = isInGameClient and RESPATH.SubPanel_HefuBuchang,
	needshow = 
	function() 
		if l_configs:check_host_lv(30,0) then
			if l_configs:check_activity(7868) then
				return true
			elseif l_configs:check_activity(7869) then
				return true
			elseif l_configs:check_activity(7870) then
				return true
			elseif l_configs:check_activity(7871) then
				return true
			elseif l_configs:check_activity(7872) then
				return true
			elseif l_configs:check_activity(3028) then
				return true
			else
				return false
			end
		else
			return false
		end
	end,
	click = {
		Btn_Go = {type = "talk_to_npc", param = 7420},
	},
	groupItems = {"Group_Item_Before/Group_Item01","Group_Item_Before/Group_Item02","Group_Item_After/Group_Item01","Group_Item_After/Group_Item02","Group_Item_After/Group_Item03"},
	update = function (panel)
		if not isInGameClient then
			return 
		end
		if l_configs:check_activity(3028) then
			l_configs:set_visible(panel,"Gound_Bg/Txt_Before",false)
			l_configs:set_visible(panel,"Group_Item_Before",false)
			l_configs:set_visible(panel,"Gound_Bg/Txt_After",true)
			l_configs:set_visible(panel,"Group_Item_After",true)
		else
			l_configs:set_visible(panel,"Gound_Bg/Txt_Before",true)
			l_configs:set_visible(panel,"Group_Item_Before",true)
			l_configs:set_visible(panel,"Gound_Bg/Txt_After",false)
			l_configs:set_visible(panel,"Group_Item_After",false)
		end
		local ActivityList={7868,7869,7870,7871,7872,3028}
		local LevelLimitList={70,70,73,75,80,30}
		local ActivityId = 0
		local LevelLimit = 0
		for k,v in pairs(ActivityList) do
			if l_configs:check_activity(v) then
				ActivityId = v
				LevelLimit = LevelLimitList[k]
				break
			end
		end
		local activity_opentime,activity_endtime=l_configs:get_activitytime(ActivityId)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("活動時間：%d月%d日%d:%02d至%d月%d日%d:%02d",dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local txt_level = string.format("等級達到%d才可領取",LevelLimit)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Time/Txt_Time"), txt_time)
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Gound_Bg/Txt_Level"), txt_level)
		if l_configs:check_host_lv(LevelLimit,0) then
			l_configs:set_visible(panel,"Btn_Go",true)
			l_configs:set_visible(panel,"Gound_Bg/Txt_Level",false)
		else
			l_configs:set_visible(panel,"Btn_Go",false)
			l_configs:set_visible(panel,"Gound_Bg/Txt_Level",true)
		end				
	end
}


-- 阵营战
l_configs:addSubPanel("Rtn_Camp")
{
	respath = isInGameClient and RESPATH.SubPanel_Camp or "",
	needshow = function() return l_configs:check_activity(8443) end,
	groupItems = { "Group_Right/Btn_FirstReward" },
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 15574},
		Btn_Camp = function(panel, sender)
			require "GUI.ECPanelCampResourceWar".Instance():ShowPanel(true)
		end

	},
}

--拼图
l_configs:addSubPanel("Rtn_CollectMap")
{
	create_panel = function(panel) return require "GUI.ECSubPanelCollectMap".new(panel) end,
	needshow = function()
		if not isInGameClient then return false end
		local ECSubPanelCollectMap = require "GUI.ECSubPanelCollectMap"
		return ECSubPanelCollectMap.NeedShow(36,7852)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(7852)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_Time"), txt_time)
	end,
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local ECSubPanelCollectMap = require "GUI.ECSubPanelCollectMap"
		ECSubPanelCollectMap.RefreshBadge(36,7852)

	end,
}

--龙珠
l_configs:addSubPanel("Rtn_DragonBall")
{
	respath = isInGameClient and RESPATH.SubPanel_DragonBall or "",
	needshow = function()
		if l_configs:check_activity(8879) then
			return l_configs:check_host_lv(36,0)
		else
			return false
		end
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(8879)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03","Group_Item/Group_Item04"},
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 400},
		Btn_ToSummon =  { type = "talk_to_npc", param = 1736 },

	},
}
--主题周
l_configs:addSubPanel("Rtn_ThemeWeek")
{
	respath = isInGameClient and RESPATH.SubPanel_ThemeWeek,
	needshow = 
	function() 
		if l_configs:check_host_lv(30,0) then
			if l_configs:check_activity(18589) then
				return true
			elseif l_configs:check_activity(18590) then
				return true
			elseif l_configs:check_activity(18591) then
				return true
			elseif l_configs:check_activity(18592) then
				return true
			elseif l_configs:check_activity(8727) then
				return true
			elseif l_configs:check_activity(8755) then
				return true
			elseif l_configs:check_activity(8729) then
				return true
			elseif l_configs:check_activity(8730) then
				return true
			elseif l_configs:check_activity(8732) then
				return true
			elseif l_configs:check_activity(8733) then
				return true
			elseif l_configs:check_activity(8798) then
				return true
			else
				return false
			end
		else
			return false
		end
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = function ()
			if l_configs:check_activity(8727) then 
				return 750
			elseif l_configs:check_activity(8729) then 
				return 399
			elseif l_configs:check_activity(8730) then 
				return 6358
			--elseif l_configs:check_activity(8730) then 
				--return 350
			end
		end },
	},
	update = function (panel)
		if not isInGameClient then
			return 
		end
		if l_configs:check_activity(18589) then --双倍活跃
            l_configs:set_visible(panel,"Theme_Huoyue",true)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(18590) then --灵珠
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",true)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
			l_configs:set_visible(panel,"Btn_ToGet",false)
		elseif l_configs:check_activity(18591) then --马草
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",true)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(18592) then --一子午谷
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",true)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(8727) then --刺探
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",true)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(8755) then --奋起复活
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",true)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
			l_configs:set_visible(panel,"Btn_ToGet",false)
		elseif l_configs:check_activity(8729) then --国运
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",true)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(8730) then --一骑当千
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",true)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(8732) then --孝廉
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",true)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Btn_ToGet",false)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
		elseif l_configs:check_activity(8733) then --九龙鼎
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",true)
			l_configs:set_visible(panel,"Theme_Guozhan",false)
			l_configs:set_visible(panel,"Btn_ToGet",false)
		elseif l_configs:check_activity(8798) then --国战
            l_configs:set_visible(panel,"Theme_Huoyue",false)
            l_configs:set_visible(panel,"Theme_Lingzhu",false)
            l_configs:set_visible(panel,"Theme_Lingju",false)
            l_configs:set_visible(panel,"Theme_Lingqi",false)
			l_configs:set_visible(panel,"Theme_Citan",false)
			l_configs:set_visible(panel,"Theme_Fuhuo",false)
			l_configs:set_visible(panel,"Theme_Guoyun",false)
			l_configs:set_visible(panel,"Theme_Yiqidangqian",false)
			l_configs:set_visible(panel,"Theme_Huoshaodiying",false)
			l_configs:set_visible(panel,"Theme_Xiaolian",false)
			l_configs:set_visible(panel,"Theme_Cuxiao",false)
			l_configs:set_visible(panel,"Btn_ToGet",false)
			l_configs:set_visible(panel,"Theme_Guozhan",true)
		else
			return fasle
		end

		local ActivityList={18589,18590,18591,18592,8727,8755,8729,8730,8732,8733,8798}
		local LevelLimitList={35,61,61,59,35,36,30,55,36,0,36}
		local ActivityId = 0
		local LevelLimit = 0
		for k,v in pairs(ActivityList) do
			if l_configs:check_activity(v) then
				ActivityId = v
				LevelLimit = LevelLimitList[k]
				break
			end
		end
		local activity_opentime,activity_endtime=l_configs:get_activitytime(ActivityId)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("活動時間：%d月%d日%d:%02d至%d月%d日%d:%02d",dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local txt_level = string.format("等級達到%d才可參與",LevelLimit)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Time/Txt_Time"), txt_time)
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Bg/Txt_Level"), txt_level)
		if l_configs:check_host_lv(LevelLimit,0) then
			l_configs:set_visible(panel,"Btn_ToGet",true)
			l_configs:set_visible(panel,"Group_Bg/Txt_Level",false)
		else
			l_configs:set_visible(panel,"Btn_ToGet",false)
			l_configs:set_visible(panel,"Group_Bg/Txt_Level",true)
		end	
		if l_configs:check_activity(8732) or l_configs:check_activity(8798) or l_configs:check_activity(8727) or l_configs:check_activity(18590) or l_configs:check_activity(8733) or l_configs:check_activity(18589) or l_configs:check_activity(18591) or l_configs:check_activity(18592) or 
			l_configs:check_activity(8755) then
			l_configs:set_visible(panel,"Btn_ToGet",false)
			l_configs:set_visible(panel,"Group_Bg/Txt_Level",false)
		end
	end
}



--远征战场
l_configs:addSubPanel("Rtn_AllPlayer")
{
	respath = isInGameClient and RESPATH.SubPanel_AllPlayer or "",
	needshow = function()
		if not l_configs:check_host_lv(60,0) then
			return false
		end
		return l_configs:check_activity(8875)--每个版本对应的活动不同
	end,
	
	update = function(panel)
		if not isInGameClient then 
			return 
		end
		require "Guide.ECFunctionBadge".SetBadgeNumber("AllPlayer", 0)
	    if l_configs:check_activity(8723) then--每个版本对应的活动不同
			l_configs:set_visible(panel, "Btn_ToGet", true)
		end
	    if not l_configs:check_activity(8723) then--每个版本对应的活动不同
			l_configs:set_visible(panel, "Btn_ToGet", false)
		end		
	end,
	
			
	--update = function (panel)
	--	local activity_opentime,activity_endtime=l_configs:get_activitytime(8723)
	--	local dateopen = os.date("*t",activity_opentime)
	--	local dateclose = os.date("*t",activity_endtime)
	--	local txt_time = string.format("%d月%d日~%d月%d日 18:00-22:00",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
	--	local ECGUITools = require "GUI.ECGUITools"
	--	ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_timeinfo/Group_Introduce/SubPanel/Scroll View/Txt_Time"), txt_time)
	--end,
	
	
		click = {												--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 749}		
		},
	
}

--测试地图排名boss张角
l_configs:addSubPanel("Rtn_RankBossZ")
{
	respath = isInGameClient and RESPATH.SubPanel_RankingShowZ or "",
	needshow = function() return l_configs:check_activity(10948) end,

	update = function(panel)
	if not isInGameClient then 
		return 
	end
	
	local ECGUITools = require "GUI.ECGUITools"
		--上一轮榜首
	local ECPanelRankingBoss = require "GUI.ECPanelRankingBoss"
		if ECPanelRankingBoss.Instance().m_LastTopRankingList then
			local name = ECPanelRankingBoss.Instance().m_LastTopRankingList[17281] --BOSS ID对应玩家名字
			--warn("BOSS ID对应玩家名字",name)
			if name then
				local str_name = GameUtil.UnicodeToUtf8(name)
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), str_name)
			else
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
			end
		else
			ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
		end		
		--[[倒计时
		local opentime,endtime = l_configs:get_activitytime(9261)
		local dateopen = os.date("*t", opentime)
		local dateclose = os.date("*t", endtime)
		local tcur = GameUtil.GetServerGMTTime() --当前服务器时间
		local tleft = opentime+200 - tcur   --怪物刷新倒计时，六龙庆典界面活动的开启时间+（boss刷新时间与六龙庆典界面活动的开启时间的时间差，用秒表示）

		if tleft < 0 then
			l_configs:set_visible(panel,"Time_CountDown",false)
		end

		local tdate = l_configs:formatTime(tleft)
		local str = string.format("%d:%d:%d", tdate.hour+tdate.day*24, tdate.min, tdate.sec)
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Time_CountDown/Txt_Time"), str)

		local ECGUITools = require "GUI.ECGUITools"
		l_configs:timer_update(1, function()
			if not l_configs:check_valid(panel.m_panel) then
				return false
			end

			local tcur = GameUtil.GetServerGMTTime() 
			local tleft = opentime+200 - tcur   

			if tleft < 0 then
				l_configs:set_visible(panel,"Time_CountDown",false)
			end

			local tdate = l_configs:formatTime(tleft)
			local str = string.format("%d:%d:%d", tdate.hour+tdate.day*24, tdate.min, tdate.sec)
			ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Time_CountDown/Txt_Time"), str)
			return true
		end)]]
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03",
	              "Group_Item/Group_Item04","Group_Item/Group_Item05","Group_Item/Group_Item06","Group_Item/Group_Item07"},
	click = {
		Btn_Go = {type =  "talk_to_npc", param = 16970}
	},
}
--测试地图排名boss曹操
l_configs:addSubPanel("Rtn_RankBossC")
{
	respath = isInGameClient and RESPATH.SubPanel_RankingShowC or "",
	needshow = function() return l_configs:check_activity(10947) end,

	update = function(panel)
	if not isInGameClient then 
		return 
	end
	
	local ECGUITools = require "GUI.ECGUITools"
		--上一轮榜首
	local ECPanelRankingBoss = require "GUI.ECPanelRankingBoss"
		if ECPanelRankingBoss.Instance().m_LastTopRankingList then
			local name = ECPanelRankingBoss.Instance().m_LastTopRankingList[17282] --BOSS ID对应玩家名字
			--warn("BOSS ID对应玩家名字",name)
			if name then
				local str_name = GameUtil.UnicodeToUtf8(name)
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), str_name)
			else
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
			end
		else
			ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
		end
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03",
	              "Group_Item/Group_Item04","Group_Item/Group_Item05","Group_Item/Group_Item06","Group_Item/Group_Item07"},
	click = {
		Btn_Go = {type =  "talk_to_npc", param = 17284}
	},
}
--测试地图排名boss马超
l_configs:addSubPanel("Rtn_RankBossM")
{
	respath = isInGameClient and RESPATH.SubPanel_RankingShowM or "",
	needshow = function() return l_configs:check_activity(10949) end,

	update = function(panel)
	if not isInGameClient then 
		return 
	end
	
	local ECGUITools = require "GUI.ECGUITools"
		--上一轮榜首
	local ECPanelRankingBoss = require "GUI.ECPanelRankingBoss"
		if ECPanelRankingBoss.Instance().m_LastTopRankingList then
			local name = ECPanelRankingBoss.Instance().m_LastTopRankingList[17283] --BOSS ID对应玩家名字
			--warn("BOSS ID对应玩家名字",name)
			if name then
				local str_name = GameUtil.UnicodeToUtf8(name)
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), str_name)
			else
				ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
			end
		else
			ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Winer/Txt_Name"), "")
		end
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03",
	              "Group_Item/Group_Item04","Group_Item/Group_Item05","Group_Item/Group_Item06","Group_Item/Group_Item07"},
	click = {
		Btn_Go = {type =  "talk_to_npc", param = 17285}
	},
}		
--国力争霸
l_configs:addSubPanel("Rtn_GuoLi")
{
	respath = isInGameClient and RESPATH.SubPanel_GuoLiZhengBa or "",
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if not l_configs:check_activity(5966) then
			return false
		end
		return true
	end,
	groupItems = {"Group_Item_Before/Group_Item01","Group_Item_Before/Group_Item02","Group_Item_Before/Group_Item03"},
	click = {
		Btn_Go = {type =  "talk_to_npc", param = 12590}
	},
}



-- 跨服阵营战
l_configs:addSubPanel("Rtn_Server_Camp")
{
	respath = isInGameClient and RESPATH.SubPanel_Server_Camp or "",
	needshow = function() return l_configs:check_activity(8803) end,
	groupItems = { "Group_Right/Btn_FirstReward" },
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 15574},
		Btn_Camp = function(panel, sender)
			require "GUI.ECPanelCampResourceWar".Instance():ShowPanel(true)
		end

	},
}

--数字竞拍活动界面

l_configs:addSubPanel("Rtn_GuessNum")
{
	create_panel = function ( panel )
		return require "GUI.ECSubPanelDigitalGuessing".new(panel, RESPATH.SubPanel_GuessNum, 10133,17009) --配置模板id，默认显示道具id
	end,

	--respath = isInGameClient and RESPATH.SubPanel_GuessNum or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		return l_configs:check_activity(10130)
	end,
}



--趣味竞猜
l_configs:addSubPanel("Rtn_SizeQuit")
{
	respath = isInGameClient and RESPATH.SubPanel_SizeQuit or "",
	needshow = function()
		if not l_configs:check_host_lv(1,0) then
			return false
		end
		return l_configs:check_activity(10099)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(10099)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%4d/%d/%d/%d:%02d-%4d/%d/%d/%d:%02d",dateopen.year,dateopen.month,dateopen.day,dateopen.hour,dateopen.min,dateclose.year,dateclose.month,dateclose.day,dateclose.hour,dateclose.min)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeNum"), txt_time)
	end,
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 16891}
	},
}


-- 蓝色妖姬收花奖励
l_configs:addSubPanel("Rtn_FlowerReward01")
{
	create_panel = function ( panel )
		local ECSubPanelFlowerReward = require "GUI.ECSubPanelFlowerReward"
		return ECSubPanelFlowerReward.new(panel, ECSubPanelFlowerReward.FLOWERREWARDTYPE.GET, 13512,RESPATH.Subpanel_FlowerReward01) --配置模板id，默认显示道具id
	end,
	needshow = function()
		if not l_configs:check_host_lv(1,0) then
			return false
		end
		if not l_configs:check_activity(13512) --[[or not l_configs:check_activity(13513)]] then
			return false
		end
		return true
	end,
	badgeupdate = function()
		if not isInGameClient then return false end
		local ECSubPanelFlowerReward = require "GUI.ECSubPanelFlowerReward"
		ECSubPanelFlowerReward.RefreshBadge(ECSubPanelFlowerReward.FLOWERREWARDTYPE.GET)
	end
}


-- 蓝色妖姬送花奖励
l_configs:addSubPanel("Rtn_FlowerReward02")
{
	create_panel = function ( panel )
		local ECSubPanelFlowerReward = require "GUI.ECSubPanelFlowerReward"
		return ECSubPanelFlowerReward.new(panel, ECSubPanelFlowerReward.FLOWERREWARDTYPE.SEND, 13512,RESPATH.Subpanel_FlowerReward02) --配置模板id，默认显示道具id
	end,
	needshow = function()
		if not l_configs:check_host_lv(1,0) then
			return false
		end
		if not l_configs:check_activity(13512) --[[or not l_configs:check_activity(13513)]] then
			return false
		end
		return true
	end,
	badgeupdate = function()
		local ECSubPanelFlowerReward = require "GUI.ECSubPanelFlowerReward"
		ECSubPanelFlowerReward.RefreshBadge(ECSubPanelFlowerReward.FLOWERREWARDTYPE.SEND)
	end
}

--累积充值
l_configs:addSubPanel("Rtn_AccumulateRecharge")
{
	create_panel = function(panel)
		return require "GUI.ECContinuousBuy".new(panel, 3) --默认选择第3个页签
	end,
	needshow = function()
		if not l_configs:check_host_lv(1, 0) then
			return false
		end
		return l_configs:check_activity(5138)
	end,
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		require "GUI.ECContinuousBuy".RefreshBadge()
	end,
}

l_configs:addSubPanel("Rtn_FourSwords")
{
	respath = isInGameClient and RESPATH.SubPanel_FourSwords or "",
	needshow = function()
		return l_configs:check_activity(13017)
	end,
	update = function (panel)
		local activity_opentime,activity_endtime=l_configs:get_activitytime(13017)
		local dateopen = os.date("*t",activity_opentime)
		local dateclose = os.date("*t",activity_endtime)
		local txt_time = string.format("%d月%d日-%d月%d日",dateopen.month,dateopen.day,dateclose.month,dateclose.day)
		local ECGUITools = require "GUI.ECGUITools"
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_Time/Txt_TimeHour2"), txt_time)
	end,
	groupItems = {"Group_Item/Group_Item00","Group_Item/Group_Item01","Group_Item/Group_Item02","Group_Item/Group_Item03","Group_Item/Group_Item04"},
	click = {												--点击按钮后寻路找谁
		Btn_ToGet = {type = "talk_to_npc", param = 18555},	
		},
}

--教师节引导任务
l_configs:addSubPanel("Rtn_TeachersDay")
{
	respath = isInGameClient and RESPATH.SubPanel_TeachersDay or "",
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if l_configs:check_activity(14744) then
			return true
		end
		return false
	end,
	update = function (panel)
		if l_configs:is_task_completed(3434) then
			l_configs:set_visible(panel,"Btn",false)
			l_configs:set_visible(panel,"Btn_Cpl",true)
		else
			l_configs:set_visible(panel,"Btn",true)
			l_configs:set_visible(panel,"Btn_Cpl",false)
		end
	end,
	--红点刷新逻辑
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local taskList = {3431}
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
					break
				end
			end
			if l_configs:is_task_completed(3434) then --3446是引导任务的最后一个任务，如果已完成则不刷新红点
				canAcceptTask = false
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("TeachersDay", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)		--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)	--监听任务变化，设置小红点
		l_configs:wait_activity_open(14744, function() set_badge() end)		--监听活动开启，设置小红点
	end,
	click = {												--点击按钮后寻路找谁
		Btn = function(panelbase, sender)
			local ECTaskUtility = require "Task.ECTaskUtility"
			local ECTaskInterface = require "Task.ECTaskInterface"
			local tasks = {3431,3440,3441,3448,3443,3432,3433,3434,3435,3436}
			local taskID = 0
			for i = 1 , #tasks do
				if ECTaskInterface.HasTask(tasks[i]) then
					taskID = tasks[i]
					break
				end
			end
			panelbase.parent:DestroyPanel()
			if taskID ~= 0 then   --玩家已接某一任务的情况
				if ECTaskInterface.CanFinishTask(taskID) then --寻路目标NPC
					ECTaskUtility.BeginTaskAwardNPCAutomove(taskID)
				else
					ECTaskUtility.BeginTaskTargetAutomove(taskID) --寻路任务目标
				end
			else
				panelbase:TalkToNpc(19323)
			end
		end,
	},
}

--教师节日常任务
l_configs:addSubPanel("Rtn_TeachersDay_Daily")
{
	respath = isInGameClient and RESPATH.SubPanel_TeachersDay_Daily or "",
	needshow = function()
		if not l_configs:check_host_lv(30,0) then
			return false
		end
		if l_configs:check_activity(14744) then
			return true
		end
		return false
	end,
	update = function (panel)
		if not l_configs:is_task_completed(3434) then
			l_configs:set_visible(panel,"Btn_Go",false)
			l_configs:set_visible(panel,"Btn_Cpl",false)
		elseif l_configs:is_task_completed(3434) and not l_configs:is_task_completed(3452) then
			l_configs:set_visible(panel,"Btn_Go",true)
			l_configs:set_visible(panel,"Btn_Cpl",false)
		elseif l_configs:is_task_completed(3434) and l_configs:is_task_completed(3452) then
			l_configs:set_visible(panel,"Btn_Go",false)
			l_configs:set_visible(panel,"Btn_Cpl",true)
		end
	end,
	badgeupdate = function()
		if not isInGameClient then
			return false
		end
		local taskList = {3437}
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
					break
				end
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("TeachersDay_Daily", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)		--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)	--监听任务变化，设置小红点
		l_configs:wait_activity_open(14744, function() set_badge() end)		--监听活动开启，设置小红点
	end,
	groupItems = {"Group_Item_Before/Group_Item01","Group_Item_Before/Group_Item02","Group_Item_Before/Group_Item03"},--地术，马草，小变身玩具
	click = {												--点击按钮后寻路找诸葛亮
		Btn_Go = {type = "talk_to_npc", param = 19323},
		Btn_Cpl = {type = "talk_to_npc", param = 19323},
	},
}

--双十一描述
l_configs:addSubPanel("Rtn_DoubleEleven_Des")
{
	respath = isInGameClient and RESPATH.SubPanel_DoubleEleven_Des or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if l_configs:check_activity(15246) then
			return true
		end
		return false
	end,

	update = function (panel) --日常任务寻路按钮显隐
		if l_configs:can_accept_task(3522) or l_configs:can_accept_task(3469) then
			l_configs:set_visible(panel,"Btn_Go",true)
		elseif not l_configs:is_task_completed(3522) then
			l_configs:set_visible(panel,"Btn_Go",false)
			l_configs:set_visible(panel,"Group_Got",false)
			l_configs:set_visible(panel,"Group_Yesterday",true)--提示完成昨天的任务
		else 
			l_configs:set_visible(panel,"Btn_Go",false)
			l_configs:set_visible(panel,"Group_Got",true)
			l_configs:set_visible(panel,"Group_Yesterday",false)
		end
	end,
	badgeupdate = function() --可接日常任务时显示小红点
		if not isInGameClient then
			return false
		end
		local taskList = {3522,3469} --由于不做引导任务就无法开启日常任务，so这俩任务可接的时候都要有小红点
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
				end
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("DoubleEleven_Des", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)--监听任务变化，设置小红点
		l_configs:wait_activity_open(15246, function() set_badge() end)--监听活动开启，设置小红点
	end,

	groupItems = {"Group_Reward/Group_Item01","Group_Reward/Group_Item02","Group_Reward/Group_Item03"},--这里放奖励，具体是什么由.perfab文件里的UI控制。

	click = {										--点击按钮后寻路找段瑢
		Btn_Go = {type = "talk_to_npc", param = 19544},

	},
}

--双十一签到

l_configs:addSubPanel("Rtn_DoubleEleven_Sign")
{
	respath = isInGameClient and RESPATH.SubPanel_DoubleEleven_Sign or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if l_configs:check_activity(15246) then
			return true
		end
		return false
	end,
	update = function (panel)
		--按钮控制
		if l_configs:can_accept_task(3459) then--可以领奖，显示发奖按钮，屏蔽其他
			l_configs:set_visible(panel,"Btn_Sign",false)
			l_configs:set_visible(panel,"Btn_Signed",false)
			l_configs:set_visible(panel,"Btn_Get",true)
			l_configs:set_visible(panel,"Btn_Got",false)
		elseif l_configs:is_task_completed(3459) then--已领奖，显示发奖完成按钮，屏蔽其他
			l_configs:set_visible(panel,"Btn_Sign",false)
			l_configs:set_visible(panel,"Btn_Signed",false)
			l_configs:set_visible(panel,"Btn_Get",false)
			l_configs:set_visible(panel,"Btn_Got",true)
		elseif l_configs:can_accept_task(3457) then--不可领奖且未签到，显示签到按钮，屏蔽其他
			l_configs:set_visible(panel,"Btn_Sign",true)
			l_configs:set_visible(panel,"Btn_Signed",false)
			l_configs:set_visible(panel,"Btn_Get",false)
			l_configs:set_visible(panel,"Btn_Got",false)
		elseif not l_configs:can_accept_task(3457) then--不可领奖且已签到，显示签到完成按钮，屏蔽其他
			l_configs:set_visible(panel,"Btn_Sign",false)
			l_configs:set_visible(panel,"Btn_Signed",true)
			l_configs:set_visible(panel,"Btn_Get",false)
			l_configs:set_visible(panel,"Btn_Got",false)
		end
		--签到天数更新
		--local SignCount = string.format("%d",l_configs:task_finishcount(3458))
		local ECGUITools = require "GUI.ECGUITools"
		local ECTaskInterface = require "Task.ECTaskInterface"
		local count = ECTaskInterface.GetTaskFinishCountInfo(3458)
		ECGUITools.setTextAndColor(panel.m_panel:FindDirect("Group_SignCount/Label_Count"),tostring(count))
	end,
	badgeupdate = function()--当 进入客户端且（可接签到任务 或 可接发奖任务）时,刷新红点。
		if not isInGameClient then
			return false
		end
		local taskList = {3457,3459}
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
					break
				end
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("DoubleEleven_Sign", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)		--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)	--监听任务变化，设置小红点
		l_configs:wait_activity_open(15246, function() set_badge() end)		--监听活动开启，设置小红点
	end,

	groupItems = {"Group_Reward/Group_Item01","Group_Reward/Group_Item02"},
	click = {--点击按钮接取签到或兑换任务
		Btn_Sign = {type = "accept_task",param = 3457},
		Btn_Get = {type = "accept_task",param = 3459},
	},
}

--双十一个人奖励

l_configs:addSubPanel("Rtn_DoubleEleven_Rew")
{
	respath = isInGameClient and RESPATH.SubPanel_DoubleEleven_Rew or "",
	needshow = function()
		if not l_configs:check_host_lv(36,0) then
			return false
		end
		if l_configs:check_activity(15246) then
			return true
		end
		return false
	end,
	update = function (panel)
		--领奖图标
		if l_configs:can_accept_task(3526) then --第一档可领
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Mask",false)--屏蔽蒙灰
			l_configs:set_visible(panel,"Group01/Group_Item01/fx_ui_tallentlistnew_lizi",true)--显示粒子
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Got",false)--屏蔽已领
		elseif l_configs:is_task_completed(3526) then --已领
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Mask",false)--显示蒙灰
			l_configs:set_visible(panel,"Group01/Group_Item01/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Got",true)--显示已领
		else --未达到
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Mask",true)--显示蒙灰
			l_configs:set_visible(panel,"Group01/Group_Item01/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group01/Group_Item01/Img_Got",false)--屏蔽已领
		end

		if l_configs:can_accept_task(3527) then --第二档可领
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Mask",false)--屏蔽蒙灰
			l_configs:set_visible(panel,"Group02/Group_Item02/fx_ui_tallentlistnew_lizi",true)--显示粒子
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Got",false)--屏蔽已领
		elseif l_configs:is_task_completed(3527) then --已领
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Mask",false)--显示蒙灰
			l_configs:set_visible(panel,"Group02/Group_Item02/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Got",true)--显示已领
		else --未达到
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Mask",true)--显示蒙灰
			l_configs:set_visible(panel,"Group02/Group_Item02/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group02/Group_Item02/Img_Got",false)--屏蔽已领
		end

		if l_configs:can_accept_task(3528) then --第三档可领
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Mask",false)--屏蔽蒙灰
			l_configs:set_visible(panel,"Group03/Group_Item03/fx_ui_tallentlistnew_lizi",true)--显示粒子
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Got",false)--屏蔽已领
		elseif l_configs:is_task_completed(3528) then --已领
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Mask",false)--显示蒙灰
			l_configs:set_visible(panel,"Group03/Group_Item03/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Got",true)--显示已领
		else --未达到
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Mask",true)--显示蒙灰
			l_configs:set_visible(panel,"Group03/Group_Item03/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group03/Group_Item03/Img_Got",false)--屏蔽已领
		end

		if l_configs:can_accept_task(3529) then --第四档可领
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Mask",false)--屏蔽蒙灰
			l_configs:set_visible(panel,"Group04/Group_Item04/fx_ui_tallentlistnew_lizi",true)--显示粒子
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Got",false)--屏蔽已领
		elseif l_configs:is_task_completed(3529) then --已领
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Mask",false)--显示蒙灰
			l_configs:set_visible(panel,"Group04/Group_Item04/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Got",true)--显示已领
		else --未达到
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Mask",true)--显示蒙灰
			l_configs:set_visible(panel,"Group04/Group_Item04/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group04/Group_Item04/Img_Got",false)--屏蔽已领
		end

		if l_configs:can_accept_task(3530) then --第五档可领
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Mask",false)--屏蔽蒙灰
			l_configs:set_visible(panel,"Group05/Group_Item05/fx_ui_tallentlistnew_lizi",true)--显示粒子
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Got",false)--屏蔽已领
		elseif l_configs:is_task_completed(3530) then --已领
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Mask",false)--显示蒙灰
			l_configs:set_visible(panel,"Group05/Group_Item05/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Got",true)--显示已领
		else --未达到
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Mask",true)--显示蒙灰
			l_configs:set_visible(panel,"Group05/Group_Item05/fx_ui_tallentlistnew_lizi",false)--屏蔽粒子
			l_configs:set_visible(panel,"Group05/Group_Item05/Img_Got",false)--屏蔽已领
		end

		--按钮控制

		if l_configs:can_accept_task(3526) then
			l_configs:set_visible(panel,"Btn_Get1",true)
			l_configs:set_visible(panel,"Btn_Get2",false)
			l_configs:set_visible(panel,"Btn_Get3",false)
			l_configs:set_visible(panel,"Btn_Get4",false)
			l_configs:set_visible(panel,"Btn_Get5",false)
		elseif l_configs:can_accept_task(3527) then
			l_configs:set_visible(panel,"Btn_Get1",false)
			l_configs:set_visible(panel,"Btn_Get2",true)
			l_configs:set_visible(panel,"Btn_Get3",false)
			l_configs:set_visible(panel,"Btn_Get4",false)
			l_configs:set_visible(panel,"Btn_Get5",false)
		elseif l_configs:can_accept_task(3528) then
			l_configs:set_visible(panel,"Btn_Get1",false)
			l_configs:set_visible(panel,"Btn_Get2",false)
			l_configs:set_visible(panel,"Btn_Get3",true)
			l_configs:set_visible(panel,"Btn_Get4",false)
			l_configs:set_visible(panel,"Btn_Get5",false)
		elseif l_configs:can_accept_task(3529) then
			l_configs:set_visible(panel,"Btn_Get1",false)
			l_configs:set_visible(panel,"Btn_Get2",false)
			l_configs:set_visible(panel,"Btn_Get3",false)
			l_configs:set_visible(panel,"Btn_Get4",true)
			l_configs:set_visible(panel,"Btn_Get5",false)
		elseif l_configs:can_accept_task(3530) then
			l_configs:set_visible(panel,"Btn_Get1",false)
			l_configs:set_visible(panel,"Btn_Get2",false)
			l_configs:set_visible(panel,"Btn_Get3",false)
			l_configs:set_visible(panel,"Btn_Get4",false)
			l_configs:set_visible(panel,"Btn_Get5",true)
		else
			l_configs:set_visible(panel,"Btn_Get1",false)
			l_configs:set_visible(panel,"Btn_Get2",false)
			l_configs:set_visible(panel,"Btn_Get3",false)
			l_configs:set_visible(panel,"Btn_Get4",false)
			l_configs:set_visible(panel,"Btn_Get5",false)
		end

		local taskList = {3530, 3529, 3528, 3527, 3526}
		local allclear = true
		local canadd = false
		for i = 1, #taskList do
			if not l_configs:is_task_completed(taskList[i]) then
				allclear = false
				break
			end
		end
		for i = 1, #taskList do
			if l_configs:can_accept_task(taskList[i]) then
				canadd = true
				break
			end
		end
		if allclear then
			l_configs:set_visible(panel,"Gound_Bg/Txt_Done",true)
			l_configs:set_visible(panel,"Gound_Bg/Txt_NotYet",false)
		elseif not canadd then
			l_configs:set_visible(panel,"Gound_Bg/Txt_Done",false)
			l_configs:set_visible(panel,"Gound_Bg/Txt_NotYet",true)
		else
			l_configs:set_visible(panel,"Gound_Bg/Txt_Done",false)
			l_configs:set_visible(panel,"Gound_Bg/Txt_NotYet",false)
		end
	end,
	badgeupdate = function()--当 进入客户端且可领奖励，刷新红点。
		if not isInGameClient then
			return false
		end
		local taskList = {3530, 3529, 3528, 3527, 3526}
		local function set_badge()
			local canAcceptTask = false
			for i = 1, #taskList do
				if l_configs:can_accept_task(taskList[i]) then
					canAcceptTask = true
					break
				end
			end
			require "Guide.ECFunctionBadge".SetBadgeNumber("DoubleEleven_Rew", canAcceptTask and 1 or 0)
		end
		l_configs:wait_badge_force_refresh(function() set_badge() end)		--监听小红点重置，设置小红点
		l_configs:wait_task_update(taskList, function() set_badge() end)	--监听任务变化，设置小红点
		l_configs:wait_activity_open(15246, function() set_badge() end)		--监听活动开启，设置小红点
		l_configs:wait_reputation_change(144, function() set_badge() end)	--监听个人声望变化，设置小红点
	end,

	groupItems = {"Group01/Group_Item01","Group02/Group_Item02","Group03/Group_Item03","Group04/Group_Item04","Group05/Group_Item05"},--等数值给吧，我太难了
	click = {--点击按钮后我也不知道要干啥，等程序给吧
		Btn_Get1 = {type = "accept_task",param = 3526},
		Btn_Get2 = {type = "accept_task",param = 3527},
		Btn_Get3 = {type = "accept_task",param = 3528},
		Btn_Get4 = {type = "accept_task",param = 3529},
		Btn_Get5 = {type = "accept_task",param = 3530},
	},
}

-- 赛马活动
l_configs:addSubPanel("Rtn_Horse_Race")
{
	respath = isInGameClient and RESPATH.SubPanel_Horse_Race or "",
	needshow = function()
		if not l_configs:check_host_lv(60,0) then
			return false
		end
		return l_configs:check_activity(15697)
	end,
	click = {
		Btn_Go = function () require "GUI.ECPanelNation".Instance():OpenPanel(function(self) self:SwitchPageServerWarQuery() end) end,
	},
	update = function (panel)
		if l_configs:check_activity(15290) then
			l_configs:set_visible(panel,"Btn_Go",true)
		else
			l_configs:set_visible(panel,"Btn_Go",false)
		end
	end,
}
-- 胜者为王 展示活动
l_configs:addSubPanel("Rtn_Server_Camp2")
{
	respath = isInGameClient and RESPATH.SubPanel_Server_Camp2 or "",
	needshow = function() return l_configs:check_activity(19282) end,
	groupItems = { "Group_Right/Btn_FirstReward" },
	click = {
		Btn_ToGet = {type = "talk_to_npc", param = 15574},
		Btn_Camp = function(panel, sender)
			require "GUI.ECPanelCampResourceWar".Instance():ShowPanel(true)
		end

	},
}
return l_subpanels

	
