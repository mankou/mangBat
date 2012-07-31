::last modify:08:41 2012-5-8
::version:1.0
::Author: mang
::功能：自动重新获取IP的批处理，可以添加到计划任务中每隔一段时间执行一次。
@path=%path%;
start C:\WINDOWS\system32\ipconfig.exe -renew
::pause
