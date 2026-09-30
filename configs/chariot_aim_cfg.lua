--[[
	战场瞄准配置
]]
local cfg = 
{
	--进入瞄准状态，自动前移距离(m)
	AUTOMOVE_DISTANCE_WHEN_AIM = 20,
	--最大虚线段数
	MAX_LINE_NUM = 20,
	--单个虚线段长度
	ITEM_LINE_LENGTH = 1.5,
	--瞄准线的资源id
	LINE_RES_PATHID = 5711,
	--火球的资源id
	FIRE_BALL_PATHID = 5710,

	--瞄准技能ID
	AIM_SKILL_ID = 646,
	--战车假技能，用于描述开炮技能
	CHARIOT_FAKE_SKILL_ID = 653,
	--攻击特效出现阶段
	ATTACK_PERFORM_IDX = 1,
	--投石车炮弹初始位置偏移
	FIRE_BALL_BEGIN_POS_OFFSET = {0, 10, -5},
	--瞄准线初始位置偏移
	LINE_BEGIN_POS_OFFSET = {0, 3, 0},
}
return cfg
