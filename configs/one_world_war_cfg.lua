-- one_world_war_cfg.lua
--跨地区战配置文件 
 	--REPUID_GLOBAL_SCORE = 214, --全球战个人声望
    	--REPUID_GLOBAL_TICKET = 215, --全球战个人货币
    	--REPUID_GLOBAL_ENTER = 218, --全球战进入声望
local ConfigID = 7788 --台湾地区 跨版本玩法本区
local Area_ConfigID = 7875 --台湾地区 各地区配置 中心区
local CampImagPath = RESPATH.OldPlayer --显示的阵营图片资源路径
local CampNameConfig = 
{
	[1] = {
		name = "中國大陸",
		imgname = "China",
	},
	[2] = {
		name = "台港澳",
		imgname = "TaiWan",
	},
	[3] = {
		name = "韓國",
		imgname = "Korea",
	},
}
--跨版本服中 用声望购买物品，凡是花费这里配置的声望的物品，都是跨地区服的（现在只在BobyShop）
local Goods_Repu = 
{
	[215] = true, --[声望ID] = true 表示 
}

--字体文件配置信息  每个版本需要单独修改 当前版本选择HT7000名称，其他版本需带后缀_
local OneWorldTTFConfig = 
{
	[1] = {
		name = "中國大陸",
		--ttfpath = "Arts/Res/UI/Fonts/HT7000.ttf.u3dext",
		ttfpath = "Arts/Res/UI/Fonts/HT7000_1.ttf.u3dext",
		--prefabpath = "Arts/Res/UI/Fonts/HT7000.prefab.u3dext",
		prefabpath = "Arts/Res/UI/Fonts/HT7000_1.prefab.u3dext",
	},
	[2] = {
		name = "台港澳",
		ttfpath = "Arts/Res/UI/Fonts/HT7000.ttf.u3dext",
		--ttfpath = "Arts/Res/UI/Fonts/HT7000_2.ttf.u3dext",
		prefabpath = "Arts/Res/UI/Fonts/HT7000.prefab.u3dext",
		--prefabpath = "Arts/Res/UI/Fonts/HT7000_2.prefab.u3dext",
	},
	[3] = {
		name = "韓國",
		--ttfpath = "Arts/Res/UI/Fonts/HT7000.ttf.u3dext",
		ttfpath = "Arts/Res/UI/Fonts/HT7000_3.ttf.u3dext",
		--prefabpath = "Arts/Res/UI/Fonts/HT7000Font.prefab.u3dext",
		prefabpath = "Arts/Res/UI/Fonts/HT7000_3.prefab.u3dext",
	},
}
local RequestHistoryCoolTime = 2 --请求历史战绩 冷却2s
local One_World_Game_All_Config = 7862
local WarRepuID = 214 --全球战个人声望
local MoneyRepuID = 215 --全球战个人货币声望ID
local RepuExchangeShopID = 15560 --全球战声望兑换 商店出售服务配置ID
local UIBtnNameToIndex = 
{
	["Btn_Introduce"] = 1,
	["Btn_Conditions"] = 2,
	["Btn_Reward"] = 3,
	["Btn_Monery"] = 4,
	["Btn_History"] = 5,
} 
local UIBtnIndexToName = 
{
	[1] = "Btn_Introduce",
	[2] = "Btn_Conditions",
	[3] = "Btn_Reward",
	[4] = "Btn_Monery",
	[5] = "Btn_History",
} 
--没激活和激活的颜色
local LABEl_COLOR = 
{
	[1] = "[808080]", --灰色
	[2] = "[33ff00]", --橙色
}
local Page_ItemNum = 4   --每页出售物品数量
local Rdo_Distance = 30  --分页按钮之间距离
local Page_Width = 570   --每页的区域宽度
return {
	ConfigID = ConfigID,
	Area_ConfigID = Area_ConfigID,
	One_World_Game_All_Config = One_World_Game_All_Config,
	UIBtnNameToIndex = UIBtnNameToIndex,
	UIBtnIndexToName = UIBtnIndexToName,
	WarRepuID = WarRepuID,
	MoneyRepuID = MoneyRepuID,
	LABEl_COLOR = LABEl_COLOR,
	RepuExchangeShopID = RepuExchangeShopID,
	Page_ItemNum = Page_ItemNum,
	Rdo_Distance = Rdo_Distance,
	Page_Width = Page_Width,
	CampImagPath = CampImagPath,
	CampNameConfig = CampNameConfig,
	RequestHistoryCoolTime = RequestHistoryCoolTime,
	OneWorldTTFConfig = OneWorldTTFConfig,
	Goods_Repu = Goods_Repu,
}

