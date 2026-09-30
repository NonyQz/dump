
--退出副本后，需要主动打开界面的副本

local instance_quit_show = instance_quit_show or {}

--副本界面路径 注释:
--1.有新的副本添加时,只需要将
--	“X” 改为 “界面名字对应字符串” 即可
-- 	"GUI.ECPanelX" 
--2.多个副本id 对应一个副本入口界面 的 直接 “1对多” 即可

instance_quit_show.ShowAgain =   --是否在完成副本后再度自动打开主题界面
{
	[524] = require "GUI.ECPanelHeroFight",		--英雄试炼 X -> _HeroFight  ---Panel_HeroFight
	[525] = require "GUI.ECPanelArena",			--竞技场   X -> _Arena		---Panel_Arena
	[839] = require "GUI.ECPanelPass",			--闯天关   X -> _Pass		---Panel_Pass
	[885] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[886] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[887] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[888] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[889] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[890] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[891] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[892] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[893] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[894] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[2088] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[2089] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[2090] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[2091] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[4179] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[4180] = require "GUI.ECPanelInstanceStory",   --剧情本   x==ECPanelInstanceStory
	[3102] = require "GUI.ECPanelEliteMonster",   --精英扫荡
}

--副本挑战失败，调用通用失败展示界面
instance_quit_show.Failed = 
{
	[3102] = true,
	[5253] = true,
	[7113] = true,
	[7177] = true,
	[7188] = true,			
	[7189] = true,	
	[12672] = true,
}

--副本挑战成功，调用通用成功展示界面
instance_quit_show.Winner = 
{		
	[5253] = true,
	[7177] = true,
	[12672] = true,
}

--死亡不显示复活界面的副本
instance_quit_show.NoRevive = 
{		
	[525] = true,		--竞技场 
	[839] = true,		--闯天关 
	[885] = true,   --剧情本   x==ECPanelInstanceStory
	[886] = true,   --剧情本   x==ECPanelInstanceStory
	[887] = true,   --剧情本   x==ECPanelInstanceStory
	[888] = true,   --剧情本   x==ECPanelInstanceStory
	[889] = true,   --剧情本   x==ECPanelInstanceStory
	[890] = true,   --剧情本   x==ECPanelInstanceStory
	[891] = true,   --剧情本   x==ECPanelInstanceStory
	[892] = true,   --剧情本   x==ECPanelInstanceStory
	[893] = true,   --剧情本   x==ECPanelInstanceStory
	[894] = true,   --剧情本   x==ECPanelInstanceStory
	[2088] = true,   --剧情本   x==ECPanelInstanceStory
	[2089] = true,   --剧情本   x==ECPanelInstanceStory
	[2090] = true,   --剧情本   x==ECPanelInstanceStory
	[2091] = true,   --剧情本   x==ECPanelInstanceStory
	[4179] = true,   --剧情本   x==ECPanelInstanceStory
	[4180] = true,   --剧情本   x==ECPanelInstanceStory
}

--显示时间类评分界面的副本
instance_quit_show.TimeScore = 
{
	[5281] = true,
}

--显示评分界面的副本
instance_quit_show.Score = 
{		
	[828] = true,
	[958] = true,
	[959] = true,
	[960] = true,	
	[961] = true,
	[829] = true,
	[962] = true,
	[967] = true,
	[968] = true,	
	[830] = true,   
	[969] = true,
	[970] = true,
	[971] = true,
	[972] = true,
	[2135] = true,	
	[2136] = true,   
	[2133] = true,
	[2134] = true,
	[2137] = true,
	[2138] = true,
	[4181] = true,
	[4182] = true,
	[5848] = true,
	[5972] = true,
	[6709] = true,
	[7087] = true,
}

--单人本（金钱本和经验本）
instance_quit_show.InstSingle = 
{	
	[883] = true,
	[963] = true,
	[964] = true,
	[2139] = true,
	[884] = true,
	[965] = true,
	[966] = true,
	[2140] = true,
}

--2015年5月15日----
--满足 张竣翔 需求

--1、剧情副本：有任务时离开不弹副本主界面,判断成功失败
instance_quit_show.InstStory = 
{		
	[885] = 686,  
	[886] = 686,   
	[887] = 686,  
	[888] = 686,   
	[889] = 686,   
	[890] = 686,   
	[891] = 686,   
	[892] = 686,   
	[893] = 686,   
	[894] = 686,   
	[2088] = 686, 
	[2089] = 686, 
	[2090] = 686, 
	[2091] = 686, 
	[4179] = 686, 
	[4180] = 686, 
}

--2、经验副本：有任务时离开不弹副本主界面
instance_quit_show.InstExp = 
{		
	[884] = 66,
	[965] = 66,
	[966] = 66,
	[2140] = 66,
}

--主动离开副本时，不同类型msgbox提示文字不同
--1您尚未完成副本，此时退出已扣除的次数和体力不返还 2:您尚未完成副本，此时退出已扣除的次数不返还  3：您尚未完成副本，此时退出已扣除的体力不返还
instance_quit_show.QuitCueType =   
{
	[525] = 2, --擂台
	[884] = 1, --长坂桥
	[965] = 1, --长坂桥
	[966] = 1, --长板桥
	[2140] = 1, --长板桥
	[883] = 1, --藏金窟
	[963] = 1, --藏金窟
	[964] = 1, --藏金窟
	[2139] = 1, --藏金窟
	[829] = 1, --皇陵密室
	[962] = 1, --皇陵密室
	[967] = 1, --皇陵密室
	[968] = 1, --皇陵密室
	[828] = 1, --皇陵偏殿
	[958] = 1, --皇陵偏殿
	[959] = 1, --皇陵偏殿
	[960] = 1, --皇陵偏殿
	[961] = 1, --皇陵偏殿
	[830] = 1, --皇陵宝库
	[969] = 1, --皇陵宝库
	[970] = 1, --皇陵宝库
	[971] = 1, --皇陵宝库
	[972] = 1, --皇陵宝库
	[524] = 2, --名将试炼
	[2135] = 1, --皇陵密室
	[2136] = 1, --皇陵密室
	[2133] = 1, --皇陵偏殿
	[2134] = 1, --皇陵偏殿
	[2137] = 1, --皇陵宝库
	[2138] = 1, --皇陵宝库
	[2125] = 3, --八阵图
	[2126] = 3, --八阵图
	[2127] = 3, --八阵图
	[2128] = 3, --八阵图
	[2129] = 3, --八阵图
	[2130] = 3, --八阵图
	[2131] = 3, --八阵图
	[2132] = 3, --八阵图
	[2497] = 1, --单人战场
	[2925] = 1, --锁妖塔01
	[3000] = 3, --八阵图
	[3001] = 3, --八阵图
	[3002] = 3, --八阵图
	[3003] = 3, --八阵图
	[3004] = 3, --八阵图
	[3005] = 3, --八阵图
	[3006] = 3, --八阵图
	[3007] = 3, --八阵图
	[5919] = 3, --八阵图
	[3102] = 1, --精英扫荡
	[3460] = 2, --精英扫荡
	[4181] = 1, --皇陵宝库
	[4182] = 1, --皇陵宝库
	[5281] = 2, --坐骑炼星
	[5848] = 1, --皇陵宝库
	[5972] = 1, --皇陵偏殿
	[6709] = 1, --皇陵宝库
	[7087] = 1, --皇陵宝库
}

--是否八阵图副本：结算时使用
instance_quit_show.InstEight = 
{		
	[2125] = 1, --八阵图
	[2126] = 1, --八阵图
	[2127] = 1, --八阵图
	[2128] = 1, --八阵图
	[2129] = 1, --八阵图
	[2130] = 1, --八阵图
	[2131] = 1, --八阵图
	[2132] = 1, --八阵图
	[3000] = 1, --八阵图
	[3001] = 1, --八阵图
	[3002] = 1, --八阵图
	[3003] = 1, --八阵图
	[3004] = 1, --八阵图
	[3005] = 1, --八阵图
	[3006] = 1, --八阵图
	[3007] = 1, --八阵图
	[5919] = 1, --八阵图
}

return instance_quit_show

