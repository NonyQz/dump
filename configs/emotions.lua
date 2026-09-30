
local emotion_list = {}
local l_config = {}

function emotion_list:getConfigs()
	return l_config
end

function emotion_list:addEmotion(id,name)
	return function (config)
		config.name = name
		l_config[id] = config
	end
end

emotion_list:addEmotion(1,"微笑kh")
{
	pingyin = "weixiao",
	sprite = "Emotion01_weixiao",
	atlas = "ChatEmotionAtlas",
}

emotion_list:addEmotion(2,"大笑kh")
{
	pingyin = "daxiao",
	sprite = "Emotion02_daxiao",
	atlas = "ChatEmotionAtlas",
}

emotion_list:addEmotion(3,"頑皮kh")
{
	pingyin = "wanpi",
	sprite = "Emotion03_wanpi",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(4,"可愛kh")
{
	pingyin = "keai",
	sprite = "Emotion04_keai",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(5,"生氣kh")
{
	pingyin = "shengqi",
	sprite = "Emotion05_shengqi",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(6,"發怒kh")
{
	pingyin = "fanu",
	sprite = "Emotion06_fanu",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(7,"抓狂kh")
{
	pingyin = "zhuakuang",
	sprite = "Emotion07_zhuakuang",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(8,"害羞kh")
{
	pingyin = "haixiu",
	sprite = "Emotion08_haixiu",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(9,"發愁kh")
{
	pingyin = "fachou",
	sprite = "Emotion09_fachou",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(10,"驚訝kh")
{
	pingyin = "jingya",
	sprite = "Emotion10_jingya",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(11,"恐怖kh")
{
	pingyin = "kongbu",
	sprite = "Emotion11_kongbu",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(12,"難過kh")
{
	pingyin = "nanguo",
	sprite = "Emotion12_nanguo",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(13,"大哭kh")
{
	pingyin = "daku",
	sprite = "Emotion13_daku",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(14,"色kh")
{
	pingyin = "se",
	sprite = "Emotion14_se",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(15,"發呆kh")
{
	pingyin = "fadai",
	sprite = "Emotion15_fadai",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(16,"疑問kh")
{
	pingyin = "yiwen",
	sprite = "Emotion16_yiwen",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(17,"無辜kh")
{
	pingyin = "wugu",
	sprite = "Emotion17_wugu",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(18,"寒kh")
{
	pingyin = "han",
	sprite = "Emotion18_han",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(19,"困kh")
{
	pingyin = "kun",
	sprite = "Emotion19_kun",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(20,"睡kh")
{
	pingyin = "shui",
	sprite = "Emotion20_shui",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(21,"求kh")
{
	pingyin = "qiu",
	sprite = "Emotion21_qiu",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(22,"鄙視kh")
{
	pingyin = "bishi",
	sprite = "Emotion22_bishi",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(23,"勝利kh")
{
	pingyin = "shengli",
	sprite = "Emotion23_shengli",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(24,"得意kh")
{
	pingyin = "deyi",
	sprite = "Emotion24_deyi",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(25,"失敗kh")
{
	pingyin = "shibai",
	sprite = "Emotion25_shibai",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(26,"愛戴kh")
{
	pingyin = "aida",
	sprite = "Emotion26_aida",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(27,"囧啊kh")
{
	pingyin = "jionga",
	sprite = "Emotion27_jionga",
	atlas = "ChatEmotionAtlas",
}
emotion_list:addEmotion(28,"親吻kh")
{
	pingyin = "qinwen",
	sprite = "Emotion28_qinwen",
	atlas = "ChatEmotionAtlas",
}

--小鸡表情配置开始（动图表情）

emotion_list:addEmotion(29,"寒xj")
{
	pingyin = "hanleng",
	sprite = "EmotionChick_bing",
	fps = 5,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(30,"鄙視xj")
{
	pingyin = "bishi",
	sprite = "EmotionChick_bishi",
	fps = 3,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(31,"吃xj")
{
	pingyin = "chi",
	sprite = "EmotionChick_chi",
	fps = 3,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(32,"大哭xj")
{
	pingyin = "daku",
	sprite = "EmotionChick_daku",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(33,"對手指xj")
{
	pingyin = "duishouzhi",
	sprite = "EmotionChick_duishouzhi",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(34,"遁xj")
{
	pingyin = "dun",
	sprite = "EmotionChick_dun",
	fps = 6,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(35,"尷尬xj")
{
	pingyin = "ganga",
	sprite = "EmotionChick_ganga",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(36,"害羞xj")
{
	pingyin = "haixiu",
	sprite = "EmotionChick_haixiu",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(37,"汗xj")
{
	pingyin = "han",
	sprite = "EmotionChick_han",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(38,"壞笑xj")
{
	pingyin = "huaixiao",
	sprite = "EmotionChick_huaixiao",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(39,"花心xj")
{
	pingyin = "huaxin",
	sprite = "EmotionChick_huaxin",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(40,"驚訝xj")
{
	pingyin = "jing",
	sprite = "EmotionChick_jing",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(41,"可憐xj")
{
	pingyin = "kelian",
	sprite = "EmotionChick_kelian",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(42,"酷xj")
{
	pingyin = "ku",
	sprite = "EmotionChick_ku0",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(43,"困xj")
{
	pingyin = "kun",
	sprite = "EmotionChick_kun",
	fps = 6,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(44,"樂xj")
{
	pingyin = "le",
	sprite = "EmotionChick_le0",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(45,"淚流xj")
{
	pingyin = "leiliu",
	sprite = "EmotionChick_leiliu",
	fps = 3,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(46,"流淚xj")
{
	pingyin = "liulei",
	sprite = "EmotionChick_liulei",
	fps = 3,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(47,"美人xj")
{
	pingyin = "meiren",
	sprite = "EmotionChick_meiren",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(48,"慶祝xj")
{
	pingyin = "qingzhu",
	sprite = "EmotionChick_qingzhu",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(49,"吐xj")
{
	pingyin = "tu",
	sprite = "EmotionChick_tu",
	fps = 7,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(50,"毒xj")
{
	pingyin = "wumai",
	sprite = "EmotionChick_wumai",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(51,"翔xj")
{
	pingyin = "xiang",
	sprite = "EmotionChick_xiang",
	fps = 7,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(52,"笑xj")
{
	pingyin = "xiao",
	sprite = "EmotionChick_xiao",
	fps = 6,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(53,"暈xj")
{
	pingyin = "yun",
	sprite = "EmotionChick_yun",
	fps = 4,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(54,"贊xj")
{
	pingyin = "zan",
	sprite = "EmotionChick_zan",
	fps = 3,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(55,"中箭xj")
{
	pingyin = "zhongjian",
	sprite = "EmotionChick_zhongjian",
	fps = 2,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}

emotion_list:addEmotion(56,"揍你xj")
{
	pingyin = "zouni",
	sprite = "EmotionChick_zouni",
	fps = 6,
	atlas = "ChatEmotionChickAtlas",
	snap = false,
	width = 40,
	height = 40,
}


--配置结束
--dofile "../Lua/Utility/malut.lua".printTable(emotion_list:getConfigs())

return emotion_list