::last modify:11:34 2012-5-13
::Author:mang
::Version:1.0
::Function:���ٹر���س���
::bug:����firefoxһ������AutoHotkey ���������Թر�AutoHotkeyʱҲ��ر�firefox,���ѹر�fiefox����������ȥ�������и�������Ҳ��ر�firefox.

echo off
echo set path......
path=%path%;

echo close wiz......
@taskkill /f /t /im Wiz.exe
echo close Evernote......
taskkill /f /t /im Evernote.exe
echo close AutoHotkey......
taskkill /f /t /im AutoHotkey.exe
echo close NutstoreClient......
taskkill /f /t /im NutstoreClient.exe 
echo close klive......
taskkill /f /t /im klive.exe
::taskkill /f /t /im firefox.exe
::pause
