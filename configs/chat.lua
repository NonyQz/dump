local Data = Data or {}
Data.Channel = Data.Channel or {}
Data.Nation = Data.Nation or {}
Data.Cfg = Data.Cfg or {}
Data.Officer_Color = Data.Officer_Color or {}

Data.Cfg = 
{
    MinNationLimit = 30,--国家频道聊天最小等级限制
    SmallPanelStayTime = 15, --缩略面板消息停留时间
    MaxMsgListCount = 100, --聊天界面最大显示的消息条数
    MaxRecentMsgNum = 10, --找回发言最大存储的消息数
    MsgSendCoolTime = 1, --不重复发言的限制时间
    SameMsgSendCoolTime = 10,--重复发言（内容完全相同）的限制时间  10s
}

--世界频道需要显示玩家的国籍
Data.Nation = 
{
	[1] = "[幽]",
	[2] = "[冀]",
	[3] = "[豫]",
	[4] = "[揚]",
	[5] = "[荊]",
	[6] = "[益]",
}
Data.Officer_Color = --各个官职的颜色
{
    [1] = "882bf1",
    [2] = "882bf1",
    [3] = "00e104",
    [4] = "00e104",
    [5] = "ffd926",
    [6] = "ffd926",
    [7] = "ffd926",
    [8] = "ffd926",
    [9] = "ffd926",
    [10] = "ffd926",
    [11] = "ffd926",
}
---------------------------------------------
Data.Channel[0] = --普通频道
{
	channel = 0, --频道id
	channelname = "[普]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[1] = --地图频道
{
	channel = 1,
	channelname = "[地]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[2] = --世界频道
{
	channel = 2,
	channelname = "[世]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFCC99", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[3] = --队伍频道
{
	channel = 3,
	channelname = "[隊]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFFF00", --频道颜色
		rolenamecolor = "FFFF00", --玩家名颜色
		textcolor = "FFFF00", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFFF00", --频道颜色
		rolenamecolor = "FFFF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[4] = --帮派频道
{
	channel = 4,
	channelname = "[幫]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FF80D6", --频道颜色
		rolenamecolor = "FF80D6", --玩家名颜色
		textcolor = "FF80D6", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF80D6", --频道颜色
		rolenamecolor = "FF80D6", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[5] = --广播频道
{
	channel = 5,
	channelname = "[廣播]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[6] = --系统频道
{
	channel = 6,
	channelname = "[系]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "FF9900", --频道颜色
		rolenamecolor = "FF9900", --玩家名颜色
		textcolor = "FF9900", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF9900", --频道颜色
		rolenamecolor = "FF9900", --玩家名颜色
		textcolor = "FF9900", --普通文本颜色
	},
}
Data.Channel[7] = --国家频道
{
	channel = 7,
	channelname = "[國]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[8] = --其他频道
{
	channel = 8,
	channelname = "[其他]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[9] = --指挥频道
{
	channel = 9,
	channelname = "[指揮]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "00FF00", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "00FF00", --频道颜色
		rolenamecolor = "00FF00", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[10] = --好友频道
{
	channel = 10,
	channelname = "[密]",
	cooltime = 0,
	[1] = --小板子
	{
		channelcolor = "FF33FF", --频道颜色
		rolenamecolor = "FF33FF", --玩家名颜色
		textcolor = "FF33FF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF33FF", --频道颜色
		rolenamecolor = "FF33FF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[11] = --盟国频道
{
	channel = 11,
	channelname = "[盟]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FF9D9F", --频道颜色
		rolenamecolor = "FF9D9F", --玩家名颜色
		textcolor = "FF9D9F", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF9D9F", --频道颜色
		rolenamecolor = "FF9D9F", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[12] = --同服频道
{
	channel = 12,
	channelname = "[服]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[13] = --跨服频道
{
	channel = 13,
	channelname = "[跨]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFCC99", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[14] = --战场频道
{
	channel = 14,
	channelname = "[戰]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[15] = --位置所在国频道
{
	channel = 15,
	channelname = "[位置]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFFFFF", --频道颜色
		rolenamecolor = "FFFFFF", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF9900", --频道颜色
		rolenamecolor = "FF9900", --玩家名颜色
		textcolor = "FF9900", --普通文本颜色
	},
}
Data.Channel[16] = -- 跨地区服频道
{
	channel = 16,
	channelname = "[跨]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFCC99", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FFCC99", --频道颜色
		rolenamecolor = "FFCC99", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
Data.Channel[17] = -- 跨地区服所在阵营频道
{
	channel = 17,
	channelname = "[陣]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "FF9D9F", --频道颜色
		rolenamecolor = "FF9D9F", --玩家名颜色
		textcolor = "FF9D9F", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "FF9D9F", --频道颜色
		rolenamecolor = "FF9D9F", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}

Data.Channel[18] = -- 聊天室频道
{
	channel = 18,
	channelname = "[室]",
	cooltime = 10,
	[1] = --小板子
	{
		channelcolor = "9DBBFE", --频道颜色
		rolenamecolor = "9DBBFE", --玩家名颜色
		textcolor = "9DBBFE", --普通文本颜色
	},
	[2] = --大板子
	{
		channelcolor = "9DBBFE", --频道颜色
		rolenamecolor = "9DBBFE", --玩家名颜色
		textcolor = "FFFFFF", --普通文本颜色
	},
}
return Data