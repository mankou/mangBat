::last modify:11:56 2012-10-5
::Author:mang
::Version:1.1
::Function:���ٹر���س���
::bug:����firefoxһ������AutoHotkey ���������Թر�AutoHotkeyʱҲ��ر�firefox,���ѹر�fiefox����������ȥ�������и�������Ҳ��ر�firefox.

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
