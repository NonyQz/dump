local TreeInfo = {}

TreeInfo = 
{
	GameId = 1,

	-- 游戏最长时间，如果提前达到最大果实则提前停止
	TotalTime = 50,

	-- 刷新波次
	RefreshInfo = {
		{time=0, num=1},
		{time=1, num=1},
		{time=2, num=2},
		{time=4, num=2},
		{time=6, num=3},
		{time=9, num=3},
		{time=12, num=4},
		{time=16, num=4},
		{time=20, num=5},
		{time=25, num=6},
		{time=30, num=7},
		{time=35, num=8},
		{time=40, num=10},
	},

	-- 元气信息
	BubbleInfo = {
		{prob=0.1, speed=1, disappear=10, power=1, click=1, score=1},
		{prob=0.2, speed=2, disappear=8, power=2, click=2, score=2},
		{prob=0.3, speed=3, disappear=5, power=3, click=3, score=3},
		{prob=0.2, speed=4, disappear=3, power=4, click=4, score=5},
		{prob=0.1, speed=5, disappear=2, power=5, click=5, score=10},
	},

	FruitNeed = {50, 100, 150, 200, 250},
}

return TreeInfo





