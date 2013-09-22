::lastmodify:2013-9-22 20:50:30
::create 19:52 2012-11-4
::Author mang
::Version 1.0
::功能：关闭一些进程
::背景说明：用休眠代替了关机，时机一长一些进程没有关掉，或者一些进程会随着某些程序的打开而打开，但它并不随这些进程的关闭而关闭，时间一长进程数越来越多，电脑就慢了
echo off
echo set path......
path=%path%;

echo close Kwmusic 相关服务......
@taskkill /f /t /im KwMusic.exe
@taskkill /f /t /im KwService.exe


::echo close CrashPlanService 相关服务......
@taskkill /f /t /im CrashPlanService.exe
@taskkill /f /t /im CrashPlanDesktop.exe


echo close firefox 相关服务......
::@taskkill /f /t /im firefox.exe

echo close bing词典相关服务......
@taskkill /f /t /im BingDict.exe

echo close belvedere相关服务......
@taskkill /f /t /im Belvedere.exe

echo close AliIM相关服务......
@taskkill /f /t /im AliAppLoader.exe
@taskkill /f /t /im AliIM.exe
@taskkill /f /t /im AliimSafe.exe

echo close ICBC相关服务......
@taskkill /f /t /im D4Ser_ICBC.exe

echo close Nokia相关服务......
@taskkill /f /t /im NokiaMServer.exe
@taskkill /f /t /im NclUSBSrv.exe
@taskkill /f /t /im NclRSSrv.exe


echo close 视频播放相关服务......
@taskkill /f /t /im YoukuMediaCenter.exe
@taskkill /f /t /im ViDown.exe

echo close MathType相关服务......
@taskkill /f /t /im MathType.exe

echo close 360Amigo相关服务......
@taskkill /f /t /im 360Amigo.exe
::@pause
