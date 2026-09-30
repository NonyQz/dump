
local isInGameClient = ...
if not isInGameClient then	--后者单独运行时

end

local ECItemTools = isInGameClient and require "Inventory.ECItemTools"
local ECEquipDesc = isInGameClient and require "Data.ECEquipDesc"
local ECGUITools = isInGameClient and require "GUI.ECGUITools"
local ElementData = isInGameClient and require "Data.ElementData"

local Blessing = Blessing or {}
Blessing.Cfg = Blessing.Cfg or {}
Blessing.Quality = Blessing.Quality or {}
Blessing.Quality =
{
	[2] = "黃色",
	[3] = "藍色",
	[4] = "綠色",
	[5] = "紫色",
}

Blessing.LevelMapID =
{
	[2] = 2609,
	[20] = 2611,
	[30] = 2612,
	[40] = 2613,
	[45] = 2614,
	[50] = 2615,
	[55] = 2616,
}

Blessing.Cfg =
{
	--祝福感谢
	[3] =
	{
		[0] =
		{
			content = {
				[1] = "你的好友<#player_name#>對您的祝福表示感謝",
				[2] = "有緣人<#player_name#>對您的祝福表示感謝",
			},
		},
	},
	--祝福相关
	[2] =
	{
		[0] =
		{
			content = {
				[1] = "你的好友<#player_name#>對您進行的祝福，您獲得了#param_1#銀子!",
				[2] = "有緣人<#player_name#>對您進行的祝福，您獲得了#param_1#銀子!",
			},
			_tostring_1 = function(param1)
				if not isInGameClient then
					return ""
				end
				local cfg = ElementData.getConfig(special_id_config.id_special_id_config)
				if not cfg then return "" end
				local tid = cfg.friend_blessed_grant_reward_id[param1]
				local ens = ElementData.getConfig(tid)
				if not ens then return "" end

				return ECGUITools.SetMoneyString(ens.basic_bound_money)
			end,
		},
		[1] =
		{
			content = {
				[1] = "你的好友<#player_name#>對您讚賞有加，堅信您能升級到#param_3#級，您獲得了#param_1#銀子!",
				[2] = "有緣人<#player_name#>對您讚賞有加，堅信您能升級到#param_3#級，您獲得了#param_1#銀子!",
			},
			_tostring_1 = function(param1)
				if not isInGameClient then
					return ""
				end
				local cfg = ElementData.getConfig(special_id_config.id_special_id_config)
				if not cfg then return "" end
				local tid = cfg.friend_blessed_grant_reward_id[param1]
				local ens = ElementData.getConfig(tid)
				if not ens then return "" end

				return ECGUITools.SetMoneyString(ens.basic_bound_money)
			end,
			_tostring_3 = function(param3) --param3:FRIEND_BLESSING_CONFIG
				if not isInGameClient then
					return ""
				end
				local blessCfg = ElementData.getConfig(param3)
				if not blessCfg then
					warn(("Blessing can not getConfig(id:%d)"):format(param3))
					return ""
				end
				return blessCfg.invest_value
			end,
		},
	},
	--邀请祝福
	[1] =
	{	-- 0:等级提升
		[0]=
		{
			content = {
				[1] = "你的好友<#player_name#>經過不懈努力，提升至#param_3#級，趕快給他一個祝福吧！",
				[2] = "有緣人<#player_name#>經過不懈努力，提升至#param_3#級，趕快給他一個祝福吧！",
			},
			_tostring_3 = function(param3)
				return tostring(param3)
			end,
		},
		------------------------------
		--后面暂时没有设计
		-- 2:装备炼星
		[2] =
		{
			content = {
				[1] = "你的好友<#player_name#>經過千錘百煉，將#param_2#煉星至#param_3#星，戰力大幅提升，趕快給他一個祝福吧！",
				[2] = "有緣人<#player_name#>經過千錘百煉，將#param_2#煉星至#param_3#星，戰力大幅提升，趕快給他一個祝福吧！",
			},
			_tostring_2 = function(param2)
				if not isInGameClient then
					return ""
				end
				return ECItemTools.GetNormalName(param2)
			end,
			_tostring_3 = function(param3)
				return tostring(param3)
			end,
		},
		-- 3:装备锻造
		[3] =
		{
			content = {
				[1] = "你的好友<#player_name#>將#param_2#鍛造為#param_3#神裝，戰力大幅提升，趕快給他一個祝福吧！",
				[2] = "有緣人<#player_name#>將#param_2#鍛造為#param_3#神裝，戰力大幅提升，趕快給他一個祝福吧！",
			},
			_tostring_2 = function(param2)
				if not isInGameClient then
					return ""
				end
				return ECItemTools.GetNormalName(param2)
			end,
			_tostring_3 = function(param3)
				if not isInGameClient then
					return ""
				end
				local text = Blessing.Quality[param3] or ""
				local color = ECEquipDesc.GetTextColor(param3)
				if text:len() >0 then
					return color .. text .. "[-]"
				else
					return text
				end
			end,
		}
	}
}

--dofile "../Lua/Utility/malut.lua".printTable(Blessing.Cfg)

return Blessing
