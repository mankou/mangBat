::create:23:29 2012-4-8 lastmodify:23:30 2012-4-8
::author:mang
::version:1.0  preversion:--
::Ŀ��:�Զ���Time.log�ļ����ʱ���,ʵ��������ˮ��
::�����������:ahk ͨ����ݼ����ø�������,���ü��±���Time.log,ϵͳ���Զ����ʱ���,Ȼ����gvim�򿪸ձ����Time.log�����༭�������.
::-------------------------
@path=%path%;"C:\WINDOWS\";"D:\Program Files\Vim\vim73\"
@set TimeLog="E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log"
::����start�����⣺ֻ��������taskkill�ſ��Թص�notepad.exe��ȻҲ����ֱ�������NOTEPAD %TimeLog% ����taskkill����������.
start NOTEPAD %TimeLog% 
taskkill  /t /im notepad.exe
::��pause������,��Ϊtaskkill�ر�notepad����ʱ����ʾ����,Ŀǰ��û�з����Զ����������,����������ͣ���ֶ�ȷ�ϱ���,����㰴��������.����� taskkill /f /t /im notepad.exe �򲻱���ֱ�ӹر���,�ﲻ��Ч��
pause
start gvim  %TimeLog%
