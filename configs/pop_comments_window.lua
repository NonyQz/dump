
local Configs = {}
Configs.cfgs = {}
function Configs:addConfig(name)
	return function (tab)
		Configs.cfgs[name] = tab
	end
end


--[[ 条件类型:  nation_war_win ->国战是否胜利 (value: true 胜利)
				has_item	->获得物品 (value: 物品ID)
				has_item_type ->获得某类型物品 (value: 物品处理类型)
				fight_value_above 战斗力条件
				(其余同 function_unlock.lua)
]]

Configs.windowLife = 10 --N秒自动删除
Configs.storeCommentsUrl = "https://appsto.re/cn/APc96.i"--手机AppStore评价地址
Configs.forumCommentsUrl = "http://bbs.g.qq.com/forum-56860-1.html"--论坛地址
Configs.activity = 6891   --活动ID
Configs.task = 2641       --点击按钮发任务

--[[
	desc:	描述
	condition:  条件
	onceMode: false->游戏更新到新版本后也会弹
]]
Configs:addConfig("1111")
{
	desc = "恭喜將軍將等級提升至36級，從現在開始，將軍可以創建幫會，參與國戰，體驗遊戲中的豐富玩法了，不知將軍對我們的遊戲有什麼想說的嗎？",
	condition = {type="level_above", value=36},
	onceMode = false,
}

Configs:addConfig("nation_war_wi")
{
	desc = "在將軍和同伴們的努力下，力挫敵國，取得了國戰勝利！來評價一下我們遊戲，分享您的克敵之道如何？",
	condition = {type="nation_war_win", value=true},
	onceMode = false,
}

Configs:addConfig("has_item_typ")
{
	desc = "將軍今日鴻運當頭，竟然獲得這等珍貴的道具，先不要洗手，來評價一下我們的遊戲如何？",
	condition = {type="has_item_type", value={6, 0x00000020}},
	onceMode = false,
}

Configs:addConfig("fight100W")
{
	desc = "恭喜將軍召喚出洪荒之力，武功更進一層，將戰鬥力提升到1000000，此後征戰天下，難逢敵手！何不來發表一下對我們遊戲的高見？",
	condition = {type="fight_value_above", value=1000000},
	onceMode = false,
}

Configs:addConfig("fight1000W")
{
	desc = "恭喜將軍召喚出洪荒之力，武功更進一層，將戰鬥力提升到10000000，此後征戰天下，難逢敵手！何不來發表一下對我們遊戲的高見？",
	condition = {type="fight_value_above", value=10000000},
	onceMode = false,
}

return Configs
