::create:11:33 2012-7-31
::lastmodify:11:33 2012-7-31
::author:mang
::version:1.0
::funtion: ʹ��Time.log��ģ���滻�ɵ�Time.log��ÿ��ʹ���µ�timelog


::����TimeNormalΪ Time.logģ���Դ·��
@set TimeLogSource=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\TimeNormal.log
::����TimeLog ΪTime.log��Ŀ��·��
@set TimeLog=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log
::ʹ��Time.log��ģ���滻�ɵ�Time.log
copy "%TimeLogSource%" "%TimeLog%"
pause
