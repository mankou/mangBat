::lastmodify:2013-3-17 21:24:07
::create:2011年7月28日01时23分11秒
::author:mang
::version:4.0
::用作drom备份的批处理文件,主要用于备份C盘相关目录　d盘program 目录下不能设置用户路径的程序的用户目录如vim
::***********历史说明*************
::Version3.0
	::2013-3-8 01:34 修复了不能正确备份计划任务 startup的bug.并把已经注释掉的不需要备份的内容都集中起来
::Version3.0
	::2012-11-4 20:14:06大部分备份功能由CrashPlan代替。这里只承担 备份c盘相关目录。更换ditto数据库。

::设置环境变量
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::获取当前日期
set name=%date%
::设置备份的总目录
set configBackupPath=F:\ConfigBackup


::-------------------删除ditto旧的数据库，启用新的数据库文件--------------------
::因为ditto条目太多就比较慢，所以这里定期清理一次。

@taskkill /f /t /im ditto.exe
::先删除旧的文件
del E:\ApplicationData\ditto\ditto.db
::把重命名别一个文件为 ditto.db
copy E:\ApplicationData\ditto\ditto_2.db E:\ApplicationData\ditto\ditto.db
::-------------------删除ditto旧的数据库，启用新的数据库文件--------------------


::-----------------备份计划任务目录----------------------
::设置备份计划任务相关的变量
set taskBackup=%configBackupPath%\system\Tasks
set taskSource=C:\Windows\System32\Tasks


::先删除该目录及其子目录及文件，再新建一个这样的目录。因为发现xcopy不删除文件，即如果你删除了复制源中的文件，但这里备份时仍然有删除的文件在。即这里备份只增多 不减少
::/s 表示不但删除该目录 还删除该目录下的子文件及目录 /q表示安静模式，即直接删除，不会询问你。
rd /s /q "%taskBackup%"
mkdir "%taskBackup%"
::备份计划任务目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%taskSource%" "%taskBackup%" /y /s 
::-----------------备份计划任务目录----------------------

::----------------备份startup目录-----------------------
::设置startup相关的变量
set startupBackup=%configBackupPath%\system\startup
set startupSource=C:\Users\mang\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

::先删除该目录及其子目录及文件，再新建一个这样的目录。因为发现xcopy不删除文件，即如果你删除了复制源中的文件，但这里备份时仍然有删除的文件在。即这里备份只增多 不减少
::/s 表示不但删除该目录 还删除该目录下的子文件及目录 /q表示安静模式，即直接删除，不会询问你。
rd /s /q "%startupBackup%"
mkdir "%startupBackup%"

::备份startup目录,/y :强制覆盖 /s 复制目录及子目录
xcopy "%startupSource%" "%startupBackup%" /y /s 
::----------------备份startup目录-----------------------

::-----------------备份注册表--------------
::备份系统注册表,备份路径为"F:\Config Backup\ 命名格式为[lab][当前日期].reg 如[lab][2011-05-07 星期一].reg
::对下面这个命令 用双引号把config backup括起来，不能导出注册表，也不报错。不知为何？但是对于其它我用过的命令双引号括在整个路径上与括在有空格的目录上是一样的效果。
set regeditBackup=%configBackupPath%\system\regedit
regedit /e "%regeditBackup%\[dorm][注册表备份][%name%].reg"
::-----------------备份注册表--------------


::-------------以下备份语句都已废除，由其它程序代替。如crashplan等---------------------------------------------------

::-----备份dorm淘宝聊天记录-----------------
::这里只备份淘宝聊天记录是因为淘宝不能设置用户文件所在路径
::HaoZipC a -tzip "F:\ConfigBackup\聊天记录\[dorm][ 淘宝聊天记录][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::-----备份dorm淘宝聊天记录-----------------

::--------备份vim---------
::set vimBackup=%configBackupPath%\vim
::set vimSource=d:\Program Files\Vim
::备份vim目录,/y :强制覆盖 /s 复制目录及子目录
::xcopy "%vimSource%" "%vimBackup%" /y /s 
::--------备份vim---------
::------------------备份firefox目录-----------------------
::2013-03-14发现crashplan备份的firefox并不好，恢复后一堆问题，所以这里恢复对firefxo配置文件的备份
set firefoxBackup=%configBackupPath%\firefoxBackup\firefoxProfile
set firefoxSource=C:\Users\mang\AppData\Roaming\Mozilla\Firefox\Profiles
::关掉该进程是必须的 否则复制后的配置文件只有6MB 根本就没有起到备份的作用
taskkill /f /t /im firefox.exe
::先删除旧的备份再复制（因前段时间发现xcopy备份只增不减，即增加的都复制过来了，删除在这里不删除）
rd /s /q "%firefoxBackup%\"
::删除后必须再创建这么一个目录否则xcopy会问你是目录还是文件？
mkdir "%firefoxBackup%"
::拷备firefox用户目录,/y :强制覆盖 /s 复制目录及子目录
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s

::设置pentadactyl的路径
::set pentadactylBackup=%configBackupPath%\firefoxBackup
::set pentadactylHome=C:\Users\mang
::拷备pentadactyl目录,/y :强制覆盖 /s 复制目录及子目录
::xcopy "%pentadactylHome%\pentadactyl" "%pentadactylBackup%\pentadactyl" /y /s 
::备份pentadactylrc
::copy /y "%pentadactylHome%"\_pentadactylrc "%pentadactylBackup%
::------------------备份firefox目录-----------------------


::-----备份FTP配置文件----------------
::备份ftp配置文件
::rem 备份ftp设置
::@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP\FileZilla Server[备份于dorm][%date%].xml"
::-----备份FTP配置文件----------------
::pause
