local monday_card_config = {}

--魏 1、曹操 2、张辽 3、曹仁 4、典韦  5、许褚
--蜀 6、刘备 7、关羽 8、张飞 9、赵云  10、马超
--吴 11、孙权 12、周瑜 13、吕蒙 14、鲁肃  15、陆逊
--配置中的每个阵营的数量需要与周一福利模板中的数量相同
--魏国卡牌数量5
--蜀国卡牌数量5
--吴国卡牌数量5
--魏蜀吴三国序号依次递增
--pathID序号取自B03——PathData更新表
--魏国的卡牌 1-10
--蜀国的卡牌 11-20
--吴国的卡牌 21-30

monday_card_config[1] =
{
	camp = "魏",
	name = "曹操",
	pathID = 994,
}

monday_card_config[2] =
{
	camp = "魏",
	name = "張遼",
	pathID = 1042,
}

monday_card_config[3] =
{
	camp = "魏",
	name = "曹仁",
	pathID = 996,
}

monday_card_config[4] =
{
	camp = "魏",
	name = "典韋",
	pathID = 998,
}

monday_card_config[5] =
{
	camp = "魏",
	name = "許褚",
	pathID = 1035,
}

monday_card_config[11] =
{
	camp = "蜀",
	name = "劉備",
	pathID = 1011,
}

monday_card_config[12] =
{
	camp = "蜀",
	name = "關羽",
	pathID = 1005,
}

monday_card_config[13] =
{
	camp = "蜀",
	name = "張飛",
	pathID = 1039,
}

monday_card_config[14] =
{
	camp = "蜀",
	name = "趙雲",
	pathID = 1044,
}

monday_card_config[15] =
{
	camp = "蜀",
	name = "馬超",
	pathID = 1017,
}

monday_card_config[21] =
{
	camp = "吳",
	name = "孫權",
	pathID = 1025,
}

monday_card_config[22] =
{
	camp = "吳",
	name = "周瑜",
	pathID = 1046,
}

monday_card_config[23] =
{
	camp = "吳",
	name = "呂蒙",
	pathID = 1015,
}

monday_card_config[24] =
{
	camp = "吳",
	name = "魯肅",
	pathID = 1012,
}

monday_card_config[25] =
{
	camp = "吳",
	name = "陸遜",
	pathID = 1013,
}

return monday_card_config