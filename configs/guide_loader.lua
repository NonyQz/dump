--[[
	读取指引配置
]]
local isInGameClient, guide_macro_file, guide_file = ...
if not isInGameClient then	--后者单独运行时
	guide_macro_file = "guide_macro.lua"
	guide_file = "guide.lua"
end

local Lplus = isInGameClient and require "Lplus"
local ECGuide = isInGameClient and require "Guide.ECGuide"
local ECHostConditionOp = isInGameClient and require "Players.ECHostConditionOp"
local Task = isInGameClient and require "Utility.Task"

--
-- Helpers
--

local function checkNonNil (obj, who, argIndex, errLevel)
	if obj == nil then
		error(([[bad argument #%d to %s in 'guide_loader' (Non-nil expected, got nil)]]):format(argIndex, who, type(obj)), errLevel+1)
	end
end

local function checkSimpleType (value, who, argIndex, needType, errLevel)
	if type(value) ~= needType then
		error(([[bad argument #%d to %s in 'guide_loader' (%s expected, got %s)]]):format(argIndex, who, needType, type(value)), errLevel+1)
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
		error(([[bad argument #%d to %s in 'guide_loader' (number expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	elseif value < 0 then
		error(([[bad argument #%d to %s in 'guide_loader' (positive number expected, got %d)]]):format(argIndex, who, value), errLevel+1)
	end
end

local function checkName (value, who, argIndex, errLevel)
	if type(value) ~= "string" then
		error(([[bad argument #%d to %s in 'guide_loader' (string expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	elseif #value == 0 then
		error(([[bad argument #%d to %s in 'guide_loader' (non-empty string expected, got empty string)]]):format(argIndex, who), errLevel+1)
	end
end

local function checkNames (who, argBegIndex, errLevel, ...)
	checkMultipleSp(checkName, who, argBegIndex, errLevel+1, ...)
end

local function checkStyle (value, who, argIndex, errLevel)
	if type(value) ~= "table" then
		error(([[bad argument #%d to %s in 'guide_loader' (table expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	end
	
	if type(value.shape) ~= "string" or #value.shape == 0 then
		error(([[bad field 'shape' of argument #%d to %s in 'guide_loader' (non-empty string expected, got empty string)]]):format(argIndex, who), errLevel+1)
	end
end
local function checkPos (who, argBegIndex, errLevel, ...)
	if select("#", ...) == 1 and type(select(1, ...)) == "function" then
		return
	end
	checkNames(who, argBegIndex, errLevel+1, ...)
end

local function checkPosArray (value, who, argIndex, errLevel)
	if type(value) ~= "table" then
		error(([[bad argument #%d to %s in 'guide_loader' (table expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	elseif #value == 0 then
		error(([[bad argument #%d to %s in 'guide_loader' (non-empty array expected, got empty array)]]):format(argIndex, who), errLevel+1)
	end
	
	if #value == 1 and type(value[1]) == "function" then
		return
	end
	
	for i = 1, #value do
		local name = value[i]
		if type(name) ~= "string" then
			error(([[bad value #%d in argument #%d to %s in 'guide_loader' (string expected, got %s)]]):format(i, argIndex, who, type(name)), errLevel+1)
		elseif #name == 0 then
			error(([[bad value #%d argument #%d to %s in 'guide_loader' (non-empty string expected, got empty string)]]):format(i, argIndex, who), errLevel+1)
		end
	end
end

local function checkPosArrays (who, argBegIndex, errLevel, ...)
	checkMultipleSp(checkPosArray, who, argBegIndex, errLevel+1, ...)
end

local linkto_G_meta = {__index=_G, __newindex=function (k, v) error(("bad writing to global variable '%s'"):format(tostring(k))) end}

local DUMMY_CONDITION_OP = setmetatable({}, {__tostring=function() return "CONDITION_OP" end})

local function checkConditionOp (value, who, argIndex, errLevel)
	if not isInGameClient then
		if value ~= DUMMY_CONDITION_OP then
			error(([[bad argument #%d to %s in 'guide_loader' (condition op expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
		end
		return
	end
	
end

local function checkConditionOps (who, argBegIndex, errLevel, ...)
	checkMultipleSp(checkConditionOp, who, argBegIndex, errLevel+1, ...)
end

local DUMMY_EXECUTE_OP = setmetatable({}, {__tostring=function() return "EXECUTE_OP" end})

local function checkExecuteOp (value, who, argIndex, errLevel)
	if not isInGameClient then
		if value ~= DUMMY_EXECUTE_OP and type(value) ~= "function" then
			error(([[bad argument #%d to %s in 'guide_loader' (execute op expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
		end
		return
	end
	
	if type(value) ~= "function" and not value:is(Task) then
		error(([[bad argument #%d to %s in 'guide_loader' (execute op expected, got %s)]]):format(argIndex, who, type(value)), errLevel+1)
	end
end

local function checkExecuteOps (who, argBegIndex, errLevel, ...)
	checkMultipleSp(checkExecuteOp, who, argBegIndex, errLevel+1, ...)
end

--
-- 准备好加载配置所需环境
--

local guide_env = {}

--[[
	{
		id = ,
		steps = 
		{
			{
				requires = {{...}, ...},	--前提条件，每个元素为 ConditionOp
				c_requires = {{...}, ...},	--持续性前提条件，对当前及其后所有步骤生效
				executes = {{...}, ...},	--执行操作，每个元素为 "function" (返回true/false表示成功/失败；或 Task，取消表示失败)
				waits = {{...}, ...},		--完成条件，每个元素为 ConditionOp
				c_waits = {{...}, ...},		--持续性完成条件，对当前及其前所有步骤生效
				bFinishGuide = true/false,	--是否记录为已完成
				bExitGuide = true/false,	--是否(进入步骤后)退出
				onFail = ,					--此步骤失败后的处理, "back" 回到前一步(默认值)，"exit" 退出
				name = ,					--步骤名
				forceMode = nil/{closeExcept=},	--nil: 非强制模式；非nil：强制模式
				forceModeEnterStep = n/nil,		--从哪一步进入强制模式
			}, ...
		}
		
		--temp variable
		envBackup = 
	}
]]
local curGuide
local curStep

local function makeEmptyStep (name)
	return
	{
		requires = {},
		c_requires = {},
		executes = {},
		waits = {},
		c_waits = {},
		bFinishGuide = false,
		name = name,
	}
end

--{[id] = guide}
local guides = {}

local makeDefGuideEnv

function guide_env.def_guide (id)
	checkId(id, "def_guide", 1, 2)
	
	if guides[id] then
		error("guide with same id exists:" .. id)
	end
	
	curGuide = {envBackup = getfenv(2)}
	
	curGuide.id = id
	curGuide.steps =
	{
		[0] = makeEmptyStep("init"),
	}
	curStep = curGuide.steps[0]
	
	setfenv(2, makeDefGuideEnv())
end


function guide_env.end_guide (id)
	checkId(id, "def_guide", 1, 2)
	
	if curGuide.id ~= id then
		error(("wrong guide id (%d expected, got %s)"):format(curGuide.id, id), 2)
	end
	
	setfenv(2, curGuide.envBackup)
	
	curGuide.envBackup = nil
	
	guides[id] = curGuide
	curGuide = nil
end

local l_defGuideEnv
function makeDefGuideEnv ()
	if l_defGuideEnv then
		return l_defGuideEnv
	end
	
	local env = {}
	l_defGuideEnv = env
	
	function env.def_guide ()
		error("nested def_guide is not supported", 2)
	end
	
	--
	-- step definition
	--
	
	function env.STEP (name)
		checkName(name, "STEP", 1, 2)
		
		curGuide.steps[#curGuide.steps+1] = makeEmptyStep(name)
		curStep = curGuide.steps[#curGuide.steps]
	end
	
	function env.REQUIRE (...)
		checkConditionOps("REQUIRE", 1, 2, ...)
		
		table.insert(curStep.requires, {...})
	end
	
	function env.C_REQUIRE (...)
		checkConditionOps("C_REQUIRE", 1, 2, ...)
		
		table.insert(curStep.c_requires, {...})
	end
	
	local function REQUIRE_NOT_EX (bContinuous, ...)
		if not isInGameClient then
			return
		end
		
		local conditions = {}
		for i = 1, select("#", ...) do
			local conditionOp = select(i, ...)
			conditions[#conditions+1] = ECHostConditionOp.Maker.condition_not(conditionOp)
		end
		table.insert(bContinuous and curStep.c_requires or curStep.requires, conditions)
	end

	function env.REQUIRE_NOT (...)
		checkConditionOps("REQUIRE_NOT", 1, 2, ...)
		
		REQUIRE_NOT_EX(false, ...)
	end
	
	function env.C_REQUIRE_NOT (...)
		checkConditionOps("C_REQUIRE_NOT", 1, 2, ...)
		
		REQUIRE_NOT_EX(true, ...)
	end
	
	function env.EXECUTE (...)
		checkExecuteOps("EXECUTE", 1, 2, ...)
		
		table.insert(curStep.executes, {...})
	end
	
	function env.WAIT (...)
		checkConditionOps("WAIT", 1, 2, ...)
		
		table.insert(curStep.waits, {...})
	end
	
	function env.C_WAIT (...)
		return env.C_WAIT_EX (-1, ...)
	end
	
	function env.C_WAIT_EX (affect_step_num, ...)
		checkSimpleType(affect_step_num, "affect_step_num", 1, "number", 2)
		checkConditionOps("C_WAIT_EX", 2, 2, ...)
		
		table.insert(curStep.c_waits, {affect_step_num = affect_step_num, ...})
	end
	
	--
	-- special operation
	--
	
	function env.FINISH ()
		curStep.bFinishGuide = true
	end
	
	function env.EXIT ()
		curStep.bExitGuide = true
	end
	
	function env.EXIT_ON_FAIL ()
		curStep.onFail = "exit"
	end
	
	function env.ABORT_ON_FAIL ()
		curStep.onFail = "abort"
	end
	
	function env.ENTER_FORCE_MODE ()
		curStep.bEnterForceMode = true
	end
	
	function env.ENTER_FORCE_MODE_AND_CLOSE_EXCEPT (...)
		curStep.bEnterForceMode = true
		curStep.forceModeCloseExcept = {...}
	end
	
	function env.LEAVE_FORCE_MODE ()
		curStep.bLeaveForceMode = true
	end
	
	--
	-- condition op
	--
	
	function env.host_level_between (min_level, max_level)
		checkSimpleType(min_level, "host_level_between", 1, "number", 2)
		checkSimpleType(max_level, "host_level_between", 2, "number", 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.host_level_between(min_level, max_level)
	end
	
	function env.host_has_buff (buff_id)
		checkSimpleType(buff_id, "host_has_buff", 1, "number", 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end

		return ECHostConditionOp.Maker.host_has_buff(buff_id)
	end
	
	function env.task_has (task_id)
		checkId(task_id, "task_has", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_has(task_id)
	end
	
	function env.task_is_finished (task_id)
		checkId(task_id, "task_is_finished", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_is_finished(task_id)
	end
	
	function env.task_receive (task_id)
		checkId(task_id, "task_receive", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_receive(task_id)
	end
	
	function env.task_complete (task_id)
		checkId(task_id, "task_complete", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_complete(task_id)
	end
	
	function env.task_can_finish (task_id)
		checkId(task_id, "task_can_finish", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_can_finish(task_id)
	end
	
	function env.task_server_can_finish (task_id)
		checkId(task_id, "task_server_can_finish", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_server_can_finish(task_id)
	end
	
	function env.task_openpanel (mode, task_id)
		if mode ~= "receive" and mode ~= "finish" and mode ~= "receive_prompt" and mode ~= "manual_receive" and mode ~= "manual_finish" then
			error("invalid mode to 'task_openpanel':" .. tostring(mode), 2)
		end
		checkId(task_id, "task_can_finish", 2, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.task_openpanel(mode, task_id)
	end
	
	function env.item_has (tid, count)
		checkId(tid, "item_has", 1, 2)
		count = count or 1
		checkSimpleType(count, "item_has", 1, "number", 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.item_has(tid, count)
	end
	
	--有未领的奖励
	function env.has_reward_to_receive ()
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.has_reward_to_receive()
	end
	
	function env.ui_openpanel (panelName)
		checkName(panelName, "ui_openpanel", 1, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.ui_openpanel(panelName)
	end
	
	function env.ui_is_show (panelName, ...)
		checkPos("ui_is_show", 1, 2, panelName, ...)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.ui_is_show(panelName, ...)
	end
	
	function env.ui_click (panelName, ...)
		checkPos("ui_is_show", 1, 2, panelName, ...)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.ui_click(panelName, ...)
	end
	
	function env.ui_click_oneof (...)
		checkPosArrays("ui_is_show", 1, 2, ...)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.ui_click_oneof(...)
	end
	
	function env.func_is_unlocked (function_name)
		checkName("func_is_unlocked", 1, function_name, 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.func_is_unlocked(function_name)
	end
	
	function env.skill_index_learned (skillIndex)
		checkSimpleType(skillIndex, "skill_index_learned", 1, "number", 2)
		
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.skill_index_learned(skillIndex)
	end
	
	function env.camera_pan ()
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.camera_pan()
	end
	
	function env.camera_zoom ()
		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.camera_zoom()
	end
	
	function env.is_in_scene (scene_id)
		checkId(scene_id, "is_in_scene", 1, 2)

		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.is_in_scene(scene_id)
	end
	
	--[[
		可获取 autoreward.onlineRewards[1] 中某一项奖励
	]]
	function env.can_get_online_reward (rewardIndex)
		checkSimpleType(rewardIndex, "can_get_online_reward", 1, "number", 2)

		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.can_get_online_reward(rewardIndex)
	end
	
	--[[
		函数 pred 返回 true
	]]
	function env.if_true (pred)
		checkSimpleType(pred, "if_true", 1, "function", 2)

		if not isInGameClient then
			return DUMMY_CONDITION_OP
		end
		
		return ECHostConditionOp.Maker.if_true(pred)
	end

	function env.hostplayer_transform(transform_id)
		checkId(transform_id, "transform_id", 1, 1)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return  ECHostConditionOp.Maker.hostplayer_transform(transform_id)
	end
	
	--
	-- execute op
	--
	
	function env.delay (seconds)
		checkSimpleType(seconds, "delay", 1, "number", 2)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.delay(seconds)
	end
	
	function env.ui_wait_show (panelName, ...)
		checkPos("ui_wait_show", 1, 2, panelName, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_wait_show(panelName, ...)
	end
	
	function env.ui_forbid_click ()
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_forbid_click()
	end

	function env.ui_highlight (style, panelName, ...)
		checkStyle(style, "ui_highlight", 1, 2)
		checkPos("ui_highlight", 2, 2, panelName, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_highlight(style, panelName, ...)
	end
	
	function env.ui_highlight_oneof (style, ...)
		checkStyle(style, "ui_highlight", 1, 2)
		checkPosArrays("ui_highlight_oneof", 2, 2, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_highlight_oneof(style, ...)
	end
	
	function env.ui_highlight_scrollitem (style, scrollViewPos, ...)
		checkStyle(style, "ui_highlight", 1, 2)
		checkPosArray(scrollViewPos, "ui_highlight_scrollitem", 2, 2)
		checkPosArrays("ui_highlight_scrollitem", 3, 2, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_highlight_scrollitem(style, scrollViewPos, ...)
	end
	
	function env.ui_close_all_except (...)
		checkNames("ui_close_all_except", 1, 2, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.ui_close_all_except(...)
	end
	
	function env.ui_close_all ()
		return env.ui_close_all_except()
	end
	
	function env.speak (id)
		checkId(id, "speak", 1, 1)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.speak(id)
	end
	
	function env.set_toggle (value, ...)
		checkSimpleType(value, "set_toggle", 1, "boolean", 2)
		checkNames("set_toggle", 2, 2, ...)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.set_toggle(value, ...)
	end
	
	function env.start_fx (path_id)
		checkId(path_id, "start_fx", 1, 1)
		
		if not isInGameClient then
			return DUMMY_EXECUTE_OP
		end
		
		return ECGuide.DefGuideTools.start_fx(path_id)
	end
	
	-- function env.step_finish ()
	-- end
	-- function env.step_giveup ()
	-- end
	-- function env.guide_finish ()
	-- end
	-- function env.guide_giveup ()
	-- end
	
	env.end_guide = guide_env.end_guide
	
	env.env = setmetatable({},
	{
		__index = function (t, k)
			return env[k]
		end,
		__newindex = function (t, k, v)
			rawset(env, k, v)
		end,
	})
	
	setmetatable(env, linkto_G_meta)
	return env
end

local function pdofile (file, env)
	local func, err = loadfile(file)
	if not func then
		error(("Failed to load %s: %s"):format(tostring(file), err))
	end
	
	setfenv(func, env)
	local bSucc, err = xpcall(function () func() end, function (err) return debug.traceback(err) end)
	if not bSucc then
		error(err)
	end
end

local function postProcessConfig (config)
	--处理 bEnterForceMode, bLeaveForceMode, forceModeCloseExcept
	
	local bForceMode = false
	local enterForceModeStep = -1
	for iStep, step in ipairs(config.steps) do
		if step.bEnterForceMode and not bForceMode then
			bForceMode = true
			enterForceModeStep = iStep
			
			local closeExcept = {}
			for _, panelName in ipairs(step.forceModeCloseExcept) do
				closeExcept[panelName] = true
			end
			
			step.forceMode = {closeExcept = closeExcept}
		end
		
		if bForceMode then
			step.forceModeEnterStep = enterForceModeStep
		end
		
		if step.bLeaveForceMode then
			bForceMode = false
			enterForceModeStep = -1
		end
		
		step.bEnterForceMode = nil
		step.bLeaveForceMode = nil
		step.forceModeCloseExcept = nil
	end
end

local function loadConfig ()
	setmetatable(guide_env, linkto_G_meta)
	
	pdofile(guide_macro_file, guide_env)
	pdofile(guide_file, guide_env)
	
	for id, config in pairs(guides) do
		postProcessConfig(config)
	end
	return guides
end

local guide_config = loadConfig()
-- dofile "../Lua/Utility/malut.lua".printTable(guide_config)

return guide_config
