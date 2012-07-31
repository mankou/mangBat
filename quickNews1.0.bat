::create:2012-06-16 modify:21:23 2012-6-16
::version 1.0
::author mang
::目的 快速打开自己喜欢的新闻网站。


path=D:\Program Files\Mozilla Firefox\
::用start的意思是计划任务执行完该批处理文件后能自动退出dos窗口。当然不加start你直接运行该bat也能退出dos窗口，但计划任务不能退出。
start firefox http://www.bbc.co.uk/zhongwen/simp/ http://www.time-weekly.com/ http://lists.solidot.org/ 
::pause
