::create 2012-12-28 11:40:53
::lastmodify 2013-6-2 15:55:23
::version 1.0
::author mang
::function ���ڶ��ڱ���weeklog.wiki ��Ϊweeklog.wiki����̫�࣬���html��Ƚ���



::����һЩ����
@set name=[������%date%][ÿ8�ܱ���һ��]
::����������Ϊ�������пո���������Ժ����� copy�������Ϊ�Ƕ������
@set WeekLog_WikiBackup="E:\ApplicationData\netDisk\Dropbox\document\pomodoro\WeekLogBackup\WeekLog%name%.wiki"
@set WeekLog_WikiSource="E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog.wiki"

@set WeekLog_HtmlBackup="E:\ApplicationData\netDisk\Dropbox\document\pomodoro\WeekLogBackup\WeekLog%name%.html"
@set WeekLog_HtmlSource="E:\ApplicationData\netDisk\Dropbox\wiki\work\html\WeekLog.html"

rem ����weeklog.wiki
@copy %WeekLog_WikiSource% %WeekLog_WikiBackup%
rem ����weeklog.html
@copy %WeekLog_HtmlSource% %WeekLog_HtmlBackup%

rem �����µ�weeklog.wiki
@copy E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog_Normal.wiki E:\ApplicationData\netDisk\Dropbox\wiki\work\WeekLog.wiki


@pause
