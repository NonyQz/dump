local inventoryConfig = 
{
	--type:1等级赠送 2银子开格 | 等级（开格数量） | 奖励格子数（开格子所耗金钱） 
	--所有的num总和必须是包裹格子上限
	{type = 1, lv = 1, num = 16},
	{type = 1, lv = 10, num = 4},
	{type = 1, lv = 14, num = 4},
	{type = 1, lv = 18, num = 4},
	{type = 1, lv = 22, num = 4},
	{type = 1, lv = 24, num = 4},
	{type = 1, lv = 26, num = 4},
	{type = 1, lv = 28, num = 4},
	{type = 1, lv = 30, num = 4},
	{type = 2, num = 4, money = 5},
	{type = 2, num = 4, money = 10},
	{type = 2, num = 4, money = 20},
	{type = 2, num = 4, money = 40},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},
	{type = 2, num = 4, money = 80},

}

return
{
	inventoryConfig = inventoryConfig,
	maxNum = 128,

	FashionPageNum = 4, --时装背包页数
}