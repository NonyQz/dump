
-- 震屏事件
local shake_event = 
{ 
  --[skill_id] = { aniname = 动画名称, time = 相对于动作的时间, path_id = 震屏动画资源path ID}
	[112] = { aniname = "shake1", time = 1.05, path_id = 589 },--战士普通攻击最后一击
	[25] = { aniname = "shake1", time = 1.1, path_id = 589 },--战士跳劈	
	[118] = { aniname = "shake1", time = 1.1, path_id = 589 },--战士跳劈符文1
	[119] = { aniname = "shake1", time = 1.1, path_id = 589 },--战士跳劈符文2
	[120] = { aniname = "shake1", time = 1.1, path_id = 589 },--战士跳劈符文3
	[28] = { aniname = "shake1", time = 1.8, path_id = 589 },--战士xp
	[107] = { aniname = "shake2", time = 0.6, path_id = 591 },--法师普通攻击第3击
	[113] = { aniname = "shake1", time = 0.7, path_id = 589 },--法师普通攻击第4击
	[11] = { aniname = "shake3", time = 0.5, path_id = 590 },--法师冰环
	[130] = { aniname = "shake3", time = 0.5, path_id = 590 },--法师冰环符文1
	[131] = { aniname = "shake3", time = 0.5, path_id = 590 },--法师冰环符文2
	[132] = { aniname = "shake3", time = 0.5, path_id = 590 },--法师冰环符文3
	[14] = { aniname = "shake1", time = 1.1, path_id = 589 },--法师xp
	[158] = { aniname = "shake2", time = 1.05, path_id = 591 },--枪客普通攻击
	[30] = { aniname = "shake1", time = 0.35, path_id = 589 },--枪客冲锋
	[136] = { aniname = "shake1", time = 0.35, path_id = 589 },--枪客冲锋符文1
	[137] = { aniname = "shake1", time = 0.35, path_id = 589 },--枪客冲锋符文2
	[138] = { aniname = "shake1", time = 0.35, path_id = 589 },--枪客冲锋符文3
	[31] = { aniname = "shake2", time = 0.2, path_id = 591 },--枪客五星冲刺1
	[31] = { aniname = "shake2", time = 0.3, path_id = 591 },--枪客五星冲刺2
	[31] = { aniname = "shake2", time = 0.4, path_id = 591 },--枪客五星冲刺3
	[31] = { aniname = "shake2", time = 0.5, path_id = 591 },--枪客五星冲刺4
	[31] = { aniname = "shake2", time = 0.6, path_id = 591 },--枪客五星冲刺5
	[139] = { aniname = "shake2", time = 0.2, path_id = 591 },--枪客五星冲刺1
	[139] = { aniname = "shake2", time = 0.3, path_id = 591 },--枪客五星冲刺2
	[139] = { aniname = "shake2", time = 0.4, path_id = 591 },--枪客五星冲刺3
	[139] = { aniname = "shake2", time = 0.5, path_id = 591 },--枪客五星冲刺4
	[139] = { aniname = "shake2", time = 0.6, path_id = 591 },--枪客五星冲刺5
	[140] = { aniname = "shake2", time = 0.2, path_id = 591 },--枪客五星冲刺1
	[140] = { aniname = "shake2", time = 0.3, path_id = 591 },--枪客五星冲刺2
	[140] = { aniname = "shake2", time = 0.4, path_id = 591 },--枪客五星冲刺3
	[140] = { aniname = "shake2", time = 0.5, path_id = 591 },--枪客五星冲刺4
	[140] = { aniname = "shake2", time = 0.6, path_id = 591 },--枪客五星冲刺5
	[141] = { aniname = "shake2", time = 0.2, path_id = 591 },--枪客五星冲刺1
	[141] = { aniname = "shake2", time = 0.3, path_id = 591 },--枪客五星冲刺2
	[141] = { aniname = "shake2", time = 0.4, path_id = 591 },--枪客五星冲刺3
	[141] = { aniname = "shake2", time = 0.5, path_id = 591 },--枪客五星冲刺4
	[141] = { aniname = "shake2", time = 0.6, path_id = 591 },--枪客五星冲刺5
	[141] = { aniname = "shake1", time = 0.8, path_id = 589 },--枪客五星冲刺5
	[33] = { aniname = "shake1", time = 1.4, path_id = 589 },--枪客xp
	[157] = { aniname = "shake2", time = 1.5, path_id = 591 },--射手普通攻击
	[35] = { aniname = "shake3", time = 1.0, path_id = 590 },--射手群体攻击
	[145] = { aniname = "shake3", time = 1.0, path_id = 590 },--射手群体攻击符文1
	[146] = { aniname = "shake3", time = 1.0, path_id = 590 },--射手群体攻击符文2
	[147] = { aniname = "shake3", time = 1.0, path_id = 590 },--射手群体攻击符文3
	[38] = { aniname = "shake1", time = 1.7, path_id = 589 },--射手xp
}

return 
{
	ShakeEvent = shake_event,
}

