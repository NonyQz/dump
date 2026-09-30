--[[
	加载 scene_style.lua
]]

local isInGameClient, scene_style_file = ...
if not isInGameClient then	--后者单独运行时
	scene_style_file = "scene_style.lua"
end

local EXTRA_SCENE_ID = -1		--让部分物体关联这个特殊场景id，这样在所有场景中，这些物体的显隐不会变化

local Lplus = isInGameClient and require "Lplus"
local ActionMaker = isInGameClient and require "Scene.ECSceneStyle".ActionMaker

--
-- Helpers
--

local function checkNonNil (obj, who, argIndex, errLevel)
	if obj == nil then
		error(([[bad argument #%d to %s in 'scene_style_loader' (Non-nil expected, got nil)]]):format(argIndex, who, type(obj)), errLevel+1)
	end
end

local function checkSimpleType (value, who, argIndex, needType, errLevel)
	if type(value) ~= needType then
		error(([[bad argument #%d to %s in 'scene_style_loader' (%s expected, got %s)]]):format(argIndex, who, needType, type(value)), errLevel+1)
	end
end


local function checkValues (who, argBegIndex, needType, errLevel, ...)
	local n = select("#", ...)
	for i = 1, n do
		checkSimpleType(select(i, ...), who, argBegIndex + i - 1, needType, errLevel+1)
	end
end

local function checkMultipleSp (checker, who, argBegIndex, errLevel, ...)
	local n = select("#", ...)
	for i = 1, n do
		checker(select(i, ...), who, argBegIndex + i - 1, errLevel+1)
	end
end

local function checkId (value, who, argIndex, errLevel)
	if type(value) ~= "number" then
		error(([[bad argument #%d to %s in 'scene_style_loader' (number expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	elseif value < 0 then
		error(([[bad argument #%d to %s in 'scene_style_loader' (positive number expected, got %d)]]):format(argIndex, who, value), errLevel+1)
	end
end

local function checkName (value, who, argIndex, errLevel)
	if type(value) ~= "string" then
		error(([[bad argument #%d to %s in 'scene_style_loader' (string expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	elseif #value == 0 then
		error(([[bad argument #%d to %s in 'scene_style_loader' (non-empty string expected, got empty string)]]):format(argIndex, who), errLevel+1)
	end
end

local function checkNames (who, argBegIndex, errLevel, ...)
	checkMultipleSp(checkName, who, argBegIndex, errLevel+1, ...)
end

local linkto_G_meta = {__index=_G, __newindex=function (k, v) error(("bad writing to global variable '%s'"):format(tostring(k))) end}

local function dummy_action (actionName, ...)
	return ("DUMMY_ACTION %s: %s"):format(actionName, table.concat({...}, ","))
end

--
-- 准备好加载配置所需环境
--

local l_scene_style_env = {}
do
	function l_scene_style_env.task (id, nation)
		checkId(id, "task", 1, 2)
		
		return function (contents)	--接收最后一个参数
			contents.controller_type = "task"
			contents.task_id = id
			contents.nation = nation or "all"
			return contents
		end
	end

	function l_scene_style_env.npc (sceneId, id)
		checkId(sceneId, "npc", 1, 2)
		checkId(id, "npc", 2, 2)
		
		return function (contents)	--接收最后一个参数
			contents.scene_id = EXTRA_SCENE_ID	--本应是 sceneId
			contents.obj_type = "npc"
			contents.obj_id = id
			return contents
		end
	end

	function l_scene_style_env.scene_obj (sceneId, name)
		checkId(sceneId, "scene_obj", 1, 2)
		checkName(name, "scene_obj", 2, 2)
		
		return function (contents)	--接收最后一个参数
			contents.scene_id = sceneId
			contents.obj_type = "scene_obj"
			contents.obj_id = name
			return contents
		end
	end

	function l_scene_style_env.show ()
		if not isInGameClient then
			return dummy_action("show")
		end
		
		return ActionMaker.show()
	end

	function l_scene_style_env.hide ()
		if not isInGameClient then
			return dummy_action("hide")
		end
		
		return ActionMaker.hide()
	end

	function l_scene_style_env.wait (timeLen)
		checkSimpleType(timeLen, "wait", 1, "number", 2)
		
		if not isInGameClient then
			return dummy_action("wait", timeLen)
		end
		
		return ActionMaker.wait(timeLen)
	end

	function l_scene_style_env.fix_wait (timeLen)
		checkSimpleType(timeLen, "fix_wait", 1, "number", 2)
		
		if not isInGameClient then
			return dummy_action("fix_wait", timeLen)
		end
		
		return ActionMaker.fix_wait(timeLen)
	end

	function l_scene_style_env.start_action (actionName)
		checkName(actionName, "start_action", 1, 2)
		
		if not isInGameClient then
			return dummy_action("start_action", actionName)
		end
		
		return ActionMaker.start_action(actionName)
	end

	function l_scene_style_env.loop_action (actionName)
		checkName(actionName, "loop_action", 1, 2)
		
		if not isInGameClient then
			return dummy_action("loop_action", actionName)
		end
		
		return ActionMaker.loop_action(actionName)
	end

	function l_scene_style_env.init ()
	
		return function (contents)	--接收最后一个参数
			contents.condition_type = "init"
			return contents
		end
	end

	function l_scene_style_env.accepted ()
	
		return function (contents)	--接收最后一个参数
			contents.condition_type = "accepted"
			return contents
		end
	end

	function l_scene_style_env.can_finish ()
	
		return function (contents)	--接收最后一个参数
			contents.condition_type = "can_finish"
			return contents
		end
	end

	function l_scene_style_env.finished ()
	
		return function (contents)	--接收最后一个参数
			contents.condition_type = "finished"
			return contents
		end
	end

	function l_scene_style_env.finish_count (count)
	
		return function (contents)	--接收最后一个参数
			contents.condition_type = "finish_count"
			contents.count = count
			return contents
		end
	end
end


local function pdofile (file, env)
	local func, err = loadfile(file)
	if not func then
		error(("Failed to load %s: %s"):format(tostring(file), err))
	end
	
	setfenv(func, env)
	local bSucc, ret = xpcall(function () return func() end, function (err) return debug.traceback(err) end)
	if not bSucc then
		error(ret)
	end
	return ret
end


local function loadConfig ()
	setmetatable(l_scene_style_env, linkto_G_meta)
	
	local config = pdofile(scene_style_file, l_scene_style_env)
	
	return config
end

local scene_style_config = loadConfig()

-- if not isInGameClient then
-- 	local malut = require "malut"
-- 	malut.printTable(scene_style_config)
-- end

return scene_style_config
