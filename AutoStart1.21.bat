::create:2012年2月23日 modify:2012年4月22日10时09分19秒
::version 1.21
::author mang
::目的：开机自启动程序可以放入该批处理文件中，以前没有放的也不再调整。


path=D:\Program Files\Mozilla Firefox\
::用start的意思是计划任务执行完该批处理文件后能自动退出dos窗口。当然不加start你直接运行该bat也能退出dos窗口，但计划任务不能退出。
start firefox https://i.doit.im/home/ http://www.ccw.com.cn/
::pause
