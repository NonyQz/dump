--该脚本用于入场CG的设置
--[1]:在服务器端第几个bit记录是否到过此场景
--参数1:场景的ID
--参数2:{要播放CG的pathID, waitingLoading}
--参数3: { {播放CG的任务条件，则入场时播放CG, waitingLoading },..... }

local ret = {

[1]={5002,nil},
[2]={5003,{543,false}},
[3]={5004,{544,false}},
[4]={5005,{545,false}},
[5]={5006,nil},
[6]={5007,nil},
[7]={5009,{1557,true},{{470,1557,true},{660,708,true},},},
[8]={6004,{1536,true}},
[9]={6005,{1392,true},{{487,1392,true},},},
[10]={6006,{1391,true},{{499,1391,true},},},

}

local cgprops = {

[1536] = { delayCancel = true },

}

return ret,cgprops