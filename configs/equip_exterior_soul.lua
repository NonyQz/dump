----器魂功能配置
--器魂功能配置模板TID 
local EQUIP_SOUL_CONFIG_TID = 7200
--器魂个数
local EQUIP_SOUL_COUNT = 5
--锻造进度最大数 
local EQUIP_SOUL_INTENSIFY_STAGE = 5 
--器魂最大等级 
local EQUIP_SOUL_MAX_LEVEL = 20
--器灵属性个数
local EQUIP_SOUL_SUIT_ATTRIB_COUNT = 3
--器魂等级对应特效配置
--器灵等级对应特效配置

--器魂等级对应的阶段 
local EQUIP_SOUL_LEVEL_TO_STAGE = 
{
	[0] = 0,
	[1] = 1,
	[2] = 1,
	[3] = 1,
	[4] = 1,
	[5] = 2,
	[6] = 2,
	[7] = 2,
	[8] = 2,
	[9] = 2,
	[10] = 3,
	[11] = 3,
	[12] = 3,
	[13] = 3,
	[14] = 3,
	[15] = 4,
	[16] = 4,
	[17] = 4,
	[18] = 4,
	[19] = 4,
	[20] = 5,
}
--没激活和激活的颜色
local EQUIP_SOUL_COLOR = 
{
	[1] = "[808080]", --灰色
	[2] = "[C56F1C]", --橙色
}
--器魂每个阶段对应图标名称
local EQUIP_SOUL_STAGE_SPRITE_NAME = 
{
	[0] = "qihun_level1",
	[1] = "qihun_level1",
	[2] = "qihun_level2",
	[3] = "qihun_level3",
	[4] = "qihun_level4",
	[5] = "qihun_level5",
}
--器魂每个阶段对应名称颜色 
local EQUIP_SOUL_STAGE_COLOR = 
{
	[0] = "[ffffff]",--1颜色
	[1] = "[0077ff]",--1颜色
	[2] = "[ffd926]",--2颜色
	[3] = "[00e104]",--3颜色
	[4] = "[882bf1]",--4颜色
	[5] = "[882bf1]",--5颜色
	[6] = "[882bf1]",--6颜色ff9900橙色
	[7] = "[882bf1]",--7颜色
	[8] = "[FFFFFF]",--8颜色
}
--索引对应器魂名称
local EQUIP_SOUL_NAME_TO_INDEX = 
{
	["qinglong"] = 1,
	["baihu"] = 2,
	["zhuque"] = 3,
	["xuanwu"] = 4,
	["qilin"] = 5,
}
--索引对应器魂中文名称
local EQUIP_SOUL_NAME = 
{
	[1] = "青龍靈",
	[2] = "白虎靈",
	[3] = "朱雀靈",
	[4] = "玄武靈",
	[5] = "麒麟靈",
}
--索引对应器魂中文名称
local EQUIP_SOUL_NAME_2 = 
{
	[1] = "青龍:",
	[2] = "白虎:",
	[3] = "朱雀:",
	[4] = "玄武:",
	[5] = "麒麟:",
}
--名称对应索引 
local EQUIP_SOUL_INDEX_TO_NAME = 
{
	[1] = "QingLong",
	[2] = "BaiHu",
	[3] = "ZhuQue",
	[4] = "XuanWu",
	[5] = "QiLin",
}
--名称对应索引 
local EQUIP_SOUL_INDEX_TO_NAME2 = 
{
	[1] = "qinglong",
	[2] = "baihu",
	[3] = "zhuque",
	[4] = "xuanwu",
	[5] = "qilin",
}
--器灵等级对应的阶段 
local EQUIP_SOUL_SUIT_LEVEL_TO_STAGE = 
{
	[0] = 0,
	[1] = 1,
	[2] = 1,
	[3] = 1,
	[4] = 1,
	[5] = 2,
	[6] = 2,
	[7] = 2,
	[8] = 2,
	[9] = 2,
	[10] = 3,
	[11] = 3,
	[12] = 3,
	[13] = 3,
	[14] = 3,
	[15] = 4,
	[16] = 4,
	[17] = 4,
	[18] = 4,
	[19] = 4,
	[20] = 5,

}
--器灵名称前缀 每个阶段对应的前缀 
local EQUIP_SOUL_SUIT_PREFIX = 
{
	[0] = "器靈套裝",
	[1] = "器靈套裝",
	[2] = "精良·器靈套裝",
	[3] = "優秀·器靈套裝",
	[4] = "卓越·器靈套裝",
	[5] = "無雙·器靈套裝",
	[6] = "無雙·",--预留
	[7] = "無雙·",--预留
	[8] = "無雙·",--预留
}
--器灵 每个阶段对应的颜色
local EQUIP_SOUL_SUIT_COLOR = 
{
	[0] = "[ffffff]",--1颜色
	[1] = "[0077ff]",--1颜色
	[2] = "[ffd926]",--2颜色
	[3] = "[00e104]",--3颜色
	[4] = "[882bf1]",--4颜色
	[5] = "[882bf1]",--5颜色
	[6] = "[882bf1]",--6颜色ff9900橙色
	[7] = "[882bf1]",--7颜色
	[8] = "[FFFFFF]",--8颜色
}

--器灵锻造失败后的提示语 
local EUIQP_SOUL_INTENSIFY_FAIL_TIP = 
{
    [1]=
	{
		[0] = "10%的玩家選擇了使用",
		[1] = "50%的玩家選擇了使用",
		[2] = "60%的玩家選擇了使用",
		[3] = "70%的玩家選擇了使用",
		[4] = "80%的玩家選擇了使用",
		[5] = "90%的玩家選擇了使用",
    },
    [2]=
	{
		[0] = "10%的玩家選擇了使用",
		[1] = "50%的玩家選擇了使用",
		[2] = "60%的玩家選擇了使用",
		[3] = "70%的玩家選擇了使用",
		[4] = "80%的玩家選擇了使用",
		[5] = "90%的玩家選擇了使用",
    },
    [3]=
	{
		[0] = "10%的玩家選擇了使用",
		[1] = "50%的玩家選擇了使用",
		[2] = "60%的玩家選擇了使用",
		[3] = "70%的玩家選擇了使用",
		[4] = "80%的玩家選擇了使用",
		[5] = "90%的玩家選擇了使用",
    },
    [4]=
	{
		[0] = "10%的玩家選擇了使用",
		[1] = "50%的玩家選擇了使用",
		[2] = "60%的玩家選擇了使用",
		[3] = "70%的玩家選擇了使用",
		[4] = "80%的玩家選擇了使用",
		[5] = "90%的玩家選擇了使用",
    },
    [5]=
	{
		[0] = "10%的玩家選擇了使用",
		[1] = "50%的玩家選擇了使用",
		[2] = "60%的玩家選擇了使用",
		[3] = "70%的玩家選擇了使用",
		[4] = "80%的玩家選擇了使用",
		[5] = "90%的玩家選擇了使用",
    },
}
return 
{ 
	EQUIP_SOUL_COUNT = EQUIP_SOUL_COUNT,
	EQUIP_SOUL_INTENSIFY_STAGE = EQUIP_SOUL_INTENSIFY_STAGE,
	EQUIP_SOUL_CONFIG_TID = EQUIP_SOUL_CONFIG_TID,
	EQUIP_SOUL_LEVEL_TO_STAGE = EQUIP_SOUL_LEVEL_TO_STAGE, 
	EQUIP_SOUL_STAGE_SPRITE_NAME = EQUIP_SOUL_STAGE_SPRITE_NAME, 
	EQUIP_SOUL_NAME_TO_INDEX = EQUIP_SOUL_NAME_TO_INDEX,
	EQUIP_SOUL_INDEX_TO_NAME = EQUIP_SOUL_INDEX_TO_NAME,
	EQUIP_SOUL_INDEX_TO_NAME2 = EQUIP_SOUL_INDEX_TO_NAME2,
	EQUIP_SOUL_SUIT_LEVEL_TO_STAGE = EQUIP_SOUL_SUIT_LEVEL_TO_STAGE,
	EQUIP_SOUL_SUIT_PREFIX = EQUIP_SOUL_SUIT_PREFIX, 
	EQUIP_SOUL_SUIT_COLOR = EQUIP_SOUL_SUIT_COLOR,
	EUIQP_SOUL_INTENSIFY_FAIL_TIP = EUIQP_SOUL_INTENSIFY_FAIL_TIP,
	EQUIP_SOUL_NAME = EQUIP_SOUL_NAME,
	EQUIP_SOUL_COLOR = EQUIP_SOUL_COLOR,
	EQUIP_SOUL_MAX_LEVEL = EQUIP_SOUL_MAX_LEVEL,
	EQUIP_SOUL_SUIT_ATTRIB_COUNT = EQUIP_SOUL_SUIT_ATTRIB_COUNT,
	EQUIP_SOUL_STAGE_COLOR = EQUIP_SOUL_STAGE_COLOR,
	EQUIP_SOUL_NAME_2 = EQUIP_SOUL_NAME_2,
}