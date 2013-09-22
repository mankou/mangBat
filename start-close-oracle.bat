@echo off  &title 启动或关闭oracle相关服务
::net start OracleServiceORCL
::if not %errorlevel%==0 net stop OracleServiceORCL

net start OracleServiceMANG
if not %errorlevel%==0 net stop OracleServiceMANG

net start OracleOraDb11g_home1TNSListener
if not %errorlevel%==0 net stop OracleOraDb11g_home1TNSListener


net start OracleOraDb11g_home1ClrAgent
if not %errorlevel%==0 net stop OracleOraDb11g_home1ClrAgent


::net start OracleJobSchedulerORCL
::if not %errorlevel%==0 net stop OracleJobSchedulerORCL
net start OracleJobSchedulerMANG
if not %errorlevel%==0 net stop OracleJobSchedulerMANG


::net start OracleVssWriterORCL
::if not %errorlevel%==0 net stop OracleVssWriterORCL
net start OracleVssWriterMANG
if not %errorlevel%==0 net stop OracleVssWriterMANG
