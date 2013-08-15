::lastmodify:2012-11-5 21:30:22
::create:2012-11-5 21:30:22
::author mang
::version 1.0
::功能：启动crashplan backup service后台服务，启动该服务后会自动后台备份
::说明：本以为是运行CrashPlanService.exe就可以启动后台服务，后来发现不行。就使用启动服务的方式。

::服务名加 "" 是因为有空格
net start "CrashPlan Backup Service"
::pause
