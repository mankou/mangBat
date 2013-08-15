::create 2012-12-28 11:40:53
::lastmodify 2013-6-2 15:55:23
::version 1.0
::author mang
::function 用于定期备份weeklog.wiki 因为weeklog.wiki内容太多，变成html会比较慢



::设置一些变量
@set name=[备份于%date%][每8周备份一次]
::加引号是因为变量中有空格，如果不加以后引用 copy命令会认为是多个参数
@set WeekLog_WikiBackup="E:\ApplicationData\netDisk\Dropbox\document\pomodoro\WeekLogBackup\WeekLog%name%.wiki"
@set WeekLog_WikiSource="E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog.wiki"

@set WeekLog_HtmlBackup="E:\ApplicationData\netDisk\Dropbox\document\pomodoro\WeekLogBackup\WeekLog%name%.html"
@set WeekLog_HtmlSource="E:\ApplicationData\netDisk\Dropbox\wiki\work\html\WeekLog.html"

rem 备份weeklog.wiki
@copy %WeekLog_WikiSource% %WeekLog_WikiBackup%
rem 备份weeklog.html
@copy %WeekLog_HtmlSource% %WeekLog_HtmlBackup%

rem 启用新的weeklog.wiki
@copy E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog_Normal.wiki E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog.wiki


@pause
