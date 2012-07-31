::create 2011年12月24日14时35分14秒 
::lastmodify:2012年4月20日16时38分06秒
::author mang
::version 1.2
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
@rem 压缩完成

::#############删除Deleted Items##########下的所有目录及文件
::虽然删除了文件，但在wiz仍然存在，但你试图打开文档时却打不开，这可能与index有关，现在暂时先不解决这个问题了。先放下来。
@echo off
cd /d E:\Document\ApplicationData\Wiz\Data\Default\Deleted Items
for /d %%i in (*) do (
    rd /s /q "%%i"
    del /a /f /q *.*
)
echo 删除完成！
@pause
