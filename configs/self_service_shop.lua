
local ShopConfig = {}

function ShopConfig:getAllConfigs ()
	return ShopConfig
end

function ShopConfig:addConfig(config)
	if config then
		ShopConfig[#ShopConfig + 1] = config
	end
end

-- 拼酒积分随身商店
ShopConfig:addConfig
{
	panel_name = RESPATH.Panel_Wine_Shop,
	shop_tid = 7414,	--积分商店出售配置id
	service_index = 5,	----积分商店服务id
	rep_id = REPUID.WINE_SCORE, --积分的声望类型
	title_sprite = "wine_shop",
	rep_name = "積分",
	rep_not_enough = "拼酒積分不足",
	buy_confirm = "你確定花費%d積分購買嗎？",
}

-- 跨服战随身商店
ShopConfig:addConfig
{
	panel_name = RESPATH.Panel_ServiceWar_Shop,
	shop_tid = 7878,	--积分商店出售配置id
	service_index = 6,	----积分商店服务id
	rep_id = REPUID.ROAM_REWARD, --积分的声望类型
	-- title_sprite = "wine_shop", --由于panel不同，所以不用再设置界面图片
	current_title = function () return require "Main.ECServerWarMan".GetCurrentTitle()	end,
	rep_name = "天下號令",
	rep_not_enough = "您的天下號令不足",
	buy_confirm = "你確定花費%d天下號令購買嗎？",
}

-- 幸运转盘随身商店
ShopConfig:addConfig
{
	panel_name = RESPATH.Panel_LuckySpin_Shop,
	shop_tid = 10735,	--积分商店出售配置id
	service_index = 7,	----积分商店服务id
	item_id = 11394, 
	current_title = function () return require "Main.ECServerWarMan".GetCurrentTitle()	end,
	rep_not_enough = "您的六龍徽記不足",
	buy_confirm = "你確定花費%d六龍徽記購買嗎？",
}

ShopConfig:addConfig
{
	panel_name = RESPATH.Panel_LuckySpin_Shop,
	shop_tid = 11887,	--积分商店出售配置id
	service_index = 9,	----积分商店服务id
	item_id = 11876, 
	title_sprite = "Ig_duhuan",
	--current_title = function () return require "Main.ECServerWarMan".GetCurrentTitle()	end,
	rep_not_enough = "您的寶箱碎片不足",
	buy_confirm = "你確定花費%d寶箱碎片購買嗎？",
}

--据点争夺商店
ShopConfig:addConfig
{
	panel_name = RESPATH.Panel_LuckySpin_Shop,
	shop_tid = 12170,	--积分商店出售配置id
	service_index = 10,	----积分商店服务id
	item_id = 11976, 
	title_sprite = "Ig_duhuan",
	--current_title = function () return require "Main.ECServerWarMan".GetCurrentTitle()	end,
	rep_not_enough = "您的據點獎章不足",
	buy_confirm = "你確定花費%d據點獎章購買嗎？",
}
return ShopConfig