local watch_other_dec = watch_other_dec or {}


--查看其它玩家信息配置

--gm命令 watchother 3 刷新查看界面中的法器
--gm命令 watchother 4 刷新查看界面中的宠物

--法器 key:tid; value:icon			[法器配置模板id] = pathid
watch_other_dec.magicWeapon = 
{		
	[3365] = 3922,  
	[3952] = 2972,   
	[5223] = 3585,
	[6442] = 4276,
	[8714] = 5246,
	[9523] = 5614,
	[9833] = 5734,
	[11458] = 6460,--鸿蒙
	[12215] = 7146,--凤璃
	[13253] = 7404,--仙鹤图标路径
	[13741] = 7566,--建御雷pathdata
	[14299] = 7899,--盖亚pathdata
	[14587] = 8107,--焱阳天女pathdata
	[15005] = 8379,--烟雨pathdata
	[15395] = 8584,--樱吹雪pathdata   图标ID，这里是图标ID
	[15708] = 8769,--桃华pathdata   图标ID，这里是图标ID
	[15996] = 8911,--须弥卷pathdata   图标ID，这里是图标ID	
	[16061] = 9033,--天罡绘卷pathdata   图标ID，这里是图标ID	
	[16124] = 9132,--九天广韵pathdata   图标ID，这里是图标ID
	[16173] = 9203,--进宝pathdata   图标ID，这里是图标ID	
	[16247] = 9319,--玲珑骰pathdata   图标ID，这里是图标ID	
	[18372] = 9525,--墨意pathdata   图标ID，这里是图标ID
	[18424] = 9599,--竹枝词pathdata   图标ID，这里是图标ID	
	[18481] = 9708,--荒魂pathdata   图标ID，这里是图标ID
	[18573] = 9835,--两仪镜pathdata   图标ID，这里是图标ID	
	[18668] = 9963,--浑天玉pathdata   图标ID，这里是图标ID	
	[18747] = 10104,--衡天珠pathdata   图标ID，这里是图标ID
	[18809] = 10207,--紫黛pathdata   图标ID，这里是图标ID
	[18892] = 10304,--秘文玄珠pathdata   图标ID，这里是图标ID
	[18946] = 10452,--翠塔玄珠pathdata   图标ID，这里是图标ID
	[19030] = 10664,--天睛pathdata   图标ID，这里是图标ID
	[19101] = 10765,--尼罗锤pathdata   图标ID，这里是图标ID
	[19143] = 10815,--莲心结 依次填入法器配置ID和法器图标ID
	[19196] = 10951,--霜华 依次填入法器配置ID和法器图标ID
    [19238] = 11053,--归终 依次填入法器配置ID和法器图标ID
    [19301] = 11128,--司咒之环 依次填入法器配置ID和法器图标ID
    [19359] = 11253,--青木之书 依次填入法器配置ID和法器图标ID
    [19416] = 11369,--万圣灯 依次填入法器配置ID和法器图标ID
    [19461] = 11482,--万圣灯 依次填入法器配置ID和法器图标ID
    [19572] = 11616,--厌胜人偶 依次填入法器配置ID和法器图标ID
    [19607] = 11739,--忧忧兔 依次填入法器配置ID和法器图标ID
    [19608] = 11737,--福到 依次填入法器配置ID和法器图标ID
    [19685] = 11859,--小黄人 依次填入法器配置ID和法器图标ID
    [19757] = 11983,--渊海灵珠 依次填入法器配置ID和法器图标ID
    [19788] = 12098,--涤魂宝瓶 依次填入法器配置ID和法器图标ID
    [19879] = 12222,--秘遗指环 依次填入法器配置ID和法器图标ID
    [19938] = 12345,--同心杯 依次填入法器配置ID和法器图标ID    
    [19980] = 12467,--巫祭杯 依次填入法器配置ID和法器图标ID    
    [20051] = 12609,--骸骨烛台 依次填入法器配置ID和法器图标ID  
    [20089] = 12930,--骸骨烛台 依次填入法器配置ID和法器图标ID 
    [21115] = 13282,--樱纹灯 依次填入法器配置ID和法器图标ID
    [21273] = 13518,--行远 依次填入法器配置ID和法器图标ID     
    [21340] = 13714,--御吉 依次填入法器配置ID和法器图标ID    
    [21399] = 13839,--买买买 依次填入法器配置ID和法器图标ID  
    [21450] = 13984,--裁决之镰 依次填入法器配置ID和法器图标ID  
}



--翅膀 key:tid; value:icon
watch_other_dec.wing = 
{		
	[875] = 1430,
	[876] = 1431,
	[877] = 1415,
	[878] = 1432,
	[879] = 1433,
	[880] = 1434,
	[881] = 1429,
	[1873] = 1869,
	[2768] = 2139,
	[2769] = 2140,
	[2924] = 2222,
	[2926] = 2227,
	[3203] = 2397,
	[3360] = 2467,
	[3375] = 2460,
	[3693] = 2629,
	[4051] = 3056,
	[4369] = 3062,
	[4498] = 3283,
	[4501] = 3286,
	[5251] = 3673,
	[5307] = 3674,
	[5319] = 3782,
	[5454] = 3816,
	[5489] = 3829,
	[5500] = 3843,
	[5501] = 3844,
	[5506] = 3847,
}


--------法器模型参数-----------------
--key:pathid
watch_other_dec.magicModeInfo = 
{		
	--无间
	[2449] = {scale = 2.5, roatate = 0, fov = 20, far = 8.75, xoffset = -1.25, yoffset = -0.8, zoffset = 6.3},
	--千媚莲灯
	[2683] = {scale = 2.3, roatate = 0, fov = 20, far = 8.75, xoffset = -1.15, yoffset = -0.75, zoffset = 6.3},
	--赤焰龙壁
	[3586] = {scale = 2.3, roatate = 0, fov = 20, far = 8.75, xoffset = -1.2, yoffset = -1.15, zoffset = 6.3},
	--波板糖
	[4257] = {scale = 2, roatate = 0, fov = 20, far = 8.75, xoffset = -0.95, yoffset = -0.9, zoffset = 6.3},
	--火玲珑
	[5248] = {scale = 2, roatate = 0, fov = 20, far = 8.75, xoffset = -0.95, yoffset = -0.9, zoffset = 6.3},
	--绮星蚀月
	[5613] = {scale = 4.5, roatate = 0, fov = 20, far = 8.75, xoffset = -2.05,yoffset = -2.7, zoffset = 6.3},
	--摄魂镜
	[5732] = {scale = 1.85, roatate = 0, fov = 20, far = 8.75, xoffset = -0.87, yoffset = -0.9, zoffset = 6.3},
	--鸿蒙
    [6463] = {scale = 1.4, roatate = 0, fov = 20, far = 8.75, xoffset = -0.65, yoffset = -0.35, zoffset = 6.3},
	--凤璃
    [7145] = {scale = 1.4, roatate = 0, fov = 20, far = 8.75, xoffset = -0.65, yoffset = -0.35, zoffset = 6.3},	
	--仙鹤	
    [7402] = {scale = 1.4, roatate = 0, fov = 20, far = 8.75, xoffset = -0.65, yoffset = -0.75, zoffset = 6.3},	
	--建御雷
    [7556] = {scale = 1.4, roatate = 0, fov = 20, far = 8.75, xoffset = -0.65, yoffset = -0.35, zoffset = 6.3},
	--盖亚
	[7896] = {scale = 1.4, roatate = 0, fov = 20, far = 8.75, xoffset = -0.65, yoffset = -0.45, zoffset = 6.3},

	--焱阳天女
    [8105] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -1, yoffset = -0.7, zoffset = 6.3},
	
	--烟雨
    [8369] = {scale = 3, roatate = 0, fov = 20, far = 8.75, xoffset = -1.35, yoffset = -1.45, zoffset = 6.3},

	--樱吹雪
    [7715] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -1, zoffset = 6.3},

	--樱吹雪
    [8096] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -0.9, yoffset = -0.9, zoffset = 6.3},
	
	--须弥卷
    [8909] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -1.1, yoffset = -1.3, zoffset = 6.3},

	--天罡绘卷
    [8324] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -1.1, yoffset = -1.3, zoffset = 6.3},

 	--九天广韵
    [8506] = {scale = 2.1, roatate = 0, fov = 20, far = 8.75, xoffset = -1.1, yoffset = -1.3, zoffset = 6.3},

 	--进宝
    [8980] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -0.4, zoffset = 6.3},
	
 	--玲珑骰
    [9113] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -0.5, zoffset = 6.3},

  	--墨意
    [9314] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -0.8, zoffset = 6.3},

  	--竹枝词
    [9315] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -0.8, zoffset = 6.3},

   	--荒魂
    [9497] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.8, yoffset = -0.8, zoffset = 6.3},

   	--两仪镜
    [9566] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.7, yoffset = -0.6, zoffset = 6.3},

   	--浑天玉
    [9686] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.7, yoffset = -0.6, zoffset = 6.3},	

   	--衡天珠
    [9852] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.7, yoffset = -0.6, zoffset = 6.3},	

   	--紫黛
    [9979] = {scale = 1.6, roatate = 0, fov = 20, far = 8.75, xoffset = -0.7, yoffset = -0.6, zoffset = 6.3},

   	--秘文玄珠
    [10224] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.2, zoffset = 6.3},

   	--翠塔
    [10120] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.4, zoffset = 6.3},

    --天睛
    [10355] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --尼罗锤
    [10500] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --莲心结
    [10599] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --霜华
    [10713] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --归终
    [10792] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.2, zoffset = 6.3},

    --司咒之环
    [11132] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.5, zoffset = 6.3},

    --青木之书
    [11257] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.3, zoffset = 6.3},

    --万圣灯
    [10919] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.3, zoffset = 6.3},

    --魔瞳令
    [11488] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.3, zoffset = 6.3},

    --厌胜人偶
    [11641] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.3, yoffset = -0.3, zoffset = 6.3},

    --忧忧兔
    [11768] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.3, zoffset = 6.3},

    --福到
    [11767] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.3, zoffset = 6.3},

    --小黄人
    [11878] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --渊海灵珠
    [11998] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -1.2, zoffset = 6.3},

    --涤魂宝瓶
    [12113] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.4, zoffset = 6.3},

    --秘遗指环
    [12240] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.1, zoffset = 6.3},

    --同心杯
    [12360] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.5, zoffset = 6.3},

    --巫祭杯
    [12479] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.9, zoffset = 6.3},

    --骸骨烛台
    [12618] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.9, zoffset = 6.3}, 

    --烈阳结晶
    [12944] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset =-0.4, yoffset = -0.9, zoffset = 6.3},  

    --樱纹灯
    [13295] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},    

    --行远
    [13535] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3},

    --御吉
    [13720] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.4, zoffset = 6.3}, 

    --买买买
    [13879] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.5, yoffset = -0.5, zoffset = 6.3},   

    --裁决之镰
    [13992] = {scale = 1.5, roatate = 30, fov = 20, far = 8.75, xoffset = -0.4, yoffset = -0.5, zoffset = 6.3},            
}
--------神兽模型参数-----------------
--key:pathid
watch_other_dec.petModeInfo = 
{		
	--泡罗猫
	--[3127] = {scale = 2.5, roatate = 0, fov = 20, far = 8.75, xoffset = -1.25, yoffset = -0.8, zoffset = 6.3},

}

return watch_other_dec