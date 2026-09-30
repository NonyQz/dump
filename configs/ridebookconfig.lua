--[[
	坐骑图鉴
]]
--显示图鉴界面的活动ID 
local RideBookActivityID = 6711
--开放功能的等级限制 暂时没有用到
--local unLockLevelLimits = { min = 30, max = 300}     --开启坐骑图鉴的等级 --此字段可以默认不写，表示没有限制，max <=0 表示无等级上限限制
local Score_Max_Count = 9  --界面显示的战斗力最大个数SCORE_MAX_COUNT
--说明 Left_Icon_Count + Right_Icon_Count + 1 需要小于等于后面配置的RideAttributeCfgs数组个数。 不然不能循环显示图标
--例，现在配置Left_Icon_Count = 4 Right_Icon_Count = 4  , RideAttributeCfgs数组元素个数是10.
-- Left_Icon_Count + Right_Icon_Count +_ 1 = 9 < #RideAttributeCfgs = 10
local Left_Icon_Count = 4     --左半边显示的图标个数
local Right_Icon_Count = 4   --右半边显示的图标个数
--由于UIModel的原因，两个相互遮挡的界面不能同时显示并都有UIModel 因此坐骑图鉴设置当坐骑图鉴打开时，需要隐藏哪些界面内的UIModel
local showHideUI = {}
showHideUI[1] = 
{ 
	panel_name = "panel_ride",  --Panel的名称 全小写
	subpanel_path = "Widget/SubPanel_Ride/SubPanel_RideShow/Group_RideModel",  --UIModel 所在的路径  
} 

local RideAttributeCfgs = {}
-- 坐骑属性列表

--马
RideAttributeCfgs[1163] = 
{	
	id = 1163,        --坐骑模板id 
	name = "的盧", --坐骑名称
	icon = 976,  --图标路径
	model = 914, --模型路径
	sort_id = 1, --坐骑排序显示序号
	desc = "初始坐騎", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--虎
RideAttributeCfgs[6538] = 
{	
	id = 6538,        --坐骑模板id
	name = "焰嘯", --坐骑名称
	icon = 2130,  --图标路径
	model = 2132, --模型路径
	sort_id = 2, --坐骑排序显示序号
	desc = "地術殘卷兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狼
RideAttributeCfgs[6763] = 
{	
	id = 6763,        --坐骑模板id
	name = "冰離", --坐骑名称
	icon = 2155,  --图标路径
	model = 2144, --模型路径
	sort_id = 3, --坐骑排序显示序号
	desc = "限定禮袋概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 10080,  --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,  --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--猪
RideAttributeCfgs[7042] = 
{	
	id = 7042,     			--坐骑模板id
	name = "萌萌", 			--坐骑名称
	icon = 2224,  			--图标路径
	model = 2223, 			--模型路径
	sort_id = 4, 			--坐骑排序显示序号
	desc = "活動或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 48960,		 --基础生命
		basePhyAtk = 2016,  --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 2016,  --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--千机
RideAttributeCfgs[7021] = 
{	
	id = 7021,     			--坐骑模板id
	name = "千機", 			--坐骑名称
	icon = 2221,  			--图标路径
	model = 2218, 			--模型路径
	sort_id = 5, 			--坐骑排序显示序号
	desc = "活動、福袋或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 1680,  --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 1680,  --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--仙鹿
RideAttributeCfgs[7677] = 
{	
	id = 7677,     			--坐骑模板id
	name = "仙鹿", 			--坐骑名称
	icon = 2401,  			--图标路径
	model = 2378, 			--模型路径
	sort_id = 6, 			--坐骑排序显示序号
	desc = "活動、福袋或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 244800,		 --基础生命
		basePhyAtk = 1680,  --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,  --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--年兽
RideAttributeCfgs[8548] = 
{	
	id = 8548,     			--坐骑模板id
	name = "年獸", 			--坐骑名称
	icon = 2586,  			--图标路径
	model = 2589, 			--模型路径
	sort_id = 7, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 3360,  --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,  --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--凤凰
RideAttributeCfgs[8549] = 
{	
	id = 8549,     			--坐骑模板id
	name = "鳳凰", 			--坐骑名称
	icon = 2627,  			--图标路径
	model = 2588, 			--模型路径
	sort_id = 8, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 1680,  --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 1680,  --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--蝎子
RideAttributeCfgs[8962] = 
{	
	id = 8549,     			--坐骑模板id
	name = "暗毀", 			--坐骑名称
	icon = 2957,  			--图标路径
	model = 2680, 			--模型路径
	sort_id = 9, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 6720,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--羊驼
RideAttributeCfgs[9478] = 
{	
	id = 9478,     			--坐骑模板id
	name = "神獸", 			--坐骑名称
	icon = 3054,  			--图标路径
	model = 2983, 			--模型路径
	sort_id = 10, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--蜗牛
RideAttributeCfgs[10407] = 
{	
	id = 10407,     			--坐骑模板id
	name = "閃電", 			--坐骑名称
	icon = 3231,  			--图标路径
	model = 3230, 			--模型路径
	sort_id = 11, 			--坐骑排序显示序号
	desc = "活動、福袋或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金龙
RideAttributeCfgs[10543] = 
{	
	id = 10543,     			--坐骑模板id
	name = "幻朧·神", 			--坐骑名称
	icon = 3267,  			--图标路径
	model = 3261, 			--模型路径
	sort_id = 12, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--高级金龙
RideAttributeCfgs[10633] = 
{	
	id = 10633,     			--坐骑模板id
	name = "幻朧·聖", 			--坐骑名称
	icon = 3267,  			--图标路径
	model = 3291, 			--模型路径
	sort_id = 13, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 	 --基础生命
		basePhyAtk = 6720,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--红龙
RideAttributeCfgs[10542] = 
{	
	id = 10542,     			--坐骑模板id
	name = "赤虹", 			--坐骑名称
	icon = 3266,  			--图标路径
	model = 3260, 			--模型路径
	sort_id = 14, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--兔子
RideAttributeCfgs[10540] = 
{	
	id = 10540,     			--坐骑模板id
	name = "靈玄", 			--坐骑名称
	icon = 3264,  			--图标路径
	model = 3262, 			--模型路径
	sort_id = 15, 			--坐骑排序显示序号
	desc = "活動或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--黑老虎
RideAttributeCfgs[10569] = 
{	
	id = 10569,     			--坐骑模板id
	name = "黑煞", 			--坐骑名称
	icon = 3285,  			--图标路径
	model = 3278, 			--模型路径
	sort_id = 16, 			--坐骑排序显示序号
	desc = "龍爭虎鬥第一賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--牛
RideAttributeCfgs[10905] = 
{	
	id = 10905,     		--坐骑模板id
	name = "木牛", 			--坐骑名称
	icon = 3402,  			--图标路径
	model = 3401, 			--模型路径
	sort_id = 17, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 163200,	 	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金牛
RideAttributeCfgs[10904] = 
{	
	id = 10904,     		--坐骑模板id
	name = "鎏金木牛", 			--坐骑名称
	icon = 3404,  			--图标路径
	model = 3403, 			--模型路径
	sort_id = 18, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 163200,	 	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--火狐狸
RideAttributeCfgs[11232] = 
{	
	id = 11232,     		--坐骑模板id
	name = "朱炎", 			--坐骑名称
	icon = 3581,  			--图标路径
	model = 3580, 			--模型路径
	sort_id = 19, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 3056,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--蝙蝠
RideAttributeCfgs[11332] = 
{	
	id = 11332,     		--坐骑模板id
	name = "夜襲", 			--坐骑名称
	icon = 3679,  			--图标路径
	model = 3677, 			--模型路径
	sort_id = 20, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--红鸟
RideAttributeCfgs[11386] = 
{	
	id = 11386,     		--坐骑模板id
	name = "焚空", 			--坐骑名称
	icon = 3711,  			--图标路径
	model = 3682, 			--模型路径
	sort_id = 21, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 	 --基础生命
		basePhyAtk = 6720,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--绿鸟
RideAttributeCfgs[11385] = 
{	
	id = 11385,     		--坐骑模板id
	name = "碧空", 			--坐骑名称
	icon = 3710,  			--图标路径
	model = 3681, 			--模型路径
	sort_id = 22, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--羊
RideAttributeCfgs[11458] = 
{	
	id = 11458,     		--坐骑模板id
	name = "滄羚", 			--坐骑名称
	icon = 3775,  			--图标路径
	model = 3773, 			--模型路径
	sort_id = 23, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 3056,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--高级羊
RideAttributeCfgs[11459] = 
{	
	id = 11459,     		--坐骑模板id
	name = "金羚", 			--坐骑名称
	icon = 3776,  			--图标路径
	model = 3774, 			--模型路径
	sort_id = 24, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 3056,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--白狐狸
RideAttributeCfgs[10541] = 
{	
	id = 10541,     		--坐骑模板id
	name = "雪月", 			--坐骑名称
	icon = 3265,  			--图标路径
	model = 3263, 			--模型路径
	sort_id = 25, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--独角兽
RideAttributeCfgs[11567] = 
{	
	id = 11567,     		--坐骑模板id
	name = "流霜", 			--坐骑名称
	icon = 3824,  			--图标路径
	model = 3818, 			--模型路径
	sort_id = 26, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--青铜龙
RideAttributeCfgs[11595] = 
{	
	id = 11595,     		--坐骑模板id
	name = "噬空", 			--坐骑名称
	icon = 3830,  			--图标路径
	model = 3826, 			--模型路径
	sort_id = 27, 			--坐骑排序显示序号
	desc = "龍爭虎鬥第二賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--猩猩
RideAttributeCfgs[11596] = 
{	
	id = 11596,     		--坐骑模板id
	name = "破山·神", 			--坐骑名称
	icon = 3857,  			--图标路径
	model = 3827, 			--模型路径
	sort_id = 28, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 163200,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金猩猩
RideAttributeCfgs[11725] = 
{	
	id = 11725,     		--坐骑模板id
	name = "破山·聖", 			--坐骑名称
	icon = 3858,  			--图标路径
	model = 3856, 			--模型路径
	sort_id = 29, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 163200,	 --基础生命
		basePhyAtk = 6720,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--摩托
RideAttributeCfgs[11803] = 
{	
	id = 11803,     		--坐骑模板id
	name = "黃泉", 			--坐骑名称
	icon = 3918,  			--图标路径
	model = 3915, 			--模型路径
	sort_id = 30, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金摩托
RideAttributeCfgs[11804] = 
{	
	id = 11804,     		--坐骑模板id
	name = "幽冥", 			--坐骑名称
	icon = 3917,  			--图标路径
	model = 3916, 			--模型路径
	sort_id = 31, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--鹰
RideAttributeCfgs[11941] = 
{	
	id = 11941,     		--坐骑模板id
	name = "謠夜", 			--坐骑名称
	icon = 3958,  			--图标路径
	model = 3974, 			--模型路径
	sort_id = 32, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 10080,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--高级鹰
RideAttributeCfgs[11904] = 
{	
	id = 11904,     		--坐骑模板id
	name = "曜夜", 			--坐骑名称
	icon = 3975,  			--图标路径
	model = 3957, 			--模型路径
	sort_id = 33, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 11760,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 11760,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--高级冰凤凰
RideAttributeCfgs[12103] = 
{	
	id = 12103,     		--坐骑模板id
	name = "鴻鵠", 			--坐骑名称
	icon = 4031,  			--图标路径
	model = 4013, 			--模型路径
	sort_id = 34, 			--坐骑排序显示序号
	desc = "2016週年慶限定坐騎", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 102000,	 --基础生命
		basePhyAtk = 12600,   --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 12600,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--葫芦
RideAttributeCfgs[12113] = 
{	
	id = 12113,     		--坐骑模板id
	name = "醉仙", 			--坐骑名称
	icon = 4038,  			--图标路径
	model = 4033, 			--模型路径
	sort_id = 35, 			--坐骑排序显示序号
	desc = "福袋、活動概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 163200,	 --基础生命
		basePhyAtk = 1680,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金翼
RideAttributeCfgs[12182] = 
{	
	id = 12182,     		--坐骑模板id
	name = "金翼", 			--坐骑名称
	icon = 4084,  			--图标路径
	model = 4081, 			--模型路径
	sort_id = 36, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--银风
RideAttributeCfgs[12183] = 
{	
	id = 12183,     		--坐骑模板id
	name = "銀風", 			--坐骑名称
	icon = 4080,  			--图标路径
	model = 4079, 			--模型路径
	sort_id = 37, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--飞麟
RideAttributeCfgs[12184] = 
{	
	id = 12184,     		--坐骑模板id
	name = "飛麒", 			--坐骑名称
	icon = 4083,  			--图标路径
	model = 4082, 			--模型路径
	sort_id = 38, 			--坐骑排序显示序号
	desc = "限定活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--霜魂
RideAttributeCfgs[12625] = 
{	
	id = 12625,     		--坐骑模板id
	name = "霜魂", 			--坐骑名称
	icon = 4140,  			--图标路径
	model = 4135, 			--模型路径
	sort_id = 39, 			--坐骑排序显示序号
	desc = "龍爭虎鬥第三賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--赤影
RideAttributeCfgs[12628] = 
{	
	id = 12628,     		--坐骑模板id
	name = "赤影", 			--坐骑名称
	icon = 4138,  			--图标路径
	model = 4014, 			--模型路径
	sort_id = 40, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--绝影
RideAttributeCfgs[12627] = 
{	
	id = 12627,     		--坐骑模板id
	name = "絕影", 			--坐骑名称
	icon = 4139,  			--图标路径
	model = 4137, 			--模型路径
	sort_id = 41, 			--坐骑排序显示序号
	desc = "活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--应龙
RideAttributeCfgs[12626] = 
{	
	id = 12626,     		--坐骑模板id
	name = "應龍", 			--坐骑名称
	icon = 4141,  			--图标路径
	model = 4136, 			--模型路径
	sort_id = 42, 			--坐骑排序显示序号
	desc = "神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 10080,   --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--暗麟
RideAttributeCfgs[12706] = 
{	
	id = 12706,     		--坐骑模板id
	name = "暗麟", 			--坐骑名称
	icon = 4211,  			--图标路径
	model = 4208, 			--模型路径
	sort_id = 43, 			--坐骑排序显示序号
	desc = "限定活動或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 40800,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--钢尾
RideAttributeCfgs[12964] = 
{	
	id = 12964,     		--坐骑模板id
	name = "鋼尾", 			--坐骑名称
	icon = 4279,  			--图标路径
	model = 4278, 			--模型路径
	sort_id = 44, 			--坐骑排序显示序号
	desc = "活動、福袋或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--金尾
RideAttributeCfgs[12971] = 
{	
	id = 12971,     		--坐骑模板id
	name = "金尾", 			--坐骑名称
	icon = 4291,  			--图标路径
	model = 4287, 			--模型路径
	sort_id = 45, 			--坐骑排序显示序号
	desc = "活動、福袋或兌換獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--狮鹫
RideAttributeCfgs[13074] = 
{	
	id = 13074,     		--坐骑模板id
	name = "獅鷲", 			--坐骑名称
	icon = 4297,  			--图标路径
	model = 4296, 			--模型路径
	sort_id = 46, 			--坐骑排序显示序号
	desc = "活動、福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 8400,   --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--破天
RideAttributeCfgs[13121] = 
{	
	id = 13121,        --坐骑模板id 
	name = "破天", --坐骑名称
	icon = 4341,  --图标路径
	model = 4314, --模型路径
	sort_id = 47, --坐骑排序显示序号
	desc = "神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--骇翼
RideAttributeCfgs[13264] = 
{	
	id = 13264,        --坐骑模板id 
	name = "駭翼", --坐骑名称
	icon = 4355,  --图标路径
	model = 4353, --模型路径
	sort_id = 48, --坐骑排序显示序号
	desc = "福袋、活動概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星槎
RideAttributeCfgs[13140] = 
{	
	id = 13140,        --坐骑模板id 
	name = "星槎", --坐骑名称
	icon = 4354,  --图标路径
	model = 4352, --模型路径
	sort_id = 49, --坐骑排序显示序号
	desc = "特殊活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凌月
RideAttributeCfgs[13693] = 
{	
	id = 13693,        --坐骑模板id 
	name = "淩月", --坐骑名称
	icon = 4465,  --图标路径
	model = 4464, --模型路径
	sort_id = 50, --坐骑排序显示序号
	desc = "特殊活動或福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狱焱
RideAttributeCfgs[13659] = 
{	
	id = 13659,        --坐骑模板id 
	name = "獄焱", --坐骑名称
	icon = 4463,  --图标路径
	model = 4441, --模型路径
	sort_id = 51, --坐骑排序显示序号
	desc = "福袋、活動中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,		 --基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--撼地
RideAttributeCfgs[13761] = 
{	
	id = 13761,        --坐骑模板id 
	name = "撼地", --坐骑名称
	icon = 4518,  --图标路径
	model = 4490, --模型路径
	sort_id = 52, --坐骑排序显示序号
	desc = "神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--擎天
RideAttributeCfgs[13122] = 
{	
	id = 13122,        --坐骑模板id 
	name = "擎天", --坐骑名称
	icon = 4342,  --图标路径
	model = 4340, --模型路径
	sort_id = 53, --坐骑排序显示序号
	desc = "2017年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--噬焰
RideAttributeCfgs[13928] = 
{	
	id = 13928,     			--坐骑模板id
	name = "噬焰", 			--坐骑名称
	icon = 4588,  			--图标路径
	model = 4545, 			--模型路径
	sort_id = 54, 			--坐骑排序显示序号
	desc = "龍爭虎鬥第四賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--圣甲
RideAttributeCfgs[13760] = 
{	
	id = 13760,        --坐骑模板id 
	name = "聖甲", --坐骑名称
	icon = 4517,  --图标路径
	model = 4491, --模型路径
	sort_id = 55, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 4584,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--神鸡
RideAttributeCfgs[13819] = 
{	
	id = 13819,        --坐骑模板id 
	name = "吉祥", --坐骑名称
	icon = 4499,  --图标路径
	model = 4497, --模型路径
	sort_id = 56, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青龙
RideAttributeCfgs[13920] = 
{	
	id = 13920,        --坐骑模板id 
	name = "青龍之靈", --坐骑名称
	icon = 4585,  --图标路径
	model = 4519, --模型路径
	sort_id = 57, --坐骑排序显示序号
	desc = "2017年遊雲寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--炫光
RideAttributeCfgs[12707] = 
{	
	id = 12707,        --坐骑模板id 
	name = "奇獸", --坐骑名称
	icon = 4212,  --图标路径
	model = 4209, --模型路径
	sort_id = 58, --坐骑排序显示序号
	desc = "五月物資活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--玄武
RideAttributeCfgs[13922] = 
{	
	id = 13922,        --坐骑模板id 
	name = "玄武之靈", --坐骑名称
	icon = 4587,  --图标路径
	model = 4521, --模型路径
	sort_id = 59, --坐骑排序显示序号
	desc = "2017年司命寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白虎
RideAttributeCfgs[13921] = 
{	
	id = 13921,        --坐骑模板id 
	name = "白虎之靈", --坐骑名称
	icon = 4586,  --图标路径
	model = 4520, --模型路径
	sort_id = 60, --坐骑排序显示序号
	desc = "2017年皓靈寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 11760, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 11760,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--陆行鸟
RideAttributeCfgs[14431] = 
{	
	id = 14431,        --坐骑模板id 
	name = "穿雲", --坐骑名称
	icon = 4669,  --图标路径
	model = 4647, --模型路径
	sort_id = 61, --坐骑排序显示序号
	desc = "穿雲廿五天活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--情人节马
RideAttributeCfgs[14434] = 
{	
	id = 14434,        --坐骑模板id 
	name = "薔薇", --坐骑名称
	icon = 4670,  --图标路径
	model = 4648, --模型路径
	sort_id = 62, --坐骑排序显示序号
	desc = "2017年邱比特之箭·金中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大象
RideAttributeCfgs[14881] = 
{	
	id = 14881,        --坐骑模板id 
	name = "萌瑪", --坐骑名称
	icon = 4808,  --图标路径
	model = 4725, --模型路径
	sort_id = 63, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--噗噗
RideAttributeCfgs[15138] = 
{	
	id = 15138,        --坐骑模板id 
	name = "噗噗", --坐骑名称
	icon = 4830,  --图标路径
	model = 4819, --模型路径
	sort_id = 64, --坐骑排序显示序号
	desc = "2017淵海之謎中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--阿宝
RideAttributeCfgs[14940] = 
{	
	id = 14940,        --坐骑模板id 
	name = "阿寶", --坐骑名称
	icon = 4809,  --图标路径
	model = 4769, --模型路径
	sort_id = 65, --坐骑排序显示序号
	desc = "2017年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--墨霜
RideAttributeCfgs[14888] = 
{	
	id = 14889,        --坐骑模板id 
	name = "墨霜", --坐骑名称
	icon = 4780,  --图标路径
	model = 4731, --模型路径
	sort_id = 66, --坐骑排序显示序号
	desc = "成就：萬獸統領", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 3820, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青玉
RideAttributeCfgs[15563] = 
{	
	id = 15563,     		--坐骑模板id
	name = "青玉", 			--坐骑名称
	icon = 5149,  			--图标路径
	model = 5143, 			--模型路径
	sort_id = 67, 			--坐骑排序显示序号
	desc = "2017年仙葫寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 --基础生命
		basePhyAtk = 3360,   --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--飞剑
RideAttributeCfgs[15115] = 
{	
	id = 15115,        --坐骑模板id 
	name = "水雲", --坐骑名称
	icon = 4842,  --图标路径
	model = 4814, --模型路径
	sort_id = 68, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


RideAttributeCfgs[15209] = 
{	
	id = 15209,        --坐骑模板id 
	name = "狸豿", --坐骑名称
	icon = 4843,  --图标路径
	model = 4870, --模型路径
	sort_id = 69, --坐骑排序显示序号
	desc = "活動排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--望舒
RideAttributeCfgs[15605] = 
{	
	id = 15605,        --坐骑模板id 
	name = "望舒", --坐骑名称
	icon = 5231,  --图标路径
	model = 5151, --模型路径
	sort_id = 70, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--朱雀
RideAttributeCfgs[14430] = 
{	
	id = 14430,        --坐骑模板id 
	name = "朱雀之靈", --坐骑名称
	icon = 4958,  --图标路径
	model = 4837, --模型路径
	sort_id = 71, --坐骑排序显示序号
	desc = "2017年玫陽寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--麒麟之灵
RideAttributeCfgs[15924] = 
{	
	id = 15924,        --坐骑模板id 
	name = "麒麟之靈", --坐骑名称
	icon = 5245,  --图标路径
	model = 5235, --模型路径
	sort_id = 72, --坐骑排序显示序号
	desc = "成就：四象之靈", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,		 --基础生命
		basePhyAtk = 12600, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 12600,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}



--竹趣
RideAttributeCfgs[16025] = 
{	
	id = 16025,        --坐骑模板id 
	name = "竹趣", --坐骑名称
	icon = 5310,  --图标路径
	model = 5308, --模型路径
	sort_id = 73, --坐骑排序显示序号
	desc = "活動排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--二哈
RideAttributeCfgs[16023] = 
{	
	id = 16023,        --坐骑模板id 
	name = "二哈", --坐骑名称
	icon = 5349,  --图标路径
	model = 5274, --模型路径
	sort_id = 74, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--二毛
RideAttributeCfgs[16103] = 
{	
	id = 16103,        --坐骑模板id 
	name = "二毛", --坐骑名称
	icon = 5350,  --图标路径
	model = 5309, --模型路径
	sort_id = 75, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--龙牙
RideAttributeCfgs[15882] = 
{	
	id = 15882,        --坐骑模板id 
	name = "龍牙", --坐骑名称
	icon = 5233,  --图标路径
	model = 5196, --模型路径
	sort_id = 76, --坐骑排序显示序号
	desc = "成就：情癡", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--锦鲤
RideAttributeCfgs[15881] = 
{	
	id = 15881,        --坐骑模板id 
	name = "錦鯉", --坐骑名称
	icon = 5232,  --图标路径
	model = 5195, --模型路径
	sort_id = 77, --坐骑排序显示序号
	desc = "成就：天姿絕世", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--晶浣
RideAttributeCfgs[16128] = 
{	
	id = 16128,        --坐骑模板id 
	name = "晶浣", --坐骑名称
	icon = 5392,  --图标路径
	model = 5382, --模型路径
	sort_id = 78, --坐骑排序显示序号
	desc = "活動、福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--腾云
RideAttributeCfgs[16193] = 
{	
	id = 16193,        --坐骑模板id 
	name = "乘風", --坐骑名称
	icon = 5426,  --图标路径
	model = 5388, --模型路径
	sort_id = 79, --坐骑排序显示序号
	desc = "2017年4到6三月連續簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--唤雨
RideAttributeCfgs[16194] = 
{	
	id = 16194,        --坐骑模板id 
	name = "步雨", --坐骑名称
	icon = 5427,  --图标路径
	model = 5389, --模型路径
	sort_id = 80, --坐骑排序显示序号
	desc = "2017年4到6三月連續簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--惊雷
RideAttributeCfgs[16195] = 
{	
	id = 16195,        --坐骑模板id 
	name = "驚雷",     --坐骑名称
	icon = 5428,       --图标路径
	model = 5390,      --模型路径
	sort_id = 81,      --坐骑排序显示序号
	desc = "2017年4到6三月連續簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--陆行鸟--甜橙
RideAttributeCfgs[14889] = 
{	
	id = 14889,        --坐骑模板id 
	name = "灼雲", --坐骑名称
	icon = 4781,  --图标路径
	model = 4732, --模型路径
	sort_id = 82, --坐骑排序显示序号
	desc = "活動、福袋、商城概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 3820,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星岚
RideAttributeCfgs[16202] = 
{	
	id = 16202,        --坐骑模板id 
	name = "星嵐", --坐骑名称
	icon = 5432,  --图标路径
	model = 5429, --模型路径
	sort_id = 83, --坐骑排序显示序号
	desc = "2017年星嵐福袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鎏光
RideAttributeCfgs[16218] = 
{	
	id = 16218,        --坐骑模板id 
	name = "鎏光", --坐骑名称
	icon = 5477,  --图标路径
	model = 5434, --模型路径
	sort_id = 84, --坐骑排序显示序号
	desc = "2017年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--紫韵
RideAttributeCfgs[16219] = 
{	
	id = 16219,        --坐骑模板id 
	name = "紫韻", --坐骑名称
	icon = 5478,  --图标路径
	model = 5451, --模型路径
	sort_id = 85, --坐骑排序显示序号
	desc = "龍爭虎鬥第六賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--飞炎
RideAttributeCfgs[16228] = 
{	
	id = 16228,        --坐骑模板id 
	name = "飛炎", --坐骑名称
	icon = 5499,  --图标路径
	model = 5474, --模型路径
	sort_id = 86, --坐骑排序显示序号
	desc = "超值禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 3820, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--胖哒
RideAttributeCfgs[16245] = 
{	
	id = 16245,        --坐骑模板id 
	name = "胖噠", --坐骑名称
	icon = 5508,  --图标路径
	model = 5500, --模型路径
	sort_id = 87, --坐骑排序显示序号
	desc = "2018年福星收錄排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蓝胖
RideAttributeCfgs[16272] = 
{	
	id = 16272,        --坐骑模板id 
	name = "藍胖", --坐骑名称
	icon = 5509,  --图标路径
	model = 5503, --模型路径
	sort_id = 88, --坐骑排序显示序号
	desc = "2018年福星收錄排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--盈秋
RideAttributeCfgs[16273] = 
{	
	id = 16273,        --坐骑模板id 
	name = "盈秋", --坐骑名称
	icon = 5512,  --图标路径
	model = 5504, --模型路径
	sort_id = 89, --坐骑排序显示序号
	desc = "商城福袋、活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--筋斗云
RideAttributeCfgs[16297] = 
{	
	id = 16297,        --坐骑模板id 
	name = "筋斗雲", --坐骑名称
	icon = 5531,  --图标路径
	model = 5513, --模型路径
	sort_id = 90, --坐骑排序显示序号
	desc = "週年限定", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--朱蛤
RideAttributeCfgs[16319] = 
{	
	id = 16319,        --坐骑模板id 
	name = "朱蛤", --坐骑名称
	icon = 5602,  --图标路径
	model = 5533, --模型路径
	sort_id = 91, --坐骑排序显示序号
	desc = "2017年珍寶樓活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 244800,		 --基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--归墟
RideAttributeCfgs[16320] = 
{	
	id = 16320,        --坐骑模板id 
	name = "歸墟", --坐骑名称
	icon = 5603,  --图标路径
	model = 5534, --模型路径
	sort_id = 92, --坐骑排序显示序号
	desc = "2017年珍寶樓活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--芊芊
RideAttributeCfgs[16369] = 
{	
	id = 16369,        --坐骑模板id 
	name = "芊芊", --坐骑名称
	icon = 5608,  --图标路径
	model = 5606, --模型路径
	sort_id = 93, --坐骑排序显示序号
	desc = "2017年夏末禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 3820,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--苍御
RideAttributeCfgs[16513] = 
{	
	id = 16513,        --坐骑模板id 
	name = "蒼禦", --坐骑名称
	icon = 5621,  --图标路径
	model = 5617, --模型路径
	sort_id = 94, --坐骑排序显示序号
	desc = "2017年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}



--猎空
RideAttributeCfgs[16591] = 
{	
	id = 16591,        --坐骑模板id 
	name = "獵空", --坐骑名称
	icon = 5708,  --图标路径
	model = 5685, --模型路径
	sort_id = 95, --坐骑排序显示序号
	desc = "夢幻禮袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白泽神
RideAttributeCfgs[16648] = 
{	
	id = 16648,        --坐骑模板id 
	name = "白澤·神", --坐骑名称
	icon = 5719,  --图标路径
	model = 5716, --模型路径
	sort_id = 96, --坐骑排序显示序号
	desc = "2018年國力爭霸排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--白泽·圣
RideAttributeCfgs[16649] = 
{	
	id = 16649,        --坐骑模板id 
	name = "白澤·聖", --坐骑名称
	icon = 5720,  --图标路径
	model = 5715, --模型路径
	sort_id = 97, --坐骑排序显示序号
	desc = "雙節禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--海棠
RideAttributeCfgs[16650] = 
{	
	id = 16650,        --坐骑模板id 
	name = "海棠", --坐骑名称
	icon = 5721,  --图标路径
	model = 5717, --模型路径
	sort_id = 98, --坐骑排序显示序号
	desc = "2017年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}



--多宝
RideAttributeCfgs[15604] = 
{	
	id = 15604,        --坐骑模板id 
	name = "多寶", --坐骑名称
	icon = 5240,  --图标路径
	model = 5150, --模型路径
	sort_id = 99, --坐骑排序显示序号
	desc = "兩週年慶集字活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--牧白
RideAttributeCfgs[16664] = 
{	
	id = 16664,     		--坐骑模板id
	name = "牧白", 			--坐骑名称
	icon = 5731,  			--图标路径
	model = 5725, 			--模型路径
	sort_id = 100, 			--坐骑排序显示序号
	desc = "龍爭虎鬥第七賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,  	 --满级等级
		baseHP = 81600,	 	 --基础生命
		basePhyAtk = 5040,   --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度 	
	},
}

--绝仙
RideAttributeCfgs[16520] = 
{	
	id = 16520,        --坐骑模板id 
	name = "絕仙", --坐骑名称
	icon = 5815,  --图标路径
	model = 5655, --模型路径
	sort_id =101, --坐骑排序显示序号
	desc = "四聖絕仙福袋中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 183600,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--七彩
RideAttributeCfgs[16730] = 
{	
	id = 16730,        --坐骑模板id 
	name = "七彩", --坐骑名称
	icon = 5830,  --图标路径
	model = 5824, --模型路径
	sort_id = 102, --坐骑排序显示序号
	desc = "西遊禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--陷仙
RideAttributeCfgs[16647] = 
{	
	id = 16647,        --坐骑模板id 
	name = "陷仙", --坐骑名称
	icon = 5718,  --图标路径
	model = 5714, --模型路径
	sort_id = 103, --坐骑排序显示序号
	desc = "四聖陷仙福袋中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--诛仙阵图
RideAttributeCfgs[16694] = 
{	
	id = 16694,        --坐骑模板id 
	name = "誅仙陣圖", --坐骑名称
	icon = 5817,  --图标路径
	model = 5819, --模型路径
	sort_id = 104, --坐骑排序显示序号
	desc = "成就：誅仙四劍", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,		 --基础生命
		basePhyAtk = 12600, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 12600,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--晴洺
RideAttributeCfgs[16872] = 
{	
	id = 16729,        --坐骑模板id 
	name = "晴洺", --坐骑名称
	icon = 5851,  --图标路径
	model = 5848, --模型路径
	sort_id = 105, --坐骑排序显示序号
	desc = "十五福袋中產出", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--姿韵
RideAttributeCfgs[16907] = 
{	
	id = 16907,        --坐骑模板id 
	name = "姿韻", --坐骑名称
	icon = 5950,  --图标路径
	model = 5948, --模型路径
	sort_id = 106, --坐骑排序显示序号
	desc = "成城斷金福袋中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--胧隐·神
RideAttributeCfgs[16926] = 
{	
	id = 16926,        --坐骑模板id 
	name = "朧隱·神", --坐骑名称
	icon = 5953,  --图标路径
	model = 5952, --模型路径
	sort_id = 107, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--胧隐·圣
RideAttributeCfgs[16927] = 
{	
	id = 16927,        --坐骑模板id 
	name = "朧隱·聖", --坐骑名称
	icon = 5954,  --图标路径
	model = 5951, --模型路径
	sort_id = 108, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 183600,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--诗华
RideAttributeCfgs[16959] = 
{	
	id = 16959,        --坐骑模板id 
	name = "詩華", --坐骑名称
	icon = 5965,  --图标路径
	model = 5962, --模型路径
	sort_id = 109, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}



--戮仙
RideAttributeCfgs[16693] = 
{	
	id = 16693,        --坐骑模板id 
	name = "戮仙", --坐骑名称
	icon = 5816,  --图标路径
	model = 5818, --模型路径
	sort_id = 110, --坐骑排序显示序号
	desc = "四聖戮仙福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 61200,		 --基础生命
		basePhyAtk = 11760, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 11760,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冥獒
RideAttributeCfgs[16980] = 
{	
	id = 16980,        --坐骑模板id 
	name = "冥獒", --坐骑名称
	icon = 6003,  --图标路径
	model = 6000, --模型路径
	sort_id = 111, --坐骑排序显示序号
	desc = "瑞犬兆新福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--影闪
RideAttributeCfgs[16981] = 
{	
	id = 16981,        --坐骑模板id 
	name = "影閃", --坐骑名称
	icon = 6004,  --图标路径
	model = 6001, --模型路径
	sort_id = 112, --坐骑排序显示序号
	desc = "天神寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--如意
RideAttributeCfgs[17019] = 
{	
	id = 17019,        --坐骑模板id 
	name = "如意", --坐骑名称
	icon = 6056,  --图标路径
	model = 6048, --模型路径
	sort_id = 113, --坐骑排序显示序号
	desc = "食味錦盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙熔圣
RideAttributeCfgs[17020] = 
{	
	id = 17020,        --坐骑模板id 
	name = "龍熔·聖", --坐骑名称
	icon = 6067,  --图标路径
	model = 6047, --模型路径
	sort_id = 115, --坐骑排序显示序号
	desc = "龍櫻禮匣", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙熔神
RideAttributeCfgs[17038] = 
{	
	id = 17038,        --坐骑模板id 
	name = "龍熔·神", --坐骑名称
	icon = 6058,  --图标路径
	model = 6065, --模型路径
	sort_id = 114, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,		 --基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--诛仙
RideAttributeCfgs[16729] = 
{	
	id = 16729,        --坐骑模板id 
	name = "誅仙", --坐骑名称
	icon = 6068,  --图标路径
	model = 5823, --模型路径
	sort_id = 116, --坐骑排序显示序号
	desc = "四聖誅仙福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--岩琅
RideAttributeCfgs[17111] = 
{	
	id = 17111,        --坐骑模板id 
	name = "岩琅", --坐骑名称
	icon = 6144,  --图标路径
	model = 6137, --模型路径
	sort_id = 117, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寂夜
RideAttributeCfgs[17116] = 
{	
	id = 17116,        --坐骑模板id 
	name = "寂夜", --坐骑名称
	icon = 6145,  --图标路径
	model = 6139, --模型路径
	sort_id = 118, --坐骑排序显示序号
	desc = "龍爭虎鬥第八賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,		 --基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--湮宸
RideAttributeCfgs[17110] = 
{	
	id = 17110,        --坐骑模板id 
	name = "湮宸", --坐骑名称
	icon = 6147,  --图标路径
	model = 6136, --模型路径
	sort_id = 119, --坐骑排序显示序号
	desc = "2018藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,		 --基础生命
		basePhyAtk = 4704, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 4704,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--锦绣
RideAttributeCfgs[17197] = 
{	
	id = 17197,        --坐骑模板id 
	name = "錦繡", --坐骑名称
	icon = 6164,  --图标路径
	model = 6153, --模型路径
	sort_id = 120, --坐骑排序显示序号
	desc = "獅錦寶匣概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--豚豚
RideAttributeCfgs[17198] = 
{	
	id = 17198,        --坐骑模板id 
	name = "豚豚", --坐骑名称
	icon = 6211,  --图标路径
	model = 6154, --模型路径
	sort_id = 121, --坐骑排序显示序号
	desc = "豚豚福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--旺财
RideAttributeCfgs[17109] = 
{	
	id = 17109,        --坐骑模板id 
	name = "旺財", --坐骑名称
	icon = 6210,  --图标路径
	model = 6135, --模型路径
	sort_id = 123, --坐骑排序显示序号
	desc = "2018年瑞犬兆新禮包概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,		 --基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--来福
RideAttributeCfgs[17222] = 
{	
	id = 17222,        --坐骑模板id 
	name = "來福", --坐骑名称
	icon = 6212,  --图标路径
	model = 6200, --模型路径
	sort_id = 122, --坐骑排序显示序号
	desc = "2018年春節活動排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,		 --基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寒
RideAttributeCfgs[17223] = 
{	
	id = 17223,        --坐骑模板id 
	name = "寒", --坐骑名称
	icon = 6213,  --图标路径
	model = 6201, --模型路径
	sort_id = 124, --坐骑排序显示序号
	desc = "寒戮福袋獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--恋席
RideAttributeCfgs[17240] = 
{	
	id = 17240,        --坐骑模板id 
	name = "戀席", --坐骑名称
	icon = 6414,  --图标路径
	model = 6215, --模型路径
	sort_id = 132, --坐骑排序显示序号
	desc = "2018年神龍祭祀活動中獲得", --获得方式  
	tale = "傳記：冰雪皓凝霜，罩夜微涼。花明月暗夜未央，輕紗籠霧映羅裳。玲瓏榻上，素手舉杯盈酒香。今宵幾度難忘，花有清香，酒訴衷腸，絲竹鼓樂聲聲唱，聞燕舞鶯啼，賞星燭飛雪，不羨鴛鴦。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 265200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙威
RideAttributeCfgs[17241] = 
{	
	id = 17241,        --坐骑模板id 
	name = "龍威", --坐骑名称
	icon = 6248,  --图标路径
	model = 6214, --模型路径
	sort_id = 125, --坐骑排序显示序号
	desc = "龍威禮匣獲得", --获得方式
	tale = "傳記：西北海外，有大荒之地，飛沙環繞，有山而不合，山外兩異獸守之，常人不能靠近。有英勇驍猛者潛入其中，見山內為一處上古之地，奇珍異獸遍佈，花草樹木無一不備，奇之。攜一不知名幼獸歸去，不過十載，幼獸高壯如山，其面如龍，其聲如雷，威風凜凜，故取名龍威。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--悍勇
RideAttributeCfgs[17261] = 
{	
	id = 17261,        --坐骑模板id 
	name = "悍勇", --坐骑名称
	icon = 6265,  --图标路径
	model = 6249, --模型路径
	sort_id = 126, --坐骑排序显示序号
	desc = "悍勇福袋獲得", --获得方式
	tale = "傳記：蠻夷族好戰，韌百物以為兵。得一奇獸，其狀如牛，蒼黑，一角，博聞者稱其為兕。周身覆以金盔，百兵不侵，所向披靡。然兕生性兇惡，唯超群絕倫，武藝高強者方可馴服。華夏人才濟濟，終有一人收其為坐騎，此後百戰百捷，名震天下。念敵皆懼兕強悍勇猛之姿，故改名為悍勇，望後世善用之。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 4584, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--跃影
RideAttributeCfgs[17304] = 
{	
	id = 17304,        --坐骑模板id 
	name = "躍影", --坐骑名称
	icon = 6293,  --图标路径
	model = 6289, --模型路径
	sort_id = 127, --坐骑排序显示序号
	desc = "寒躍福袋中獲得", --获得方式
	tale = "傳記：世有龍，能大能小，能升能隱；大則興雲吐霧，小則隱介藏形；升則飛騰於宇宙之間，隱則潛伏于波濤之內。龍吟威嚎召電閃雷鳴，龍尾撼空掀驚濤駭浪。出則化形載物奔騰，入則遁影天地無痕。若君心有包藏宇宙之機,吞吐天地之志，青騰躍影，蛟龍化形，甘為君用。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 5376, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5376,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--奕星
RideAttributeCfgs[17320] = 
{	
	id = 17320,        --坐骑模板id 
	name = "奕星", --坐骑名称
	icon = 6337,  --图标路径
	model = 6329, --模型路径
	sort_id = 128, --坐骑排序显示序号
	desc = "2018年星河福袋概率獲得", --获得方式
	tale = "傳記：北山之上，多奇獸。有獸焉，面若瑾玉，星辰北斗披身，其狀如馬，其音如濤聲奔騰，雙翼，以金玉為食，見人則飛。展翼翱翔，則如流雲，如落星，其疾如風馳電掣，朝夕之間，可行萬里。得之，如禦浩瀚星辰，天地暢行。聲勢赫奕，群星讓路，故名奕星。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--钢牙
RideAttributeCfgs[17331] = 
{	
	id = 17331,        --坐骑模板id 
	name = "鋼牙", --坐骑名称
	icon = 6340,  --图标路径
	model = 6294, --模型路径
	sort_id = 129, --坐骑排序显示序号
	desc = "2018年六龍秘寶中獲得", --获得方式
	tale = "傳記：我公輸一脈自周起，謹承祖師教誨，研習機關偃術，日夜辛勞，未曾懈怠。時逾百年，終集百家之大成，制得一機關偃獸，取星隕之鐵以為骨，西南不燃之木以為身，內注北海鮫人之膏油，燃之，可令周身覆火，百年不熄。蒙祖師恩典，百煉成鋼，偃獸化靈，攻城破甲，戰無不勝，得之可定乾坤" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--夜神
RideAttributeCfgs[17337] = 
{	
	id = 17337,        --坐骑模板id 
	name = "夜神", --坐骑名称
	icon = 6415,  --图标路径
	model = 6341, --模型路径
	sort_id = 131, --坐骑排序显示序号
	desc = "龍爭虎鬥第九賽季獎勵", --获得方式
	tale = "傳記：地之所載，六合之間，四海之內，照之以日月，經之以星辰，紀之以四時，要之以太歲，天地有序，各有司之。極北之山，定昏，可聞嚎聲四起，月夜之下，有影穿行，此夜遊神也，為天帝候夜，司北山紀序。聞其聲，不敢會其面，會其面，踟躇不敢言，故世人不知其形，不解其名，此間一二，皆傳聞矣。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--琳琅
RideAttributeCfgs[17338] = 
{	
	id = 17338,        --坐骑模板id 
	name = "琳琅", --坐骑名称
	icon = 6416,  --图标路径
	model = 6342, --模型路径
	sort_id = 133, --坐骑排序显示序号
	desc = "2018年神龍祭祀活動中獲得", --获得方式
	tale = "傳記：一朝風起潮難平，世有琳琅照夜影。西海之南，流沙之濱，赤水之後，黑水之前，有大山，名曰昆侖之丘，有神，名西王母。昆侖頂峰巨雲垂天，不見日光，西王母以雪為材，以豹為形，造神獸琳琅，琳琅周身亮如金輪，於昆侖之巔日夜奔騰，自此，昆侖如亮長明之燈，日夜不熄。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狮纯
RideAttributeCfgs[17339] = 
{	
	id = 17339,        --坐骑模板id 
	name = "獅純", --坐骑名称
	icon = 6417,  --图标路径
	model = 6295, --模型路径
	sort_id = 130, --坐骑排序显示序号
	desc = "獅錦寶匣概率獲得", --获得方式
	tale = "傳記：章帝章和元年，西域長史班超擊莎車，大破之。月氏國遣使獻扶拔、獅子，世人未嘗見，奇之。其形似虎，正黃，有髯耏，尾端茸毛大如鬥。帝心甚悅，特使專人飼之，帝嘗言，此物珍異威猛，世間少有，當歸英豪。時逾百年，風雲變幻，蛟龍失水，唯獅之珍異未曾變，天懸地隔，令人唏噓。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 155040,	--基础生命
		basePhyAtk = 5376, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5376,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--云狐
RideAttributeCfgs[17358] = 
{	
	id = 17358,        --坐骑模板id 
	name = "雲狐", --坐骑名称
	icon = 6418,  --图标路径
	model = 6344, --模型路径
	sort_id = 134, --坐骑排序显示序号
	desc = "特典活動", --获得方式
	tale = "傳記：自平王起，蕞爾小國林立，夾萬乘之間，研長技以自保。襄王二十四年，令國巧匠禦木為兵，制一木甲獸。長二尺八寸，重八斤六兩，磁榫驅之，纖巧靈活，迅捷如電，輕盈若雲，嘗用以刺敵情，報憂患。因其形如狐，故後世稱其為雲狐。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熊大
RideAttributeCfgs[17375] = 
{	
	id = 17376,        --坐骑模板id 
	name = "熊大", --坐骑名称
	icon = 6425,  --图标路径
	model = 6419, --模型路径
	sort_id = 135, --坐骑排序显示序号
	desc = "熊出沒福袋產出", --获得方式
	tale = "傳記：大荒之北，有熊。性兇悍，以百獸為食，好獨居。元年五月，天帝命飛禽走獸各選其王，以為領袖，百獸歡騰，奔相走告，設擂臺，勝者為王，熊族亦然。北之熊，勇猛無雙，於大荒之北脫穎而出，決戰南之熊，二獸爭鬥數百回合，勝負難分，惺惺相惜，互為兄弟，共治熊族。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 183600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熊二
RideAttributeCfgs[17376] = 
{	
	id = 17375,        --坐骑模板id 
	name = "熊二", --坐骑名称
	icon = 6426,  --图标路径
	model = 6420, --模型路径
	sort_id = 136, --坐骑排序显示序号
	desc = "2018年食力節排行榜中獲得", --获得方式
	tale = "傳記：大荒之南，有熊。性溫順，喜食百穀，好群居。元年五月，天帝命飛禽走獸各選其王，以為領袖，百獸歡騰，奔相走告，設擂臺，勝者為王，熊族亦然。南之熊，通謀略，於大荒之南脫穎而出，決戰北之熊，二獸爭鬥數百回合，勝負難分，互為兄弟，共治熊族。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冷焰
RideAttributeCfgs[17400] = 
{	
	id = 17400,        --坐骑模板id 
	name = "冷焰", --坐骑名称
	icon = 6482,  --图标路径
	model = 6480, --模型路径
	sort_id = 137, --坐骑排序显示序号
	desc = "2018年六龍秘寶中獲得", --获得方式
	tale = "傳記：日月星辰，萬物序之。冥境昭暗，何以維之？自有生滅，天地如是。追溯太古，何由考之？起自鴻蒙，生於湯穀，居於扶桑，隕于虞淵。其身如昭昭白日，耀耀輝光，其魂如幽幽冥火，魔焰焚心，化而為豹，冷焰燃身，窺其平生形貌，可知萬物自長由生，興衰之九則。已矣哉！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青碧
RideAttributeCfgs[17537] = 
{	
	id = 17537,        --坐骑模板id 
	name = "青碧", --坐骑名称
	icon = 6522,  --图标路径
	model = 6483, --模型路径
	sort_id = 138, --坐骑排序显示序号
	desc = "孟德遺物中概率獲得", --获得方式
	tale = "傳記：遙在西南，有翠雲山，煙霞宿潤，苔蘚新青，林棲彩鳳，水隱蒼龍，有仙子居其中。仙子以碧玉為骨，琉璃作衣，制得玲瓏寶扇，揮之可呼風喚雨。然仙子刁蠻乖戾，為試寶扇，于林間焚大火，置百姓性命于不顧，扇化靈，逸之，仙子悔過，晚矣，此後百年再不得見。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--啸月
RideAttributeCfgs[17543] = 
{	
	id = 17543,        --坐骑模板id 
	name = "嘯月", --坐骑名称
	icon = 6503,  --图标路径
	model = 6500, --模型路径
	sort_id = 139, --坐骑排序显示序号
	desc = "嘯月傳說概率獲得", --获得方式
	tale = "傳記：西山經華山之首，曰錢來之山，西三百里，曰陰山。有獸焉，曰天狗，其狀如狸而白首，其音如榴榴，可以禦凶。天狗所止地盡傾，餘光燭天為流星，長數十丈，其疾如風，其聲如雷，其光如電。世人未嘗得見，只聞是長風嘯月，霧漫塵寰，心有畏懼，惴惴不敢雲。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--阆渊
RideAttributeCfgs[17546] = 
{	
	id = 17546,        --坐骑模板id 
	name = "閬淵", --坐骑名称
	icon = 6650,  --图标路径
	model = 6520, --模型路径
	sort_id = 144, --坐骑排序显示序号
	desc = "2018年神龍祭祀活動中獲得", --获得方式
	tale = "傳記：北有寒山，趠龍赩只。代水不可涉，深不可測只。水下有魚，身長不知幾千里，居北境極寒之地，破冰而生，長於虞淵，逆行若水，翻尾起浪，覆尾成洪，巨浪滔天，因其振滔洪水，上薄空桑，天帝降責，囚於星漢，其身星光燦燦，匿行雲海中，抬頭可見。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--骥骜
RideAttributeCfgs[17550] = 
{	
	id = 17550,        --坐骑模板id 
	name = "驥驁", --坐骑名称
	icon = 6524,  --图标路径
	model = 6521, --模型路径
	sort_id = 145, --坐骑排序显示序号
	desc = "逍遙禮盒中概率獲得", --获得方式
	tale = "傳記：能贏，能贏，全部都能打贏！我看著圖鑒前面那些看起來兇神惡煞的坐騎，認真估量著我們之間的實力差距。沒有一個能打的。等將軍把我放出來，我就把它們全部打倒，一個不留！什麼？小毛驢？我才不是一般的毛驢！我是驥驁，驥驁，驥驁！等著吧！讓你看看我的威力！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--妮娜
RideAttributeCfgs[17615] = 
{	
	id = 17615,        --坐骑模板id 
	name = "妮娜", --坐骑名称
	icon = 6564,  --图标路径
	model = 6557, --模型路径
	sort_id = 146, --坐骑排序显示序号
	desc = "妮娜寶匣獲得", --获得方式
	tale = "傳記：自張騫使西域，絲綢之路連接了不同語言，不同膚色的人。滾滾黃沙下，掩埋了無數旅人的印記，有人為財而去，有人為情而來。相傳，大秦有一女子，戀上賽裡斯使者，為尋戀人，隻身前往絲國，途中為匈奴人所害，其魂魄化為羊，項上系鈴，徘徊於大漠間，只盼與戀人再次相遇。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玲珑
RideAttributeCfgs[17627] = 
{	
	id = 17627,        --坐骑模板id 
	name = "玲瓏", --坐骑名称
	icon = 6599,  --图标路径
	model = 6558, --模型路径
	sort_id = 147, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：京郊孫家，以養豬為業。某日得一隻奇豬，通體粉嫩，伶俐精秀，能通人語，取名玲瓏。孫家長子孫念之與玲瓏交情甚厚，如親如朋。前線吃緊，念之代其父從徭役，遠赴邊境，此去數年，杳無音信。玲瓏銜一束鮮花，於家門前日日等候，盼其歸來。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--石司
RideAttributeCfgs[17633] = 
{	
	id = 17633,        --坐骑模板id 
	name = "石司", --坐骑名称
	icon = 6607,  --图标路径
	model = 6600, --模型路径
	sort_id = 148, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：天下不可無制，矩不正，不可以為方；規不正，不可以為員；身者，事之規矩也。有神獸曰石司，制律法，司寰宇，掌六合，石身而三首，三首各司其職，一首司明，二首司德，三首司法，公正嚴明，石面無私。石司日行穹宇，夜宿黃泉，和道三世，作刑六界，故敬畏之。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--石纪
RideAttributeCfgs[17634] = 
{	
	id = 17634,        --坐骑模板id 
	name = "石紀", --坐骑名称
	icon = 6608,  --图标路径
	model = 6601, --模型路径
	sort_id = 149, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：天下不可無制，矩不正，不可以為方；規不正，不可以為員；身者，事之規矩也。有神獸曰石紀，監王道，行教化，法萬物，石身而三首，三首各司其職，一首紀明，二首紀德，三首紀法，公正嚴明，石面無私。石紀日行穹宇，夜宿黃泉，和道三世，作刑六界，故敬畏之。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--惑心
RideAttributeCfgs[17656] = 
{	
	id = 17656,        --坐骑模板id 
	name = "惑心", --坐骑名称
	icon = 6651,  --图标路径
	model = 6610, --模型路径
	sort_id = 150, --坐骑排序显示序号
	desc = "2018年神龍祭祀活動中獲得", --获得方式
	tale = "傳記：北有寒山，曰鐘山。鐘山之神銜燭以照太陰，蓋長千里，視為晝，瞑為夜，吹為冬，呼為夏。太陰之境稱居冥國，國在寒冰之下，冰雪萬物。有獸名惑心，形似羊，雙翼，其音如嬰孩，誘人而食，其食者可七魄不朽。修道者嘗尋其蹤跡，以求得魂魄不朽之術。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 9240, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 9240,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--宁韵
RideAttributeCfgs[17661] = 
{	
	id = 17661,        --坐骑模板id 
	name = "寧韻", --坐骑名称
	icon = 6654,  --图标路径
	model = 6609, --模型路径
	sort_id = 151, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：居冥境內，冰雪覆之萬物，孕成百獸，皆以冰為骨，以雪為皮，喜霜寒。居冥以南，曰昌寧之山，其上少草木，多山石。有獸焉，形似狐，雙翼，展翼而飛，倏忽千萬裡。性高潔，嘗匿冰晶石林中，不多見。其音如清風穿竹，細雨潤田，聞之可心神寧靜，忘卻憂愁，故人稱其為寧韻。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--寒戮
RideAttributeCfgs[17675] = 
{	
	id = 17675,        --坐骑模板id 
	name = "寒戮", --坐骑名称
	icon = 6690,  --图标路径
	model = 6655, --模型路径
	sort_id = 152, --坐骑排序显示序号
	desc = "寒躍福袋獲得", --获得方式
	tale = "傳記：凡世間萬物，陰陽相對，有盛則有衰，有茂則有疏。居冥境中，草木繁盛，飲食豐饒之地謂之居；淒冷荒蕪，環境惡劣之地謂之冥。冥界百獸相屠以求自保，生而凶煞。有獸謂之寒戮，形似狼，周身亦覆冰晶，銳利如槍刃，為居冥境中一方霸主，自是張狂，睥睨太陰。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鸩影
RideAttributeCfgs[17721] = 
{	
	id = 17721,        --坐骑模板id 
	name = "鴆影", --坐骑名称
	icon = 6711,  --图标路径
	model = 6691, --模型路径
	sort_id = 153, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：妖怪者，蓋精氣之依物者也。氣亂於中，物變於外，形神氣質，表裡之用也，本於五行，通於五事，消息升降，化動萬端。鴆者，毒鳥也，其羽化酒，飲之即死。鴆之影修而為靈，脫凡體，匿行跡于山川水泊中，布散毒沼之氣，生人不敢近。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--奇诺
RideAttributeCfgs[17754] = 
{	
	id = 17754,        --坐骑模板id 
	name = "奇諾", --坐骑名称
	icon = 7104,  --图标路径
	model = 6692, --模型路径
	sort_id = 154, --坐骑排序显示序号
	desc = "孫武遺篇中概率獲得", --获得方式
	tale = "傳記：整片沙漠，沒有比我跑得更快的動物了！啦啦啦啦，我，就是速度之王，是這片沙漠的大名鳥！停停停，那是什麼東西，竟然跑得比我快，還不用休息？！被超過了我還怎麼出名？魔什麼駝車？誰駝的車？我不管，我也要變成魔駝車，我也要駝車。你們誰也別想超過我！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--绯渊
RideAttributeCfgs[17756] = 
{	
	id = 17756,        --坐骑模板id 
	name = "緋淵", --坐骑名称
	icon = 7105,  --图标路径
	model = 6716, --模型路径
	sort_id = 155, --坐骑排序显示序号
	desc = "龍爭虎鬥第十賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--尼禄
RideAttributeCfgs[17764] = 
{	
	id = 17764,        --坐骑模板id 
	name = "尼祿", --坐骑名称
	icon = 7143,  --图标路径
	model = 7140, --模型路径
	sort_id = 156, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：如果讓凡人掌握了雷電之力，那麼天上的神明將永遠得不到安寧，因為他們得到一點力量都會賣弄他的威風；而神是慈悲的，他用雷電去懲罰作惡之人，不會傷害路邊一朵可憐的野花。權力如同雷電，如果當權者沒有神的慈悲，那就讓我用雷電來懲罰他們吧！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寂灭
RideAttributeCfgs[17781] = 
{	
	id = 17781,        --坐骑模板id 
	name = "寂滅", --坐骑名称
	icon = 7149,  --图标路径
	model = 7139, --模型路径
	sort_id = 157, --坐骑排序显示序号
	desc = "2018年六龍秘寶中獲得", --获得方式
	tale = "傳記：冉冉青煙，妙香拂慮，燈影無照，心向禪道。永平年間，有事木工者，技藝超絕，善制機關獸，其獸兇猛如虎，血戮屠殘，以一敵百，時人無不畏之。機關獸本無善惡，罪在驅使者，木工自知罪重，自後暮鼓晨鐘，不問世事，求不生不死之寂靜安穩。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--烽阙
RideAttributeCfgs[17788] = 
{	
	id = 17788,        --坐骑模板id 
	name = "烽闕", --坐骑名称
	icon = 7154,  --图标路径
	model = 7150, --模型路径
	sort_id = 158, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：江山一望多少年，夢裡還鄉魂不知。綿綿烽火接連天，萬卷家書無蹤還。人生如寄，紙短情長，烽闕玲瓏，內藏玄機。春秋時，魯為楚所滅，大軍壓境，屍橫遍野，哀嚎聲不絕於耳。樓宇宮闕皆焚，黑雲遮天，不見五指。公輸後人制機關烽闕，警後世莫忘此景，莫棄此仇。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--禄力
RideAttributeCfgs[17791] = 
{	
	id = 17791,        --坐骑模板id 
	name = "祿力", --坐骑名称
	icon = 7217,  --图标路径
	model = 7144, --模型路径
	sort_id = 159, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：嘿！你是新來的船長嗎？別傻站著，快坐上來吧，時間不等人，我這就帶你回船上去！海上還有好多好玩新鮮的東西等著你領我們去看呢！水手們，水手們，水手們！都打起精神，我們的船長來了，帶著好酒好菜，收起錨，揚起帆，我們要遠航了！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--故梦
RideAttributeCfgs[18129] = 
{	
	id = 18129,        --坐骑模板id 
	name = "故夢", --坐骑名称
	icon = 7211,  --图标路径
	model = 7158, --模型路径
	sort_id = 160, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：蝶舞翩翩，花語鳥言，盈盈盛放，餘音繞梁。昔在幼時，始齔韶年，兩小無知，笑語盈盈。時如奔流，白駒過隙，牆內佳人，院外少年，紙鳶寄情，歌樂傳意，竹馬青梅，今夢如故。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--流年
RideAttributeCfgs[18130] = 
{	
	id = 18130,        --坐骑模板id 
	name = "流年", --坐骑名称
	icon = 7212,  --图标路径
	model = 7159, --模型路径
	sort_id = 161, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "傳記：英雄少年，志在江山，背井離鄉，功成不返。紅箋小字，訴盡平生，鴻雁在雲，如魚在水，此情難寄，此意難平。猶記當年，寒蟬淒切，對長亭晚，相顧無言，蝶舞如故，花香依然，物是人非，只歎流年。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--桑陌
RideAttributeCfgs[18183] = 
{	
	id = 18183,        --坐骑模板id 
	name = "桑陌", --坐骑名称
	icon = 7218,  --图标路径
	model = 7157, --模型路径
	sort_id = 162, --坐骑排序显示序号
	desc = "處暑禮匣中概率獲得", --获得方式
	tale = "傳記：陌上桑桑，其如畫。喜卷金鈴，笑意盈盈，金光貴氣四散，身影難辨，身影難辨。異域遠渡，卻不隨俗，中土風情未見，總是新鮮，總是新鮮。且看桑陌自在游，王城宮築，京郊小路，嚮往人間喧囂處，駝鈴聲響，我蹄聲長，天下焉能識我耶？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玄奕
RideAttributeCfgs[18473] = 
{	
	id = 18473,        --坐骑模板id 
	name = "玄奕", --坐骑名称
	icon = 7272,  --图标路径
	model = 7266, --模型路径
	sort_id = 163, --坐骑排序显示序号
	desc = "2018年六龍秘寶中獲得", --获得方式
	tale = "傳記：孝桓帝時，眾仙與會東海，降于海濱酒肆，掌櫃備佳餚侍之。觥籌交錯間，有女子攜一怪物騰雲而至。坐定，女子雲：接侍以來，已見東海三為桑田,今東海又淺於往者，見龍子擱於淺灘，故助之，取名玄奕。他仙笑言：如此，東海行複揚塵也，此子甚幸。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 5376, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5376,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--战魂
RideAttributeCfgs[18509] = 
{	
	id = 18509,        --坐骑模板id 
	name = "戰魂", --坐骑名称
	icon = 7326,  --图标路径
	model = 7318, --模型路径
	sort_id = 164, --坐骑排序显示序号
	desc = "2018年限時回饋活動中獲得", --获得方式
	tale = "傳記：奸佞當道，蠻夷入境，此內憂外患之時，實當肅清政治，內懲國賊，外禦強敵，重振我上國之威嚴。然聖上年少，聽信奸佞。忠臣良將，有心治國，無力回天。將軍遠征塞外，風沙埋忠骨，其心不死，其魂化為戰馬，遠望國土，怨不得平。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--戎昭·圣
RideAttributeCfgs[18523] = 
{	
	id = 18523,        --坐骑模板id 
	name = "戎昭·聖", --坐骑名称
	icon = 7331,  --图标路径
	model = 7327, --模型路径
	sort_id = 165, --坐骑排序显示序号
	desc = "2018年月圓禮盒概率獲得", --获得方式
	tale = "傳記：風聲鶴唳，草木萋萋，疆場鐵馬複軍行。弦月漸滿，風綠兩川，桑田古路人未還。功名利祿，過眼雲煙，多少年，只見功成名將無數，也見馬革裹屍為國死。戎馬一生，昭昭心願，求得是，蕩平賊寇天下安。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 61200,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 2674, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--戎昭·神
RideAttributeCfgs[18524] = 
{	
	id = 18524,        --坐骑模板id 
	name = "戎昭·神", --坐骑名称
	icon = 7332,  --图标路径
	model = 7328, --模型路径
	sort_id = 166, --坐骑排序显示序号
	desc = "2018年中秋月圓排行榜中獲得", --获得方式
	tale = "傳記：遙遙無盡，盼有榮歸，將軍沙場秋點兵。星河兩漢，家鄉路遠，錦書難寄無複還。生生死死，過眼雲煙，多少年，只見功成名將無數，也見馬革裹屍為國死。戎馬一生，昭昭心願，求得是，早日還鄉報平安。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 61200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 2674, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤炎·圣
RideAttributeCfgs[18549] = 
{	
	id = 18549,        --坐骑模板id 
	name = "赤炎·聖", --坐骑名称
	icon = 7336,  --图标路径
	model = 7333, --模型路径
	sort_id = 167, --坐骑排序显示序号
	desc = "國慶禮匣中概率獲得", --获得方式
	tale = "傳記：力量是什麼？有人力大無窮，扛鼎百斤，戰敗為寇；有人型瘦體弱，手無縛雞之力，但能指揮三軍，談笑間，檣櫓灰飛煙滅。我雖然金牌加身，但仍抵不過第二種人。為了變得更強，我只能遠渡重洋，尋找真正的力量。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 9240, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 9240,   --法术攻击
		baseMagDef = 382, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--赤炎·神
RideAttributeCfgs[18550] = 
{	
	id = 18550,        --坐骑模板id 
	name = "赤炎·神", --坐骑名称
	icon = 7337,  --图标路径
	model = 7334, --模型路径
	sort_id = 168, --坐骑排序显示序号
	desc = "2018年國慶日排行榜獲得", --获得方式
	tale = "傳記：上、你們都上，我才不怕你們！想我縱橫草原十五年，從來沒遇到過一個勢均力敵的對手，這次來中原，就是想見識一下山外是不是有還有山，天外是不是還有天，袋鼠外面，是不是還有別的袋鼠！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 382, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--青辉
RideAttributeCfgs[18551] = 
{	
	id = 18551,        --坐骑模板id 
	name = "青輝", --坐骑名称
	icon = 7338,  --图标路径
	model = 7335, --模型路径
	sort_id = 169, --坐骑排序显示序号
	desc = "2018年六龍秘寶獲得", --获得方式
	tale = "傳記：世有靈騎，其名青輝，周身青焰繚繞，面若惡鬼修羅，令人望而生畏，然其性溫和，生於三途川上，長於彼岸花海，不需眠，不需休，不需飲，不需食。曆冥火，戰修羅，百劫成靈，渡世人苦海間。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 2520, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 2520,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鸿萌
RideAttributeCfgs[18566] = 
{	
	id = 18566,        --坐骑模板id 
	name = "鴻萌", --坐骑名称
	icon = 7391,  --图标路径
	model = 7339, --模型路径
	sort_id = 170, --坐骑排序显示序号
	desc = "聖誕福袋中獲得", --获得方式
	tale = "傳記：先有天機後有地，鴻萌初世畛崖際。蒼莽六界千萬年，一朝等得清濁辨。吞星摘月倒乾坤，傾山覆海翻天地。欲知此身何處去，且問盤古從何意。其實……我才不會說它叫鴻萌只不過是因為長得比較萌。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2674,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--盻瑶
RideAttributeCfgs[18571] = 
{	
	id = 18571,        --坐骑模板id 
	name = "盻瑤", --坐骑名称
	icon = 7394,  --图标路径
	model = 7215, --模型路径
	sort_id = 171, --坐骑排序显示序号
	desc = "三週年集字活動中獲得", --获得方式
	tale = "傳記：秋近天寒風去暖，公孫樹黃，雁南飛忙。恰是閒暇登高時，憑欄遙看，天高遠闊，星漢迢迢，牛郎織女兩相望。有鳥盻瑤，落羽無歸，一雙孤翅，禽飛、樹枯、葉黃。只待春歸，天暖、花開、歸鄉。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--斐亚
RideAttributeCfgs[18572] = 
{	
	id = 18572,        --坐骑模板id 
	name = "斐亞", --坐骑名称
	icon = 7395,  --图标路径
	model = 7392, --模型路径
	sort_id = 172, --坐骑排序显示序号
	desc = "曬秋禮匣中概率獲得", --获得方式
	tale = "傳記：在遙遠的地方，大地金黃，綿延無邊，與藍色的天空相接，那是一片被稱作沙漠的地方。在沙漠的最深處，埋藏著無數寶藏，有遠古的亡靈守護。尊敬的勇士啊，你是否願意與我一同去未知的遠方冒險，尋找傳說的寶藏？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--辉耀
RideAttributeCfgs[18578] = 
{	
	id = 18578,        --坐骑模板id 
	name = "輝耀", --坐骑名称
	icon = 7401,  --图标路径
	model = 7396, --模型路径
	sort_id = 173, --坐骑排序显示序号
	desc = "龍爭虎鬥第十一賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--焱奕
RideAttributeCfgs[18599] = 
{	
	id = 18599,        --坐骑模板id 
	name = "焱奕", --坐骑名称
	icon = 7407,  --图标路径
	model = 7403, --模型路径
	sort_id = 174, --坐骑排序显示序号
	desc = "霜降禮匣中概率獲得", --获得方式
	tale = "傳記：生存還是毀滅？這對我來說不是一個問題。我自無盡的業火中來，穿越佈滿荊棘的路，忍受了狂暴的命運無情的摧殘，忍受了那鞭打和嘲弄，又在苦難中重生，我，就是命運！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--封禹
RideAttributeCfgs[18619] = 
{	
	id = 18619,        --坐骑模板id 
	name = "封禹", --坐骑名称
	icon = 7410,  --图标路径
	model = 7408, --模型路径
	sort_id = 175, --坐骑排序显示序号
	desc = "2018年六龍秘寶獲得", --获得方式
	tale = "傳記：長風破浪會有時，直掛雲帆濟滄海。我再說一遍，長風破浪會有時，直掛雲帆濟滄海！所以船長啊，只要咱們沿著渭水一路向西，總有一天會開到海上去的，我經驗豐富，不會騙你的。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浩尘
RideAttributeCfgs[18634] = 
{	
	id = 18634,        --坐骑模板id 
	name = "浩塵", --坐骑名称
	icon = 7416,  --图标路径
	model = 7412, --模型路径
	sort_id = 176, --坐骑排序显示序号
	desc = "2018年神龍祭祀獲得", --获得方式
	tale = "傳記：將軍快看！是沒見過的新鮮玩意！好像是從什麼不列什麼顛傳過來的圖紙，經過本朝能工巧匠歷時數十年潛心打造，史無前例，獨一無二，行如清風穿林，可比那飛騎車輿強上許多！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浮盻
RideAttributeCfgs[18644] = 
{	
	id = 18644,        --坐骑模板id 
	name = "浮盻", --坐骑名称
	icon = 7487,  --图标路径
	model = 7418, --模型路径
	sort_id = 177, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：神女降世，留禦坐於人間。觀其形，翩若驚鴻，婉若游龍，髣髴兮若輕雲之蔽月，飄飄兮若流風之回雪，所行處，留金光燦燦，銀星點點，輕行搖影，足往神留，遺情想像，顧望懷愁。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--千城
RideAttributeCfgs[18645] = 
{	
	id = 18645,        --坐骑模板id 
	name = "千城", --坐骑名称
	icon = 7488,  --图标路径
	model = 7419, --模型路径
	sort_id = 178, --坐骑排序显示序号
	desc = "2018年限時回饋活動中獲得", --获得方式
	tale = "傳記：一紙相思，兩處別愁，忍不住三言兩語，滾滾愁情，四方來襲。明心見性，照見五蘊皆空，六根清淨，心非取相，拋卻七情。人非聖賢，縱有八鬥之才，怎敵那良辰美景，九十春光？百般愁怨，化作千萬思緒，飛越千城來寄。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 9240, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 9240,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--加祖
RideAttributeCfgs[18657] = 
{	
	id = 18657,        --坐骑模板id 
	name = "加祖", --坐骑名称
	icon = 7493,  --图标路径
	model = 7491, --模型路径
	sort_id = 179, --坐骑排序显示序号
	desc = "小雪禮匣中概率獲得", --获得方式
	tale = "傳記：黃帝出鴻蒙，斬蚩尤，教四方，平天下。功成名就，雲遊四海。乘天黿渡東洋，見帝國，名印加，有神秘精怪，沐風浴光而生，飲露食泥而漲，力大無窮，果實甘甜，養一方之土，育一城之民，眾人感其恩惠，祭之拜之，視為祖獸。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青雀舫·圣
RideAttributeCfgs[18669] = 
{	
	id = 18669,        --坐骑模板id 
	name = "青雀舫·聖", --坐骑名称
	icon = 7498,  --图标路径
	model = 7494, --模型路径
	sort_id = 180, --坐骑排序显示序号
	desc = "火雞禮匣中概率獲得", --获得方式
	tale = "傳記：唯及渡舫增飛願，帝政君心達意時。舟行江河，舵掌清波，展翼輕搖，逐浪江海。青波翠庭，小樓煙雨，過而不入。此行不為江山走，欲上蓬萊攬飛鳥，瓊樓玉宇，皎皎明月，一去殷勤為探看。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 382, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青雀舫·神
RideAttributeCfgs[18670] = 
{	
	id = 18670,        --坐骑模板id 
	name = "青雀舫·神", --坐骑名称
	icon = 7499,  --图标路径
	model = 7495, --模型路径
	sort_id = 181, --坐骑排序显示序号
	desc = "2018年食力比拼排行榜獎勵", --获得方式
	tale = "傳記：舊時多逸客，舟行江河，舵掌清波，展翼輕搖，倏忽間，踏遍千里江山，欲遊八荒六合。青波翠庭，小樓煙雨，盡入眼底，為盡遊興，一朝諭令通濟渠，怎管那鰥寡煢獨，百姓的坎坷！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 382, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--米娅
RideAttributeCfgs[18680] = 
{	
	id = 18680,        --坐骑模板id 
	name = "米婭", --坐骑名称
	icon = 7503,  --图标路径
	model = 7500, --模型路径
	sort_id = 182, --坐骑排序显示序号
	desc = "2018年六龍秘寶中獲得", --获得方式
	tale = "傳記：各位父老鄉親兄弟姐妹，今天米婭初到貴寶地，不料沉迷貴地美食，盤纏全部吃光，故在此賣藝，望各位有錢的捧錢場，沒錢的捧人場！先謝過大家,大恩大德，我來生做熊做馬，報答各位！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--了了
RideAttributeCfgs[18689] = 
{	
	id = 18689,        --坐骑模板id 
	name = "了了", --坐骑名称
	icon = 7512,  --图标路径
	model = 7504, --模型路径
	sort_id = 183, --坐骑排序显示序号
	desc = "2018年藏寶閣活動中獲得", --获得方式
	tale = "傳記：曹魏得巨象，相欲知其重，幼子沖以船土之法得，相喜其聰智，賜幼象予沖，沖曰：“世人常說幼時了了，大未必佳，望象名曰了了，常警醒兒臣莫要自得，望父王恩准”，丞相大喜，稱其謙遜，賜象名：了了。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--覆焉·神
RideAttributeCfgs[18699] = 
{	
	id = 18699,        --坐骑模板id 
	name = "覆焉·神", --坐骑名称
	icon = 7517,  --图标路径
	model = 7514, --模型路径
	sort_id = 184, --坐骑排序显示序号
	desc = "2018年耶誕節排行榜獎勵", --获得方式
	tale = "說起來我是真的倒楣。聽說賽裡斯有聖誕老人發禮物，特地偷偷從家裡趕過來看看，結果就打個盹的功夫，天上“哐當”砸下來那麼大個的一艘船！誰幹的，到底是誰幹的！？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--覆湮·圣
RideAttributeCfgs[18700] = 
{	
	id = 18700,        --坐骑模板id 
	name = "覆湮·聖", --坐骑名称
	icon = 7518,  --图标路径
	model = 7513, --模型路径
	sort_id = 185, --坐骑排序显示序号
	desc = "冰雪禮匣中概率獲得", --获得方式
	tale = "說起來我也是真的倒楣。從拉普蘭德大老遠開船來賽裡斯，一路上搶、一路上辛辛苦苦搜了那麼點寶藏，就出去抽根煙的功夫，我的船呢？我的寶藏呢？我剛停這的，那麼大個的船呢！？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--谛听
RideAttributeCfgs[18732] = 
{	
	id = 18732,        --坐骑模板id 
	name = "諦聽", --坐骑名称
	icon = 7570,  --图标路径
	model = 7519, --模型路径
	sort_id = 186, --坐骑排序显示序号
	desc = "臨冬禮匣中概率獲得", --获得方式
	tale = "新羅王子金喬覺，看破紅塵，攜白犬浮海來華，削髮為僧，偕同苦修七十五載，日夜相隨。白犬曉佛理，通人性，避邪惡，善聽人心，可辨世間萬物。地藏偈贊雲：“稽首本然淨心地，無盡佛藏大慈尊”，故名諦聽。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--嗅春
RideAttributeCfgs[18759] = 
{	
	id = 18759,        --坐骑模板id 
	name = "嗅春", --坐骑名称
	icon = 7601,  --图标路径
	model = 7598, --模型路径
	sort_id = 187, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "北國風霜多凜冽，苦寒一夜，枯木生花。湖映孤亭，月照軒窗，書卷盈箱篋，鏡奩滿紅妝。百無聊賴獨倚欄，忽見金光灑天，綠意拂面，驚起方覺夢一場，徒留綠葉滿地，如嗅春意。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--丹心
RideAttributeCfgs[18767] = 
{	
	id = 18767,        --坐骑模板id 
	name = "丹心", --坐骑名称
	icon = 7623,  --图标路径
	model = 7520, --模型路径
	sort_id = 188, --坐骑排序显示序号
	desc = "臘八禮匣中概率獲得", --获得方式
	tale = "漠北有神獸，狼首而馬身，其鬃如獅，其角如犀，口生利齒，黑身金紋，踏焰而行，可以禦凶。其聲厲如鴞，然其性忠厚，善戰而能人言，天下治則隱，天下亂則見，常擇豪傑而相伴，以供驅馳，或化人形為忠臣良將，救民於水火，故名曰丹心。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--珊塔
RideAttributeCfgs[18780] = 
{	
	id = 18780,        --坐骑模板id 
	name = "珊塔", --坐骑名称
	icon = 7683,  --图标路径
	model = 7603, --模型路径
	sort_id = 189, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "數九飛雪得天地恩寵，乃生神識，化為一雪人，性情溫厚，體態豐腴。京郊百姓苦於嚴寒，雪人憐之，故身負寶匣，踏雪橇，馳于原野，遇人則以禮相贈。西域商賈甚異之，以其為神祇，呼其名曰珊塔。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞飞
RideAttributeCfgs[18781] = 
{	
	id = 18781,        --坐骑模板id 
	name = "飛飛", --坐骑名称
	icon = 7684,  --图标路径
	model = 7602, --模型路径
	sort_id = 190, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動獲得", --获得方式
	tale = "什麼？你要去塞北，害怕雪太大沒法趕路？包在我身上！我可是土生土長的北方狗，祖上是強壯的森林狼，這麼點小雪才擋不住我！你就安安心心的坐在車上吧，看我一騎絕塵，踏雪如飛！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--博闻
RideAttributeCfgs[18782] = 
{	
	id = 18782,        --坐骑模板id 
	name = "博聞", --坐骑名称
	icon = 7685,  --图标路径
	model = 7624, --模型路径
	sort_id = 191, --坐骑排序显示序号
	desc = "龍爭虎鬥第十二賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--迷鹿
RideAttributeCfgs[18815] = 
{	
	id = 18815,        --坐骑模板id 
	name = "迷鹿", --坐骑名称
	icon = 7692,  --图标路径
	model = 7580, --模型路径
	sort_id = 192, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "這裡好美的景致，讓鹿不禁想吟詩一首！北國風光，千里冰封，萬里雪飄。 望長城內外，惟餘莽莽；大河上下，頓失……唉？我的朋友們呢？可惡！我的朋友們被帶到哪去了？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寒啸·神
RideAttributeCfgs[18847] = 
{	
	id = 18847,        --坐骑模板id 
	name = "寒嘯·神", --坐骑名称
	icon = 7735,  --图标路径
	model = 7696, --模型路径
	sort_id = 193, --坐骑排序显示序号
	desc = "2019年春節排行榜", --获得方式
	tale = "山巔寒，立神壇。受天命，報天成。順民心，薦樂聲。志上達，歌下迎。祈佳歲，佑豐稔。浩浩九州，威威華夏，禮敬山川，拜謝滄海，萬世奮飛，天下志同。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--寒啸·圣
RideAttributeCfgs[18848] = 
{	
	id = 18848,        --坐骑模板id 
	name = "寒嘯·聖", --坐骑名称
	icon = 7736,  --图标路径
	model = 7695, --模型路径
	sort_id = 194, --坐骑排序显示序号
	desc = "敬請期待", --获得方式
	tale = "山巔寒，立聖壇。饗日月，貢八荒。承眷命，牧蒼生。奏讚歌，舞善曲。興百業，滿福緣。浩浩九州，威威華夏，禮敬山川，拜謝滄海，萬世奮飛，天下志同。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--飞虹
RideAttributeCfgs[18849] = 
{	
	id = 18849,        --坐骑模板id 
	name = "飛虹", --坐骑名称
	icon = 7737,  --图标路径
	model = 7697, --模型路径
	sort_id = 195, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "踏雲留影月下魂，半點星光半掩痕。兒時舊夢乘風去，不見清風載夢歸。春半還家孤影人，煢煢踽踽獨徘徊。醉裡看花霜照影，飛虹展翼載故人。半醉半醒一夢間，縱是癡心也團圓。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--逐光
RideAttributeCfgs[18850] = 
{	
	id = 18850,        --坐骑模板id 
	name = "逐光", --坐骑名称
	icon = 7738,  --图标路径
	model = 7698, --模型路径
	sort_id = 196, --坐骑排序显示序号
	desc = "元宵禮匣中概率獲得", --获得方式
	tale = "路上堵車實在是太嚴重了，絕對不是因為我沉迷採花耽誤了行程。如果沒在春節前回家，請記得為我準備棗泥豆沙紅果五仁三十一種口味風味湯圓，我們一起鬧元宵。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--卿知
RideAttributeCfgs[18873] = 
{	
	id = 18873,        --坐骑模板id 
	name = "卿知", --坐骑名称
	icon = 7742,  --图标路径
	model = 7740, --模型路径
	sort_id = 197, --坐骑排序显示序号
	desc = "麗月禮匣概率獲得", --获得方式
	tale = "汗青閱盡，方曉學路之漫漫，詩篇飽覽，方知書海之浩浩。燈芒輝映，如晨光尚熹微，赤鱗搖曳，似錦繡起波瀾。逆湍流，涉險灘，嘗盡百苦，終得龍門，縱身一躍，紅霞翩躚，靈氣激蕩，欲化龍而飛。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--潜渊
RideAttributeCfgs[18900] = 
{	
	id = 18900,        --坐骑模板id 
	name = "潛淵", --坐骑名称
	icon = 7746,  --图标路径
	model = 7627, --模型路径
	sort_id = 198, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "報告！村民們在長江邊上發現一個怪獸，身長丈餘，披鱗覆甲，大嘴一張，可以吞下一個人！軍師說這怪物叫鼉，生在長江裡，凶得很，但是經過屬下一頓狠揍，它被馴得服服帖帖，保證能帶您跋山涉水，成為一只好坐騎！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪鬃
RideAttributeCfgs[19007] = 
{	
	id = 19007,        --坐骑模板id 
	name = "雪鬃", --坐骑名称
	icon = 7783,  --图标路径
	model = 7763, --模型路径
	sort_id = 199, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "雪落天寒染塵寰，一山歸去一山殘。深淵遠嘯驚徹骨，震落飛花霜雪染。猩目橫眉千秋歲，金甲罩身時荏苒。仰望幽空明月彎，俯見鏡湖深入潭。此身不畏孤寂寥，願護林山一世間。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--云澜
RideAttributeCfgs[19028] = 
{	
	id = 19028,        --坐骑模板id 
	name = "雲瀾", --坐骑名称
	icon = 7830,  --图标路径
	model = 7790, --模型路径
	sort_id = 200, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "我曾經暢遊淵海，見魚兒成群，珊瑚如林，與龍宮太子手談對弈。我也曾經翱翔天際，穿越雲海，與飛鳥齊驅。如今造訪人間，只聽世人有言：北、北北冥有魚，其名為鯤，鯤之大，一鍋燉、燉不下。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1375, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--迪杰
RideAttributeCfgs[19029] = 
{	
	id = 19029,        --坐骑模板id 
	name = "迪傑", --坐骑名称
	icon = 7831,  --图标路径
	model = 7792, --模型路径
	sort_id = 201, --坐骑排序显示序号
	desc = "初春禮匣中概率獲得", --获得方式
	tale = "嘎嘎嘎，切克嘎，我是這裡最帥的鴨。場下的各位看官老爺，請跟著我的節奏一起搖擺，舉起手來，大聲地唱，如果我是迪傑，丞相會愛我嗎？曹操會愛我嗎？阿瞞會愛我嗎？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--承钧
RideAttributeCfgs[19059] = 
{	
	id = 19059,        --坐骑模板id 
	name = "承鈞", --坐骑名称
	icon = 7869,  --图标路径
	model = 7764, --模型路径
	sort_id = 202, --坐骑排序显示序号
	desc = "承天禮匣中概率獲得", --获得方式
	tale = "臨滄海而遠望兮，桑田千頃而獨留。托鴻雁以寄思兮，往者而不可與期。此身生而無盡兮，命定煢煢而悵惘。願禦風而暢行兮，又無羽翼而高翔。故承濤而載波兮，隨龍行者以歸潮。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--无双
RideAttributeCfgs[19074] = 
{	
	id = 19074,        --坐骑模板id 
	name = "無雙", --坐骑名称
	icon = 7903,  --图标路径
	model = 7895, --模型路径
	sort_id = 203, --坐骑排序显示序号
	desc = "2019年4到6三月連續簽到獲得", --获得方式
	tale = "公輸世家，以機關偃術、奇巧之技盛名於世。志在天下者無不敬之，奉之。然嫉恨者亦不在少數，與取而代之。公輸先人制機甲無雙，金甲覆身，刀槍不入，以庇後世子孫。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--婳仙
RideAttributeCfgs[19075] = 
{	
	id = 19075,        --坐骑模板id 
	name = "嫿仙", --坐骑名称
	icon = 7904,  --图标路径
	model = 7791, --模型路径
	sort_id = 204, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "星河遙歎九重天，銀漢兩去望不穿。漢宮繾綣春宵度，馬嵬一別生死間。巧畫難留紅顏俏，掩面淚流感嫿仙。點墨仙鶴載君王，乘夜飛渡奈何岸。亦真亦幻淚闌珊，蓬萊仙島續前緣。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--悠悠
RideAttributeCfgs[19101] = 
{	
	id = 19101,        --坐骑模板id 
	name = "悠悠", --坐骑名称
	icon = 7926,  --图标路径
	model = 7875, --模型路径
	sort_id = 205, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "天晴風暖流水潺，吹落竹葉舞悠然。紅梅掌波拾春趣，碧竹坐臥水雲畔。牧童吹笛溪水岸，漁女放歌棧橋邊。踏青何須爭怎渡，分明春色一眼間。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}



--戏斑
RideAttributeCfgs[19110] = 
{	
	id = 19110,        --坐骑模板id 
	name = "戲斑", --坐骑名称
	icon = 7947,  --图标路径
	model = 7907, --模型路径
	sort_id = 206, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動中獲得", --获得方式
	tale = "將軍以為我所背何物？氣球？非也。將軍以為我所戴何物？帽子？非也。莊周賜我四朵彩色祥雲，祝我騰飛萬里；養由基賜我無相法鏡，助我眼觀千里。我蟄伏於此，臥薪嚐膽，為的是天下大亂時，平戰亂，定乾坤。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--风猎
RideAttributeCfgs[19121] = 
{	
	id = 19121,        --坐骑模板id 
	name = "風獵", --坐骑名称
	icon = 7957,  --图标路径
	model = 7928, --模型路径
	sort_id = 207, --坐骑排序显示序号
	desc = "2019年復活彩蛋概率獲得", --获得方式
	tale = "禦風馳行狩獵場，穹頂為倉地為疆。虎獸豺狼不足懼，威如落葉隨風去。飛雪揚沙草木折，日曝郊野水焦涸。凡人閉戶祈天意，百獸遊走尋蔭庇。粗毛刺花骨查牙，風獵迎難踏危揚。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--麟玺
RideAttributeCfgs[19122] = 
{	
	id = 19122,        --坐骑模板id 
	name = "麟璽", --坐骑名称
	icon = 7958,  --图标路径
	model = 7951, --模型路径
	sort_id = 208, --坐骑排序显示序号
	desc = "龍爭虎鬥第十三賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 183600,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--怜影·神
RideAttributeCfgs[19146] = 
{	
	id = 19146,        --坐骑模板id 
	name = "憐影·神", --坐骑名称
	icon = 8001,  --图标路径
	model = 7995, --模型路径
	sort_id = 209, --坐骑排序显示序号
	desc = "2019年勞動排行榜中獲得", --获得方式
	tale = "你有沒有聽過一首民歌？江南可採蓮，蓮葉何田田。魚戲蓮葉間。魚戲蓮葉東，魚戲蓮葉西，魚戲蓮葉南，魚戲蓮葉北。但其實，魚並沒有玩，它們在很認真地拉著蓮葉！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--怜影·圣
RideAttributeCfgs[19147] = 
{	
	id = 19147,        --坐骑模板id 
	name = "憐影·聖", --坐骑名称
	icon = 8002,  --图标路径
	model = 7959, --模型路径
	sort_id = 210, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "水陸草木之花，可愛者甚蕃。予獨愛蓮之出淤泥而不染，濯清漣而不妖，中通外直，不蔓不枝，香遠益清，亭亭淨植，可遠觀而不可褻玩焉。出入平安！魚兒如是說。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莫尘
RideAttributeCfgs[19148] = 
{	
	id = 19148,        --坐骑模板id 
	name = "莫塵", --坐骑名称
	icon = 8003,  --图标路径
	model = 7927, --模型路径
	sort_id = 211, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "行雲染墨素纖塵，冰蓮飛渡九重門。凡間錦繡欲何從，去來羽問花不知。天地逍遙憑去處，凡塵阡陌掩花痕。神仙自在無暖意，不及人間溫情深。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵素
RideAttributeCfgs[19190] = 
{	
	id = 19190,        --坐骑模板id 
	name = "靈素", --坐骑名称
	icon = 8024,  --图标路径
	model = 7960, --模型路径
	sort_id = 212, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "桃花潭水深千尺，不及胡蘿蔔好吃。天長地久有時盡，胡蘿蔔綿綿無絕期。花開堪折直須折，胡蘿蔔堪吃直須吃。春色滿園關不住，一地胡蘿蔔鑽出來。將軍你看見我的胡蘿蔔了嗎？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--隐叶
RideAttributeCfgs[19196] = 
{	
	id = 19196,        --坐骑模板id 
	name = "隱葉", --坐骑名称
	icon = 8064,  --图标路径
	model = 8004, --模型路径
	sort_id = 213, --坐骑排序显示序号
	desc = "初夏禮匣概率獲得", --获得方式
	tale = "清鈴裹帶綹靈寰，躍影扶風葉不安。金甲綬帶刀光冷，劈川斬江累飲泉。身在蓬萊望九州，漂泊一去忘流年。神風驃馬不足行，影葉歸林臥景亭。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 3056,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浅悠
RideAttributeCfgs[19202] = 
{	
	id = 19202,        --坐骑模板id 
	name = "淺悠", --坐骑名称
	icon = 8085,  --图标路径
	model = 8027, --模型路径
	sort_id = 214, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "建安二十年，我奉曹丞相之命前往竇家池為戰士們派發禮物。戰火紛飛，路途險峻，我克服重重困難來到此地，絕對不是迷路才到這的。附：現求一名好心人帶我去竇家池，必有重謝！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--巫梦
RideAttributeCfgs[19203] = 
{	
	id = 19203,        --坐骑模板id 
	name = "巫夢", --坐骑名称
	icon = 8086,  --图标路径
	model = 8028, --模型路径
	sort_id = 215, --坐骑排序显示序号
	desc = "魔巫寶匣中概率獲得", --获得方式
	tale = "西元二一五年五月，天氣晴，無風，適合飛行。魔法掃帚帶本喵來到了一個完全陌生的地方，語言不通，文字不通，街上的人穿的是什麼奇怪的衣服，袍、襜褕、襦、裙、裾都是什麼喵？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--符仙
RideAttributeCfgs[19228] = 
{	
	id = 19228,        --坐骑模板id 
	name = "符仙", --坐骑名称
	icon = 8110,  --图标路径
	model = 8029, --模型路径
	sort_id = 216, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "昔日有一道者，持符咒滅妖魔，救天下眾人於生死之間，後則得道有成，飛升為仙。升仙之際於自身靈力置於符咒之間，令其幻化，鎮守人間，尋良善之人繼承後業，世人稱之為——符仙。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--求凰·神
RideAttributeCfgs[19236] = 
{	
	id = 19236,        --坐骑模板id 
	name = "求凰·神", --坐骑名称
	icon = 8130,  --图标路径
	model = 8111, --模型路径
	sort_id = 217, --坐骑排序显示序号
	desc = "2019年端午節排行榜中獲得", --获得方式
	tale = "古時一舉人，赴京中途於村落休憩，與借宿之女暗生情愫，奈何另日趕考，匆忙留書一封，怎料女子為家人所迫，下嫁他方。舉人歸來，悔之晚矣，親手制“求凰”，以示心意，後人傳念。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--求凰·圣
RideAttributeCfgs[19237] = 
{	
	id = 19237,        --坐骑模板id 
	name = "求凰·聖", --坐骑名称
	icon = 8131,  --图标路径
	model = 8087, --模型路径
	sort_id = 218, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "古有“求凰”之念傳遞，世人以之拜念求得婚約得成，經久之後賦予其些許靈智，被其選上之人必得心念婚姻，直至今日金時，騎乘之人，無不應那句——“身無彩鳳雙飛翼，心有靈犀一點通”。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 183600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--斑宝
RideAttributeCfgs[19245] = 
{	
	id = 19245,        --坐骑模板id 
	name = "斑寶", --坐骑名称
	icon = 8154,  --图标路径
	model = 8132, --模型路径
	sort_id = 219, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "很多時候，斑寶更喜歡在巢穴裡休息，但是它不得不外出，身為工蜂，它需要收集花粉和花蜜，照顧蜂王，守護蜂巢，沒有休息的時間。“為什麼我要一直這麼努力？”，某一天，它突然產生了這樣的疑問，於是它離開了巢穴，飛向了更加自由的天空。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--思居
RideAttributeCfgs[19253] = 
{	
	id = 19253,        --坐骑模板id 
	name = "思居", --坐骑名称
	icon = 8174,  --图标路径
	model = 8065, --模型路径
	sort_id = 220, --坐骑排序显示序号
	desc = "夏日禮盒中概率獲得", --获得方式
	tale = "思居很小的時候就有一個闖蕩江湖的夢想，可惜它太戀家了，還沒走出幾步，就會想起它溫暖的小窩，柔軟的小床，還有它的好朋友們。一想到要離開這些，思居就感到太捨不得了！於是它想了個好辦法，那就是背著它的小窩和朋友們，一起去旅行！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--旺卿
RideAttributeCfgs[19257] = 
{	
	id = 19257,        --坐骑模板id 
	name = "旺卿", --坐骑名称
	icon = 8196,  --图标路径
	model = 8112, --模型路径
	sort_id = 221, --坐骑排序显示序号
	desc = "2019藏寶閣活動中獲得", --获得方式
	tale = "東風一夜花千樹，逐繡球，銜錦緞。冰糖葫蘆香滿路，嬉鬧正歡，笑語不斷，一夜魚龍舞。披金戴紅踏雪去，同福攜樂尋蹤來。眾裡尋它千百度，驀然回首，五花肉卻在，燈火闌珊處。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--琼华·神
RideAttributeCfgs[19278] = 
{	
	id = 19278,        --坐骑模板id 
	name = "瓊華·神", --坐骑名称
	icon = 8218,  --图标路径
	model = 8198, --模型路径
	sort_id = 222, --坐骑排序显示序号
	desc = "2019年福星收錄排行榜獎勵", --获得方式
	tale = "曾有一富商，癡迷那剔透的月色，又苦於其虛無縹緲，無法觸摸，於是取極北之地不化的寒冰，請能工巧匠打造為一輪彎月的模樣，取名瓊華。怎想工匠最後一銼完畢之時，那瓊華便愈發晶瑩，最終化為清亮的光芒，回歸天空。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--琼华·圣
RideAttributeCfgs[19279] = 
{	
	id = 19279,        --坐骑模板id 
	name = "瓊華·聖", --坐骑名称
	icon = 8219,  --图标路径
	model = 8133, --模型路径
	sort_id = 223, --坐骑排序显示序号
	desc = "福星寶盒中概率獲得", --获得方式
	tale = "那是嫦娥玉簪上的一抹流光，帶著星星做的步搖，悄悄隨著落霞和晚風，墜入凡塵，化為人們夢中幽微的倩影。無數人循著它曾經的蹤跡，苦苦求而不得，最終只剩心頭那片永恆潔白的月色。“人道海水深，不抵相思半。”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--叮当
RideAttributeCfgs[19290] = 
{	
	id = 19290,        --坐骑模板id 
	name = "叮噹", --坐骑名称
	icon = 8241,  --图标路径
	model = 8155, --模型路径
	sort_id = 224, --坐骑排序显示序号
	desc = "2019年六龍秘寶獲得", --获得方式
	tale = "BC-701型戰鬥機械貓叮噹，樂意為您效勞，喵。為了維護世界的和平，確保歷史可以走向正途，同時也為了好吃的小魚幹，本機從遙遠的未來而來，跨越千年時光，只為能夠陪伴在您身邊，貢獻自己的力量，喵！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--江月
RideAttributeCfgs[19300] = 
{	
	id = 19300,        --坐骑模板id 
	name = "江月", --坐骑名称
	icon = 8267,  --图标路径
	model = 8175, --模型路径
	sort_id = 225, --坐骑排序显示序号
	desc = "消暑禮盒中概率獲得", --获得方式
	tale = "星星點點朦朧月，淅淅瀝瀝蟬鳴聲。放舟採蓮，蛙聲一片，得趣不知倦。悠悠歸去，鷗鷺相伴，溪亭日暮晚。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--绯岚
RideAttributeCfgs[19301] = 
{	
	id = 19301,        --坐骑模板id 
	name = "緋嵐", --坐骑名称
	icon = 8268,  --图标路径
	model = 8244, --模型路径
	sort_id = 226, --坐骑排序显示序号
	desc = "龍爭虎鬥第十四賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--泠烟
RideAttributeCfgs[19348] = 
{	
	id = 19348,        --坐骑模板id 
	name = "泠煙", --坐骑名称
	icon = 8290,  --图标路径
	model = 8220, --模型路径
	sort_id = 227, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "何來空穀傳鈴音，霜靄沾衣問幽泉。烏蹄踏雪驚寒露，碧煙暫落松濤遠。瓊峰孤寥難相送，卻許冰心寄玉蟬。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--妙思
RideAttributeCfgs[19349] = 
{	
	id = 19349,        --坐骑模板id 
	name = "妙思", --坐骑名称
	icon = 8291,  --图标路径
	model = 8197, --模型路径
	sort_id = 228, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "曹魏得巨象，沖以船稱之，美名揚天下。曹魏百姓若有子女，皆望其聰慧如沖，故造木船，其形如象，予子女玩耍，以寄望子成龍之心。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--惜巧·神
RideAttributeCfgs[19387] = 
{	
	id = 19387,        --坐骑模板id 
	name = "惜巧·神", --坐骑名称
	icon = 8311,  --图标路径
	model = 8309, --模型路径
	sort_id = 229, --坐骑排序显示序号
	desc = "2019七夕節排行榜中獲得", --获得方式
	tale = "舊時戰亂，有一江南女子，已七年未見參軍的夫君一面，思念愈發深重，每逢七夕，她就用梧桐木精心雕刻成鵲鳥模樣，供奉在香案前，希望七姐能讓這只鳥兒帶著她的思念，飛向遠方身處邊關的夫君。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--惜巧·圣
RideAttributeCfgs[19388] = 
{	
	id = 19388,        --坐骑模板id 
	name = "惜巧·聖", --坐骑名称
	icon = 8312,  --图标路径
	model = 8270, --模型路径
	sort_id = 230, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "承載著思念和愛意的木鳥得到了神仙的垂憐，七姐的淚珠落在它身上，讓它化為一隻真正的鳥兒乘風而飛。流轉的晚霞和晨曦托起鳥兒的羽翼，助它飛越九十九重山河，最終將女子的思念帶給遠方的良人。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--帕克
RideAttributeCfgs[19404] = 
{	
	id = 19404,        --坐骑模板id 
	name = "派克", --坐骑名称
	icon = 8338,  --图标路径
	model = 8245, --模型路径
	sort_id = 231, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動中獲得", --获得方式
	tale = "曾有一鼠修行千年而得碩大體型，一步可以躍千里。據說他行了無數日夜，去到海的另一頭，在一個史書裡完全沒有記載的國度學習他們的語言和文化，學成歸來後的他一身西裝革履，還給自己起了外國名字，成為了族裡見識最廣的鼠！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--华森
RideAttributeCfgs[19415] = 
{	
	id = 19415,        --坐骑模板id 
	name = "華森", --坐骑名称
	icon = 8358,  --图标路径
	model = 8221, --模型路径
	sort_id = 232, --坐骑排序显示序号
	desc = "清風禮盒中概率獲得", --获得方式
	tale = "如果你想請人調查些什麼，找我就對了。我雖然不敢自稱中原最好的偵探，但也小有名氣。不要著急，請坐，來，喝了這杯紅茶，將事件的經過向我慢慢訴說。記住，不要放過任何一件小事，因為線索往往隱藏在最容易被忽略的細節中！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--盈宝
RideAttributeCfgs[19435] = 
{	
	id = 19435,        --坐骑模板id 
	name = "盈寶", --坐骑名称
	icon = 8382,  --图标路径
	model = 8292, --模型路径
	sort_id = 233, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "東海有紫玉，溫潤通透，輕如紫霞，飄飄而欲飛。取一丈見方之玉，雕琢為舟。其狀如元寶，金披翠冠，貴氣盈盈，富麗堂皇，榮華無雙。得之可以聚天下財，日進鬥金，乘之可以平步青雲，如日方升，實屬稀世之寶！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--麻衣
RideAttributeCfgs[19442] = 
{	
	id = 19442,        --坐骑模板id 
	name = "麻衣", --坐骑名称
	icon = 8403,  --图标路径
	model = 8313, --模型路径
	sort_id = 234, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "漫漫櫻華，飄飄裙袂，初晨朱筆點紅妝。花乘流水傳春信，日暮東風暗香遠。喈喈金鈴，錚錚鐘鼓，麻衣如雪弄清影。輕歌巧韻祈豐年，悠悠繞梁不絕音。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--听澜
RideAttributeCfgs[19450] = 
{	
	id = 19452,        --坐骑模板id 
	name = "聽瀾", --坐骑名称
	icon = 8424,  --图标路径
	model = 8339, --模型路径
	sort_id = 235, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "相傳南海深處居住著蛟人，他們紡織蛟綃，馴養蛟龍。這只珍獸自南海中來，周身環繞煙波氣泡，健壯溫馴，披鱗覆甲，淡淡的青光變幻流轉，如同海水潮起潮落，頗具靈氣。漁民甚異之，都以為它是蛟龍，只要騎上它，就可以暢遊深海，前去尋找傳說中鮫人的故鄉。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--观月
RideAttributeCfgs[19451] = 
{	
	id = 19451,        --坐骑模板id 
	name = "觀月", --坐骑名称
	icon = 8425,  --图标路径
	model = 8359, --模型路径
	sort_id = 236, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "昔年中原鬧鼠患，糧食顆粒無收，農民們無計可施，絕望中向山神祈禱。誰知第二天，自山中跑出一隻巨大的白狐，毛色如同清冷的月光，當人們都以為它要像傳說中的妲己那樣危害世間時，白狐卻只是在受災的村子裡遊蕩了一圈，氾濫成災的老鼠就全都嚇破了膽，消失無蹤。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--薇雨· 神
RideAttributeCfgs[19474] = 
{	
	id = 19474,        --坐骑模板id 
	name = "薇雨· 神", --坐骑名称
	icon = 8452,  --图标路径
	model = 8449, --模型路径
	sort_id = 237, --坐骑排序显示序号
	desc = "2019年中秋節排行榜中獲得", --获得方式
	tale = "雲鬢花顏，綾羅輕幔，幾支珠與翠，佳人巧笑媚千行。幽幽暗香，瀟瀟細雨，一柄油紙傘，為伊消得人憔悴。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--薇雨· 圣
RideAttributeCfgs[19475] = 
{	
	id = 19475,        --坐骑模板id 
	name = "薇雨· 聖", --坐骑名称
	icon = 8453,  --图标路径
	model = 8430, --模型路径
	sort_id = 238, --坐骑排序显示序号
	desc = "中秋禮盒中概率獲得", --获得方式
	tale = "香腮冰潔，美目流盼，靈秀自相成，凝眸似水驚鴻影。青絲浸墨，豐唇朱染，深夏煙波裡，纖妍窈窕羞薔薇。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--列奥
RideAttributeCfgs[19483] = 
{	
	id = 19483,        --坐骑模板id 
	name = "列奧", --坐骑名称
	icon = 8472,  --图标路径
	model = 8429, --模型路径
	sort_id = 239, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "一名來自西域的美女商人獻上一隻狀如田鼠的巨大珍獸，珍獸身上披掛著用紅纓裝飾的異國鐵甲。根據無名氏所著的《西方諸國查考》記載，這只珍獸來自一個名為羅馬的國家，是該國進行“角鬥”活動時使用的戰獸，戰力可敵一百精兵。若能將其編入軍中，必將使我軍如虎添翼！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--幽岚·神
RideAttributeCfgs[19491] = 
{	
	id = 19491,        --坐骑模板id 
	name = "幽嵐·神", --坐骑名称
	icon = 8494,  --图标路径
	model = 8491, --模型路径
	sort_id = 240, --坐骑排序显示序号
	desc = "2019年國力爭霸排行榜獎勵", --获得方式
	tale = "在西方國度的傳說裡，有一種如獅子般龐大的鷹頭巨獸，擁有司掌風雨的神力。當這巨獸飛上天空時，太陽都被它的羽翼遮蔽，頃刻便會烏雲密佈，風雨交加。而當它收斂翅膀，落回地上時，天空又會霎時放晴。人們稱這巨獸為“幽嵐”，敬畏著它的神力。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2674, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--幽岚·圣
RideAttributeCfgs[19492] = 
{	
	id = 19492,        --坐骑模板id 
	name = "幽嵐·聖", --坐骑名称
	icon = 8495,  --图标路径
	model = 8454, --模型路径
	sort_id = 241, --坐骑排序显示序号
	desc = "秋風禮盒中概率獲得", --获得方式
	tale = "西方曾有無數小國，各國之間戰爭頻發。某年一個國家鬧了旱災，戰事吃緊，眼看就要被吞併。王子不甘於滅國的命運，獨自前去尋找傳說中司掌風雨的巨獸，並願意獻上性命換取巨獸的協助。巨獸被王子的誠懇感動，招來風雨緩解了旱災。最終王子成為了國王，國家也在巨獸的守護下長久興盛。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2674, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--牧尘
RideAttributeCfgs[19493] = 
{	
	id = 19493,        --坐骑模板id 
	name = "牧塵", --坐骑名称
	icon = 8496,  --图标路径
	model = 8404, --模型路径
	sort_id = 242, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "我曾馱著一匹匹絲綢，踏著一座座山峰，走在天與沙的邊界線上，細嫩的綠草是我的枕席，蜿蜒的河流是我的床幔。我可以帶你沿著絲綢之路前往西方遙遠的國度，去看神秘的獅身人面像，欣賞落日餘暉裡的金字塔。這正是“駝鈴悠悠，前路漫漫”！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--圆圆
RideAttributeCfgs[19522] = 
{	
	id = 19522,        --坐骑模板id 
	name = "圓圓", --坐骑名称
	icon = 8518,  --图标路径
	model = 8340, --模型路径
	sort_id = 243, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動中獲得", --获得方式
	tale = "你可曾聽說西南險峻的山嶺深處，有一種壯猛如熊的食鐵之獸？哼哼哼，說的就是本寶寶！我可是國寶，怎麼樣，是不是很厲害？還不快把鮮嫩的竹筍獻上來！嗚嗷！不要捏本寶寶的耳朵！嗚……我認輸！放過我的耳朵行不行？我可以把我最寶貝的小竹椅讓給你坐。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--居萌
RideAttributeCfgs[19523] = 
{	
	id = 19523,        --坐骑模板id 
	name = "居萌", --坐骑名称
	icon = 8519,  --图标路径
	model = 8383, --模型路径
	sort_id = 244, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動中獲得", --获得方式
	tale = "聽說人類寫下無數詩句讚美秋日，要我說，詩裡的景色也只不過是驚鴻一瞥，真正的秋天美景只有我才知道。當你能舒服地躺在家中，看著窗外的秋風裡，蘑菇在萌發，青苔在滋長，天高雲淡，腐草為螢，那時你也會覺得，在真正的自然面前，讚美的詩句竟然如此貧瘠與俗氣！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霜月
RideAttributeCfgs[19557] = 
{	
	id = 19557,        --坐骑模板id 
	name = "霜月", --坐骑名称
	icon = 8544,  --图标路径
	model = 8473, --模型路径
	sort_id = 245, --坐骑排序显示序号
	desc = "金秋禮盒中概率獲得", --获得方式
	tale = "昆山有獸，其名霜月，形似卯畜，身長五尺二寸，碩者丈餘，雙耳生葉，常隱于林間，見之則天下皆秋。素商時節，霜月乃出，營枯葉之巢，越明年驚蟄則隱，夏暑時不得見。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 3056, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霆霓
RideAttributeCfgs[19558] = 
{	
	id = 19558,        --坐骑模板id 
	name = "霆霓", --坐骑名称
	icon = 8545,  --图标路径
	model = 8314, --模型路径
	sort_id = 246, --坐骑排序显示序号
	desc = "龍爭虎鬥第十五賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--海德
RideAttributeCfgs[19598] = 
{	
	id = 19598,        --坐骑模板id 
	name = "海德", --坐骑名称
	icon = 8587,  --图标路径
	model = 7834, --模型路径
	sort_id = 247, --坐骑排序显示序号
	desc = "四周年慶集字活動中獲得", --获得方式
	tale = "桀桀桀……讓本大人來猜猜你的口袋裡有幾顆糖？一顆，兩顆？統統放進這盞南瓜燈裡！快點快點，“不給糖果就搗亂”！桀桀桀，收了你的糖，你就是本大爺罩著的人了。穿上你最嚇人的衣服，一起去讓那些膽小鬼驚聲尖叫吧！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--柴柴
RideAttributeCfgs[19599] = 
{	
	id = 19599,        --坐骑模板id 
	name = "柴柴", --坐骑名称
	icon = 8588,  --图标路径
	model = 8523, --模型路径
	sort_id = 248, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "“竹板這麼一打呀，咱誇誇狗不理包子，它薄皮兒、大餡兒、十八個褶兒，它就像一朵花呀~”這位客官請留步，聽聽我的吆喝，這狗不理包子可是我們家祖傳的手藝，吃了一個還想吃，根本停不下來，許仲康大人吃了都說好！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--茜羽
RideAttributeCfgs[19631] = 
{	
	id = 19631,        --坐骑模板id 
	name = "茜羽", --坐骑名称
	icon = 8590,  --图标路径
	model = 8524, --模型路径
	sort_id = 249, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "《西方諸國查考》中記載著這樣一種奇獸：“南國有鳥，腿細長，羽色如茜草，居於湖海之畔，飛時萬鳥齊鳴，遮天蔽日，赤翼似火，故名茜羽。”據說此鳥象徵著忠貞與深情，得之可以增長桃花運，使人情路順利，覓得佳緣。所以這奇獸前來中原，想必是為了向那些單身的將軍們送去祝福吧！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青韶·神
RideAttributeCfgs[19643] = 
{	
	id = 19643,        --坐骑模板id 
	name = "青韶·神", --坐骑名称
	icon = 8629,  --图标路径
	model = 8626, --模型路径
	sort_id = 250, --坐骑排序显示序号
	desc = "2019年雙十一貢獻排行榜", --获得方式
	tale = "我在去往遠方大陸的船上遇見一個異國探險家，他送給我一塊可以計時的“懷錶”，裡面纖巧精細的機關令我佩服不已。我仿照著它重新製作了一塊，並用金線編織的蝴蝶進行裝飾。可惜以我的技術做不出那樣小巧的零件，但即使體積增大了不少，它依舊是我最得意的傑作！——來自某位元工匠的筆記。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 97920,	--基础生命
		basePhyAtk = 6048, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6048,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--青韶·圣
RideAttributeCfgs[19644] = 
{	
	id = 19644,        --坐骑模板id 
	name = "青韶·聖", --坐骑名称
	icon = 8630,  --图标路径
	model = 8547, --模型路径
	sort_id = 251, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "我在返回家鄉的船上遇見了一個中國工匠，他向我講述了一對名為梁山伯與祝英台的眷侶，因為不能在一起，雙雙鬱鬱而終、化為蝴蝶的傳說。我醉心於東方人含蓄而淒美的愛情故事，於是請他為我的懷錶也刻上蝴蝶，我相信人與人之間的愛可以超越時間，成為不朽的傳奇。——來自某位元探險家的旅行日誌。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 97920,	--基础生命
		basePhyAtk = 6888, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6888,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雷鸣
RideAttributeCfgs[19662] = 
{	
	id = 19662,        --坐骑模板id 
	name = "雷鳴", --坐骑名称
	icon = 8637,  --图标路径
	model = 8546, --模型路径
	sort_id = 252, --坐骑排序显示序号
	desc = "吹雪禮盒中概率獲得", --获得方式
	tale = "南溟以南有山，人稱霆山，山高萬仞。一日夜裡，天上降下火雨，一顆彗星落下。隨著大地劇烈的震顫，巍峨的霆山被彗星夷為平地，只餘一塊巨大的精鐵。這塊巨鐵重數千斤，卻能懸浮于空中，能人巧匠將其煉化為鐵水，重新鑄造成坐騎，只贈予絕世英雄。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--奇乐
RideAttributeCfgs[19668] = 
{	
	id = 19668,        --坐骑模板id 
	name = "奇樂", --坐骑名称
	icon = 8681,  --图标路径
	model = 8591, --模型路径
	sort_id = 253, --坐骑排序显示序号
	desc = "2019年限時回饋活動中獲得", --获得方式
	tale = "歡迎來到中原馬戲之夜！我，小丑奇樂，奉遠方女王的命令，為你們帶來最驚險刺激的馬戲表演。頭頂蘋果躍過熊熊燃燒的火圈？空中飛人翻跟頭八周半？只要你們想看，我就會統統表演！但是現在，先請各位從我的尾巴上抽一張牌吧，我將展示我的絕學，小丑讀心術！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玹鸢
RideAttributeCfgs[19669] = 
{	
	id = 19669,        --坐骑模板id 
	name = "玹鳶", --坐骑名称
	icon = 8682,  --图标路径
	model = 8592, --模型路径
	sort_id = 254, --坐骑排序显示序号
	desc = "2019年六龍秘寶中獲得", --获得方式
	tale = "昔有軒轅，涿鹿一戰，匡時濟世，拓土建邦，功澤百世，德潤千秋。今有玹鳶，誕於昆侖，承天靈慧，載地厚德，縱橫萬里，光耀九州。軒轅擇益友，玹鳶尋明君，癡心一往，永不相負！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莱顿·神
RideAttributeCfgs[19682] = 
{	
	id = 19682,        --坐骑模板id 
	name = "萊頓·神", --坐骑名称
	icon = 8703,  --图标路径
	model = 8684, --模型路径
	sort_id = 255, --坐骑排序显示序号
	desc = "2019年食力比拼排行榜獎勵", --获得方式
	tale = "從幽幽的磷火中誕生出的巨龍，連吐息出的青焰都冰冷徹骨，如同自冥界歸來的怪物。巨龍盤踞在城牆之上，看守著神明賜予人們的金蘋果，只要不去刻意打擾它，它就不會傷害人類。“請每三個月為它洗一次澡，並餵食新鮮的鹿肉。”《龍類辨認及飼養手冊》上是這樣寫的。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莱顿·圣
RideAttributeCfgs[19684] = 
{	
	id = 19684,        --坐骑模板id 
	name = "萊頓·聖", --坐骑名称
	icon = 8704,  --图标路径
	model = 8640, --模型路径
	sort_id = 256, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "巨龍的翼翅扇出疾風，佈滿利齒的口中噴出火焰，一次次驅散那些意圖染指金蘋果的宵小之徒。有時疲憊的巨龍會趴在青石城牆上休息，但它的眼睛仍會注視周遭的一切，千載萬載，永不停息！“萊頓喜歡金閃閃的東西，請不要試圖從它的巢中偷走任何金屬物品！” 《龍類辨認及飼養手冊》上是這樣寫的。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--蚀川
RideAttributeCfgs[19697] = 
{	
	id = 19697,        --坐骑模板id 
	name = "蝕川", --坐骑名称
	icon = 8706,  --图标路径
	model = 8639, --模型路径
	sort_id = 257, --坐骑排序显示序号
	desc = "2019年藏寶閣活動中獲得", --获得方式
	tale = "蜀中多山，地勢險峻，重巒疊嶂，飛流如織。山川險，農人無地為耕，蜀道難，商賈無路通行，積貧積弱，民苦之久矣。蜀相孔明制金石巨蠍，平蜀山，疏渠壑，開良田，築城塞，移山倒海，墾地千里，營天府之國。民皆稱道，爭相觀望，謂之蝕川。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 89760,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--姜渔
RideAttributeCfgs[19705] = 
{	
	id = 19705,        --坐骑模板id 
	name = "薑漁", --坐骑名称
	icon = 8746,  --图标路径
	model = 8683, --模型路径
	sort_id = 258, --坐骑排序显示序号
	desc = "2019年神龍祭祀活動中獲得", --获得方式
	tale = "磻溪悠悠，駕舟垂釣，一竿，一線，一直鉤而已。清風緩緩，楊柳拂岸，朝霞依山，晨霧舒展。自負澄清志，相期渭水畔，不見洛陽宮闕，卻得文王求賢。薑漁在川上曰：“大釣本無鉤！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--箜濛·神
RideAttributeCfgs[19733] = 
{	
	id = 19733,        --坐骑模板id 
	name = "箜濛·神", --坐骑名称
	icon = 8773,  --图标路径
	model = 8749, --模型路径
	sort_id = 259, --坐骑排序显示序号
	desc = "2019年耶誕節排行榜獎勵", --获得方式
	tale = "楚有善箜篌者，其名為濛。濛常攜琴泛舟于漢水之上，且行且彈，所經之處，餘音繞梁三日而不絕也。楚王好音樂，欲使濛為入宮琴師，濛弗從，遂逃秦矣。楚王命人尋之，不見其人，只得其琴，其聲悠悠如細雨，故謂之箜濛。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--箜濛·圣
RideAttributeCfgs[19734] = 
{	
	id = 19734,        --坐骑模板id 
	name = "箜濛·聖", --坐骑名称
	icon = 8774,  --图标路径
	model = 8710, --模型路径
	sort_id = 260, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "楚王得名琴箜濛，奏樂七日，而廢朝政。楚妃樊姬憂之，諫曰：“桀醉於妺喜之瑟，故夏亡。紂醉於靡靡之音，故商亡。今君醉於箜濛，豈非凶兆也？”楚王大悟，遂藏箜濛，勤于朝政，揮師平亂，立威定霸，使楚大出於天下。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星曦
RideAttributeCfgs[19753] = 
{	
	id = 19753,        --坐骑模板id 
	name = "星曦", --坐骑名称
	icon = 8779,  --图标路径
	model = 8638, --模型路径
	sort_id = 261, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "相傳秦穆公時有一名擅長養馬的牧民，他最鍾愛一匹頗具靈性的白馬。一天放牧時，牧民突發急病，白馬馱著牧民疾馳百里趕到醫館，最終牧民得救，白馬卻累倒了。南方天上的朱雀被白馬的忠誠感動，將它化為一顆明亮的星星，永遠守護它的主人。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪璃
RideAttributeCfgs[19790] = 
{	
	id = 19790,        --坐骑模板id 
	name = "雪璃", --坐骑名称
	icon = 8819,  --图标路径
	model = 8634, --模型路径
	sort_id = 262, --坐骑排序显示序号
	desc = "龍爭虎鬥第十六賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--芙瑶
RideAttributeCfgs[19791] = 
{	
	id = 19791,        --坐骑模板id 
	name = "芙瑤", --坐骑名称
	icon = 8818,  --图标路径
	model = 8707, --模型路径
	sort_id = 263, --坐骑排序显示序号
	desc = "八寶禮盒中概率獲得", --获得方式
	tale = "東海有鳥焉，其名芙瑤，以琅軒美玉為食，其羽燦若流金，鳴聲錚錚而不懼人，營翡翠珍珠之巢，蠻夷巫祝以之為神鳥。芙瑤雙足健碩，幼時無翼，行於地，七年方生翼而能飛，故謂之曰：“一朝羽翼成，直上九萬里。”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--云翎
RideAttributeCfgs[19804] = 
{	
	id = 19804,        --坐骑模板id 
	name = "雲翎", --坐骑名称
	icon = 8845,  --图标路径
	model = 8708, --模型路径
	sort_id = 264, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "傳說在遙遠崇山的深林中，居住著能夠幻化成人形的孔雀精靈，他們個個能歌善舞，過著遠離喧囂的平靜生活。偶爾的，深林中來了迷路的登山者或砍柴人，他們便會化為孔雀，發出清脆的鳴聲，帶領迷路者重新找到回家的方向。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--千崇
RideAttributeCfgs[19805] = 
{	
	id = 19805,        --坐骑模板id 
	name = "千崇", --坐骑名称
	icon = 8846,  --图标路径
	model = 8838, --模型路径
	sort_id = 265, --坐骑排序显示序号
	desc = "2020年限時回饋活動中獲得", --获得方式
	tale = "東海之濱有一青苔石島，上有雕樑畫棟，唯冬月十五可見。有好事者乘船而登之，欲探究竟。方登島，忽而山搖地動，波濤乍起，有獸長吟，現一巨龜，石島乃其背。好事者大驚，落荒而逃，複而觀之，巨龜乃潛如海，不再現也。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浩息
RideAttributeCfgs[19816] = 
{	
	id = 19816,        --坐骑模板id 
	name = "浩息", --坐骑名称
	icon = 8875,  --图标路径
	model = 8821, --模型路径
	sort_id = 266, --坐骑排序显示序号
	desc = "迎春禮盒中概率獲得", --获得方式
	tale = "過年最期待的是什麼？年夜飯？逛廟會？錯！當然是放煙花！兩萬響的大地紅聲震九霄，十七色的禮花彈光耀四海！什麼？還嫌不過癮？那就只能拿出秘密武器——浩息了！你看這火紅色的特製大煙花，乘上它，一飛沖天，摘星攬月，與銀河肩並肩！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--沐风·神
RideAttributeCfgs[19817] = 
{	
	id = 19817,        --坐骑模板id 
	name = "沐風·神", --坐骑名称
	icon = 8876,  --图标路径
	model = 8869, --模型路径
	sort_id = 267, --坐骑排序显示序号
	desc = "2020年春節活動排行榜獎勵", --获得方式
	tale = "左慈收到一本稀罕的畫冊，上面記述著一種貌如窮奇，卻有著鷹的喙與爪的異獸。老神仙覺得著實有趣，便用泥土和羽毛捏成這怪獸的樣子。誰知，泥模剛剛做好，一根脫落的絨毛飛進老神仙的鼻子，惹他打了個大噴嚏，一口仙氣噴在模型上，將那模型變成了活物。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--沐风·圣
RideAttributeCfgs[19818] = 
{	
	id = 19818,        --坐骑模板id 
	name = "沐風·聖", --坐骑名称
	icon = 8877,  --图标路径
	model = 8797, --模型路径
	sort_id = 268, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "西有異獸，似鷹而生獅身，其身白如雪，其翼緋如霞。此乃日神東君座下之獸，以雷霆閃電為食，吐息則生煙雲，櫛風沐雨，不知疲憊，忠誠不屈。此獸若振翅而飛，巨翼伸展，則紅霞漫天，若收斂雙翼，行於雲上，則天光大亮。——摘自《西夷異獸錄》" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冲鸭
RideAttributeCfgs[19819] = 
{	
	id = 19819,        --坐骑模板id 
	name = "沖鴨", --坐骑名称
	icon = 8878,  --图标路径
	model = 8497, --模型路径
	sort_id = 269, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "嘎嗷！沒錯，我，就是兇猛的年獸！最喜歡的是玩球，曬太陽和吃東西，最討厭起早早。嘎嗷！什麼？你問是不是在哪見過我？怎，怎麼可能！我可是聽說人們慶祝新年時會準備好吃的，才偷偷跑出來的！閒話少說，再不快點，好吃的可要被吃光了！沖鴨！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--应瑞
RideAttributeCfgs[19840] = 
{	
	id = 19840,        --坐骑模板id 
	name = "應瑞", --坐骑名称
	icon = 8883,  --图标路径
	model = 8880, --模型路径
	sort_id = 270, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "爆竹聲中一歲除，春風送暖入……入年糕！哎呀，詩句好難記，但是使命我可不會忘記，玉皇大帝命我來為大家送福啦。庚子新歲，正是韶華。新的一年裡，我會努力把連連的好運，綿綿的幸福，穩穩的健康，多多地搬進將軍家裡。這正是星樞呈瑞，鼠兆豐年！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飓枭
RideAttributeCfgs[19865] = 
{	
	id = 19865,        --坐骑模板id 
	name = "颶梟", --坐骑名称
	icon = 8888,  --图标路径
	model = 8820, --模型路径
	sort_id = 271, --坐骑排序显示序号
	desc = "2020年神龍祭祀獲得", --获得方式
	tale = "居住在山中的人們之間流傳著這樣一個傳說：若是在野外遭遇狂風乍起，那就是你踏入了颶梟的領地。那是一種巨大的貓頭鷹，翅膀能長到丈餘長，每一次拍打都將掀起颶風。它是森林與崇山的守護者，只有敬畏自然的人才會受到颶梟的歡迎。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 9240, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 9240,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--萝贝
RideAttributeCfgs[19889] = 
{	
	id = 19889,        --坐骑模板id 
	name = "蘿貝", --坐骑名称
	icon = 8914,  --图标路径
	model = 8850, --模型路径
	sort_id = 272, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "蘿貝一直覺得自己與眾不同。它出生在一個農民的蘿蔔田裡，卻大得像一棵樹。農民看見它，以為自己種出了千年人參。當他準備把蘿貝從地裡拔出來的時候，蘿貝用力一蹦，跳了出來，兩條又短又粗的小腿跑得飛快，一溜煙就沒了蹤影，只剩下目瞪口呆的農民。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--犴裔
RideAttributeCfgs[19893] = 
{	
	id = 19893,        --坐骑模板id 
	name = "犴裔", --坐骑名称
	icon = 8917,  --图标路径
	model = 8851, --模型路径
	sort_id = 273, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "有獸翔於九天，與獬豸為伍，其名犴裔，好訟而能辨，乃忠魂義魄化而為虎形，以警世人。秦時衛鞅變法，犴裔乃現，諫曰：“言之以法，行之以公。”鞅從之，後新法初成，秦強而出於天下，始有傳言稱：“犴裔現，天下興。”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--云嫣
RideAttributeCfgs[19901] = 
{	
	id = 19901,        --坐骑模板id 
	name = "雲嫣", --坐骑名称
	icon = 8919,  --图标路径
	model = 8849, --模型路径
	sort_id = 274, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "孤雲伴月寥星點，棄筆從戎已七年。金戈鐵馬關山度，破斧沉沙長河岸。長亭一別故鄉遠，不見梓裡意難安。塞外北風卷旌旗，飛雁銜書入寒天。尺素盡道相思苦，夜來難寐衷腸述。征蓬難反歸無期，佳人空候古道邊。三千青絲終成雪，此情難卻寄雲嫣。願為紫霞越昆侖，再話桑麻阡陌間。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--雪华
RideAttributeCfgs[19909] = 
{	
	id = 19909,        --坐骑模板id 
	name = "雪華", --坐骑名称
	icon = 8944,  --图标路径
	model = 8892, --模型路径
	sort_id = 275, --坐骑排序显示序号
	desc = "風暖禮盒中概率獲得", --获得方式
	tale = "雪華一直盼望著春天，因為冬天裡，大地一直都被白雪覆蓋著，漫長又寂靜。只有春天剛剛來到時，她才能踩著冬的尾巴，和自己的好朋友燕兒見上一面，聽它講述從大洋彼岸帶回來的故事，然後和其他雪花一起，回歸天空的懷抱，化作春雨，化作薄霧。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--蒲仙
RideAttributeCfgs[19915] = 
{	
	id = 19917,        --坐骑模板id 
	name = "蒲仙", --坐骑名称
	icon = 8951,  --图标路径
	model = 8891, --模型路径
	sort_id = 276, --坐骑排序显示序号
	desc = "2020年限時回饋活動中獲得", --获得方式
	tale = "我誕生於蒲公英的花海中，各色的野花裝點起我的冠冕，輕盈的白絨是我的披風，我在一片生機勃勃中啟程，而無盡的旅途是我的歸宿。我將為蒼莽的大地送來春天的消息，也會和柔暖的風一起托著你，飛上天空，去看遠方未知的景色。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--枫意
RideAttributeCfgs[19916] = 
{	
	id = 19918,        --坐骑模板id 
	name = "楓意", --坐骑名称
	icon = 8952,  --图标路径
	model = 8920, --模型路径
	sort_id = 277, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "想當年唐僧西行的時候，遇見了俺們住的這片海，在他發愁怎樣渡海時，俺就主動請纓前去幫忙。龍王說俺幫助唐僧渡海有功，就賜了這金椅和金傘。唉呀！師父別念了！俺可沒說謊！你要是也想試試，就坐上來，俺帶你去海上兜兜風！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--初晓
RideAttributeCfgs[19922] = 
{	
	id = 19922,        --坐骑模板id 
	name = "初曉", --坐骑名称
	icon = 8956,  --图标路径
	model = 8921, --模型路径
	sort_id = 278, --坐骑排序显示序号
	desc = "綠柳禮盒中概率獲得", --获得方式
	tale = "我收到的幾封信上說，耶誕節的時候只有小孩子能收到禮物，長大就收不到了。這怎麼行呢？聖誕明明是讓所有人都快樂的節日。雖然慶典早已過去，但我仍決定拿上禮物，再度出發。懷著美好心願的人們啊，我會乘著初曉時分的晨光，將禮物輕放在你們床頭。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--秋趣
RideAttributeCfgs[19929] = 
{	
	id = 19929,        --坐骑模板id 
	name = "秋趣", --坐骑名称
	icon = 8978,  --图标路径
	model = 8948, --模型路径
	sort_id = 279, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "想知道我的拿手好戲？那本魔術師就來表演一番。看見我手中的魔杖了嗎？它是我的傳家寶，有著可以讓胡蘿蔔快速生長的神奇魔力！不信你看，先把種子埋進土裡，然後跟著我左手右手畫圈圈，一起念：“胡蘿蔔呀胡蘿蔔，長快快呀長快快！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--汐灵
RideAttributeCfgs[19937] = 
{	
	id = 19937,        --坐骑模板id 
	name = "汐靈", --坐骑名称
	icon = 8983,  --图标路径
	model = 8947, --模型路径
	sort_id = 280, --坐骑排序显示序号
	desc = "2020年復活彩蛋中概率獲得", --获得方式
	tale = "極西有海，名“阿特蘭提”，深不可測，其上巨浪滔天，摧桅折槳，往來船隻溺沒無數。海中有仙子，名曰“汐靈”，人身魚尾，背生翼鰭，手持三叉方戟，劈海而行。漁民若遇風暴，則呼其名，仙子必持戟相救。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--炽鵟
RideAttributeCfgs[19946] = 
{	
	id = 19946,        --坐骑模板id 
	name = "熾鵟", --坐骑名称
	icon = 9011,  --图标路径
	model = 8870, --模型路径
	sort_id = 281, --坐骑排序显示序号
	desc = "龍爭虎鬥第十七賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--苔痕
RideAttributeCfgs[19947] = 
{	
	id = 19947,        --坐骑模板id 
	name = "苔痕", --坐骑名称
	icon = 9012,  --图标路径
	model = 8957, --模型路径
	sort_id = 282, --坐骑排序显示序号
	desc = "2020年神龍祭祀活動中獲得", --获得方式
	tale = "我家旁邊搬來一個奇怪的人類，他終日在山間遊歷，偶爾還會吟詩踏歌。他最喜歡的事情就是掀起窗簾，看山水俊秀，草木蔥蘢，有時他也會看我舉著小葉傘，坐在絨絨的青苔上和蝴蝶一起唱歌，每當這時，他便會感慨一句:“何陋之有？”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--宿魇
RideAttributeCfgs[19948] = 
{	
	id = 19948,        --坐骑模板id 
	name = "宿魘", --坐骑名称
	icon = 9013,  --图标路径
	model = 8958, --模型路径
	sort_id = 283, --坐骑排序显示序号
	desc = "2020年神龍祭祀活動中獲得", --获得方式
	tale = "世人之夢，奇詭瑰麗，有獸形似馬，名謂“宿魘”，其鬃燦燦若星漢，其聲隆隆如冬雷，以夢為食，晝伏夜出。宿魘曾為星君，與貘相爭，戰於天帝夢中，天帝醒，怒而降罪與宿魘，奪其神力，貶為走獸，需侍明君八千載，方可重歸其位。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--桃狰
RideAttributeCfgs[19987] = 
{	
	id = 19987,        --坐骑模板id 
	name = "桃猙", --坐骑名称
	icon = 9036,  --图标路径
	model = 8986, --模型路径
	sort_id = 284, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "巴山有獸，音如擊石，形如赤豹，體紅如山桃，世人以之為猙。非也，此乃桃猙，能禦風，曾受武侯所托引東風至赤壁。此獸冬而伏，驚蟄而醒，穀雨時現，食霜雪，吞濕邪，驅寒氣於關外，引熏風至蜀中，其所行處群花爛漫，萬物蘇生，乃大吉之瑞獸。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--异角
RideAttributeCfgs[19994] = 
{	
	id = 19994,        --坐骑模板id 
	name = "異角", --坐骑名称
	icon = 9045,  --图标路径
	model = 8987, --模型路径
	sort_id = 285, --坐骑排序显示序号
	desc = "2020年5到7三月連續簽到獲得", --获得方式
	tale = "商時帝辛暴虐無度，使異獸運木石，由蜀山至朝歌，興瓊台玉宇。此獸頭若銅盾，生犀角，身負鱗甲，有萬鈞之力，可日行八百，其壽無人可知。而後武王滅商，又經秦漢，朝代興亡，更迭無數，唯此獸獨存至今，以為見證。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 4200, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 4200,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--谛麟·神
RideAttributeCfgs[19995] = 
{	
	id = 19995,        --坐骑模板id 
	name = "諦麟·神", --坐骑名称
	icon = 9047,  --图标路径
	model = 9039, --模型路径
	sort_id = 286, --坐骑排序显示序号
	desc = "2020年勞動節排行榜中獲得", --获得方式
	tale = "諦麟原是蓬萊仙人座下的金瞳玄鬃玉獅子，生性好動無畏。一日，它追逐煙霞於雲上，衝撞了仙人的丹爐，誤食尚未煉好的仙丹，成為長著銳利雙角的兇惡怪獸，因而被貶下凡。但仙人憐愛玉獅子，於是施下仙術，若諦麟能在抑制凶性，煉去雙角，便能重歸蓬萊。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--谛麟·圣
RideAttributeCfgs[19996] = 
{	
	id = 19996,        --坐骑模板id 
	name = "諦麟·聖", --坐骑名称
	icon = 9048,  --图标路径
	model = 9014, --模型路径
	sort_id = 287, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "因成為惡獸而被貶下凡的諦麟為重回蓬萊，百年間輔佐數位豪傑征戰天下，平定禍亂，見證了無數英雄事蹟，凶性也隨之慢慢褪去。當它終於有資格回歸仙境時，諦麟卻拒絕了前來迎接它的仙人，因為在它已被凡人英雄們的堅韌與忠義感動，決意留在凡間，繼續為英雄而戰。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--笺境
RideAttributeCfgs[19997] = 
{	
	id = 19997,        --坐骑模板id 
	name = "箋境", --坐骑名称
	icon = 9049,  --图标路径
	model = 8922, --模型路径
	sort_id = 288, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "三千世界，能大能小，方圓變化，玄而又玄。有一世界，寄身書中，山川鳥獸，宣紙所成。折頁為山，傾墨為淵，聚簡為木，點絹為花，鐘靈毓秀，精巧無雙。曾有散仙，名姓未諳，以此為居，而築洞天，不問世事，不染紅塵，暢遊紙境，一夢千年。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--觅旅
RideAttributeCfgs[20023] = 
{	
	id = 20023,        --坐骑模板id 
	name = "覓旅", --坐骑名称
	icon = 9070,  --图标路径
	model = 8979, --模型路径
	sort_id = 289, --坐骑排序显示序号
	desc = "紫桑禮盒中概率獲得", --获得方式
	tale = "古者奚仲作車，乘杜作乘馬，使人可遠行。恒公時，齊商得奚仲之車，然舊車已朽，幾近腐土。故齊商命百工修葺整頓，重鑄輪軸，鎏以黃金，飾以美玉，鑲以紫晶，綴以絲綢。齊商以此車獻恒公，恒公大悅，名之曰“覓旅”。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--莲息
RideAttributeCfgs[20027] = 
{	
	id = 20027,        --坐骑模板id 
	name = "蓮息", --坐骑名称
	icon = 9075,  --图标路径
	model = 8988, --模型路径
	sort_id = 290, --坐骑排序显示序号
	desc = "2021年限時回饋獲得中獲得", --获得方式
	tale = "秉燭夜遊小園間，暗香嫋嫋淺似煙。嬋娟斜照清如練，亭亭玉立水中仙。嫣然持扇半遮面，錦繡搖曳香風遠。雲舒雲卷蓮息漫，蛾眉未笑意已濃。忽而雲起遮明月，不見明月不見仙。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--蜜语
RideAttributeCfgs[20028] = 
{	
	id = 20028,        --坐骑模板id 
	name = "蜜語", --坐骑名称
	icon = 9076,  --图标路径
	model = 9040, --模型路径
	sort_id = 291, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "西漢末時光武帝帶兵出征，然而連月的梅雨使糧草受潮，正危急時，斥候發現了巨大的蜂巢，其中盈滿蜂蜜。光武帝命軍隊在此暫歇，采蜜充饑，又命人將蜂蜜晾成大塊蜜糖，作為軍糧攜帶。此舉不僅化解了糧草危機，也使蜜糖成為了備受漢軍喜愛的美食。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--仙羽
RideAttributeCfgs[20049] = 
{	
	id = 20049,        --坐骑模板id 
	name = "仙羽", --坐骑名称
	icon = 9099,  --图标路径
	model = 9052, --模型路径
	sort_id = 292, --坐骑排序显示序号
	desc = "六一禮盒中概率獲得", --获得方式
	tale = "月英改進了她的機關木鳥，用密不透風的油紙替代笨重的實木，讓機關鳥變得輕盈無比，飄逸靈動。月英驕傲地叫它“仙羽”，並附上一封信：“如果想回臥龍崗看看，就請乘著它來吧，我讓我先生試過了，絕對安全！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--玄灼
RideAttributeCfgs[20057] = 
{	
	id = 20057,        --坐骑模板id 
	name = "玄灼", --坐骑名称
	icon = 9101,  --图标路径
	model = 9071, --模型路径
	sort_id = 293, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "極南有山，名玄山，山多黑石，不生草木。山中有龍，名為玄灼，赤焰鬃，玄鐵鱗，能吞火，所行處萬物盡焚。昔玄灼與應龍為敵，戰於大荒，大荒為龍炎所焚，火借風勢，三月不熄，其中神通，不可估量。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--寻冬
RideAttributeCfgs[20063] = 
{	
	id = 20063,        --坐骑模板id 
	name = "尋冬", --坐骑名称
	icon = 9124,  --图标路径
	model = 9072, --模型路径
	sort_id = 294, --坐骑排序显示序号
	desc = "清夏禮盒中概率獲得", --获得方式
	tale = "相傳古時候有一位才學過人的智者，他受夠了世間無休止的戰火，決定隱居。智者在終南山的深林裏蓋起茅廬，春暖躬耕，入冬蝸居，閑時騎著白鹿踏雪而行，肆意於青崖之間。如果有人能找那只白鹿，就能乘著它來到智者的茅廬，那位智者則會將他的智慧盡數傳授。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--云居
RideAttributeCfgs[20070] = 
{	
	id = 20070,        --坐骑模板id 
	name = "雲居", --坐骑名称
	icon = 9136,  --图标路径
	model = 9078, --模型路径
	sort_id = 295, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "雲中有居士，朱冠白羽衣。行吟共踏歌，詩畫兩相宜。才情比金玉，心志堅不移。廣袖舞柔風，清音如佩鳴。扶搖乘雲起，長天垂玄翼。朝辭萬仞山，暮至薄霧裏。仙影尚難尋，行蹤久成迷。結廬煙霞境，逍遙無歸期。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--争渡·神
RideAttributeCfgs[20071] = 
{	
	id = 20071,        --坐骑模板id 
	name = "爭渡·神", --坐骑名称
	icon = 9137,  --图标路径
	model = 9127, --模型路径
	sort_id = 296, --坐骑排序显示序号
	desc = "2021年端午節排行榜中獲得", --获得方式
	tale = "端午節素有賽龍舟的習俗，今年也不例外。長江兩岸早早地張燈結綵，用五色旌旗標出賽道，彩綢點綴的龍舟在起點一字排開，還未到開賽之時，擂鼓聲就已經響徹天際，熱鬧非凡。更有小道消息稱，丞相準備了堆成小山的鮮肉粽子，會獎勵給拔得頭籌的龍舟賽手！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--争渡·圣
RideAttributeCfgs[20072] = 
{	
	id = 20072,        --坐骑模板id 
	name = "爭渡·聖", --坐骑名称
	icon = 9138,  --图标路径
	model = 8709, --模型路径
	sort_id = 297, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "江上游弋的身影，是龍，還是舟？是龍舟！爭渡！爭渡！當號子聲響起的時候，龍舟成了江上最引人注目的風景。揮灑汗水，讓船槳整齊地劃動，船身則化作遊龍飛馳，龍首劈開白浪和葦葉，目標就是那道鮮紅色的終點線！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青尾
RideAttributeCfgs[20099] = 
{	
	id = 20099,        --坐骑模板id 
	name = "青尾", --坐骑名称
	icon = 9160,  --图标路径
	model = 9077, --模型路径
	sort_id = 298, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "農曆七月時，煞氣最盛，亂邪滋生，危害蒼生。有三尾靈狐，自北嶺深林而出，其聲如嬰兒啼，銜青燈，踏磷火，鎮邪除煞。靈狐若遇邪祟，則以狐火逐之，若遇奸惡，則以利齒相搏。燈火渺遠，磷光朦朧，狐鳴悠悠，遂天下太平。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--堪舆
RideAttributeCfgs[20105] = 
{	
	id = 20105,        --坐骑模板id 
	name = "堪輿", --坐骑名称
	icon = 9165,  --图标路径
	model = 9103, --模型路径
	sort_id = 299, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "《經》雲：“氣乘風則散，界水則止。”古人聚之使不散，行之使有止，故謂之“風水”。古者包棲觀象於天，觀法於地，著書立說，行堪輿之術。後者遵伏羲之術，鑄八卦羅盤，丈量星辰之運轉，測繪地理之變化，以求一窺天機。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--倾辰
RideAttributeCfgs[20112] = 
{	
	id = 20112,        --坐骑模板id 
	name = "傾辰", --坐骑名称
	icon = 9171,  --图标路径
	model = 9037, --模型路径
	sort_id = 300, --坐骑排序显示序号
	desc = "龍爭虎鬥第十八賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--琉砂
RideAttributeCfgs[20113] = 
{	
	id = 20113,        --坐骑模板id 
	name = "琉砂", --坐骑名称
	icon = 9172,  --图标路径
	model = 9102, --模型路径
	sort_id = 301, --坐骑排序显示序号
	desc = "小暑禮盒中概率獲得", --获得方式
	tale = "西域有獸，身似貓，毛色渾黑，其目赤金，耳長如兔，內生青絨毛。西域人以其為司日之神獸，供之於廟堂，飾之以青石黃金。每逢節日祭禮，巫祝佩玄色長耳頭飾，奉羊奶鮮魚，問蔔於此獸，獸答曰：“喵喵喵！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--烬夜
RideAttributeCfgs[20135] = 
{	
	id = 20135,        --坐骑模板id 
	name = "燼夜", --坐骑名称
	icon = 9195,  --图标路径
	model = 9128, --模型路径
	sort_id = 302, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "東海有島，盛產黑石，終年赤炎環繞，寸草不生。島上有凶獸，形似豹，身通黑，四足踏火。千餘載前大能鎮凶獸於島上，故此獸長眠已久，只因其獸魂兇悍，八百年一醒，醒則焚風降世，夜空盡燃，故名之曰燼夜。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--敖游
RideAttributeCfgs[20136] = 
{	
	id = 20136,        --坐骑模板id 
	name = "敖遊", --坐骑名称
	icon = 9196,  --图标路径
	model = 9104, --模型路径
	sort_id = 303, --坐骑排序显示序号
	desc = "仲夏禮盒中概率獲得", --获得方式
	tale = "東海廣遠，生靈奇異，煙波浩渺，可納百川。海中一鯨，身長十丈，引頸長吟，聲傳萬裏，偶得龍氣，化形半靈，頭生二角，身被青鱗，舒翅為浪，曳尾成濤，遇浪則遊，遇風而飛，暢行天地，無束無拘。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莲官
RideAttributeCfgs[20143] = 
{	
	id = 20143,        --坐骑模板id 
	name = "蓮官", --坐骑名称
	icon = 9201,  --图标路径
	model = 9141, --模型路径
	sort_id = 304, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "蜀山天池，內生蓮花，其葉若鏤金，瓣似白玉，亭亭玉立，靈韻天成。池中有亭，內有神鼓蓮官，鼓身乃千年寒冰所成，蒙以鼉龍之皮。鼓者需擊之以楠木槌，三緩三急，成則池中蓮花皆綻，香漫蜀山。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--鱼美
RideAttributeCfgs[20159] = 
{	
	id = 20159,        --坐骑模板id 
	name = "魚美", --坐骑名称
	icon = 9206,  --图标路径
	model = 9173, --模型路径
	sort_id = 305, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "人類整天 “小丑魚”，“小丑魚”地叫我，你們摸著良心講，我醜嗎？看我這身橙白相間的鱗片，圓潤豐滿的身軀，還有扇子一樣的鰭和小巧可愛的尾巴，誰見了都要對我讚不絕口。你也是呀，既然坐在我的小籃筐裏，就多誇誇我吧！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雷鹿
RideAttributeCfgs[20160] = 
{	
	id = 20160,        --坐骑模板id 
	name = "雷鹿", --坐骑名称
	icon = 9207,  --图标路径
	model = 9174, --模型路径
	sort_id = 306, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "南華有麂，身白而尾蹄紫，食仙草，飲花露，周身電光環繞。其角堅實，五行屬金，以其鑄劍，皆為神兵。因其偶現於南疆，故南疆獵戶爭相狩之，現世所存雷麂已罕如廖星，為天下所禁獵。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凝珠
RideAttributeCfgs[20175] = 
{	
	id = 20175,        --坐骑模板id 
	name = "凝珠", --坐骑名称
	icon = 9212,  --图标路径
	model = 9161, --模型路径
	sort_id = 306, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "珠玉藏於汪洋，因難求而珍，求之需潛五洋，下九淵，取百蚌只為一珠。賢能居於莽蒼，因少伯樂而隱，訪之需遍河山，踏原野，蜀山三顧只為一人。故選賢舉能若深海尋珠，不可因知難而退，而需一心求索，慧眼以識。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--湍君·神
RideAttributeCfgs[20179] = 
{	
	id = 20179,        --坐骑模板id 
	name = "湍君·神", --坐骑名称
	icon = 9255,  --图标路径
	model = 9254, --模型路径
	sort_id = 307, --坐骑排序显示序号
	desc = "2020七夕節排行榜中獲得", --获得方式
	tale = "南蠻多急水灘塗，夷族一支居於水岸，族人以捕魚為業，敬畏湍流。其紋乃蒼色麒麟，喙似白玉，角若硨磲，名為湍君。夷族以此麒麟為水神，開河時祭之，請湍君護佑，以求風平浪穩，漁獲滿倉。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--湍君·圣
RideAttributeCfgs[20180] = 
{	
	id = 20180,        --坐骑模板id 
	name = "湍君·聖", --坐骑名称
	icon = 9256,  --图标路径
	model = 9235, --模型路径
	sort_id = 309, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "水麒麟湍君乃東方青龍後嗣，以溪水江河為居，喜激流瀑布。湍君天生神通，號令百川，其常戲於巨浪之間，偶現於江上，狂風急濤相伴左右，江水如騰龍而起，直沖天際，百米之內無人能近，故夷族奉之為水神。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--菀夏
RideAttributeCfgs[20202] = 
{	
	id = 20202,        --坐骑模板id 
	name = "菀夏", --坐骑名称
	icon = 9279,  --图标路径
	model = 9215, --模型路径
	sort_id = 310, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "月初霽，風弄柔枝搖倚。淇水岸，花到荼蘼，才歎時光短如隙。登高遠望去，恨不能常在。曾憶，袂裳系。夏晚巧折枝，輕綴籃裏。夜雨驟急落零一地。醒且來探，只剩憐惜。謹記，短春熙，念舊歲如寂夢。花謝明還再開，人卻無回往昔，豈能兒戲？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--绘池·神
RideAttributeCfgs[20218] = 
{	
	id = 20218,        --坐骑模板id 
	name = "繪池·神", --坐骑名称
	icon = 9283,  --图标路径
	model = 9280, --模型路径
	sort_id = 311, --坐骑排序显示序号
	desc = "2021年福星收錄排行榜", --获得方式
	tale = "南華仙人近來得到一個寶貝，乍看是普通的畫卷，畫面用琉璃色塗開成水面，平平無奇，但展開之後那藍色就成了畫卷上一汪池水，從中開出荷花。仙人對這畫卷愛不釋手，時常拿給仙友們展示，卻在某天騰雲駕霧時，畫卷不小心脫手，從此遺落凡間。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--绘池·圣
RideAttributeCfgs[20219] = 
{	
	id = 20219,        --坐骑模板id 
	name = "繪池·聖", --坐骑名称
	icon = 9284,  --图标路径
	model = 9234, --模型路径
	sort_id = 312, --坐骑排序显示序号
	desc = "福星寶盒中概率獲得", --获得方式
	tale = "南疆一個獵戶在山中拾得一幅神奇的畫卷，疑是仙界遺寶，展開畫卷時，琉璃色畫出的水面就會長出荷花。獵戶決定獨佔這個寶貝，於是把它偷偷埋藏進莊稼地裏。可當他第二天再來時，發現農田變成了連綿的荷塘，不管怎麼尋覓，都再找不到那幅畫卷了。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--鲸歌
RideAttributeCfgs[20223] = 
{	
	id = 20223,        --坐骑模板id 
	name = "鯨歌", --坐骑名称
	icon = 9287,  --图标路径
	model = 9216, --模型路径
	sort_id = 313, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "東海漁民傳言海中有嘯聲，疑是螭龍。好事者潛而尋之，見一獨角巨鯨，浮游自在，行若乘風，時而長吟，歌韻靈動悠揚，似得帝江之傳。此獸偶現於洋上，聲傳百里，然無人能見其真身，故皆曰：“異獸通靈，非有緣者不能近。”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--清沐
RideAttributeCfgs[20235] = 
{	
	id = 20235,        --坐骑模板id 
	name = "清沐", --坐骑名称
	icon = 9310,  --图标路径
	model = 9236, --模型路径
	sort_id = 314, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "昆侖山深處有一眼溫泉，以之沐浴可以延年益壽，治癒百病。但那泉水嬌貴，離了水源便會失去奇效，除非用開採自昆侖山中的無暇蒼玉打造成的容器盛放，才不會失去原本的效力。自古以來無數君王與富豪一擲千金，只為一沐清泉。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--飞鳐
RideAttributeCfgs[20236] = 
{	
	id = 20236,        --坐骑模板id 
	name = "飛鰩", --坐骑名称
	icon = 9311,  --图标路径
	model = 9233, --模型路径
	sort_id = 315, --坐骑排序显示序号
	desc = "桂月寶盒中概率獲得", --获得方式
	tale = "東吳水軍操練於海，忽有巨獸自洋中躍出，掠過戰船之上。此獸背闊數丈，兩翼寬廣，形似鵬鳥而面目混沌，一尾修長且飾以金環，額生利角，其聲隆隆若狂濤擊岸，其勢洶洶似怒風翻雲。眾軍士大驚，皆以其為吉兆，而士氣昂揚，實力大增。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凛风
RideAttributeCfgs[20246] = 
{	
	id = 20246,        --坐骑模板id 
	name = "凜風", --坐骑名称
	icon = 9323,  --图标路径
	model = 9281, --模型路径
	sort_id = 316, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "自混沌初開，即有野獸偶得機緣，開啟靈智，而後修行千年，方成精怪。有一白羚，食冰漱玉，聽雷而啟智，乃成靈獸，其身被珠璣，其淚為琥珀，額生金毛可織為絹，水火不侵，乃天下罕有之珍材。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--长明·神
RideAttributeCfgs[20247] = 
{	
	id = 20247,        --坐骑模板id 
	name = "長明·神", --坐骑名称
	icon = 9324,  --图标路径
	model = 9312, --模型路径
	sort_id = 317, --坐骑排序显示序号
	desc = "2021年國力爭霸排行榜獎勵", --获得方式
	tale = "又是一年中秋將至，洛陽百姓紛紛采買天燈以放飛祈福。城東作坊的一個手藝人突發奇想，造了一只丈餘高的大燈，再用四根鎏金鐵索栓上一只花梨木船，人乘上去就會隨著燈飛上高空，遍覽洛陽盛景。一時間，這只巨大的天燈成為佳話。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--长明·圣
RideAttributeCfgs[20248] = 
{	
	id = 20248,        --坐骑模板id 
	name = "長明·聖", --坐骑名称
	icon = 9325,  --图标路径
	model = 9202, --模型路径
	sort_id = 318, --坐骑排序显示序号
	desc = "國慶禮匣中概率獲得", --获得方式
	tale = "洛陽的能工巧匠為了慶祝中秋而建造了一只足以載人的巨大天燈，飾以珠玉和絹花。當乘著它飛上雲端時，腳下便是洛陽城的萬家燈火，頭上星辰仿佛觸手可及，遠山青黛連綿似潑墨。十五的明月升起來，月光與燈光交融，燈如月，月如燈。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--奇遇
RideAttributeCfgs[20249] = 
{	
	id = 20249,        --坐骑模板id 
	name = "奇遇", --坐骑名称
	icon = 9326,  --图标路径
	model = 9290, --模型路径
	sort_id = 319, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "燕有樵夫打柴為生，偶遇一黃犬，著赤、青二色衣裝，足系金鈴。樵夫甚異，隨其行，入山二三裏，乃見一篷，形似軍中營帳，內有熊、獅、虎、犬等各類走獸十餘，又有雀、雉、鷂、鷹等珍奇飛禽若干，皆奇裝異服，追逐遊戲，熱鬧非常。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1910,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--追星
RideAttributeCfgs[20284] = 
{	
	id = 20284,        --坐骑模板id 
	name = "追星", --坐骑名称
	icon = 9354,  --图标路径
	model = 9291, --模型路径
	sort_id = 320, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "墨門偶得一隕鐵，通白如玉，熔煉百日方鑄為車，輔以機關奇術，無需牛馬牽引而能行於地，無需帆槳桅杆而能浮於水，無需翼翅羽毛而能翔於天。墨子大喜，乘之而遊四方，海內各處不消半日即達，追星逐月，迅疾若電，故謂之“追星”。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--羲和
RideAttributeCfgs[20285] = 
{	
	id = 20285,        --坐骑模板id 
	name = "羲和", --坐骑名称
	icon = 9355,  --图标路径
	model = 9197, --模型路径
	sort_id = 319, --坐骑排序显示序号
	desc = "龍爭虎鬥第十九賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--吞吞
RideAttributeCfgs[20295] = 
{	
	id = 20295,        --坐骑模板id 
	name = "吞吞", --坐骑名称
	icon = 9374,  --图标路径
	model = 9257, --模型路径
	sort_id = 322, --坐骑排序显示序号
	desc = "茱萸禮盒中概率獲得", --获得方式
	tale = "薑太公垂竿於水岸，得一怪魚，其狀如囊，身被棘刺，雙目渾圓，鰭短似摺扇。太公以指觸之，此魚忽大張其口，吞水入腹，魚身鼓起若蹴鞠，棘刺皆立。太公大驚，使怪魚脫手，魚入溪而去，不見其蹤。太公喟然歎曰：“得失在天也！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--星途
RideAttributeCfgs[20315] = 
{	
	id = 20315,        --坐骑模板id 
	name = "星途", --坐骑名称
	icon = 9382,  --图标路径
	model = 9313, --模型路径
	sort_id = 323, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "昔時仙蹤尚可尋，每逢子夜，群星當空，眾星君馭車行於寰宇，天馬引車，天河為轍，浩浩蕩蕩，蔚為壯觀。偶有流星隕地，乃星君寶車現於世，乘之可日行千里，所過處星漢燦爛，曰“疑是銀河落九天”！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--红韵
RideAttributeCfgs[20316] = 
{	
	id = 20316,        --坐骑模板id 
	name = "紅韻", --坐骑名称
	icon = 9383,  --图标路径
	model = 9329, --模型路径
	sort_id = 324, --坐骑排序显示序号
	desc = "五周年慶集字活動中獲得", --获得方式
	tale = "人們都說我有一身紅紅的鱗片，一條金色的尾巴，是能帶來好運氣的“錦鯉”，因此，總有人為了爭奪我而絞盡腦汁。但他們不知道的是，我在等待一位勇武帥氣的主人，一位救世渡人的英雄，而我會用我的力量祝福那人一生幸運。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--潮兮·神
RideAttributeCfgs[20351] = 
{	
	id = 20351,        --坐骑模板id 
	name = "潮兮·神", --坐骑名称
	icon = 9407,  --图标路径
	model = 9386, --模型路径
	sort_id = 325, --坐骑排序显示序号
	desc = "2021年雙十一貢獻排行榜", --获得方式
	tale = "螺生東海之底，百歲而為靈。偶有千年巨螺，得海之靈犀，蘊萬般玄妙。其身長丈餘，其色如碧水，其輝似點點星辰。若得其殼，則三尺內可聞濤聲陣陣，浪聲汩汩，如親臨海濱，故名之曰“潮兮”。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--潮兮·圣
RideAttributeCfgs[20352] = 
{	
	id = 20352,        --坐骑模板id 
	name = "潮兮·聖", --坐骑名称
	icon = 9408,  --图标路径
	model = 9356, --模型路径
	sort_id = 326, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "楚有歌雲：“潮兮潮兮，可聞其聲兮，逐浪於嶼兮，問道於天兮。”潮兮乃東海一螺，其形大若車，重千斤，能逐浪而遊，翩翩舞於海，若鴻毛浮風。此螺頗具靈韻，人可乘之渡海，尋蓬萊之世外仙境，訪瀛洲之煙波微茫。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--幽火
RideAttributeCfgs[20363] = 
{	
	id = 20363,        --坐骑模板id 
	name = "幽火", --坐骑名称
	icon = 9412,  --图标路径
	model = 9347, --模型路径
	sort_id = 327, --坐骑排序显示序号
	desc = "2020年限時回饋活動中獲得", --获得方式
	tale = "有旅者自西歸，謂其鄉人曰：“行至太行以西廿萬裏，時九月中，逢西戎節慶，路人皆做魍魎之扮相遊於市，狀若百鬼夜行。其中最為可怖者乘一浮車，著素衣白裳，面目森嚴，磷火相繞，此人以飴贈吾，曰：‘請與吾等同樂！’”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--远梦
RideAttributeCfgs[20364] = 
{	
	id = 20364,        --坐骑模板id 
	name = "遠夢", --坐骑名称
	icon = 9413,  --图标路径
	model = 9375, --模型路径
	sort_id = 328, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "吳人夜寐，夢其化為一巨魚，徜徉深海，尋訪龍宮。龍王攜眾水族相迎，贈以明珠，獻以珊瑚，相邀宴飲，金盤盛珍饈，玉杯滿瓊漿，龍女舞長袖，絲竹不絕聲。忽聞雞鳴，吳人驚起而長嗟，萬千宮殿散若煙霞，夢中繁華只餘無盡嚮往。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵聪
RideAttributeCfgs[20372] = 
{	
	id = 20372,        --坐骑模板id 
	name = "靈聰", --坐骑名称
	icon = 9437,  --图标路径
	model = 9376, --模型路径
	sort_id = 329, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "我的家在極北之地的大海裏，那裏遍佈冰山，魚蝦成群，永遠不愁吃喝。你別不信，在我的家族中，我可是速度最快的海豹，外號“豹子頭靈聰”，連黑白花的虎鯨都追不上我的尾巴。只要有我帶路，就算你想去北極，也都是小意思啦！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--踏雪·神
RideAttributeCfgs[20374] = 
{	
	id = 20374,        --坐骑模板id 
	name = "踏雪·神", --坐骑名称
	icon = 9439,  --图标路径
	model = 9438, --模型路径
	sort_id = 330, --坐骑排序显示序号
	desc = "2020年食力比拼排行榜獎勵", --获得方式
	tale = "請問去京郊的路怎麼走？我要去那裏的大山深處尋找罕見的藍色冰雪花。不過聽人說，京郊的山高水遠，風雪滿途，半路還總是能聞見香噴噴的烤紅薯味……不對不對，我才沒有只想著吃呢！就算知道路上有這麼多困難，也沒什麼能擋住我的腳步！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--踏雪·圣
RideAttributeCfgs[20375] = 
{	
	id = 20375,        --坐骑模板id 
	name = "踏雪·聖", --坐骑名称
	icon = 9440,  --图标路径
	model = 9417, --模型路径
	sort_id = 331, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "我本來是要去京郊的大山深處，尋找生長在那裏的藍色冰雪花。但我最終決定留下，因為在這一路上，我遇見了許多朋友，聽到無數聞所未聞的傳說。不過，最重要的是……哎呀，烤紅薯實在是太好吃了！老闆，請再來一斤！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 1222,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--守财
RideAttributeCfgs[20387] = 
{	
	id = 20387,        --坐骑模板id 
	name = "守財", --坐骑名称
	icon = 9465,  --图标路径
	model = 9379, --模型路径
	sort_id = 332, --坐骑排序显示序号
	desc = "2020年神龍祭祀活動中獲得", --获得方式
	tale = "想拿走我所有的財寶？可別天真了！雖然我長著寶箱的樣子，擔著寶箱的工作，但我可是大名鼎鼎的寶箱怪，從古至今趕跑的尋寶者能從王城排到天門關！誰敢在我眼皮子底下打寶貝們的主意，我就嗷嗚一口在誰手上留一個大牙印！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--非花
RideAttributeCfgs[20388] = 
{	
	id = 20388,        --坐骑模板id 
	name = "非花", --坐骑名称
	icon = 9466,  --图标路径
	model = 9416, --模型路径
	sort_id = 333, --坐骑排序显示序号
	desc = "2020年神龍祭祀活動中獲得", --获得方式
	tale = "冰泉消雪春池暖，楊堤初有飛還燕。碧葉水中生，新荷隱隱紅。料峭風吹雨，濃雲鎖蒹葭。只道霧非霧，不識花非花。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--轻辇
RideAttributeCfgs[20398] = 
{	
	id = 20398,        --坐骑模板id 
	name = "輕輦", --坐骑名称
	icon = 9488,  --图标路径
	model = 9387, --模型路径
	sort_id = 334, --坐骑排序显示序号
	desc = "2020年藏寶閣活動中獲得", --获得方式
	tale = "淮南冬暖，臘月尚不寒，駕小輦尋花於溪澗。至途中，薄雲稍聚，纖雨滴落油紙傘，回首相望，霧裏亭臺半遮面。細嗅輕風，暗香嫋嫋。雨過初晴，煙收塵斂，終得見，山花爭豔。采一支，攜而歸去，且待明春再相見！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熔戎
RideAttributeCfgs[20404] = 
{	
	id = 20404,        --坐骑模板id 
	name = "熔戎", --坐骑名称
	icon = 9495,  --图标路径
	model = 9442, --模型路径
	sort_id = 335, --坐骑排序显示序号
	desc = "2020年六龍秘寶中獲得", --获得方式
	tale = "巴國有山，終年燃火，有熔岩自地裂處出，所經處金石具焚，寸草不生，唯黑石獨存。山周數裏，皆化作焦土，未有生靈敢近。有一旱螺螄，以黑石築其甲，無懼焦熱，餓啖烈火，渴飲熔漿。欲入火山之地，唯有乘之而行。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 146880,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--辉夜·神
RideAttributeCfgs[20406] = 
{	
	id = 20406,        --坐骑模板id 
	name = "輝夜·神", --坐骑名称
	icon = 9520,  --图标路径
	model = 9517, --模型路径
	sort_id = 336, --坐骑排序显示序号
	desc = "2020年耶誕節排行榜獎勵", --获得方式
	tale = "東極隅有女和月母之國，國中有司月之神，手持白玉彎月符，神通可以調節月亮的運轉。白晝時，月符寂靜無光，到了夜裏，月神便點亮月符，將它送上天空，成為高懸的明月。千萬年時光轉瞬而逝，月亮在月神的管理下準確地運行著，從不曾有疏漏。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--辉夜·圣
RideAttributeCfgs[20407] = 
{	
	id = 20407,        --坐骑模板id 
	name = "輝夜·聖", --坐骑名称
	icon = 9521,  --图标路径
	model = 9467, --模型路径
	sort_id = 337, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "女和月母之國的月神司掌月亮的運行，日復一日地將月符送上天空，化作照亮夜色的明月。有時候，月神也會端坐明月之上，遠遠地望著被月光照耀的大地，遙想是否有人會在不經意間抬頭，將月神的身影與清澈的月色一併映入眼簾。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--披霞
RideAttributeCfgs[20437] = 
{	
	id = 20437,        --坐骑模板id 
	name = "披霞", --坐骑名称
	icon = 9528,  --图标路径
	model = 9499, --模型路径
	sort_id = 338, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "鳳凰棲梧桐，翩翩影自孤。霓翅披煙雲，鳴若擊玉珠。紫氣自東來，白羽拂晨霧。九天伴紅霞，瑤池飲甘露。浴火幾輪回，清心築傲骨。乘風三萬裏，豈在一朝暮！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--畅行
RideAttributeCfgs[20445] = 
{	
	id = 20445,        --坐骑模板id 
	name = "暢行", --坐骑名称
	icon = 9531,  --图标路径
	model = 9468, --模型路径
	sort_id = 339, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "沖啊，沖啊！沒什麼能阻擋我風馳電掣的輪胎！高山？越過去！激流？越過去！這點困難都克服不了，我還怎麼能通過墨子的考驗，到達墨家禁地呢？什麼，你說我跑反了？墨門的方向在另一邊？哎呀，管不了那麼多了，反正地球是圓的，繼續跑下去，就總有一天會到達！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--随风
RideAttributeCfgs[20455] = 
{	
	id = 20455,        --坐骑模板id 
	name = "隨風", --坐骑名称
	icon = 9558,  --图标路径
	model = 9443, --模型路径
	sort_id = 340, --坐骑排序显示序号
	desc = "八寶禮盒中概率獲得", --获得方式
	tale = "每一棵小草都有一個飛天夢。我時常羡慕蒲公英的種子能借著絨毛隨風飄蕩，也偶爾希望自己能有鳥兒般強健的翅膀，可惜我生來只是平凡的青菜。但這又如何？我還有我的滑翔翼和風帆，依舊可以一躍而起，沖向藍天！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冰焰
RideAttributeCfgs[20456] = 
{	
	id = 20456,        --坐骑模板id 
	name = "冰焰", --坐骑名称
	icon = 9559,  --图标路径
	model = 9377, --模型路径
	sort_id = 341, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--归流
RideAttributeCfgs[20476] = 
{	
	id = 20476,        --坐骑模板id 
	name = "歸流", --坐骑名称
	icon = 9563,  --图标路径
	model = 9435, --模型路径
	sort_id = 342, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "有龍自東海而出，征伐四方，百戰不殆，最終歸隱於西方大山深處的萬水之源。傳說此龍的居所乃是一方天池，充盈著它吐息出的濕氣，雲霧繚繞。無數追尋著傳說而來、試圖尋找龍的人都無功而返，只能望山興歎曰：“龍乘是氣，茫洋窮乎玄間！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--领航
RideAttributeCfgs[20477] = 
{	
	id = 20477,        --坐骑模板id 
	name = "領航", --坐骑名称
	icon = 9564,  --图标路径
	model = 9498, --模型路径
	sort_id = 343, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "歡迎乘坐雪國號雪人車！沒錯，拉車的不是馬，也不是雪橇犬，而是真正的雪人哦！它會帶你穿越雪國漫長的永夜，追尋絢麗的極光。不用擔心迷失方向，你看，雪人帽頂上的明燈會照亮前進的方向！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青黛
RideAttributeCfgs[20487] = 
{	
	id = 20487,        --坐骑模板id 
	name = "青黛", --坐骑名称
	icon = 9603,  --图标路径
	model = 9491, --模型路径
	sort_id = 344, --坐骑排序显示序号
	desc = "迎春禮盒中概率獲得", --获得方式
	tale = "蘇南有溪，名曰黛溪，溪中有魚，雅號“青黛”。其頭渾圓，其體雍容，其尾青碧，搖曳而遊，形若孔雀。好魚者趨之若鶩，紛紛捕魚溪中，使其影絕，黛溪亦無人問津。數十載過，有人偶見青黛再現於溪中，三兩成群，生生不息。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--屠苏
RideAttributeCfgs[20488] = 
{	
	id = 20488,        --坐骑模板id 
	name = "屠蘇", --坐骑名称
	icon = 9604,  --图标路径
	model = 9534, --模型路径
	sort_id = 345, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "賣酒啦，香噴噴的屠蘇酒。客官，來杯酒吧，雖然冬日的寒意尚未消退，但回春的柔風正在路上，歸還的燕兒也已啟程。既然春天觸手可及，何不用一杯美酒暖暖身子，舒展窩了一冬的筋骨，準備迎接新一年的到來呢？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--枕泉·神
RideAttributeCfgs[20489] = 
{	
	id = 20489,        --坐骑模板id 
	name = "枕泉·神", --坐骑名称
	icon = 9605,  --图标路径
	model = 9568, --模型路径
	sort_id = 346, --坐骑排序显示序号
	desc = "2021年春節活動排行榜獎勵", --获得方式
	tale = "自古以來，避世隱居者追求的都是枕石漱流、恬淡於浩然之域的生活。然而，有奇人隱者突發異想，欲枕流漱石。於是隱者在泉邊築起茅廬，與汩汩泉聲相伴入眠。隱者在睡夢裏，以泉水為車，以荷花搭棚，金魚做馬，枕流而行。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--枕泉·圣
RideAttributeCfgs[20490] = 
{	
	id = 20490,        --坐骑模板id 
	name = "枕泉·聖", --坐骑名称
	icon = 9606,  --图标路径
	model = 9535, --模型路径
	sort_id = 347, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "有散仙居於泉邊，自號“枕泉居士”，以蓮花金魚為車馬。有善辯者謂其曰：“流非可枕也。”居士答曰：“所以枕流，欲洗其耳。洗耳恭聽，則能虛懷若谷，不致剛愎自用！”善辯者曰：“然也！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--菇子
RideAttributeCfgs[20491] = 
{	
	id = 20491,        --坐骑模板id 
	name = "菇子", --坐骑名称
	icon = 9607,  --图标路径
	model = 9537, --模型路径
	sort_id = 348, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "菇子和她的兄弟姐妹們誕生於一片莽莽蒼蒼的大森林，那裏有成片的、高聳入雲的松樹，還有清澈見底的溪流，是個適合居住的好地方。但菇子認為自己應該擁有更加精彩的菇生，於是她鼓起勇氣，踏上前往遠方的路。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--千钧·神
RideAttributeCfgs[20492] = 
{	
	id = 20492,        --坐骑模板id 
	name = "千鈞·神", --坐骑名称
	icon = 9608,  --图标路径
	model = 9569, --模型路径
	sort_id = 349, --坐骑排序显示序号
	desc = "六周年慶集字活動中獲得", --获得方式
	tale = "啟稟將軍！有農戶傳言稱有一座大山憑空出現在京郊，山上還有一座白色的要塞。屬下正要去查看時，忽然一陣地動山搖，原來那山是一只巨大的赑屃。此等巨獸，恐怕只有請將軍您出手，才能將它才能降服了！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--千钧·圣
RideAttributeCfgs[20493] = 
{	
	id = 20493,        --坐骑模板id 
	name = "千鈞·聖", --坐骑名称
	icon = 9609,  --图标路径
	model = 9536, --模型路径
	sort_id = 350, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "啟稟將軍！京郊背負要塞的巨大赑屃已經被降服，屬下在它背上放好了馬鞍，隨時聽憑將軍調遣，有此物助戰，勝利指日可待！不過這麼一個大家夥，要蓋多大的馬廄才能放得下它和它要吃的草料啊……" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--璇玑
RideAttributeCfgs[20570] = 
{	
	id = 20570,        --坐骑模板id 
	name = "璿璣", --坐骑名称
	icon = 9636,  --图标路径
	model = 9560, --模型路径
	sort_id = 351, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "天有玄機，秘而不言，道生空明處，氣催萬物蘇，春風化雨，芳草萋萋，新綠上枝頭。天有璿璣，飛翼踏雲，威容鎮河山，光輝耀九州，時年方始，星宿歸位，前途正光明。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--芳心
RideAttributeCfgs[20572] = 
{	
	id = 20572,        --坐骑模板id 
	name = "芳心", --坐骑名称
	icon = 9640,  --图标路径
	model = 9567, --模型路径
	sort_id = 352, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "相傳千年之前，天地間遍佈靈氣，奇事多發。一對仙侶在湖邊種下桃樹，豐沛的靈氣和細心的呵護讓桃樹開出晶瑩剔透的花，香飄百里，明豔無雙。傳說被人折下的桃枝會化為飛椅，將折枝者送到愛人面前。正所謂”花開堪折直須折，莫待無花空折枝”！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星衡
RideAttributeCfgs[20580] = 
{	
	id = 20580,        --坐骑模板id 
	name = "星衡", --坐骑名称
	icon = 9683,  --图标路径
	model = 9616, --模型路径
	sort_id = 353, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "海底有一只珍珠貝，每天晚上都會張開貝殼，透過深沉的藍色海水仰望星空。它渴望成為星辰，與其他星星一起玩耍嬉戲、照亮夜空，卻苦惱自己不會飛翔。於是星星告訴它：“海水會倒映星空，從海面上看的時候，你早已和我們同在。”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浣纱
RideAttributeCfgs[20581] = 
{	
	id = 20581,        --坐骑模板id 
	name = "浣紗", --坐骑名称
	icon = 9684,  --图标路径
	model = 9635, --模型路径
	sort_id = 354, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "塞上草場廣茂，自古產良駒，其中數駿馬浣紗最為名貴。其身潔白如雪，其行迅疾如電，身軀厚重堅實，鳴聲清脆嘹亮。策馬賓士，輕盈靈動，馬鬃迎風翻飛，如獵獵旌旗舞於風，又似縹緲輕紗浣於溪，故得其名。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--跃兔
RideAttributeCfgs[20586] = 
{	
	id = 20586,        --坐骑模板id 
	name = "躍兔", --坐骑名称
	icon = 9689,  --图标路径
	model = 9613, --模型路径
	sort_id = 355, --坐骑排序显示序号
	desc = "承天禮匣中概率獲得", --获得方式
	tale = "一天，住在大草原上的粉兔兔問它的好朋友藍兔兔道：“你說，月亮是什麼味道的呢？”藍兔兔認為月亮是胡蘿蔔味的，粉兔兔卻說應該是香草味的。它們為此爭論不休，最終決定結伴而行，去尋找月亮升起的地方，親自嘗一嘗月亮的味道，找出答案。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--哮夜
RideAttributeCfgs[20590] = 
{	
	id = 20590,        --坐骑模板id 
	name = "哮夜", --坐骑名称
	icon = 9711,  --图标路径
	model = 9615, --模型路径
	sort_id = 356, --坐骑排序显示序号
	desc = "2021年復活彩蛋中概率獲得", --获得方式
	tale = "蜀中被幽深的高山密林環繞，難見日月。有時在那不見星光的漆黑之夜，便會聽見林間響起一聲淒厲的狼嚎。緊接著，嚎聲開始從四方傳來，此起彼伏。那是群狼回應狼王的呼喚，向其他生靈宣示著，誰才是此處的主宰。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冥爪
RideAttributeCfgs[20601] = 
{	
	id = 20601,        --坐骑模板id 
	name = "冥爪", --坐骑名称
	icon = 9715,  --图标路径
	model = 9643, --模型路径
	sort_id = 357, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "稟報官老爺，就說那天俺上山拾柴，忽的，林中傳來撼天動地的咆哮，竄出一只青色大老虎。那老虎生得奇怪，鬼魅一般，長了兩只長角，還帶翅膀。俺嚇得扭頭就跑，那大老虎非但沒有追過來，反而還悠哉悠哉吃起地上的草，您說奇怪不奇怪！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--不染
RideAttributeCfgs[20602] = 
{	
	id = 20602,        --坐骑模板id 
	name = "不染", --坐骑名称
	icon = 9716,  --图标路径
	model = 9646, --模型路径
	sort_id = 358, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "各位看好了，今天我將展示我高超的游泳技術。看我完美的入水姿勢——噗嚕嚕！哎呀，我怎麼沉底了？就算我的身體是由泥土塑造，烈火煉成，可我也是出淤泥而不染的一條魚呀，怎麼可能浮不起來呢！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--觅蜜
RideAttributeCfgs[20642] = 
{	
	id = 20642,        --坐骑模板id 
	name = "覓蜜", --坐骑名称
	icon = 9745,  --图标路径
	model = 9644, --模型路径
	sort_id = 359, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "好像有許多人都很怕我，每次看到我就跑得老遠。這樣吧，下次再遇到他們時，我給他們唱一支歌：嗡嗡嗡，嗡嗡嗡，我是忙碌的小蜜蜂~大家看到我請別怕，我可愛，我勤勞~你們遇到我請不要害怕，新鮮的蜜糖請嘗嘗吧~" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--清歌
RideAttributeCfgs[20643] = 
{	
	id = 20643,        --坐骑模板id 
	name = "清歌", --坐骑名称
	icon = 9746,  --图标路径
	model = 9587, --模型路径
	sort_id = 360, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十一賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--指玄
RideAttributeCfgs[20650] = 
{	
	id = 20650,        --坐骑模板id 
	name = "指玄", --坐骑名称
	icon = 9753,  --图标路径
	model = 9645, --模型路径
	sort_id = 361, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "我本天地一野鶴，翩翩逍遙塵世間。浮波東海聽白浪，閑時牧雲南山巔。青羽拂風輕起舞，白衣飄然百事明。如今回首朝天去，不管人間得自由。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1910, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--沉薰
RideAttributeCfgs[20654] = 
{	
	id = 20654,        --坐骑模板id 
	name = "沉薰", --坐骑名称
	icon = 9777,  --图标路径
	model = 9721, --模型路径
	sort_id = 362, --坐骑排序显示序号
	desc = "2021年5到7三月連續簽到獲得", --获得方式
	tale = "我是春日新花的第一抹紅，我是盞中沉香的第一縷韻。我將我的思念凝成金枝，愛慕結為玫瑰，頭戴風霜雨露，披掛日月光華，日日夜夜守候在川流不息的街口，靜靜等待，只為在某個瞬間，你一抬頭，能看見綻放的花朵。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--傲空
RideAttributeCfgs[20655] = 
{	
	id = 20655,        --坐骑模板id 
	name = "傲空", --坐骑名称
	icon = 9779,  --图标路径
	model = 9722, --模型路径
	sort_id = 363, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "曾有巨鷹，青背赤頸，金冠羽衣，氣度超凡。立夏時節，巨鷹棲於昆侖山巔，待到白露則南歸。百姓見之則大喜，以其為吉獸，問之，則曰：“有鵬自遠方來，不亦樂乎？”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--吟溪·神
RideAttributeCfgs[20656] = 
{	
	id = 20656,        --坐骑模板id 
	name = "吟溪·神", --坐骑名称
	icon = 9780,  --图标路径
	model = 9773, --模型路径
	sort_id = 364, --坐骑排序显示序号
	desc = "2021年勞動節排行榜中獲得", --获得方式
	tale = "在西北的大山中有這樣一段傳說：純白的鹿被同族疏遠，上仙垂憐於它，給白鹿開啟靈智。得到機緣的白鹿腳踏金光，自由地飛馳於山林之間，穿梭在古樹與藤蔓中。偶爾的，進山打柴的樵夫能聽見林中傳出清亮的歌聲，遙遠縹緲，那是神秘的白鹿正在輕輕歌唱。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--吟溪·圣
RideAttributeCfgs[20657] = 
{	
	id = 20657,        --坐骑模板id 
	name = "吟溪·聖", --坐骑名称
	icon = 9781,  --图标路径
	model = 9685, --模型路径
	sort_id = 365, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "在西北的大山中有這樣一段傳說：深林中有一只通靈的白鹿，曾經受到上仙指點，頗為神異。但白鹿有靈，從未有人得見其真身，就連每天進山打柴的樵夫們，也只在林間聽見聽見過縹緲輕柔的歌聲。樵夫們都說，那一定是白鹿所唱的歌，畢竟歌聲是如此自由而悠揚。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莫莫
RideAttributeCfgs[20682] = 
{	
	id = 20682,        --坐骑模板id 
	name = "莫莫", --坐骑名称
	icon = 9786,  --图标路径
	model = 9720, --模型路径
	sort_id = 366, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "我是誰？我是穿梭於林海的旅者，也是馳騁於荒原的遊俠。我如熱愛生命一樣熱愛冒險，也如熱愛寶藏一樣熱愛自然。我的故事將流傳於漫山遍野，當有人問起我的名字，我就能背起行囊，瀟灑轉身，酷酷地說上一句：“在下乃飛翔的傳奇，飛鼠莫莫是也！”" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--招喵
RideAttributeCfgs[20683] = 
{	
	id = 20683,        --坐骑模板id 
	name = "招喵", --坐骑名称
	icon = 9787,  --图标路径
	model = 9690, --模型路径
	sort_id = 367, --坐骑排序显示序号
	desc = "紫桑禮盒中概率獲得", --获得方式
	tale = "擔心自己在新年不夠亮眼？擔心與機緣和好運失之交臂？那就叫上本喵吧，保准帶你一飛沖天，成為全中原最高、最帥、最閃耀的靚仔！看到本喵那一丈寬的巨大前爪了嗎？絕對沒有人會忽略它的！這正是“喵爪一揮，財源廣進”！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--瞬影
RideAttributeCfgs[20703] = 
{	
	id = 20703,        --坐骑模板id 
	name = "瞬影", --坐骑名称
	icon = 9811,  --图标路径
	model = 9719, --模型路径
	sort_id = 368, --坐骑排序显示序号
	desc = "逍遙禮盒中概率獲得", --获得方式
	tale = "獅生於野而為王，牛羊畏之，豺豹敬之。有黑獅，其身如幽夜，潛行於重重樹影，凝視於莽蒼眾生，長髯赤目，披掛金甲，伺機而出，疾馳如風，利爪揮落，百發百中。此乃獅中霸者，生而自由，桀驁不羈，獨遊於世間，且戰且行。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--烟魅
RideAttributeCfgs[20707] = 
{	
	id = 20707,        --坐骑模板id 
	name = "煙魅", --坐骑名称
	icon = 9833,  --图标路径
	model = 9750, --模型路径
	sort_id = 369, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "怎麼，盯著我看得如此出神？也罷，畢竟我是出身於塗山氏的狐狸，我族常年隱於深山，無人知曉也正常。不過，可別將我和那些尋常狐妖混為一談，我一爪子就能把它們全都收拾得服服帖帖。什麼，你說想摸摸我的尾巴？我想想……如果你向我供上鮮果，倒也不是不行。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞驰
RideAttributeCfgs[20726] = 
{	
	id = 20726,        --坐骑模板id 
	name = "飛馳", --坐骑名称
	icon = 9839,  --图标路径
	model = 9754, --模型路径
	sort_id = 370, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "呼嚕嚕，呼嚕嚕！聽見了嗎，那是我的引擎在轟鳴，那是我的血液在燃燒！我早已按捺不住飛馳的心，思緒像離弦之箭沖上九霄。賽道在腳下，終點線在前方，我只需要奔跑，不停奔跑！我堅信自己終將超過狂風，躍過流星，貼地飛行，豬突猛進！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--逐波·神
RideAttributeCfgs[20732] = 
{	
	id = 20732,        --坐骑模板id 
	name = "逐波·神", --坐骑名称
	icon = 9864,  --图标路径
	model = 9861, --模型路径
	sort_id = 371, --坐骑排序显示序号
	desc = "2021年端午節排行榜中獲得", --获得方式
	tale = "黃海有河豚，河豚之大，一鍋燉不下。有時候，漁人們會從海中釣起幾丈長的河豚，鼓起來像一只圓潤的大皮球。這時候，漁人們就會給大河豚披金掛彩，慶賀一番。當然，大多時候釣起的都是不足一掌的小魚，還是把它們放生比較好。別忘了溫馨提示：不可以用河豚擦鞋哦！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--逐波·圣
RideAttributeCfgs[20733] = 
{	
	id = 20733,        --坐骑模板id 
	name = "逐波·聖", --坐骑名称
	icon = 9865,  --图标路径
	model = 9791, --模型路径
	sort_id = 372, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "黃海有河豚，河豚之大，可以吃半年。除了吃以外，偶爾也會有漁人突發奇想，給圓鼓鼓的河豚套上鞍，乘著這大氣球一樣的魚漂洋過海，踏浪逐波。至於控制方向的方法，據說是要靠掛著胡蘿蔔的釣竿才行。不過，河豚真的會吃胡蘿蔔嗎？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--御风
RideAttributeCfgs[20742] = 
{	
	id = 20742,        --坐骑模板id 
	name = "禦風", --坐骑名称
	icon = 9872,  --图标路径
	model = 9840, --模型路径
	sort_id = 373, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "所謂俠者為何物？是避世隱居，不問天下事？亦或是寄情詩酒，遊樂山水間？非也。俠乃強者、義者，禦風而行，仗劍天涯，誅四方邪祟，救萬民於水火。故為俠者，急公好義，遇事必求速戰速決，而後拂袖去，深藏功與名！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--炎炎
RideAttributeCfgs[20761] = 
{	
	id = 20761,        --坐骑模板id 
	name = "炎炎", --坐骑名称
	icon = 9892,  --图标路径
	model = 9792, --模型路径
	sort_id = 374, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "炎炎夏日，酷暑難耐？不如跟隨我一起去海邊！陽光、沙灘和海浪環繞，潛入深海，探尋瑰麗的魚兒和珍珠，保准你能將炎熱的煩惱忘得一乾二淨。什麼？放不下一身寶貴的裝備，又怕游泳會浮不上來？別擔心，給你這個游泳圈，帶上它，就算穿著全套鐵甲也不怕沉底！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--问天
RideAttributeCfgs[20776] = 
{	
	id = 20776,        --坐骑模板id 
	name = "問天", --坐骑名称
	icon = 9899,  --图标路径
	model = 9813, --模型路径
	sort_id = 375, --坐骑排序显示序号
	desc = "夏日禮盒中概率獲得", --获得方式
	tale = "天宮謂何處，飛仙枕雲端。夢中瓊樓宇，近在咫尺間。我欲乘風渡，璨然淩霄漢。抬手摘星辰，直上九重天。扣天門，遊天宮，問天河，訪天星，攬日月，踏寰宇，敢與天公試比高！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 167280,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--麟霞
RideAttributeCfgs[20777] = 
{	
	id = 20777,        --坐骑模板id 
	name = "麟霞", --坐骑名称
	icon = 9900,  --图标路径
	model = 9894, --模型路径
	sort_id = 376, --坐骑排序显示序号
	desc = "跨服三國志第一賽季勇毅令兌換", --获得方式
	tale = "天有司霞之獸，其身赤紅，鬃若流火，鳴聲似鶴唳，奔騰如駿馬。其騰飛之時，霞漫千裏，浩浩蕩蕩，蔚為壯觀。常言道“朝霞不出門，晚霞行千裏”，故而其可以觀天相，通雨時，每逢驟雨將至，則示以霞，護佑一方農人商旅。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--桐雀
RideAttributeCfgs[20787] = 
{	
	id = 20787,        --坐骑模板id 
	name = "桐雀", --坐骑名称
	icon = 9921,  --图标路径
	model = 9842, --模型路径
	sort_id = 377, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "哢噠，哢噠，這是我奔跑的腳步聲。梧桐木和玄鐵鑄就了我的身軀，讓我能不眠不休地跑上幾個日夜，雖然天空對我這沉重的軀體來說過於遙遠，但我仍有一顆鳳凰般遨遊世界的心。就讓我用這雙機關腿，載著你去往遠方吧！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--锦湛
RideAttributeCfgs[20788] = 
{	
	id = 20788,        --坐骑模板id 
	name = "錦湛", --坐骑名称
	icon = 9922,  --图标路径
	model = 9812, --模型路径
	sort_id = 378, --坐骑排序显示序号
	desc = "小暑禮盒中概率獲得", --获得方式
	tale = "神仙偶爾也想體驗一把垂釣的樂趣，可惜天上不像凡間，只有清風薄雲，沒有能讓魚兒棲息的水面。這可怎麼辦是好呢？一位聰慧的仙子拿起剪刀，將紅紙裁成鯉魚模樣，吹一口仙氣，放在空中，剪紙乘風而動，栩栩如生。這下在天上終於也能釣魚了！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--醒时
RideAttributeCfgs[20798] = 
{	
	id = 20798,        --坐骑模板id 
	name = "醒時", --坐骑名称
	icon = 9932,  --图标路径
	model = 9841, --模型路径
	sort_id = 379, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "聽，那遠方的天空中，翻滾著一聲聲沉悶的雷鳴，藍色的閃電在潑墨似的烏雲裏若隱若現，蒸騰出白色的水汽。那是沉睡的巨獸打著呼嚕，每一次胸膛起伏的呼吸都撼天動地。這巨獸即將醒來，待到那時，睡獅一醒，吼聲驚四海，雄威撼八方。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--御电
RideAttributeCfgs[20799] = 
{	
	id = 20799,        --坐骑模板id 
	name = "禦電", --坐骑名称
	icon = 9933,  --图标路径
	model = 9749, --模型路径
	sort_id = 380, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十二賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--坠云
RideAttributeCfgs[20817] = 
{	
	id = 20817,        --坐骑模板id 
	name = "墜雲", --坐骑名称
	icon = 9938,  --图标路径
	model = 9868, --模型路径
	sort_id = 381, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "後羿射九日，餘一矢，玄鐵鏃，飛鴻翎。其之一射，似龍騰於野，利箭穿雲，而浩氣如虹。欲使此箭，需萬石弓，為人中英傑可禦。此箭一發，馳騁萬裏，墜似星落九天，鋒芒畢露，銀河相隨，一箭即中，從未有失。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--若竹
RideAttributeCfgs[20820] = 
{	
	id = 20820,        --坐骑模板id 
	name = "若竹", --坐骑名称
	icon = 9959,  --图标路径
	model = 9782, --模型路径
	sort_id = 382, --坐骑排序显示序号
	desc = "天罡禮盒中概率獲得", --获得方式
	tale = "人類都說“宰相肚裏能撐船”，你看看我這胖胖的小肚子，是不是特別有當宰相的潛力？偷偷告訴你，我可是吃竹子長大的，虛懷若竹那說的就是我。我的小肚子裏可不僅能撐船，還能充氣！當它充滿熱騰騰的空氣時，我就會變得輕飄飄，軟綿綿，晃晃悠悠，可以飛天！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--帝星
RideAttributeCfgs[20841] = 
{	
	id = 20841,        --坐骑模板id 
	name = "帝星", --坐骑名称
	icon = 9967,  --图标路径
	model = 9893, --模型路径
	sort_id = 383, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "帝王出行，儀仗甚繁。公卿引路，太僕駕車，將軍護衛，列陣兩旁，大小車輛，並駕齊驅，旌旗如雲，鼓樂如雷。帝王乘車，金輪玉輿，華蓋相擁，富麗堂皇。端坐車上，睨視臣子眾生，坐擁江山社稷，此帝王霸氣，天下無二。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寒魄
RideAttributeCfgs[20842] = 
{	
	id = 20842,        --坐骑模板id 
	name = "寒魄", --坐骑名称
	icon = 9968,  --图标路径
	model = 9873, --模型路径
	sort_id = 384, --坐骑排序显示序号
	desc = "2021年神龍祭祀活動中獲得", --获得方式
	tale = "世人知魚生於水，卻不知我生於冰。能在冰中暢遊的魚，全天下除了我以外，恐怕也很難發現第二個了吧？每當陽光穿過冰層，就會被分散成五顏六色的光芒，層層疊疊像萬花筒般炫目，置身其中，就像是進入夢中世界。可惜這等美景只有我看得到，什麼時候能有個人來陪我一起欣賞呢？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵轩·神
RideAttributeCfgs[20853] = 
{	
	id = 20853,        --坐骑模板id 
	name = "靈軒·神", --坐骑名称
	icon = 9991,  --图标路径
	model = 9988, --模型路径
	sort_id = 385, --坐骑排序显示序号
	desc = "2021七夕節排行榜中獲得", --获得方式
	tale = "號外！號外！城外出現一只來路不明的白貓，每天在城門口小樹林中閒逛。城中居民給這只貓投餵食物，發現它越長越大，最初只有普通貓咪的大小，現在已經超過了一只小馬，而且根本停不下來！有專家稱，大家應該對它持謹慎態度，因為它可能不是一只真正的貓……" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵轩·圣
RideAttributeCfgs[20854] = 
{	
	id = 20854,        --坐骑模板id 
	name = "靈軒·聖", --坐骑名称
	icon = 9992,  --图标路径
	model = 9926, --模型路径
	sort_id = 386, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "號外！號外！城外出現的不明大貓近日被發現翻牆溜進城裏。城中侍衛本來打算將這只大貓捉起來，卻發現它所到之處，老鼠竟被吃得一乾二淨，城中的衛生環境也連日變好。大貓由於捉鼠有功，現已被封為禦前一品捕鼠官，可喜可賀！" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--幻梦
RideAttributeCfgs[20867] = 
{	
	id = 20867,        --坐骑模板id 
	name = "幻夢", --坐骑名称
	icon = 9996,  --图标路径
	model = 9901, --模型路径
	sort_id = 387, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "在人們的夢中有這樣一匹駿馬，頭上長著細長的獨角，穿梭在森林斑駁的光影之間。它來無影，去無蹤，只在最深的沉夢中現身，留下驚鴻般的一瞥，隨即又像破曉時分的晨霧那樣悄然離去。或許會有人用紙折出它的身影，但這究竟是虛妄的幻想，亦或是真實的記憶？" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--忘忧
RideAttributeCfgs[20873] = 
{	
	id = 20873,        --坐骑模板id 
	name = "忘憂", --坐骑名称
	icon = 10018,  --图标路径
	model = 9925, --模型路径
	sort_id = 388, --坐骑排序显示序号
	desc = "2021年藏寶閣活動中獲得", --获得方式
	tale = "路漫漫兮海滄滄，雲帆高掛將起航。幾經驟雨迎風霜，歷盡狂雷勇踏浪。海角天涯是歸處，看盡波濤遇繁花。此行萬裏終不悔，飄搖自在忘憂傷。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--明镜
RideAttributeCfgs[20893] = 
{	
	id = 20893,        --坐骑模板id 
	name = "明鏡", --坐骑名称
	icon = 10022,  --图标路径
	model = 9936, --模型路径
	sort_id = 389, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "以銅為鏡，可以正衣冠。以史為鏡，可以知興替。以人為鏡，可以明得失。故君子佩鏡，非自憐容貌俊朗，而為正其行。撫鏡自省，思忠信，樂於學，明己志，映自身，澄澈通明。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 146880,	--基础生命
		basePhyAtk = 6048, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6048,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--旋忆
RideAttributeCfgs[20897] = 
{	
	id = 20897,        --坐骑模板id 
	name = "旋憶", --坐骑名称
	icon = 10045,  --图标路径
	model = 9939, --模型路径
	sort_id = 390, --坐骑排序显示序号
	desc = "2021年限時回饋活動中獲得", --获得方式
	tale = "青春總是美好而短暫，就像夜色中閃亮的星辰和斑斕的燈火，破曉時便會不見，只留下悠悠記憶。只可惜，人們總是容易忘卻，記憶也隨著時間蒙塵。而我就是那承載記憶的馬兒，在轉瞬即逝的韶光裏，我奔騰，我旋轉，我飛馳，我回還，只為能讓記憶永遠停駐。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青空
RideAttributeCfgs[20898] = 
{	
	id = 20898,        --坐骑模板id 
	name = "青空", --坐骑名称
	icon = 10046,  --图标路径
	model = 9970, --模型路径
	sort_id = 391, --坐骑排序显示序号
	desc = "2021年六龍秘寶中獲得", --获得方式
	tale = "城裏的匠人們最近淘來一張不知出自哪里的設計圖，圖上畫著一個帶翅膀的怪東西，好像叫“飛機”。匠人們按照步驟，用竹片和紙做出這飛機，找了個無風的晴朗日子從城樓頂上放飛，看它雙翼乘風飛翔在青空之上，瀟灑而自由。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 134640,	--基础生命
		basePhyAtk = 6216, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6216,   --法术攻击
		baseMagDef = 1222, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--夜宴·神
RideAttributeCfgs[20905] = 
{	
	id = 20905,        --坐骑模板id 
	name = "夜宴·神", --坐骑名称
	icon = 10052,  --图标路径
	model = 10050, --模型路径
	sort_id = 392, --坐骑排序显示序号
	desc = "2021年中秋節排行榜中獲得", --获得方式
	tale = "月照當空，華燈初上，錦衣夜行而為何？夜宴將至，絲竹才興，廣袖曼舞，珍饈玉盤。月華明珠交映，綾羅錦緞如織，駿馬金車引路，鸞鳳蛟龍相迎。仙宮門開，鐘鼓齊鳴，夜宴將至，靜待四海貴客。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1222,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1222, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--夜宴·圣
RideAttributeCfgs[20906] = 
{	
	id = 20906,        --坐骑模板id 
	name = "夜宴·聖", --坐骑名称
	icon = 10053,  --图标路径
	model = 9969, --模型路径
	sort_id = 393, --坐骑排序显示序号
	desc = "中秋禮盒中概率獲得", --获得方式
	tale = "月照當空，華燈初上，錦衣夜行而為何？夜宴正歡，雅興盎然，觥籌交錯，談笑席間。琴棋書畫鬥豔，詩詞歌賦爭鳴，美酒佳餚不絕，流觴曲水綿延。四海賓客，廣結知己，良辰恒久，此刻夜宴正歡。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1681,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翩跹
RideAttributeCfgs[20915] = 
{	
	id = 20915,        --坐骑模板id 
	name = "翩躚", --坐骑名称
	icon = 10073,  --图标路径
	model = 9997, --模型路径
	sort_id = 394, --坐骑排序显示序号
	desc = "2022年藏寶閣活動中獲得", --获得方式
	tale = "曹丞相近日身體虛乏，心慌氣短，經太醫診斷，此乃富貴病，凡藥不可醫，唯減重輕體可解。遂有能工巧匠贈一浮游飛板，觸動機關，則有七色光芒閃爍，鼓瑟樂聲入耳。隨之舞動，身影翩躚，不出多時即大汗淋漓，身心舒暢。丞相受之，使用數月，身輕體健，再現往日英姿。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 118320,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1604,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--墨魂·神
RideAttributeCfgs[20919] = 
{	
	id = 20919,        --坐骑模板id 
	name = "墨魂·神", --坐骑名称
	icon = 10080,  --图标路径
	model = 10074, --模型路径
	sort_id = 395, --坐骑排序显示序号
	desc = "2022年國力爭霸排行榜獎勵", --获得方式
	tale = "如何制墨？取桐油，焚烈焰，采凝灰，曆千錘，精雕成形，細飾金箔，終成一墨。點染金睛，則化麒麟飛騰。所行之處，潑墨為天地，揮毫作山川，鋪色繪日月，駐筆點鶴仙。海納萬物，沉穩如山者，是為墨魂。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--墨魂·圣
RideAttributeCfgs[20920] = 
{	
	id = 20920,        --坐骑模板id 
	name = "墨魂·聖", --坐骑名称
	icon = 10081,  --图标路径
	model = 9998, --模型路径
	sort_id = 396, --坐骑排序显示序号
	desc = "國力爭霸禮匣中概率獲得", --获得方式
	tale = "如何制墨？取桐油，焚烈焰，采凝灰，曆千錘，精雕成形，細飾金箔，終成一墨。點染金睛，則化麒麟飛騰。所行之處，焦墨作山林，濃墨勾廊簷，清墨結冰雪，淡漠鋪遠山。變化萬千，靈韻天成者，是為墨魂。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--胜雪
RideAttributeCfgs[20921] = 
{	
	id = 20921,        --坐骑模板id 
	name = "勝雪", --坐骑名称
	icon = 10082,  --图标路径
	model = 10024, --模型路径
	sort_id = 397, --坐骑排序显示序号
	desc = "2022年六龍秘寶中獲得", --获得方式
	tale = "那在夜色中賓士而過的是什麼？是潔白無瑕的流光，還是暗香浮動的玉蓮？在月華的映照下，它朦朦朧朧地散發著光輝，輕盈地駛來。纖細的白色藤蔓是它的雕樑畫棟，明亮的黃金飾帶是它的御座冠冕。它似雪，更勝雪，不沾染半點塵埃。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--渡云
RideAttributeCfgs[20955] = 
{	
	id = 20955,        --坐骑模板id 
	name = "渡雲", --坐骑名称
	icon = 10111,  --图标路径
	model = 10023, --模型路径
	sort_id = 398, --坐骑排序显示序号
	desc = "2022年神龍祭祀活動獲得", --获得方式
	tale = "有鷹居於山之巔，翼丈餘，體如獅，羽色赤青，喙鋒爪利，鳴聲如雷，以豺狼為食。巨鷹一躍，騰飛直上，翼下之風，呼嘯不絕，如利劍劈雲海，似金釵劃天穹。攜飛仙，攬明月，渡浮雲，傲長空。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--铃兰
RideAttributeCfgs[20956] = 
{	
	id = 20956,        --坐骑模板id 
	name = "鈴蘭", --坐骑名称
	icon = 10110,  --图标路径
	model = 9934, --模型路径
	sort_id = 399, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十三賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤霄
RideAttributeCfgs[20957] = 
{	
	id = 20957,        --坐骑模板id 
	name = "赤霄", --坐骑名称
	icon = 10116,  --图标路径
	model = 10112, --模型路径
	sort_id = 400, --坐骑排序显示序号
	desc = "跨服三國志第二賽季勇毅令兌換", --获得方式
	tale = "高祖于南山得一鐵劍，長三尺，銘曰\"赤霄\"。其劍通赤，色如瀝血，熾似流火，焚風纏繞。劍中宿一龍魄，故而劍鳴若龍吟，劍風若龍騰，劍光若龍焰。此劍既出，龍形既現，赤光傾天，威懾百里。此帝道之劍，絕世無雙。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--戏浪
RideAttributeCfgs[20974] = 
{	
	id = 20974,        --坐骑模板id 
	name = "戲浪", --坐骑名称
	icon = 10122,  --图标路径
	model = 10019, --模型路径
	sort_id = 401, --坐骑排序显示序号
	desc = "2022年藏寶閣活動中獲得", --获得方式
	tale = "山不在高，有油則靈。水不在深，有槳就行。摩托萬種，唯我兩栖。陸上跑得快，平原萬里行。渡海訪蓬萊，逆流尋蘭汀。可以逐流雲，探辰星。所及之處皆成路，所見之景盡是情。風馳電掣，無所不行。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 955,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 955, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--白瑜
RideAttributeCfgs[20991] = 
{	
	id = 20991,        --坐骑模板id 
	name = "白瑜", --坐骑名称
	icon = 10142,  --图标路径
	model = 10049, --模型路径
	sort_id = 402, --坐骑排序显示序号
	desc = "霜降禮盒中概率獲得", --获得方式
	tale = "在高懸九天的蛾眉月上，清幽寧靜的廣寒宮中，嫦娥是否也會為寂寥而垂淚？淚珠伴著月光落下，澆灌出純白的月之花。在花盛開的新月夜，將它們一朵朵采下、編織、纏繞，做成潔白無瑕的搖籃。這搖籃搖啊，搖啊，飛向月亮的故鄉。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浮生
RideAttributeCfgs[21013] = 
{	
	id = 21013,        --坐骑模板id 
	name = "浮生", --坐骑名称
	icon = 10146,  --图标路径
	model = 10054, --模型路径
	sort_id = 403, --坐骑排序显示序号
	desc = "2022年六龍秘寶中獲得", --获得方式
	tale = "有書生屢試不中，鬱鬱寡歡，遂隻身一人，對月獨酌，借酒澆愁。醉而夢一仙人駕車自天降，邀其共遊。二人乘車，不懼路遠海闊，瞬息萬里，觀歷史興替，覽天下奇景，憂思愁緒，皆拋於腦後。書生正喜，忽而夢醒，歎曰：\"浪蕩浮生飄搖過，若夢空醒兩袖風。\"" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 146880,	--基础生命
		basePhyAtk = 6048, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6048,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--绝色
RideAttributeCfgs[21028] = 
{	
	id = 21028,        --坐骑模板id 
	name = "絕色", --坐骑名称
	icon = 10172,  --图标路径
	model = 10117, --模型路径
	sort_id = 404, --坐骑排序显示序号
	desc = "2022年限時回饋活動中獲得", --获得方式
	tale = "越是冬意漸濃，越讓人期盼早些春暖。待到百草蘇生、百鳥齊唱時，挽著花籃踏青遊玩，衣袂在春風裡翩翩飛舞，撫摸過香草與鮮花，留下陣陣暗香浮動，直至裝滿竹籃，花香欲溢。唯此真國色，開時動京城。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--云岫·神
RideAttributeCfgs[21029] = 
{	
	id = 21029,        --坐骑模板id 
	name = "雲岫·神", --坐骑名称
	icon = 10173,  --图标路径
	model = 10150, --模型路径
	sort_id = 405, --坐骑排序显示序号
	desc = "2022年光棍節貢獻排行榜", --获得方式
	tale = "詩人在深秋乘船，沿江順流而下，遊山玩水。至一淺灘，水面驟然開闊，天朗氣清，遠山似畫卷徐徐展開。詩人畫意大興，欲提筆著墨，卻苦於未備畫紙，遂靈機一動，要來船上的紙燈籠，揮筆作畫於其上。山水秀雅，雲出其間，這正是\"江移林岸微，岩深煙岫複\"。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--云岫·圣
RideAttributeCfgs[21030] = 
{	
	id = 21030,        --坐骑模板id 
	name = "雲岫·聖", --坐骑名称
	icon = 10174,  --图标路径
	model = 10075, --模型路径
	sort_id = 406, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "一個詩人乘船遊玩時，心為美景所觸動，畫意大興，在船家的紙燈籠上作了一幅山水畫。畫中水闊山秀，林翠竹青，只是看著，就讓人仿佛感覺清風拂面，心生平靜的喜悅。這幅畫隨著燈籠和小船，散發著微光飄過萬水千山，遊過激流與淺灘，將這景色帶向遠方。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 761,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--疾风
RideAttributeCfgs[21039] = 
{	
	id = 21039,        --坐骑模板id 
	name = "疾風", --坐骑名称
	icon = 10179,  --图标路径
	model = 10085, --模型路径
	sort_id = 407, --坐骑排序显示序号
	desc = "2022年藏寶閣活動中獲得", --获得方式
	tale = "滴滴。滴滴。車輛經過，請注意讓行。我的車輪快過汗血寶馬，我的引擎轟若電閃雷鳴，我的旅程乃是道路盡頭。不過，就算是我也要吃飯呀，車是鐵，油是鋼，一頓不加餓得慌。只有吃飽了，我才能帶你看山看水，尋幽訪道呀。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--虹铭·神
RideAttributeCfgs[21046] = 
{	
	id = 21046,        --坐骑模板id 
	name = "虹銘·神", --坐骑名称
	icon = 10200,  --图标路径
	model = 10198, --模型路径
	sort_id = 408, --坐骑排序显示序号
	desc = "2022年食力比拼排行榜獎勵", --获得方式
	tale = "漁民們相傳，在遠洋上有一位名聲遠揚的大船長，他駕駛著黑色的帆船，往返於島嶼之間，行蹤莫測。據說這位船長曾在海上斬殺蛟龍，並于龍腹之中獲一寶劍。這把劍浸潤龍血，通身赤紅，溫熱似活物。得之者稱雄五洋，是為號令萬船之證。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,  --法术攻击
		baseMagDef = 1146,  --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--虹铭·圣
RideAttributeCfgs[21047] = 
{	
	id = 21047,        --坐骑模板id 
	name = "虹銘·聖", --坐骑名称
	icon = 10201,  --图标路径
	model = 10119, --模型路径
	sort_id = 409, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "漁民們相傳，在遠洋上有一位名聲遠揚的大船長，他曾在海上斬殺蛟龍，並于龍腹之中獲一寶劍。這把劍作為身份與地位的象徵，被船長秘密埋藏在某個不為人知的島上，只留下記載著隻言片語的密函作為線索，留傳世間。據說，找到這把劍的人，終將成為這廣闊海洋上的霸主。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--幽玄
RideAttributeCfgs[21048] = 
{	
	id = 21048,        --坐骑模板id 
	name = "幽玄", --坐骑名称
	icon = 10202,  --图标路径
	model = 10199, --模型路径
	sort_id = 410, --坐骑排序显示序号
	desc = "2022年感恩節活動中獲得", --获得方式
	tale = "一旅者攀登雪山，不慎失足掉進冰縫，遇到一隻巨獸。這只巨獸以寒冰為胸腹，玄鐵為鱗甲，目光似箭，利爪尖牙，輕而易舉就將旅者叼了起來。就在旅者以為自己即將被巨獸吞吃入腹之際，只見那巨獸輕輕一躍，攀著冰縫嶙峋的崖壁，跳到了地面上，在放下旅者後，悠然離去。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--猎翼
RideAttributeCfgs[21055] = 
{	
	id = 21055,        --坐骑模板id 
	name = "獵翼", --坐骑名称
	icon = 10210,  --图标路径
	model = 10118, --模型路径
	sort_id = 411, --坐骑排序显示序号
	desc = "2022年神龍祭祀活動中獲得", --获得方式
	tale = "豹藏于林，其爪鋒芒如刀，其翼光輝似虹。時而隱形匿跡，輕聲緩步，千里尋蹤，只為一擊致命，時而舒展翼翅，躍上九天，比肩流雲，翱翔俯瞰萬山。此為林中霸者，天際之尊，無慮無憂，如豹添翼。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--绒绒
RideAttributeCfgs[21056] = 
{	
	id = 21056,        --坐骑模板id 
	name = "絨絨", --坐骑名称
	icon = 10211,  --图标路径
	model = 10123, --模型路径
	sort_id = 412, --坐骑排序显示序号
	desc = "2022年神龍祭祀活動中獲得", --获得方式
	tale = "天氣漸漸變冷，我也要抓緊時間儲備過冬糧。蹦蹦，跳跳，到處找找--泥土中未被發現的銀杏果，松針裡悄悄冒出的紅蘑菇，落葉下麵或還許隱藏著胡蘿蔔？只有把我藏食物的小樹洞填得滿滿當當，我才能在下雪的日子裡高枕無憂，呼呼大睡呀。" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--炎焱
RideAttributeCfgs[21078] = 
{	
	id = 21078,        --坐骑模板id 
	name = "炎焱", --坐骑名称
	icon = 10236,  --图标路径
	model = 10143, --模型路径
	sort_id = 413, --坐骑排序显示序号
	desc = "2022年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6552, 	 --物理攻击
		basePhyDef = 840,	 --物理防御
		baseMagAtk = 6552,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--菁翩
RideAttributeCfgs[21095] = 
{	
	id = 21095,        --坐骑模板id 
	name = "菁翩", --坐骑名称
	icon = 10241,  --图标路径
	model = 10149, --模型路径
	sort_id = 414, --坐骑排序显示序号
	desc = "2022年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6888, 	 --物理攻击
		basePhyDef = 840,	 --物理防御
		baseMagAtk = 6888,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--青颂·神
RideAttributeCfgs[21119] = 
{	
	id = 21119,        --坐骑模板id 
	name = "青頌·神", --坐骑名称
	icon = 10263,  --图标路径
	model = 10242, --模型路径
	sort_id = 415, --坐骑排序显示序号
	desc = "2022年耶誕節排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 106080,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青颂·圣
RideAttributeCfgs[21120] = 
{	
	id = 21120,        --坐骑模板id 
	name = "青頌·聖", --坐骑名称
	icon = 10264,  --图标路径
	model = 9960, --模型路径
	sort_id = 416, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 8736, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8736,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--雪媚
RideAttributeCfgs[21135] = 
{	
	id = 21135,        --坐骑模板id 
	name = "雪媚", --坐骑名称
	icon = 10268,  --图标路径
	model = 10148, --模型路径
	sort_id = 417, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤嫣
RideAttributeCfgs[21144] = 
{	
	id = 21144,        --坐骑模板id 
	name = "赤嫣", --坐骑名称
	icon = 10279,  --图标路径
	model = 10177, --模型路径
	sort_id = 418, --坐骑排序显示序号
	desc = "八寶禮盒", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--墨颜
RideAttributeCfgs[21145] = 
{	
	id = 21145,        --坐骑模板id 
	name = "墨顏", --坐骑名称
	icon = 10280,  --图标路径
	model = 10271, --模型路径
	sort_id = 419, --坐骑排序显示序号
	desc = "跨服三國志第三賽季勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--年婳
RideAttributeCfgs[21158] = 
{	
	id = 21158,        --坐骑模板id 
	name = "年嫿", --坐骑名称
	icon = 10288,  --图标路径
	model = 10180, --模型路径
	sort_id = 420, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--乐迪
RideAttributeCfgs[21159] = 
{	
	id = 21159,        --坐骑模板id 
	name = "樂迪", --坐骑名称
	icon = 10289,  --图标路径
	model = 10214, --模型路径
	sort_id = 421, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 89760,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤离
RideAttributeCfgs[21160] = 
{	
	id = 21160,        --坐骑模板id 
	name = "赤離", --坐骑名称
	icon = 10290,  --图标路径
	model = 10270, --模型路径
	sort_id = 422, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十四賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雀羽
RideAttributeCfgs[21184] = 
{	
	id = 21184,        --坐骑模板id 
	name = "雀羽", --坐骑名称
	icon = 10307,  --图标路径
	model = 10213, --模型路径
	sort_id = 423, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--至泽·神
RideAttributeCfgs[21185] = 
{	
	id = 21185,        --坐骑模板id 
	name = "至澤·神", --坐骑名称
	icon = 10308,  --图标路径
	model = 10295, --模型路径
	sort_id = 424, --坐骑排序显示序号
	desc = "2023年春節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--至泽·圣
RideAttributeCfgs[21186] = 
{	
	id = 21186,        --坐骑模板id 
	name = "至澤·聖", --坐骑名称
	icon = 10309,  --图标路径
	model = 10239, --模型路径
	sort_id = 425, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--绯霞
RideAttributeCfgs[21187] = 
{	
	id = 21187,        --坐骑模板id 
	name = "緋霞", --坐骑名称
	icon = 10310,  --图标路径
	model = 10296, --模型路径
	sort_id = 426, --坐骑排序显示序号
	desc = "2023年春節活動獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--疾蜂
RideAttributeCfgs[21188] = 
{	
	id = 21188,        --坐骑模板id 
	name = "疾蜂", --坐骑名称
	icon = 10312,  --图标路径
	model = 10269, --模型路径
	sort_id = 427, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8232, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 8232,   --法术攻击
		baseMagDef = 840, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--犀婳
RideAttributeCfgs[21189] = 
{	
	id = 21189,        --坐骑模板id 
	name = "犀嫿", --坐骑名称
	icon = 10313,  --图标路径
	model = 10265, --模型路径
	sort_id = 428, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 146880,	--基础生命
		basePhyAtk = 6048, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6048,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--乐鼓
RideAttributeCfgs[21240] = 
{	
	id = 21240,        --坐骑模板id 
	name = "樂鼓", --坐骑名称
	icon = 10357,  --图标路径
	model = 10212, --模型路径
	sort_id = 429, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 146880,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 840,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 840, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--沌仓
RideAttributeCfgs[21261] = 
{	
	id = 21261,        --坐骑模板id 
	name = "沌倉", --坐骑名称
	icon = 10376,  --图标路径
	model = 10275, --模型路径
	sort_id = 430, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 840,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 840, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--凌霄
RideAttributeCfgs[21289] = 
{	
	id = 21289,        --坐骑模板id 
	name = "淩霄", --坐骑名称
	icon = 10377,  --图标路径
	model = 10282, --模型路径
	sort_id = 431, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--船夏
RideAttributeCfgs[21295] = 
{	
	id = 21295,        --坐骑模板id 
	name = "船夏", --坐骑名称
	icon = 10402,  --图标路径
	model = 10294, --模型路径
	sort_id = 432, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵迅
RideAttributeCfgs[21296] = 
{	
	id = 21296,        --坐骑模板id 
	name = "靈迅", --坐骑名称
	icon = 10403,  --图标路径
	model = 10316, --模型路径
	sort_id = 433, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--巫遥
RideAttributeCfgs[21302] = 
{	
	id = 21302,        --坐骑模板id 
	name = "巫遙", --坐骑名称
	icon = 10427,  --图标路径
	model = 10281, --模型路径
	sort_id = 434, --坐骑排序显示序号
	desc = "初春禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1222, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--盗羽
RideAttributeCfgs[21305] = 
{	
	id = 21305,        --坐骑模板id 
	name = "盜羽", --坐骑名称
	icon = 10450,  --图标路径
	model = 10351, --模型路径
	sort_id = 435, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--巨居
RideAttributeCfgs[21312] = 
{	
	id = 21312,        --坐骑模板id 
	name = "巨居", --坐骑名称
	icon = 10455,  --图标路径
	model = 10354, --模型路径
	sort_id = 436, --坐骑排序显示序号
	desc = "承天禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--樱夏
RideAttributeCfgs[21317] = 
{	
	id = 21317,        --坐骑模板id 
	name = "櫻夏", --坐骑名称
	icon = 10463,  --图标路径
	model = 10353, --模型路径
	sort_id = 437, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--魅狸
RideAttributeCfgs[21318] = 
{	
	id = 21318,        --坐骑模板id 
	name = "魅狸", --坐骑名称
	icon = 10464,  --图标路径
	model = 10398, --模型路径
	sort_id = 438, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--金玉
RideAttributeCfgs[21319] = 
{	
	id = 21319,        --坐骑模板id 
	name = "金玉", --坐骑名称
	icon = 10465,  --图标路径
	model = 10446, --模型路径
	sort_id = 439, --坐骑排序显示序号
	desc = "跨服三國志第四賽季勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--圣哈
RideAttributeCfgs[21359] = 
{	
	id = 21359,        --坐骑模板id 
	name = "聖哈", --坐骑名称
	icon = 10493,  --图标路径
	model = 10397, --模型路径
	sort_id = 440, --坐骑排序显示序号
	desc = "2023年復活彩蛋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雷默
RideAttributeCfgs[21360] = 
{	
	id = 21360,        --坐骑模板id 
	name = "雷默", --坐骑名称
	icon = 10494,  --图标路径
	model = 10487, --模型路径
	sort_id = 441, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十五賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--旋彩
RideAttributeCfgs[21381] = 
{	
	id = 21381,        --坐骑模板id 
	name = "旋彩", --坐骑名称
	icon = 10496,  --图标路径
	model = 10396, --模型路径
	sort_id = 442, --坐骑排序显示序号
	desc = "2023年5到7三月連續簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 5880, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5880,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凉夏
RideAttributeCfgs[21382] = 
{	
	id = 21382,        --坐骑模板id 
	name = "涼夏", --坐骑名称
	icon = 10498,  --图标路径
	model = 10406, --模型路径
	sort_id = 443, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甲克·神
RideAttributeCfgs[21400] = 
{	
	id = 21400,        --坐骑模板id 
	name = "甲克·神", --坐骑名称
	icon = 10505,  --图标路径
	model = 10501, --模型路径
	sort_id = 444, --坐骑排序显示序号
	desc = "2023年勞動節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甲克·圣
RideAttributeCfgs[21401] = 
{	
	id = 21401,        --坐骑模板id 
	name = "甲克·聖", --坐骑名称
	icon = 10506,  --图标路径
	model = 10428, --模型路径
	sort_id = 445, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--轻风
RideAttributeCfgs[21402] = 
{	
	id = 21402,        --坐骑模板id 
	name = "輕風", --坐骑名称
	icon = 10507,  --图标路径
	model = 10407, --模型路径
	sort_id = 446, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 134640,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--焙烈
RideAttributeCfgs[21411] = 
{	
	id = 21411,        --坐骑模板id 
	name = "焙烈", --坐骑名称
	icon = 10531,  --图标路径
	model = 10425, --模型路径
	sort_id = 447, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 7896, 	 --物理攻击
		basePhyDef = 1222,	 --物理防御
		baseMagAtk = 7896,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--御剑
RideAttributeCfgs[21412] = 
{	
	id = 21412,        --坐骑模板id 
	name = "禦劍", --坐骑名称
	icon = 10532,  --图标路径
	model = 10451, --模型路径
	sort_id = 448, --坐骑排序显示序号
	desc = "紫桑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 138720,	--基础生命
		basePhyAtk = 6888, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6888,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霄云
RideAttributeCfgs[21427] = 
{	
	id = 21427,        --坐骑模板id 
	name = "霄雲", --坐骑名称
	icon = 10555,  --图标路径
	model = 10484, --模型路径
	sort_id = 449, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--妙兮
RideAttributeCfgs[21434] = 
{	
	id = 21434,        --坐骑模板id 
	name = "妙兮", --坐骑名称
	icon = 10577,  --图标路径
	model = 10499, --模型路径
	sort_id = 450, --坐骑排序显示序号
	desc = "六一禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 138720,	--基础生命
		basePhyAtk = 6048, 	 --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 6048,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪陌·神
RideAttributeCfgs[21447] = 
{	
	id = 21447,        --坐骑模板id 
	name = "雪陌·神", --坐骑名称
	icon = 10579,  --图标路径
	model = 10556, --模型路径
	sort_id = 451, --坐骑排序显示序号
	desc = "2023年端午節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪陌·圣
RideAttributeCfgs[21448] = 
{	
	id = 21448,        --坐骑模板id 
	name = "雪陌·聖", --坐骑名称
	icon = 10580,  --图标路径
	model = 10485, --模型路径
	sort_id = 452, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--陌上
RideAttributeCfgs[21457] = 
{	
	id = 21457,        --坐骑模板id 
	name = "陌上", --坐骑名称
	icon = 10586,  --图标路径
	model = 10486, --模型路径
	sort_id = 453, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 9240, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 9240,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--玉姬
RideAttributeCfgs[21471] = 
{	
	id = 21471,        --坐骑模板id 
	name = "玉姬", --坐骑名称
	icon = 10611,  --图标路径
	model = 10502, --模型路径
	sort_id = 454, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--梦霞
RideAttributeCfgs[21490] = 
{	
	id = 21490,        --坐骑模板id 
	name = "夢霞", --坐骑名称
	icon = 10667,  --图标路径
	model = 10525, --模型路径
	sort_id = 455, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6384, 	 --物理攻击
		basePhyDef = 1222,	 --物理防御
		baseMagAtk = 6384,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--喵呜
RideAttributeCfgs[21491] = 
{	
	id = 21491,        --坐骑模板id 
	name = "喵嗚", --坐骑名称
	icon = 10668,  --图标路径
	model = 10535, --模型路径
	sort_id = 456, --坐骑排序显示序号
	desc = "夏日禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 138720,	--基础生命
		basePhyAtk = 6216, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6216,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--花洛
RideAttributeCfgs[21492] = 
{	
	id = 21492,        --坐骑模板id 
	name = "花洛", --坐骑名称
	icon = 10669,  --图标路径
	model = 10536, --模型路径
	sort_id = 457, --坐骑排序显示序号
	desc = "小暑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6552, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6552,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--擎宇
RideAttributeCfgs[21493] = 
{	
	id = 21493,        --坐骑模板id 
	name = "擎宇", --坐骑名称
	icon = 10670,  --图标路径
	model = 10558, --模型路径
	sort_id = 458, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 138720,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 917, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--仔仔
RideAttributeCfgs[21494] = 
{	
	id = 21494,        --坐骑模板id 
	name = "仔仔", --坐骑名称
	icon = 10671,  --图标路径
	model = 10557, --模型路径
	sort_id = 459, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤焰
RideAttributeCfgs[21495] = 
{	
	id = 21495,        --坐骑模板id 
	name = "赤焰", --坐骑名称
	icon = 10672,  --图标路径
	model = 10632, --模型路径
	sort_id = 460, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十六賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--仙梦
RideAttributeCfgs[21496] = 
{	
	id = 21496,        --坐骑模板id 
	name = "仙夢", --坐骑名称
	icon = 10673,  --图标路径
	model = 10629, --模型路径
	sort_id = 461, --坐骑排序显示序号
	desc = "跨服三國志第五賽季勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--盗风
RideAttributeCfgs[21497] = 
{	
	id = 21497,        --坐骑模板id 
	name = "盜風", --坐骑名称
	icon = 10674,  --图标路径
	model = 10581, --模型路径
	sort_id = 462, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--趣夏
RideAttributeCfgs[21563] = 
{	
	id = 21563,        --坐骑模板id 
	name = "趣夏", --坐骑名称
	icon = 10678,  --图标路径
	model = 10590, --模型路径
	sort_id = 463, --坐骑排序显示序号
	desc = "天罡禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--希萌·神
RideAttributeCfgs[21575] = 
{	
	id = 21575,        --坐骑模板id 
	name = "希萌·神", --坐骑名称
	icon = 10683,  --图标路径
	model = 10680, --模型路径
	sort_id = 464, --坐骑排序显示序号
	desc = "2023七夕節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--希萌·圣
RideAttributeCfgs[21576] = 
{	
	id = 21576,        --坐骑模板id 
	name = "希萌·聖", --坐骑名称
	icon = 10684,  --图标路径
	model = 10589, --模型路径
	sort_id = 465, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翠逸
RideAttributeCfgs[21596] = 
{	
	id = 21596,        --坐骑模板id 
	name = "翠逸", --坐骑名称
	icon = 10733,  --图标路径
	model = 10609, --模型路径
	sort_id = 466, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤焱
RideAttributeCfgs[21597] = 
{	
	id = 21597,        --坐骑模板id 
	name = "赤焱", --坐骑名称
	icon = 10734,  --图标路径
	model = 10608, --模型路径
	sort_id = 467, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--子懿
RideAttributeCfgs[21618] = 
{	
	id = 21618,        --坐骑模板id 
	name = "子懿", --坐骑名称
	icon = 10738,  --图标路径
	model = 10630, --模型路径
	sort_id = 468, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蟹堡
RideAttributeCfgs[21622] = 
{	
	id = 21622,        --坐骑模板id 
	name = "蟹堡", --坐骑名称
	icon = 10769,  --图标路径
	model = 10679, --模型路径
	sort_id = 469, --坐骑排序显示序号
	desc = "2023年六龍秘寶中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--二鼠
RideAttributeCfgs[21645] = 
{	
	id = 21645,        --坐骑模板id 
	name = "二鼠", --坐骑名称
	icon = 10772,  --图标路径
	model = 10631, --模型路径
	sort_id = 470, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--负雪·圣
RideAttributeCfgs[21654] = 
{	
	id = 21654,        --坐骑模板id 
	name = "負雪·聖", --坐骑名称
	icon = 10795,  --图标路径
	model = 10681, --模型路径
	sort_id = 471, --坐骑排序显示序号
	desc = "中秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--负雪·神
RideAttributeCfgs[21653] = 
{	
	id = 21653,        --坐骑模板id 
	name = "負雪·神", --坐骑名称
	icon = 10796,  --图标路径
	model = 10797, --模型路径
	sort_id = 472, --坐骑排序显示序号
	desc = "2023中秋節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--极鲜
RideAttributeCfgs[21662] = 
{	
	id = 21662,        --坐骑模板id 
	name = "極鮮", --坐骑名称
	icon = 10799,  --图标路径
	model = 10740, --模型路径
	sort_id = 473, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--乐台
RideAttributeCfgs[21666] = 
{	
	id = 21666,        --坐骑模板id 
	name = "樂台", --坐骑名称
	icon = 10802,  --图标路径
	model = 10739, --模型路径
	sort_id = 474, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度

	},
}

--啸天
RideAttributeCfgs[21668] = 
{	
	id = 21668,        --坐骑模板id 
	name = "嘯天", --坐骑名称
	icon = 10803,  --图标路径
	model = 10702, --模型路径
	sort_id = 475, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 6552, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 6552,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--横舟·神 
RideAttributeCfgs[21688] = 
{	
	id = 21688,        --坐骑模板id 
	name = "橫舟·神", --坐骑名称
	icon = 10806,  --图标路径
	model = 10808, --模型路径
	sort_id = 476, --坐骑排序显示序号
	desc = "2023年國力爭霸排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1299,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--横舟·圣
RideAttributeCfgs[21689] = 
{	
	id = 21689,        --坐骑模板id 
	name = "橫舟·聖", --坐骑名称
	icon = 10805,  --图标路径
	model = 10704, --模型路径
	sort_id = 477, --坐骑排序显示序号
	desc = "國慶禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--衔芝
RideAttributeCfgs[21690] = 
{	
	id = 21690,        --坐骑模板id 
	name = "銜芝", --坐骑名称
	icon = 10807,  --图标路径
	model = 10762, --模型路径
	sort_id = 478, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海灵
RideAttributeCfgs[21695] = 
{	
	id = 21695,        --坐骑模板id 
	name = "海靈", --坐骑名称
	icon = 10821,  --图标路径
	model = 10761, --模型路径
	sort_id = 479, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--暴烈
RideAttributeCfgs[21696] = 
{	
	id = 21696,        --坐骑模板id 
	name = "暴烈", --坐骑名称
	icon = 10822,  --图标路径
	model = 10809, --模型路径
	sort_id = 480, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十七賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蔚梧
RideAttributeCfgs[21724] = 
{	
	id = 21724,        --坐骑模板id 
	name = "蔚梧", --坐骑名称
	icon = 10880,  --图标路径
	model = 10741, --模型路径
	sort_id = 481, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灰切
RideAttributeCfgs[21725] = 
{	
	id = 21725,        --坐骑模板id 
	name = "灰切", --坐骑名称
	icon = 10881,  --图标路径
	model = 10876, --模型路径
	sort_id = 482, --坐骑排序显示序号
	desc = "跨服三國志第六賽季勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--礼鲤
RideAttributeCfgs[21780] = 
{	
	id = 21780,        --坐骑模板id 
	name = "禮鯉", --坐骑名称
	icon = 10883,  --图标路径
	model = 10775, --模型路径
	sort_id = 483, --坐骑排序显示序号
	desc = "茱萸禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 1222, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--招财
RideAttributeCfgs[21781] = 
{	
	id = 21781,        --坐骑模板id 
	name = "招財", --坐骑名称
	icon = 10884,  --图标路径
	model = 10776, --模型路径
	sort_id = 484, --坐骑排序显示序号
	desc = "七周年慶集字活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--杰克
RideAttributeCfgs[21800] = 
{	
	id = 21800,        --坐骑模板id 
	name = "傑克", --坐骑名称
	icon = 10889,  --图标路径
	model = 10886, --模型路径
	sort_id = 485, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--帕姆·神
RideAttributeCfgs[21812] = 
{	
	id = 21812,        --坐骑模板id 
	name = "帕姆·聖", --坐骑名称
	icon = 10894,  --图标路径
	model = 10890, --模型路径
	sort_id = 487, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--帕姆·圣
RideAttributeCfgs[21811] = 
{	
	id = 21811,        --坐骑模板id 
	name = "帕姆·神", --坐骑名称
	icon = 10895, --图标路径
	model = 10891, --模型路径
	sort_id = 486, --坐骑排序显示序号
	desc = "2023年雙十一貢獻排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 1375,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--三愿
RideAttributeCfgs[21816] = 
{	
	id = 21816,        --坐骑模板id 
	name = "三願", --坐骑名称
	icon = 10901,  --图标路径
	model = 10899, --模型路径
	sort_id = 488, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--沃尔
RideAttributeCfgs[21824] = 
{	
	id = 21824,        --坐骑模板id 
	name = "沃爾", --坐骑名称
	icon = 10922,  --图标路径
	model = 10925, --模型路径
	sort_id = 489, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 1070,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 1070, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--阿飞·圣
RideAttributeCfgs[21825] = 
{	
	id = 21825,        --坐骑模板id 
	name = "阿飛·聖", --坐骑名称
	icon = 10923,  --图标路径
	model = 10926, --模型路径
	sort_id = 490, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--阿飞·神
RideAttributeCfgs[21826] = 
{	
	id = 21826,        --坐骑模板id 
	name = "阿飛·神", --坐骑名称
	icon = 10924,  --图标路径
	model = 10927, --模型路径
	sort_id = 491, --坐骑排序显示序号
	desc = "2023年感恩節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 114240,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 1375, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--青风
RideAttributeCfgs[21830] = 
{	
	id = 21830,        --坐骑模板id 
	name = "青風", --坐骑名称
	icon = 10929,  --图标路径
	model = 10826, --模型路径
	sort_id = 492, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--芙蕖
RideAttributeCfgs[21843] = 
{	
	id = 21843,        --坐骑模板id 
	name = "芙蕖", --坐骑名称
	icon = 10949,  --图标路径
	model = 10825, --模型路径
	sort_id = 493, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霸道
RideAttributeCfgs[21844] = 
{	
	id = 21844,        --坐骑模板id 
	name = "霸道", --坐骑名称
	icon = 10950,  --图标路径
	model = 10956, --模型路径
	sort_id = 494, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--骸托
RideAttributeCfgs[21851] = 
{	
	id = 21851,        --坐骑模板id 
	name = "骸托", --坐骑名称
	icon = 10974,  --图标路径
	model = 10975, --模型路径
	sort_id = 495, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--远遥·圣
RideAttributeCfgs[21868] = 
{	
	id = 21868,        --坐骑模板id 
	name = "遠遙·聖", --坐骑名称
	icon = 10979,  --图标路径
	model = 10982, --模型路径
	sort_id = 496, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--远遥·神
RideAttributeCfgs[21869] = 
{	
	id = 21869,        --坐骑模板id 
	name = "遠遙·神", --坐骑名称
	icon = 10980,  --图标路径
	model = 10976, --模型路径
	sort_id = 497, --坐骑排序显示序号
	desc = "2023年耶誕節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--舞空
RideAttributeCfgs[21884] = 
{	
	id = 21884,        --坐骑模板id 
	name = "舞空", --坐骑名称
	icon = 10985,  --图标路径
	model = 10983, --模型路径
	sort_id = 498, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鲸虹
RideAttributeCfgs[21891] = 
{	
	id = 21891,        --坐骑模板id 
	name = "鯨虹", --坐骑名称
	icon = 10992,  --图标路径
	model = 10986, --模型路径
	sort_id = 499, --坐骑排序显示序号
	desc = "迎春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翡瀑
RideAttributeCfgs[21893] = 
{	
	id = 21893,        --坐骑模板id 
	name = "翡瀑", --坐骑名称
	icon = 10993,  --图标路径
	model = 10987, --模型路径
	sort_id = 500, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十八賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--喵车
RideAttributeCfgs[21925] = 
{	
	id = 21925,        --坐骑模板id 
	name = "喵車", --坐骑名称
	icon = 11042,  --图标路径
	model = 11034, --模型路径
	sort_id = 501, --坐骑排序显示序号
	desc = "2024年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甜甜屋
RideAttributeCfgs[21926] = 
{	
	id = 21926,        --坐骑模板id 
	name = "甜甜屋", --坐骑名称
	icon = 11043,  --图标路径
	model = 10902, --模型路径
	sort_id = 502, --坐骑排序显示序号
	desc = "2024年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蝶纤·神
RideAttributeCfgs[21927] = 
{	
	id = 21927,        --坐骑模板id 
	name = "蝶纖·神", --坐骑名称
	icon = 11045,  --图标路径
	model = 11031, --模型路径
	sort_id = 503, --坐骑排序显示序号
	desc = "2024年春節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蝶纤·圣
RideAttributeCfgs[21928] = 
{	
	id = 21928,        --坐骑模板id 
	name = "蝶纖·聖", --坐骑名称
	icon = 11044,  --图标路径
	model = 11030, --模型路径
	sort_id = 504, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 130560,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--弘章
RideAttributeCfgs[21929] = 
{	
	id = 21929,        --坐骑模板id 
	name = "弘章", --坐骑名称
	icon = 11046,  --图标路径
	model = 11033, --模型路径
	sort_id = 505, --坐骑排序显示序号
	desc = "2024年春節活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--钛钨
RideAttributeCfgs[21930] = 
{	
	id = 21930,        --坐骑模板id 
	name = "鈦鎢", --坐骑名称
	icon = 11047,  --图标路径
	model = 11032, --模型路径
	sort_id = 506, --坐骑排序显示序号
	desc = "2024年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--油呦
RideAttributeCfgs[21945] = 
{	
	id = 21945,        --坐骑模板id 
	name = "油呦", --坐骑名称
	icon = 11057,  --图标路径
	model = 11050, --模型路径
	sort_id = 507, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 746,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 746, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蓝宝
RideAttributeCfgs[21946] = 
{	
	id = 21946,        --坐骑模板id 
	name = "藍寶", --坐骑名称
	icon = 11058,  --图标路径
	model = 11051, --模型路径
	sort_id = 508, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--华盖
RideAttributeCfgs[21981] = 
{	
	id = 21981,        --坐骑模板id 
	name = "華蓋", --坐骑名称
	icon = 11065,  --图标路径
	model = 11060, --模型路径
	sort_id = 509, --坐骑排序显示序号
	desc = "2024年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--荷棠
RideAttributeCfgs[22002] = 
{	
	id = 22002,        --坐骑模板id 
	name = "荷棠", --坐骑名称
	icon = 11071,  --图标路径
	model = 11068, --模型路径
	sort_id = 510, --坐骑排序显示序号
	desc = "2024年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------------------



--青龙之耀
RideAttributeCfgs[15721] = 
{	
	id = 15721,        --坐骑模板id 
	name = "青龍之耀", --坐骑名称
	icon = 4585,  --图标路径
	model = 5168, --模型路径
	sort_id = 100, --坐骑排序显示序号
	desc = "2017年遊雲寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玄武之耀
RideAttributeCfgs[15724] = 
{	
	id = 15724,        --坐骑模板id 
	name = "玄武之耀", --坐骑名称
	icon = 4587,  --图标路径
	model = 5171, --模型路径
	sort_id = 101, --坐骑排序显示序号
	desc = "2017年司命寶匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,		 --基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 2292,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 2292, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白虎之耀
RideAttributeCfgs[15722] = 
{	
	id = 15722,        --坐骑模板id 
	name = "白虎之耀", --坐骑名称
	icon = 4586,  --图标路径
	model = 5169, --模型路径
	sort_id = 103, --坐骑排序显示序号
	desc = "四聖獸副本中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 40800,		 --基础生命
		basePhyAtk = 11760, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 11760,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--朱雀之耀
RideAttributeCfgs[15723] = 
{	
	id = 15723,        --坐骑模板id 
	name = "朱雀之耀", --坐骑名称
	icon = 4958,  --图标路径
	model = 5170, --模型路径
	sort_id = 105, --坐骑排序显示序号
	desc = "2017年全民助威排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,		 --基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--陵狩
RideAttributeCfgs[22007] = 
{	
	id = 22007,        --坐骑模板id 
	name = "陵狩", --坐骑名称
	icon = 11077,  --图标路径
	model = 11074, --模型路径
	sort_id = 511, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 7056, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7056,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熊罴
RideAttributeCfgs[22009] = 
{	
	id = 22009,        --坐骑模板id 
	name = "熊羆", --坐骑名称
	icon = 11080,  --图标路径
	model = 11079, --模型路径
	sort_id = 512, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--瞬飞
RideAttributeCfgs[22014] = 
{	
	id = 22014,        --坐骑模板id 
	name = "瞬飛", --坐骑名称
	icon = 11083,  --图标路径
	model = 11081, --模型路径
	sort_id = 513, --坐骑排序显示序号
	desc = "初春禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--糖姜
RideAttributeCfgs[22026] = 
{	
	id = 22026,        --坐骑模板id 
	name = "糖薑", --坐骑名称
	icon = 11089,  --图标路径
	model = 11086, --模型路径
	sort_id = 514, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 840,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 840, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--牧灵
RideAttributeCfgs[22027] = 
{	
	id = 22027,        --坐骑模板id 
	name = "牧靈", --坐骑名称
	icon = 11090,  --图标路径
	model = 11085, --模型路径
	sort_id = 515, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 7392, 	 --物理攻击
		basePhyDef = 993,	 --物理防御
		baseMagAtk = 7392,   --法术攻击
		baseMagDef = 993, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--糖果屋
RideAttributeCfgs[22033] = 
{	
	id = 22033,        --坐骑模板id 
	name = "糖果船", --坐骑名称
	icon = 11126,  --图标路径
	model = 11108, --模型路径
	sort_id = 516, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大福
RideAttributeCfgs[22037] = 
{	
	id = 22037,        --坐骑模板id 
	name = "大福", --坐骑名称
	icon = 11131,  --图标路径
	model = 11127, --模型路径
	sort_id = 517, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--枝红
RideAttributeCfgs[22042] = 
{	
	id = 22042,        --坐骑模板id 
	name = "枝紅", --坐骑名称
	icon = 11139,  --图标路径
	model = 11134, --模型路径
	sort_id = 518, --坐骑排序显示序号
	desc = "復活彩蛋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雷龙
RideAttributeCfgs[22043] = 
{	
	id = 22043,        --坐骑模板id 
	name = "雷龍", --坐骑名称
	icon = 11140,  --图标路径
	model = 11133, --模型路径
	sort_id = 519, --坐骑排序显示序号
	desc = "龍爭虎鬥第二十九賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 61200,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熔山
RideAttributeCfgs[22087] = 
{	
	id = 22087,        --坐骑模板id 
	name = "熔山", --坐骑名称
	icon = 11153,  --图标路径
	model = 11146, --模型路径
	sort_id = 520, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--梅露
RideAttributeCfgs[22088] = 
{	
	id = 22088,        --坐骑模板id 
	name = "梅露", --坐骑名称
	icon = 11154,  --图标路径
	model = 11144, --模型路径
	sort_id = 521, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--机械虎
RideAttributeCfgs[22089] = 
{	
	id = 22089,        --坐骑模板id 
	name = "機械虎", --坐骑名称
	icon = 11155,  --图标路径
	model = 11145, --模型路径
	sort_id = 522, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--铜山
RideAttributeCfgs[22103] = 
{	
	id = 22103,        --坐骑模板id 
	name = "銅山", --坐骑名称
	icon = 11178,  --图标路径
	model = 11176, --模型路径
	sort_id = 523, --坐骑排序显示序号
	desc = "2023年5/6/7月簽到", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--盘盘
RideAttributeCfgs[22104] = 
{	
	id = 22104,        --坐骑模板id 
	name = "盤盤", --坐骑名称
	icon = 11180,  --图标路径
	model = 11175, --模型路径
	sort_id = 524, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--烈炎·圣
RideAttributeCfgs[22109] = 
{	
	id = 22109,        --坐骑模板id 
	name = "烈炎·聖", --坐骑名称
	icon = 11203,  --图标路径
	model = 11197, --模型路径
	sort_id = 525, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--烈炎·神
RideAttributeCfgs[22110] = 
{	
	id = 22110,        --坐骑模板id 
	name = "烈炎·神", --坐骑名称
	icon = 11202,  --图标路径
	model = 11198, --模型路径
	sort_id = 526, --坐骑排序显示序号
	desc = "勞動節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--柏克
RideAttributeCfgs[22111] = 
{	
	id = 22111,        --坐骑模板id 
	name = "柏克", --坐骑名称
	icon = 11204,  --图标路径
	model = 11199, --模型路径
	sort_id = 527, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--风雷
RideAttributeCfgs[22137] = 
{	
	id = 22137,        --坐骑模板id 
	name = "風雷", --坐骑名称
	icon = 11212,  --图标路径
	model = 11206, --模型路径
	sort_id = 528, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--无滑
RideAttributeCfgs[22138] = 
{	
	id = 22138,        --坐骑模板id 
	name = "無滑", --坐骑名称
	icon = 11211,  --图标路径
	model = 11207, --模型路径
	sort_id = 529, --坐骑排序显示序号
	desc = "紫桑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--獴呑
RideAttributeCfgs[22155] = 
{	
	id = 22155,        --坐骑模板id 
	name = "獴呑", --坐骑名称
	icon = 11232,  --图标路径
	model = 11231, --模型路径
	sort_id = 530, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--饮胜
RideAttributeCfgs[22157] = 
{	
	id = 22157,        --坐骑模板id 
	name = "飲勝", --坐骑名称
	icon = 11235,  --图标路径
	model = 11233, --模型路径
	sort_id = 531, --坐骑排序显示序号
	desc = "逍遙禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大禄
RideAttributeCfgs[22160] = 
{	
	id = 22160,        --坐骑模板id 
	name = "大祿", --坐骑名称
	icon = 11256,  --图标路径
	model = 11252, --模型路径
	sort_id = 532, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--瓜艇
RideAttributeCfgs[22176] = 
{	
	id = 22176,        --坐骑模板id 
	name = "瓜艇", --坐骑名称
	icon = 11262,  --图标路径
	model = 11258, --模型路径
	sort_id = 533, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--糯香·圣
RideAttributeCfgs[22213] = 
{	
	id = 22213,        --坐骑模板id 
	name = "糯香·聖", --坐骑名称
	icon = 11287,  --图标路径
	model = 11280, --模型路径
	sort_id = 534, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--糯香·神
RideAttributeCfgs[22214] = 
{	
	id = 22214,        --坐骑模板id 
	name = "糯香·神", --坐骑名称
	icon = 11288,  --图标路径
	model = 11281, --模型路径
	sort_id = 535, --坐骑排序显示序号
	desc = "2023年端午節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--葡西
RideAttributeCfgs[22222] = 
{	
	id = 22222,        --坐骑模板id 
	name = "葡西", --坐骑名称
	icon = 11291,  --图标路径
	model = 11289, --模型路径
	sort_id = 536, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--流苏·圣
RideAttributeCfgs[22225] = 
{	
	id = 22225,        --坐骑模板id 
	name = "流蘇·聖", --坐骑名称
	icon = 11311,  --图标路径
	model = 11308, --模型路径
	sort_id = 537, --坐骑排序显示序号
	desc = "福星寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--流苏·神
RideAttributeCfgs[22226] = 
{	
	id = 22226,        --坐骑模板id 
	name = "流蘇·神", --坐骑名称
	icon = 11312,  --图标路径
	model = 11309, --模型路径
	sort_id = 538, --坐骑排序显示序号
	desc = "福星收錄活動排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--欢乐号
RideAttributeCfgs[22334] = 
{	
	id = 22334,        --坐骑模板id 
	name = "歡樂號", --坐骑名称
	icon = 11318,  --图标路径
	model = 11313, --模型路径
	sort_id = 539, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--战狼
RideAttributeCfgs[22336] = 
{	
	id = 22336,        --坐骑模板id 
	name = "戰狼", --坐骑名称
	icon = 11319,  --图标路径
	model = 11314, --模型路径
	sort_id = 540, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白葫
RideAttributeCfgs[22346] = 
{	
	id = 22346,        --坐骑模板id 
	name = "白葫", --坐骑名称
	icon = 11344,  --图标路径
	model = 11323, --模型路径
	sort_id = 541, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蜗蜗
RideAttributeCfgs[22347] = 
{	
	id = 22347,        --坐骑模板id 
	name = "蝸蝸", --坐骑名称
	icon = 11345,  --图标路径
	model = 11324, --模型路径
	sort_id = 542, --坐骑排序显示序号
	desc = "小暑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--圣洁
RideAttributeCfgs[22351] = 
{	
	id = 22351,        --坐骑模板id 
	name = "聖潔", --坐骑名称
	icon = 11348,  --图标路径
	model = 11346, --模型路径
	sort_id = 543, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

RideAttributeCfgs[22357] = 
{	
	id = 22357,        --坐骑模板id 
	name = "渡渡", --坐骑名称
	icon = 11367,  --图标路径
	model = 11365, --模型路径
	sort_id = 544, --坐骑排序显示序号
	desc = "天罡禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--象钟
RideAttributeCfgs[22373] = 
{	
	id = 22373,        --坐骑模板id 
	name = "象鐘", --坐骑名称
	icon = 11373,  --图标路径
	model = 11368, --模型路径
	sort_id = 545, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白驼
RideAttributeCfgs[22388] = 
{	
	id = 22388,        --坐骑模板id 
	name = "白駝", --坐骑名称
	icon = 11396,  --图标路径
	model = 11391, --模型路径
	sort_id = 546, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--荷亭
RideAttributeCfgs[22389] = 
{	
	id = 22389,        --坐骑模板id 
	name = "荷亭", --坐骑名称
	icon = 11397,  --图标路径
	model = 11392, --模型路径
	sort_id = 547, --坐骑排序显示序号
	desc = "2023年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--不离·圣
RideAttributeCfgs[22413] = 
{	
	id = 22413,        --坐骑模板id 
	name = "不離·聖", --坐骑名称
	icon = 11402,  --图标路径
	model = 11399, --模型路径
	sort_id = 548, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--不离·神
RideAttributeCfgs[22415] = 
{	
	id = 22415,        --坐骑模板id 
	name = "不離·神", --坐骑名称
	icon = 11403,  --图标路径
	model = 11400, --模型路径
	sort_id = 549, --坐骑排序显示序号
	desc = "2023七夕節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海蕴
RideAttributeCfgs[22417] = 
{	
	id = 22417,    --坐骑模板id 
	name = "海蘊", --坐骑名称
	icon = 11407,  --图标路径
	model = 11405, --模型路径
	sort_id = 550, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蓝羽
RideAttributeCfgs[22422] = 
{	
	id = 22422,        --坐骑模板id 
	name = "藍羽", --坐骑名称
	icon = 11426,  --图标路径
	model = 11424, --模型路径
	sort_id = 551, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 110160,	--基础生命
		basePhyAtk = 7224, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7224,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--血翼
RideAttributeCfgs[22425] = 
{	
	id = 22425,        --坐骑模板id 
	name = "血翼", --坐骑名称
	icon = 11433,  --图标路径
	model = 11427, --模型路径
	sort_id = 552, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--肖怨
RideAttributeCfgs[22426] = 
{	
	id = 22426,        --坐骑模板id 
	name = "肖怨", --坐骑名称
	icon = 11432,  --图标路径
	model = 11428, --模型路径
	sort_id = 553, --坐骑排序显示序号
	desc = "2023年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--势至
RideAttributeCfgs[22435] = 
{	
	id = 22435,        --坐骑模板id 
	name = "勢至", --坐骑名称
	icon = 11441,  --图标路径
	model = 11437, --模型路径
	sort_id = 554, --坐骑排序显示序号
	desc = "2023年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冰魂
RideAttributeCfgs[22436] = 
{	
	id = 22436,        --坐骑模板id 
	name = "冰魂", --坐骑名称
	icon = 11442,  --图标路径
	model = 11436, --模型路径
	sort_id = 555, --坐骑排序显示序号
	desc = "2023年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--翻山
RideAttributeCfgs[22444] = 
{	
	id = 22444,        --坐骑模板id 
	name = "翻山", --坐骑名称
	icon = 11462,  --图标路径
	model = 11479, --模型路径
	sort_id = 556, --坐骑排序显示序号
	desc = "桂月禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--种花·圣
RideAttributeCfgs[22452] = 
{	
	id = 22452,        --坐骑模板id 
	name = "種花·聖", --坐骑名称
	icon = 11485,  --图标路径
	model = 11480, --模型路径
	sort_id = 557, --坐骑排序显示序号
	desc = "國力禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--种花·神
RideAttributeCfgs[22453] = 
{	
	id = 22453,        --坐骑模板id 
	name = "種花·神", --坐骑名称
	icon = 11486,  --图标路径
	model = 11481, --模型路径
	sort_id = 558, --坐骑排序显示序号
	desc = "2024年國力爭霸排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--绕梁
RideAttributeCfgs[22454] = 
{	
	id = 22454,    --坐骑模板id 
	name = "繞梁", --坐骑名称
	icon = 11487,  --图标路径
	model = 11460, --模型路径
	sort_id = 559, --坐骑排序显示序号
	desc = "2024年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蒲卢
RideAttributeCfgs[22462] = 
{	
	id = 22462,        --坐骑模板id 
	name = "蒲盧", --坐骑名称
	icon = 11517,  --图标路径
	model = 11489, --模型路径
	sort_id = 560, --坐骑排序显示序号
	desc = "2024年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--恣意
RideAttributeCfgs[22464] = 
{	
	id = 22464,        --坐骑模板id 
	name = "恣意", --坐骑名称
	icon = 11518,  --图标路径
	model = 11490, --模型路径
	sort_id = 561, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十一賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 746,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--童谣
RideAttributeCfgs[22493] = 
{	
	id = 22493,        --坐骑模板id 
	name = "童謠", --坐骑名称
	icon = 11523,  --图标路径
	model = 11521, --模型路径
	sort_id = 562, --坐骑排序显示序号
	desc = "2024年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--闪耀
RideAttributeCfgs[22497] = 
{	
	id = 22497,        --坐骑模板id 
	name = "閃耀", --坐骑名称
	icon = 11543,  --图标路径
	model = 11541, --模型路径
	sort_id = 563, --坐骑排序显示序号
	desc = "茱萸禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--神宓
RideAttributeCfgs[22498] = 
{	
	id = 22498,        --坐骑模板id 
	name = "神宓", --坐骑名称
	icon = 11544,  --图标路径
	model = 11540, --模型路径
	sort_id = 564, --坐骑排序显示序号
	desc = "八周年集字活動", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--沙之王
RideAttributeCfgs[22518] = 
{	
	id = 22518,        --坐骑模板id 
	name = "沙之王", --坐骑名称
	icon = 11548,  --图标路径
	model = 11546, --模型路径
	sort_id = 565, --坐骑排序显示序号
	desc = "2024年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凰尊·圣
RideAttributeCfgs[22537] = 
{	
	id = 22537,        --坐骑模板id 
	name = "凰尊·聖", --坐骑名称
	icon = 11555,  --图标路径
	model = 11551, --模型路径
	sort_id = 566, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凰尊·神
RideAttributeCfgs[22538] = 
{	
	id = 22538,        --坐骑模板id 
	name = "凰尊·神", --坐骑名称
	icon = 11556,  --图标路径
	model = 11552, --模型路径
	sort_id = 567, --坐骑排序显示序号
	desc = "2024年光棍節貢獻排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--地精坦克
RideAttributeCfgs[22547] = 
{	
	id = 22547,        --坐骑模板id 
	name = "地精坦克", --坐骑名称
	icon = 11562,  --图标路径
	model = 11560, --模型路径
	sort_id = 568, --坐骑排序显示序号
	desc = "2024年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--澄澈
RideAttributeCfgs[22594] = 
{	
	id = 22594,        --坐骑模板id 
	name = "澄澈", --坐骑名称
	icon = 11605,  --图标路径
	model = 11604, --模型路径
	sort_id = 569, --坐骑排序显示序号
	desc = "2024年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8064, 	 --物理攻击
		basePhyDef = 917,	 --物理防御
		baseMagAtk = 8064,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--如斯·圣
RideAttributeCfgs[22595] = 
{	
	id = 22595,        --坐骑模板id 
	name = "如斯·聖", --坐骑名称
	icon = 11585,  --图标路径
	model = 11580, --模型路径
	sort_id = 570, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--如斯·神
RideAttributeCfgs[22596] = 
{	
	id = 22596,        --坐骑模板id 
	name = "如斯·神", --坐骑名称
	icon = 11586,  --图标路径
	model = 11581, --模型路径
	sort_id = 571, --坐骑排序显示序号
	desc = "2024年感恩節排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--琴香
RideAttributeCfgs[22605] = 
{	
	id = 22605,        --坐骑模板id 
	name = "琴香", --坐骑名称
	icon = 11584,  --图标路径
	model = 11579, --模型路径
	sort_id = 572, --坐骑排序显示序号
	desc = "2024年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--机械龙
RideAttributeCfgs[22614] = 
{	
	id = 22614,        --坐骑模板id 
	name = "機械龍", --坐骑名称
	icon = 11615,  --图标路径
	model = 11609, --模型路径
	sort_id = 573, --坐骑排序显示序号
	desc = "2024年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蓝颜
RideAttributeCfgs[22615] = 
{	
	id = 22615,        --坐骑模板id 
	name = "藍顏", --坐骑名称
	icon = 11614,  --图标路径
	model = 11610, --模型路径
	sort_id = 574, --坐骑排序显示序号
	desc = "2024年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--无邪
RideAttributeCfgs[22626] = 
{	
	id = 22626,        --坐骑模板id 
	name = "無邪", --坐骑名称
	icon = 11644,  --图标路径
	model = 11642, --模型路径
	sort_id = 575, --坐骑排序显示序号
	desc = "2024年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--菲脂·圣
RideAttributeCfgs[22629] = 
{	
	id = 22629,        --坐骑模板id 
	name = "菲脂·聖", --坐骑名称
	icon = 11664,  --图标路径
	model = 11661, --模型路径
	sort_id = 576, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--菲脂·神
RideAttributeCfgs[22630] = 
{	
	id = 22630,        --坐骑模板id 
	name = "菲脂·神", --坐骑名称
	icon = 11665,  --图标路径
	model = 11662, --模型路径
	sort_id = 577, --坐骑排序显示序号
	desc = "2024年耶誕節排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--朝凤
RideAttributeCfgs[22673] = 
{	
	id = 22673,        --坐骑模板id 
	name = "朝鳳", --坐骑名称
	icon = 11669,  --图标路径
	model = 11666, --模型路径
	sort_id = 578, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--天工
RideAttributeCfgs[22679] = 
{	
	id = 22679,        --坐骑模板id 
	name = "天工", --坐骑名称
	icon = 11696,  --图标路径
	model = 11693, --模型路径
	sort_id = 579, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海力
RideAttributeCfgs[22680] = 
{	
	id = 22680,        --坐骑模板id 
	name = "海力", --坐骑名称
	icon = 11697,  --图标路径
	model = 11694, --模型路径
	sort_id = 580, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十二賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--委屈鸭
RideAttributeCfgs[22707] = 
{	
	id = 22707,        --坐骑模板id 
	name = "委屈鴨", --坐骑名称
	icon = 11674,  --图标路径
	model = 11671, --模型路径
	sort_id = 581, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蓝奇
RideAttributeCfgs[22708] = 
{	
	id = 22708,        --坐骑模板id 
	name = "藍奇", --坐骑名称
	icon = 11704,  --图标路径
	model = 11702, --模型路径
	sort_id = 582, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鱼饥
RideAttributeCfgs[22715] = 
{	
	id = 22715,        --坐骑模板id 
	name = "魚饑", --坐骑名称
	icon = 11712,  --图标路径
	model = 11709, --模型路径
	sort_id = 583, --坐骑排序显示序号
	desc = "八寶禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--九白
RideAttributeCfgs[22721] = 
{	
	id = 22721,        --坐骑模板id 
	name = "九白", --坐骑名称
	icon = 11713,  --图标路径
	model = 11707, --模型路径
	sort_id = 584, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--荷寨
RideAttributeCfgs[22722] = 
{	
	id = 22722,        --坐骑模板id 
	name = "荷寨", --坐骑名称
	icon = 11714,  --图标路径
	model = 11708, --模型路径
	sort_id = 585, --坐骑排序显示序号
	desc = "迎春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--馥郁
RideAttributeCfgs[22732] = 
{	
	id = 22732,        --坐骑模板id 
	name = "馥鬱", --坐骑名称
	icon = 11745,  --图标路径
	model = 11736, --模型路径
	sort_id = 586, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翼行·圣
RideAttributeCfgs[22733] = 
{	
	id = 22733,        --坐骑模板id 
	name = "翼行·聖", --坐骑名称
	icon = 11746,  --图标路径
	model = 11733, --模型路径
	sort_id = 587, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翼行·神
RideAttributeCfgs[22734] = 
{	
	id = 22734,        --坐骑模板id 
	name = "翼行·神", --坐骑名称
	icon = 11747,  --图标路径
	model = 11734, --模型路径
	sort_id = 588, --坐骑排序显示序号
	desc = "2025年春節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--宝泉
RideAttributeCfgs[22735] = 
{	
	id = 22735,        --坐骑模板id 
	name = "寶泉", --坐骑名称
	icon = 11748,  --图标路径
	model = 11735, --模型路径
	sort_id = 589, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--天蝎
RideAttributeCfgs[22794] = 
{	
	id = 22794,        --坐骑模板id 
	name = "天蠍", --坐骑名称
	icon = 11792,  --图标路径
	model = 11790, --模型路径
	sort_id = 590, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--函谷
RideAttributeCfgs[22798] = 
{	
	id = 22798,        --坐骑模板id 
	name = "函穀", --坐骑名称
	icon = 11795,  --图标路径
	model = 11794, --模型路径
	sort_id = 591, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玛卡
RideAttributeCfgs[22801] = 
{	
	id = 22801,        --坐骑模板id 
	name = "瑪卡", --坐骑名称
	icon = 11799,  --图标路径
	model = 11798, --模型路径
	sort_id = 592, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大头
RideAttributeCfgs[22811] = 
{	
	id = 22811,        --坐骑模板id 
	name = "大頭", --坐骑名称
	icon = 11805,  --图标路径
	model = 11802, --模型路径
	sort_id = 593, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星石
RideAttributeCfgs[22844] = 
{	
	id = 22844,        --坐骑模板id 
	name = "星石", --坐骑名称
	icon = 11827,  --图标路径
	model = 11825, --模型路径
	sort_id = 594, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--奇诡
RideAttributeCfgs[22845] = 
{	
	id = 22845,        --坐骑模板id 
	name = "奇詭", --坐骑名称
	icon = 11828,  --图标路径
	model = 11824, --模型路径
	sort_id = 595, --坐骑排序显示序号
	desc = "初春禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--扶摇
RideAttributeCfgs[22864] = 
{	
	id = 22864,        --坐骑模板id 
	name = "扶搖", --坐骑名称
	icon = 11850,  --图标路径
	model = 11848, --模型路径
	sort_id = 596, --坐骑排序显示序号
	desc = "復活彩蛋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--樱飞
RideAttributeCfgs[22865] = 
{	
	id = 22865,        --坐骑模板id 
	name = "櫻飛", --坐骑名称
	icon = 11851,  --图标路径
	model = 11847, --模型路径
	sort_id = 597, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--白幽
RideAttributeCfgs[22875] = 
{	
	id = 22875,        --坐骑模板id 
	name = "白幽", --坐骑名称
	icon = 11863,  --图标路径
	model = 11856, --模型路径
	sort_id = 598, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵澜
RideAttributeCfgs[22876] = 
{	
	id = 22876,        --坐骑模板id 
	name = "靈瀾", --坐骑名称
	icon = 11864,  --图标路径
	model = 11857, --模型路径
	sort_id = 599, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--跃崇
RideAttributeCfgs[22877] = 
{	
	id = 22877,        --坐骑模板id 
	name = "躍崇", --坐骑名称
	icon = 11865,  --图标路径
	model = 11858, --模型路径
	sort_id = 600, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十三賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大亨
RideAttributeCfgs[22910] = 
{	
	id = 22910,        --坐骑模板id 
	name = "大亨", --坐骑名称
	icon = 11891,  --图标路径
	model = 11888, --模型路径
	sort_id = 601, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--厨师鸭
RideAttributeCfgs[22920] = 
{	
	id = 22920,        --坐骑模板id 
	name = "廚師鴨", --坐骑名称
	icon = 11914,  --图标路径
	model = 11910, --模型路径
	sort_id = 602, --坐骑排序显示序号
	desc = "2025年5/6/7月簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 5040, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 5040,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--三柴
RideAttributeCfgs[22921] = 
{	
	id = 22921,        --坐骑模板id 
	name = "三柴", --坐骑名称
	icon = 11915,  --图标路径
	model = 11911, --模型路径
	sort_id = 603, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凤台·圣
RideAttributeCfgs[22941] = 
{	
	id = 22941,        --坐骑模板id 
	name = "鳳台·聖", --坐骑名称
	icon = 11921,  --图标路径
	model = 11918, --模型路径
	sort_id = 604, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凤台·神
RideAttributeCfgs[22942] = 
{	
	id = 22942,        --坐骑模板id 
	name = "鳳台·神", --坐骑名称
	icon = 11922,  --图标路径
	model = 11919, --模型路径
	sort_id = 605, --坐骑排序显示序号
	desc = "2025年勞動節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--橡樽
RideAttributeCfgs[22943] = 
{	
	id = 22943,        --坐骑模板id 
	name = "橡樽", --坐骑名称
	icon = 11923,  --图标路径
	model = 11917, --模型路径
	sort_id = 606, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鹿柏
RideAttributeCfgs[22950] = 
{	
	id = 22950,        --坐骑模板id 
	name = "鹿柏", --坐骑名称
	icon = 11928,  --图标路径
	model = 11926, --模型路径
	sort_id = 607, --坐骑排序显示序号
	desc = "紫桑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--鳄懵
RideAttributeCfgs[22971] = 
{	
	id = 22971,        --坐骑模板id 
	name = "鱷懵", --坐骑名称
	icon = 11933,  --图标路径
	model = 11931, --模型路径
	sort_id = 608, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浮舟
RideAttributeCfgs[22987] = 
{	
	id = 22987,        --坐骑模板id 
	name = "浮舟", --坐骑名称
	icon = 11953,  --图标路径
	model = 11950, --模型路径
	sort_id = 609, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凶象
RideAttributeCfgs[22988] = 
{	
	id = 22988,        --坐骑模板id 
	name = "凶象", --坐骑名称
	icon = 11954,  --图标路径
	model = 11951, --模型路径
	sort_id = 610, --坐骑排序显示序号
	desc = "逍遙禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--汹汹
RideAttributeCfgs[22993] = 
{	
	id = 22993,        --坐骑模板id 
	name = "洶洶", --坐骑名称
	icon = 11975,  --图标路径
	model = 11973, --模型路径
	sort_id = 611, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--超影·圣
RideAttributeCfgs[23004] = 
{	
	id = 23004,        --坐骑模板id 
	name = "超影·聖", --坐骑名称
	icon = 11978,  --图标路径
	model = 11976, --模型路径
	sort_id = 612, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--超影·神
RideAttributeCfgs[23005] = 
{	
	id = 23005,        --坐骑模板id 
	name = "超影·神", --坐骑名称
	icon = 11979,  --图标路径
	model = 11977, --模型路径
	sort_id = 613, --坐骑排序显示序号
	desc = "2025年端午節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--奥黛
RideAttributeCfgs[23012] = 
{	
	id = 23012,        --坐骑模板id 
	name = "奧黛", --坐骑名称
	icon = 11987,  --图标路径
	model = 11982, --模型路径
	sort_id = 614, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飘摇
RideAttributeCfgs[23025] = 
{	
	id = 23025,        --坐骑模板id 
	name = "飄搖", --坐骑名称
	icon = 12011,  --图标路径
	model = 12009, --模型路径
	sort_id = 615, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--聚星
RideAttributeCfgs[23049] = 
{	
	id = 23049,        --坐骑模板id 
	name = "聚星", --坐骑名称
	icon = 12031,  --图标路径
	model = 12028, --模型路径
	sort_id = 616, --坐骑排序显示序号
	desc = "夏日禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 3360, 	 --物理攻击
		basePhyDef = 2674,	 --物理防御
		baseMagAtk = 3360,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狐枫
RideAttributeCfgs[23052] = 
{	
	id = 23052,        --坐骑模板id 
	name = "狐楓", --坐骑名称
	icon = 12036,  --图标路径
	model = 12033, --模型路径
	sort_id = 617, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--混沌
RideAttributeCfgs[23053] = 
{	
	id = 23053,        --坐骑模板id 
	name = "混沌", --坐骑名称
	icon = 12037,  --图标路径
	model = 12034, --模型路径
	sort_id = 618, --坐骑排序显示序号
	desc = "龍爭虎斗第三十四賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--深眠
RideAttributeCfgs[23079] = 
{	
	id = 23079,        --坐骑模板id 
	name = "深眠", --坐骑名称
	icon = 12047,  --图标路径
	model = 12044, --模型路径
	sort_id = 619, --坐骑排序显示序号
	desc = "小暑禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冰噬
RideAttributeCfgs[23080] = 
{	
	id = 23080,        --坐骑模板id 
	name = "冰噬", --坐骑名称
	icon = 12048,  --图标路径
	model = 12043, --模型路径
	sort_id = 620, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--豹富
RideAttributeCfgs[23087] = 
{	
	id = 23087,        --坐骑模板id 
	name = "豹富", --坐骑名称
	icon = 12055,  --图标路径
	model = 12053, --模型路径
	sort_id = 621, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莲舟
RideAttributeCfgs[23090] = 
{	
	id = 23090,        --坐骑模板id 
	name = "蓮舟", --坐骑名称
	icon = 12076,  --图标路径
	model = 12073, --模型路径
	sort_id = 622, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海盗帽
RideAttributeCfgs[23091] = 
{	
	id = 23091,        --坐骑模板id 
	name = "海盜帽", --坐骑名称
	icon = 12077,  --图标路径
	model = 12072, --模型路径
	sort_id = 623, --坐骑排序显示序号
	desc = "天罡禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雅悦
RideAttributeCfgs[23111] = 
{	
	id = 23111,        --坐骑模板id 
	name = "雅悅", --坐骑名称
	icon = 12101,  --图标路径
	model = 12096, --模型路径
	sort_id = 624, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--英胜
RideAttributeCfgs[23112] = 
{	
	id = 23112,        --坐骑模板id 
	name = "英勝", --坐骑名称
	icon = 12102,  --图标路径
	model = 12097, --模型路径
	sort_id = 625, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--长情·圣
RideAttributeCfgs[23140] = 
{	
	id = 23140,        --坐骑模板id 
	name = "長情·圣", --坐骑名称
	icon = 12125,  --图标路径
	model = 12122, --模型路径
	sort_id = 626, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--长情·神
RideAttributeCfgs[23141] = 
{	
	id = 23141,        --坐骑模板id 
	name = "長情·神", --坐骑名称
	icon = 12126,  --图标路径
	model = 12123, --模型路径
	sort_id = 627, --坐骑排序显示序号
	desc = "2025七夕節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--灵眸
RideAttributeCfgs[23151] = 
{	
	id = 23151,        --坐骑模板id 
	name = "靈眸", --坐骑名称
	icon = 12131,  --图标路径
	model = 12129, --模型路径
	sort_id = 628, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--聚宝蛙
RideAttributeCfgs[23155] = 
{	
	id = 23155,        --坐骑模板id 
	name = "聚寶蛙", --坐骑名称
	icon = 12150,  --图标路径
	model = 12148, --模型路径
	sort_id = 629, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--聪敏
RideAttributeCfgs[23158] = 
{	
	id = 23158,        --坐骑模板id 
	name = "聰敏", --坐骑名称
	icon = 12156,  --图标路径
	model = 12153, --模型路径
	sort_id = 630, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--布布
RideAttributeCfgs[23176] = 
{	
	id = 23176,        --坐骑模板id 
	name = "布布", --坐骑名称
	icon = 12159,  --图标路径
	model = 12158, --模型路径
	sort_id = 631, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞引
RideAttributeCfgs[23193] = 
{	
	id = 23193,        --坐骑模板id 
	name = "飛引", --坐骑名称
	icon = 12254,  --图标路径
	model = 12164, --模型路径
	sort_id = 632, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--兰舟·圣
RideAttributeCfgs[23194] = 
{	
	id = 23194,        --坐骑模板id 
	name = "蘭舟·圣", --坐骑名称
	icon = 12170,  --图标路径
	model = 12162, --模型路径
	sort_id = 633, --坐骑排序显示序号
	desc = "中秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--兰舟·神
RideAttributeCfgs[23195] = 
{	
	id = 23195,        --坐骑模板id 
	name = "蘭舟·神", --坐骑名称
	icon = 12169,  --图标路径
	model = 12163, --模型路径
	sort_id = 634, --坐骑排序显示序号
	desc = "2025年中秋節排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--公理
RideAttributeCfgs[23203] = 
{	
	id = 23203,        --坐骑模板id 
	name = "公理", --坐骑名称
	icon = 12210,  --图标路径
	model = 12192, --模型路径
	sort_id = 635, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熊莽·圣
RideAttributeCfgs[23205] = 
{	
	id = 23205,        --坐骑模板id 
	name = "熊莽·聖", --坐骑名称
	icon = 12215,  --图标路径
	model = 12212, --模型路径
	sort_id = 636, --坐骑排序显示序号
	desc = "國慶禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--熊莽·神
RideAttributeCfgs[23206] = 
{	
	id = 23206,        --坐骑模板id 
	name = "熊莽·神", --坐骑名称
	icon = 12216,  --图标路径
	model = 12213, --模型路径
	sort_id = 637, --坐骑排序显示序号
	desc = "2025年國力爭霸排行榜中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--机械豹
RideAttributeCfgs[23211] = 
{	
	id = 23211,        --坐骑模板id 
	name = "機械豹", --坐骑名称
	icon = 12217,  --图标路径
	model = 12211, --模型路径
	sort_id = 638, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海落
RideAttributeCfgs[23223] = 
{	
	id = 23223,        --坐骑模板id 
	name = "海落", --坐骑名称
	icon = 12227,  --图标路径
	model = 12221, --模型路径
	sort_id = 639, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--忠永
RideAttributeCfgs[23224] = 
{	
	id = 23224,        --坐骑模板id 
	name = "忠永", --坐骑名称
	icon = 12228,  --图标路径
	model = 12220, --模型路径
	sort_id = 640, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--正义号
RideAttributeCfgs[23252] = 
{	
	id = 23252,        --坐骑模板id 
	name = "正義號", --坐骑名称
	icon = 12168,  --图标路径
	model = 12252, --模型路径
	sort_id = 641, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--浮鲸
RideAttributeCfgs[23255] = 
{	
	id = 23255,        --坐骑模板id 
	name = "浮鯨", --坐骑名称
	icon = 12276,  --图标路径
	model = 12271, --模型路径
	sort_id = 642, --坐骑排序显示序号
	desc = "茱萸禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--财财
RideAttributeCfgs[23256] = 
{	
	id = 23256,        --坐骑模板id 
	name = "財財", --坐骑名称
	icon = 12277,  --图标路径
	model = 12272, --模型路径
	sort_id = 643, --坐骑排序显示序号
	desc = "九周年慶集字活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--掣电
RideAttributeCfgs[23257] = 
{	
	id = 23257,        --坐骑模板id 
	name = "掣電", --坐骑名称
	icon = 12278,  --图标路径
	model = 12273, --模型路径
	sort_id = 644, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狸狸
RideAttributeCfgs[23284] = 
{	
	id = 23284,        --坐骑模板id 
	name = "狸狸", --坐骑名称
	icon = 12285,  --图标路径
	model = 12284, --模型路径
	sort_id = 645, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--天河·圣
RideAttributeCfgs[23301] = 
{	
	id = 23301,        --坐骑模板id 
	name = "天河·聖", --坐骑名称
	icon = 12291,  --图标路径
	model = 12288, --模型路径
	sort_id = 646, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--天河·神
RideAttributeCfgs[23302] = 
{	
	id = 23302,        --坐骑模板id 
	name = "天河·神", --坐骑名称
	icon = 12292,  --图标路径
	model = 12289, --模型路径
	sort_id = 647, --坐骑排序显示序号
	desc = "2025年雙十一貢獻排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--卡丁
RideAttributeCfgs[23314] = 
{	
	id = 23314,        --坐骑模板id 
	name = "卡丁", --坐骑名称
	icon = 12298,  --图标路径
	model = 12295, --模型路径
	sort_id = 648, --坐骑排序显示序号
	desc = "2025年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--风灵
RideAttributeCfgs[23315] = 
{	
	id = 23315,        --坐骑模板id 
	name = "風靈", --坐骑名称
	icon = 12299,  --图标路径
	model = 12294, --模型路径
	sort_id = 649, --坐骑排序显示序号
	desc = "2025年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--万碗
RideAttributeCfgs[23331] = 
{	
	id = 23331,        --坐骑模板id 
	name = "萬碗", --坐骑名称
	icon = 12322,  --图标路径
	model = 12320, --模型路径
	sort_id = 650, --坐骑排序显示序号
	desc = "順天禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙城·圣
RideAttributeCfgs[23335] = 
{	
	id = 23335,        --坐骑模板id 
	name = "龍城·圣", --坐骑名称
	icon = 12341,  --图标路径
	model = 12339, --模型路径
	sort_id = 651, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙城·神
RideAttributeCfgs[23336] = 
{	
	id = 23336,        --坐骑模板id 
	name = "龍城·神", --坐骑名称
	icon = 12342,  --图标路径
	model = 12340, --模型路径
	sort_id = 652, --坐骑排序显示序号
	desc = "2025年感恩節排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--饮月
RideAttributeCfgs[23342] = 
{	
	id = 23342,        --坐骑模板id 
	name = "飲月", --坐骑名称
	icon = 12348,  --图标路径
	model = 12344, --模型路径
	sort_id = 653, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--疏雪
RideAttributeCfgs[23343] = 
{	
	id = 23343,        --坐骑模板id 
	name = "疏雪", --坐骑名称
	icon = 12349,  --图标路径
	model = 12343, --模型路径
	sort_id = 654, --坐骑排序显示序号
	desc = "2025年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--探星
RideAttributeCfgs[23360] = 
{	
	id = 23360,        --坐骑模板id 
	name = "探星", --坐骑名称
	icon = 12372,  --图标路径
	model = 12369, --模型路径
	sort_id = 655, --坐骑排序显示序号
	desc = "2025年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--千里·圣
RideAttributeCfgs[23362] = 
{	
	id = 23362,        --坐骑模板id 
	name = "千里·聖", --坐骑名称
	icon = 12394,  --图标路径
	model = 12391, --模型路径
	sort_id = 656, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--千里·神
RideAttributeCfgs[23363] = 
{	
	id = 23363,        --坐骑模板id 
	name = "千里·神", --坐骑名称
	icon = 12395,  --图标路径
	model = 12392, --模型路径
	sort_id = 657, --坐骑排序显示序号
	desc = "2025年聖誕節排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--文殊
RideAttributeCfgs[23389] = 
{	
	id = 23389,        --坐骑模板id 
	name = "文殊", --坐骑名称
	icon = 12399,  --图标路径
	model = 12396, --模型路径
	sort_id = 658, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--镇海
RideAttributeCfgs[23395] = 
{	
	id = 23395,        --坐骑模板id 
	name = "鎮海", --坐骑名称
	icon = 12404,  --图标路径
	model = 12403, --模型路径
	sort_id = 659, --坐骑排序显示序号
	desc = "八寶禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪祈
RideAttributeCfgs[23404] = 
{	
	id = 23404,        --坐骑模板id 
	name = "雪祈", --坐骑名称
	icon = 12412,  --图标路径
	model = 12406, --模型路径
	sort_id = 660, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蛮驰
RideAttributeCfgs[23405] = 
{	
	id = 23405,        --坐骑模板id 
	name = "蠻馳", --坐骑名称
	icon = 12411,  --图标路径
	model = 12405, --模型路径
	sort_id = 661, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--广厦
RideAttributeCfgs[23406] = 
{	
	id = 23406,        --坐骑模板id 
	name = "廣廈", --坐骑名称
	icon = 12413,  --图标路径
	model = 12407, --模型路径
	sort_id = 662, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十六賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--晶异虫
RideAttributeCfgs[23430] = 
{	
	id = 23430,        --坐骑模板id 
	name = "晶異蟲", --坐骑名称
	icon = 12442,  --图标路径
	model = 12437, --模型路径
	sort_id = 663, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--潜夜
RideAttributeCfgs[23431] = 
{	
	id = 23431,        --坐骑模板id 
	name = "潛夜", --坐骑名称
	icon = 12443,  --图标路径
	model = 12438, --模型路径
	sort_id = 664, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--勇哈·圣
RideAttributeCfgs[23440] = 
{	
	id = 23440,        --坐骑模板id 
	name = "勇哈·聖", --坐骑名称
	icon = 12471,  --图标路径
	model = 12463, --模型路径
	sort_id = 665, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--勇哈·神
RideAttributeCfgs[23441] = 
{	
	id = 23441,        --坐骑模板id 
	name = "勇哈·神", --坐骑名称
	icon = 12472,  --图标路径
	model = 12464, --模型路径
	sort_id = 666, --坐骑排序显示序号
	desc = "2026年春節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甜牛
RideAttributeCfgs[23442] = 
{	
	id = 23442,        --坐骑模板id 
	name = "甜牛", --坐骑名称
	icon = 12473,  --图标路径
	model = 12465, --模型路径
	sort_id = 667, --坐骑排序显示序号
	desc = "2026年春節活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蝠烈
RideAttributeCfgs[23443] = 
{	
	id = 23443,        --坐骑模板id 
	name = "蝠烈", --坐骑名称
	icon = 12475,  --图标路径
	model = 12462, --模型路径
	sort_id = 668, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 81600,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1528, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--石乐乐
RideAttributeCfgs[23444] = 
{	
	id = 23444,        --坐骑模板id 
	name = "石樂樂", --坐骑名称
	icon = 12476,  --图标路径
	model = 12466, --模型路径
	sort_id = 669, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞石
RideAttributeCfgs[23432] = 
{	
	id = 23432,        --坐骑模板id 
	name = "飛石", --坐骑名称
	icon = 12483,  --图标路径
	model = 12480, --模型路径
	sort_id = 670, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--寻蜜
RideAttributeCfgs[23483] = 
{	
	id = 23483,        --坐骑模板id 
	name = "尋蜜", --坐骑名称
	icon = 12504,  --图标路径
	model = 12502, --模型路径
	sort_id = 671, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--折冠
RideAttributeCfgs[23501] = 
{	
	id = 23501,        --坐骑模板id 
	name = "折冠", --坐骑名称
	icon = 12509,  --图标路径
	model = 12508, --模型路径
	sort_id = 672, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--伏土
RideAttributeCfgs[23506] = 
{	
	id = 23506,        --坐骑模板id 
	name = "伏土", --坐骑名称
	icon = 12513,  --图标路径
	model = 12512, --模型路径
	sort_id = 673, --坐骑排序显示序号
	desc = "初春禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--勇气号
RideAttributeCfgs[23514] = 
{	
	id = 23514,        --坐骑模板id 
	name = "勇氣號", --坐骑名称
	icon = 12518,  --图标路径
	model = 12537, --模型路径
	sort_id = 674, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--棘刺
RideAttributeCfgs[23516] = 
{	
	id = 23516,        --坐骑模板id 
	name = "棘刺", --坐骑名称
	icon = 12541,  --图标路径
	model = 12539, --模型路径
	sort_id = 675, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--通灵
RideAttributeCfgs[23517] = 
{	
	id = 23517,        --坐骑模板id 
	name = "通靈", --坐骑名称
	icon = 12542,  --图标路径
	model = 12538, --模型路径
	sort_id = 676, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--摧城
RideAttributeCfgs[23524] = 
{	
	id = 23524,        --坐骑模板id 
	name = "摧城", --坐骑名称
	icon = 12563,  --图标路径
	model = 12561, --模型路径
	sort_id = 677, --坐骑排序显示序号
	desc = "承天禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--摩罗
RideAttributeCfgs[23528] = 
{	
	id = 23528,        --坐骑模板id 
	name = "摩羅", --坐骑名称
	icon = 12567,  --图标路径
	model = 12564, --模型路径
	sort_id = 678, --坐骑排序显示序号
	desc = "綠柳禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--山雀
RideAttributeCfgs[23530] = 
{	
	id = 23530,        --坐骑模板id 
	name = "山雀", --坐骑名称
	icon = 12568,  --图标路径
	model = 12565, --模型路径
	sort_id = 679, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十七賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--恶王座
RideAttributeCfgs[23554] = 
{	
	id = 23554,        --坐骑模板id 
	name = "惡王座", --坐骑名称
	icon = 12578,  --图标路径
	model = 12574, --模型路径
	sort_id = 680, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海驰
RideAttributeCfgs[23555] = 
{	
	id = 23555,        --坐骑模板id 
	name = "海馳", --坐骑名称
	icon = 12579,  --图标路径
	model = 12575, --模型路径
	sort_id = 681, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--探索号
RideAttributeCfgs[23562] = 
{	
	id = 23562,        --坐骑模板id 
	name = "探索號", --坐骑名称
	icon = 12587,  --图标路径
	model = 12585, --模型路径
	sort_id = 682, --坐骑排序显示序号
	desc = "連續簽到獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--金风
RideAttributeCfgs[23563] = 
{	
	id = 23563,        --坐骑模板id 
	name = "金風", --坐骑名称
	icon = 12589,  --图标路径
	model = 12584, --模型路径
	sort_id = 683, --坐骑排序显示序号
	desc = "復活彩蛋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--饮风·圣
RideAttributeCfgs[23584] = 
{	
	id = 23584,        --坐骑模板id 
	name = "飲風·聖", --坐骑名称
	icon = 12614,  --图标路径
	model = 12607, --模型路径
	sort_id = 684, --坐骑排序显示序号
	desc = "光榮禮袋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--饮风·神
RideAttributeCfgs[23585] = 
{	
	id = 23585,        --坐骑模板id 
	name = "飲風·神", --坐骑名称
	icon = 12615,  --图标路径
	model = 12608, --模型路径
	sort_id = 685, --坐骑排序显示序号
	desc = "2026年勞動節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--伐木
RideAttributeCfgs[23586] = 
{	
	id = 23586,        --坐骑模板id 
	name = "伐木", --坐骑名称
	icon = 12613,  --图标路径
	model = 12606, --模型路径
	sort_id = 686, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--影翼
RideAttributeCfgs[23596] = 
{	
	id = 23596,        --坐骑模板id 
	name = "影翼", --坐骑名称
	icon = 12624,  --图标路径
	model = 12621, --模型路径
	sort_id = 687, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--摩云
RideAttributeCfgs[23597] = 
{	
	id = 23597,        --坐骑模板id 
	name = "摩雲", --坐骑名称
	icon = 12625,  --图标路径
	model = 12620, --模型路径
	sort_id = 688, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--振翅
RideAttributeCfgs[24234] = 
{	
	id = 24234,        --坐骑模板id 
	name = "振翅", --坐骑名称
	icon = 12648,  --图标路径
	model = 12646, --模型路径
	sort_id = 689, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--微微暖
RideAttributeCfgs[24237] = 
{	
	id = 24237,        --坐骑模板id 
	name = "微微暖", --坐骑名称
	icon = 12667,  --图标路径
	model = 12665, --模型路径
	sort_id = 690, --坐骑排序显示序号
	desc = "逍遙禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--唤灵·圣
RideAttributeCfgs[24241] = 
{	
	id = 24241,        --坐骑模板id 
	name = "喚靈·聖", --坐骑名称
	icon = 12687,  --图标路径
	model = 12684, --模型路径
	sort_id = 691, --坐骑排序显示序号
	desc = "端午寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--唤灵·神
RideAttributeCfgs[24242] = 
{	
	id = 24242,        --坐骑模板id 
	name = "喚靈·神", --坐骑名称
	icon = 12688,  --图标路径
	model = 12685, --模型路径
	sort_id = 692, --坐骑排序显示序号
	desc = "2026年端午節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霖柯
RideAttributeCfgs[24257] = 
{	
	id = 24257,        --坐骑模板id 
	name = "霖柯", --坐骑名称
	icon = 12933,  --图标路径
	model = 12929, --模型路径
	sort_id = 693, --坐骑排序显示序号
	desc = "2026年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--凝心	
RideAttributeCfgs[24267] = 
{	
	id = 24267,        --坐骑模板id 
	name = "凝心", --坐骑名称
	icon = 12955,  --图标路径
	model = 12953, --模型路径
	sort_id = 694, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--追月
RideAttributeCfgs[24290] = 
{	
	id = 24290,        --坐骑模板id 
	name = "追月", --坐骑名称
	icon = 12962,  --图标路径
	model = 12960, --模型路径
	sort_id = 695, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--龙宫
RideAttributeCfgs[24308] = 
{	
	id = 24308,        --坐骑模板id 
	name = "龍宮", --坐骑名称
	icon = 12988,  --图标路径
	model = 12985, --模型路径
	sort_id = 696, --坐骑排序显示序号
	desc = "夏日禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--栖梧·圣
RideAttributeCfgs[24338] = 
{	
	id = 24338,        --坐骑模板id 
	name = "棲梧·聖", --坐骑名称
	icon = 13011,  --图标路径
	model = 13006, --模型路径
	sort_id = 697, --坐骑排序显示序号
	desc = "福星寶盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--栖梧·神
RideAttributeCfgs[24339] = 
{	
	id = 24339,        --坐骑模板id 
	name = "棲梧·神", --坐骑名称
	icon = 13012,  --图标路径
	model = 13007, --模型路径
	sort_id = 698, --坐骑排序显示序号
	desc = "2026年福星收錄活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--独行
RideAttributeCfgs[24340] = 
{	
	id = 24340,        --坐骑模板id 
	name = "獨行", --坐骑名称
	icon = 13013,  --图标路径
	model = 13008, --模型路径
	sort_id = 699, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十八賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--烟渺
RideAttributeCfgs[24369] = 
{	
	id = 24369,        --坐骑模板id 
	name = "煙渺", --坐骑名称
	icon = 13023,  --图标路径
	model = 13019, --模型路径
	sort_id = 700, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--玉衡	
RideAttributeCfgs[24370] = 
{	
	id = 24370,        --坐骑模板id 
	name = "玉衡", --坐骑名称
	icon = 13024,  --图标路径
	model = 13020, --模型路径
	sort_id = 701, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--舞水
RideAttributeCfgs[24378] = 
{	
	id = 24378,        --坐骑模板id 
	name = "舞水", --坐骑名称
	icon = 13049,  --图标路径
	model = 13045, --模型路径
	sort_id = 702, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--渊火
RideAttributeCfgs[24379] = 
{	
	id = 24379,        --坐骑模板id 
	name = "淵火", --坐骑名称
	icon = 13050,  --图标路径
	model = 13046, --模型路径
	sort_id = 703, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--转转
RideAttributeCfgs[24392] = 
{	
	id = 24392,        --坐骑模板id 
	name = "轉轉", --坐骑名称
	icon = 13073,  --图标路径
	model = 13070, --模型路径
	sort_id = 704, --坐骑排序显示序号
	desc = "天罡禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--游芯
RideAttributeCfgs[24395] = 
{	
	id = 24395,        --坐骑模板id 
	name = "遊芯", --坐骑名称
	icon = 13095,  --图标路径
	model = 13094, --模型路径
	sort_id = 705, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--晶槎
RideAttributeCfgs[24412] = 
{	
	id = 24412,        --坐骑模板id 
	name = "晶槎", --坐骑名称
	icon = 13101,  --图标路径
	model = 13098, --模型路径
	sort_id = 706, --坐骑排序显示序号
	desc = "2026年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--戏彩
RideAttributeCfgs[24413] = 
{	
	id = 24413,        --坐骑模板id 
	name = "戲彩", --坐骑名称
	icon = 13102,  --图标路径
	model = 13099, --模型路径
	sort_id = 707, --坐骑排序显示序号
	desc = "2026年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--喵喵饭
RideAttributeCfgs[24491] = 
{	
	id = 24491,        --坐骑模板id 
	name = "喵喵飯", --坐骑名称
	icon = 13260,  --图标路径
	model = 13279, --模型路径
	sort_id = 708, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--机械猪
RideAttributeCfgs[24711] = 
{	
	id = 24711,        --坐骑模板id 
	name = "機械豬", --坐骑名称
	icon = 13286,  --图标路径
	model = 13281, --模型路径
	sort_id = 709, --坐骑排序显示序号
	desc = "望秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--墨影·圣
RideAttributeCfgs[24727] = 
{	
	id = 24727,        --坐骑模板id 
	name = "墨影·聖", --坐骑名称
	icon = 13308,  --图标路径
	model = 13305, --模型路径
	sort_id = 710, --坐骑排序显示序号
	desc = "七夕禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--墨影·神
RideAttributeCfgs[24728] = 
{	
	id = 24728,        --坐骑模板id 
	name = "墨影·神", --坐骑名称
	icon = 13309,  --图标路径
	model = 13306, --模型路径
	sort_id = 711, --坐骑排序显示序号
	desc = "2026年七夕活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--诡愿
RideAttributeCfgs[24740] = 
{	
	id = 24740,        --坐骑模板id 
	name = "詭願", --坐骑名称
	icon = 13350,  --图标路径
	model = 13346, --模型路径
	sort_id = 712, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--饭宝
RideAttributeCfgs[24741] = 
{	
	id = 24741,        --坐骑模板id 
	name = "飯寶", --坐骑名称
	icon = 13351,  --图标路径
	model = 13347, --模型路径
	sort_id = 713, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甜品车
RideAttributeCfgs[24758] = 
{	
	id = 24758,        --坐骑模板id 
	name = "甜品車", --坐骑名称
	icon = 13427,  --图标路径
	model = 13424, --模型路径
	sort_id = 714, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大蜂
RideAttributeCfgs[24778] = 
{	
	id = 24778,        --坐骑模板id 
	name = "大蜂", --坐骑名称
	icon = 13451,  --图标路径
	model = 13447, --模型路径
	sort_id = 715, --坐骑排序显示序号
	desc = "桂月禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--阿叽
RideAttributeCfgs[24779] = 
{	
	id = 24779,        --坐骑模板id 
	name = "阿嘰", --坐骑名称
	icon = 13452,  --图标路径
	model = 13448, --模型路径
	sort_id = 716, --坐骑排序显示序号
	desc = "龍爭虎鬥第三十九賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星轿·圣
RideAttributeCfgs[24804] = 
{	
	id = 24804,        --坐骑模板id 
	name = "星轎·聖", --坐骑名称
	icon = 13481,  --图标路径
	model = 13475, --模型路径
	sort_id = 717, --坐骑排序显示序号
	desc = "國慶禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--星轿·神
RideAttributeCfgs[24805] = 
{	
	id = 24805,        --坐骑模板id 
	name = "星轎·神", --坐骑名称
	icon = 13482,  --图标路径
	model = 13476, --模型路径
	sort_id = 718, --坐骑排序显示序号
	desc = "2026年國力爭霸活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--棱星·圣
RideAttributeCfgs[24806] = 
{	
	id = 24806,        --坐骑模板id 
	name = "棱星·聖", --坐骑名称
	icon = 13483,  --图标路径
	model = 13473, --模型路径
	sort_id = 719, --坐骑排序显示序号
	desc = "中秋禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--棱星·神
RideAttributeCfgs[24807] = 
{	
	id = 24807,        --坐骑模板id 
	name = "棱星·神", --坐骑名称
	icon = 13484,  --图标路径
	model = 13474, --模型路径
	sort_id = 720, --坐骑排序显示序号
	desc = "2026年中秋活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--魔法兔
RideAttributeCfgs[24808] = 
{	
	id = 24808,        --坐骑模板id 
	name = "魔法兔", --坐骑名称
	icon = 13485,  --图标路径
	model = 13472, --模型路径
	sort_id = 721, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--金狮
RideAttributeCfgs[24836] = 
{	
	id = 24836,        --坐骑模板id 
	name = "金獅", --坐骑名称
	icon = 13511,  --图标路径
	model = 13510, --模型路径
	sort_id = 722, --坐骑排序显示序号
	desc = "龍魄石兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 10080, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 10080,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--狻猊
RideAttributeCfgs[24837] = 
{	
	id = 24837,        --坐骑模板id 
	name = "狻猊", --坐骑名称
	icon = 13512,  --图标路径
	model = 13509, --模型路径
	sort_id = 723, --坐骑排序显示序号
	desc = "龍魄石兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 163200,	--基础生命
		basePhyAtk = 11760, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 11760,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--朝凰
RideAttributeCfgs[24838] = 
{	
	id = 24838,        --坐骑模板id 
	name = "朝凰", --坐骑名称
	icon = 13513,  --图标路径
	model = 13508, --模型路径
	sort_id = 724, --坐骑排序显示序号
	desc = "龍魄石兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 326400,	--基础生命
		basePhyAtk = 15120, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 15120,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--十年
RideAttributeCfgs[24839] = 
{	
	id = 24839,        --坐骑模板id 
	name = "十年", --坐骑名称
	icon = 13514,  --图标路径
	model = 13506, --模型路径
	sort_id = 725, --坐骑排序显示序号
	desc = "十周年慶集字活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--莲屏
RideAttributeCfgs[24840] = 
{	
	id = 24840,        --坐骑模板id 
	name = "蓮屏", --坐骑名称
	icon = 13515,  --图标路径
	model = 13507, --模型路径
	sort_id = 726, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--劈风
RideAttributeCfgs[24872] = 
{	
	id = 24872,        --坐骑模板id 
	name = "劈風", --坐骑名称
	icon = 13523,  --图标路径
	model = 13516, --模型路径
	sort_id = 727, --坐骑排序显示序号
	desc = "茱萸禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞镰
RideAttributeCfgs[24873] = 
{	
	id = 24873,        --坐骑模板id 
	name = "飛鐮", --坐骑名称
	icon = 13524,  --图标路径
	model = 13517, --模型路径
	sort_id = 728, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--无忧
RideAttributeCfgs[24882] = 
{	
	id = 24882,        --坐骑模板id 
	name = "無憂", --坐骑名称
	icon = 13546,  --图标路径
	model = 13545, --模型路径
	sort_id = 729, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}


--诉衷
RideAttributeCfgs[24899] = 
{	
	id = 24899,        --坐骑模板id 
	name = "訴衷", --坐骑名称
	icon = 13548,  --图标路径
	model = 13547, --模型路径
	sort_id = 730, --坐骑排序显示序号
	desc = "霜露禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--夜狼·圣
RideAttributeCfgs[24903] = 
{	
	id = 24903,        --坐骑模板id 
	name = "夜狼·聖", --坐骑名称
	icon = 13551,  --图标路径
	model = 13549, --模型路径
	sort_id = 731, --坐骑排序显示序号
	desc = "臨冬禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--夜狼·神
RideAttributeCfgs[24904] = 
{	
	id = 24904,        --坐骑模板id 
	name = "夜狼·神", --坐骑名称
	icon = 13552,  --图标路径
	model = 13550, --模型路径
	sort_id = 732, --坐骑排序显示序号
	desc = "2026年雙十一貢獻排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--甜香
RideAttributeCfgs[24922] = 
{	
	id = 24922,        --坐骑模板id 
	name = "甜香", --坐骑名称
	icon = 13561,  --图标路径
	model = 13556, --模型路径
	sort_id = 733, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--冒险豚
RideAttributeCfgs[24923] = 
{	
	id = 24923,        --坐骑模板id 
	name = "冒險豚", --坐骑名称
	icon = 13562,  --图标路径
	model = 13557, --模型路径
	sort_id = 734, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鳐鱼·圣
RideAttributeCfgs[24934] = 
{	
	id = 24934,        --坐骑模板id 
	name = "鰩魚·聖", --坐骑名称
	icon = 13619,  --图标路径
	model = 13616, --模型路径
	sort_id = 735, --坐骑排序显示序号
	desc = "吃雞禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鳐鱼·神
RideAttributeCfgs[24935] = 
{	
	id = 24935,        --坐骑模板id 
	name = "鰩魚·神", --坐骑名称
	icon = 13620,  --图标路径
	model = 13617, --模型路径
	sort_id = 736, --坐骑排序显示序号
	desc = "2026年復活節排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--购物车
RideAttributeCfgs[24987] = 
{	
	id = 24987,        --坐骑模板id 
	name = "購物車", --坐骑名称
	icon = 13649,  --图标路径
	model = 13647, --模型路径
	sort_id = 737, --坐骑排序显示序号
	desc = "2026年神龍祭祀活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--翡烟	
RideAttributeCfgs[25002] = 
{	
	id = 25002,        --坐骑模板id 
	name = "翡煙", --坐骑名称
	icon = 13673,  --图标路径
	model = 13670, --模型路径
	sort_id = 738, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--御魂
RideAttributeCfgs[25004] = 
{	
	id = 25004,        --坐骑模板id 
	name = "禦魂", --坐骑名称
	icon = 13695,  --图标路径
	model = 13692, --模型路径
	sort_id = 739, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霸空·圣
RideAttributeCfgs[25030] = 
{	
	id = 25030,        --坐骑模板id 
	name = "霸空·聖", --坐骑名称
	icon = 13718,  --图标路径
	model = 13712, --模型路径
	sort_id = 740, --坐骑排序显示序号
	desc = "馴鹿禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--霸空·神
RideAttributeCfgs[25031] = 
{	
	id = 25031,        --坐骑模板id 
	name = "霸空·神", --坐骑名称
	icon = 13719,  --图标路径
	model = 13713, --模型路径
	sort_id = 741, --坐骑排序显示序号
	desc = "2026年耶誕節排行榜", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--蝠狮鹫
RideAttributeCfgs[25044] = 
{	
	id = 25044,        --坐骑模板id 
	name = "蝠獅鷲", --坐骑名称
	icon = 13725,  --图标路径
	model = 13722, --模型路径
	sort_id = 742, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--飞轮号
RideAttributeCfgs[25045] = 
{	
	id = 25045,        --坐骑模板id 
	name = "飛輪號", --坐骑名称
	icon = 13726,  --图标路径
	model = 13723, --模型路径
	sort_id = 743, --坐骑排序显示序号
	desc = "新桃禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--亚鸿	
RideAttributeCfgs[25058] = 
{	
	id = 25058,        --坐骑模板id 
	name = "亞鴻", --坐骑名称
	icon = 13752,  --图标路径
	model = 13747, --模型路径
	sort_id = 744, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--岩牛
RideAttributeCfgs[25790] = 
{	
	id = 25790,        --坐骑模板id 
	name = "岩牛", --坐骑名称
	icon = 13779,  --图标路径
	model = 13777, --模型路径
	sort_id = 746, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪狮
RideAttributeCfgs[25059] = 
{	
	id = 25059,        --坐骑模板id 
	name = "雪獅", --坐骑名称
	icon = 13753,  --图标路径
	model = 13748, --模型路径
	sort_id = 745, --坐骑排序显示序号
	desc = "龍爭虎鬥第四十賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--鉴光
RideAttributeCfgs[25793] = 
{	
	id = 25793,        --坐骑模板id 
	name = "鑒光", --坐骑名称
	icon = 13803,  --图标路径
	model = 13801, --模型路径
	sort_id = 765, --坐骑排序显示序号
	desc = "八寶禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--心悦
RideAttributeCfgs[25805] = 
{	
	id = 25805,        --坐骑模板id 
	name = "心悅", --坐骑名称
	icon = 13824,  --图标路径
	model = 13820, --模型路径
	sort_id = 766, --坐骑排序显示序号
	desc = "寒風禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--海贼鸟
RideAttributeCfgs[25806] = 
{	
	id = 25806,        --坐骑模板id 
	name = "海賊鳥", --坐骑名称
	icon = 13825,  --图标路径
	model = 13821, --模型路径
	sort_id = 767, --坐骑排序显示序号
	desc = "勇毅令兌換", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--赤电
RideAttributeCfgs[25819] = 
{	
	id = 25819,        --坐骑模板id 
	name = "赤電", --坐骑名称
	icon = 13829,  --图标路径
	model = 13828, --模型路径
	sort_id = 768, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--雪礼
RideAttributeCfgs[25839] = 
{	
	id = 25839,        --坐骑模板id 
	name = "雪禮", --坐骑名称
	icon = 13847,  --图标路径
	model = 13836, --模型路径
	sort_id = 769, --坐骑排序显示序号
	desc = "2026年春節活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--欢欢·圣
RideAttributeCfgs[25840] = 
{	
	id = 25840,        --坐骑模板id 
	name = "歡歡·聖", --坐骑名称
	icon = 13849,  --图标路径
	model = 13837, --模型路径
	sort_id = 770, --坐骑排序显示序号
	desc = "惜春禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--欢欢·神
RideAttributeCfgs[25841] = 
{	
	id = 25841,        --坐骑模板id 
	name = "歡歡·神", --坐骑名称
	icon = 13850,  --图标路径
	model = 13838, --模型路径
	sort_id = 771, --坐骑排序显示序号
	desc = "2026年春節活動排行榜獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 7560, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 7560,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--尼斯
RideAttributeCfgs[25842] = 
{	
	id = 25842,        --坐骑模板id 
	name = "尼斯", --坐骑名称
	icon = 13851,  --图标路径
	model = 13834, --模型路径
	sort_id = 772, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--森灵
RideAttributeCfgs[25843] = 
{	
	id = 25843,        --坐骑模板id 
	name = "森靈", --坐骑名称
	icon = 13852,  --图标路径
	model = 13835, --模型路径
	sort_id = 773, --坐骑排序显示序号
	desc = "華燈禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 102000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1528,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--震音
RideAttributeCfgs[25884] = 
{	
	id = 25884,        --坐骑模板id 
	name = "震音", --坐骑名称
	icon = 13910,  --图标路径
	model = 13907, --模型路径
	sort_id = 774, --坐骑排序显示序号
	desc = "2026年限時回饋活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--大雪人
RideAttributeCfgs[25885] = 
{	
	id = 25885,        --坐骑模板id 
	name = "大雪人", --坐骑名称
	icon = 13911,  --图标路径
	model = 13908, --模型路径
	sort_id = 775, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--亚鲁
RideAttributeCfgs[25895] = 
{	
	id = 25895,        --坐骑模板id 
	name = "亞魯", --坐骑名称
	icon = 13934,  --图标路径
	model = 13932, --模型路径
	sort_id = 776, --坐骑排序显示序号
	desc = "春輝禮盒中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--驼驼
RideAttributeCfgs[25900] = 
{	
	id = 25900,        --坐骑模板id 
	name = "駝駝", --坐骑名称
	icon = 13939,  --图标路径
	model = 13937, --模型路径
	sort_id = 777, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--连心船	
RideAttributeCfgs[25903] = 
{	
	id = 25903,        --坐骑模板id 
	name = "連心船", --坐骑名称
	icon = 13959,  --图标路径
	model = 13956, --模型路径
	sort_id = 778, --坐骑排序显示序号
	desc = "承天禮匣中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 244800,	--基础生命
		basePhyAtk = 1680, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 1680,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--小黄蜂	
RideAttributeCfgs[25910] = 
{	
	id = 25910,        --坐骑模板id 
	name = "小黃蜂", --坐骑名称
	icon = 13979,  --图标路径
	model = 13978, --模型路径
	sort_id = 779, --坐骑排序显示序号
	desc = "復活彩蛋中概率獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 204000,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 382,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 382, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--魔法毯
RideAttributeCfgs[25917] = 
{	
	id = 25917,        --坐骑模板id 
	name = "魔法毯", --坐骑名称
	icon = 13988,  --图标路径
	model = 13982, --模型路径
	sort_id = 780, --坐骑排序显示序号
	desc = "2026年六龍秘寶活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 142800,	--基础生命
		basePhyAtk = 8400, 	 --物理攻击
		basePhyDef = 764,	 --物理防御
		baseMagAtk = 8400,   --法术攻击
		baseMagDef = 764, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--洪流
RideAttributeCfgs[25918] = 
{	
	id = 25918,        --坐骑模板id 
	name = "洪流", --坐骑名称
	icon = 13989,  --图标路径
	model = 13983, --模型路径
	sort_id = 781, --坐骑排序显示序号
	desc = "龍爭虎鬥第四十一賽季獎勵", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}

--颤栗
RideAttributeCfgs[25943] = 
{	
	id = 25943,        --坐骑模板id 
	name = "顫慄", --坐骑名称
	icon = 13999,  --图标路径
	model = 13996, --模型路径
	sort_id = 782, --坐骑排序显示序号
	desc = "2026年藏寶閣活動中獲得", --获得方式
	tale = "                           傳記：暫無" , --传记描述
    maxattr =
	{
		maxLevel = 100,		 --满级等级
		baseHP = 122400,	--基础生命
		basePhyAtk = 6720, 	 --物理攻击
		basePhyDef = 1146,	 --物理防御
		baseMagAtk = 6720,   --法术攻击
		baseMagDef = 1146, 	 --法术防御
		baseRunSpeed = 8, 	 --速度
	},
}
--ridebook r  这个命令可以让坐骑配置直接生效

local ModelConfig = {}

--马
ModelConfig[914] = {scale = 0.6, roatate = 80, fov = 20, far = 8.75, xoffset = -0.2, yoffset = 0.25, zoffset = 6.3}

--老虎
ModelConfig[2132] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = 0.5, zoffset = 6.3}

--冰离
ModelConfig[2144] = {scale = 0.4, roatate = 60, fov = 20, far = 8.75, xoffset = -0.05, yoffset = 0.4, zoffset = 6.3}

--猪
ModelConfig[2223] = {scale = 0.5, roatate = 50, fov = 20, far = 8.75, xoffset = 0.05, yoffset = 0.5, zoffset = 6.3}

--千机
ModelConfig[2218] = {scale = 0.5, roatate = 40, fov = 20, far = 8.75, xoffset = 0.1, yoffset = -0.75, zoffset = 6.3}

--仙鹿
ModelConfig[2378] = {scale = 0.5, roatate = 80, fov = 20, far = 8.75, xoffset = 0.05, yoffset = 0.22, zoffset = 6.3}

--年兽
ModelConfig[2589] = {scale = 0.45, roatate = 50, fov = 20, far = 8.75, xoffset = 0.1, yoffset = 0.35, zoffset = 6.3}

--凤凰
ModelConfig[2588] = {scale = 0.5, roatate = 40, fov = 20, far = 8.75, xoffset = -0.2, yoffset = -0.53, zoffset = 6.3}

--蝎子
ModelConfig[2680] = {scale = 0.4, roatate = 20, fov = 20, far = 8.75, xoffset = 0.1, yoffset = 0.2, zoffset = 6.3}

--羊驼
ModelConfig[2983] = {scale = 0.52, roatate = 50, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.3, zoffset = 6.3}

--炫光
ModelConfig[4209] = {scale = 0.52, roatate = 50, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.3, zoffset = 6.3}

--蜗牛
ModelConfig[3230] = {scale = 0.55, roatate = 20, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.4, zoffset = 6.3}

--金龙
ModelConfig[3261] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.33, zoffset = 6.3}

--高级金龙
ModelConfig[3291] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.33, zoffset = 6.3}

--红龙
ModelConfig[3260] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.33, zoffset = 6.3}

--兔子
ModelConfig[3262] = {scale = 0.6, roatate = 55, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.3, zoffset = 6.3}

--黑老虎
ModelConfig[3278] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = 0.5, zoffset = 6.3}

--牛
ModelConfig[3401] = {scale = 0.41, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--金牛
ModelConfig[3403] = {scale = 0.41, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--火狐狸
ModelConfig[3580] = {scale = 0.45, roatate = 45, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--蝙蝠
ModelConfig[3677] = {scale = 0.4, roatate = 45, fov = 20, far = 8.75, xoffset = -0.1, yoffset = -0.3, zoffset = 6.3}

--红鸟
ModelConfig[3682] = {scale = 0.4, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.3, zoffset = 6.3}

--碧空
ModelConfig[3681] = {scale = 0.4, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.3, zoffset = 6.3}

--沧羚
ModelConfig[3773] = {scale = 0.58, roatate = 60, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.25, zoffset = 6.3}

--金羚
ModelConfig[3774] = {scale = 0.58, roatate = 60, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.25, zoffset = 6.3}

--雪月
ModelConfig[3263] = {scale = 0.45, roatate = 45, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--流霜
ModelConfig[3818] = {scale = 0.55, roatate = 35, fov = 20, far = 8.75, xoffset = 0, yoffset = -0.55, zoffset = 6.3}

--噬空
ModelConfig[3826] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.33, zoffset = 6.3}

--破山·神
ModelConfig[3827] = {scale = 0.5, roatate = 40, fov = 20, far = 8.75, xoffset = 0.08, yoffset = 0.35, zoffset = 6.3}

--破山·圣
ModelConfig[3856] = {scale = 0.5, roatate = 40, fov = 20, far = 8.75, xoffset = 0.08, yoffset = 0.35, zoffset = 6.3}

--黄泉
ModelConfig[3915] = {scale = 0.5, roatate = 25, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--幽冥
ModelConfig[3916] = {scale = 0.5, roatate = 25, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.4, zoffset = 6.3}

--谣夜
ModelConfig[3974] = {scale = 0.4, roatate = 40, fov = 20, far = 8.75, xoffset = -0.2, yoffset = -0.2, zoffset = 6.3}

--曜夜
ModelConfig[3957] = {scale = 0.4, roatate = 40, fov = 20, far = 8.75, xoffset = -0.2, yoffset = -0.2, zoffset = 6.3}

--鸿鹄
ModelConfig[4013] = {scale = 0.4, roatate = 40, fov = 20, far = 8.75, xoffset = -0.2, yoffset = -0.3, zoffset = 6.3}

--醉仙
ModelConfig[4033] = {scale = 0.43, roatate = 40, fov = 20, far = 8.75, xoffset = -0.1, yoffset = -0.25, zoffset = 6.3}

--金翼
ModelConfig[4081] = {scale = 0.36, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.35, zoffset = 6.3}

--银风
ModelConfig[4079] = {scale = 0.36, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.35, zoffset = 6.3}

--飞麟
ModelConfig[4082] = {scale = 0.36, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.35, zoffset = 6.3}

--霜魂
ModelConfig[4135] = {scale = 0.36, roatate = 40, fov = 20, far = 8.75, xoffset = -0.25, yoffset = -0.35, zoffset = 6.3}

--赤影
ModelConfig[4014] = {scale = 0.4, roatate = 55, fov = 20, far = 8.75, xoffset = 0.15, yoffset = 0.2, zoffset = 6.3}

--绝影
ModelConfig[4137] = {scale = 0.4, roatate = 55, fov = 20, far = 8.75, xoffset = 0.15, yoffset = 0.2, zoffset = 6.3}

--应龙
ModelConfig[4136] = {scale = 0.4, roatate = 50, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.2, zoffset = 6.3}

--暗麟
ModelConfig[4208] = {scale = 0.45, roatate = 50, fov = 20, far = 8.75, xoffset = 0.1, yoffset = 0.35, zoffset = 6.3}

--钢尾
ModelConfig[4278] = {scale = 0.37, roatate = 45, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.35, zoffset = 6.3}

--金尾
ModelConfig[4287] = {scale = 0.37, roatate = 45, fov = 20, far = 8.75, xoffset = 0, yoffset = 0.35, zoffset = 6.3}

--狮鹫
ModelConfig[4296] = {scale = 0.45, roatate = 40, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.1, zoffset = 6.3}

--破天
ModelConfig[4314] = {scale = 0.6, roatate = 40, fov = 20, far = 8.75, xoffset = 0.12, yoffset = 0.35, zoffset = 6.3}

--擎天
ModelConfig[4340] = {scale = 0.6, roatate = 30, fov = 20, far = 8.75, xoffset = 0.12, yoffset = 0.35, zoffset = 6.3}

--骇翼
ModelConfig[4353] = {scale = 0.36, roatate = 40, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.1, zoffset = 6.3}

--星槎
ModelConfig[4352] = {scale = 0.38, roatate = 45, fov = 60, far = 10, xoffset = 0, yoffset = 0.25, zoffset = 2.32}

--凌月
ModelConfig[4464] = {scale = 0.38, roatate = 40, fov = 60, far = 10, xoffset = 0, yoffset = 0.25, zoffset = 2.32}
--狱焱
ModelConfig[4441] = {scale = 0.34, roatate = 40, fov = 60, far = 10, xoffset = 0, yoffset = 0.09, zoffset = 2.06}
--撼地
ModelConfig[4490] = {scale = 0.4, roatate = 40, fov = 60, far = 10, xoffset = 0, yoffset = 0.39, zoffset = 2.2}
--圣甲虫
ModelConfig[4491] = {scale = 0.35, roatate = 30, fov = 60, far = 10, xoffset = 0, yoffset = 0.17, zoffset = 2.01}
--神鸡
ModelConfig[4497] = {scale = 0.4, roatate = 40, fov = 60, far = 10, xoffset = 0, yoffset = 0.4, zoffset = 2.04}
--青龙
ModelConfig[4519] = {scale = 0.4, roatate = 80, fov = 60, far = 10, xoffset = 0, yoffset = 0.3, zoffset = 2.41}
--白虎
ModelConfig[4520] = {scale = 0.4, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.54, zoffset = 1.83}
--玄武
ModelConfig[4521] = {scale = 0.35, roatate = 50, fov = 60, far = 10, xoffset = 0, yoffset = 0.46, zoffset = 1.97}
--噬焰
ModelConfig[4545] = {scale = 0.4, roatate = 20, fov = 20, far = 8.75, xoffset = 0.1, yoffset = 0.2, zoffset = 6.3}
--情人节马
ModelConfig[4648] = {scale = 0.5, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.41, zoffset = 2}
--陆行鸟
ModelConfig[4647] = {scale = 0.48, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.41, zoffset = 2}
--大象
ModelConfig[4725] = {scale = 0.38, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.42, zoffset = 2.27}
--陆行鸟--蓝色
ModelConfig[4731] = {scale = 0.48, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.41, zoffset = 2}
--灼云
ModelConfig[4732] = {scale = 0.48, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.41, zoffset = 2}
--熊猫
ModelConfig[4769] = {scale = 0.48, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.45, zoffset = 2.12}
--飞剑
ModelConfig[4814] = {scale = 0.7, roatate = 45, fov = 60, far = 10, xoffset = 0.5, yoffset = -0.65, zoffset = 3.2}

--泡泡
ModelConfig[4819] = {scale = 0.6, roatate =60, fov = 60, far = 10, xoffset = 0, yoffset = 0.24, zoffset = 2.61}

--朱雀之灵
ModelConfig[4837] = {scale = 0.6, roatate =60, fov = 60, far = 10, xoffset = 0, yoffset = -0.76, zoffset = 3.59}

--狸猫
ModelConfig[4870] = {scale = 0.6, roatate =70, fov = 60, far = 10, xoffset = 0, yoffset = 0.4, zoffset = 2.16}

--青玉
ModelConfig[5143] = {scale = 0.43, roatate = 40, fov = 20, far = 8.75, xoffset = -0.1, yoffset = -0.25, zoffset = 6.3}

--多宝
ModelConfig[5150] = {scale = 0.48, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = 0.45, zoffset = 2.12}

--望舒
ModelConfig[5151] = {scale = 0.35, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -0.07, zoffset = 2}


--锦鲤
ModelConfig[5195] = {scale = 1, roatate =60, fov = 60, far = 10, xoffset = 0.0, yoffset = -0.95, zoffset = 5.85}

--龙牙
ModelConfig[5196] = {scale = 1, roatate = 45, fov = 60, far = 10, xoffset = 0.1, yoffset = -0.42, zoffset = 4.62}

--麒麟之灵
ModelConfig[5235] = {scale = 0.4, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.33, zoffset = 2}

--二哈
ModelConfig[5274] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.37, yoffset = 0, zoffset = 4.23}

--竹趣
ModelConfig[5308] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.14, yoffset = -0.18, zoffset = 4.57}

--二毛
ModelConfig[5309] = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = 0.04, yoffset = 0, zoffset = 3.82}

--晶浣
ModelConfig[5382] = {scale = 1, roatate = 35, fov = 60, far = 10, xoffset = 0.4, yoffset = -0.27, zoffset = 5.44}

--乘风
ModelConfig[5388] = {scale = 1, roatate = 80, fov = 60, far = 10, xoffset = -0.4, yoffset = -1.67, zoffset = 5.22}

--步雨
ModelConfig[5389] = {scale = 1, roatate = 75, fov = 60, far = 10, xoffset =-0.4, yoffset = -1.67, zoffset = 5.22}

--惊雷
ModelConfig[5390] = {scale = 1, roatate = 80, fov = 60, far = 10, xoffset = -0.4, yoffset = -1.67, zoffset = 5.22}

--星岚
ModelConfig[5429] = {scale = 1, roatate = 80, fov = 60, far = 10, xoffset = -0.4, yoffset = -0.78, zoffset = 6.31}

--紫韵
ModelConfig[5451] = {scale = 0.5, roatate = 60, fov = 20, far = 8.75, xoffset = 0.05, yoffset = 0.22, zoffset = 6.3}

--鎏光
ModelConfig[5434] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.63, yoffset = -0.54, zoffset = 5.41}

--飞炎
ModelConfig[5474] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -0.81, zoffset = 5}

--胖哒
ModelConfig[5500] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -2.24, zoffset = 4.67}

--蓝胖
ModelConfig[5503] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -2.24, zoffset = 4.67}

--盈秋
ModelConfig[5504] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -0.26, zoffset = 4.86}

--筋斗云
ModelConfig[5513] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -0.26, zoffset = 4.86}

--朱蛤
ModelConfig[5533] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.73, yoffset = -0.05, zoffset = 4.8}

--归墟
ModelConfig[5534] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.76, zoffset = 5.45}

--芊芊
ModelConfig[5606] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.61, yoffset = -2.09, zoffset = 5.05}

--苍御
ModelConfig[5617] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.57, zoffset = 4.8}

--绝仙
ModelConfig[5655] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.84, zoffset = 5}

--猎空
ModelConfig[5685] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = 0, zoffset = 5}

--陷仙
ModelConfig[5714] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.37, zoffset = 5}

--白泽神
ModelConfig[5715] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -0.33, zoffset = 5}

--白泽圣
ModelConfig[5716] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.33, zoffset = 5}

--海棠
ModelConfig[5717] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.81, zoffset = 5.2}

--牧白
ModelConfig[5725] = {scale = 0.58, roatate = 60, fov = 20, far = 8.75, xoffset = -0.1, yoffset = 0.25, zoffset = 6.3}

--戮仙
ModelConfig[5818] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3, yoffset = -1.84, zoffset = 5}

--诛仙阵图
ModelConfig[5819] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.19, zoffset = 5.5}

--诛仙
ModelConfig[5823] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3, yoffset = -1.84, zoffset = 5}

--七彩
ModelConfig[5824] = {scale = 1, roatate = 70, fov = 60, far = 10, xoffset = 0, yoffset = -0.26, zoffset = 4.86}

--晴明
ModelConfig[5848] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.8, zoffset = 5.51}

--姿韵
ModelConfig[5948] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.58, zoffset = 4.8}

--胧隐·圣
ModelConfig[5951] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.57, zoffset = 5}

--胧隐·神
ModelConfig[5952] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.57, zoffset = 5}

--诗华
ModelConfig[5962] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.24, zoffset = 4.8}

--冥獒
ModelConfig[6000] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -0.21, zoffset = 5.2}

--影闪
ModelConfig[6001] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -0.21, zoffset = 5}

--如意
ModelConfig[6048] = {scale = 1, roatate = 40, fov = 60, far = 10, xoffset = 0, yoffset = -0.38, zoffset = 5}

--龙熔圣
ModelConfig[6047] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.23, yoffset = -0.24, zoffset = 4.8}

--龙熔神
ModelConfig[6065] = {scale = 1, roatate = 45, fov = 60, far = 10, xoffset = 0.23, yoffset = -0.24, zoffset = 4.8}

--湮宸
ModelConfig[6136] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.69, zoffset = 5.2}

--岩琅
ModelConfig[6137] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.24, zoffset = 5}

--寂夜
ModelConfig[6139] = {scale = 1, roatate = 45, fov = 60, far = 10, xoffset = 0.9, yoffset = -0.25, zoffset = 4.8}

--锦绣
ModelConfig[6153] = {scale = 1, roatate = 45, fov = 60, far = 10, xoffset = 0, yoffset = -0.6, zoffset = 5.2}

--豚豚
ModelConfig[6154] = {scale = 1, roatate = 45, fov = 60, far = 10, xoffset = 0, yoffset = -0.13, zoffset = 4.8}

--旺财
ModelConfig[6135] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.43, zoffset = 5}

--来福
ModelConfig[6200] = {scale = 1, roatate = 75, fov = 60, far = 10, xoffset = 0, yoffset = -0.43, zoffset = 5}

--寒
ModelConfig[6201] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.65, yoffset = -0.55, zoffset = 5.2}

--龙威
ModelConfig[6214] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.84, yoffset = 0, zoffset = 5}

--恋席
ModelConfig[6215] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.88, zoffset = 5.5}

--悍勇
ModelConfig[6249] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.24, zoffset = 5}

--跃影
ModelConfig[6289] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.48, zoffset = 5}

--奕星
ModelConfig[6329] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.18, zoffset = 5}
   
--钢牙
ModelConfig[6294] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.08, zoffset = 5}

--夜神
ModelConfig[6341] = {scale = 0.4, roatate = 65, fov = 20, far = 8.75, xoffset = -0.05, yoffset = 0.4, zoffset = 6.3}

--琳琅
ModelConfig[6342] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.34, zoffset = 5}

--狮纯
ModelConfig[6295] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.31, zoffset = 5}

--云狐
ModelConfig[6344] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.35, zoffset = 5}

--熊大
ModelConfig[6419] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.22, zoffset = 5}

--熊二
ModelConfig[6420] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.22, zoffset = 5}

--冷焰
ModelConfig[6480] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.19, zoffset = 5}

--青碧
ModelConfig[6483] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.49, yoffset = -1.37, zoffset = 5}

--啸月
ModelConfig[6500] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.27, zoffset = 5}

--阆渊
ModelConfig[6520] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.5, zoffset = 6}

--骥骜
ModelConfig[6521] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.27, zoffset = 5}

--妮娜
ModelConfig[6557] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.14, zoffset = 3}

--玲珑
ModelConfig[6558] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.1, zoffset = 4}

--石司
ModelConfig[6600] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.16, yoffset = -0.5, zoffset = 6}

--石纪
ModelConfig[6601] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.16, yoffset = -0.5, zoffset = 6}

--惑心
ModelConfig[6610] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.16, yoffset = -0.7, zoffset = 6}

--宁韵
ModelConfig[6609] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -2, zoffset = 6}

--寒戮
ModelConfig[6655] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -0.2, zoffset = 6}

--鸩影
ModelConfig[6691] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.1, yoffset = -0.5, zoffset = 5}

--奇诺
ModelConfig[6692] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.13, yoffset = -1.1, zoffset = 6}

--绯渊
ModelConfig[6716] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -1.6, zoffset = 5}

--尼禄
ModelConfig[7140] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -1.8, zoffset = 6}

--寂灭
ModelConfig[7139] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.56, yoffset = -0.4, zoffset = 6}

--烽阙
ModelConfig[7150] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.06, yoffset = -0.44, zoffset = 6}

--禄力
ModelConfig[7144] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -0.44, zoffset = 6}

--故梦
ModelConfig[7158] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.46, yoffset = -2.94, zoffset = 6}

--流年
ModelConfig[7159] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.46, yoffset = -2.94, zoffset = 6}

--桑陌
ModelConfig[7157] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.31, yoffset = -0.6, zoffset = 5}

--玄奕
ModelConfig[7266] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.9, zoffset = 5}

--战魂
ModelConfig[7318] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -0.23, zoffset = 4}

--戎昭·圣
ModelConfig[7327] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.74, yoffset = -0.34, zoffset = 6}

--戎昭·神
ModelConfig[7328] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.74, yoffset = -0.34, zoffset = 6}

--赤炎·圣
ModelConfig[7333] = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = 0.19, yoffset = -0.59, zoffset = 5}

--赤炎·神
ModelConfig[7334] = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = 0.19, yoffset = -0.59, zoffset = 5}

--青辉
ModelConfig[7335] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -0.32, zoffset = 5}

--鸿萌
ModelConfig[7339] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.46, zoffset = 5}

--盻瑶
ModelConfig[7215] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.05, yoffset = -1.86, zoffset = 6}

--斐亚
ModelConfig[7392] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.49, yoffset = -2.19, zoffset = 7}

--辉耀
ModelConfig[7396] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -2.33, zoffset = 6}

--焱奕
ModelConfig[7403] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.23, yoffset = -1.82, zoffset = 5}

--封禹
ModelConfig[7408] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.54, yoffset = -3, zoffset = 5}

--封禹
ModelConfig[7412] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.47, yoffset = -1.32, zoffset = 8}

--浮盻
ModelConfig[7418] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.36, yoffset = -2.12, zoffset = 6}

--千城
ModelConfig[7419] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.28, yoffset = -3.18, zoffset = 6}

--加祖
ModelConfig[7491] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.48, yoffset = -0.79, zoffset = 5}

--青雀舫·圣
ModelConfig[7494] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -2.08, zoffset = 5}

--青雀舫·神
ModelConfig[7495] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -2.08, zoffset = 5}

--米娅
ModelConfig[7500] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.88, zoffset = 5}

--了了
ModelConfig[7504] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.34, yoffset = -1.05, zoffset = 5}

--覆焉·神
ModelConfig[7514] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.39, yoffset = -0.31, zoffset = 6}

--覆湮·圣
ModelConfig[7513] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.39, yoffset = -0.31, zoffset = 6}

--谛听
ModelConfig[7519] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.15, yoffset = -0.13, zoffset = 5}

--嗅春
ModelConfig[7598] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.24, yoffset = -0.44, zoffset = 5}

--丹心
ModelConfig[7520] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.93, yoffset = -0.97, zoffset = 6}

--珊塔
ModelConfig[7603] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -0.89, zoffset = 6}

--飞飞
ModelConfig[7602] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.06, yoffset = -0.7, zoffset = 5}

--博闻
ModelConfig[7624] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.24, yoffset = -0.81, zoffset = 5}

--迷鹿
ModelConfig[7580] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.79, zoffset = 5}

--寒啸·神
ModelConfig[7696] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.37, yoffset = -0.32, zoffset = 5}

--寒啸·圣
ModelConfig[7695] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.37, yoffset = -0.32, zoffset = 5}

--飞虹
ModelConfig[7697] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -1.67, zoffset = 5}

--逐光
ModelConfig[7698] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -0.49, zoffset = 5}

--卿知
ModelConfig[7740] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.56, yoffset = -0.76, zoffset = 5}

--潜渊
ModelConfig[7627] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -0.3, zoffset = 5}

--雪鬃
ModelConfig[7763] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.35, yoffset = -0.5, zoffset = 5}

--云澜
ModelConfig[7790] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.86, zoffset = 5}

--迪杰
ModelConfig[7792] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.18, zoffset = 4}

--承钧
ModelConfig[7764] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -1.13, zoffset = 7}

--无双
ModelConfig[7895] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.51, zoffset = 8}

--婳仙
ModelConfig[7791] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.09, yoffset = -1.71, zoffset = 5}

--悠悠
ModelConfig[7875] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.88, yoffset = -2.53, zoffset = 6}

--戏斑
ModelConfig[7907] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.71, zoffset = 5}

--风猎
ModelConfig[7928] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.38, yoffset = -0.47, zoffset = 5}

--麟玺
ModelConfig[7951] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.39, yoffset = -1.05, zoffset = 5}

--怜影·神
ModelConfig[7995] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.2, yoffset = -2.09, zoffset = 7}

--怜影·圣
ModelConfig[7959] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.2, yoffset = -2.09, zoffset = 7}

--莫尘
ModelConfig[7927] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.69, zoffset = 5}

--灵素
ModelConfig[7960] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.26, yoffset = -0.69, zoffset = 5}

--隐叶
ModelConfig[8004] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.37, zoffset = 5}

--浅悠
ModelConfig[8027] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.48, zoffset = 5}

--巫梦
ModelConfig[8028] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -2.15, zoffset = 5}

--符仙
ModelConfig[8029] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.61, yoffset = -1.57, zoffset = 6}

--求凰·神
ModelConfig[8111] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.13, yoffset = -1.37, zoffset = 9}

--求凰·圣
ModelConfig[8087] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.13, yoffset = -1.37, zoffset = 9}

--斑宝
ModelConfig[8132] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.31, zoffset = 5}

--思居
ModelConfig[8065] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.68, zoffset = 5}

--旺卿
ModelConfig[8112] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.67, zoffset = 5}

--琼华·神
ModelConfig[8198] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -2.21, zoffset = 6}

--琼华·圣
ModelConfig[8133] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -2.21, zoffset = 6}

--叮当
ModelConfig[8155] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.13, yoffset = -0.62, zoffset = 5}

--江月
ModelConfig[8175] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.22, zoffset = 5}

--绯岚
ModelConfig[8244] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.27, yoffset = -1.46, zoffset = 6}

--泠烟
ModelConfig[8220] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.27, yoffset = -0.67, zoffset = 5}

--妙思
ModelConfig[8197] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.47, yoffset = -3.23, zoffset = 6}

--惜巧·神
ModelConfig[8309] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -2.38, zoffset = 5}

--惜巧·圣
ModelConfig[8270] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -2.38, zoffset = 5}

--帕克
ModelConfig[8245] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.77, zoffset = 6}

--华森
ModelConfig[8221] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.96, yoffset = -0.71, zoffset = 6}

--盈宝
ModelConfig[8292] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.24, yoffset = -1.57, zoffset = 6}

--麻衣
ModelConfig[8313] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.27, yoffset = -0.5, zoffset = 5}

--听澜
ModelConfig[8339] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.06, yoffset = -0.54, zoffset = 5}

--观月
ModelConfig[8359] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.59, yoffset = -0.38, zoffset = 5}

--薇雨·神
ModelConfig[8449] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -2.2, zoffset = 7}

--薇雨·圣
ModelConfig[8430] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -2.2, zoffset = 7}

--列奥
ModelConfig[8429] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.7, yoffset = -0.36, zoffset = 5}

--幽岚·神
ModelConfig[8491] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -1.95, zoffset = 5}

--幽岚·圣
ModelConfig[8454] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -1.95, zoffset = 5}

--牧尘
ModelConfig[8404] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.61, zoffset = 5}

--圆圆
ModelConfig[8340] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.3, zoffset = 4}

--居萌
ModelConfig[8383] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = -0.54, zoffset = 5}

--霜月
ModelConfig[8473] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.15, yoffset = -1.06, zoffset = 5}

--霆霓
ModelConfig[8314] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.42, zoffset = 5}

--海德
ModelConfig[7834] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -2.12, zoffset = 5}

--柴柴
ModelConfig[8523] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.07, yoffset = -0.65, zoffset = 5}

--茜羽
ModelConfig[8524] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -0.82, zoffset = 5}

--青韶·神
ModelConfig[8626] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.49, yoffset = -1.89, zoffset = 6.5}

--青韶·圣
ModelConfig[8547] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.49, yoffset = -1.89, zoffset = 6.5}

--雷鸣
ModelConfig[8546] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1, zoffset = 5}

--奇乐
ModelConfig[8591] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -0.16, zoffset = 4}

--玹鸢
ModelConfig[8592] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.83, zoffset = 5}

--莱顿·神
ModelConfig[8684] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.22, yoffset = -4.86, zoffset = 7}

--莱顿·圣
ModelConfig[8640] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.22, yoffset = -4.86, zoffset = 7}

--蚀川
ModelConfig[8639] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.64, yoffset = -0.33, zoffset = 6.5}

--姜渔
ModelConfig[8683] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -0.48, zoffset = 5}

--箜濛·神
ModelConfig[8749] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.12, yoffset = -2.51, zoffset = 6}

--箜濛·圣
ModelConfig[8710] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = -0.12, yoffset = -2.51, zoffset = 6}

--星曦
ModelConfig[8638] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.54, yoffset = -0.78, zoffset = 5}

--雪璃
ModelConfig[8634] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = -0.56, zoffset = 5}

--芙瑶
ModelConfig[8707] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -0.63, zoffset = 5}

--云翎
ModelConfig[8708] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.31, yoffset = -2.52, zoffset = 5}

--千崇
ModelConfig[8838] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.09, yoffset = -0.9, zoffset = 7}

--浩息
ModelConfig[8821] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -1.39, zoffset = 5}

--沐风·神
ModelConfig[8869] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.72, zoffset = 5}

--沐风·圣
ModelConfig[8797] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.72, zoffset = 5}

--冲鸭
ModelConfig[8497] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.59, yoffset = -0.54, zoffset = 5}

--应瑞
ModelConfig[8880] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.67, zoffset = 5}

--飓枭
ModelConfig[8820] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.9, zoffset = 5}

--萝贝
ModelConfig[8850] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.19, yoffset = -0.9, zoffset = 5}

--犴裔
ModelConfig[8851] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -0.87, zoffset = 6}

--云嫣
ModelConfig[8849] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.19, yoffset = -0.22, zoffset = 4}

--雪华
ModelConfig[8892] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.39, zoffset = 5}

--蒲仙
ModelConfig[8891] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.29, zoffset = 5}

--枫意
ModelConfig[8920] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.42, zoffset = 5}

--初晓
ModelConfig[8921] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.58, zoffset = 5}

--秋趣
ModelConfig[8948] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.11, yoffset = -0.63, zoffset = 5}

--汐灵
ModelConfig[8947] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.11, yoffset = -2.87, zoffset = 6.5}

--炽鵟
ModelConfig[8870] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1, zoffset = 6}

--苔痕
ModelConfig[8957] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -4.43, zoffset = 8}

--宿魇
ModelConfig[8958] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.37, zoffset = 4}

--桃狰
ModelConfig[8986] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.13, yoffset = -0.54, zoffset = 5}

--异角
ModelConfig[8987] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.34, yoffset = -0.19, zoffset = 5}

--谛麟·神
ModelConfig[9039] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -0.3, zoffset = 5}

--谛麟·圣
ModelConfig[9014] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -0.3, zoffset = 5}

--笺境
ModelConfig[8922] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0.31, yoffset = -3.41, zoffset = 9}

--觅旅
ModelConfig[8979] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.12, yoffset = -0.8, zoffset = 6.5}

--莲息
ModelConfig[8988] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.34, yoffset = -1.95, zoffset = 6}

--蜜语
ModelConfig[9040] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.19, yoffset = -0.83, zoffset = 4}

--仙羽
ModelConfig[9052] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.38, zoffset = 5}

--玄灼
ModelConfig[9071] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.94, zoffset = 6.5}

--寻冬
ModelConfig[9072] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.3, zoffset = 4}

--云居
ModelConfig[9078] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -2.12, zoffset = 6}

--争渡·神
ModelConfig[9127] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -1.14, zoffset = 6}

--争渡·圣
ModelConfig[8709] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -1.14, zoffset = 6}

--青尾
ModelConfig[9077] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.55, zoffset = 5}

--堪舆
ModelConfig[9103] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.32, zoffset = 5}

--倾辰
ModelConfig[9037] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.54, yoffset = -1.31, zoffset = 6}

--琉砂
ModelConfig[9102] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.51, zoffset = 5}

--烬夜
ModelConfig[9128] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.22, yoffset = -0.23, zoffset = 5}

--敖游
ModelConfig[9104] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.54, yoffset = -2.32, zoffset = 6}

--莲官
ModelConfig[9141] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.02, zoffset = 5}

--鱼美
ModelConfig[9173] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.49, zoffset = 9}

--雷鹿
ModelConfig[9174] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -0.62, zoffset = 5}

--凝珠
ModelConfig[9161] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.27, zoffset = 6}

--湍君·神
ModelConfig[9254] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.33, zoffset = 5}

--湍君·圣
ModelConfig[9235] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.33, zoffset = 5}

--菀夏
ModelConfig[9215] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.42, yoffset = -0.68, zoffset = 5}

--绘池·神
ModelConfig[9280] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.76, yoffset = -1.93, zoffset = 5}

--绘池·圣
ModelConfig[9234] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.76, yoffset = -1.93, zoffset = 5}

--鲸歌
ModelConfig[9216] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.25, yoffset = -1.5, zoffset = 6}

--清沐
ModelConfig[9236] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.78, zoffset = 5}

--飞鳐
ModelConfig[9233] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -1.34, yoffset = -2.22, zoffset = 5}

--凛风
ModelConfig[9281] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = -0.34, zoffset = 5}

--长明·神
ModelConfig[9312] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.25, yoffset = -2.57, zoffset = 9}

--长明·圣
ModelConfig[9202] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.25, yoffset = -2.57, zoffset = 9}

--奇遇
ModelConfig[9290] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.69, yoffset = -0.47, zoffset = 5}

--追星
ModelConfig[9291] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.53, zoffset = 6}

--羲和
ModelConfig[9197] = {scale = 0.35, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -0.07, zoffset = 2}

--吞吞
ModelConfig[9257] = {scale = 1, roatate = 60, fov = 60, far = 11.5, xoffset = 0, yoffset = -2.85, zoffset = 10}

--星途
ModelConfig[9313] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.56, yoffset = -0.93, zoffset = 7.5}

--红韵
ModelConfig[9329] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.36, yoffset = -1.34, zoffset = 5}

--潮兮·神
ModelConfig[9386] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.07, zoffset = 5}

--潮兮·圣
ModelConfig[9356] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.07, zoffset = 5}

--幽火
ModelConfig[9347] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.96, zoffset = 7}

--远梦
ModelConfig[9375] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.77, zoffset = 5}

--灵聪
ModelConfig[9376] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5, zoffset = 5}

--踏雪·神
ModelConfig[9438] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.09, yoffset = -0.5, zoffset = 5}

--踏雪·圣
ModelConfig[9417] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.09, yoffset = -0.5, zoffset = 5}

--守财
ModelConfig[9379] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -1.32, zoffset = 5}

--非花
ModelConfig[9416] = {scale = 1, roatate = 60, fov = 60, far = 20, xoffset = 0.38, yoffset = -4.69, zoffset = 11}

--轻辇
ModelConfig[9387] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.42, yoffset = -1, zoffset = 6}

--熔戎
ModelConfig[9442] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.2, zoffset = 5}

--辉夜·神
ModelConfig[9517] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.6, zoffset = 5}

--辉夜·圣
ModelConfig[9467] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.6, zoffset = 5}

--披霞
ModelConfig[9499] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.3, zoffset = 5}

--畅行
ModelConfig[9468] = {scale = 1, roatate = 60, fov = 60, far = 13.5, xoffset = 0, yoffset = -1.5, zoffset = 9}

--随风
ModelConfig[9443] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.42, yoffset = -3.07, zoffset = 8}

--冰焰
ModelConfig[9377] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3, yoffset = -0.47, zoffset = 6}

--归流
ModelConfig[9435] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.66, zoffset = 7}

--领航
ModelConfig[9498] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.45, zoffset = 5}

--青黛
ModelConfig[9491] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.95, yoffset = -2.64, zoffset = 5}

--屠苏
ModelConfig[9534] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.07, yoffset = -0.44, zoffset = 5}

--枕泉·神
ModelConfig[9568] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.47, yoffset = -0.69, zoffset = 7}

--枕泉·圣
ModelConfig[9535] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.47, yoffset = -0.69, zoffset = 7}

--菇子
ModelConfig[9537] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.08 , yoffset = -0.49, zoffset = 5}

--千钧·神
ModelConfig[9569] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.72,  yoffset = -1.34, zoffset = 10}

--千钧·圣
ModelConfig[9536] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.72,  yoffset = -1.34, zoffset = 10}

--璇玑
ModelConfig[9560] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.09, yoffset = -0.39, zoffset = 5}

--芳心
ModelConfig[9567] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -1.26, zoffset = 6}

--星衡
ModelConfig[9616] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -1.75, zoffset = 6}

--浣纱
ModelConfig[9635] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.51, zoffset = 5}

--跃兔
ModelConfig[9613] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -1.78, zoffset = 5}

--哮夜
ModelConfig[9615] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.85, yoffset = -0.21, zoffset = 5}

--冥爪
ModelConfig[9643] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.38, zoffset = 5}

--不染
ModelConfig[9646] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.06, zoffset = 6}

--觅蜜
ModelConfig[9644] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.57, zoffset = 5}

--清歌
ModelConfig[9587] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.34, yoffset = -0.69, zoffset = 5}

--指玄
ModelConfig[9645] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.61, zoffset = 5}

--沉薰
ModelConfig[9721] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.36, zoffset = 5}

--傲空
ModelConfig[9722] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.63, zoffset = 7}

--吟溪·神
ModelConfig[9773] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.69, zoffset = 5}

--吟溪·圣
ModelConfig[9685] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.69, zoffset = 5}

--莫莫
ModelConfig[9720] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.72, zoffset = 5}

--招喵
ModelConfig[9690] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -4.11, zoffset = 9}

--瞬影
ModelConfig[9719] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.35, zoffset = 5}

--烟魅
ModelConfig[9750] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.32, zoffset = 5}

--飞驰
ModelConfig[9754] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = -0.38, zoffset = 5}

--逐波·神
ModelConfig[9861] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -2.45, zoffset = 5}

--逐波·圣
ModelConfig[9791] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -2.45, zoffset = 5}

--御风
ModelConfig[9840] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.06, zoffset = 5}

--炎炎
ModelConfig[9792] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.75, yoffset = -0.41, zoffset = 5}

--问天
ModelConfig[9813] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.27, yoffset = -2.04, zoffset = 5}

--麟霞
ModelConfig[9894] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.43, yoffset = -0.22, zoffset = 5}

--桐雀
ModelConfig[9842] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.4, zoffset = 5}

--锦湛
ModelConfig[9812] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.9, zoffset = 5}

--醒时
ModelConfig[9841] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.22, yoffset = -0.27, zoffset = 5}

--御电
ModelConfig[9749] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -0.4, zoffset = 5}

--坠云
ModelConfig[9868] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -2.79, zoffset = 5}

--若竹
ModelConfig[9782] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -4.96, zoffset = 9}

--帝星
ModelConfig[9893] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0 ,zoffset = 5}

--寒魄
ModelConfig[9873] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.58, yoffset = -1.46, zoffset = 5}

--灵轩·神
ModelConfig[9988] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.62, yoffset = 0 ,zoffset = 5}

--灵轩·圣
ModelConfig[9926] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.62, yoffset = 0 ,zoffset = 5}

--幻梦
ModelConfig[9901] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = -0.56 ,zoffset = 5}

--忘忧
ModelConfig[9925] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.45 ,zoffset = 6}

--明镜
ModelConfig[9936] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.55, yoffset = -2.6 ,zoffset = 5}

--旋忆
ModelConfig[9939] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.29 ,zoffset = 5}

--青空
ModelConfig[9970] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.15, yoffset = -2.48 ,zoffset = 6}

--夜宴·神
ModelConfig[10050] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.61 ,zoffset = 5}

--夜宴·圣
ModelConfig[9969] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.61 ,zoffset = 5}

--翩跹
ModelConfig[9997] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.75 ,zoffset = 5}

--墨魂·神
ModelConfig[10074] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.37 ,zoffset = 5}

--墨魂·圣
ModelConfig[9998] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.37 ,zoffset = 5}

--胜雪
ModelConfig[10024] = {scale = 1, roatate = 60, fov = 60, far = 20, xoffset = 1.16, yoffset = -1.34 ,zoffset = 10}

--渡云
ModelConfig[10023] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.14 ,zoffset = 5}

--铃兰
ModelConfig[9934] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.72 ,zoffset = 6}

--赤霄
ModelConfig[10112] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.13 ,zoffset = 6}

--戏浪
ModelConfig[10019] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = -0.49 ,zoffset = 5}

--白瑜
ModelConfig[10049] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.4, zoffset = 8}

--浮生
ModelConfig[10054] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.6, yoffset = -0.15 ,zoffset = 5}

--绝色
ModelConfig[10117] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -3.35, zoffset = 6}

--云岫·神
ModelConfig[10150] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4.65 ,zoffset = 8.5}

--云岫·圣
ModelConfig[10075] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4.65 ,zoffset = 8.5}

--疾风
ModelConfig[10085] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.43, yoffset = -0.37 ,zoffset = 6.5}

--虹铭·神
ModelConfig[10198] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.85, yoffset = -2.86 ,zoffset = 6}

--虹铭·圣
ModelConfig[10119] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.85, yoffset = -2.86 ,zoffset = 6}

--幽玄
ModelConfig[10199] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.43 ,zoffset = 5}

--猎翼
ModelConfig[10118] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.11, yoffset = -0.32 ,zoffset = 5}

--绒绒
ModelConfig[10123] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.09, yoffset = -0.5 ,zoffset = 5}

--炎焱
ModelConfig[10143] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.57, yoffset = -0.51 ,zoffset = 5}

--菁翩
ModelConfig[10149] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.01 ,zoffset = 5}

--青颂·神
ModelConfig[10242] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.7, yoffset = -0.7 ,zoffset = 6}

--青颂·圣
ModelConfig[9960] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.7, yoffset = -0.7 ,zoffset = 6}

--雪媚
ModelConfig[10148] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = -0.43,zoffset = 5}

--赤嫣
ModelConfig[10177] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.63, yoffset = -2.13,zoffset = 5}

--墨颜
ModelConfig[10271] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.17, yoffset = -0.5,zoffset = 5}

--年婳
ModelConfig[10180] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.9, yoffset = -3.03,zoffset = 6}

--乐迪
ModelConfig[10214] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.45,zoffset = 5}

--赤离
ModelConfig[10270] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -0.16,zoffset = 5}

--雀羽
ModelConfig[10213] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.37,zoffset = 5}

--至泽·神
ModelConfig[10295] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.51,zoffset = 5}

--至泽·圣
ModelConfig[10239] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.51,zoffset = 5}

--绯霞
ModelConfig[10296] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.33, yoffset = -1.47,zoffset = 5}

--疾蜂
ModelConfig[10269] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.88,zoffset = 5}

--犀婳
ModelConfig[10265] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.53, yoffset = -0.27,zoffset = 5}

--乐鼓
ModelConfig[10212] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.63, yoffset = -2.41,zoffset = 5}

--沌仓
ModelConfig[10275] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 5}

--凌霄
ModelConfig[10282] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.66, yoffset = -0.23,zoffset = 5}

--船夏
ModelConfig[10294] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -3.52,zoffset = 8}

--灵迅
ModelConfig[10316] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.25,zoffset = 5}

--巫遥
ModelConfig[10281] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.16, yoffset = -2.25,zoffset = 5}

--盗羽
ModelConfig[10351] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.36,zoffset = 5}

--巨居
ModelConfig[10354] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -0.82,zoffset = 5}

--樱夏
ModelConfig[10353] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.62,zoffset = 7}

--魅狸
ModelConfig[10398] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 5}

--金玉
ModelConfig[10446] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.25, yoffset = -0.87,zoffset = 6}

--圣哈
ModelConfig[10397] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 5}

--雷默
ModelConfig[10487] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.4,zoffset = 5}

--旋彩
ModelConfig[10396] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.42,zoffset = 5}

--凉夏
ModelConfig[10406] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.4,zoffset = 5}

--甲克·神
ModelConfig[10501] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.34,zoffset = 5}

--甲克·圣
ModelConfig[10428] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.34,zoffset = 5}

--轻风
ModelConfig[10407] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.24, yoffset = -2.43,zoffset = 6}

--焙烈
ModelConfig[10425] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.42,zoffset = 5}

--御剑
ModelConfig[10451] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = -2.55,zoffset = 5}

--霄云
ModelConfig[10484] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.17, yoffset = -2.1,zoffset = 7}

--妙兮
ModelConfig[10499] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.63, yoffset = -0.8,zoffset = 7}

--雪陌·神
ModelConfig[10556] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.67, yoffset = -0.2,zoffset = 5}

--雪陌·圣
ModelConfig[10485] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.67, yoffset = -0.2,zoffset = 5}

--陌上
ModelConfig[10486] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.12,zoffset = 6}

--玉姬
ModelConfig[10502] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.34,zoffset = 5}

--梦霞
ModelConfig[10525] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 5}

--喵呜
ModelConfig[10535] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.6,zoffset = 5}

--花洛
ModelConfig[10536] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.8,zoffset = 5}

--擎宇
ModelConfig[10558] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.15, yoffset = -0.65,zoffset = 6}

--仔仔
ModelConfig[10557] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.65,zoffset = 6.5}

--赤焰
ModelConfig[10632] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = -0.4,zoffset = 5}

--仙梦
ModelConfig[10629] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -2.64,zoffset = 8}

--盗风
ModelConfig[10581] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.53, yoffset = -2.5,zoffset = 8}

--趣夏
ModelConfig[10590] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.48, yoffset = -2.1,zoffset = 6}

--希萌·神
ModelConfig[10680] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -0.33,zoffset = 5}

--希萌·圣
ModelConfig[10589] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = -0.33,zoffset = 5}

--翠逸
ModelConfig[10609] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.82, yoffset = -0.55,zoffset = 7}

--赤焱
ModelConfig[10608] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.54, yoffset = -0.29,zoffset = 5}

--子懿
ModelConfig[10630] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.15, yoffset = -0.36,zoffset = 5}

--蟹堡
ModelConfig[10679] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.31,zoffset = 5}

--二鼠
ModelConfig[10631] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.31,zoffset = 5}

--负雪·神
ModelConfig[10681] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.31,zoffset = 5}

--负雪·圣
ModelConfig[10797] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.31,zoffset = 5}

--极鲜
ModelConfig[10740] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.96,zoffset = 8.27}

--乐台
ModelConfig[10739] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.72,zoffset = 8.63}

--啸天
ModelConfig[10702] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.31,zoffset = 5}

--横舟·神
ModelConfig[10808] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.66,zoffset = 8.35}

--横舟·圣
ModelConfig[10704] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.66,zoffset = 8.35}

--衔芝
ModelConfig[10762] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -0.59,zoffset = 6.86}

--海灵
ModelConfig[10761] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.27, yoffset = -2.18,zoffset = 8.36}

--暴烈
ModelConfig[10809] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.23, yoffset = 0,zoffset = 5.57}

--蔚梧
ModelConfig[10741] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.06, yoffset = -0.37,zoffset = 5.94}

--灰切
ModelConfig[10876] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.27,zoffset = 7.11}

--礼鲤
ModelConfig[10775] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.04, yoffset = -2.62,zoffset = 5.23}

--招财
ModelConfig[10776] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = 0.4,zoffset = 3.1}

--杰克
ModelConfig[10886] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5.26}

--帕姆·神
ModelConfig[10890] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 4.7}

--帕姆·圣
ModelConfig[10891] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 4.7}

--三愿
ModelConfig[10899] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset =-2.48,zoffset = 7.02}

--沃尔
ModelConfig[10925] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 4.7}

--阿飞·圣
ModelConfig[10926] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5}

--阿飞·神
ModelConfig[10927] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5}

--青风
ModelConfig[10826] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 4.45}

--芙蕖
ModelConfig[10825] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 4.45}

--霸道
ModelConfig[10956] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -0.39,zoffset = 6.16}

--骸托
ModelConfig[10975] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.36, yoffset = 0.18,zoffset = 4.17}

--远遥·圣
ModelConfig[10982] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 6}

--远遥·神
ModelConfig[10976] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 6}

--舞空
ModelConfig[10983] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4.14,zoffset = 9.68}

--鲸虹
ModelConfig[10986] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.84, yoffset = -2.36,zoffset = 6}

--翡瀑
ModelConfig[10987] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.19, zoffset = 5}

--喵车
ModelConfig[11034] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 6}

--甜甜舞
ModelConfig[10902] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 7}

--蝶纤·神
ModelConfig[11031] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 8}

--蝶纤·圣
ModelConfig[11030] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 8}

--弘章
ModelConfig[11033] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -2,zoffset = 5}

--钛钨
ModelConfig[11032] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.6,zoffset = 5}

--油呦
ModelConfig[11050] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = 0,zoffset = 4}

--蓝宝
ModelConfig[11051] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.25,zoffset = 5}

--华盖
ModelConfig[11060] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5}

--荷棠
ModelConfig[11068] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 5}

--陵狩
ModelConfig[11074] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0,zoffset = 5}

--熊罴
ModelConfig[11079] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5}

--瞬飞
ModelConfig[11081] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 6}

--糖姜
ModelConfig[11086] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 7}

--牧灵
ModelConfig[11085] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0,zoffset = 5}

--糖果屋
ModelConfig[11108] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -2.82,zoffset = 6}

--大福
ModelConfig[11127] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 6.5}

--枝红
ModelConfig[11134] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5,zoffset = 5}

--雷龙
ModelConfig[11133] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.48, zoffset = 5}

--熔山
ModelConfig[11146] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = 0, zoffset = 5}

--梅露
ModelConfig[11144] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 5}

--机械虎
ModelConfig[11145] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.08, zoffset = 5}

--铜山
ModelConfig[11176] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--盘盘
ModelConfig[11175] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--烈炎·圣
ModelConfig[11197] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--烈炎·神
ModelConfig[11198] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--柏克
ModelConfig[11199] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.38, yoffset = -0.37, zoffset = 7}

--风雷
ModelConfig[11206] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--无滑
ModelConfig[11207] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3, yoffset = 0, zoffset = 5}

--獴呑
ModelConfig[11231] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.64, yoffset = 0, zoffset = 5}

--饮胜
ModelConfig[11233] = {scale = 1, roatate = -60, fov = 60, far = 10, xoffset = 0, yoffset = -2.8, zoffset = 5}

--大禄
ModelConfig[11252] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.5,zoffset = 6.5}

--瓜艇
ModelConfig[11258] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4,zoffset = 6}

--糯香·圣
ModelConfig[11280] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 5}

--糯香·神
ModelConfig[11281] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3,zoffset = 5}

--葡西
ModelConfig[11289] = {scale = 1, roatate = -60, fov = 60, far = 10, xoffset = 0, yoffset = -2.8, zoffset = 5}

--流苏·圣
ModelConfig[11308] = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--流苏·神
ModelConfig[11309] = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--欢乐号
ModelConfig[11313] = {scale = 1, roatate = -40, fov = 60, far = 10, xoffset = 0, yoffset = -3.7, zoffset = 5}

--战狼
ModelConfig[11314] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.27, zoffset = 5}

--白葫
ModelConfig[11323] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.2, zoffset = 4}

--蜗蜗
ModelConfig[11324] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = 0.45, zoffset = 4.2}

--圣洁
ModelConfig[11346] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = 0.3, zoffset = 4}

--渡渡
ModelConfig[11365] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.3, zoffset = 4}

--象钟
ModelConfig[11368] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.35, zoffset = 5}

--白驼
ModelConfig[11391] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--荷亭
ModelConfig[11392] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.3, zoffset = 6}

--不离·圣
ModelConfig[11399] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3.3, zoffset = 7}

--不离·神
ModelConfig[11400] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -3.3, zoffset = 7}

--海蕴
ModelConfig[11405] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5}

--蓝羽
ModelConfig[11424] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.5, yoffset = -0.5, zoffset = 8}

--血翼
ModelConfig[11427] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.33, yoffset = -0.18, zoffset = 5}

--肖怨
ModelConfig[11428] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--势至
ModelConfig[11437] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--冰魂
ModelConfig[11436] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--绕梁
ModelConfig[11460] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -2, zoffset = 4.5}

--翻山
ModelConfig[11479] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -3, zoffset = 4.5}

--种花·圣
ModelConfig[11480] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--种花·神
ModelConfig[11481] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--蒲卢
ModelConfig[11489] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.5, zoffset = 8}

--种花·神
ModelConfig[11490] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = -0.27, zoffset = 5}

--童谣
ModelConfig[11521] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--闪耀
ModelConfig[11541] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.2, zoffset = 5}

--神宓
ModelConfig[11540] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--沙之王
ModelConfig[11546] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--凰尊·圣
ModelConfig[11551] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4, zoffset = 5}

--凰尊·神
ModelConfig[11552] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4, zoffset = 5}

--地精坦克
ModelConfig[11560] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--琴香
ModelConfig[11579] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5.5}

--如斯·圣
ModelConfig[11580] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 4}

--如斯·神
ModelConfig[11581] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 4}

--澄澈
ModelConfig[11604] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.8, zoffset = 3}

--机械龙
ModelConfig[11609] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2, zoffset = 5}

--蓝颜
ModelConfig[11610] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.27, yoffset = 0.14, zoffset = 4}

--无邪
ModelConfig[11642] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = 0, zoffset = 5}

--菲脂·圣
ModelConfig[11661] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 4}

--菲脂·神
ModelConfig[11662] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 4}

--朝凤
ModelConfig[11666] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4, zoffset = 5}

--天工
ModelConfig[11693] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 5}

--海力
ModelConfig[11694] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.14, zoffset = 3}

--委屈鸭
ModelConfig[11671] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2, zoffset = 7}

--蓝奇
ModelConfig[11702] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.1, zoffset = 4}

--鱼饥
ModelConfig[11709] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 4}

--九白
ModelConfig[11707] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--荷寨
ModelConfig[11708] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.21, yoffset = -4.16, zoffset = 10}

--馥郁
ModelConfig[11736] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = -3, zoffset = 5}

--翼行·圣
ModelConfig[11733] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.65, zoffset = 6.5}

--翼行·神
ModelConfig[11734] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.65, zoffset = 6.5}

--宝泉
ModelConfig[11735] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.45, yoffset = 0, zoffset = 5}

--天蝎
ModelConfig[11790] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.4, yoffset = 0, zoffset = 5}

--函谷
ModelConfig[11794] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--玛卡
ModelConfig[11798] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--大头
ModelConfig[11802] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2, zoffset = 4.5}

--星石
ModelConfig[11825] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.65, zoffset = 6.5}

--奇诡
ModelConfig[11824] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5.5}

--扶摇
ModelConfig[11848] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 9}

--樱飞
ModelConfig[11847] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -2, zoffset = 6}

--白幽
ModelConfig[11856] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4.5}

--灵澜
ModelConfig[11857] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 7}

--跃崇
ModelConfig[11858] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.16, yoffset = -0.7, zoffset = 6}

--大亨
ModelConfig[11888] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.2, zoffset = 3.5}

--厨师鸭
ModelConfig[11910] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2, zoffset = 3}

--三柴
ModelConfig[11911] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--凤台·圣
ModelConfig[11918] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.5, zoffset = 6}

--凤台·神
ModelConfig[11919] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.5, zoffset = 6}

--橡樽
ModelConfig[11917] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.33, zoffset = 3.5}

--鹿柏
ModelConfig[11926] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.5, zoffset = 9}

--鳄懵
ModelConfig[11931] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.29, yoffset = 0.27, zoffset = 4.5}

--浮舟
ModelConfig[11950] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4, zoffset = 8}

--凶象
ModelConfig[11951] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--汹汹
ModelConfig[11973] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.15, yoffset = 0.45, zoffset = 2.8}

--超影·圣
ModelConfig[11976] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--超影·神
ModelConfig[11977] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--奥黛
ModelConfig[11982] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = 0.25, zoffset = 3}

--飘摇
ModelConfig[12009] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -5.23, zoffset = 10}

--聚星
ModelConfig[12028] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--狐枫
ModelConfig[12033] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.5, zoffset = 2.5}

--混沌
ModelConfig[12034] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.1, yoffset = -0.5, zoffset = 5}

--深眠
ModelConfig[12044] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.9, zoffset = 9}

--冰噬
ModelConfig[12043] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -0.2, zoffset = 6}

--豹富
ModelConfig[12053] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0.42, zoffset = 3}

--莲舟
ModelConfig[12073] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.24, yoffset = -2.37, zoffset = 3.5}

--海盗帽
ModelConfig[12072] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.4, zoffset = 3}

--雅悦
ModelConfig[12096] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.33, zoffset = 3.5}

--英胜
ModelConfig[12097] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--情长·圣
ModelConfig[12122] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 7}

--情长·神
ModelConfig[12123] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 7}

--灵眸
ModelConfig[12129] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1.11, yoffset = -3.8, zoffset = 7.5}

--聚宝蛙
ModelConfig[12148] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--聪敏
ModelConfig[12153] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.4, yoffset = 0.3, zoffset = 3.5}

--布布
ModelConfig[12158] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--飞引
ModelConfig[12164] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -2.3, zoffset = 5.5}

--兰舟·圣
ModelConfig[12162] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.1, zoffset = 5}

--兰舟·神
ModelConfig[12163] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.1, zoffset = 5}

--公理
ModelConfig[12192] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.1, yoffset = -2.4, zoffset = 3.5}

--熊莽·圣
ModelConfig[12212] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.35, zoffset = 3.5}

--熊莽·神
ModelConfig[12213] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0.35, zoffset = 3.5}

--机械豹
ModelConfig[12211] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.77, yoffset = 0.25, zoffset = 4.5}

--海落
ModelConfig[12221] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.9, zoffset = 5}

--忠永
ModelConfig[12220] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.56, yoffset = -0.4, zoffset = 6}

--正义号
ModelConfig[12252] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.2, zoffset = 3.5}

--浮鲸
ModelConfig[12271] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.14, zoffset = 5}

--财财
ModelConfig[12272] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.6, zoffset = 6}

--掣电
ModelConfig[12273] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.3, yoffset = -1.8, zoffset = 6}

--狸狸
ModelConfig[12284] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--天河·圣
ModelConfig[12288] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.27, yoffset = -2.52, zoffset = 4.2}

--天河·神
ModelConfig[12289] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.27, yoffset = -2.52, zoffset = 4.2}

--卡丁
ModelConfig[12295] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.63, yoffset = 0, zoffset = 5}

--风灵
ModelConfig[12294] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = 0.25, zoffset = 3.5}

--万碗
ModelConfig[12320] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.48, zoffset = 3.5}

--龙城·圣
ModelConfig[12339] = {scale = 0.5, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.2, zoffset = 5}

--龙城·神
ModelConfig[12340] = {scale = 0.5, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.2, zoffset = 5}

--饮月
ModelConfig[12344] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.15, yoffset = 0.12, zoffset = 3.5}

--疏雪
ModelConfig[12343] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--探星
ModelConfig[12369] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.13, zoffset = 4}

--千里·圣
ModelConfig[12391] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -2.48, zoffset = 3.5}

--千里·神
ModelConfig[12392] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.58, yoffset = -2.48, zoffset = 3.5}

--文殊
ModelConfig[12396] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 1, yoffset = 0, zoffset = 5}

--镇海
ModelConfig[12403] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.48, yoffset = 0.05, zoffset = 4.5}

--雪祈
ModelConfig[12406] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.84, zoffset = 6}

--蛮弛
ModelConfig[12405] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.6, yoffset = 0.17, zoffset = 4}

--广厦
ModelConfig[12407] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.06, yoffset = -0.44, zoffset = 6}

--晶异虫
ModelConfig[12437] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5}

--潜夜
ModelConfig[12438] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.31, yoffset = -0.6, zoffset = 5}

--勇哈·圣
ModelConfig[12463] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = 0.28, zoffset = 3.5}

--勇哈·神
ModelConfig[12464] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = 0.28, zoffset = 3.5}

--甜牛
ModelConfig[12465] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.16, yoffset = 0.44, zoffset = 3}

--蝠烈
ModelConfig[12462] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5}

--石乐乐
ModelConfig[12466] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 3.5}

--飞石
ModelConfig[12480] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.14, yoffset = 0.11, zoffset = 4}

--寻蜜
ModelConfig[12502] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.96, yoffset = 0, zoffset = 5}

--折冠
ModelConfig[12508] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.2, yoffset = -3.15, zoffset = 5}

--伏土
ModelConfig[12512] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 3.5}

--勇气号
ModelConfig[12537] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.3,yoffset = -4, zoffset = 7}

--棘刺
ModelConfig[12539] = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4.5}

--通灵
ModelConfig[12538] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0,yoffset = 0, zoffset = 4}

--摧城
ModelConfig[12561] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0,yoffset = 0, zoffset = 5}

--摩罗
ModelConfig[12564] = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = 0.3,yoffset = -0.18, zoffset = 4.5}

--山雀
ModelConfig[12565] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.05, yoffset = -1.86, zoffset = 6}

--恶王座
ModelConfig[12574] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.96, zoffset = 6}

--海驰
ModelConfig[12575] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.9, zoffset = 5}

--探索号
ModelConfig[12585] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -1.9, zoffset = 5}

--金风
ModelConfig[12584] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -1.56, zoffset = 7}

--饮风·圣
ModelConfig[12607] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.58, zoffset = 5}

--饮风·神
ModelConfig[12608] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.58, zoffset = 5}

--伐木
ModelConfig[12606] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 5}

--影翼
ModelConfig[12621] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5}

--摩云
ModelConfig[12620] = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = 0, yoffset = -2.67, zoffset = 5}

--振翅
ModelConfig[12646] = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = -0.23, yoffset = -3.15, zoffset = 6}

--微微暖
ModelConfig[12665] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.29, zoffset = 5.5}

--唤灵·圣
ModelConfig[12684] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = 0, zoffset = 4}

--唤灵·神
ModelConfig[12685] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.12, yoffset = 0, zoffset = 4}

--霖柯
ModelConfig[12929] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.37, zoffset = 8}

--凝心
ModelConfig[12953] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.2, yoffset = -2.65, zoffset = 4}

--追月
ModelConfig[12960] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.08, zoffset = 3}

--龙宫
ModelConfig[12985] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.17, yoffset = -3.17, zoffset = 6}

--栖梧·圣
ModelConfig[13006] = {scale = 1, roatate = 28, fov = 60, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 6}

--栖梧·神
ModelConfig[13007] = {scale = 1, roatate = 28, fov = 60, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 6}

--独行
ModelConfig[13008] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -0.23, zoffset = 4}

--烟渺
ModelConfig[13019] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.88, zoffset = 4.5}

--玉衡
ModelConfig[13020] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3.01, zoffset = 4}

--舞水
ModelConfig[13045] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.8, yoffset = -2.3, zoffset = 6}

--渊火
ModelConfig[13046] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.28, yoffset = -0.32, zoffset = 5}

--转转
ModelConfig[13070] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.89, zoffset = 5}

--游芯
ModelConfig[13094] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.38, yoffset = -2.54, zoffset = 4.5}

--晶槎
ModelConfig[13098] = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = 0, yoffset = -2.7, zoffset = 4.5}

--戏彩
ModelConfig[13099] = {scale = 1, roatate = 30, fov = 60, far = 10, xoffset = 0, yoffset = -2.64, zoffset = 4.5}

--喵喵饭
ModelConfig[13279] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.6, zoffset = 3.5}

--机械猪
ModelConfig[13281] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 3}

--墨影·圣
ModelConfig[13305] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.41, yoffset = 0.32, zoffset = 3.5}

--墨影·神
ModelConfig[13306] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.41, yoffset = 0.32, zoffset = 3.5}

--诡愿
ModelConfig[13346] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.56, zoffset = 4.5}

--饭宝
ModelConfig[13347] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.57, zoffset = 4}

--甜品车
ModelConfig[13424] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.28, zoffset = 6}

--大蜂
ModelConfig[13447] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 4}

--阿叽
ModelConfig[13448] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.46, zoffset = 5}

--星轿·圣
ModelConfig[13475] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.9, zoffset = 8}

--星轿·神
ModelConfig[13476] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.9, zoffset = 8}

--棱星·圣
ModelConfig[13473] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.78, zoffset = 5}

--棱星·神
ModelConfig[13474] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.78, zoffset = 5}

--魔法兔
ModelConfig[13472] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -4.12, zoffset = 6}

--金狮
ModelConfig[13510] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.66, yoffset = 0.26, zoffset = 4}

--狻猊
ModelConfig[13509] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.44, yoffset = -0.12, zoffset = 5}

--朝凰
ModelConfig[13508] = {scale = 1, roatate = 20, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 8}

--十年
ModelConfig[13506] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--莲屏
ModelConfig[13507] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 3}

--劈风
ModelConfig[13516] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.32, yoffset = 0, zoffset = 4.5}

--飞镰
ModelConfig[13517] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.49, yoffset = -2.19, zoffset = 7}

--无忧
ModelConfig[13545] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4.5}

--诉衷
ModelConfig[13547] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -3.45, zoffset = 6}

--夜狼·圣
ModelConfig[13549] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = 0.33, zoffset = 3.5}

--夜狼·神
ModelConfig[13550] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.21, yoffset = 0.33, zoffset = 3.5}

--甜香
ModelConfig[13556] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.75, zoffset = 4}

--冒险豚
ModelConfig[13557] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.15, yoffset = 0.15, zoffset = 4}

--鳐鱼·圣
ModelConfig[13616] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.47, yoffset = -2, zoffset = 5.5}

--鳐鱼·神
ModelConfig[13617] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.47, yoffset = -2, zoffset = 5.5}

--购物车
ModelConfig[13647] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = 0.39, zoffset = 3}

--翡烟
ModelConfig[13670] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--御魂
ModelConfig[13692] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 4}

--霸空·圣
ModelConfig[13712] = {scale = 1, roatate = 10, fov = 60, far = 10, xoffset = 0, yoffset = -3.15, zoffset = 9}

--霸空·神
ModelConfig[13713] = {scale = 1, roatate = 10, fov = 60, far = 10, xoffset = 0, yoffset = -3.15, zoffset = 9}

--蝠狮鹫
ModelConfig[13722] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0, zoffset = 4}

--飞轮号
ModelConfig[13723] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -0.2, zoffset = 5}

--亚鸿
ModelConfig[13747] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.8, zoffset = 4}

--雪狮
ModelConfig[13748] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.23, yoffset = -1.82, zoffset = 5}

--岩牛
ModelConfig[13777] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.13, yoffset = 0.34, zoffset = 3.5}

--鉴光
ModelConfig[13801] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.5, zoffset = 3.5}

--心悦
ModelConfig[13820] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.38, yoffset = 0.1, zoffset = 4}

--海贼鸟
ModelConfig[13821] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.54, yoffset = -3, zoffset = 5}

--赤电
ModelConfig[13828] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.56, zoffset = 4}

--雪礼
ModelConfig[13836] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.36, yoffset = -4, zoffset = 9}

--欢欢·圣
ModelConfig[13837] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0, zoffset = 5}

--欢欢·神
ModelConfig[13838] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.5, yoffset = 0, zoffset = 5}

--尼斯
ModelConfig[13834] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--森灵
ModelConfig[13835] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -0.4, zoffset = 5}

--震音
ModelConfig[13907] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -2.55, zoffset = 4}

--大雪人
ModelConfig[13908] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.12, yoffset = 0, zoffset = 4}

--亚鲁
ModelConfig[13932] = {scale = 1, roatate = 0, fov = 60, far = 10, xoffset = 0, yoffset = -1, zoffset = 9}

--驼驼
ModelConfig[13937] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--连心船
ModelConfig[13956] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -3, zoffset = 5}

--小黄蜂
ModelConfig[13978] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = 0, zoffset = 4}

--魔法毯
ModelConfig[13982] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0, yoffset = -2.8, zoffset = 6}

--洪流
ModelConfig[13983] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = -0.47, yoffset = -1.32, zoffset = 8}

--颤栗
ModelConfig[13996] = {scale = 1, roatate = 60, fov = 60, far = 10, xoffset = 0.18, yoffset = 0.44, zoffset = 3}
-----------------------------------------------
return 
{
	RideBookActivityID = RideBookActivityID, 
	Score_Max_Count = Score_Max_Count,
	Left_Icon_Count = Left_Icon_Count,
	Right_Icon_Count = Right_Icon_Count,
	unLockLevelLimits = unLockLevelLimits,
	ShowHideUI = showHideUI,
	RideAttributeCfgs = RideAttributeCfgs,
	ModelConfig = ModelConfig,
}
	