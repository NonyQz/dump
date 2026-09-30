--[[
	配置任务服务特殊UI
	
	task_service_ui.receive[任务Id] = ui名,
	ui名为界面文件名(小写)
]]

local task_service_ui =
{
	--接任务
	receive = {},
}

--
--刺探发buff(国外)
--

task_service_ui.receive[267] = "panel_changespy"
task_service_ui.receive[846] = "panel_changespy"
task_service_ui.receive[847] = "panel_changespy"

task_service_ui.receive[268] = "panel_changespy"
task_service_ui.receive[848] = "panel_changespy"
task_service_ui.receive[849] = "panel_changespy"

task_service_ui.receive[271] = "panel_changespy"
task_service_ui.receive[854] = "panel_changespy"
task_service_ui.receive[855] = "panel_changespy"

task_service_ui.receive[270] = "panel_changespy"
task_service_ui.receive[852] = "panel_changespy"
task_service_ui.receive[853] = "panel_changespy"

task_service_ui.receive[272] = "panel_changespy"
task_service_ui.receive[856] = "panel_changespy"
task_service_ui.receive[857] = "panel_changespy"

task_service_ui.receive[269] = "panel_changespy"
task_service_ui.receive[850] = "panel_changespy"
task_service_ui.receive[851] = "panel_changespy"

--
--刺探发buff(国内)
--

task_service_ui.receive[450] = "panel_progressbar_spy"
task_service_ui.receive[858] = "panel_progressbar_spy"
task_service_ui.receive[859] = "panel_progressbar_spy"

--
--夺鼎发buff(国外)
--

task_service_ui.receive[259] = "panel_progressbar_brick"
task_service_ui.receive[860] = "panel_progressbar_brick"
task_service_ui.receive[861] = "panel_progressbar_brick"


return task_service_ui
