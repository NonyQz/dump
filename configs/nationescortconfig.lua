----国镖配置
----控制界面显示的活动ID 
--兑换模板id
local NationEscortExchangeTid = 6707
--国家运镖模板id 
local NationEscortTid = 6769
--捐献物品个数
local ITEMMAXCOUNT = 4
--个人奖励档次
local MAXLISTCOUNT = 5
--排行榜
local req_tids = 149
--排行榜请求数据大小
local _per_page_num = 100
--界面显示排行榜贡献人数
local _top_rank_num = 3 
--活动前多少秒不能进行贡献操作
local ENDTIME = 300   --300秒 5分钟 

--个人奖励不同档次所需要达到的贡献值
local RoleAwardConfig = 
{
	[1] = 20,  
	[2] = 60,
	[3] = 120,
	[4] = 200,
	[5] = 300, 
}

--国家镖车声望 声望值表示镖车的生命值
local NationEscortRepuID = 17
--镖车最大生命值
local NationEscortHPMax = 100
-- 场景 id
local Scenes = {5003, 5004,5005 }  --王城，天门关,边境
--stopDistance 
local StopDistance = 1
--护送镖车地图国家声望
local TransferNationEscortRepuID = 15
local TransferNationEscortMode = 10 --基数  15号国家声望对该数取余的结果，去TransferRepuValueShow数组内查找对应值。
local TransferRepuValueShow = { [1] = 1, [2] = 1, [3] = 1, }
return 
{ 
	NationEscortExchangeTid = NationEscortExchangeTid,
	NationEscortTid = NationEscortTid,
	ITEMMAXCOUNT = ITEMMAXCOUNT,
	MAXLISTCOUNT = MAXLISTCOUNT,
	REQTIDS = req_tids,
	PERPAGENUM = _per_page_num,
	TOPRANKNUM = _top_rank_num,
	ENDTIME = ENDTIME,
	RoleAwardConfig = RoleAwardConfig,
	NationEscortRepuID = NationEscortRepuID,
	NationEscortHPMax = NationEscortHPMax,
	Scenes = Scenes,
	MonsterEscortID = MonsterEscortID,
	StopDistance = StopDistance,
	TransferNationEscortRepuID = TransferNationEscortRepuID,
	TransferRepuValueShow = TransferRepuValueShow,
	TransferNationEscortMode = TransferNationEscortMode,
}