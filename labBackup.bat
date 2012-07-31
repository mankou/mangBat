::lastmodify:2012年4月15日19时04分10秒
::create:15:45 2012-5-21
::author:mang
::version:5.1
::用作lab备份的批处理文件

::-----规范说明------
::公用性质的与路径有关的变量以path结尾 如configBackupPath
::各自模块中的源路径以Source结尾 如vimrcSource
::各自模块中的目的路径以Backup结尾 如firefoxBackup
::与路径相关的变量赋值时不要加引号，免得以后引用变量时又加引号，所以统一在引用时加引号。其实引号是为了把空格括起来。
::与路径相关的变量赋值时最后不要有\,如 @set pentadactylHome=C:\Documents and Settings\mang2  mang2后面没有\

rem 设置全局相关的变量
::全局变量指公用的变量，并不是指在文件中全局的。至于各自备份需要的变量放在各自的模块种。
::设置环境变量
@path=%path%;"C:\Program Files\HaoZip";"D:\Program Files\FileZilla Server"
::获取当前日期
@set name=%date%
::设置网盘路径
@set klivePath=E:\ApplicationData\netDisk\klive
::设置备份一般型配置文件时的目的路径 如_vimrc ftp
@set configBackupPath=E:\labBackup\Config Backup

::------------备份_vimrc-----------------
rem 备份_vimrc
::设置_vimrc的源路径
@set vimrcSource=D:\Program Files\Vim\_vimrc
@copy "%vimrcSource%" "%configBackupPath%\vimrc\_vimrc[备份于lab][%date%]" 

::备份ftp配置文件
rem 备份ftp设置
@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP设置\FileZilla Server[备份于lab][%date%].xml"

::-----------------备份svn库---------------------------
rem 备份svn
call backupSVN.bat

::---------------备份weekwork--------------------------
rem 备份vimwiki中的project 及weekwork
@HaoZipC a -tzip "E:\GTD\weekworkBackup\[ProjectBackup][%name%]" "%klivePath%\wiki\work\html\*.*"
::于2012-04-15停止使用weekwrk.mmap 由wiz-—&重要事务提醒 代替
::copy "%klivePath%\document\pomodoro\Weekwork.mmap" "E:\GTD\weekworkBackup\[weekworkBackup][%name%].mmap"  


rem 备份注册表
::备份系统注册表,备份路径为"E:\labBackup\Config Backup\lab注册表备份\ 命名格式为[lab][当前日期].reg 如[lab][2011-05-07 星期一].reg
::对下面这个命令 用双引号把config backup括起来，不能导出注册表，也不报错。不知为何？但是对于其它我用过的命令双引号括在整个路径上与括在有空格的目录上是一样的效果。
@regedit /e "E:\labBackup\Config Backup\lab注册表备份\[lab][%name%].reg"

::---------------备份Time.log并使用新的Time.log-------------------
rem 备份Time.log
::变量TimeNormal为 Time.log模板的源路径
@set TimeLogSource=%klivePath%\applicationData\TimeLog\TimeNormal.log
::变量TimeLog 为Time.log的目的路径
@set TimeLog=%klivePath%\applicationData\TimeLog\Time.log
::备份Time.log
copy "%TimeLog%" "E:\GTD\weekworkBackup\Time[%date%].log" 
::使用Time.log的模板替换旧的Time.log
copy "%TimeLogSource%" "%TimeLog%"

::---------------备份firefox用户目录----------------
::设置备份firefox时的源路径
@set firefoxSource=C:\Documents and Settings\mang2\Application Data\Mozilla\Firefox\Profiles
::设置备份firefox用户目录的目的路径
@set firefoxBackup=E:\labBackup\Config Backup\firefox备份
::先关掉firefox的进程再复制
taskkill /f /t /im firefox.exe
::拷备firefox用户目录,/y :强制覆盖 /s 复制目录及子目录
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s
::设置pentadactyl父目录路径
@set pentadactylHome=C:\Documents and Settings\mang2
::备份pentadactyl用户目录
xcopy "%pentadactylHome%\pentadactyl" "%firefoxBackup%\pentadactyl" /y /s 
::备份pentadactylrc
copy /y "%pentadactylHome%"\_pentadactylrc "%firefoxBackup%"
::------------------备份E盘相关目录-----------------------------
::压缩E盘相关目录,压缩文件格式为zip,命名格式为：[lab E盘备份][当前日期] 如：[lab E盘备份][2011-05-07 星期一]
rem E盘相关备份
HaozipC a -tzip "F:\share\FTP\mang421\[lab E盘备份][%name%]" E:\Document E:\e-book  E:\labBackup E:\picture E:\学习相关 E:\job E:\GTD E:\GTD0 E:\CodeSpace E:\TIJ4 "E:\研&项&论&杂" E:\Repositories E:\ApplicationData E:\other

::------------------备份D盘相关目录-------------------------------
::压缩D盘相关目录,压缩文件格式为zip,命名格式为：[lab D盘备份][当前日期] 如：[lab D盘备份][2011-05-07 星期一]
rem D盘相关备份
HaoZipC a -tzip "F:\share\FTP\mang421\[lab D盘备份][%name%]" D:\cur D:\shortcut "D:\Program Files\Vim" D:\smallToolPath

::-----------开启FTP服务------------------
"FileZilla Server"/start
pause
