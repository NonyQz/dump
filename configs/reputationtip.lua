local ReputationTip = {}

--1级索引为声望线号
--2级索引为来源方式
	-- TASK = 1, --任务
	-- REWARDTEMPLATE = 2, --奖励模板
	-- KILLMONSTER = 3, --杀怪 
	-- USEITEM = 4, --使用物品
	-- OTHER = 5, --其他
	-- NATIONWAR = 6, --国战
	-- NORMAL = 8,  --日常杀敌
	-- CHARIOT = 10, --战车
	-- INSTANCE = 12, --副本
	-- COMMONREWARD = 15,--通用奖励
	-- OFFICER = 16, --爵位
	-- INCBUFF = 17, --Buff

ReputationTip[68] = {}
ReputationTip[68][1] = "您獲得了%d塊[ffffff]蔡文姬[-]的寶圖碎片"

ReputationTip[69] = {}
ReputationTip[69][1] = "您獲得了%d塊[0077ff]曹植[-]的寶圖碎片"

ReputationTip[70] = {}
ReputationTip[70][1] = "您獲得了%d塊[ffd926]甘寧[-]的寶圖碎片"

ReputationTip[71] = {}
ReputationTip[71][1] = "您獲得了%d塊[00e104]龐統[-]的寶圖碎片"

ReputationTip[72] = {}
ReputationTip[72][1] = "您獲得了%d塊[882bf1]諸葛亮[-]的寶圖碎片"

ReputationTip[75] = {}
ReputationTip[75][1] = "你獲得了%d點擊殺年獸積分！"
ReputationTip[75][3] = "你獲得了%d點擊殺年獸積分！"

ReputationTip[79] = {}
ReputationTip[79][0] = "你獲得了%d點士氣！"
ReputationTip[79][3] = "你獲得了%d點士氣！"
ReputationTip[79][5] = "你獲得了%d點士氣！"
ReputationTip[79][12] = "你獲得了%d點士氣！"
ReputationTip[79][17] = "你獲得了%d點士氣！"
ReputationTip[79][19] = "你獲得了%d點士氣！"

ReputationTip[77] = {}
ReputationTip[77][0] = "你獲得了%d點通寶！"
ReputationTip[77][4] = "你獲得了%d點通寶！"

ReputationTip[78] = {}
ReputationTip[78][0] = "你獲得了%d點天下號令！"
ReputationTip[78][1] = "你獲得了%d點天下號令！"
ReputationTip[78][2] = "你獲得了%d點天下號令！"
ReputationTip[78][3] = "你獲得了%d點天下號令！"
ReputationTip[78][4] = "你獲得了%d點天下號令！"
ReputationTip[78][12] = "你獲得了%d點天下號令！"
ReputationTip[78][15] = "你獲得了%d點天下號令！"

ReputationTip[90] = {}
ReputationTip[90][1] = "您獲得%d點龍符"
ReputationTip[90][2] = "您獲得%d點龍符"
ReputationTip[90][3] = "您獲得%d點龍符"
ReputationTip[90][4] = "您獲得%d點龍符"
ReputationTip[90][5] = "您獲得%d點龍符"
ReputationTip[90][6] = "您獲得%d點龍符"
ReputationTip[90][8] = "您獲得%d點龍符"
ReputationTip[90][10] = "您獲得%d點龍符"
ReputationTip[90][12] = "您獲得%d點龍符"
ReputationTip[90][15] = "您獲得%d點龍符"
ReputationTip[90][16] = "您獲得%d點龍符"
ReputationTip[90][17] = "您獲得%d點龍符"

ReputationTip[93] = {}
ReputationTip[93][1] = "您獲得了%d塊時裝布料"
ReputationTip[93][2] = "您獲得了%d塊時裝布料"
ReputationTip[93][5] = "您獲得了%d塊時裝布料"
ReputationTip[93][15] = "您獲得了%d塊時裝布料"

ReputationTip[94] = {}
ReputationTip[94][4] = "你獲得了%d的祭祀貢獻！"

ReputationTip[103] = {}
ReputationTip[103][1] = "您獲得了%d點[ffffff]祈福值[-]"

ReputationTip[101] = {}
ReputationTip[101][1] = "您獲得了%d點糖果節歡樂值！"
ReputationTip[101][2] = "您獲得了%d點糖果節歡樂值！"

ReputationTip[26] = {}
ReputationTip[26][0] = "你獲得了%d點武勳！"
ReputationTip[26][1] = "你獲得了%d點武勳！"
ReputationTip[26][2] = "你獲得了%d點武勳！"
ReputationTip[26][3] = "你獲得了%d點武勳！"
ReputationTip[26][4] = "你獲得了%d點武勳！"
ReputationTip[26][5] = "你獲得了%d點武勳！"
ReputationTip[26][12] = "你獲得了%d點武勳！"
ReputationTip[26][17] = "你獲得了%d點武勳！"
ReputationTip[26][19] = "你獲得了%d點武勳！"

ReputationTip[108] = {}
ReputationTip[108][0] = "你獲得了%d點助威值！"
ReputationTip[108][4] = "你獲得了%d點助威值！"

ReputationTip[202] = {}
ReputationTip[202][0] = "你獲得了%d點武鬥積分！"
ReputationTip[202][1] = "你獲得了%d點武鬥積分！"
ReputationTip[202][2] = "你獲得了%d點武鬥積分！"
ReputationTip[202][3] = "你獲得了%d點武鬥積分！"
ReputationTip[202][4] = "你獲得了%d點武鬥積分！"
ReputationTip[202][5] = "你獲得了%d點武鬥積分！"
ReputationTip[202][12] = "你獲得了%d點武鬥積分！"
ReputationTip[202][17] = "你獲得了%d點武鬥積分！"
ReputationTip[202][19] = "你獲得了%d點武鬥積分！"

ReputationTip[159] = {}
ReputationTip[159][1] = "你獲得了%d點月圓值！"


--国庆争霸
ReputationTip[115] = {}
ReputationTip[115][1] = "你獲得了%d點貢獻值！"

--青睐等级
ReputationTip[116] = {}
ReputationTip[116][4] = "你獲得了%d級青睞等級！"
ReputationTip[116][5] = "你獲得了%d級青睞等級！"
ReputationTip[116][15] = "你獲得了%d級青睞等級！"

--感恩节
ReputationTip[141] = {}
ReputationTip[141][4] = "你獲得了%d點感恩積分！"

ReputationTip[146] = {}
ReputationTip[146][1] = "你獲得了%d點擊殺年獸積分！"
ReputationTip[146][3] = "你獲得了%d點擊殺年獸積分！"

ReputationTip[21] = {}
ReputationTip[21][4] = "主公瞪了你一眼，你把伸向排行榜單的手縮了回去。"

ReputationTip[22] = {}
ReputationTip[22][4] = "主公瞪了你一眼，你把伸向排行榜單的手縮了回去。"

ReputationTip[23] = {}
ReputationTip[23][4] = "主公瞪了你一眼，你把伸向排行榜單的手縮了回去。"

ReputationTip[217] = {}
ReputationTip[217][2] = "你獲得了%d點武士令！"

ReputationTip[220] = {}
ReputationTip[220][13] = "您消耗了%d彩鑽"
ReputationTip[220][4] = "您獲得了%d彩鑽"
ReputationTip[220][23] = "您獲得了%d彩鑽"

ReputationTip[149] = {}
ReputationTip[149][1] = "您獲得了%d點糖果節歡樂令！"
ReputationTip[149][2] = "您獲得了%d點糖果節歡樂令！"

ReputationTip[218] = {}
ReputationTip[218][4] = "您獲得了%d個四海名帖！"

ReputationTip[214] = {}
ReputationTip[214][4] = "您獲得了%d個九州遺物！"

ReputationTip[215] = {}
ReputationTip[215][4] = "您獲得了%d個八荒令！"

--珍宝楼商店
ReputationTip[219] = {}
ReputationTip[219][4] = "您獲得了%d點珍寶樓積分！"

--活跃信物
ReputationTip[229] = {}
ReputationTip[229][4] = "您獲得了%d份活躍信物！"
ReputationTip[229][2] = "您獲得了%d份活躍信物！"
ReputationTip[229][15] = "您獲得了%d份活躍信物！"


ReputationTip[144] = {}
ReputationTip[144][1] = "您獲得了%d點雙十一貢獻值！"

ReputationTip[157] = {}
ReputationTip[157][2] = "您獲得了%d點勇毅令！"

ReputationTip[161] = {}
ReputationTip[161][0] = "您獲得了%d點演武積分。"
ReputationTip[161][1] = "您獲得了%d點演武積分。"
ReputationTip[161][2] = "您獲得了%d點演武積分。"
ReputationTip[161][3] = "您獲得了%d點演武積分。"
ReputationTip[161][4] = "您獲得了%d點演武積分。"
ReputationTip[161][5] = "您獲得了%d點演武積分。"
ReputationTip[161][6] = "您獲得了%d點演武積分。"
ReputationTip[161][8] = "您獲得了%d點演武積分。"
ReputationTip[161][10] = "您獲得了%d點演武積分。"
ReputationTip[161][12] = "您獲得了%d點演武積分。"
ReputationTip[161][15] = "您獲得了%d點演武積分。"
ReputationTip[161][17] = "您獲得了%d點演武積分。"
ReputationTip[161][19] = "您獲得了%d點演武積分。"
return ReputationTip
