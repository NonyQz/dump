--[[
	配置声望的名称和图标
	
	reputation_desc[声望ID] =
	{
		name = "",
		atlas = "",
		sprite = ""
	}
	
	例：
	reputation_desc[10] =
	{
		name = "国战功勋",
		atlas = "Arts/Res/UI/Atlas/Common/CommonAtlas.prefab.u3dext",
		sprite = "Exploit",
	}
]]

local reputation_desc = {}

reputation_desc[10] =
{
	name = "國戰功勛",
	atlas = "Arts/Res/UI/Atlas/Common/CommonAtlas.prefab.u3dext",
	sprite = "Exploit",
}

reputation_desc[74] =
{
	name = "漢帝密令",
	atlas = "Arts/Res/UI/Atlas/RealTimeArena/RealTimeArenaAtlas.prefab.u3dext",
	sprite = "PVPMoney",
}

reputation_desc[75] =
{
	name = "擊殺年獸積分",
	atlas = "",
	sprite = "",
}

reputation_desc[93] =
{
	name = "時裝布料",
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",
	sprite = "Img_FashionRepu",
}

reputation_desc[44] =
{
	name = "虎符",
	atlas = "Arts/Res/UI/Atlas/Common/CommonAtlas.prefab.u3dext",
	sprite = "Tiger",
}

reputation_desc[90] =
{
	name = "龍符",
	atlas = "Arts/Res/UI/Atlas/CommonSpecial/CommonSpecialAtlas.prefab.u3dext",
	sprite = "Dragon",
}

reputation_desc[101] =
{
	name = "歡樂值",
	atlas = "Arts/Res/UI/Atlas/SnowMan/SnowManTitleAtlas.prefab.u3dext",
	sprite = "Repu_Happy",
}

reputation_desc[149] =
{
	name = "歡樂令",
	atlas = "Arts/Res/UI/Atlas/SnowMan/SnowManTitleAtlas.prefab.u3dext",
	sprite = "Repu_Happy",
}

reputation_desc[202] =
{
	name = "武鬥積分",
	atlas = "Arts/Res/UI/Atlas/RealTimeArena/RealTimeArenaAtlas.prefab.u3dext",
	sprite = "guozhan",
}

reputation_desc[217] =
{
	name = "武士令",
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",
	sprite = "Item_wushiling",
}

reputation_desc[215] =
{
	name = "八荒令",
	atlas = "Arts/Res/UI/Atlas/OldPlayer/OldPlayer.prefab.u3dext",
	sprite = "AllPlayer_Money",
}
reputation_desc[214] =
{
	name = "九州遺物",
	atlas = "Arts/Res/UI/Atlas/OldPlayer/OldPlayer.prefab.u3dext",
	sprite = "AllPlayer_JiuZhou",
}

reputation_desc[219] =
{
	name = "積分",															--声望道具的名字
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",				--声望道具的图集
	sprite = "jifen",														--声望图标的名字
}

reputation_desc[229] =
{
	name = "活躍信物",															--声望道具的名字
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",				--声望道具的图集
	sprite = "jifen",														--声望图标的名字
}

reputation_desc[147] =
{
	name = "伯樂經",
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",
	sprite = "skillbook_blue",
}

reputation_desc[157] =
{
	name = "勇毅令",
	atlas = "Arts/Res/UI/Atlas/KungfuSoul/KungfuSoulAtlas.prefab.u3dext",
	sprite = "herolvicon",
}

reputation_desc[162] =
{
	name = "演武積分",
	atlas = "Arts/Res/UI/Atlas/Shop/ShopAtlas.prefab.u3dext",	
	sprite = "jifen",
}

reputation_desc[26] =
{
	name = "武勳",
	atlas = "Arts/Res/UI/Atlas/Officer/OfficerAtlas.prefab.u3dext",	
	sprite = "Item_BadgeRepu",
}
return reputation_desc

