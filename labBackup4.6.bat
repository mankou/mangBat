::create:2011年5月9日16时46分04秒  lastmodify:2012年2月19日22时00分40秒
::author:mang
::version:4.6
::用作lab备份的批处理文件

rem 设置相关变量
::设置环境变量
@path=%path%;"C:\Program Files\HaoZip";"D:\Program Files\FileZilla Server"
::获取当前日期
@set name=%date%
::备份_vimrc ftp设置时用到了该路径
@set configBackupPath=E:\labBackup\Config Backup

::备份_vimrc
rem 备份_vimrc
@copy "D:\Program Files\Vim\_vimrc" "%configBackupPath%\vimrc\_vimrc[备份于lab][%date%]" 

::备份ftp设置
rem 备份ftp设置
@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP设置\FileZilla Server[备份于lab][%date%].xml"

::备份svn库
rem 备份svn
call backupSVN.bat
::备份weekwork
rem 备份vimwiki中的project 及weekwork
HaoZipC a -tzip E:\GTD\weekworkBackup\"[ProjectBackup][%name%]" "E:\netDisk\klive\wiki\work\html\*.*"
copy E:\netDisk\klive\文档\Weekwork.mmap E:\GTD\weekworkBackup\"[weekworkBackup][%name%].mmap"  


rem 备份注册表
::备份系统注册表,备份路径为"E:\labBackup\Config Backup\lab注册表备份\ 命名格式为[lab][当前日期].reg 如[lab][2011-05-07 星期一].reg
::对下面这个命令 用双引号把config backup括起来，不能导出注册表，也不报错。不知为何？但是对于其它我用过的命令双引号括在整个路径上与括在有空格的目录上是一样的效果。
@regedit /e "E:\labBackup\Config Backup\lab注册表备份\[lab][%name%].reg"
::压缩E盘相关目录,压缩文件格式为zip,命名格式为：[lab E盘备份][当前日期] 如：[lab E盘备份][2011-05-07 星期一]
rem E盘相关备份
HaozipC a -tzip F:\share\FTP\mang421\"[lab E盘备份][%name%]" E:\Document E:\e-book  E:\labBackup E:\picture E:\学习相关 E:\job E:\GTD E:\GTD0 E:\CodeSpace E:\TIJ4 E:\"研&项&论&杂" E:\Repositories E:\netDisk E:\other
::压缩D盘相关目录,压缩文件格式为zip,命名格式为：[lab D盘备份][当前日期] 如：[lab D盘备份][2011-05-07 星期一]
rem D盘相关备份
HaoZipC a -tzip F:\share\FTP\mang421\"[lab D盘备份][%name%]" D:\cur D:\shortcut "D:\Program Files\Vim" D:\smallToolPath
::开启FTP服务
"FileZilla Server"/start
pause
