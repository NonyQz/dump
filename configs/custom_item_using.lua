--[[
	配置自定义物品使用方式
	
	custom_item_using[物品Tid] = "使用方式",
	
	使用方式可为：
	huang_jin_bao_zang, feng_mo_tie, wine
]]
--唯一检查，避免id重复
local custom_item_using_check = {}
local custom_item_using = setmetatable({}, {__index=custom_item_using_check, __newindex=function (t, k, v)
	if custom_item_using_check[k] then error("replicated item id:" .. tostring(k)) end
	custom_item_using_check[k] = v
end})


--黄巾宝藏
custom_item_using[2438] = "huang_jin_bao_zang"
custom_item_using[2439] = "huang_jin_bao_zang"
custom_item_using[2440] = "huang_jin_bao_zang"
custom_item_using[2441] = "huang_jin_bao_zang"
custom_item_using[2442] = "huang_jin_bao_zang"
custom_item_using[2443] = "huang_jin_bao_zang"
custom_item_using[2444] = "huang_jin_bao_zang"
custom_item_using[2445] = "huang_jin_bao_zang"
custom_item_using[2446] = "huang_jin_bao_zang"
custom_item_using[2447] = "huang_jin_bao_zang"
custom_item_using[2448] = "huang_jin_bao_zang"
custom_item_using[2449] = "huang_jin_bao_zang"
custom_item_using[2450] = "huang_jin_bao_zang"
custom_item_using[2451] = "huang_jin_bao_zang"
custom_item_using[2452] = "huang_jin_bao_zang"
custom_item_using[4511] = "huang_jin_bao_zang"
custom_item_using[4512] = "huang_jin_bao_zang"
custom_item_using[4513] = "huang_jin_bao_zang"
custom_item_using[4514] = "huang_jin_bao_zang"
custom_item_using[4515] = "huang_jin_bao_zang"
custom_item_using[4516] = "huang_jin_bao_zang"
custom_item_using[4517] = "huang_jin_bao_zang"
custom_item_using[4518] = "huang_jin_bao_zang"
custom_item_using[4519] = "huang_jin_bao_zang"
custom_item_using[4520] = "huang_jin_bao_zang"
custom_item_using[5916] = "huang_jin_bao_zang"
custom_item_using[5917] = "huang_jin_bao_zang"
custom_item_using[5918] = "huang_jin_bao_zang"
custom_item_using[5919] = "huang_jin_bao_zang"
custom_item_using[5920] = "huang_jin_bao_zang"
custom_item_using[5921] = "huang_jin_bao_zang"
custom_item_using[5922] = "huang_jin_bao_zang"
custom_item_using[5923] = "huang_jin_bao_zang"
custom_item_using[5924] = "huang_jin_bao_zang"
custom_item_using[5925] = "huang_jin_bao_zang"
custom_item_using[7635] = "huang_jin_bao_zang"
custom_item_using[7636] = "huang_jin_bao_zang"
custom_item_using[16346] = "huang_jin_bao_zang"
custom_item_using[16347] = "huang_jin_bao_zang"
custom_item_using[16348] = "huang_jin_bao_zang"
custom_item_using[16349] = "huang_jin_bao_zang"
custom_item_using[16350] = "huang_jin_bao_zang"
--封魔帖
custom_item_using[877] = "feng_mo_tie"
custom_item_using[878] = "feng_mo_tie"
custom_item_using[879] = "feng_mo_tie"
custom_item_using[880] = "feng_mo_tie"
custom_item_using[881] = "feng_mo_tie"
custom_item_using[887] = "feng_mo_tie"
custom_item_using[888] = "feng_mo_tie"
custom_item_using[889] = "feng_mo_tie"
custom_item_using[890] = "feng_mo_tie"
custom_item_using[891] = "feng_mo_tie"
custom_item_using[897] = "feng_mo_tie"
custom_item_using[898] = "feng_mo_tie"
custom_item_using[899] = "feng_mo_tie"
custom_item_using[900] = "feng_mo_tie"
custom_item_using[901] = "feng_mo_tie"
custom_item_using[882] = "feng_mo_tie"
custom_item_using[883] = "feng_mo_tie"
custom_item_using[884] = "feng_mo_tie"
custom_item_using[885] = "feng_mo_tie"
custom_item_using[886] = "feng_mo_tie"
custom_item_using[14190] = "feng_mo_tie"
custom_item_using[14195] = "feng_mo_tie"
custom_item_using[14196] = "feng_mo_tie"
custom_item_using[14197] = "feng_mo_tie"
custom_item_using[14198] = "feng_mo_tie"
--酒
custom_item_using[904] = "wine"
custom_item_using[905] = "wine"
custom_item_using[906] = "wine"
custom_item_using[907] = "wine"
custom_item_using[908] = "wine"
--六龙庆典
custom_item_using[10446] = "drop_65"
custom_item_using[10447] = "drop_65"
custom_item_using[10448] = "drop_65"
custom_item_using[10449] = "drop_65"
custom_item_using[10450] = "drop_65"
custom_item_using[10451] = "drop_65"
custom_item_using[10452] = "drop_65"
custom_item_using[10453] = "drop_65"
custom_item_using[10618] = "drop_66"
--天赋突破道具
custom_item_using[10832] = "drop_80"

--新职业预热
custom_item_using[10966] = "drop_81"
custom_item_using[10967] = "drop_81"
custom_item_using[10968] = "drop_82"
custom_item_using[10969] = "drop_82"
custom_item_using[10970] = "drop_83"
custom_item_using[10971] = "drop_83"
custom_item_using[10972] = "drop_83"
custom_item_using[10973] = "drop_84"
custom_item_using[10974] = "drop_84"
custom_item_using[10975] = "drop_84"

--委托令寻路
custom_item_using[10989] = "drop_85"


--每日功勋
custom_item_using[5913] = "exploit_2000"
custom_item_using[6760] = "exploit_500"
--巅峰武斗预热
custom_item_using[11693] = "drop_86"
--奥运会活动
custom_item_using[11643] = "drop_87"
custom_item_using[11694] = "drop_87"
custom_item_using[11695] = "drop_87"
custom_item_using[11644] = "drop_88"
custom_item_using[11835] = "drop_87"
custom_item_using[11836] = "drop_87"

--直升丹使用后的寻路
custom_item_using[11972] = "drop_90"
custom_item_using[11973] = "drop_90"
custom_item_using[11974] = "drop_90"
custom_item_using[11975] = "drop_90"

--周年庆集字
custom_item_using[12763] = "drop_91"
custom_item_using[12764] = "drop_91"
custom_item_using[12765] = "drop_91"
custom_item_using[12766] = "drop_91"
custom_item_using[12767] = "drop_91"
custom_item_using[12768] = "drop_91"
custom_item_using[12769] = "drop_91"
custom_item_using[12770] = "drop_91"
--重阳
custom_item_using[12203] = "drop_92"
custom_item_using[12204] = "drop_92"
--更名令
custom_item_using[13115] = "drop_93"
--帮会更名令
custom_item_using[13414] = "drop_94"
--个人改性别
custom_item_using[13415] = "drop_95"
--兑换卷
custom_item_using[14593] = "drop_109"
custom_item_using[15203] = "drop_110"
custom_item_using[15218] = "drop_111"
custom_item_using[15922] = "drop_113"
custom_item_using[16199] = "drop_115"
custom_item_using[16589] = "drop_118"
custom_item_using[16590] = "drop_119"
custom_item_using[16866] = "drop_120"
custom_item_using[16976] = "drop_121"
custom_item_using[17310] = "drop_122"
custom_item_using[17311] = "drop_123"
--古怪的金币
custom_item_using[15887] = "drop_112"
-- --边境军需（白，蓝，黄，绿，紫）
-- custom_item_using[839] = "drop_108"
-- custom_item_using[840] = "drop_108"
-- custom_item_using[841] = "drop_108"
-- custom_item_using[842] = "drop_108"
-- custom_item_using[843] = "drop_108"

--天工锤
custom_item_using[16296] = "drop_117"


return custom_item_using

