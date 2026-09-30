--Added 2016/1/14
--前期使用了很多比如petModelConfig.lua和magicWeaponConfig.lua
--后期将逐渐使用此配置来调整模型在UIModel的大小位置

local UIModelConfig = {}

local l_configs = {}
function UIModelConfig:getAllConfigs ()
	return l_configs
end

function UIModelConfig:addConfig(modelPathId)
	return function (config)
		l_configs[modelPathId] = config
	end
end
--神兽蛋配置
UIModelConfig:addConfig(2632)
{
	["panel_pet_get"] = 
	{
		scale = 1,
		roatate = 0,
		fov = 60,
		far = 10,
		xoffset = 0,
		yoffset = 0,
		zoffset = 1.91,
	},
}


UIModelConfig:addConfig(2144)                --测试神兽本体2（8014）
{
	["panel_pet.SubPanel_PetInfo"] =     --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petpolish"] =    --神兽炼妖界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.17, 
		yoffset = -1.45, 
		zoffset = 5.85,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 30.5, 
		far = 18.58, 
		xoffset = 0.16, 
		yoffset = -0.82, 
		zoffset = 9.3,
	},
	
}

UIModelConfig:addConfig(2132)              --测试神兽本体和本体1（7998）
{
	["panel_pet.SubPanel_PetInfo"] =        --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 2.7, 
		far = 100, 
		xoffset = 0, 
		yoffset = 0, 
		zoffset = 86,
	},
	["panel_pet.SubPanel_Petpolish"] =    --神兽炼妖界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far =10, 
		xoffset = 0, 
		yoffset = -1.12, 
		zoffset = 5.62,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 20.8, 
		xoffset = -0.1, 
		yoffset = -0.86, 
		zoffset = 4.99,
	},
}

UIModelConfig:addConfig(2378)               --测试神兽本体5（8021）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = -1.37, 
		zoffset = 5.5,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = -0.97, 
		zoffset = 5.21,
	},
}

UIModelConfig:addConfig(2223)               --测试神兽本体4（8021）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = -0.99, 
		zoffset = 4.59,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = -0.44, 
		zoffset = 3.89,
	},
}

UIModelConfig:addConfig(2218)               --测试神兽本体3（8015）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2.5, 
		roatate = 0, 
		fov = 10, 
		far = 100, 
		xoffset = 0, 
		yoffset = -2.5, 
		zoffset = 75,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 66.7, 
		far = 13.08, 
		xoffset = 0.18, 
		yoffset = -4.2, 
		zoffset = 7.6,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = -3.03, 
		zoffset = 10.01,
	},
}
UIModelConfig:addConfig(3131)               --血色虎（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.45, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.19,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.31,
	},
}

UIModelConfig:addConfig(3132)               --白色虎（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.45, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.19,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.31,
	},
}
UIModelConfig:addConfig(3145)               --黑猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.47,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.6, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 70.5, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.59, 
		zoffset = 0.92,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.56, 
		zoffset = 1.09,
	},
}

UIModelConfig:addConfig(3127)               --泡罗猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.47,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.6, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 70.5, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.59, 
		zoffset = 0.92,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.56, 
		zoffset = 1.09,
	},
}


UIModelConfig:addConfig(3128)               --橙猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.47,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.6, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 70.5, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.59, 
		zoffset = 0.92,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.56, 
		zoffset = 1.09,
	},
}



UIModelConfig:addConfig(3129)               --棕色虎（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.45, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.19,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.31,
	},
}

UIModelConfig:addConfig(3130)               --黄色虎（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.45, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.19,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.31,
	},
}


UIModelConfig:addConfig(3108)               --黎龙宝宝（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.3,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.3, 
		zoffset = 1.13,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 0.91,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.46, 
		zoffset = 0.99,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.44, 
		zoffset = 1,
	},
}

UIModelConfig:addConfig(2631)               --晶玲猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.47,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.6, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 70.5, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.59, 
		zoffset = 0.92,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.56, 
		zoffset = 1.09,
	},
}

UIModelConfig:addConfig(3282)               --霸天虎（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.45, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.19,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.31,
	},
}


UIModelConfig:addConfig(3221)               --猴赛雷（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.68, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 0.99,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 0.99,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.64, 
		zoffset = 0.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.01, 
		yoffset = 0.63, 
		zoffset = 0.9,
	},
}

UIModelConfig:addConfig(3222)               --QQ企鹅（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.66, 
		zoffset = 1.16,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.06,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.05,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 0.98,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.05,
	},
}


UIModelConfig:addConfig(3223)               --QQ红毛企鹅（10216）
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.66, 
		zoffset = 1.16,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.06,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.03,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 0.98,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.05,
	},
}

UIModelConfig:addConfig(3295)               --马
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.22,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.53, 
		zoffset = 1.32,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.21,
	},
}

UIModelConfig:addConfig(3296)               --千手紫蛛
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.01, 
		yoffset = 0.52, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -8, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.14,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -9, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.61, 
		zoffset = 1.08,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
}

UIModelConfig:addConfig(3832)               --烈火尾蛛
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.01, 
		yoffset = 0.52, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.14,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.61, 
		zoffset = 1.08,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
}
UIModelConfig:addConfig(3297)               --兔子
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.22,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.57, 
		zoffset = 1.09,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.01,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.65, 
		zoffset = 1.13,
	},
}

UIModelConfig:addConfig(3298)               --守望之仙人掌
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.15,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.05,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.12,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 0.89,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 0.95,
	},
}

UIModelConfig:addConfig(3833)               --蓝芽球仙人掌
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.15,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.05,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.12,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 0.89,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 0.95,
	},
}

UIModelConfig:addConfig(3360)               --黄鸭
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.52,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.46, 
		zoffset = 1.2,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.2,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.12,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.32,
	},
}

UIModelConfig:addConfig(3361)               --小金猪
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.46, 
		zoffset = 1.83,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.3, 
		zoffset = 1.6,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.41, 
		zoffset = 1.47,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.43, 
		zoffset = 1.51,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.44, 
		zoffset = 1.43,
	},
}

UIModelConfig:addConfig(3640)               --可心熊本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.59, 
		zoffset = 1.34,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.11,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.24,
	},
}

UIModelConfig:addConfig(3835)               --白莹熊本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.59, 
		zoffset = 1.34,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.11,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.24,
	},
}
UIModelConfig:addConfig(3713)               --熊猫人本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.55, 
		zoffset = 1.38,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.45, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.47, 
		zoffset = 1.31,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.21,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.27,
	},
}

UIModelConfig:addConfig(3715)               --速龙本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.51, 
		zoffset = 1.46,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.36, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.03, 
		yoffset = 0.51, 
		zoffset = 1.34,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.25,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(3831)               --速龙变色---炎龙
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.51, 
		zoffset = 1.46,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.36, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.03, 
		yoffset = 0.51, 
		zoffset = 1.34,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.25,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.44,
	},
}
UIModelConfig:addConfig(3820)               --巨象本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.08, 
		yoffset = 0.54, 
		zoffset = 2.01,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.33, 
		zoffset = 1.88,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.39, 
		zoffset = 1.6,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.47, 
		zoffset = 1.6,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.42, 
		zoffset = 1.82,
	},
}

UIModelConfig:addConfig(3821)               --紫雷蝎本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}

UIModelConfig:addConfig(3834)               --红阳蝎本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}

UIModelConfig:addConfig(3848)               --糖果怪本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.66, 
		zoffset = 1.23,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.14,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.58, 
		zoffset = 1.04,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 0.98,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.01,
	},
}


UIModelConfig:addConfig(3924)               --奥运汤姆
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.60, 
		zoffset = 1.15,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.01,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.6, 
		zoffset = 0.87,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 0.88,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 0.94,
	},
}

UIModelConfig:addConfig(3925)               --奥运维尼修斯
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.59, 
		zoffset = 1.45,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.41, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.45, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.48, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1.2,
	},
}

UIModelConfig:addConfig(3923)               --周年庆黄鸡
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.56, 
		zoffset = 1.34,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.62, 
		zoffset = 1,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 0.81,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.69, 
		zoffset = 1.4,
	},
}

UIModelConfig:addConfig(4206)               --彩票用章鱼哥哥
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.68, 
		zoffset = 1.45,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 1.3,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.67, 
		zoffset = 1.12,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.7, 
		zoffset = 0.84,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.32,
	},
}

UIModelConfig:addConfig(4207)               --竞技场用章鱼妹妹
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.59, 
		zoffset = 1.45,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = 0, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.2,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.66, 
		zoffset = 1.08,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.62, 
		zoffset = 0.94,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.67, 
		zoffset = 1.16,
	},
}

UIModelConfig:addConfig(4251)               --微信用蓝色大象
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.08, 
		yoffset = 0.54, 
		zoffset = 2.01,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.33, 
		zoffset = 1.88,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.39, 
		zoffset = 1.6,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.47, 
		zoffset = 1.6,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.42, 
		zoffset = 1.82,
	},
}

UIModelConfig:addConfig(4252)               --手Q用黄色小马
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.22,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.53, 
		zoffset = 1.32,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.21,
	},
}

UIModelConfig:addConfig(4258)               --师徒奖励企鹅宠物
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.6,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.46, 
		zoffset = 1.42,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.03, 
		yoffset = 0.58, 
		zoffset = 1.27,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.04, 
		yoffset = 0.55, 
		zoffset = 1.22,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.37, 
		zoffset = 1.15,
	},
}

UIModelConfig:addConfig(4294)               --万圣节南瓜杰克
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.71,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.39, 
		zoffset = 1.62,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.48, 
		zoffset = 1.36,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.43, 
		zoffset = 1.22,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.28,
	},
}
UIModelConfig:addConfig(4357)               --婪魔
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.45,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.51, 
		zoffset = 1.3,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.51, 
		zoffset = 1.12,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.03, 
		yoffset = 0.55, 
		zoffset = 1.11,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.03,
	},
}
UIModelConfig:addConfig(4402)               --盖世小鸡
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.61,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.52, 
		zoffset = 1.42,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.55, 
		zoffset = 1.19,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.14,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.2,
	},
}
UIModelConfig:addConfig(4602)               --开膛手杰克
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.71,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.39, 
		zoffset = 1.62,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.48, 
		zoffset = 1.36,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.43, 
		zoffset = 1.22,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.28,
	},
}
UIModelConfig:addConfig(4605)               --鸡娃
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 1.55,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.48, 
		zoffset = 1.43,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.59, 
		zoffset = 1.13,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.48, 
		zoffset = 1,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.15,
	},
}

UIModelConfig:addConfig(4788)               --一木鸡
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.44, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.42, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(4823)               --武士猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.42, 
		zoffset = 1.66,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.41, 
		zoffset = 1.24,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.49, 
		zoffset = 1.25,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.43, 
		zoffset = 1.28,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.52, 
		zoffset = 1.22,
	},
}


UIModelConfig:addConfig(4824)               --丘比特
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.21, 
		zoffset = 1.97,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.08, 
		zoffset = 1.68,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.42, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.21, 
		zoffset = 1.36,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.28, 
		zoffset = 1.51,
	},
}

UIModelConfig:addConfig(4836)               --海盗猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.65, 
		zoffset = 1.1,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.51, 
		zoffset = 1.05,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.6, 
		zoffset = 0.96,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.54, 
		zoffset = 1,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.59, 
		zoffset = 0.93,
	},
}

UIModelConfig:addConfig(5144)               --青木蝎本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}

UIModelConfig:addConfig(5379)               --虎头小宝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.58, 
		zoffset = 1.28,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.48, 
		zoffset = 1.2,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.57, 
		zoffset = 1.03,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.03,
	},
}

UIModelConfig:addConfig(5475)               --芭比熊本体
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.59, 
		zoffset = 1.34,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.21,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.11,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.24,
	},
}

UIModelConfig:addConfig(5727)               --白色小马
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.6, 
		zoffset = 1.29,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.22,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.53, 
		zoffset = 1.32,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.21,
	},
}

UIModelConfig:addConfig(5307)               --圣天虎
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.26, 
		zoffset = 2.29,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.19, 
		zoffset = 2,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.31, 
		zoffset = 1.8,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.35, 
		zoffset = 1.6,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.36, 
		zoffset = 2,
	},
}

UIModelConfig:addConfig(6140)               --黑色蜘蛛
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.01, 
		yoffset = 0.52, 
		zoffset = 1.36,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -8, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.55, 
		zoffset = 1.14,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -9, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.61, 
		zoffset = 1.08,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.09,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.13,
	},
}

UIModelConfig:addConfig(6330)               --冠军神企
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{                                        --界面位置：Panel_Pet/Widget/SubPanel_petmain/Group_twopage/SubPanel_PetInfo/Gound_CharBg/___UIModel
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0.01, 
		yoffset = 0.63, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{                                       --界面位置：Panel_Pet/Widget/SubPanel_petmain/Group_twopage/SubPanel_Petpolish/Gound_CharBg/___UIModel
		scale = 1, 
		roatate = -8, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.53, 
		zoffset = 0.94,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{									--界面位置：Panel_Pet/Widget/SubPanel_PetBook/___UIModel
		scale = 1, 
		roatate = -9, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.57, 
		zoffset = 1.13,
	},
	["panel_pet_get"] =    --神兽获得界面
	{                      --界面位置：Panel_pet_get/Widget/Group_pet/UIModel_pet
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.66, 
		zoffset = 0.85,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{                        --界面位置：Panel_petresult/Widget/Gound_CharBg/UIModel
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.06, 
		yoffset = 0.66, 
		zoffset = 1.01,
	},
}






UIModelConfig:addConfig(3268)               --庆典祭祀神龙
{
	["panel_anniversary"] =         --庆典祭祀界面
	{
		scale = 1, 
		roatate = -30, 				--等于unity中角度减180度
		fov = 60, 
		far = 10, 
		xoffset = -0.8, 
		yoffset = -2, 
		zoffset = 5,
	},
}

UIModelConfig:addConfig(421)               
{
	["panel_guolizhengba"] =         --国力争霸将军界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 55, 
		far = 30, 
		xoffset = 0.11, 
		yoffset = -0.7, 
		zoffset = 4.1,
	},
}

UIModelConfig:addConfig(6712)               --河马仙人
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.49, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.44, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.42, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}
	UIModelConfig:addConfig(6713)  --青龙宝宝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}	
	UIModelConfig:addConfig(7397)  --狐太郎
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(7558)  --竹米团团
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(7625)  --祈天羊
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(7953)  --青鸟
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(7996)  --纳财
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}


UIModelConfig:addConfig(8193)  --塔塔
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}


UIModelConfig:addConfig(8263)  --盆盆
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8215)  --金毫灵猫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8021)  --憨憨
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}
UIModelConfig:addConfig(8421)  --叶枫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8625)  --兔爷
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8766)  --憨大狼
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8814)  --爆爆鼠
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9005)  --布咪
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(8939)  --凶眼
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9129)  --箱巫
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9162)  --眷者
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9274)  --湛蓝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9349)  --财豆
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9380)  --咔哒
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9496)  --貂宝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9554)  --胖虹
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9633)  --硕塔
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9739)  --叶丛
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9747)  --初至
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9809)  --蔚夏
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9928)  --泫音
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(9927)  --贝斯
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(10102)  --冰澈
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(10041)  --奶貂
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(10167)  --哈太郎
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10272)  --九途
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10293)  --蓝丝鼠
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10424)  --如风
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10488)  --二白
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10553)  --阿维二型
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}

UIModelConfig:addConfig(10649)  --小墨
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10758)  --小荔枝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}

UIModelConfig:addConfig(10811)  --阿秋
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10882)  --聪聪
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(10981)  --灵灵
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(10994)  --绿荷
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(11072)  --蓝蓝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(11141)  --优飞
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}
UIModelConfig:addConfig(11172)  --弹弹
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11282)  --飞煌
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}
UIModelConfig:addConfig(11320)  --桃桃
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11404)  --瑶花
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11507)  --雪絮
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11545)  --南瓜小鬼
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11670)  --壳儿
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11700)  --松松
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11793)  --盛丹
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11887)  --绵绵
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(11916)  --寿司
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12032)  --乐乐
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12040)  --软软
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12157)  --小武
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1.6, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1.6, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12251)  --卡萌
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12281)  --方块鸭
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}
UIModelConfig:addConfig(12401)  --莎莎
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0,
		yoffset = 0, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 0.7, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.1,  
		yoffset = 0, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 0.7, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.1, 
		yoffset = 0, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0,
		yoffset = 0, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12434)  --阿扁
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12506)  --玫瑰精
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1.3, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0,
		yoffset = 0.5, 
		zoffset = 1.73,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.63,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 0.7, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.1,  
		yoffset = 0.5, 
		zoffset = 1.41,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = -0.1, 
		yoffset = 0.5, 
		zoffset = 1.42,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0,
		yoffset = 0.5, 
		zoffset = 1.44,
	},
}

UIModelConfig:addConfig(12571)  --小书包
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(12619)  --木呆呆
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(13005)  --木木
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(13016)  --飞菲
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}

UIModelConfig:addConfig(13304)  --小财神
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 2, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 2, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 2, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 2, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 2, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(13470)  --紫灵
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(13544)  --雪绒
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(13721)  --锵锵
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主 界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.4, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -5, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.34, 
		zoffset = 1.9,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.04, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.40, 
		zoffset = 1.9,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.5, 
		zoffset = 1.9,
	},
}
UIModelConfig:addConfig(13776)  --离枝
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}
UIModelConfig:addConfig(13906)  --罐罐
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}
UIModelConfig:addConfig(13995)  --小悟空
{
	["panel_pet.SubPanel_PetInfo"] =         --神兽主界面
	{
		scale = 1, 
		roatate = 10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.00, 
		yoffset = 0.7, 
		zoffset = 1.32,
	},
	["panel_pet.SubPanel_Petpolish"] =      --神兽炼妖界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.58, 
		zoffset = 1.18,
	},
	["panel_pet.SubPanel_Petbook"] =    --神兽图鉴界面
	{
		scale = 1, 
		roatate = -10, 
		fov = 60, 
		far = 10, 
		xoffset = 0.05, 
		yoffset = 0.54, 
		zoffset = 1.17,
	},
	["panel_pet_get"] =    --神兽获得界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.56, 
		zoffset = 1.15,
	},
	["panel_petresult"] =    --神兽合宠结果界面
	{
		scale = 1, 
		roatate = 15, 
		fov = 60, 
		far = 10, 
		xoffset = 0, 
		yoffset = 0.63, 
		zoffset = 1.22,
	},
}
return UIModelConfig