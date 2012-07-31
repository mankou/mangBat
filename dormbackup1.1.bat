::create:2011年7月28日01时23分11秒 lastmodify:2011年8月15日20时23分22秒
::author:mang
::version:1.1
::用作drom备份的批处理文件

::设置环境变量
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::获取当前日期
set name=%date%
::备份系统注册表,备份路径为"F:\Config Backup\ 命名格式为[lab][当前日期].reg 如[lab][2011-05-07 星期一].reg
::对下面这个命令 用双引号把config backup括起来，不能导出注册表，也不报错。不知为何？但是对于其它我用过的命令双引号括在整个路径上与括在有空格的目录上是一样的效果。
regedit /e "F:\ConfigBackup\注册表备份\[dorm][注册表备份][%name%].reg"
::备份dorm淘宝聊天记录
HaoZipC a -tzip "F:\ConfigBackup\聊天记录\[dorm][ 淘宝聊天记录][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::备份dorm飞信聊天记录
::由于fetion从2011开始可以自己定义聊天记录路径了，所以这里不在备份
::HaoZipC a -tzip "F:\ConfigBackup\聊天记录\[dorm][ 飞信聊天记录][%name%]" "F:\我的文档\Fetion"
::由于QQ可以自己设置聊天记录路径，所以无需备份
::备份windows的vim的配置文件
copy "D:\Program Files\Vim" "F:\ConfigBackup\-vimrc[dorm][windows][%date%backup]"

