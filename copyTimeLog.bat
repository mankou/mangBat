::create:11:33 2012-7-31
::lastmodify:12:15 2012-7-31
::author:mang
::version:1.0
::funtion: 使用Time.log的模板替换旧的Time.log，每周使用新的timelog
::-------------特别注意-------------------
::运行该批处理前务必备份Timelog。因为运行两次以上原来Timelog将丢失，由其在测试该批处理时。


::变量TimeNormal为 Time.log模板的源路径
@set TimeLogSource=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\TimeNormal.log
::变量TimeLog 为Time.log的目的路径
@set TimeLog=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log
::先把原来的Timelog备份下，免得多次运行该批处理时把原来的timelog丢失。
::但注意了这种方法也只能保证运行两次还要以找到原来Timelog的备份。运行第一次备份在Time_2.log中 运行第二次备份在Time_3.log中
copy "%TimeLog%" "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_2.log"
copy "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_2.log" "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_3.log"
::使用Time.log的模板替换旧的Time.log
copy "%TimeLogSource%" "%TimeLog%"
::pause
