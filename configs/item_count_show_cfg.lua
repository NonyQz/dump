local item_count_show_cfg = {}

local ITEM_CLASSID = 
{
	ICID_UNKNOWN = -1,  
	ICID_RETAINED_GIFT =  1, 	-- 留存礼包
	ICID_LOTTERY = 2,				-- 彩票
	ICID_EQUIP = 3,				-- 装备
	ICID_MEDICINE = 4,				-- 药品
	ICID_TASKDICE = 5,				-- 任务触发物品
	ICID_BLESSING = 6,				-- 鲜花
	ICID_PET = 7,					-- 名人兑换卷
	ICID_ELIXIR = 8,				-- 名人丹药
	ICID_SSTONE = 9,				-- 炼星石
	ICID_ESTONE = 10,				-- 镶嵌石
	ICID_NORMAL_ITEM = 11,			-- 普通物品
	ICID_SKILLMATTER = 12,			-- 技能物品
	ICID_TASK_ITEM = 13,				-- 任务物品
	ICID_CEL = 14,					-- 坐骑
	ICID_GENERATE_ITEM = 15,			-- 物品
	ICID_CARD = 16,				-- 卡牌
	ICID_TASK_ITEM_GENERATOR = 17,		-- 任务物品发生器
	ICID_SURFACE_TICKET = 18,			-- 翅膀幻化兑换券
	ICID_HOLYBOSS_MATERAIL = 19,		-- 圣兽材料	
	ICID_SCROLL_OF_TOWN_PORTAL = 20,	-- 传送卷轴
	ICID_SEED = 21,				-- 种子
	ICID_ZHAOJILING = 22,				-- 召集令
	ICID_DIAMOND = 23,				-- 钻石
	ICID_RED_PACKET = 24,			-- 红包
	ICID_PK_IMMUNITY = 25,			-- 免战牌
	ICID_DIAMOND_BAG = 26,			-- 钻石袋
	ICID_DANMAKU = 27,				-- 弹幕
	ICID_MINGWEN = 28,				-- 铭文
	ICID_PETEGG = 29,				-- 神兽蛋
	ICID_PETELIXIR = 30,				-- 神兽经验丹
	ICID_TITLE_ITEM = 31,				-- 称号物品
	ICID_GRANT_REWARD = 32,			-- 通用奖励物品
	ICID_WEAPON_TICKET = 33,			-- 法器兑换券
	ICID_GENERAL_SOUL_TICKET = 34,		-- 将魂兑换券
	ICID_GENERAL_STAR = 35,			-- 将星
	ICID_TALENT_BREAK = 36,			-- 天赋突破道具
	ICID_SERVER_REPUTATION = 37 ,		--全服声望道具
	ICID_SECRETS_BOOK_TICKET = 38,		-- 秘籍兑换券
	ICID_VIOLENT_PK = 39,			-- 狂暴药剂
}

--装备类别: EQUIPMENT_ESSENCE.equip_type
local EQUIPTYPE_ENUM = 
{
	EQUIPTYPE_UNKNOWN = -1,

	--	0
	EQUIPTYPE_WEAPON_AND_ARMOUR =  0,			--	兵甲
	EQUIPTYPE_INSIDE = 1,				--	内装
	EQUIPTYPE_HORSE = 2,				--	坐骑装备
	EQUIPTYPE_WING = 3,					--	翅膀
	EQUIPTYPE_PEDANT_1 = 4,				--	挂件1
	EQUIPTYPE_PEDANT_2 = 5,				--	挂件2
	EQUIPTYPE_PEDANT_3 = 6,				--	挂件3
	EQUIPTYPE_FASION = 7,				--	时装
	EQUIPTYPE_ANIAML_EQUIP = 8,			--	神兽装备
	EQUIPTYPE_FIGHT_EQUIP = 9,			--	战装
}
--[[
	_G.IVTRTYPE_ENUM =
	{
	    IVTRTYPE_INVALID = -1,
	    IVTRTYPE_EQUIPPACK = 0,	 -- Equipment 
	    IVTRTYPE_PACK = 1,		 -- Normal pack
	    IVTRTYPE_TASKITEM = 2,	 -- Task Item pack
	    IVTRTYPE_MATERIAL = 3,	 -- Material pack 
	    IVTRTYPE_NORMAL_PACK_END = 4,
	    IVTRTYPE_DEPOSITORY = 4, --
	    IVTRTYPE_MAFIASTORE = 5, --
	    IVTRTYPE_RECYCLEBIN = 6, --
	    IVTRTYPE_TEMPBACK = 7,   --
	    IVTRTYPE_FASHION = 8,    -- Fashion pack
	    IVTRTYPE_FASHION_WARDROBE = 9,    -- Fashion YICHU pack
	    IVTRTYPE_SPECIAL = 10, --场景背包
	    IVTRTYPE_PET_EQUIP_BEGIN = 200, --Pet Pack
	    IVTRTYPE_PET_EQUIP_1 = 200, 
	    IVTRTYPE_PET_EQUIP_2 = 201,
	    IVTRTYPE_PET_EQUIP_3 = 202,
	    IVTRTYPE_PET_EQUIP_4 = 203,
	    IVTRTYPE_PET_EQUIP_5 = 204,
	    IVTRTYPE_PET_EQUIP_6 = 205,
	    IVTRTYPE_PET_EQUIP_7 = 206,
	    IVTRTYPE_PET_EQUIP_8 = 207,
	    IVTRTYPE_PET_EQUIP_END = 207,
	    
	    IVTRTYPE_COUNT = 208,
	}
]]
--说明
--[[
item_count_show_cfg[ 物品id ] =	--物品id
{
	--背包
	InventoryIds = {
		IVTRTYPE_ENUM.IVTRTYPE_PACK,  --Normal pack 普通背包
		IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY, --仓库
		IVTRTYPE_ENUM.IVTRTYPE_FASHION, --时装
	}, --物品id所在各背包。会依次计算物品数量，并叠加

	output_id = { id = tid, class_id = ITEM_CLASSID内的值, equip_type = EQUIPIVTR_ENUM内的值 }产出物id, --产出物 ， 如果有产出物，则会继续搜索计算产出物的count，并叠加到物品id所计算的count内，  id = 0 或者没有count 则表示没有产出物
	is_ride = false ,--是否是坐骑，如果有则会找坐骑列表计算数量  可以没有此项。
	is_equip_wing = false --是否是翅膀 如果有，则会去翅膀列表内计算翅膀数量 可以没有此项
}
]]
--------------------------------------------------------------------------------------------------------------------
local item_class_id_cfg = {}

item_class_id_cfg[ITEM_CLASSID.ICID_EQUIP] = --装备
{
	[EQUIPTYPE_ENUM.EQUIPTYPE_FASION] =   --时装
	{
		--背包
		InventoryIds = {
			IVTRTYPE_ENUM.IVTRTYPE_FASHION, --时装
		},
		is_fashion = true,
		have_desc = "已擁有此時裝: %d",
		none_desc = "[ff0000]未擁有此時裝[-]",
	},
	[EQUIPTYPE_ENUM.EQUIPTYPE_WING] = --翅膀
	{
		is_equip_wing = true,
		have_desc = "已擁有此翅膀: %d",
		none_desc = "[ff0000]未擁有此翅膀[-]",
	},
}
item_class_id_cfg[ITEM_CLASSID.ICID_PET] = --名人兑换券
{
	--背包
	InventoryIds = {
		IVTRTYPE_ENUM.IVTRTYPE_PACK,  --Normal pack 普通背包
		IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY, --仓库
	},

	has_output = true, --是否有产出物，有的话会找配置文件内的产出物计算数量
	have_desc = "已擁有此坐騎: %d",
	none_desc = "[ff0000]未擁有此坐騎[-]",
}
item_class_id_cfg[ITEM_CLASSID.ICID_CEL] = --名人
{
	is_ride = true,
	have_desc = "已擁有此坐騎: %d",
	none_desc = "[ff0000]未擁有此坐騎[-]",
}
item_class_id_cfg[ITEM_CLASSID.ICID_SURFACE_TICKET] = --翅膀兑换券
{
	--背包
	InventoryIds = {
		IVTRTYPE_ENUM.IVTRTYPE_PACK,  --Normal pack 普通背包
		IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY, --仓库
	},

	has_output = true, --是否有产出物，有的话会找配置文件内的产出物计算数量
	have_desc = "已擁有此翅膀: %d",
	none_desc = "[ff0000]未擁有此翅膀[-]",
}


item_count_show_cfg.ItemClassICIDCfg = item_class_id_cfg
--------------------------------------------------------------------------------------------------------------------
item_id_cfg = {}   
--时装彩票

item_id_cfg[7685] =--[冬季恋歌礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 7576, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[7686] =--[绿野仙踪礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 7664, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[7687] =--[冰雪奇缘礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 7667, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[8244] =--[赤龙礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 6802, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[9391] =--[玄月诱惑礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 9011, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[9392] =--[嘉木繁荫礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 9935, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[10435] =--[幽灰异闻礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10436, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[10616] =--[朱红华彩礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10617, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[10851] =--[赤虎礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10850, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[10852] =--[赤子之心] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10855, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[10919] =--[黄沙百战礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10918, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11389] =--[楚山孤客礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11390, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11396] =--[长风破浪礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11397, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11422] =--[高卢英姿礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11424, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11437] =--[断水礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11438, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11528] =--[消愁礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11527, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11568] =--[斗牛礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11569, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11776] =--[华缕丝冠礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11778, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11777] =--[纹衮冕服礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11779, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11802] =--[夜魅礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11805, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[11917] =--[桃源隐士礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11916, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12007] =--[碧陌礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11983, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12008] =--[鹤雪礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11986, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12009] =--[泣影礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11989, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12010] =--[绿绮礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11992, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12011] =--[幻殇礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11995, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12012] =--[陌离礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11998, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12013] =--[流霞礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12001, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12014] =--[夜歌礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12004, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12116] =--[鸾凤和鸣礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12114, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12179] =--[大方无隅礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12176, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12875] =--[玉羽青绸礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12874, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12876] =--[疏狂暗香礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11886, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12924] =--[韶华剑心礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12923, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[12925] =--[剑影花馨礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12922, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[13798] =--[冬日礼赞礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 13792, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[14182] =--[古韵清秋礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 14181, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[14221] =--[盛世红颜礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 14220, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[14370] =--[暗香浮动礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 14367, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[15206] =--[落英纷华礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 15205, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[15573] =--[扑克丑皇礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 15522, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[15599] =--[异域风情礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 15598, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[15991] =--[金觥礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 15988, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16327] =--[侍愿礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16326, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16518] =--[豆蔻年华礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16510, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16538] =--[瑶池阆苑礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16205, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16588] =--[云墟礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16585, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16682] =--[风羽落尘礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16681, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16869] =--[清徽素锦礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16867, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16875] =--[青青子衿礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16871, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16910] =--[花翎寄羽礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16909, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16975] =--[茗剑礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16972, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16985] =--[寂风礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16517, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[16986] =--[梅落繁枝礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 16714, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17029] =--[银霜凤翎礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17028, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17030] =--[梅月轻裳礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17025, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17048] =--[幽城绽夜礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17045, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17216] =--[罗袖] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17210, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17260] =--[点墨飞尘礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17259, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17289] =--[浣花挽月礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17288, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17308] =--[花间绫舞礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17306, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17357] =--[青俊达人礼包] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17346, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17350] =--[烈火如歌] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17348, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[18179] =--[素锦漪帘] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17660, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[18180] =--[游园惊梦] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17368, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }    

item_id_cfg[18675] =--[银霜落歌] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17762, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }    

item_id_cfg[18693] =--[兰斯洛特] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 18692, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[18764] =--[圣隐沐泫] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 18766, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[19099] =--[云溪倾蜜] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19100, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[19192] =--[云曦风宸] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19189, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17629] =--[飞鸾] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17626, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[17725] =--[瑾年璃月] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 17723, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }

item_id_cfg[18487] =--[渺尘茉黎] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 18486, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }  

item_id_cfg[19241] =--[凝香落歌] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19235, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19277] =--[夏歌清黎] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19276, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19380] =--[荷暮言婳] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19379, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19505] =--[辰筱木兮] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19490, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19664] =--[寒曳秀雪] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19661, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19651] =--[绯焰修罗] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 13802, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19652] =--[长风破浪] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11397, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19653] =--[绿荫春欣] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 14345, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19654] =--[华缕丝冠] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11778, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19659] =--[大方无隅] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12176, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19655] =--[暗夜霜衣] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 12721, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19656] =--[赤子之心] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10855, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19657] =--[绿野仙踪] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 7664, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19660] =--[斗牛] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11569, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19658] =--[消愁] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 11527, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19789] =--[百堇蝶尘] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19788, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }        

item_id_cfg[19904] =--[洛青隐沫] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19900, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[19932] =--[岚茉熙云] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19931, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      


item_id_cfg[19993] =--[白陌莺歌] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 19991, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[20046] =--[浮生梦蝶] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20042, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[20102] =--[炫彩炎夏] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20101, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[20142] =--[陌雪兰辞] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20141, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[20201] =--[湮华落梦] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20200, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }      

item_id_cfg[20245] =--[花间梨落] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20242, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   


item_id_cfg[20283] =--[艾妮瑞斯] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20280, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20386] =--[青木灵汐] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20384, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20442] =--[封禹赤霞] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20439, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20510] =--[遗城落梦] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20502, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20511] =--[北幕南辞] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20507, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20576] =--[红锦南鸢] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20575, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    }   

item_id_cfg[20647] =--[云溪东篱] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20646, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    } 

item_id_cfg[20706] =--[浮生念辞] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20705, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    } 

item_id_cfg[20745] =--[玉锦忘川] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 20744, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    } 

item_id_cfg[21042] =--[碧海听涛] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 15919, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    } 

item_id_cfg[21043] =--[冰火之歌] 
    {
       --背包
    InventoryIds={ 
         IVTRTYPE_ENUM.IVTRTYPE_PACK, --Normal pack 普通背包
         IVTRTYPE_ENUM.IVTRTYPE_DEPOSITORY,--仓库 
    },

    output_id = {id = 10437, class_id = ITEM_CLASSID.ICID_EQUIP, equip_type = EQUIPTYPE_ENUM.EQUIPTYPE_FASION, },  --时装装备ID
    have_desc = "已擁有此時裝: %d",
    none_desc = "[ff0000]未擁有此時裝[-]",
    } 
item_count_show_cfg.ItemIDCfg = item_id_cfg

return item_count_show_cfg
--------------------------------------------------------------------------------------------------------------------