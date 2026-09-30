local inputLimit = {}--输入设置配置 输入框名称 = 限制字数（按照汉字字符，三个英文字符等于一个汉字字符）

local configs = {}
function inputLimit:getAllConfigs ()
	return configs
end

function inputLimit:addInputIimit(panelName)
	return function (config)
		if configs[panelName] then
			configs[panelName][#configs[panelName] + 1] = config
		else
			configs[panelName] = {}
			configs[panelName][1] = config
		end
	end
end
-------------------------------------------------------------------
-- 配置开始


--国家公告
inputLimit:addInputIimit("panel_nationannouncement")
{
	txtComponent = "Input_Announcement",
	numComponent = "Gound_Nun/Txt_Num",
	maxLen = 25,
}

inputLimit:addInputIimit("panel_factionannouncement")
{
	txtComponent = "Input_Announcement",
	numComponent = "Gound_Nun/Txt_Num",
	maxLen = 55,
}

--加好友
inputLimit:addInputIimit("panel_addfriend")
{
	txtComponent = "Widget/Input_Name",
	maxLen = 6,
}

--创建角色
inputLimit:addInputIimit("panel_createchar")
{
	txtComponent = "SubPanel_ChooseNation/CharName/Input_Name",
	numComponent = nil,
	maxLen = 6,
}

--帮会创建
inputLimit:addInputIimit("panel_factioncreate")
{
	txtComponent = "Widget/Input_Name",
	numComponent = nil,
	maxLen = 6,
}


--任命官员
inputLimit:addInputIimit("panel_nation_search")
{
	txtComponent = "Input_Name",
	maxLen = 6,
}

--拍卖行搜索
inputLimit:addInputIimit("panel_auction")
{
	txtComponent = "Input_Announcement",
	maxLen = 9,
}

--拍卖行输入单价
inputLimit:addInputIimit("panel_auction")
{
	txtComponent = "Input_Price",
	maxLen = 2,
}

--拍卖行输入数量
inputLimit:addInputIimit("panel_auction")
{
	txtComponent = "Input_Num",
	maxLen = 1,
}

--设置输入激活码
inputLimit:addInputIimit("Panel_Setting","Input")
{
	maxLen = 10,
}


return inputLimit
