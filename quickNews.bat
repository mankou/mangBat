::modify:2013-8-11 22:06:21
::create:2012-06-16
::version 2.0
::author mang
::目的 快速打开自己喜欢的新闻网站。


path=D:\Program Files\Mozilla Firefox\
::用start的意思是计划任务执行完该批处理文件后能自动退出dos窗口。当然不加start你直接运行该bat也能退出dos窗口，但计划任务不能退出。
::本想把　google新闻搜索兰州的新闻也添加进来，但把网址复制到这里不行。所以要看新闻用quickMarsk　gon
::2012-11-9发现这样写打不开网址了，又分开写，这里先注释掉。以后有时间再研究
::start firefox http://www.bbc.co.uk/ukchina/simp/topics/elt_todays_phrase/index.shtml http://lists.solidot.org/ http://www.bbc.co.uk/zhongwen/simp/ http://www.leiphone.com/ http://cn.wsj.com/gb/rtchome.asp https://www.google.com/reader/view/#overview-page

::solidot
start firefox http://lists.solidot.org/

::bbc中文网
start firefox http://www.bbc.co.uk/zhongwen/simp/

::中国实时报
start firefox http://cn.wsj.com/gb/rtchome.asp 

::图灵社区
start firefox http://www.ituring.com.cn/

::google reader
::start firefox https://www.google.com/reader/view/#overview-page


::无觅
::start firefox http://www.wumii.com/

::雷锋网
start firefox http://www.leiphone.com/ 

::infoq
start http://www.infoq.com/cn

::pause
