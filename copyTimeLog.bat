::create:11:33 2012-7-31
::lastmodify:11:33 2012-7-31
::author:mang
::version:1.0
::funtion: 使用Time.log的模板替换旧的Time.log，每周使用新的timelog


::变量TimeNormal为 Time.log模板的源路径
@set TimeLogSource=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\TimeNormal.log
::变量TimeLog 为Time.log的目的路径
@set TimeLog=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log
::使用Time.log的模板替换旧的Time.log
copy "%TimeLogSource%" "%TimeLog%"
pause
