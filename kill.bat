::lastmodify:2013-9-22 20:50:30
::create 19:52 2012-11-4
::Author mang
::Version 1.0
::���ܣ��ر�һЩ����
::����˵���������ߴ����˹ػ���ʱ��һ��һЩ����û�йص�������һЩ���̻�����ĳЩ����Ĵ򿪶��򿪣�������������Щ���̵Ĺرն��رգ�ʱ��һ��������Խ��Խ�࣬���Ծ�����
echo off
echo set path......
path=%path%;

echo close Kwmusic ��ط���......
@taskkill /f /t /im KwMusic.exe
@taskkill /f /t /im KwService.exe


::echo close CrashPlanService ��ط���......
@taskkill /f /t /im CrashPlanService.exe
@taskkill /f /t /im CrashPlanDesktop.exe


echo close firefox ��ط���......
::@taskkill /f /t /im firefox.exe

echo close bing�ʵ���ط���......
@taskkill /f /t /im BingDict.exe

echo close belvedere��ط���......
@taskkill /f /t /im Belvedere.exe

echo close AliIM��ط���......
@taskkill /f /t /im AliAppLoader.exe
@taskkill /f /t /im AliIM.exe
@taskkill /f /t /im AliimSafe.exe

echo close ICBC��ط���......
@taskkill /f /t /im D4Ser_ICBC.exe

echo close Nokia��ط���......
@taskkill /f /t /im NokiaMServer.exe
@taskkill /f /t /im NclUSBSrv.exe
@taskkill /f /t /im NclRSSrv.exe


echo close ��Ƶ������ط���......
@taskkill /f /t /im YoukuMediaCenter.exe
@taskkill /f /t /im ViDown.exe

echo close MathType��ط���......
@taskkill /f /t /im MathType.exe

echo close 360Amigo��ط���......
@taskkill /f /t /im 360Amigo.exe
::@pause
