::last modify:2013-8-9 18:35:51
::Author:mang
::Version:2.2
::Function:快速关闭相关程序
::bug:由于firefox一般是由AutoHotkey 触发，所以关闭AutoHotkey时也会关闭firefox,即把关闭fiefox的那行命令去掉，运行该批处理也会关闭firefox.

echo off
echo set path......
path=%path%;

echo close wiz......
@taskkill /f /t /im Wiz.exe
echo close Evernote......
taskkill /f /t /im EvernoteTray.exe
echo close AutoHotkey......
taskkill /f /t /im AutoHotkey.exe
::echo close NutstoreClient......
::taskkill /f /t /im NutstoreClient.exe 
::taskkill /f /t /im  NutstoreWatchDog.exe
::echo close klive......
::taskkill /f /t /im kuaipan.exe
echo close Belvedere......
taskkill /f /t /im Belvedere.exe
::echo close Listary......
::taskkill /f /t /im listary.exe
echo close ViATc......
taskkill /f /t /im viatc.exe
echo close Internetoff
taskkill /f /t /im InternetOff.exe

echo close doit.im
taskkill /f /t /im Doit.im.exe

echo close QQ相关服务......
@taskkill /f /t /im QQ.exe
@taskkill /f /t /im QQProtect.exe

echo close bing相关服务......
@taskkill /f /t /im BingDict.exe

echo close youku相关服务......
@taskkill /f /t /im YoukuMediaCenter.exe


echo close ipmsg相关服务......
@taskkill /f /t /im IPMsg.exe

echo close foxmail相关服务......
@taskkill /f /t /im Foxmail.exe

::taskkill /f /t /im firefox.exe
::pause
