::create 2011年12月24日14时35分14秒 
::lastmodify:2011年12月24日14时35分23秒
::author mang
::version 1.0
::功能：备份wiz用户数据的批处理文件，该批处理文件将被加入计划任务，用于定期自动备份wiz数据
::使用：在设置相关变量部分设置自己的路径及文件名。在21行 及24行

::#########关闭相关程序####################
::关闭wiz相关的进程，否则wiz的索引index不能被压缩进来
@echo off
title wizBackup  
taskkill /f /t /im Wiz.exe
taskkill /f /t /im WizTasks.exe

::########设置相关变量##########
::设置环境变量
path=%path%;"C:\Program Files\HaoZip";
::获取当前日期
set name=%date%
::设置备份的路径
set wizBackupPath="E:\labBackup\Wiz backup\"
::设置最后备份的文件名
::不能写成"%wizBackupPath%""[wizbackup][%name%]"估计是因为[]是特殊字符所以要加引号，其它地方加了反而不对
set wizBackupName=%wizBackupPath%"[wizbackup][%name%]"

::##########备份####################
::压缩备份
HaoZipC a -tzip %wizBackupName%  "E:\Document\ApplicationData\Wiz"
