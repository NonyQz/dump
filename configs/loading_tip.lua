--step1：如进入其它国家时，显示独特的载入信息：

local loading_tip_diff_faction = {}
loading_tip_diff_faction[1] = "您已進入了其它國家的領土，不同國家勇士間可以自由戰鬥"
loading_tip_diff_faction[2] = "在其它國家領土中戰敗，安全復活時會返回本國王城"
loading_tip_diff_faction[3] = "36級就可以參加國戰了，不僅能叱吒沙場，還有大量獎勵"
loading_tip_diff_faction[4] = "國戰時，國戰復活是完全免費的，復活後又是一條好漢"
loading_tip_diff_faction[5] = "國戰時可點擊國戰資訊介面上的傳送按鈕，直接傳送到守將處"
loading_tip_diff_faction[6] = "國戰時，當光輝祭司和暗夜祭司都屬於防守方時，守護神是無敵的"

--step2：在本国，当时场景切换时，如果满足独特的条件，显示固定的载入信息：
--条件包括以下几种：lv_min最低等级，lv_max最高等级，mapid地图号，ld_string载入信息
--其中通常有两种情况：
--A、对于新手阶段流程中，如果需要特定的阶段显示特定的提示，通常lv_min，lv_max，mapid都填，
--   mapid如填大地图id，则会导致从副本出来，以及断线重连都会显示这句话
--   mapid填0，不限地图
--B、对于游戏中期进入特定地图必须显示固定的话，则lv_min为0，lv_max为9999，只填mapid即可
--   暂时没去支持进入特定地图随机喊话，需要随时加
--需要注意，loading_tip_cond是从上到下找的，找到一个就会停，因此如果条件设计不合理，后面条件可能完成碰不到

local loading_tip_cond = {}
--1级进入CG，一定能看到
loading_tip_cond[1] = {lv_min = 1,	lv_max =1,	map_id = 6004,	ld_string = "請稍侯，史詩級戰役即將上演……（遊戲載入時不消耗流量）"}
--1级进入新手村，一定能看到
loading_tip_cond[2] = {lv_min = 1,	lv_max =1,	map_id = 5009,	ld_string = "您的王朝即將開啟，歷史即將由您來譜寫。（遊戲載入時不消耗流量）"}
--进入山神庙（应为7级），一定能看到
loading_tip_cond[3] = {lv_min = 0,	lv_max =9999,	map_id = 6005,	ld_string = "連續[ffd926]登入2天[-]即可領取超級大獎——[00e104]30級卓越鎧甲[-]。"}		--您即将进入副本，通常只需“自动战斗”即可战胜众多敌人。
--2到15级进入新手村（山神庙返回应为9级），一定能看到
loading_tip_cond[4] = {lv_min = 2,	lv_max =15,	map_id = 5009,	ld_string = "連續[ffd926]登入2天[-]即可領取超級大獎——[00e104]30級卓越鎧甲[-]。"}
--进入火凤凰秘境（应为16级），一定能看到
loading_tip_cond[5] = {lv_min = 0,	lv_max =9999,	map_id = 6006,	ld_string = "連續[ffd926]登入3天[-]即可領取絕世豪禮——[FF00FF]至尊神羽[-]。"}		--副本挑战通常会较难，手动施放部分技能是胜利的关键。
--16到20级进入新手村（火凤密境返回应为17级），一定能看到
loading_tip_cond[6] = {lv_min = 16,	lv_max =20,	map_id = 5009,	ld_string = "連續[ffd926]登入3天[-]即可領取絕世豪禮——[FF00FF]至尊神羽[-]。"}
--21到30进入新手村（切图或登录游戏）
loading_tip_cond[7] = {lv_min = 21,	lv_max =30,	map_id = 5009,	ld_string = "每天登入可獲贈[FF00FF]奇珍異寶[-]，[ffd926]連送14天[-]領到手軟，29級點擊[ffd926]開服大禮[-]查看！"}
--20级进入王城，一定能看到
loading_tip_cond[8] = {lv_min = 20,	lv_max =20,	map_id = 5003,	ld_string = "您即將進入王城，很快便可參與國戰，建功立業！"}
--30级以前进剧情本1，一定能看到
loading_tip_cond[9] = {lv_min = 1,	lv_max =29,	map_id = 6015,	ld_string = "連續[ffd926]登入7天[-]即可領取神級卡牌——[FF00FF]紫卡曹操[-]。"}
--30级以前进经验本1，一定能看到
loading_tip_cond[10] = {lv_min = 1,	lv_max =29,	map_id = 6014,	ld_string = "連續[ffd926]登入7天[-]即可領取神級卡牌——[FF00FF]紫卡曹操[-]。"}
--21级30进入王城，一定能看到
loading_tip_cond[11] = {lv_min = 21,	lv_max =30,	map_id = 5003,	ld_string = "每天登入可獲贈[FF00FF]奇珍異寶[-]，[ffd926]連送14天[-]領到手軟，29級點擊[ffd926]開服大禮[-]查看！"}
--任何等级时进入剧情本
loading_tip_cond[12] = {lv_min = 30,	lv_max =200,	map_id = 6015,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[13] = {lv_min = 0,	lv_max =9999,	map_id = 6016,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[14] = {lv_min = 0,	lv_max =9999,	map_id = 6017,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[15] = {lv_min = 0,	lv_max =9999,	map_id = 6018,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[16] = {lv_min = 0,	lv_max =9999,	map_id = 6019,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[17] = {lv_min = 0,	lv_max =9999,	map_id = 6020,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[18] = {lv_min = 0,	lv_max =9999,	map_id = 6021,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[19] = {lv_min = 0,	lv_max =9999,	map_id = 6022,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[20] = {lv_min = 0,	lv_max =9999,	map_id = 6023,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
loading_tip_cond[21] = {lv_min = 0,	lv_max =9999,	map_id = 6024,	ld_string = "挑戰劇情副本，可獲得極品英雄卡牌和海量獎勵，務必第一時間通關哦。"}
--任何等级时进入经验本
loading_tip_cond[22] = {lv_min = 30,	lv_max =200,	map_id = 6014,	ld_string = "挑戰長板橋副本，可獲得海量經驗！"}
loading_tip_cond[23] = {lv_min = 0,	lv_max =9999,	map_id = 6027,	ld_string = "挑戰長板橋副本，可獲得海量經驗！"}
loading_tip_cond[24] = {lv_min = 0,	lv_max =9999,	map_id = 6028,	ld_string = "挑戰長板橋副本，可獲得海量經驗！"}
loading_tip_cond[25] = {lv_min = 0,	lv_max =9999,	map_id = 6059,	ld_string = "挑戰長板橋副本，可獲得海量經驗！"}
--任何等级时进入组队本
loading_tip_cond[26] = {lv_min = 0,	lv_max =9999,	map_id = 6010,	ld_string = "挑戰皇陵密室，可獲得裝備升階材料！"}
loading_tip_cond[27] = {lv_min = 0,	lv_max =9999,	map_id = 6033,	ld_string = "挑戰皇陵密室，可獲得裝備升階材料！"}
loading_tip_cond[28] = {lv_min = 0,	lv_max =9999,	map_id = 6034,	ld_string = "挑戰皇陵密室，可獲得裝備升階材料！"}
loading_tip_cond[29] = {lv_min = 0,	lv_max =9999,	map_id = 6035,	ld_string = "挑戰皇陵密室，可獲得裝備升階材料！"}
loading_tip_cond[30] = {lv_min = 0,	lv_max =9999,	map_id = 6009,	ld_string = "挑戰皇陵偏殿，可獲得裝備鑲嵌、神器煉星和洗煉道具！"}
loading_tip_cond[31] = {lv_min = 0,	lv_max =9999,	map_id = 6029,	ld_string = "挑戰皇陵偏殿，可獲得裝備鑲嵌、神器煉星和洗煉道具！"}
loading_tip_cond[32] = {lv_min = 0,	lv_max =9999,	map_id = 6030,	ld_string = "挑戰皇陵偏殿，可獲得裝備鑲嵌、神器煉星和洗煉道具！"}
loading_tip_cond[33] = {lv_min = 0,	lv_max =9999,	map_id = 6031,	ld_string = "挑戰皇陵偏殿，可獲得裝備鑲嵌、神器煉星和洗煉道具！"}
loading_tip_cond[34] = {lv_min = 0,	lv_max =9999,	map_id = 6032,	ld_string = "挑戰皇陵偏殿，可獲得裝備鑲嵌、神器煉星和洗煉道具！"}
loading_tip_cond[35] = {lv_min = 0,	lv_max =9999,	map_id = 6011,	ld_string = "挑戰皇陵寶庫，可獲得極品神器！"}
loading_tip_cond[36] = {lv_min = 0,	lv_max =9999,	map_id = 6036,	ld_string = "挑戰皇陵寶庫，可獲得極品神器！"}
loading_tip_cond[37] = {lv_min = 0,	lv_max =9999,	map_id = 6037,	ld_string = "挑戰皇陵寶庫，可獲得極品神器！"}
loading_tip_cond[38] = {lv_min = 0,	lv_max =9999,	map_id = 6038,	ld_string = "挑戰皇陵寶庫，可獲得極品神器！"}
loading_tip_cond[39] = {lv_min = 0,	lv_max =9999,	map_id = 6039,	ld_string = "挑戰皇陵寶庫，可獲得極品神器！"}
--任何等级时进入金钱本
loading_tip_cond[40] = {lv_min = 0,	lv_max =9999,	map_id = 6013,	ld_string = "挑戰藏金窟副本，可獲得大量銀子！"}
loading_tip_cond[41] = {lv_min = 0,	lv_max =9999,	map_id = 6025,	ld_string = "挑戰藏金窟副本，可獲得大量銀子！"}
loading_tip_cond[42] = {lv_min = 0,	lv_max =9999,	map_id = 6026,	ld_string = "挑戰藏金窟副本，可獲得大量銀子！"}
loading_tip_cond[43] = {lv_min = 0,	lv_max =9999,	map_id = 6058,	ld_string = "挑戰藏金窟副本，可獲得大量銀子！"}
--任何等级时进入宠物本
loading_tip_cond[44] = {lv_min = 0,	lv_max =9999,	map_id = 6085,	ld_string = "挑戰仙獸獵苑，有一定機率觸發隱藏首領"}
--任何等级时进入坐骑唤醒本
loading_tip_cond[45] = {lv_min = 0,	lv_max =9999,	map_id = 6088,	ld_string = "挑戰平定馬賊，合理走位能更快速通關"}
--任何等级时进入个人试炼本
loading_tip_cond[46] = {lv_min = 0,	lv_max =9999,	map_id = 6086,	ld_string = "勇闖個人試煉，可獲得天賦精華"}
--任何等级时进入子午谷
loading_tip_cond[47] = {lv_min = 0,	lv_max =9999,	map_id = 6079,	ld_string = "挑戰適當難度的子午谷，都能獲得夜明珠和法器精華碎片"}
--任何等级时进入闯天关
loading_tip_cond[48] = {lv_min = 0,	lv_max =9999,	map_id = 6012,	ld_string = "挑戰闖天關，大量靈羽等你來拿"}
loading_tip_cond[49] = {lv_min = 20, lv_max =30,	map_id = 0,	ld_string = "升級之路長漫漫，不如拜個師傅帶帶你"}
--任何等级时进入跨服
loading_tip_cond[50] = {lv_min = 0,	lv_max =9999,	map_id = 5024,	ld_string = "跨服前置換一些通寶，有備無患"}


--step3：在本国，如果不满足任一条件，显示随机载入信息：

local loading_tip = {}
loading_tip[1]="裝備可以升級、鑲嵌、鐫刻"
loading_tip[2]="神器可以煉星、洗煉、轉移屬性"
loading_tip[3]="裝備有白、[0077ff]藍[-]、[ffd926]黃[-]、[00e104]綠[-]、[882bf1]紫[-]五個品質"
loading_tip[4]="煉星可以增強神器基礎屬性"
loading_tip[5]="鑲嵌可以將寶石擁有的屬性附加到裝備上"
loading_tip[6]="洗煉可以更換神器附加屬性"
loading_tip[7]="升級可以提升裝備基礎屬性"
loading_tip[8]="裝備等級不能超過人物等級"
loading_tip[9]="煉星需要消耗煉星石"
loading_tip[10]="煉星失敗可能掉落煉星等級，使用保底符失敗不掉級"
loading_tip[11]="神器可以改變人物外形"
loading_tip[12]="神器最多有五條附加屬性，附加屬性多的神器更好哦"
loading_tip[13]="寶石是有形狀的，只能鑲嵌到相同形狀的孔位內"
loading_tip[14]="洗煉需要消耗洗煉石"
loading_tip[15]="洗煉前可以鎖定屬性，被鎖定的屬性洗煉後不會改變"
loading_tip[16]="系統設置中可隱藏其他玩家的顯示，覺得卡的英雄可以試試"
loading_tip[17]="還不知道怎麼送花嗎？選中玩家點擊他（她）的頭像，就可以點擊送花了"
loading_tip[18]="所有已經獲得的神羽幻化屬性可疊加，想穿哪個都沒關係"
loading_tip[19]="多餘的物品可以通過隨身商店批量出售"
loading_tip[20]="多餘的卡牌可以分解為虎符，虎符可用來在卡店購買其他卡牌"
loading_tip[21]="卡牌商店每天12、18點更新"
loading_tip[22]="長按熒幕並拖動可以調整角色視角"
loading_tip[23]="培養神羽時有可能暴擊喲，2倍、3倍、5倍、甚至10倍"
loading_tip[24]="點地和搖杆都可以控制角色移動"
loading_tip[25]="被鎖定的目標腳下會出現藍色的光圈"
loading_tip[26]="競技場商店出售各種古籍，可以學習其中的秘笈"
loading_tip[27]="人物技能分為絕招和招式，絕招效果更為強大"
loading_tip[28]="古籍中記載著絕招的秘笈，使用後領悟相關效果"
loading_tip[29]="“鎖定”類型的技能釋放前必須鎖定敵人"
loading_tip[30]="角色擁有兩套技能方案，可以在技能介面迅速切換"
loading_tip[31]="戰鬥中藥品會自動使用，還可以設置自動購買"
loading_tip[32]="在拍賣行出售和購買物品，不收取任何手續費哦"
loading_tip[33]="物品上架後顯示會有一定的延遲"
loading_tip[34]="每個角色最多可以同時拍賣10個物品"
loading_tip[35]="人物在戰鬥中無法使用坐騎"
loading_tip[36]="坐騎品階越高，人物獲得的屬性加成越多"
loading_tip[37]="自動戰鬥中不想釋放的技能，在設置中取消即可"
loading_tip[38]="人物等級低於36處於受保護狀態，無法被其他玩家攻擊"
loading_tip[39]="活動次數的重置時間是每天0點"
loading_tip[40]="在國運期間完成邊境軍需任務將獲得額外獎勵"
loading_tip[41]="在國探期間完成刺探軍情任務將獲得額外獎勵"
loading_tip[42]="組隊進行神樹培育更容易獲得高品質韜略果"
loading_tip[43]="只需等待一段時間懸賞任務即可自動完成"
loading_tip[44]="與職業相符的元素屬性，可以大幅提高角色的能力"
loading_tip[45]="與職業不符的元素屬性，可以略微提高角色的能力"
loading_tip[46]="元素屬性與職業對應關係，破軍/赤離-火 蒼龍/荒城-風 天煌-水 九曜-雷"
loading_tip[47]="暴擊、破招和傷害加深屬性可以增加造成的傷害"
loading_tip[48]="暴抗、格擋和傷害減免屬性可以減少受到的傷害"
loading_tip[49]="隨身商店內出售藥品，點擊包裹內的購買按鈕即可打開隨身商店"
loading_tip[50]="國戰宣戰技巧：20點以前宣戰次日開戰，20點以後宣戰後天開戰"
loading_tip[51]="開服第五天將開啟自由宣戰模式"
loading_tip[52]="皇帝不在線，大將軍也可以宣戰喲"
loading_tip[53]="國力弱也不怕，臥薪嚐膽禮包助你一臂之力"
loading_tip[54]="新服擔心國戰不會玩？系統幫您自動開國戰"
loading_tip[55]="在無線網路環境下將獲得更流暢的國戰體驗"
loading_tip[56]="在無線網路環境下將獲得更流暢的國戰體驗"
loading_tip[57]="在無線網路環境下將獲得更流暢的國戰體驗"
loading_tip[58]="為您節省每一分錢，建議在無線網路環境下使用語音聊天功能"
loading_tip[59]="為您節省每一分錢，建議在無線網路環境下使用語音聊天功能"
loading_tip[60]="為您節省每一分錢，建議在無線網路環境下使用語音聊天功能"
loading_tip[61]="法器培養有一定幾率獲得2倍、3倍、5倍甚至10倍的培養值"
loading_tip[62]="合理分配法器精華碎片，讓戰力獲得最大收益"
loading_tip[63]="不滿意寵物的資質，不妨試試洗髓"
loading_tip[64]="洗髓可以變更寵物的基礎屬性"
loading_tip[65]="龍骨增加的是寵物永久資質，不受洗髓改變"
loading_tip[66]="部分任務可以委託完成"
loading_tip[67]="霸主國每日可領取一份強國禮包"
loading_tip[68]="每週一晚九點半，參與跨服演武獲得大量武勳"
loading_tip[69]="每週二、四、五晚九點半，參與龍爭虎鬥獲得大量獎勵"
loading_tip[70]="每週日晚九點半，參與跨服三國志可獲得海量天下號令"
loading_tip[71]="完成仙獸使者的考驗，可獲得寵物口糧"
loading_tip[72]="去強國砸鼎，更容易獲得高品質的龍鼎碎片"
loading_tip[73]="天下號令可兌換極品屬性稱號"

--step4: 万一找不到文字，返回默认描述，这只会出现在loading_tip中编号跳跃的情况

local loading_tip_default = "易經：大明始終，六位時成，時乘六龍以禦天。雲行雨施，天下平也。"

--之前是整表返回的，暂时注掉
--return loading_tip

--按参数返回载入提示
--iLevel：角色当前的等级
--iMapID：传送到地图的ID
--iFaction：传送前地图的阵营，如为0代表之前还没进游戏
--iSelfFaction：自身的阵营
--[[--]]
local function GetLoadingTip(iLevel, iMapID, iFaction, iSelfFaction)
	--程序看是否需去掉
	--math.randomseed(os.time())
	--math.random()
	local ran = math.random(table.getn(loading_tip))

	if iFaction ~= 0 and iFaction ~= iSelfFaction then
		local ran_diff = math.random(table.getn(loading_tip_diff_faction))
		return loading_tip_diff_faction[ran_diff] or (loading_tip[ran] or loading_tip_default)
	end

	for i = 1, table.getn(loading_tip_cond), 1 do
		if iLevel >= loading_tip_cond[i].lv_min and iLevel <= loading_tip_cond[i].lv_max and (loading_tip_cond[i].map_id == 0 or iMapID == loading_tip_cond[i].map_id) then
			return loading_tip_cond[i].ld_string or (loading_tip[ran] or loading_tip_default)
		end
	end

	return loading_tip[ran] or loading_tip_default
end

return GetLoadingTip

--]]

--测试用代码
--[[--]
loading_tip_cond[1] = {lv_min = 1,	lv_max =5,	map_id = 7,	ld_string = "asdfasdf1"}
loading_tip_cond[2] = {lv_min = 6,	lv_max =7,	map_id = 8,	ld_string = "asdfasdf2"}
loading_tip_cond[3] = {lv_min = 6,	lv_max =7,	map_id = 9,	ld_string = "asdfasdf3"}
loading_tip_cond[4] = {lv_min = 8,	lv_max =10,	map_id = 0,	ld_string = "asdfasdf4"}
loading_tip_cond[5] = {lv_min = 0,	lv_max =9999,	map_id = 10,	ld_string = "asdfasdf5"}
loading_tip_cond[7] = {lv_min = 10,	lv_max =20,	map_id = 11,	ld_string = "asdfasdf6"}
print(GetLoadingTip(19, 11, 1, 1))
--]]