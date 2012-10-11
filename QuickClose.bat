::last modify:11:56 2012-10-5
::Author:mang
::Version:1.1
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
echo close NutstoreClient......
taskkill /f /t /im NutstoreClient.exe 
taskkill /f /t /im  NutstoreWatchDog.exe
echo close klive......
taskkill /f /t /im klive.exe
::taskkill /f /t /im firefox.exe
::pause
