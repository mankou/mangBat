::modify 2012-11-10 8:07:08
::create 2012-11-10 8:07:08
::author mang
::version 1.0
::功能：关闭显示器
::其它说明：需要用到nircmd这个工具。来自于网上 Win7 自制关闭屏幕快捷键 http://blog.csdn.net/xiazdong/article/details/7210603



::设置环境变量
path="E:\ApplicationData\netDisk\klive\application\windows\NirCmd\"
nircmd cmdwait 1000 monitor off
