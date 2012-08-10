::create:2012-06-16 modify:20:43 2012-8-1
::version 1.1
::author mang
::目的 快速打开自己喜欢的新闻网站。


path=D:\Program Files\Mozilla Firefox\
::用start的意思是计划任务执行完该批处理文件后能自动退出dos窗口。当然不加start你直接运行该bat也能退出dos窗口，但计划任务不能退出。
start firefox  http://www.bbc.co.uk/ukchina/simp/topics/elt_todays_phrase/index.shtml http://lists.solidot.org /http://www.bbc.co.uk/zhongwen/simp/ http://www.leiphone.com/
pause
