
local InstanceReward = {}

function InstanceReward:getAllConfigs ()
	return InstanceReward
end

function InstanceReward:addConfig(config)
	if config then
		InstanceReward[config.instance_tid] = config
	end
end

-- 子午谷奖励
InstanceReward:addConfig
{
	instance_tid = 3460,
	reward = 3565,
}
--个人试炼奖励
InstanceReward:addConfig
{
	instance_tid = 4919,
	reward = {10832,},
	cost = {id = 10947, num = 1}
}
-- 坐骑炼星奖励
InstanceReward:addConfig
{
	instance_tid = 5281,
	reward = 5374,
}
-- 夫妻副本奖励
InstanceReward:addConfig
{
	instance_tid = 5608,
	reward = {
	[1] = {id=11711, num = 1},
	[2] = {id=11724, num = 1},
	}
}


InstanceReward:addConfig
{
	instance_tid = 6443,
	reward = {
	[1] = {id=12212, num = 1},
	[2] = {id=12214, num = 1},
	}
}

--潼关秘境副本奖励
InstanceReward:addConfig
{
	instance_tid = 6785,
	reward = {
	[1] = {id=6667, num = 1},
	[2] = {id=4584, num = 1},
	[3] = {id=6996, num = 1},
	}
}
--圣兽青龙副本奖励
InstanceReward:addConfig
{
	instance_tid = 7113,
	reward = 7133
}
--圣兽朱雀副本奖励
InstanceReward:addConfig
{
	instance_tid = 6972,
	reward = 7134
}
--圣兽白虎副本奖励
InstanceReward:addConfig
{
	instance_tid = 7188,
	reward = 7135
}
--圣兽玄武副本奖励
InstanceReward:addConfig
{
	instance_tid = 7189,
	reward = 7136
}

--大逃亡副本配置
InstanceReward:addConfig
{
	instance_tid = 7177,
	reward = {
	[1] = {id = 15535, num = 10},
	[2] = {id = 7560, num = 2},
	}
}

--诛仙副本配置
InstanceReward:addConfig
{
	instance_tid = 12672,
	reward = {
	[1] = {id = 18547, num = 1},
	}
}
return InstanceReward