::create:2011年7月28日01时23分11秒
::lastmodify:22:02 2012-10-11
::author:mang
::version:2.1
::用作drom备份的批处理文件,主要用于备份C盘相关目录　d盘program 目录下不能设置用户路径的程序的用户目录如vim

::设置环境变量
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::获取当前日期
set name=%date%
::设置备份的总目录
set configBackupPath=F:\ConfigBackup


::-----备份dorm淘宝聊天记录-----------------
::这里只备份淘宝聊天记录是因为淘宝不能设置用户文件所在路径
HaoZipC a -tzip "F:\ConfigBackup\聊天记录\[dorm][ 淘宝聊天记录][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::-----备份dorm淘宝聊天记录-----------------

::--------备份vim---------
set vimBackup=%configBackupPath%\vim
set vimSource=d:\Program Files\Vim
::备份vim目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%vimSource%" "%vimBackup%" /y /s 
::--------备份vim---------
::------------------备份firefox目录-----------------------
set firefoxBackup=%configBackupPath%\firefoxBackup
set firefoxSource=C:\Users\mang\AppData\Roaming\Mozilla\Firefox\Profiles
taskkill /f /t /im firefox.exe
::拷备firefox用户目录,/y :强制覆盖 /s 复制目录及子目录
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s
::设置pentadactyl的路径
set pentadactylBackup=%configBackupPath%\firefoxBackup
set pentadactylHome=C:\Users\mang
::拷备pentadactyl目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%pentadactylHome%\pentadactyl" "%pentadactylBackup%\pentadactyl" /y /s 
::备份pentadactylrc
copy /y "%pentadactylHome%"\_pentadactylrc "%pentadactylBackup%
::------------------备份firefox目录-----------------------

::-----------------备份计划任务目录----------------------
::设置备份计划任务相关的变量
set taskBackup=%configBackupPath%\system\Tasks
set taskSource=C:\Windows\System32\Tasks
::备份计划任务目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%taskSource%" "%taskBackup%" /y /s 
::-----------------备份计划任务目录----------------------

::----------------备份startup目录-----------------------
::设置startup相关的变量
set startupBackup=%configBackupPath%\system\startup
set startupSource=C:\Users\mang\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::备份startup目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%startupSource%" "%startupBackup%" /y /s 
::----------------备份startup目录-----------------------

::-----------------备份注册表--------------
::备份系统注册表,备份路径为"F:\Config Backup\ 命名格式为[lab][当前日期].reg 如[lab][2011-05-07 星期一].reg
::对下面这个命令 用双引号把config backup括起来，不能导出注册表，也不报错。不知为何？但是对于其它我用过的命令双引号括在整个路径上与括在有空格的目录上是一样的效果。
set regeditBackup=%configBackupPath%\system\regedit
regedit /e "%regeditBackup%\[dorm][注册表备份][%name%].reg"
::-----------------备份注册表--------------

::-----备份FTP配置文件----------------
::备份ftp配置文件
rem 备份ftp设置
@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP\FileZilla Server[备份于dorm][%date%].xml"
::-----备份FTP配置文件----------------

::-------------------删除ditto旧的数据库，启用新的数据库文件--------------------
::因为ditto条目太多就比较慢，所以这里定期清理一次。

@taskkill /f /t /im ditto.exe
::先删除旧的文件
del E:\ApplicationData\ditto\ditto.db
::把重命名别一个文件为 ditto.db
copy E:\ApplicationData\ditto\ditto_2.db E:\ApplicationData\ditto\ditto.db
::-------------------删除ditto旧的数据库，启用新的数据库文件--------------------
