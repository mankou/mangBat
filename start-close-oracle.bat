@echo off  &title ������ر�oracle��ط���
net start OracleServiceORCL
if not %errorlevel%==0 net stop OracleServiceORCL


net start OracleOraDb11g_home1TNSListener
if not %errorlevel%==0 net stop OracleOraDb11g_home1TNSListener


net start OracleOraDb11g_home1ClrAgent
if not %errorlevel%==0 net stop OracleOraDb11g_home1ClrAgent


net start OracleJobSchedulerORCL
if not %errorlevel%==0 net stop OracleJobSchedulerORCL


net start OracleVssWriterORCL
if not %errorlevel%==0 net stop OracleVssWriterORCL
