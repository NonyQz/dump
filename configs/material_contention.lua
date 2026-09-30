
--type 可填 none , talk , kill, mine, autofight
local MaterialList = 
{	--speakid 是该据点被占领时的据点喊话SpeakConfig内的id，如果不填，默认喊话speakid = 1,
	[15103] =  { name = "大據點", tid = 15103 , type = "autofight", sid = 6106, x = -184.07, z = -186.49, btn_name = "Area_Big", speakid = 2,},
	[15104] =  { name = "中據點", tid = 15104 , type = "autofight", sid = 6106, x = -47.14, z = -45.85, btn_name = "Area_In1", },
	[15107] =  { name = "中據點", tid = 15107 , type = "autofight", sid = 6106, x = -151.66 ,z = 184.01, btn_name = "Area_In2", },
	[15108] =  { name = "中據點", tid = 15108 , type = "autofight", sid = 6106, x = 175.89 ,z = -150.84, btn_name = "Area_In3", },
	[15105] =  { name = "小據點", tid = 15105 , type = "autofight", sid = 6106, x = 35.22 ,z = 40.05, btn_name = "Area_Little01", },
	[15109] =  { name = "小據點" , tid = 15109 , type = "autofight", sid = 6106, x = -37.85 ,z = 189.04, btn_name = "Area_Little02", },
	[15110] =  { name = "小據點" , tid = 15110 , type = "autofight", sid = 6106, x = 190.72 ,z = -32.03, btn_name = "Area_Little03", },
	[15111] =  { name = "小據點" , tid = 15111 , type = "autofight", sid = 6106, x = -201 ,z = -33, btn_name = "Area_Little04", },
	[15112] =  { name = "小據點" , tid = 15112 , type = "autofight", sid = 6106, x = -49 ,z = -184.2, btn_name = "Area_Little05", },
}

local SpeakTypeDefine =
{
	TIP = 1, --提示
	CALLBOARD = 3,              --跑马灯
	BROADCAST = 5,              --用类似广播的方式喊
}
--据点喊话 
local SpeakConfig = 
{
	[1] = {
		text = "%s佔領了一個%s，已經開始掠奪物資，大家快去搶佔！",
		repeattime  = 1,
		priority    = 0,
		showuitype  = SpeakTypeDefine.BROADCAST,
	},
	[2] = 
	{
		text = "%s佔領了一個%s，已經開始掠奪物資，大家快去搶佔！",
		repeattime  = 1,
		priority    = 0,
		showuitype  = SpeakTypeDefine.CALLBOARD,
	},

}

local HPSpeakData = 
{
	[1] =
	{
	    Content =
	    {
	        [1] = 
	        {
	             text = "提示：我方[ff0000]%s[-]物資據點遭受攻擊，請注意支援！",
	             showname    ="提示",
	             showimage   = "1020",
	             frametype   = "",
	        },

	    },
	    channel     = 6,
	    period      = 2500,
	    repeattime  = 1,
	    priority    = 0,
	    showinchat  = false,
	    effect      = 0,
	    showuitype  = SpeakTypeDefine.TIP,
	 },

	[2] =
	{
	    Content =
	    {
	        [1] = 
	        {
	             text = "提示：我方[ff0000]%s[-]物資據點已損傷過半，請安排支援！",
	             showname    ="提示",
	             showimage   = "1020",
	             frametype   = "",
	        },

	    },
	    channel     = 6,
	    period      = 2500,
	    repeattime  = 1,
	    priority    = 0,
	    showinchat  = false,
	    effect      = 0,
	    showuitype  = SpeakTypeDefine.TIP,
	 },

	[3] =
	{
	    Content =
	    {
	        [1] = 
	        {
	             text = "提示：我方[ff0000]%s[-]物資據點即將被毀，請火速安排支援！",
	             showname    ="提示",
	             showimage   = "1020",
	             frametype   = "",
	        },

	    },
	    channel     = 6,
	    period      = 2500,
	    repeattime  = 1,
	    priority    = 0,
	    showinchat  = false,
	    effect      = 0,
	    showuitype  = SpeakTypeDefine.TIP,
	 },
}
--据点血量变化喊话配置 
--配置时注意，血量 hp 必须从大到小配置 
local  HPChangeSpeakConfig = 
{
	[1] = {hp = 80, speakid = 1, min_range = 5, }, --血量百分比， 喊话id，血量向下修正范围 94~99之间喊话 75~80
	[2] = {hp = 50, speakid = 2, min_range = 5, },
	[3] = {hp = 20, speakid = 3, min_range = 5, },
}
return 
{ 
	MaterialList = MaterialList,
	SpeakConfig = SpeakConfig,
	HPSpeakData = HPSpeakData,
	HPChangeSpeakConfig = HPChangeSpeakConfig,
}
