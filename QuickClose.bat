::last modify:2013-8-9 18:35:51
::Author:mang
::Version:2.2
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

echo close QQ��ط���......
@taskkill /f /t /im QQ.exe
@taskkill /f /t /im QQProtect.exe

echo close bing��ط���......
@taskkill /f /t /im BingDict.exe

echo close youku��ط���......
@taskkill /f /t /im YoukuMediaCenter.exe


echo close ipmsg��ط���......
@taskkill /f /t /im IPMsg.exe

echo close foxmail��ط���......
@taskkill /f /t /im Foxmail.exe

::taskkill /f /t /im firefox.exe
::pause
